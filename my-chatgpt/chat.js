/*===============================================
                CONSTANTES
===============================================*/
// const CHATGPT_API_URL = "https://openai80.p.rapidapi.com/chat/completions";
const CHATGPT_API_URL = "https://api.openai.com/v1/chat/completions";
// const API_SUBSCRIBE_URL = "https://rapidapi.com/openai-api-openai-api-default/api/openai80";
const API_SUBSCRIBE_URL = "https://platform.openai.com/account/api-keys";
// const DEFAULT_HEADERS = {
//     'content-type': 'application/json',
//     'X-RapidAPI-Key': "",
//     'X-RapidAPI-Host': 'openai80.p.rapidapi.com'
// };
const DEFAULT_HEADERS = {
    'Content-Type': 'application/json',
    'Authorization': `Bearer API_KEY`
}
const DEFAULT_SYSTEM_MESSAGE = "You are a helpful assistant.";
const ROLE_TYPES = ["system", "user", "assistant"]
const DEFAULT_BODY = {
    "model":"gpt-3.5-turbo",
    "messages":[
        {"role": ROLE_TYPES[0], "content": DEFAULT_SYSTEM_MESSAGE}
    ]
};

const TipoAlerta = {
    NONE: 0,
    ERROR: 1,
    SUCCESS: 2,
    INFO: 3
}

/*==============================================
                VARIABLES
===============================================*/
let estado;
let nuevosMensajes = 0; // Variable que servirá como bandera, sirve para controlar el numero nuevo de mensajes por procesar para poner en el HTML y en localStorage
let promptbox;
let conversacion; // Variable que almacena el section que contiene todos los divs con todos los mensajes tanto por parte del usuario como por parte de ChatGPT.
let unlock_chatgpt;
let importar_chat; // Boton importar chat
let exportar_chat; // Boton exportar chat
let change_api_key; // Botón cambiar clave de API

let mensajes = DEFAULT_BODY; // Variable que almacenará los mensajes en memoria RAM
let clave_api;

document.addEventListener('DOMContentLoaded', () => {
    /*-- Crea las variables --*/
    estado = document.querySelector("#estado");
    promptbox = document.querySelector("#promptbox");
    conversacion = document.querySelector("#conversacion");
    let enviar = document.querySelector("#enviar");
    let reset = document.querySelector("#reset");
    unlock_chatgpt = document.querySelector("#unlock_chatgpt");
    importar_chat = document.querySelector("#importar_chat");
    exportar_chat = document.querySelector("#exportar_chat");
    change_api_key = document.querySelector("#change_api_key")

    /*-- Añade controladores de eventos --*/
    enviar.addEventListener("click", fEnviarButton);
    reset.addEventListener("click", fResetButton);
    unlock_chatgpt.addEventListener("change", fUnlockCheck);
    importar_chat.addEventListener("change", fImportarChatButton);
    exportar_chat.addEventListener("click", fExportarChatButton);
    change_api_key.addEventListener("click", fChangeApiKeyButton);

    /*-- Modificaciones iniciales de algunos elementos --*/
    importar_chat.setAttribute("capture", "Importar archivo")

    /*-- Recupera la última conversación de localStorage --*/
    let messages = JSON.parse(localStorage.getItem("messages"));
    cargarConversacionJSON(messages);

    /*-- Recupera la clave de API --*/
    clave_api = localStorage.getItem("claveAPI")

    /*-- Presenta en la interfaz de usuario la conversación con ChatGPT --*/
    if (nuevosMensajes > 0) {
        actualizarConversacionUI();
    }

    /*-- Genera un aviso si el usuario no ha introducido su clave de RapidAPI de OpenAI --*/
    if (!clave_api) {
        mensajeEstado(TipoAlerta.ERROR,
            "Necesaria clave de API",
            `Es necesario que ingreses una clave de API obtenida desde la página web <a href="${API_SUBSCRIBE_URL}" target="_blank">API ChatGPT</a>.`);
    }
});

function cargarConversacionJSON(jsonConversation = null) {
    if (jsonConversation) { // Si existe algo en localStorage... Lo carga
        mensajes.messages = jsonConversation;
    }
    if (mensajes.messages[0].content == DEFAULT_SYSTEM_MESSAGE) { // Cuando no está desbloqueado todo el potencial de ChatGPT
        nuevosMensajes = mensajes.messages.length - 1;
    } else { // Cuando SÍ está desbloqueado todo el potencial de ChatGPT
        nuevosMensajes = mensajes.messages.length;
        unlock_chatgpt.checked = true;
    }
}

function mensajeEstado(tipoMensaje, titulo = null, message = null) {
    estado.innerHTML = ""; // Borra el estado actual
    if (titulo != null && message != null) {
        /*-- Crea un encabezado para el mensaje --*/
        let encabezado = document.createElement("h3");
        encabezado.textContent = titulo;
        
        /*-- Crea el mensaje en sí --*/
        let mensaje = document.createElement("p");
        mensaje.innerHTML = message;

        /*-- Agrega estos elementos al div de estado --*/
        estado.append(encabezado, mensaje);

        switch (tipoMensaje) {
            case TipoAlerta.NONE:
                estado.className = "mensaje";
                break;
            case TipoAlerta.ERROR:
                estado.className = "mensaje mensajeError";
                break;
            case TipoAlerta.SUCCESS:
                estado.className = "mensaje mensajeExito";
                break;
            case TipoAlerta.INFO:
                estado.className = "mensaje mensajeInfo";
                break;
        }
    }
}

function generarEtiquetaUserYBotonesUI(rol) {
    /*-- Crea la etiqueta del autor del mensaje (system, assistant o user) --*/
    let nombreRol = document.createElement("span");
    nombreRol.textContent = rol;
    
    /*-- Crea los botones de editar y eliminar mensaje --*/
    let botoneraSpan = document.createElement("div");
    let deleteButton = document.createElement("img");
    
    deleteButton.className = "button delete";
    deleteButton.src = "./trash.svg";
    deleteButton.addEventListener("click", fDeleteMessageButton);

    let editButton = document.createElement("img");
    editButton.className = "button edit";
    editButton.src = "./edit.svg";
    editButton.addEventListener("click", fEditMessageButton);

    /*-- Añade los botones al div de la botonera --*/
    botoneraSpan.append(editButton, deleteButton);

    /*-- Añade la botonera la etiqueta span --*/
    nombreRol.append(botoneraSpan);

    /*-- Devuelve la etiqueta del autor --*/
    return nombreRol;
}

function generarMensajeUI(mensaje) {
    /*-- Crea la caja que contiene al mensaje --*/
    let message = document.createElement("div");
    message.className = "message";

    /*-- Añade al ultimo mensaje los distintos párrafos que tenga el mensaje en cuestión --*/
    let codigo = null;
    let divididoPorParrafos = mensaje.split("\n");
    divididoPorParrafos.forEach(parrafo => {
        if (!codigo) {
            /*-- Comprueba si empieza una pieza de código --*/
            if (parrafo.startsWith("```", 0)) {
                /*-- Crea una etiqueta div para el código --*/
                codigo = document.createElement("div");
                codigo.className = "codigo";
            } else {
                /*-- Crea el elemento p con el párrafo --*/
                let p = document.createElement("p");
                p.textContent = parrafo;

                /*-- Añade el párrafo al mensaje --*/
                message.append(p);
            }
        } else {
            /*-- Descarta que no acabe la pieza de código --*/
            if (parrafo.startsWith("```", 0)) {
                /*-- Añade la pieza de código al mensaje --*/
                message.append(codigo);

                /*-- Elimina la referencia a la pieza de código para continuar escribiendo texto por pantalla --*/
                codigo = null;
            } else {
                /*-- Escribe la línea de código --*/
                let linea = document.createTextNode(parrafo);

                /*-- Escribe un espacio en blanco con una etiqueta br --*/
                let br = document.createElement("br");

                /*-- Añade la línea y el salto de línea a la pieza de código --*/
                codigo.append(linea, br);
            }
        }
    });

    /*-- Devuelve la caja con el mensaje generada --*/
    return message;
}

function actualizarConversacionUI() {
    for (let i = mensajes.messages.length - nuevosMensajes; i < mensajes.messages.length; i++) {
        /*-- Variables con información del último mensaje del chat --*/
        let rol = mensajes.messages[i].role;

        /*-- Crea un nuevo div con el último mensaje --*/
        let ultimo = document.createElement("div");

        /*-- Crea la etiqueta del usuario y la botonera UI --*/
        let nombreRol = generarEtiquetaUserYBotonesUI(rol);

        /*-- Crea el mensaje UI --*/
        let message = generarMensajeUI(mensajes.messages[i].content);

        /*-- Añade a la conversacion el último mensaje --*/
        ultimo.append(nombreRol, message);
        conversacion.append(ultimo);

        /*-- Actualiza la lista de mensajes de localStorage --*/
        localStorage.setItem("messages", JSON.stringify(mensajes.messages));
    }
    nuevosMensajes = 0; // Resetea el numero de nuevos mensajes a 0
    unlock_chatgpt.disabled = true; // Deshabilita la opcion de desbloquear el potencial de ChatGPT cuando ya existe una conversacion previa con el bot

    /*-- Hace scroll a la página hasta abajo --*/
    window.scrollTo(0, document.body.scrollHeight);
}

function fEnviarButton(evento) {
    // console.log(promptbox.value);
    /*-- Descarta que no hay una clave API para poder interactuar con ChatGPT --*/
    if (!clave_api) {
        clave_api = promptbox.value
        localStorage.setItem("claveAPI", clave_api);
        mensajeEstado(false,
            "Clave de API guardada correctamente",
            'Para verificar que su clave es correcta, pruebe a enviarle un mensaje a ChatGPT.');
            return;
    }

    mensajeEstado(); // Borra cualquier mensaje de estado anterior

    /*-- Crea las variables necesarias para enviar el mensaje a ChatGPT --*/
    let headers = DEFAULT_HEADERS;
    // headers["X-RapidAPI-Key"] = localStorage.getItem("claveAPI")
    headers.Authorization = headers.Authorization.replace("API_KEY", clave_api);

    /*-- Especifica el mensaje a la lista interna de mensajes del ChatGPT --*/
    if (mensajes.messages.length == 0) {
        mensajes.messages.push({"role":ROLE_TYPES[0],"content": promptbox.value});
    } else {
        mensajes.messages.push({"role":ROLE_TYPES[1],"content": promptbox.value});
    }
    nuevosMensajes++;
    actualizarConversacionUI();
    promptbox.value = ""; // Vacía el textarea

    /*-- Obtiene la respuesta de ChatGPT a nuestra petición --*/
    obtenerJSON(CHATGPT_API_URL, "POST", headers, JSON.stringify(mensajes))
        .then(response => {
            mensajes.messages.push({"role":ROLE_TYPES[2],"content": response.choices[0].message.content});
            nuevosMensajes++;
            console.log(response);
            actualizarConversacionUI();
        })
        .catch(error => {
            console.error(error);
        })
}

function fResetButton(evento) {
    conversacion.innerHTML = ""; // Borra todos los mensajes de la interfaz visual
    /*-- Borra los mensajes de la memoria interna --*/
    mensajes.messages = DEFAULT_BODY.messages;
    unlock_chatgpt.disabled = false;
    unlock_chatgpt.checked = false;
    // console.dir(unlock_chatgpt);
}

function fDeleteMessageButton(evento) {
    if (window.confirm("¿Estás seguro de eliminar el mensaje?")) {
        /*-- Obtiene acceso al div completo del mensaje --*/
        let cajaMessage = this.parentElement.parentElement.parentElement;

        /*-- Obtiene acceso a la lista completa de mensajes en la UI --*/
        let listaMensajes = Array.from(cajaMessage.parentElement.children);

        /*-- Obtiene el índice del mensaje dentro de la memoria interna y dentro de la interfaz visual --*/
        let indiceInterno = listaMensajes.indexOf(cajaMessage);
        let indiceVisual = indiceInterno; // Por si se necesita (en este caso no)

        /*-- Asegura si indice interfaz visual == indice array interno, para no cometer fallos --*/
        if (mensajes.messages[0].content == DEFAULT_SYSTEM_MESSAGE) { // Cuando no está desbloqueado todo el potencial de ChatGPT
            indiceInterno = indiceInterno + 1;
        }

        /*-- Borra el mensaje de la interfaz visual --*/
        cajaMessage.remove();

        /*-- Borra el mensaje del array interno de mensajes: verifica si indice interfaz visual == indice array interno, para no cometer fallos --*/
        mensajes.messages.splice(indiceInterno, 1);

        /*-- Guarda los cambios hechos en el array interno de mensajes en el localStorage --*/
        // localStorage.setItem("messages", JSON.stringify(mensajes.messages))
    }
}

function fEditMessageButton(evento) {
    //https://plnkr.co/edit/llwF3t9dTxkRQtZf?p=preview&preview
    /*-- Obtiene acceso al div completo del mensaje --*/
    let cajaMessage = this.parentElement.parentElement.parentElement;
    let message = cajaMessage.querySelector(".message");

    /*-- Obtiene acceso a la lista completa de mensajes en la UI --*/
    let listaMensajes = Array.from(cajaMessage.parentElement.children);
    
    /*-- Obtiene el índice del mensaje dentro de la memoria interna y dentro de la interfaz visual --*/
    let indiceInterno = listaMensajes.indexOf(cajaMessage);
    let indiceVisual = indiceInterno; // Por si se necesita (en este caso no)

    /*-- Crea el editor del mensaje --*/
    let editor = document.createElement("textarea");
    editor.style.height = (message.clientHeight - (message.children.length - 1) * 8) + "px";
    // editor.rows = message.children.length;
    editor.className = "message";
    
    /*-- Asegura si indice interfaz visual == indice array interno, para no cometer fallos --*/
    if (mensajes.messages[0].content == DEFAULT_SYSTEM_MESSAGE) { // Cuando no está desbloqueado todo el potencial de ChatGPT
        indiceInterno = indiceInterno + 1;
    }

    /*-- Asigna el mensaje al editor --*/
    editor.value = mensajes.messages[indiceInterno].content;

    /*-- Obtiene acceso al span de la etiqueta de usuario y botonera --*/
    let etiquetaUsuario = cajaMessage.children[0];
    
    /*-- Crea un select --*/
    let selectorRole = document.createElement("select");
    for (let i = 0; i < ROLE_TYPES.length; i++) {
        const option = document.createElement("option");
        option.value = i;
        option.textContent = ROLE_TYPES[i];
        selectorRole.options.add(option); // Agrega la opción al desplegable

        /*-- Si es que lo fuera, carga el rol actual para marcarlo como el rol por defecto en el desplegable --*/
        if (mensajes.messages[indiceInterno].role == ROLE_TYPES[i]) {
            selectorRole.selectedIndex = i;
        }
    }

    /*-- Crea la botonera --*/
    let botoneraSpan = document.createElement("div");
    let saveButton = document.createElement("img");
    
    saveButton.className = "button save";
    saveButton.src = "./save.svg";
    saveButton.addEventListener("click", fSaveChangesMessageButton);

    let discardButton = document.createElement("img");
    discardButton.className = "button edit";
    discardButton.src = "./discard.svg";
    discardButton.addEventListener("click", fDiscardChangesMessageButton);

    /*-- Añade los botones al div de la botonera --*/
    botoneraSpan.append(discardButton, saveButton);

    /*========================================================
            REALIZA LOS CAMBIOS EN LA INTERFAZ VISUAL
    ==========================================================*/

    /*-- Agrega los elementos de la interfaz creados al span de la etiquetaUsuario --*/
    etiquetaUsuario.innerHTML = "";
    etiquetaUsuario.append(selectorRole, botoneraSpan);

    /*-- Remplaza la caja del mensaje por el editor de texto creado --*/
    message.replaceWith(editor);
}

function fDiscardChangesMessageButton(evento) {
    /*-- Obtiene acceso al div completo del mensaje --*/
    let cajaMessage = this.parentElement.parentElement.parentElement;

    /*-- Obtiene acceso a la lista completa de mensajes en la UI --*/
    let listaMensajes = Array.from(cajaMessage.parentElement.children);

    /*-- Obtiene el índice del mensaje dentro de la memoria interna y dentro de la interfaz visual --*/
    let indiceInterno = listaMensajes.indexOf(cajaMessage);
    let indiceVisual = indiceInterno; // Por si se necesita (en este caso no)

    /*-- Obtiene acceso a los dos elementos de la caja del mensaje para poder sustituirlos --*/
    let etiquetaUsuario = cajaMessage.children[0];
    let promptBox = cajaMessage.children[1];

    /*-- Sustituye los componentes por los originales --*/
    etiquetaUsuario.replaceWith(
            generarEtiquetaUserYBotonesUI(mensajes.messages[indiceInterno].role)
        );
    promptBox.replaceWith(
            generarMensajeUI(mensajes.messages[indiceInterno].content)
        );
}

function fSaveChangesMessageButton(evento) {
    /*-- Obtiene acceso al div completo del mensaje --*/
    let cajaMessage = this.parentElement.parentElement.parentElement;

    /*-- Obtiene acceso a la lista completa de mensajes en la UI --*/
    let listaMensajes = Array.from(cajaMessage.parentElement.children);

    /*-- Obtiene el índice del mensaje dentro de la memoria interna y dentro de la interfaz visual --*/
    let indiceInterno = listaMensajes.indexOf(cajaMessage);
    let indiceVisual = indiceInterno; // Por si se necesita (en este caso no)

    /*-- Obtiene acceso a los dos elementos de la caja del mensaje para poder sustituirlos --*/
    let etiquetaUsuario = cajaMessage.children[0];
    let promptBox = cajaMessage.children[1];
    let selectorRole = etiquetaUsuario.children[0];

    /*-- Sustituye los componentes UI por los originales, con los nuevos datos --*/
    etiquetaUsuario.replaceWith(
            generarEtiquetaUserYBotonesUI(ROLE_TYPES[selectorRole.value])
        );
    promptBox.replaceWith(
            generarMensajeUI(promptBox.value)
        );

    /*===========================================================================
            Sustituye los datos en la memoria interna y en localStorage
    ============================================================================*/
    /*-- Especifica el mensaje a la lista interna de mensajes del ChatGPT --*/
    mensajes.messages[indiceInterno] = {"role":ROLE_TYPES[selectorRole.value],"content": promptBox.value};

    /*-- Actualiza la lista de mensajes de localStorage --*/
    localStorage.setItem("messages", JSON.stringify(mensajes.messages));
}

function fUnlockCheck(evento) {
    if (unlock_chatgpt.checked) {
        mensajes.messages = [];
    } else {
        mensajes.messages = [
            {"role":ROLE_TYPES[0],"content":DEFAULT_SYSTEM_MESSAGE}
        ];
    }
}

function fImportarChatButton(evento) {
    /*-- Declaración de variables --*/
    const file = evento.target.files[0];
    const reader = new FileReader();

    reader.readAsText(file);

    reader.addEventListener("load", (event) => {
        const fileContent = event.target.result;
        const jsonContent = JSON.parse(fileContent);

        // Aquí puedes acceder al contenido del archivo JSON como un objeto JavaScript
        cargarConversacionJSON(jsonContent);
        conversacion.innerHTML = "";
        /*-- Presenta en la interfaz de usuario la conversación con ChatGPT --*/
        if (nuevosMensajes > 0) {
            actualizarConversacionUI();
        }
    });
    
    this.value = "";
}

function fExportarChatButton(evento) {
    let element = document.createElement('a');
    element.setAttribute('href', 'data:text/json;charset=utf-8,' + encodeURIComponent(localStorage.getItem("messages")));
    element.setAttribute('download', "chat.json");

    element.style.display = 'none';
    document.body.appendChild(element);

    element.click();

    document.body.removeChild(element);
}

function fChangeApiKeyButton(evento) {
    clave_api = null;
    /*-- Genera un aviso si el usuario no ha introducido su clave de RapidAPI de OpenAI --*/
    mensajeEstado(TipoAlerta.INFO,
        "Cambio de clave de API",
        `Ingresa la nueva clave de la API obtenida desde la página web <a href="${API_SUBSCRIBE_URL}" target="_blank">API ChatGPT</a>.`);
}