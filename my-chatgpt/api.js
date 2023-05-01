/*===============================================
                CONSTANTES
===============================================*/

/**
 * Define un enumerado con las APIs disponibles hasta el momento, para las cuales ha sido creado un motor de implementación, o bien, admiten el genérico.
 */
const API_ENUM = {
    NONE: 0,
    "OpenAI": 1,
    "RapidAPI: OpenAI": 2,
    "RapidAPI: ChatGPT": 3
}
const API_LIST_NUMERIC = (() => { // Objeto inverso al API_ENUM: en forma de Array numérico (en lugar de asociativo)
    let claves = Object.keys(API_ENUM);
    let arr = Array();

    for (let i = 0; i < claves.length; i++) {
        const clave = claves[i];
        arr.push(clave);
    }

    return arr;
})();

/**
 * Define el mensaje por defecto del rol system.
 */
const DEFAULT_SYSTEM_MESSAGE = "You are a helpful assistant.";

/**
 * Define un enumerado de tipos de roles que pueden tener los mensajes.
 */
const ROLE_TYPES_ENUM = {
    NONE: 0,
    system: 1,
    user: 2,
    assistant: 3
}
const ROLE_TYPES_LIST = (() => { // Objeto inverso al ROLE_TYPES_ENUM: en forma de Array numérico (en lugar de asociativo)
    let claves = Object.keys(ROLE_TYPES_ENUM);
    let arr = Array();

    for (let i = 0; i < claves.length; i++) {
        const clave = claves[i];
        arr.push(clave);
    }

    return arr;
})();

/**
 * Define un enumerado de motores implementados para cada una de las APIs.
 * - El genérico es el que más APIs soporta.
 */
const API_ENGINE_ENUM = {
    NONE: 0,
    GENERIC: 1
}
const API_ENGINE_LIST = (() => { // Objeto inverso al API_ENGINE_ENUM: en forma de Array numérico (en lugar de asociativo)
    let claves = Object.keys(API_ENGINE_ENUM);
    let arr = Array();

    for (let i = 0; i < claves.length; i++) {
        const clave = claves[i];
        arr.push(clave);
    }

    return arr;
})();

/**
 * Define un objeto que contiene todos los settings para cada una de las APIs contempladas.
 */
const API_LIST_SETTINGS = [
    {}, // NONE
    { // OpenAI
        CHATGPT_API_URL: "https://api.openai.com/v1/chat/completions",
        API_SUBSCRIBE_URL: "https://platform.openai.com/account/api-keys",
        DEFAULT_HEADERS: {
            'Content-Type': 'application/json',
            'Authorization': 'Bearer {API_KEY}'
        },
        ENGINE: "GENERIC",
        MODELS: [
            "gpt-3.5-turbo",
            "gpt-4"
        ],
        DEFAULT_BODY: {
            "model":"gpt-3.5-turbo",
            "messages":[
                {"role": ROLE_TYPES_LIST[1], "content": DEFAULT_SYSTEM_MESSAGE}
            ]
        },
        STREAMABLE: true,
        DEFAULT_ARRAY_MESSAGES_NAME: "messages",
        SUPPORT_UNLOCKED_POTENTIAL_CHATGPT: true
    },
    { // RapidAPI: OpenAI
        CHATGPT_API_URL: "https://openai80.p.rapidapi.com/chat/completions",
        API_SUBSCRIBE_URL: "https://rapidapi.com/openai-api-openai-api-default/api/openai80",
        DEFAULT_HEADERS: {
            'content-type': 'application/json',
            'X-RapidAPI-Key': "{API_KEY}",
            'X-RapidAPI-Host': 'openai80.p.rapidapi.com'
        },
        MODELS: [
            "gpt-3.5-turbo"
        ],
        DEFAULT_BODY: {
            "model":"gpt-3.5-turbo",
            "messages":[
                {"role": ROLE_TYPES_LIST[1], "content": DEFAULT_SYSTEM_MESSAGE}
            ]
        },
        STREAMABLE: false,
        DEFAULT_ARRAY_MESSAGES_NAME: "messages",
        SUPPORT_UNLOCKED_POTENTIAL_CHATGPT: true
    },
    { // RapidAPI: ChatGPT
        CHATGPT_API_URL: "https://chatgpt53.p.rapidapi.com/",
        API_SUBSCRIBE_URL: "https://rapidapi.com/Glavier/api/chatgpt53",
        DEFAULT_HEADERS: {
            'content-type': 'application/json',
            'X-RapidAPI-Key': '{API_KEY}',
            'X-RapidAPI-Host': 'chatgpt53.p.rapidapi.com'
        },
        MODELS: [
            "gpt-3.5-turbo"
        ],
        DEFAULT_BODY: {
            "messages":[
                {"role": ROLE_TYPES_LIST[1], "content": DEFAULT_SYSTEM_MESSAGE}
            ]
        },
        STREAMABLE: false,
        DEFAULT_ARRAY_MESSAGES_NAME: "messages",
        SUPPORT_UNLOCKED_POTENTIAL_CHATGPT: true
    }
]

//#region APIS de ChatGPT

/**
 * Clase (a modo de Interfaz) que deberá ser extendida por el controlador de cada API que se decida implementar.
 */
class API_CHATGPT_INTERFACE {
    
    /**
     * Constructor para una clase que implemente un motor para manejar APIs ChatGPT.
     * @param {number} api (Opcional) Especifica una API de la API_ENUM.
     * @param {string} keyAPI (Opcional) Especifica una clave de la API elegida.
     */
    constructor(api = null, keyAPI = null) {
        throw new Error("Método no implementado.")
    }

    /**
     * Método que devuelve la API utilizada en función del API_ENUM.
     */
    getAPI() {
        throw new Error("Método no implementado.")
    }

    /**
     * Método que devuelve la clave de la API utilizada.
     */
    getAPIKey() {
        throw new Error("Método no implementado.")
    }

    /**
     * Método que establece una nueva clade de API, y, opcionalmente, otra API distinta.
     * @param {string} key Especifica una clave de la API elegida.
     * @param {number} api (Opcional) Especifica una API de la API_ENUM.
     */
    setAPI(key, api = null) {
        throw new Error("Método no implementado.")
    }

    /**
     * Método que devuelve si se ha desbloqueado el potencial de ChatGPT (si se ha permitido modificar el mensaje del rol system al empezar un chat).
     */
    isFullUnlockedPotentialOfChatGPT() {
        throw new Error("Método no implementado.")
    }

    /**
     * Método que devuelve true si está disponible el desbloqueo del potencial de ChatGPT para esta implementación de la API.
     */
    isFullUnlockedPotentialOfChatGPTAvailable() {
        throw new Error("Método no implementado.")
    }

    /**
     * Método que permite desbloquear todo el potencial de ChatGPT cuando se inicia una nueva conversación con él.
     */
    unlockPotentialOfChatGPT() {
        throw new Error("Método no implementado.")
    }

    /**
     * Método que devuelve el contenido del mensaje especificado por índice dentro del array de mensajes del objeto.
     * @param {number} index Especifica el índice del mensaje dentro del array de mensajes del objeto.
     */
    getMessageContent(index) {
        throw new Error("Método no implementado.")
    }

    /**
     * Método que devuelve el rol del mensaje especificado por índice dentro del array de mensajes del objeto.
     * @param {number} index Especifica el índice del mensaje dentro del array de mensajes del objeto.
     */
    getMessageRole(index) {
        throw new Error("Método no implementado.")
    }

    /**
     * Método que permite modificar el contenido de un mensaje almacenado en el array de mensajes del objeto.
     * @param {number} index Especifica el índice del mensaje dentro del array de mensajes del objeto.
     * @param {string} newContentMessage Especifica el nuevo contenido del mensaje especificado.
     */
    setMessageContent(index, newContentMessage) {
        throw new Error("Método no implementado.")
    }

    /**
     * Método que permite modificar el rol de un mensaje almacenado en el array de mensajes del objeto.
     * @param {number} index Especifica el índice del mensaje dentro del array de mensajes del objeto.
     * @param {string} newRole Especifica el nuevo rol del mensaje especificado.
     */
    setMessageRole(index, newRole) {
        throw new Error("Método no implementado.")
    }

    /**
     * Método que permite eliminar un mensaje del array de mensajes del objeto.
     * @param {number} index Especifica el índice del mensaje dentro del array de mensajes del objeto.
     */
    removeMessage(index) {
        throw new Error("Método no implementado.")
    }

    /**
     * Método que sirve para añadir un nuevo mensaje al final del array de mensajes del objeto.
     * @param {string} role Especifica el rol del mensaje.
     * @param {string} message Especifica el contenido del mensaje.
     */
    addMessageToQueue(role, message) {
        throw new Error("Método no implementado.")
    }

    /**
     * Método que devuelve el número de mensajes nuevos que han sido añadidos mediante addMessage y aún no han sido respondidos por ChatGPT.
     */
    getAmountNewMessages() {
        throw new Error("Método no implementado.")
    }

    /**
     * Método que envía una petición a ChatGPT enviandole la lista completa de mensajes.
     * @param {object} funcionControladorVista Especifica la función que se encargará de pasar a la vista (o de recibirlos de algún modo en la lógica de tu aplicación) los pequeños datos que se vayan recibiendo como respuesta a la petición a ChatGPT.
     * @param {boolean} streamMode (Opcional) Especifica si desea utilizar el modo stream de ChatGPT. Aviso, esta característica no está disponible en todas las APIs. Solo garantizamos que funcione en la API oficial de OpenAI.
     */
    sendMessageListToChatGPT(funcionControladorVista, streamMode = false) {
        throw new Error("Método no implementado.")
    }

    /**
     * Método que devuelve solo la lista con los mensajes de la conversación (sin ser el objeto interno completo).
     * Es el método recomendable para obtener la lista de mensajes de la misma forma en cualquier implementación de API de ChatGPT.
     */
    getConversation() {
        throw new Error("Método no implementado.")
    }

    /**
     * Método que sirve para importar una conversación al array de mensajes del objeto.
     * Aviso: No se podrán importar conversaciones desde una implementación de motor a otra.
     * @param {object} objectExported Especifica el contenido de un objeto de exportación de chat.
     */
    importConversation(objectExported) {
        throw new Error("Método no implementado.")
    }

    /**
     * Método que sirve para exportar una conversación, teniendo en cuenta el motor utilizado.
     * Aviso: No se podrán importar conversaciones desde una implementación de motor a otra.
     */
    exportConversation() {
        throw new Error("Método no implementado.")
    }

    /**
     * Método que devuelve el array que se le envía en las peticiones a ChatGPT.
     */
    getBodyInput() {
        throw new Error("Método no implementado.")
    }

    /**
     * Método que devuelve el número de mensajes que hay almacenados dentro del array de mensajes del objeto.
     */
    size() {
        throw new Error("Método no implementado.")
    }
}

/**
 * Clase genérica que podrá ser extendida por el controlador específico (si es que hiciera falta) de cada API que se decida implementar.
 */
class API_CHATGPT_GENERIC extends API_CHATGPT_INTERFACE {
    /**
     * Constructor para una clase que implementa un motor genérico para manejo de la mayoría de APIs de ChatGPT.
     * @param {number} api (Opcional) Especifica una API de la API_ENUM.
     * @param {string} keyAPI (Opcional) Especifica una clave de la API elegida.
     * @param {object} messageList (Opcional) Especifica una lista de mensajes (solo la lista, no el objeto obtenido mediante el método exportConversation()). Usar solo si desea clonar un objeto de esta clase. Si desea importar datos por primera vez, instancie el objeto sin introducir este parámetro, y llame a importConversation().
     */
    constructor(api = null, keyAPI = null, messageList = null) {
        /*-- Define los atributos que se utilizarán dentro de la clase --*/
        this._engine;
        this._api = null; // number
        this._keyAPI = null; // string
        this._unlockedPotentialOfChatGPT = null; // boolean
        this._body = null; // objeto JSON
        this._headers = null; // objeto JSON
        this._newMessagesNotPushed = null; // number
        this._solveUnsupportedPotentialChatGPTMode = null; // object: almacena un método (es un atributo privado que utilizarán las clases que hereden de esta, para cuando la API para la que se está implementando esta nueva clase no tiene soporte para el desbloqueo de todo el potencial de ChatGPT).

        /*-- CONSTRUCTOR: Asigna los valores a los atributos --*/
        this._unlockedPotentialOfChatGPT = false;
        this._newMessagesNotPushed = 0;
        this.setAPI(keyAPI, api);
        // this._api = api;
        // this._keyAPI = keyAPI;
        if (api) {
            // this._body = API_LIST_SETTINGS[api].DEFAULT_BODY;
            // this._headers = API_LIST_SETTINGS[api].DEFAULT_HEADERS;
            if (messageList) {
                this._setConversation(messageList);
            }
        }
    }

    /**
     * Método que devuelve la API utilizada en función del API_ENUM.
     */
    getAPI() {
        return this._api;
    }

    /**
     * Método que devuelve la clave de la API utilizada.
     */
    getAPIKey() {
        return this._keyAPI;
    }

    /**
     * Método que establece una nueva clade de API, y, opcionalmente, otra API distinta.
     * @param {string} key Especifica una clave de la API elegida.
     * @param {number} api (Opcional) Especifica una API de la API_ENUM.
     */
    setAPI(key, api = null) {
        this._keyAPI = key;
        if (api) {
            if (typeof(api) != "number") {
                throw new Error("La API especificada no existe. Por favor, especifica un número de API válido. Ayúdate de la constante API_ENUM.")
            }
            this._api = api;
            this._body = API_LIST_SETTINGS[api].DEFAULT_BODY;
            this._headers = API_LIST_SETTINGS[api].DEFAULT_HEADERS;
        }
    }

    /**
     * Método que devuelve si se ha desbloqueado el potencial de ChatGPT (si se ha permitido modificar el mensaje del rol system al empezar un chat).
     */
    isFullUnlockedPotentialOfChatGPT() {
        return this._unlockedPotentialOfChatGPT;
    }

    /**
     * Método que permite desbloquear todo el potencial de ChatGPT cuando se inicia una nueva conversación con él.
     * Importante: esto eliminará la conversación que estuviera almacenada previamente en el array mensajes del objeto.
     */
    unlockPotentialOfChatGPT() {
        if (!API_LIST_SETTINGS[this._api].SUPPORT_UNLOCKED_POTENTIAL_CHATGPT) {
            throw new Error("La API seleccionada no soporta el desbloqueo total del potencial de ChatGPT.")
        }
        this._unlockedPotentialOfChatGPT = true;
        this._body[nombreArrayMensajes] = [];
    }

    /**
     * Método que devuelve true si está disponible el desbloqueo del potencial de ChatGPT para esta implementación de la API.
     */
    isFullUnlockedPotentialOfChatGPTAvailable() {
        return API_LIST_SETTINGS[this._api].SUPPORT_UNLOCKED_POTENTIAL_CHATGPT;
    }

    /**
     * Método que devuelve el contenido del mensaje especificado por índice dentro del array de mensajes del objeto.
     * @param {number} index Especifica el índice del mensaje dentro del array de mensajes del objeto.
     */
    getMessageContent(index) {
        const nombreArrayMensajes = API_LIST_SETTINGS[this._api][DEFAULT_ARRAY_MESSAGES_NAME];
        return this._body[nombreArrayMensajes][index].content;
    }

    /**
     * Método que devuelve el rol del mensaje especificado por índice dentro del array de mensajes del objeto.
     * @param {number} index Especifica el índice del mensaje dentro del array de mensajes del objeto.
     */
    getMessageRole(index) {
        const nombreArrayMensajes = API_LIST_SETTINGS[this._api][DEFAULT_ARRAY_MESSAGES_NAME];
        return this._body[nombreArrayMensajes][index].role;
    }

    /**
     * Método que permite modificar el contenido de un mensaje almacenado en el array de mensajes del objeto.
     * @param {number} index Especifica el índice del mensaje dentro del array de mensajes del objeto.
     * @param {string} newContentMessage Especifica el nuevo contenido del mensaje especificado.
     */
    setMessageContent(index, newContentMessage) {
        const nombreArrayMensajes = API_LIST_SETTINGS[this._api][DEFAULT_ARRAY_MESSAGES_NAME];
        this._body[nombreArrayMensajes][index].content = newContentMessage;
    }

    /**
     * Método que permite modificar el rol de un mensaje almacenado en el array de mensajes del objeto.
     * @param {number} index Especifica el índice del mensaje dentro del array de mensajes del objeto.
     * @param {string} newRole Especifica el nuevo rol del mensaje especificado.
     */
    setMessageRole(index, newRole) {
        const nombreArrayMensajes = API_LIST_SETTINGS[this._api][DEFAULT_ARRAY_MESSAGES_NAME];
        this._body[nombreArrayMensajes][index].role = newRole;
    }

    /**
     * Método que permite eliminar un mensaje del array de mensajes del objeto.
     * @param {number} index Especifica el índice del mensaje dentro del array de mensajes del objeto.
     */
    removeMessage(index) {
        const nombreArrayMensajes = API_LIST_SETTINGS[this._api][DEFAULT_ARRAY_MESSAGES_NAME];
        this._body[nombreArrayMensajes].splice(index, 1);
    }

    /**
     * Método que sirve para añadir un nuevo mensaje al final del array de mensajes del objeto.
     * @param {string} message Especifica el contenido del mensaje.
     * @param {string} role (Opcional) Especifica el rol del mensaje. Especificar solo si se sabe a ciencia cierta que API se está utilizando (ya que dependiendo de la API, puede no ser necesario especificar rol).
     */
    addMessageToQueue(message, role = null) {
        /*-- Declaración de variables --*/
        const nombreArrayMensajes = API_LIST_SETTINGS[this._api][DEFAULT_ARRAY_MESSAGES_NAME];

        /*-- Verifica si se especifica rol o no --*/
        if (role) {
            this._body[nombreArrayMensajes].push({"role":ROLE_TYPES_LIST[role],"content": promptbox.value});
        } else {
            if (this.size() == 0) { // Si ya hay más de un mensaje
                this._body[nombreArrayMensajes].push({"role":ROLE_TYPES_LIST[1],"content": promptbox.value});
            } else {
                if (this._unlockedPotentialOfChatGPT) {
                    this._body[nombreArrayMensajes].push({"role":ROLE_TYPES_LIST[2],"content": promptbox.value});
                } else {
                    this._body[nombreArrayMensajes].push(this._solveUnsupportedPotentialChatGPTMode()); // Requiere ser implementado en una clase que herede de esta.
                }
            }
        }

        /*-- Aumenta el número de mensajes que aún no ha recibido ChatGPT --*/
        this._newMessagesNotPushed++;
    }

    /**
     * Método que devuelve el número de mensajes nuevos que han sido añadidos mediante addMessage y aún no han sido respondidos por ChatGPT.
     */
    getAmountNewMessages() {
        return this._newMessagesNotPushed;
    }

    /**
     * Método que envía una petición a ChatGPT enviandole la lista completa de mensajes.
     * @param {object} funcionControladorVista Especifica la función que se encargará de pasar a la vista (o de recibirlos de algún modo en la lógica de tu aplicación) los datos que se reciban como respuesta a la petición a ChatGPT.
     * @param {boolean} streamMode (Opcional) Especifica si desea utilizar el modo stream de ChatGPT. Aviso, esta característica no está disponible en todas las APIs. Solo garantizamos que funcione en la API oficial de OpenAI.
     */
    sendMessageListToChatGPT(funcionControladorVista, streamMode = false) {
        if (!streamMode) {
            /*-- Realiza la petición al servidor de la API en modo normal --*/
            obtenerJSON(API_LIST_SETTINGS[this._api].CHATGPT_API_URL, "POST", this._headers, JSON.stringify(this._body))
            .then(response => {
                this._body.messages.push({"role":ROLE_TYPES[3],"content": response.choices[0].message.content})
                console.log(response);
                funcionControladorVista();
                this._newMessagesNotPushed = 0;
            })
            .catch(error => {
                throw new Error(error);
            })
        } else {
            /*-- Descarta que la API seleccionada no soporte el modo stream --*/
            if (!API_LIST_SETTINGS[this._api].STREAMABLE) {
                throw new Error("Esta API no soporta el modo stream.")
            }
            /*-- Descarta que no se haya pasado por parámetro una función para pasar los datos a la vista --*/
            if (!funcionControladorVista) {
                throw new Error("No se ha especificado ninguna función que se encargue de pasar los datos a la vista, o de recibirlos de algún modo en la lógica de tu aplicación.")
            }

            /*-- Realiza la petición al servidor de la API en modo stream --*/
            // Todo: No implementado todavía
        }
    }

    /**
     * Método PRIVADO que sirve para cargar una conversación (una lista de mensajes) al array de mensajes del objeto.
     * @param {object} messageList Especifica una lista de mensajes en formato JSON.
     */
    _setConversation(messageList) {
        if (messageList && typeof(messageList) == "object") {
            const nombreArrayMensajes = API_LIST_SETTINGS[this._api][DEFAULT_ARRAY_MESSAGES_NAME];
            this._body[nombreArrayMensajes] = messageList;
        } else {
            throw new Error("La lista de mensajes especificada no es un objeto JSON.")
        }
    }

    /**
     * Método que devuelve solo la lista con los mensajes de la conversación (sin ser el objeto interno completo).
     * Es el método recomendable para obtener la lista de mensajes de la misma forma en cualquier implementación de API de ChatGPT.
     */
    getConversation() {
        /*-- Declaración de variables --*/
        const nombreArrayMensajes = API_LIST_SETTINGS[this._api][DEFAULT_ARRAY_MESSAGES_NAME];

        /*-- Devuelve la conversación --*/
        return this._body[nombreArrayMensajes];
    }

    /**
     * Método que sirve para importar una conversación al array de mensajes del objeto.
     * Aviso 1: Es la forma recomendada de importar una conversación
     * Aviso 2: No se podrán importar conversaciones desde una implementación de motor a otra.
     * @param {object} objectExported Especifica el contenido de un objeto de exportación de chat.
     */
    importConversation(objectExported) {
        if (!messageList) {
            throw new Error("El parámetro pasado a la función no está definido.")
        }

        if (typeof(messageList) == "object") {
            throw new Error("El parámetro pasado a la función no es un objeto.")
        }

        /*-- Descarta que el motor del objeto exportado que se quiere importar no coincida con el de la API que está usando este objeto --*/
        if (API_ENGINE_ENUM[API_LIST_SETTINGS[this._api].ENGINE] != objectExported.engine) {
            throw new Error("El motor utilizado en la conversación que intentas importar es distinto al que utiliza la API con la que se está trabajando en esta instancia de objeto.")
        }

        /*-- Importa la conversación si todo está bien --*/
        const nombreArrayMensajes = API_LIST_SETTINGS[this._api][DEFAULT_ARRAY_MESSAGES_NAME];
        this._body[nombreArrayMensajes] = objectExported.messages;
    }

    /**
     * Método que sirve para exportar una conversación, teniendo en cuenta el motor utilizado.
     * Aviso 1: Es la forma recomendada de acceder a la conversación.
     * Aviso 2: No se podrán importar conversaciones desde una implementación de motor a otra.
     */
    exportConversation() {
        /*-- Declaración de variables --*/
        const nombreArrayMensajes = API_LIST_SETTINGS[this._api][DEFAULT_ARRAY_MESSAGES_NAME];
        const chatExportado = {
            engine: API_ENGINE_ENUM[API_LIST_SETTINGS[this._api].ENGINE],
            messages: this._body[nombreArrayMensajes]
        }
        
        /*-- Devuelve un objeto que se podrá importar después con el método importConversation --*/
        return chatExportado;
    }

    /**
     * Método que devuelve el array que se le envía en las peticiones a ChatGPT.
     */
    getBodyInput() {
        return this._body;
    }

    /**
     * Método que devuelve el número de mensajes que hay almacenados dentro del array de mensajes del objeto.
     */
    size() {
        const nombreArrayMensajes = API_LIST_SETTINGS[this._api][DEFAULT_ARRAY_MESSAGES_NAME];
        return this._body[nombreArrayMensajes].length;
    }
}

//#endregion

//#region APIS de Bing Chat

//#endregion

/**
 * Atención: Utilizar a modo de constructor global y único.
 * Función que, en función de la conversación pasada por parámetro (en concreto, en función del atributo engine que tenga dentro) crea un objeto que maneje esta conversación con el motor adecuado.
 */
function API_LOADER(conversacion = null, api = null, keyAPI = null) {
    /*-- Descarta y pasa ciertas verificaciones antes de intentar cargar la conversación pasada por parámetro --*/
    if (!conversacion) {
        return new API_CHATGPT_INTERFACE();
    }
    if (typeof(conversacion) != "object") {
        throw new Error("El parámetro pasado no es un objeto JSON.");
    }
    if (!conversacion["engine"] || !conversacion["messages"]) {
        throw new Error("El objeto pasado por parámetro no es válido.");
    }

    /*-- Crea un objeto que implemente el motor especificado --*/
    let engine = new API_CHATGPT_GENERIC(api, keyAPI);
    engine.importConversation(conversacion)
    return engine;
}