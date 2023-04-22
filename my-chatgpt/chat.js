/*-- Creación de variables --*/
let estado;
let nuevosMensajes = 0; // Variable que servirá como bandera, sirve para controlar el numero nuevo de mensajes por procesar para poner en el HTML y en localStorage
let promptbox;
let conversacion; // Variable que almacena el section que contiene todos los divs con todos los mensajes tanto por parte del usuario como por parte de ChatGPT.
let unlock_chatgpt;
let importar_chat; // Boton importar chat
let exportar_chat; // Boton exportar chat
let mensajes = {
    "model":"gpt-3.5-turbo",
    "messages":[
        {"role":"system","content":"You are a helpful assistant."}
    ]
};

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

    /*-- Añade controladores de eventos --*/
    enviar.addEventListener("click", fEnviarButton);
    reset.addEventListener("click", fResetButton);
    unlock_chatgpt.addEventListener("change", fUnlockCheck);
    importar_chat.addEventListener("change", fImportarChatButton);
    exportar_chat.addEventListener("click", fExportarChatButton);

    /*-- Recupera la última conversación de localStorage --*/
    let messages = JSON.parse(localStorage.getItem("messages"));
    cargarConversacionJSON(messages);

    /*-- Presenta en la interfaz de usuario la conversación con ChatGPT --*/
    if (nuevosMensajes > 0) {
        actualizarConversacion();
    }

    if (!localStorage.getItem("claveAPI")) {
        mensajeEstado(true,
            "Necesaria clave de API",
            'Es necesario que ingreses una clave de API obtenida desde la página web <a href="https://rapidapi.com/openai-api-openai-api-default/api/openai80" target="_blank">RapidAPI</a>.');
    }
});

function cargarConversacionJSON(jsonConversation) {
    if (jsonConversation) { // Si existe algo en localStorage... Lo carga
        mensajes.messages = jsonConversation;
    }
    if (mensajes.messages[0].content == "You are a helpful assistant.") { // Cuando no está desbloqueado todo el potencial de ChatGPT
        nuevosMensajes = mensajes.messages.length - 1;
    } else { // Cuando SÍ está desbloqueado todo el potencial de ChatGPT
        nuevosMensajes = mensajes.messages.length;
        unlock_chatgpt.checked = true;
    }
}

function mensajeEstado(error = false, titulo = null, message = null) {
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

        if (error) {
            estado.className = "mensajeError";
        } else {
            estado.className = "mensajeExito";
        }
    }
}

function actualizarConversacion() {
    for (let i = mensajes.messages.length - nuevosMensajes; i < mensajes.messages.length; i++) {
        /*-- Variables con información del último mensaje del chat --*/
        let rol = mensajes.messages[i].role;

        /*-- Crea un nuevo div con el último mensaje --*/
        let ultimo = document.createElement("div");
        
        let nombreRol = document.createElement("span");
        nombreRol.textContent = rol;
        ultimo.append(nombreRol);

        let message = document.createElement("div");
        message.className = "message";

        /*-- Añade al ultimo mensaje los distintos párrafos que tenga el mensaje en cuestión --*/
        let divididoPorParrafos = mensajes.messages[i].content.split("\n");
        divididoPorParrafos.forEach(parrafo => {
            /*-- Crea el elemento p con el párrafo --*/
            let p = document.createElement("p");
            p.textContent = parrafo;

            /*-- Añade el párrafo al mensaje --*/
            message.append(p);
        });

        /*-- Añade a la conversacion el último mensaje --*/
        ultimo.append(message);
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
    if (!localStorage.getItem("claveAPI")) {
        localStorage.setItem("claveAPI", promptbox.value);
        mensajeEstado(false,
            "Clave de API guardada correctamente",
            'Para verificar que su clave es correcta, pruebe a enviarle un mensaje a ChatGPT.');
            return;
    }

    mensajeEstado(); // Borra cualquier mensaje de estado anterior

    /*-- Crea las variables necesarias para enviar el mensaje a ChatGPT --*/
    let headers = {
		'content-type': 'application/json',
		'X-RapidAPI-Key': localStorage.getItem("claveAPI"),
		'X-RapidAPI-Host': 'openai80.p.rapidapi.com'
	};

    /*-- Especifica el mensaje a la lista de mensajes del ChatGPT --*/
    if (mensajes.messages.length == 0) {
        mensajes.messages.push({"role":"system","content": promptbox.value});
    } else {
        mensajes.messages.push({"role":"user","content": promptbox.value});
    }
    nuevosMensajes++;
    actualizarConversacion();
    promptbox.value = ""; // Vacía el textarea
    
    /*-- Obtiene la respuesta de ChatGPT a nuestra petición --*/
    obtenerJSON("https://openai80.p.rapidapi.com/chat/completions", "POST", headers, JSON.stringify(mensajes))
        .then(response => {
            mensajes.messages.push({"role":"assistant","content": response.choices[0].message.content});
            nuevosMensajes++;
            console.log(response);
            actualizarConversacion();
        })
        .catch(error => {
            console.error(error);
        })
}

function fResetButton(evento) {
    conversacion.innerHTML = ""; // Borra todos los mensajes de la interfaz visualk
    /*-- Borra los mensajes de la memoria interna --*/
    mensajes.messages = [
        {"role":"system","content":"You are a helpful assistant."}
    ];
    unlock_chatgpt.disabled = false;
    unlock_chatgpt.checked = false;
    // console.dir(unlock_chatgpt);
}

function fUnlockCheck(evento) {
    if (unlock_chatgpt.checked) {
        mensajes.messages = [];
    } else {
        mensajes.messages = [
            {"role":"system","content":"You are a helpful assistant."}
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
            actualizarConversacion();
        }
    });

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