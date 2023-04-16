/*=====================================
            IMPORTACIONES
 =====================================*/
import * as globals from './globals.json';
// import * as irregular from './example_rellenar_huecos.json';
import * as apij from './json.js';
import * as utilities from './utilidades.js';

/*====================================
            ENUMERADOS
======================================*/
const TipoPregunta = {
    NONE: 0, // No se ha definido el tipo de pregunta
    MULTIPLE_RESPONSE: 1, // Múltiples respuestas, única opción correcta
    MULTIPLE_RESPONSE_MULTIPLE_CHOICE: 2, // Múltiples respuestas, de múltiple elección (varias respuestas correctas posibles)
    UNIQUE_RESPONSE: 3, // Escribir la respuesta en una caja de texto
    FILL_IN_GAPS: 4, // Rellenar huecos (hay que rellenarlos todos)
    FILL_GAPS_GIVEN_ONE: 5 // Rellenar huecos dado uno (Ejemplo: verbos irregulares)
}

/*====================================
            CLASES
======================================*/
export class Test {
    /**
     * Constructor para crear un objeto de tipo test, que contendrá un test recogido de la BB.DD de la aplicación.
     * @param {number} idTest Especifica el id del test en la BB.DD.
     * @param {Array} preguntas Objeto JSON que contiene las preguntas del test y respuestas a cada una de ellas, así como su respuesta correcta.
     * @param {string} categoriaTest Especifica la categoría/materia a la que pertenece el test.
     * 
     */
    constructor(idTest = null, preguntas = null, categoriaTest = null) {
        /*====================================================
              Define todos los atributos de la clase
        =====================================================*/
        this.id_test = null; // (number) (se rescata de la BB.DD / se puede inventar desde el constructor con fines de pruebas internas del equipo de desarrollo, no se puede crear (cuando estemos creando un test mediante el creador de tests que desarrollaremos))
        this.length = null; // (number) (se rescata de la BB.DD / se rescata del objeto preguntas (cuando se esté creando un test con el creador de test que desarrollaremos))
        this.preguntas = null; // (array de objetos JSON) (se rescatan de la BB.DD / se pueden crear, modificar y eliminar con métodos específicos para ello)

        this.nombre_test = null; // (string) (se rescata de la BB.DD / se asigna con el setter desde el controlador)
        this.descripcion = null; // (string) (se rescata de la BB.DD / se asigna con el setter desde el controlador)
        this.numero_visitas = null; // (number) (solo se rescata de la BB.DD)

        this.id_usuario_creador = null; // (number) (se rescata de la BB.DD / no se puede asignar de otra forma, cuando un usuario cree un test desde el creador de tests, será desde el backend desde donde se reciba el id del usuario y se le asignará allí antes de guardar los datos en la BB.DD. Pero desde el frontend partirá con valor null)
        this.nombre_usuario_creador = null; // (string) (se rescata de la BB.DD / no se puede asignar de otra forma, cuando un usuario cree un test desde el creador de tests, será desde el backend desde donde se reciba el id del usuario y se le asignará allí antes de guardar los datos en la BB.DD. Pero desde el frontend partirá con valor null)

        this.id_materia = null; // (number) (se rescata de la BB.DD / se asigna con el setter desde el controlador, cuando el usuario esté creando un test en el creador de tests)
        this.nombre_materia = null; // (string) (se rescata de la BB.DD / se asigna con el setter desde el controlador, cuando el usuario esté creando un test en el creador de tests)

        this.id_usuario = null; // (number) (se rescata de la BB.DD desde el servidor)
        this.nota = null; // (number) (se rescata de la BB.DD / se asigna con el setter desde el controlador)
        this.fecha_realizacion = null; // (Date) (se rescata de la BB.DD / se asigna con el setter desde el controlador)
        
        /*===========================================
                Rellena todos los parámetros
        ============================================*/
        /*-- Rellena los atributos en función de los parámetros que reciba el constructor --*/
        if (typeof(idTest) == "number") {
            /*-- Atributos del test en sí --*/
            this.id_test = idTest;
        }

        /*-- Rellena los atributos de preguntas y length --*/
        if (preguntas && typeof(preguntas) == "object" && preguntas instanceof Array) {
            this.preguntas = preguntas;
            this.length = preguntas.length;
        } else {
            this.length = 0;
        }

        /*-- Más atributos del test en sí --*/
        if (nombreTest) {
            this.nombre_test = nombreTest;
        } else {
            this.nombre_test = null;
        }

        /*-- Atributos relacionados con el usuario que lo realiza --*/
        this.nota; // Nota que ha sacado el usuario en ese test
        this.fecha_realizacion;
    }

    /**
     * Devuelve el tamaño del test (nº de preguntas).
     * @returns El tamaño del test (nº de preguntas).
     */
    getLength() {
        return this.length;
    }

    /**
     * Devuelve el ID del test en la BB.DD.
     * @returns El ID del test en la BB.DD.
     */
    getIdTest() {
        return this.id_test;
    }

    /**
     * Devuelve la pregunta especificada por ID (no el ID de la BB.DD, sino el del array interno donde se almacenan las preguntas), junto con sus respuestas y su respuesta correcta.
     * @param {number} idPregunta Especifica el id de la pregunta que quieres obtener.
     */
    getPregunta(idPregunta) {
        return this.preguntas[idPregunta];
    }

    /**
     * Método para añadir una pregunta al test
     */
    addPregunta(pregunta) {
        this.preguntas.push(pregunta);
    }

    /**
     * Método que permite modificar una pregunta.
     */
    modifyPregunta(idPregunta, pregunta) {
        this.preguntas[idPregunta] = pregunta;
    }

    /**
     * Método que sirve para eliminar una pregunta dentro del objeto test.
     * @param {number} idPregunta Especifica el id de la pregunta (id numérico para identificar dentro del array de preguntas)
     */
    removePregunta(idPregunta) {
        this.preguntas.splice(idPregunta, 1);
    }

    /**
     * Método que sirve para establecer el nombre del test.
     * @param {string} nombreTest Especifica el nombre del test.
     */
    setNombreTest(nombreTest) {
        this.nombre_test = nombreTest;
    }

    /**
     * Método que devuelve el nombre del test.
     * @returns El nombre del test.
     */
    getNombreTest() {
        return this.nombre_test;
    }

    /**
     * Método que sirve para establecer la descripción del test.
     * @param {string} descripcionTest Especifica la descripción del test.
     */
    setDescripcion(descripcionTest) {
        this.descripcion = descripcionTest;
    }

    /**
     * Método que devuelve la descripción del test.
     * @returns La descripción del test.
     */
    getDescripcionTest() {
        return this.descripcion;
    }

    /**
     * Método que devuelve el número de visitas que ha tenido del test.
     * @returns El número de visitas que ha tenido del test.
     */
    getNumeroVisitas() {
        return this.descripcion;
    }

    /**
     * Método que devuelve el número de visitas que ha tenido del test.
     * @returns El número de visitas que ha tenido del test.
     */
    getNumeroVisitas() {
        return this.descripcion;
    }



    /**
     * Descarga información acerca del test.
     */
    downloadInfoAboutTestByIdTest(id_usuario = null) {

    }

    /**
     * Descarga del servidor las 10 siguientes preguntas (y sus respuestas).
     * @throws {Error} Puede lanzar un error si no consigue descargar la información de las preguntas del servidor.
     */
    downloadQuestionsByIdTest() {
        // irregular[0].tabla_preguntas[0]['Forma base']
        /*-- Creación de un array de Tests --*/
        let preguntas = Array(); // Aquí se almacenarán las preguntas del test que se recojan del servidor
    
        /*-- Obtiene los datos del servidor --*/
        apij.obtenerJSON(globals.constantes.HOST_NAME + globals.constantes.RUTA_PREGUNTAS, "GET", null, {idTest: this.id_test, diezPreguntasHasta: 10})
        /* diezPreguntasHasta es un parámetro que se le pasa al servidor para indicarle que, por ejemplo, si estamos en viendo las preguntas del 1-10 y queremos ver las siguientes 10,
        se lo especificamos diciéndole que diezPreguntasHasta = 20, porque serían 10 preguntas desde la pregunta número 10 (que es la última visible en la página hasta el momento) */
        .then(response => {
    
        }).catch(error => {
            /*-- Descarta que haya dado error --*/
            throw new Error("Se ha producido un error al intentar descargar la información de las preguntas del servidor. Mensaje de error: " + error.message);
        });
        
        
        /*-- Devuelve el resultado de la variable tests (el controlador se encargará de verificar si esto ha devuelto realmente la lista de tests o un error) --*/
        return tests;
    }
}

/*==========================================
        MÉTODOS ASOCIADOS AL MODELO
===========================================*/

/**
 * (Método implementado solo parcialmente).
 * @param {object} test (Obligatorio) Especifica un objeto test, por si hubiera simplemente que cargar más preguntas de un mismo test (en caso de que tuviera más de 10 preguntas, ya que de lo contrario, se cargan todas de una sola vez y no sería necesario invocar a este método).
 * @returns Devuelve el objeto test, con las nuevas preguntas cargadas.
 */
function obtenerPreguntasTest(test = null) {
    
}

/**
 * Función para crear un test random con múltiples respuestas, con el único fin de realizar pruebas mientras no se tenga implementada la parte del lado del servidor.
 * @param {number} nPreguntas Especifica el numero de preguntas que quieres que tenga el test random.
 */
export function crearTestMultiplesRespuestasRandom(nPreguntas) {
    /*-- Creación de variables --*/
    let test;
    let preguntas = Array();
    let respuestas = Array("Respuesta A", "Respuesta B", "Respuesta C", "Respuesta D");
    
    /*-- Creación de las preguntas random --*/
    for (let i = 0; i < nPreguntas; i++) {
        preguntas.push({"id_pregunta": i + 1, "id_test": utilities.Random.randomInt(), "nombre_pregunta": "Formulación de la pregunta " + (i + 1), "respuestas":
        respuestas,
        "respuesta_correcta": respuestas[utilities.Random.randomInt(0, respuestas.length)]});
    }

    /*-- Creación del test --*/
    test = new Test(utilities.Random.randomInt(1, 100), preguntas);

    /*-- Devuelve el test creado --*/
    return test;
}

/**
 * Función para crear un test random con una única respuesta posible, con el único fin de realizar pruebas mientras no se tenga implementada la parte del lado del servidor.
 * @param {number} nPreguntas Especifica el número de pregutnas que quieres que tenga el test random.
 * @returns Un test random de única respuesta posible (tiene que ser escrita).
 */
export function crearTestRespuestaUnica(nPreguntas) {
    /*-- Creación de variables --*/
    let test;
    let preguntas = Array();
    let palabras = ["perro", "gato", "casa", "coche", "jardín", "libro"];
    
    /*-- Creación de las preguntas random --*/
    for (let i = 0; i < nPreguntas; i++) {
        preguntas.push({"id_pregunta": i + 1, "id_test": utilities.Random.randomInt(), "nombre_pregunta": "Formulación de la pregunta " + (i + 1),
        "respuesta_correcta": palabras[utilities.Random.randomInt(0, palabras.length)]});
    }

    /*-- Creación del test --*/
    test = new Test(utilities.Random.randomInt(1, 100), preguntas);

    /*-- Devuelve el test creado --*/
    return test;
}