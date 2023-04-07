/*=====================================
            IMPORTACIONES
 =====================================*/
import * as apij from './json.js';
import * as utilities from './utilidades.js';

/*====================================
            ENUMERADOS
======================================*/
const TipoTest = {
    NONE: 0,
    MULTIPLE_CHOICE: 1,
    UNIQUE_RESPONSE: 2
}

/*====================================
            CLASES
======================================*/
export class Test {
    /**
     * Constructor para crear un objeto de tipo test, que contendrá un test recogido de la BB.DD de la aplicación.
     * @param {number} idTest Especifica el id del test en la BB.DD.
     * @param {object} preguntas Array que contiene las preguntas del test y respuestas a cada una de ellas, así como su respuesta correcta.
     */
    constructor(idTest, preguntas, length = null, tipoTest = TipoTest.NONE) {
        if (typeof(idTest) == "number", typeof(preguntas) == "object") {
            /*-- Atributos de la clase --*/
            this.id_test = idTest;
            if (length == null) {
                this.length = preguntas.length;
            } else {
                this.length = length;
            }
            this.preguntas = preguntas;
            this.tipoTest = tipoTest;
        }
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

    getTipoTest() {
        return this.tipoTest;
    }
}

/*==========================================
        MÉTODOS ASOCIADOS AL MODELO
===========================================*/

/**
 * (Método implementado solo parcialmente).
 * @param {object} test (Obligatorio) Especifica un objeto test, por si hubiera simplemente que cargar más preguntas de un mismo test (en caso de que tuviera más de 10 preguntas, ya que de lo contrario, se cargan todas de una sola vez y no sería necesario invocar a este método).
 * @returns Devuelve
 */
function obtenerPreguntasTest(test = null) {
    /*-- Creación de un array de Tests --*/
    let preguntas = Array(); // Aquí se almacenarán las preguntas del test que se recojan del servidor

    /*-- Obtiene los datos del servidor --*/
    apij.obtenerJSON("http://localhost/preguntas", "GET", null, {idTest: this.id_test, diezPreguntasHasta: 10})
    /* diezPreguntasHasta es un parámetro que se le pasa al servidor para indicarle que, por ejemplo, si estamos en viendo las preguntas del 1-10 y queremos ver las siguientes 10,
    se lo especificamos diciéndole que diezPreguntasHasta = 20, porque serían 10 preguntas desde la pregunta número 10 (que es la última visible en la página hasta el momento) */
    .then(response => {

    }).catch(error => {

    });

    /*-- Devuelve el resultado de la variable tests (el controlador se encargará de verificar si esto ha devuelto realmente la lista de tests o un error) --*/
    return tests;
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