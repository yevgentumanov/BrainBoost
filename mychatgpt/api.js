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
// const DEFAULT_SYSTEM_MESSAGE = "You are a helpful assistant.";

/**
 * Define un enumerado de tipos de roles que pueden tener los mensajes.
 */
// const ROLE_TYPES_ENUM = {
//     NONE: 0,
//     system: 1,
//     user: 2,
//     assistant: 3
// }
// const ROLE_TYPES_LIST = (() => { // Objeto inverso al ROLE_TYPES_ENUM: en forma de Array numérico (en lugar de asociativo)
//     let claves = Object.keys(ROLE_TYPES_ENUM);
//     let arr = Array();

//     for (let i = 0; i < claves.length; i++) {
//         const clave = claves[i];
//         arr.push(clave);
//     }

//     return arr;
// })();

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
 * Define una constante con los settings para cada implementación de motor.
 */
const API_ENGINE_SETTINGS = [
    {}, // NONE
    { // GENERIC
        ROLE_TYPES_ENUM: {
            NONE: 0,
            system: 1,
            user: 2,
            assistant: 3
        },
        DEFAULT_SYSTEM_MESSAGE: "You are a helpful assistant.",
        USAGE: {
            ".": "usage",
            COMPLETION_TOKENS: "completion_tokens",
            PROMPT_TOKENS: "prompt_tokens",
            TOTAL_TOKENS: "total_tokens"
        }
    }
];
for (let i = 1; i < API_ENGINE_SETTINGS.length; i++) { // Añade los roles al API_ENGINE_SETTINGS
    API_ENGINE_SETTINGS[i].ROLE_TYPES_LIST = (() => { // Objeto inverso al ROLE_TYPES_ENUM: en forma de Array numérico (en lugar de asociativo)
        let roles = Object.keys(API_ENGINE_SETTINGS[1].ROLE_TYPES_ENUM);
        let arr = Array();

        for (let j = 0; j < roles.length; j++) {
            const clave = roles[j];
            arr.push(clave);
        }

        return arr;
    })();
}

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
            "model": "gpt-3.5-turbo",
            "messages": [
                { "role": API_ENGINE_SETTINGS[API_ENGINE_ENUM.GENERIC].ROLE_TYPES_LIST[1], "content": API_ENGINE_SETTINGS[API_ENGINE_ENUM.GENERIC].DEFAULT_SYSTEM_MESSAGE }
            ]
        },
        STREAMABLE: true,
        DEFAULT_ARRAY_MESSAGES_PATH: "messages",
        DEFAULT_AUTHPARAM_NAME: "Authorization"
    },
    { // RapidAPI: OpenAI
        CHATGPT_API_URL: "https://openai80.p.rapidapi.com/chat/completions",
        API_SUBSCRIBE_URL: "https://rapidapi.com/openai-api-openai-api-default/api/openai80",
        DEFAULT_HEADERS: {
            'content-type': 'application/json',
            'X-RapidAPI-Key': "{API_KEY}",
            'X-RapidAPI-Host': 'openai80.p.rapidapi.com'
        },
        ENGINE: "GENERIC",
        MODELS: [
            "gpt-3.5-turbo"
        ],
        DEFAULT_BODY: {
            "model": "gpt-3.5-turbo",
            "messages": [
                { "role": API_ENGINE_SETTINGS[API_ENGINE_ENUM.GENERIC].ROLE_TYPES_LIST[1], "content": API_ENGINE_SETTINGS[API_ENGINE_ENUM.GENERIC].DEFAULT_SYSTEM_MESSAGE }
            ]
        },
        STREAMABLE: false,
        DEFAULT_ARRAY_MESSAGES_PATH: "messages",
        DEFAULT_AUTHPARAM_NAME: "X-RapidAPI-Key"
    },
    { // RapidAPI: ChatGPT
        CHATGPT_API_URL: "https://chatgpt53.p.rapidapi.com/",
        API_SUBSCRIBE_URL: "https://rapidapi.com/Glavier/api/chatgpt53",
        DEFAULT_HEADERS: {
            'content-type': 'application/json',
            'X-RapidAPI-Key': '{API_KEY}',
            'X-RapidAPI-Host': 'chatgpt53.p.rapidapi.com'
        },
        ENGINE: "GENERIC",
        MODELS: [
            "gpt-3.5-turbo"
        ],
        DEFAULT_BODY: {
            "messages": [
                { "role": API_ENGINE_SETTINGS[API_ENGINE_ENUM.GENERIC].ROLE_TYPES_LIST[1], "content": API_ENGINE_SETTINGS[API_ENGINE_ENUM.GENERIC].DEFAULT_SYSTEM_MESSAGE }
            ]
        },
        STREAMABLE: false,
        DEFAULT_ARRAY_MESSAGES_PATH: "messages",
        DEFAULT_AUTHPARAM_NAME: "X-RapidAPI-Key"
    }
]

/**
 * Método que permite navegar por las propiedades de un objeto JSON, devolviendo el valor asociado a la propiedad que se busca mediante el parámetro path.
 * @param {Object} obj Especifica un objeto literal JSON sobre el que se desea navegar.
 * @param {string} path Especifica la ruta hasta la que se quiere navegar dentro de las propiedades del objeto JSON.
 */
function navigateThroughObject(obj, path) {
    /*-- Realiza validaciones antes de hacer nada --*/
    if (obj instanceof Object == false) {
        throw new Error("No se ha especificado un objeto literal JSON.");
    }

    if (typeof(path) != "string") {
        throw new Error("path no es un string.");
    }

    /*-- Variables para la navegación por las propiedades del objeto JSON --*/
    let temp = obj;
    let tree = path.split(".");

    /*-- Navega hasta la ruta, y devuelve lo que haya en ella --*/
    tree.forEach(element => {
        temp = temp[element];
    });

    /*-- Devuelve la variable temporal con el valor que se venía buscando --*/
    return temp;
}

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
        // throw new Error("Método no implementado.")
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
     * Método que establece una nueva clave de API.
     * @param {string} key Especifica una clave de la API elegida.
     */
    setAPIKey(key) {
        throw new Error("Método no implementado.")
    }

    /**
     * Método que establece una nueva clave de API, y, opcionalmente, otra API distinta.
     * Nota: si se especifica null, se establecerá por defecto la primera API compatible con este motor.
     * En cambio, si lo que desea es borrar la especificación de API, especifique API_ENUM.NONE
     * @param {number} api (Opcional) Especifica una API de la API_ENUM.
     * @throws {Error} Si la API especificada no existe (no está entre las especificadas en API_ENUM)
     * @returns {boolean} true, si ha tenido éxito el cambio de API; false si no (por ejemplo, si se intenta trabajar con una API en un motor incompatible).
     */
    setAPI(api = null) {
        throw new Error("Método no implementado.")
    }

    /**
     * Método que devuelve los headers para enviar a la petición a ChatGPT vía fetch, ya con la clave de API ingresada directamente.
     */
    getHeaders() {
        throw new Error("Método no implementado.")
    }

    /**
     * Método que devuelve el motor que se está utilizando.
     */
    getEngine() {
        return API_ENGINE_ENUM.NONE;
    }

    /**
     * Método que devuelve los roles disponibles para este motor.
     */
    getAvailableRoles() {
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
     * Método que envía una petición a ChatGPT enviandole la lista completa de mensajes.
     * @param {object} funcionControladorVista Especifica la función que se encargará de pasar a la vista (o de recibirlos de algún modo en la lógica de tu aplicación) los datos que se reciban como respuesta a la petición a ChatGPT.
     * @param {object} funcionErrorCase Especifica la función que se encargará de pasar a la vista el error que se reciba como respuesta a la petición a ChatGPT (en caso de suceder alguno).
     * @param {boolean} streamMode (Opcional) Especifica si desea utilizar el modo stream de ChatGPT. Aviso, esta característica no está disponible en todas las APIs. Solo garantizamos que funcione en la API oficial de OpenAI.
     * @param {object} controller (Opcional) Especifica un objeto de tipo AbortController con el fin de asignar un AbortController y poder abortar la operación de fetch desde fuera.
     */
    sendMessageListToChatGPT(funcionControladorVista, funcionErrorCase, streamMode = false, controller = null) {
        throw new Error("Método no implementado.")
    }

    /**
     * Método que devuelve solo la lista con los mensajes de la conversación (sin ser el objeto interno completo).
     * Es el método recomendable para obtener la lista de mensajes de la misma forma en cualquier implementación de API de ChatGPT.
     */
    _getConversation() {
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

    /**
     * Método que limpia el objeto this._body de mensajes, y vuelve a establecerlo a DEFAULT_BODY.
     */
    clear() {
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
        super();
        /*-- Define los atributos que se utilizarán dentro de la clase --*/
        this._engine = null;
        this._api = null; // number
        this._keyAPI = null; // string
        this._body = null; // objeto JSON
        this._headers = null; // objeto JSON
        this._newMessagesNotPushed = null; // number
        this._temperature = null; // number (float)
        this._maxTokens = null; // number (integer)
        this._usage = null;

        /*-- CONSTRUCTOR: Asigna los valores a los atributos --*/
        this._engine = API_ENGINE_ENUM.GENERIC;
        this._newMessagesNotPushed = 0;
        this.setAPI(api);
        this.setAPIKey(keyAPI);
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
     * Método que establece una nueva clave de API.
     * @param {string} key Especifica una clave de la API elegida.
     */
    setAPIKey(key) {
        if (this._api == null) {
            throw new Error("No se puede establecer una clave de API si no se especifica primero una API.");
        }

        /*-- Asigna la nueva clave de API --*/
        this._keyAPI = key;

        /*-- Configura la clave de API --*/
        const authParamName = API_LIST_SETTINGS[this._api].DEFAULT_AUTHPARAM_NAME;
        if (this._keyAPI != null && typeof(this._keyAPI) != "undefined") {
            this._headers[authParamName] = this._headers[authParamName].replace("{API_KEY}", this._keyAPI); // Asigna la clave de API a las cabeceras
        }
    }

    /**
     * Método que establece una nueva clave de API, y, opcionalmente, otra API distinta.
     * Nota: si se especifica null, se establecerá por defecto la primera API compatible con este motor.
     * En cambio, si lo que desea es borrar la especificación de API, especifique API_ENUM.NONE
     * @param {number} api (Opcional) Especifica una API de la API_ENUM.
     * @throws {Error} Si la API especificada no existe (no está entre las especificadas en API_ENUM)
     * @returns {boolean} true, si ha tenido éxito el cambio de API; false si no (por ejemplo, si se intenta trabajar con una API en un motor incompatible).
     */
    setAPI(api = null) {
        /*-- Si no se ha pasado por parámetro ninguna API, establece la primera del motor --*/
        if (!api) {
            api = this._api || 1;
        }

        /*-- Descarta que la API especificada no sea válida --*/
        if (!(api >= 0 && api < API_LIST_NUMERIC.length)) {
            throw new Error("La API especificada no existe. Por favor, especifica un número de API válido. Ayúdate de la constante API_ENUM.");
        }

        /*-- Si la API especificada es NONE --*/
        if (api === API_ENUM.NONE) {
            this._api = Number.parseInt(api);
            return true;
        }

        /*-- Si la API especificada es de otro motor --*/
        if (this._api != null && API_ENGINE_ENUM[API_LIST_SETTINGS[this._api].ENGINE] != this._engine) {
            return false;
        }

        /*-- En caso de haber una API anterior, hace backup temporal de los mensajes para poder migrarlos luego a la estructura body de la nueva API --*/
        const oldApi = this._api; // Hace un backup de la antigua API
        if (typeof(oldApi) === "number" && oldApi >= 0 && oldApi < API_LIST_NUMERIC.length) {
            const nombreArrayMensajesOld = API_LIST_SETTINGS[oldApi]["DEFAULT_ARRAY_MESSAGES_PATH"];
            const mensajesOld = this._body[nombreArrayMensajesOld];

            /*-- Asigna la API y sus datos de configuración --*/
            this._api = Number.parseInt(api);
            this._headers = {...API_LIST_SETTINGS[this._api].DEFAULT_HEADERS}; // {... significa que crea una copia
            // this._engine = API_ENGINE_ENUM[API_LIST_SETTINGS[api].ENGINE];
            this._body = {...API_LIST_SETTINGS[this._api].DEFAULT_BODY}; // {... significa crea una copia

            /*-- Configuración especial para el body: migra los mensajes de una API a otra --*/
            const nombreArrayMensajesNew = API_LIST_SETTINGS[this._api]["DEFAULT_ARRAY_MESSAGES_PATH"];
            this._body[nombreArrayMensajesNew] = mensajesOld; // Realiza la migración de mensajes
        } else {
            /*-- Asigna la API y sus datos de configuración --*/
            this._api = Number.parseInt(api);
            this._headers = {...API_LIST_SETTINGS[api].DEFAULT_HEADERS}; // {... signfifica que crea una copia
            this._engine = API_ENGINE_ENUM[API_LIST_SETTINGS[api].ENGINE];
            this._body = {...API_LIST_SETTINGS[api].DEFAULT_BODY}; // {... signfifica crea una copia
        }

        /*-- Ha finalizado con éxito el cambio de API --*/
        return true;
    }

    /**
     * Método que devuelve los headers para enviar a la petición a ChatGPT vía fetch, ya con la clave de API ingresada directamente.
     */
    getHeaders() {
        return this._headers;
    }

    /**
     * Método que devuelve el motor que se está utilizando.
     */
    getEngine() {
        return this._engine;
    }

    /**
     * Método que devuelve los roles disponibles para este motor.
     */
    getAvailableRoles() {
        return API_ENGINE_SETTINGS[this._engine].ROLE_TYPES_LIST;
    }

    /**
     * Método que devuelve los datos de tokens usados en la última request al servidor.
     */
    getUsage() {
        return this._usage;
    }

    /**
     * Método que devuelve el contenido del mensaje especificado por índice dentro del array de mensajes del objeto.
     * @param {number} index Especifica el índice del mensaje dentro del array de mensajes del objeto.
     */
    getMessageContent(index) {
        const nombreArrayMensajes = API_LIST_SETTINGS[this._api]["DEFAULT_ARRAY_MESSAGES_PATH"];
        return this._body[nombreArrayMensajes][index].content;
    }

    /**
     * Método que devuelve el rol del mensaje especificado por índice dentro del array de mensajes del objeto.
     * @param {number} index Especifica el índice del mensaje dentro del array de mensajes del objeto.
     */
    getMessageRole(index) {
        const nombreArrayMensajes = API_LIST_SETTINGS[this._api]["DEFAULT_ARRAY_MESSAGES_PATH"];
        return this._body[nombreArrayMensajes][index].role;
    }

    /**
     * Método que permite modificar el contenido de un mensaje almacenado en el array de mensajes del objeto.
     * @param {number} index Especifica el índice del mensaje dentro del array de mensajes del objeto.
     * @param {string} newContentMessage Especifica el nuevo contenido del mensaje especificado.
     */
    setMessageContent(index, newContentMessage) {
        const nombreArrayMensajes = API_LIST_SETTINGS[this._api]["DEFAULT_ARRAY_MESSAGES_PATH"];
        this._body[nombreArrayMensajes][index].content = newContentMessage;
    }

    /**
     * Método que permite modificar el rol de un mensaje almacenado en el array de mensajes del objeto.
     * @param {number} index Especifica el índice del mensaje dentro del array de mensajes del objeto.
     * @param {string} newRole Especifica el nuevo rol del mensaje especificado.
     */
    setMessageRole(index, newRole) {
        const nombreArrayMensajes = API_LIST_SETTINGS[this._api]["DEFAULT_ARRAY_MESSAGES_PATH"];
        this._body[nombreArrayMensajes][index].role = newRole;
    }

    /**
     * Método que permite eliminar un mensaje del array de mensajes del objeto.
     * @param {number} index Especifica el índice del mensaje dentro del array de mensajes del objeto.
     */
    removeMessage(index) {
        const nombreArrayMensajes = API_LIST_SETTINGS[this._api]["DEFAULT_ARRAY_MESSAGES_PATH"];
        return this._body[nombreArrayMensajes].splice(index, 1);
    }

    /**
     * Método que sirve para añadir un nuevo mensaje al final del array de mensajes del objeto.
     * @param {string} message Especifica el contenido del mensaje.
     * @param {string} role (Opcional) Especifica el rol del mensaje. Especificar solo si se sabe a ciencia cierta que API se está utilizando (ya que dependiendo de la API, puede no ser necesario especificar rol).
     */
    addMessageToQueue(message, role = null) {
        /*-- Declaración de variables --*/
        const nombreArrayMensajes = API_LIST_SETTINGS[this._api]["DEFAULT_ARRAY_MESSAGES_PATH"];

        /*-- Verifica si se especifica rol o no --*/
        if (role) {
            this._body[nombreArrayMensajes].push({ "role": this.getAvailableRoles()[role], "content": message });
        } else {
            if (this.size() == 0) { // Si no hay ningún mensaje
                this._body[nombreArrayMensajes].push({ "role": this.getAvailableRoles()[1], "content": message });
            } else { // Si ya hay más de un mensaje
                this._body[nombreArrayMensajes].push({ "role": this.getAvailableRoles()[2], "content": message });
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
     * @param {object} funcionErrorCase Especifica la función que se encargará de pasar a la vista el error que se reciba como respuesta a la petición a ChatGPT (en caso de suceder alguno).
     * @param {boolean} streamMode (Opcional) Especifica si desea utilizar el modo stream de ChatGPT. Aviso, esta característica no está disponible en todas las APIs. Solo garantizamos que funcione en la API oficial de OpenAI.
     * @param {object} controller (Opcional) Especifica un objeto de tipo AbortController con el fin de asignar un AbortController y poder abortar la operación de fetch desde fuera.
     */
    sendMessageListToChatGPT(funcionControladorVista, funcionErrorCase, streamMode = false, controller = null) {
        /*-- Descarta que no haya API y clave de API --*/
        if (this._keyAPI != null && typeof(this._keyAPI) != "string") {
            // console.error("No se ha especificado ninguna clave de API.");
            funcionErrorCase("No se ha especificado ninguna clave de API.");
            return;
        }

        if (!streamMode) {
            /*-- Realiza la petición al servidor de la API en modo normal --*/
            obtenerJSON(API_LIST_SETTINGS[this._api].CHATGPT_API_URL, "POST", this._headers, JSON.stringify(this._body), controller)
                .then(response => {
                    this._body.messages.push({ "role": API_ENGINE_SETTINGS[this._engine].ROLE_TYPES_LIST[3], "content": response.choices[0].message.content })
                    console.log(response);
                    this._newMessagesNotPushed = 0;
                    this._usage = navigateThroughObject(response, API_ENGINE_SETTINGS[this._engine].USAGE["."]);
                    funcionControladorVista();
                })
                .catch(error => {
                    funcionErrorCase(error + "\n"
                    + "Es probable que la clave de API sea incorrecta.");
                    // + "URL: " + API_LIST_SETTINGS[this._api].CHATGPT_API_URL + "\n"
                    // + "Headers: " + JSON.stringify(this._headers) + "\n"
                    // + "Conversacion: " + JSON.stringify(this._body));
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
            throw new Error("Todavía no está implementada la posibilidad de recibir los datos de ChatGPT en modo stream.")
        }
    }

    /**
     * Método PRIVADO que sirve para cargar una conversación (una lista de mensajes) al array de mensajes del objeto.
     * @param {object} messageList Especifica una lista de mensajes en formato JSON.
     */
    _setConversation(messageList) {
        if (typeof(messageList) == "object") {
            const nombreArrayMensajes = API_LIST_SETTINGS[this._api]["DEFAULT_ARRAY_MESSAGES_PATH"];
            this._body[nombreArrayMensajes] = messageList;
        } else {
            throw new Error("La lista de mensajes especificada no es un objeto JSON.")
        }
    }

    /**
     * Método PRIVADO que devuelve solo la lista con los mensajes de la conversación (sin ser el objeto interno completo).
     * Es no el método recomendable para obtener la lista de mensajes de la misma forma en cualquier implementación de API de ChatGPT.
     */
    _getConversation() {
        /*-- Declaración de variables --*/
        const nombreArrayMensajes = API_LIST_SETTINGS[this._api]["DEFAULT_ARRAY_MESSAGES_PATH"];

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
        if (!objectExported) {
            throw new Error("El parámetro pasado a la función no está definido.")
        }

        if (typeof(objectExported) != "object") {
            throw new Error("El parámetro pasado a la función no es un objeto.")
        }

        /*-- Descarta que el motor del objeto exportado que se quiere importar no coincida con el de la API que está usando este objeto --*/
        // if (API_ENGINE_ENUM[API_LIST_SETTINGS[this._api].ENGINE] != objectExported.engine) {
        if (this._engine != objectExported.engine) {
            throw new Error("El motor utilizado en la conversación que intentas importar es distinto al que utiliza la API con la que se está trabajando en esta instancia de objeto.")
        }

        /*-- Importa la conversación si todo está bien --*/
        const nombreArrayMensajes = API_LIST_SETTINGS[this._api]["DEFAULT_ARRAY_MESSAGES_PATH"];
        this._body[nombreArrayMensajes] = objectExported.messages;
    }

    /**
     * Método que sirve para exportar una conversación, teniendo en cuenta el motor utilizado.
     * Aviso 1: Es la forma recomendada de acceder a la conversación.
     * Aviso 2: No se podrán importar conversaciones desde una implementación de motor a otra.
     */
    exportConversation() {
        /*-- Declaración de variables --*/
        const nombreArrayMensajes = API_LIST_SETTINGS[this._api]["DEFAULT_ARRAY_MESSAGES_PATH"];
        const chatExportado = {
            //engine: API_ENGINE_ENUM[API_LIST_SETTINGS[this._api].ENGINE],
            engine: this._engine,
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

    /*===========================================================
                UNDER CONSTRUCTION ZONE
                En proximas iteraciones, habrá que incluir en la configuracion de cada una de las APIs los valores por defecto,
                y habrá que hacer que se guarden estos valores en localStorage y al exportar conversaciones.
                También habrá que hacer validaciones, aquí está hecho todo deprisa y corriendo, se deja para perfeccionarlo en 
                próximas versiones.
    ==============================================================*/

    /**
     * Método que devuelve la temperatura que tendrán las respuestas del chatbot.
     * Por defecto es null. Null en ChatGPT es una temperatura de 1.
     */
    getTemperature() {
        return this._temperature;
    }

    /**
     * Método que permite especificar la temperatura que tendrán las respuestas del chatbot.
     * @param {number} temp Especifica la temperatura de las respuestas del chatbot.
     */
    setTemperature(temp) {
        if (temp == 1) {
            delete this._body.temperature;
            this._temperature = null;
        } else {
            this._body.temperature = temp;
            this._temperature = temp;
        }
    }

    /**
     * Método que devuelve el nº de tokens máximo de contexto que tendrá el chatbot en una conversación.
     * Por defecto es null. Null en ChatGPT es un máximo de 4096 (para el modelo GPT-3.5-turbo)
     */
    getMaxTokens() {
        return this._maxTokens;
    }

    /**
     * Método que permite especificar el nº de tokens máximo de contexto que tendrá el chatbot en una conversación.
     * @param {number} maxTokens Especifica el nº de tokens máximo de contexto.
     */
    setMaxTokens(maxTokens) {
        if (maxTokens == 4096) { // infinito
            delete this._body._maxTokens;
            this._maxTokens = null;
        } else {
            this._body._maxTokens = maxTokens;
            this._maxTokens = maxTokens;
        }
    }

    /**
     * Método que devuelve el número de mensajes que hay almacenados dentro del array de mensajes del objeto.
     */
    size() {
        const nombreArrayMensajes = API_LIST_SETTINGS[this._api]["DEFAULT_ARRAY_MESSAGES_PATH"];
        return this._body[nombreArrayMensajes].length;
    }

    /**
     * Método que limpia el objeto this._body de mensajes, y vuelve a establecerlo a DEFAULT_BODY.
     */
    clear() {
        this._body = API_LIST_SETTINGS[this._api].DEFAULT_BODY;
    }
}

//#endregion

//#region APIS de Bing Chat

//#endregion

/**
 * Atención: Utilizar a modo de constructor global y único.
 * Función que, en función de la conversación pasada por parámetro (en concreto, en función del atributo engine que tenga dentro) crea un objeto que maneje esta conversación con el motor adecuado.
 * 
 * Prioridad de los argumentos que se tiene en cuenta a la hora de la forma de crear el motor: api > engine > conversacion.
 * @param {Object} conversation - The conversation object containing the engine and messages.
 * @param {Number} api - The API to use for the conversation.
 * @param {String} keyAPI - The API key to use for the conversation (no es prioritario especificarlo nada más iniciar la API Engine).
 * @param {Number} engine - The engine to use for the conversation.
 * @returns {Object} - An object that handles the conversation with the appropriate engine.
 */
function API_LOADER(conversation = null, api = null, keyAPI = null, engine = 1) {
    /*-- Verificar el objeto de conversación --*/
    if (conversation != null) {
        if (typeof(conversation) !== "object") {
            throw new Error("El parámetro 'conversation' no es un objeto JSON válido.");
        }
        if (!conversation.engine || !conversation.messages) {
            throw new Error("El objeto 'conversation' no es válido.");
        }
    }

    /*-- Determinar el motor a utilizar --*/
    let motor;
    if (typeof(api) === "number" && api >= 0 && api < API_LIST_NUMERIC.length) {
        motor = API_ENGINE_ENUM[API_LIST_SETTINGS[api].ENGINE];
    } else if (typeof(engine) === "number" && engine >= 0 && engine < API_ENGINE_LIST.length) {
        motor = engine;
    } else if (conversation) {
        motor = conversation.engine;
    } else {
        throw new Error("No se especificó un motor válido.");
    }

    /*-- Crear el objeto de motor apropiado --*/
    switch (motor) {
        case API_ENGINE_ENUM.NONE:
            console.error("Se especificó un motor NONE.");
            break;
        case API_ENGINE_ENUM.GENERIC:
            const motorApi = new API_CHATGPT_GENERIC(api, keyAPI);
            if (conversation) {
                motorApi.importConversation(conversation);
            }
            return motorApi;
        default:
            throw new Error("Se especificó un motor no válido.");
    }
}

/**
 * Función que sirve para migrar un motor a otro.
 * Permite el cambio de API entre APIs con distinto motor.
 * Aviso: esta función no migra el chat, solo permite cambiar de una API a otra cuando utilicen distintos motores.
 * 
 * @param {API_CHATGPT_INTERFACE} motorActual - Especifica un motor de APIs.
 * @param {number} apiDestino - Especifica una API de destino. Ayúdate de la constante API_ENUM.
 * @param {string} claveApiDestino - Especifica la clave de API.
 * @param {Function} fCaseMigracion - Especifica una función que se ejecutará en caso de tener que cambiar de motor para migrar de API. La función que se implemente, debe devolver true (en caso de confirmar continuar con el proceso), o false (si no se continua con el proceso de migración).
 * @returns motorActual.
 */
function changeAPIWithMigration(motorActual, apiDestino, claveApiDestino, fCaseMigracion) {
    /*-- Descarta que motorActual no sea un motor válido --*/
    if (motorActual instanceof API_CHATGPT_GENERIC == false) {
        throw new Error("El motor especificado no es un objeto de ninguna clase válida que implemente un motor de APIs.");
    }

    /*-- Descarta que apiDestino no sea válido --*/
    if (!apiDestino || !(apiDestino >= 0 && apiDestino < API_LIST_NUMERIC.length)) {
        throw new Error("La API destino no es válida.");
    }

    /*-- Descarta que fCaseMigracion no sea una función --*/
    if (!fCaseMigracion || !fCaseMigracion instanceof Function) {
        throw new Error("El parámetro fCaseMigracion pasado como argumento no es una función.");
    }

    /*-- Dos vías de acción para realizar el cambio de API --*/
    if (API_ENGINE_ENUM[API_LIST_SETTINGS[apiDestino].ENGINE] == motorActual.getEngine()) { // Si la apiDestino es soportada por el motorActual
        motorActual.setAPI(apiDestino);
        motorActual.setAPIKey(claveApiDestino);
    } else { // Si la apiDestino NO ES soportada por el motorActual
        if (fCaseMigracion()) { // Si el usuario confirma que quiere continuar con la migración
            motorActual = API_LOADER(null, apiDestino, claveApiDestino, API_LIST_SETTINGS[apiDestino].ENGINE);
        } else {
            // Intenta una migración con el mismo motor, sabiendo que va a fallar, para que salte la excepción
            motorActual.setAPI(apiDestino);
        }
    }

    /*-- Devuelve el mismo motorActual --*/
    return motorActual;
}