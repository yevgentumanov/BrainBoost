/*===============================================
                CONSTANTES
===============================================*/

const TipoAlerta = {
    NONE: 0,
    ERROR: 1,
    SUCCESS: 2,
    INFO: 3
}

const APIS_NAME_LS = "apis";
const API_SELECTED_NAME_LS = "apiSelected";
const API_CONVERSATION_NAME_LS = "conversation";

/*==============================================
                VARIABLES
===============================================*/
let API = API_LOADER(null, null, null, API_ENGINE_ENUM.NONE);
let messageStateBox; // Antiguamente esta variable se llamaba 'estado'
let nuevosMensajes = 0; // Variable que servirá como bandera, sirve para controlar el numero nuevo de mensajes por procesar para poner en el HTML y en localStorage
let promptbox;
let conversacion; // Variable que almacena el section que contiene todos los divs con todos los mensajes tanto por parte del usuario como por parte de ChatGPT.
let importar_chat; // Boton importar chat
let exportar_chat; // Boton exportar chat
let change_api_key; // Botón cambiar clave de API
let api_selector;
let changeTemperature; // slider
let changeTemperatureLabel;
let changeMaxTokens; // slider
let changeMaxTokensLabel;
let cancel;
let promptTokens;
let completionTokens;
let totalTokens;

document.addEventListener('DOMContentLoaded', () => {
    /*-- Crea las variables --*/
    messageStateBox = document.querySelector("#messageStateBox");
    promptbox = document.querySelector("#promptbox");
    conversacion = document.querySelector("#conversacion");
    let enviar = document.querySelector("#enviar");
    let reset = document.querySelector("#reset");
    let saveChat = document.querySelector("#saveChat")
    importar_chat = document.querySelector("#importar_chat");
    exportar_chat = document.querySelector("#exportar_chat");
    change_api_key = document.querySelector("#change_api_key")
    api_selector = document.querySelector("#api_selector");
    changeTemperature = document.querySelector("#changeTemperature");
    changeTemperatureLabel = document.querySelector('label[for="changeTemperature"]');
    changeMaxTokens = document.querySelector("#changeMaxTokens");
    changeMaxTokensLabel = document.querySelector('label[for="changeMaxTokens"]');
    promptTokens = document.querySelector("#promptTokens");
    completionTokens = document.querySelector("#completionTokens");
    totalTokens = document.querySelector("#totalTokens");

    /*-- Añade controladores de eventos --*/
    api_selector.addEventListener("change", fChangeApiSelector);
    change_api_key.addEventListener("click", fChangeKeyApiButton);
    importar_chat.addEventListener("change", fImportarChatButton);
    exportar_chat.addEventListener("click", fExportarChatButton);
    enviar.addEventListener("click", fEnviarButton);
    reset.addEventListener("click", fResetButton);
    saveChat.addEventListener("click", fSaveChatButton);
    changeTemperature.addEventListener("input", fChangeTemperature);
    changeMaxTokens.addEventListener("input", fChangeMaxTokens);

    /*-- Carga las opciones en el desplegable API selector --*/
    cargarOpcionesAPISelector();

    /*-- Carga el motor: tanto la API guardada en localStorage, como los mensajes almacenados --*/
    cargarAPIEngine(JSON.parse(localStorage.getItem(API_CONVERSATION_NAME_LS)));

    /*-- Presenta en la interfaz de usuario la conversación con ChatGPT --*/
    if (nuevosMensajes > 0) {
        actualizarConversacionUI(false); // Actualiza la UI sin hacer scroll
    }
});

//#region Funciones de inicialización del motor API
function cargarOpcionesAPISelector() {
    for (let i = 0; i < API_LIST_NUMERIC.length; i++) {
        /*-- Crea una nueva opción --*/
        let opcion = document.createElement("option");
        opcion.textContent = API_LIST_NUMERIC[i];
        opcion.value = i;

        /*-- Añade la opción al desplegable API selector --*/
        api_selector.append(opcion)

        /*-- Configura la API NONE como deshabilitada, y la primera API válida, como opción predeterminada --*/
        if (i == 0) opcion.disabled = true;
        if (i == 1) opcion.selected = true;
    }
}

function cargarAPIEngine(jsonConversation = null) {
    const api_key = cargarAPIsConClave();
    const apiSelected = Number.parseInt(api_selector.options.item(api_selector.selectedIndex).value);

    /*-- Descarta que no haya llegado ninguna API y key de API --*/
    if (!Array.isArray(api_key) || api_key[1] == "") {
        // mensajeEstado(TipoAlerta.ERROR, "Error al cargar motor de API", "Ha habido un problema al recuperar la lista de APIs y claves de tu almacenamiento local. Borra cookies y caché, y actualiza para solucionarlo.");

        /*-- Cambia el placeholder del promptbox para indicar que se necesita una clave de API --*/
        promptbox.placeholder = "Escribe tu clave de la API";
        /*-- Genera un aviso si el usuario no ha introducido su clave de RapidAPI de OpenAI --*/
        mensajeEstado(TipoAlerta.ERROR,
            "Necesaria clave de API",
            `Es necesario que ingreses en la caja de texto donde se escriben los mensajes, una clave de API obtenida desde la página web <a href="${API_LIST_SETTINGS[apiSelected].API_SUBSCRIBE_URL}" target="_blank">API ChatGPT</a>.`);
        // return;
    }

    /*-- Carga las conversaciones y API (si las hubiese) --*/
    if (api_key == null || typeof(api_key) == "undefined") {
        API = API_LOADER(jsonConversation, null, null, API_ENGINE_ENUM.GENERIC);
    } else {
        API = API_LOADER(jsonConversation, api_key[0], api_key[1], API_ENGINE_ENUM.GENERIC);
        api_selector.options.selectedIndex = api_key[0];
    }
    
    nuevosMensajes = API.size(); // Actúa como bandera para el método actualizarConversacionUI()
}

function cargarAPIsConClave() {
    let apisJSONls = JSON.parse(localStorage.getItem(APIS_NAME_LS)); // ls = LocalStorage

    /*-- Si no existe nada en localStorage, crea la estructura básica para almacenar las APIs con clave. Esto solo se ejecutará la primera vez que se ejecute la aplicación --*/
    if (!apisJSONls) { 
        const estructura = {};
        for (let i = 1; i < API_LIST_NUMERIC.length; i++) {
            estructura[i] = "";

            /*-- Carga en el desplegable api_selector que no tiene clave de API --*/
            api_selector.item(i).textContent += " (sin clave)";
        }
        /*-- Guarda esta estructura en localStorage --*/
        localStorage.setItem(APIS_NAME_LS, JSON.stringify(estructura));

        /*-- Guarda esta estructura en apisJSONls --*/
        apisJSONls = estructura;

        /*-- Guarda como API seleccionada la primera del motor --*/
        localStorage.setItem(API_SELECTED_NAME_LS, 1);
        return;
    }

    /*-- Verifica si hay alguna selección de API guardada en localStorage --*/

        /*-- Variables temporales de trabajo --*/
        const apisEntriesObjectLS = Object.entries(apisJSONls); // array con los índices de las APIs almacenadas en localStorage (LS, ls)
        const dif = API_LIST_NUMERIC.length - 1 - apisEntriesObjectLS.length;

        /*-- Comprueba si con alguna actualización de MyChatGPT se ha añadido alguna nueva API para añadirla a la lista --*/
        if (dif > 0) {
            for (let i = apisEntriesObjectLS.length; i < API_LIST_NUMERIC.length - 1; i++) { // length - 1 porque API_LIST_NUMERIC contiene la posición 0 (NULL), mientras que en localStorage, esa posicion no existe
                apisEntriesObjectLS.push([i, ""]);

                /*-- Carga en el desplegable api_selector que no tiene clave de API --*/
                api_selector.item(i).textContent += " (sin clave)";
            }
        }

        /*-- Después, comprueba a ver si hay alguna seleccionada --*/
        const apiSelected = Number.parseInt(localStorage.getItem(API_SELECTED_NAME_LS));
        if (!apiSelected) { //|| (typeof(apiSelected) == "number" && apiSelected == API_ENUM.NONE)) {
            /*-- Si no hay ninguna seleccionada, busca dentro de la lista de APIs la primera que encuentre con una clave de API asignada para cargarla en el motor --*/
            for (let i = 0; i < apisEntriesObjectLS.length + dif; i++) {
                const value = apisEntriesObjectLS[i][1];
                let retorno = null;
                if (value != null && value != "") {
                    localStorage.setItem(API_SELECTED_NAME_LS, i + 1);
                    retorno = [i + 1, value];
                } else {
                    /*-- Carga en el desplegable api_selector que no tiene clave de API --*/
                    api_selector.item(i + 1).textContent += " (sin clave)";
                }
                if (retorno) return retorno;
            }
            /*-- Si no hay ninguna con clave de API --*/
            return null;
        } else { // Si hay alguna API seleccionada
            /*-- Carga en el desplegable api_selector que no tiene clave de API --*/
            for (let i = 0; i < apisEntriesObjectLS.length + dif; i++) {
                const value = apisEntriesObjectLS[i][1];
                if (value == null || value == "") {
                    /*-- Carga en el desplegable api_selector que no tiene clave de API --*/
                    api_selector.item(i + 1).textContent += " (sin clave)";
                }
            }
            /*--

            /*-- Si hay alguna API seleccionada, la guarda directamente en el motor API --*/
            return [apiSelected, apisEntriesObjectLS[apiSelected - 1][1]];
        }
}
//#endregion

//#region Funciones para generación de contenido UI/UX
    function mensajeEstado(tipoMensaje, titulo = null, message = null) {
        messageStateBox.innerHTML = ""; // Borra el estado actual
        messageStateBox.className = "";
        if (titulo != null && message != null) {
            /*-- Crea un encabezado para el mensaje --*/
            let encabezado = document.createElement("h3");
            encabezado.textContent = titulo;

            /*-- Crea el mensaje en sí --*/
            let mensaje = document.createElement("p");
            let mensajeDividido = message.split("\n");
            
            for (let i = 0; i < mensajeDividido.length; i++) {
                mensaje.innerHTML += mensajeDividido[i];
                if (i != mensajeDividido.length - 1) {
                    mensaje.innerHTML += "\n<br>\n";
                }
            }

            /*-- Agrega estos elementos al div de estado --*/
            if (tipoMensaje != TipoAlerta.NONE) {
                messageStateBox.append(encabezado, mensaje);
            }

            messageStateBox.className = "mensaje"; // Establece la clase predeterminada

            switch (tipoMensaje) {
                case TipoAlerta.ERROR:
                    messageStateBox.classList.add("mensajeError");
                    break;
                case TipoAlerta.SUCCESS:
                    messageStateBox.classList.add("mensajeExito");
                    break;
                case TipoAlerta.INFO:
                    messageStateBox.classList.add("mensajeInfo");
                    break;
            }
        }
    }

//#region Generación de mensajes en la interfaz de conversación
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

    /*-- Devuelve la caja generada con el mensaje --*/
    return message;
}

function actualizarConversacionUI(scroll = true, localStored = true, buffered = false) { // Aun no se hace nada con la variante de buffered
    for (let i = API.size() - nuevosMensajes; i < API.size(); i++) {
        /*-- Variables con información del último mensaje del chat --*/
        let rol = API.getMessageRole(i);

        /*-- Crea un nuevo div con el último mensaje --*/
        let ultimo = document.createElement("div");

        /*-- Crea la etiqueta del usuario y la botonera UI --*/
        let nombreRol = generarEtiquetaUserYBotonesUI(rol);

        /*-- Crea el mensaje UI --*/
        let message = generarMensajeUI(API.getMessageContent(i));

        /*-- Añade a la conversacion el último mensaje --*/
        ultimo.append(nombreRol, message);
        conversacion.append(ultimo);
    }

    /*-- Actualiza la lista de mensajes de localStorage --*/
    if (localStored) localStorage.setItem(API_CONVERSATION_NAME_LS, JSON.stringify(API.exportConversation()));

    nuevosMensajes = 0; // Resetea el numero de nuevos mensajes a 0

    /*-- Hace scroll a la página hasta abajo --*/
    if (scroll) {
        // window.scrollTo(0, document.body.scrollHeight);
        window.scrollTo({top: document.body.scrollHeight, behavior: "smooth"});
    }
}
//#endregion
//#endregion

//#region Manejadores de eventos
function fEnviarButton(evento) {
    /*-- Descarta que no hay una clave API para poder interactuar con ChatGPT --*/
    if (!API.getAPIKey()) {
        /*-- Si hay una API pero no hay una clave definida (eso es porque se está cambiando la clave, simplemente) --*/
        if (typeof(API.getAPI()) == "number" && !window.confirm("Estás a punto de guardar una nueva clave de la API. ¿Confirmar?")) {
            // Si el usuario cancela la operación
            return;
        }
        API.setAPI(Number.parseInt(api_selector.options.item(api_selector.selectedIndex).value));
        API.setAPIKey(promptbox.value);
        
        /*-- Guarda la clave de API en localStorage --*/
        let apisLs = JSON.parse(localStorage.getItem(APIS_NAME_LS));
        apisLs[API.getAPI()] = API.getAPIKey();
        localStorage.setItem(APIS_NAME_LS, JSON.stringify(apisLs));

        /*-- Guarda la API seleccionada para la que se está guardando la clave --*/
        localStorage.setItem(API_SELECTED_NAME_LS, Number.parseInt(api_selector.options.item(api_selector.selectedIndex).value));

        /*-- Comprueba si se ha guardado una clave de API --*/
        if (promptbox.value == null || promptbox.value == "") { // Cambia en el desplegable api_selector para que aparezca "sin clave"
            api_selector.options.item(api_selector.selectedIndex).textContent = API_LIST_NUMERIC[API.getAPI()] + " (sin clave)";
            promptbox.placeholder = "Escribe tu clave de la API";
            /*-- Muestra un mensaje de éxito --*/
            mensajeEstado(TipoAlerta.INFO,
                "Clave de API eliminada correctamente",
                'Has eliminado tu clave anterior. Debes introducir una nueva clave para poder volver a utilizar esta API.');
            return;
        } else { // Cambia en el desplegable api_selector para que ya no aparezca "sin clave"
            api_selector.options.item(api_selector.selectedIndex).textContent = API_LIST_NUMERIC[API.getAPI()];
            promptbox.value = "";
            promptbox.placeholder = "Escribe tu mensaje";
            /*-- Muestra un mensaje de éxito --*/
            mensajeEstado(TipoAlerta.SUCCESS,
                "Clave de API guardada correctamente",
                'Para verificar que su clave es correcta, pruebe a enviarle un mensaje a ChatGPT.');
            return;
        }
    }

    /*-- Verifica si hay alguna solicitud pendiente (en cuyo caso, el botón la detendrá) --*/
    if (cancel instanceof AbortController) {
        cancel.abort();
        cancel = null;
        // this.classList.remove("loading");
        return;
    }

    mensajeEstado(); // Borra cualquier mensaje de estado anterior

    /*-- Especifica el mensaje a la lista interna de mensajes del ChatGPT --*/
    if (promptbox.value.length > 0) {
        API.addMessageToQueue(promptbox.value);
        nuevosMensajes++;
        actualizarConversacionUI();
        promptbox.value = ""; // Vacía el textarea
    }

    /*-- Cambia el icono del botón de enviar por el icono de loading --*/
    this.classList.add("loading");

    /*-- Obtiene la respuesta de ChatGPT a nuestra petición --*/
    try {
        cancel = new AbortController();
        API.sendMessageListToChatGPT(
            () => { // En caso de mensaje recibido de ChatGPT
                nuevosMensajes++;
                actualizarConversacionUI();
                this.classList.remove("loading");
                /*-- Muestra los tokens gastados por pantalla --*/
                let usage = API.getUsage();
                promptTokens.textContent = `Prompt tokens: ${navigateThroughObject(usage, API_ENGINE_SETTINGS[API.getEngine()].USAGE.PROMPT_TOKENS)}`;
                completionTokens.textContent = `Completion tokens: ${navigateThroughObject(usage, API_ENGINE_SETTINGS[API.getEngine()].USAGE.COMPLETION_TOKENS)}`;
                totalTokens.textContent = `Total tokens: ${navigateThroughObject(usage, API_ENGINE_SETTINGS[API.getEngine()].USAGE.TOTAL_TOKENS)}`;
                cancel = null;
            },
            (error) => { // En caso de error de fetch de ChatGPT
                // console.error(error);
                mensajeEstado(TipoAlerta.ERROR, "Error al obtener respuesta de ChatGPT", error);
                this.classList.remove("loading");
                cancel = null;
            },
            false, cancel
        );
    } catch (error) {
        console.error(error);
    }
}

function fResetButton(evento) {
    conversacion.innerHTML = ""; // Borra todos los mensajes de la interfaz visual
    /*-- Borra los mensajes de la memoria interna --*/
    API.clear();
    /*-- Muestra el mensaje de system por defecto --*/
    nuevosMensajes = API.size();
    actualizarConversacionUI(false, false);
}

function fSaveChatButton(evento) {
    /*-- Especifica el mensaje a la lista interna de mensajes del ChatGPT --*/
    API.addMessageToQueue(promptbox.value);
    nuevosMensajes++;
    actualizarConversacionUI();
    promptbox.value = ""; // Vacía el textarea
}

function fDeleteMessageButton(evento) {
    if (window.confirm("¿Estás seguro de eliminar el mensaje?")) {
        /*-- Obtiene acceso al div completo del mensaje --*/
        let cajaMessage = this.parentElement.parentElement.parentElement;

        /*-- Obtiene acceso a la lista completa de mensajes en la UI --*/
        let listaMensajes = Array.from(cajaMessage.parentElement.children);

        /*-- Obtiene el índice del mensaje --*/
        let indice = listaMensajes.indexOf(cajaMessage);

        /*-- Borra el mensaje de la interfaz visual --*/
        cajaMessage.remove();

        /*-- Borra el mensaje del array interno de mensajes: verifica si indice interfaz visual == indice array interno, para no cometer fallos --*/
        API.removeMessage(indice);

        /*-- Guarda los cambios hechos en el array interno de mensajes en el localStorage --*/
        localStorage.setItem(API_CONVERSATION_NAME_LS, JSON.stringify(API.exportConversation()))
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
    let indice = listaMensajes.indexOf(cajaMessage);

    /*-- Crea el editor del mensaje --*/
    let editor = document.createElement("textarea");
    editor.style.height = (message.clientHeight - (message.children.length - 1) * 8) + "px";
    // editor.rows = message.children.length;
    editor.className = "message";

    /*-- Asigna el mensaje al editor --*/
    editor.value = API.getMessageContent(indice);

    /*-- Obtiene acceso al span de la etiqueta de usuario y botonera --*/
    let etiquetaUsuario = cajaMessage.children[0];

    /*-- Crea un select --*/
    let selectorRole = document.createElement("select");
    for (let i = 0; i < API.getAvailableRoles().length; i++) {
        const option = document.createElement("option");
        option.value = i;
        option.textContent = API.getAvailableRoles()[i];
        selectorRole.options.add(option); // Agrega la opción al desplegable

        /*-- Si es que lo fuera, carga el rol actual para marcarlo como el rol por defecto en el desplegable --*/
        if (API.getMessageRole(indice) == API.getAvailableRoles()[i]) {
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
    let indice = listaMensajes.indexOf(cajaMessage);

    /*-- Obtiene acceso a los dos elementos de la caja del mensaje para poder sustituirlos --*/
    let etiquetaUsuario = cajaMessage.children[0];
    let promptBox = cajaMessage.children[1];

    /*-- Sustituye los componentes por los originales --*/
    etiquetaUsuario.replaceWith(
        generarEtiquetaUserYBotonesUI(API.getMessageRole(indice))
    );
    promptBox.replaceWith(
        generarMensajeUI(API.getMessageContent(indice))
    );
}

function fSaveChangesMessageButton(evento) {
    /*-- Obtiene acceso al div completo del mensaje --*/
    let cajaMessage = this.parentElement.parentElement.parentElement;

    /*-- Obtiene acceso a la lista completa de mensajes en la UI --*/
    let listaMensajes = Array.from(cajaMessage.parentElement.children);

    /*-- Obtiene el índice del mensaje dentro de la memoria interna y dentro de la interfaz visual --*/
    let indice = listaMensajes.indexOf(cajaMessage);

    /*-- Obtiene acceso a los dos elementos de la caja del mensaje para poder sustituirlos --*/
    let etiquetaUsuario = cajaMessage.children[0];
    let promptBox = cajaMessage.children[1];
    let selectorRole = etiquetaUsuario.children[0];

    /*-- Sustituye los componentes UI por los originales, con los nuevos datos --*/
    etiquetaUsuario.replaceWith(
        generarEtiquetaUserYBotonesUI(API.getAvailableRoles()[selectorRole.value])
    );
    promptBox.replaceWith(
        generarMensajeUI(promptBox.value)
    );

    /*===========================================================================
            Sustituye los datos en la memoria interna y en localStorage
    ============================================================================*/
    /*-- Especifica el mensaje a la lista interna de mensajes del ChatGPT --*/
    API.setMessageRole(indice, API.getAvailableRoles()[selectorRole.value]);
    API.setMessageContent(indice, promptBox.value);

    /*-- Actualiza la lista de mensajes de localStorage --*/
    localStorage.setItem(API_CONVERSATION_NAME_LS, JSON.stringify(API.exportConversation()));
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
        conversacion.innerHTML = "";
        API.importConversation(jsonContent);
        nuevosMensajes = jsonContent.messages.length; // Actualiza el numero de mensajes que la funcion actualizarConversacionUI() debe mostrar por pantalla

        /*-- Presenta en la interfaz de usuario la conversación con ChatGPT --*/
        if (nuevosMensajes > 0) {
            actualizarConversacionUI();
        }
    });

    this.value = ""; // Esto es para que se puedan volver a importar nuevos chats, sin necesidad de refrescar la página
}

function fExportarChatButton(evento) {
    let element = document.createElement('a');
    element.setAttribute('href', 'data:text/json;charset=utf-8,' + encodeURIComponent(localStorage.getItem(API_CONVERSATION_NAME_LS)));
    element.setAttribute('download', "chat.json");

    element.style.display = 'none';
    document.body.appendChild(element);

    element.click();

    document.body.removeChild(element);
}

function fChangeKeyApiButton(evento) {
    API.setAPIKey(null);

    /*-- Genera un aviso si el usuario no ha introducido su clave de RapidAPI de OpenAI --*/
    const apiSelected = Number.parseInt(api_selector.options.item(api_selector.selectedIndex).value);
    mensajeEstado(TipoAlerta.INFO,
        "Cambio de clave de API",
        `Ingresa la nueva clave de la API obtenida desde la página web <a href="${API_LIST_SETTINGS[apiSelected].API_SUBSCRIBE_URL}" target="_blank">API ChatGPT</a> en la caja de texto donde se escriben los mensajes..`);
}

function fChangeApiSelector(evento) {
    /*-- Obtiene la API destino y su clave (si tuviera) --*/
    const apiDestino = Number.parseInt(this.options[this.options.selectedIndex].value);
    const clave = JSON.parse(localStorage.getItem(APIS_NAME_LS))[apiDestino];

    /*-- Realiza la migración de API --*/
    let banderaConfirmacion = null;
    let newEngine;
    try {
        newEngine = changeAPIWithMigration(API, apiDestino, clave,
            () => { // fCaseMigracion -> se necesita cambio de motor
                banderaConfirmacion = confirm("La API de destino no usa el mismo motor que la API actual. ¿Deseas cambiar el motor para hacer la migración de API? Perderás tu conversación con el chatbot a menos que la exportes con el botón de 'Exportar conversación'.");
                if (banderaConfirmacion) {
                    conversacion.innerHTML = ""; // Borra todos los mensajes de la interfaz visual
                }
                return banderaConfirmacion;
            });

        /*-- Asigna el resultado de la función a la variable que almacena el motor --*/
        API = newEngine; // Cambia el motor por el nuevo (en caso de que se haya tenido que crear uno nuevo)

        /*-- Si ha habido que cambiar el motor --*/
        if (banderaConfirmacion != null) {
            if (banderaConfirmacion) {
                nuevosMensajes = API.size();
                if (clave == null || clave == "") {
                    promptbox.value = "";
                    promptbox.placeholder = "Escribe tu clave de la API";
                    mensajeEstado(TipoAlerta.ERROR,
                        "Cambio de API y motor realizado. Necesaria clave de API",
                        `Es necesario que ingreses en la caja de texto donde se escriben los mensajes, una clave de API obtenida desde la página web <a href="${API_LIST_SETTINGS[apiDestino].API_SUBSCRIBE_URL}" target="_blank">API ChatGPT</a>.`);
                } else {
                    promptbox.placeholder = "Escribe tu mensaje";
                    mensajeEstado(TipoAlerta.SUCCESS, "Éxito al cambiar de API y motor", "El cambio de API requería cambiar de motor, y el cambio se ha realizado con éxito.");
                }
            }
        } else {
            if (clave == null || clave == "") {
                promptbox.value = "";
                promptbox.placeholder = "Escribe tu clave de la API";
                mensajeEstado(TipoAlerta.ERROR,
                    "Cambio de API realizado. Necesaria clave de API",
                    `Es necesario que ingreses en la caja de texto donde se escriben los mensajes, una clave de API obtenida desde la página web <a href="${API_LIST_SETTINGS[apiDestino].API_SUBSCRIBE_URL}" target="_blank">API ChatGPT</a>.`);
            } else {
                promptbox.placeholder = "Escribe tu mensaje";
                mensajeEstado(TipoAlerta.SUCCESS, "Éxito al cambiar de API ", "El cambio de API se ha realizado con éxito.");
            }
        }

        /*-- Presenta en la interfaz de usuario la conversación con ChatGPT --*/
        if (nuevosMensajes > 0) {
            actualizarConversacionUI(false); // Actualiza la UI sin hacer scroll
        }

        /*-- Guarda la API seleccionada para la que se está guardando la clave --*/
        localStorage.setItem(API_SELECTED_NAME_LS, apiDestino);
    } catch (error) {
        mensajeEstado(TipoAlerta.ERROR, "Error al cambiar de API", error);
    }
}

function fChangeTemperature(evento) {
    /*-- Cambia el label del slider --*/
    const valor = Number.parseFloat(this.value);
    changeTemperatureLabel.textContent = `Temperatura (${valor.toFixed(2)})`;
    
    /*-- Lo asigna a la API --*/
    API.setTemperature(valor);
}

function fChangeMaxTokens(evento) {
    /*-- Cambia el label del slider --*/
    const valor = Number.parseInt(this.value)
    changeMaxTokensLabel.textContent = `Máx. tokens (${this.value == 4096 ? "inf" : valor.toPrecision(4)})`;

    /*-- Lo asigna a la API --*/
    API.setMaxTokens(valor);
}
//#endregion