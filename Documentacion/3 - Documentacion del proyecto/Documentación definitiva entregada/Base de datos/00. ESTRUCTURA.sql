
/*****************************************************************************************************************************************************************************/
/*****************************************************************************************************************************************************************************/
/*****************************************************************************************************************************************************************************/

-- Eliminación de las estructuras si existen de manera inversa a su creación para no violar las restricciones de integridad
DROP TABLE IF EXISTS intentos_preguntas;
DROP TABLE IF EXISTS preguntas;
DROP TABLE IF EXISTS tests;
DROP TABLE IF EXISTS usuarios;
DROP TABLE IF EXISTS materias;
DROP TABLE IF EXISTS categorias;


/*****************************************************************************************************************************************************************************/
/*****************************************************************************************************************************************************************************/
/*****************************************************************************************************************************************************************************/

-- Creación de la tabla CATEGORIAS
CREATE TABLE categorias (
  id INT NOT NULL AUTO_INCREMENT,
  nombre VARCHAR(50) NOT NULL,
  PRIMARY KEY (id)
);

/*****************************************************************************************************************************************************************************/
/*****************************************************************************************************************************************************************************/
/*****************************************************************************************************************************************************************************/

-- Creación de la tabla MATERIAS
CREATE TABLE materias (
  id INT PRIMARY KEY AUTO_INCREMENT,
  id_categoria INT NOT NULL,
  nombre_materia VARCHAR(50) NOT NULL,
  descripcion VARCHAR(1500),
  FOREIGN KEY (id_Categoria) REFERENCES categorias(id)
);

/*****************************************************************************************************************************************************************************/
/*****************************************************************************************************************************************************************************/
/*****************************************************************************************************************************************************************************/

-- Creación de la tabla USUARIOS
CREATE TABLE usuarios (
  id INT PRIMARY KEY AUTO_INCREMENT,
  nombre_usuario VARCHAR(50) NOT NULL,
  google_id	varchar(255),
  password VARBINARY(64) NOT NULL,
  email VARCHAR(255) NOT NULL,
  email_verified_at	TIMESTAMP
);

/*

id: es el identificador autoincremental de la tabla y su clave primaria.
nombre_usuario: es el nombre del usuario, una cadena de texto con un máximo de 50 caracteres y no nulo.
password: es la contraseña de la cuenta del usuario encriptada, una cadena de texto con un máximo de 255 caracteres y no nulo.
email: es la dirección de correo electrónico del usuario, una cadena de texto con un máximo de 255 caracteres y no nulo.
PRIMARY KEY (id): indica que la columna id es la clave primaria de la tabla.

Nota: Es importante mencionar que almacenar contraseñas en texto plano es inseguro, por lo que se recomienda encriptarlas
utilizando una función de hashing como bcrypt o SHA256 antes de almacenarlas en la base de datos.

*/

/*****************************************************************************************************************************************************************************/
/*****************************************************************************************************************************************************************************/
/*****************************************************************************************************************************************************************************/

-- Creación de la tabla TESTS
CREATE TABLE tests (
  id INT NOT NULL AUTO_INCREMENT,
  id_materia INT NOT NULL,
  nombre_test VARCHAR(50) NOT NULL,
  descripcion VARCHAR(250) NOT NULL,
  numero_visitas INT UNSIGNED NOT NULL DEFAULT 0,
  id_usuario_creador INT NOT NULL,
  fecha_creacion DATETIME DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (id),
  FOREIGN KEY (id_materia) REFERENCES materias(id),
  FOREIGN KEY (id_usuario_creador) REFERENCES usuarios(id),
  CONSTRAINT nombre_test_unico UNIQUE (id_materia, nombre_test)
);

/*

id: es el identificador autoincremental de la tabla y su clave primaria.
id_materia: es la clave foránea que referencia el identificador de la tabla materias.
nombre_test: es el nombre del test, una cadena de texto con un máximo de 50 caracteres y no nulo.
descripcion: es una descripción del test, una cadena de texto con un máximo de 250 caracteres y no nulo.
numero_visitas: es un campo numérico entero positivo que representa el número de visitas del test y se inicializa con un valor predeterminado de cero.
id_usuario_creador: es la clave foránea que referencia el identificador de la tabla USUARIOS.
PRIMARY KEY (id): indica que la columna id es la clave primaria de la tabla.
FOREIGN KEY (id_materia) REFERENCES materias(id): indica que la columna id_materia es una clave foránea que referencia la columna id de la tabla materias.
FOREIGN KEY (id_usuario_creador) REFERENCES USUARIOS(id): indica que la columna id_usuario_creador es una clave foránea que referencia la columna id de la tabla USUARIOS.
CONSTRAINT nombre_test_unico UNIQUE (nombre_test): crea una restricción sobre el campo nombre_test e id_materia. Esto significa que cada combinación de valores en estas dos
columnas debe ser única en la tabla. Por lo tanto, no se permitirán nombres de tests duplicados dentro de la misma materia.

*/

-- Índice para acelerar las búsquedas cuando haya muchos registros en la tabla TESTS
CREATE UNIQUE INDEX i_tests ON tests (id_materia, nombre_test);

/*

Este comando crea un índice llamado "I_TESTS" en la tabla "TESTS" que incluye los campos "id_materia" y "nombre_test". La cláusula UNIQUE asegura que cada combinación de
valores para estas columnas en la tabla sea única.

Si se intenta insertar un registro con una combinación de "id_materia" y "nombre_test" que ya existe en la tabla, la operación fallará con un error de clave duplicada.

Es una forma de garantizar que los valores en una o más columnas sean únicos en una tabla, lo que puede mejorar la integridad de los datos y el rendimiento de las consultas.
Sin embargo, es importante tener en cuenta que crear índices únicos puede tener un impacto negativo en el rendimiento de las operaciones de inserción y actualización de la tabla,
ya que la base de datos debe verificar si cada nueva fila cumple con la restricción de unicidad.

*/

/*****************************************************************************************************************************************************************************/
/*****************************************************************************************************************************************************************************/
/*****************************************************************************************************************************************************************************/

-- Creación de la tabla PREGUNTAS
CREATE TABLE preguntas (
  id INT NOT NULL AUTO_INCREMENT,
  id_test INT NOT NULL,
  tipo_pregunta INT NOT NULL,
  nombre_pregunta VARCHAR(300) NOT NULL,
  datos_pregunta JSON  NOT NULL,
  retroalimentacion VARCHAR(600),
  PRIMARY KEY (id),
  FOREIGN KEY (id_test) REFERENCES tests(id)
);

/*

id: es el identificador autoincremental de la tabla.
id_test: es la clave foránea de la tabla TESTS.
tipo_pregunta: es el tipo de pregunta, de tipo numérico y no nulo.
nombre_pregunta: es el nombre de la pregunta, una cadena de texto con un máximo de 50 caracteres y no nulo.
datos_pregunta: son los datos de la pregunta, de tipo JSON.
PRIMARY KEY (id): indica que la columna id es la clave primaria de la tabla.
FOREIGN KEY (id_test) REFERENCES TESTS(id): indica que la columna id_test es una clave foránea que referencia la columna id de la tabla TESTS.

*/

-- Índice para acelerar las búsquedas cuando haya muchos registros en la tabla PREGUNTAS (tipos de preguntas por test)
CREATE INDEX i_preguntas ON preguntas (id_test, tipo_pregunta);

/*

Esta sentencia crea un índice llamado "I_PREGUNTAS" en la tabla "PREGUNTAS", con el campo "id_test" y "tipo_pregunta" como claves del índice. El índice se utilizará para
acelerar las búsquedas y consultas que involucren el campo "id_test" y "tipo_pregunta" en la tabla "PREGUNTAS". 

*/

/*****************************************************************************************************************************************************************************/
/*****************************************************************************************************************************************************************************/
/*****************************************************************************************************************************************************************************/

-- Creación de la tabla INTENTOS_TEST
CREATE TABLE intentos_tests (
  id INT NOT NULL AUTO_INCREMENT,
  id_test INT NOT NULL,
  id_usuario INT NOT NULL,
  intento DECIMAL NOT NULL,
  fecha_realizacion DATE DEFAULT CURRENT_DATE(),
  dificultad INT NOT NULL,
  modalidad INT NOT NULL,
  tiempo_inicio TIME,
  tiempo_fin TIME,
  PRIMARY KEY (id),
  FOREIGN KEY (id_test) REFERENCES tests(id),
  FOREIGN KEY (id_usuario) REFERENCES usuarios(id)
);

/*

En esta definición de tabla se están utilizando dos claves foráneas, una para la tabla TESTS y otra para la tabla USUARIOS. También se están definiendo los campos nota por
defecto NULL y fecha_realizacion con el momento de la inserción del registro.

Además, se están estableciendo las claves foráneas utilizando las sentencias FOREIGN KEY y REFERENCES, lo que permite relacionar los registros de la tabla INTENTOS_TESTS con los
de las tablas TESTS y USUARIOS a través de sus campos id_test e id_usuario, respectivamente. De esta forma, se pueden garantizar las integridades referencial y de datos en
la base de datos.

fecha_realizacion: se define como un DATE y se establece un valor por defecto utilizando la función CURRENT_DATE().

dificultad y modalidad serán de tipo INT y obligatorios para cada test. AUTO_INCREMENT

También se ve reflejado el momento en el que el usuario comienza el test y lo termina en tiempo_inicio y tiempo_fin respectivamente.

intento: indica en nº de intento para un test en concreto del usuario. Se calculará al insertar un registro a partir del usuario, de la pregunta y el test al que pertenece con
el siguiente triger.

*/

CREATE UNIQUE INDEX i_tests_usuario ON intentos_tests (id_test, id_usuario);

/*

Esta sentencia crea un índice llamado "I_TESTS_USUARIO" en la tabla "INTENTOS_TESTS", con el campo "id_test" y "id_usuario" como claves del índice.
El índice se utilizará para acelerar las búsquedas y consultas que involucren el campo "id_test" y "id_usuario" en la tabla "INTENTOS_TESTS". 

*/

CREATE UNIQUE INDEX i_tests_intento_usuario ON intentos_tests (id_test, id_usuario, intento);

/*

Esta sentencia crea un índice llamado "I_TESTS_INTENTO_USUARIO" en la tabla "INTENTOS_TESTS", con el campo "id_test", "id_usuario" y "intento" como claves del índice.
El índice se utilizará para acelerar las búsquedas y consultas que involucren el campo "id_test", "id_usuario" y "intento" en la tabla "INTENTOS_TESTS". 

*/

DELIMITER //

CREATE TRIGGER tr_incrementar_intentos
BEFORE INSERT ON intentos_tests
FOR EACH ROW
BEGIN
    DECLARE ultimo_intento INT;
    
    -- Obtiene el último intento para el mismo test y usuario
    SELECT MAX(intento) INTO ultimo_intento
    FROM intentos_tests
    WHERE id_test = NEW.id_test AND id_usuario = NEW.id_usuario;
    
    -- Incrementar el intento en 1
    SET NEW.intento = COALESCE(ultimo_intento, 0) + 1;
END//

DELIMITER ;

/*

Este trigger se ejecutará antes de cada inserción en la tabla intentos_tests. Obtendrá el último valor de intento para el mismo id_test y id_usuario,
 y luego incrementará el valor en 1 para el nuevo registro que se está insertando.

*/

/*****************************************************************************************************************************************************************************/
/*****************************************************************************************************************************************************************************/
/*****************************************************************************************************************************************************************************/

/*

Select para saber los trigers que tiene la base de datos y comprobar que se ha creado correctamente

SELECT TRIGGER_NAME, EVENT_OBJECT_TABLE, ACTION_TIMING, EVENT_MANIPULATION
FROM INFORMATION_SCHEMA.TRIGGERS
WHERE TRIGGER_SCHEMA = 'brainboost';
*/

/*****************************************************************************************************************************************************************************/
/*****************************************************************************************************************************************************************************/
/*****************************************************************************************************************************************************************************/

-- Creación de la tabla INTENTOS_PREGUNTAS
CREATE TABLE intentos_preguntas (
  id INT NOT NULL AUTO_INCREMENT,
  id_intento_test INT NOT NULL,
  id_pregunta INT NOT NULL,
  nota_pregunta DECIMAL(5,2) DEFAULT NULL,
  respuestas JSON NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (id_pregunta) REFERENCES preguntas(id),
  FOREIGN KEY (id_intento_test) REFERENCES intentos_tests(id)
);

/*

En esta definición de tabla se están utilizando dos claves foráneas, una para la tabla PREGUNTAS y otra para la tabla INTENTOS_TESTS. También se están definiendo los campos nota y fecha_realizacion con un valor por defecto NULL.

Además, se están estableciendo las claves foráneas utilizando las sentencias FOREIGN KEY y REFERENCES, lo que permite relacionar los registros de la tabla INTENTOS_USUARIOS con los de las tablas PREGUNTAS y USUARIOS a través de sus campos id_pregunta e id_usuario, respectivamente. De esta forma, se pueden garantizar las integridades referencial y de datos en la base de datos.

fecha_realizacion: se define como un DATE y se establece un valor por defecto utilizando la función CURRENT_DATE().

intento: indica en nº de intento para un test en concreto del usuario. Se calculará al insertar un registro a partir del usuario, de la pregunta y el test al que pertenece con el siguiente triger.

*/

CREATE UNIQUE INDEX i_intento_pregunta ON intentos_preguntas (id_intento_test, id_pregunta);

/*

Esta sentencia crea un índice llamado "I_INTENTO_PREGUNTA" en la tabla "INTENTOS_PREGUNTAS", con el campo "id_intento_test" y "id_pregunta" como claves del índice. El índice se utilizará para acelerar las búsquedas
y consultas que involucren el campo "id_intento_test" y "id_pregunta" en la tabla "INTENTOS_TESTS". 

*/

/*****************************************************************************************************************************************************************************/
/*****************************************************************************************************************************************************************************/
/*****************************************************************************************************************************************************************************/

CREATE OR REPLACE VIEW v_intentos_tests
AS SELECT intentos_tests.*, SUM(intentos_preguntas.nota_pregunta) nota_test
FROM intentos_tests
JOIN intentos_preguntas ON intentos_tests.id = intentos_preguntas.id_intento_test
GROUP BY intentos_tests.id;

/*

Vista con los datos de la tabla INTENTOS_TESTS con un campo nota_test con la nota total del intento del usuario.

*/

/*****************************************************************************************************************************************************************************/
/*****************************************************************************************************************************************************************************/
/*****************************************************************************************************************************************************************************/

-- Inserción de las categorias que agruparán las diferentes materias
INSERT INTO categorias (nombre) VALUES
('Artes'),
('Naturales'),
('Humanidades'),
('Idiomas'),
('Matemáticas'),
('Tecnología');

-- Inserción de las distintas materias que tendrá nuestra app
INSERT INTO materias (id_categoria, nombre_materia, descripcion) VALUES
  ('1', 'Artes', 'Las Artes es una materia apasionante que permite a los estudiantes explorar y expresar su creatividad a través de diversas formas artísticas como la pintura, la música, el teatro y la danza. Mediante la combinación de habilidades técnicas y conceptuales, los estudiantes desarrollan su sensibilidad estética y adquieren una comprensión más profunda de la cultura y la historia. Esta materia fomenta la imaginación, la comunicación y el pensamiento crítico, brindando a los estudiantes una experiencia enriquecedora y transformadora.'),
  ('1', 'Música', 'La Música es una materia fascinante que permite a los estudiantes explorar y experimentar con el poder del sonido y la melodía. A través del estudio de teoría musical, interpretación instrumental y vocal, así como composición, los estudiantes desarrollan habilidades técnicas y expresivas, y descubren nuevas formas de comunicación emocional. La música estimula la creatividad, fomenta la colaboración y promueve el desarrollo personal, ofreciendo a los estudiantes una experiencia enriquecedora y trascendental.'),
  ('1', 'Artes Visuales', 'Las Artes Visuales es una materia que busca explorar y comprender la expresión artística a través de medios visuales. Se enfoca en el estudio y la creación de obras de arte que se basan principalmente en elementos visuales como el color, la forma, la línea, la textura y el espacio. Durante el desarrollo de esta materia, los estudiantes tienen la oportunidad de experimentar con una amplia gama de técnicas y materiales artísticos, como pintura, dibujo, escultura, grabado, fotografía y medios digitales. A través de la práctica y la experimentación, los alumnos pueden desarrollar su creatividad, su capacidad de observación y su habilidad para comunicar ideas y emociones a través del arte visual. Además, la materia de Artes Visuales también abarca el estudio de la historia del arte, permitiendo a los estudiantes explorar diferentes movimientos artísticos, estilos y artistas destacados. Esto les proporciona una base sólida para comprender el contexto cultural, social y histórico en el que se han desarrollado las diversas formas de expresión visual. En resumen, la materia de Artes Visuales es un espacio de exploración y expresión artística que fomenta el desarrollo de la creatividad, la sensibilidad estética y la capacidad de comunicación a través de medios visuales. Proporciona a los estudiantes las herramientas y los conocimientos necesarios para apreciar, crear y reflexionar sobre el arte visual en sus diversas formas.'),
  ('1', 'Teatro', 'La materia de Teatro es un fascinante viaje que sumerge a los estudiantes en el maravilloso mundo de la representación escénica. A lo largo de este curso, se exploran diversas técnicas de actuación, expresión corporal y vocalización, permitiendo a los alumnos desarrollar su capacidad de transmitir emociones, crear personajes y contar historias de manera auténtica y cautivadora. Además, la materia de Teatro ofrece un profundo estudio de la historia y evolución del teatro, desde sus raíces clásicas hasta las formas contemporáneas. Los estudiantes se sumergen en la riqueza de los diferentes géneros teatrales, analizando obras icónicas y descubriendo las diversas corrientes artísticas que han marcado la escena a lo largo del tiempo. A través de la práctica teatral, los estudiantes también desarrollan habilidades fundamentales como la comunicación efectiva, el trabajo en equipo y la capacidad de pensar en el momento. La improvisación y la colaboración creativa fomentan la confianza en sí mismos y en sus compañeros, fortaleciendo la empatía y la conexión interpersonal. La materia de Teatro no solo se centra en la actuación, sino también en los aspectos técnicos y de producción. Los estudiantes aprenden sobre la creación de escenografías, la utilización de luces y sonidos, y el diseño de vestuario, entendiendo cómo estos elementos contribuyen a la atmósfera y la estética de una obra teatral.'),
  ('1', 'Ciencias Naturales', 'Las Ciencias Naturales es una materia fascinante que nos permite explorar y comprender los fenómenos y procesos que ocurren en la naturaleza. A través del estudio de disciplinas como la biología, la química y la física, los estudiantes adquieren conocimientos sobre la estructura y funcionamiento de los seres vivos, las propiedades de la materia y las leyes que rigen el universo. Las Ciencias Naturales fomentan el pensamiento científico, la observación, la experimentación y el análisis crítico, brindando a los estudiantes las herramientas necesarias para comprender y preservar nuestro entorno natural, así como contribuir al avance de la sociedad en diversos campos científicos.'),
  ('2', 'Biología', 'La Biología es un fascinante estudio de la vida en todas sus formas y manifestaciones. En este curso, los estudiantes exploran los diversos aspectos de los seres vivos, desde su estructura celular hasta su interacción con el entorno y su evolución a lo largo del tiempo. A través de la biología, se analizan los procesos fundamentales de la vida, como la reproducción, el crecimiento, la metabolización y la adaptación, mientras se investiga la diversidad biológica y los mecanismos evolutivos que dan lugar a la aparición de nuevas especies. Además, se aborda la relación entre los seres vivos y su entorno, examinando los conceptos de ecología, conservación y sostenibilidad. En resumen, la materia de Biología es un viaje fascinante que nos sumerge en la comprensión de la vida y su diversidad, desde las interacciones celulares hasta los ecosistemas globales, permitiendo a los estudiantes adquirir una visión profunda de la importancia y la maravilla de la vida en todas sus formas.'),
  ('2', 'Química', 'La materia de Química es un apasionante estudio de la materia y sus transformaciones. En este curso, los estudiantes exploran la estructura de los átomos, los enlaces químicos y las reacciones que ocurren entre diferentes sustancias. A través de la química, se comprenden los principios fundamentales que rigen la composición y el comportamiento de la materia en todas sus formas, desde los elementos individuales hasta las moléculas complejas. Se investigan conceptos como la estequiometría, la termodinámica, la cinética y la equilibrio químico, lo que permite comprender los procesos químicos que tienen lugar en el mundo natural y en aplicaciones tecnológicas. Además, la química se extiende al estudio de los diferentes grupos de compuestos, como los hidrocarburos, los alcoholes, los ácidos y las bases, proporcionando una comprensión profunda de su estructura, propiedades y reactividad. En resumen, la materia de Química es un fascinante viaje al mundo microscópico de la materia, donde los estudiantes descubren los mecanismos y las leyes que gobiernan la transformación de sustancias, adquiriendo una base sólida para comprender el mundo que nos rodea y contribuir al avance científico y tecnológico.'),
  ('2', 'Física', 'La materia de Física es un emocionante estudio de las leyes fundamentales que gobiernan el universo. En este curso, los estudiantes exploran las diversas ramas de la física, desde la mecánica clásica hasta la física cuántica y la relatividad. A través de la física, se investigan conceptos como el movimiento, la energía, la fuerza y las interacciones entre partículas. Se analizan fenómenos naturales como la caída de los objetos, el movimiento de los planetas, la propagación de la luz y el comportamiento de las partículas subatómicas. Los estudiantes también se sumergen en la comprensión de las leyes fundamentales de la termodinámica, la electricidad y el magnetismo, y la óptica. La física no solo se enfoca en la teoría, sino también en la experimentación y el uso de herramientas matemáticas para resolver problemas y predecir el comportamiento de los sistemas físicos. Además, la física tiene una amplia gama de aplicaciones prácticas en diversas áreas, desde la ingeniería y la medicina hasta la tecnología y la astronomía. En resumen, la materia de Física nos brinda una perspectiva profunda del funcionamiento del universo, proporcionando un marco conceptual y matemático para comprender y describir los fenómenos naturales, y ofreciendo la base para el desarrollo de tecnologías innovadoras y el avance científico en todas las áreas del conocimiento.'),
  ('2', 'Educación Física', 'La materia de Educación Física es una disciplina integral que promueve el desarrollo físico, mental y social de los estudiantes a través de la participación en actividades físicas y deportivas. En este curso, se fomenta la adquisición de habilidades motrices, la mejora de la condición física y la comprensión de los principios de la actividad física saludable. Los estudiantes participan en una amplia variedad de actividades, como juegos, deportes, danza y ejercicios aeróbicos, que les permiten explorar y experimentar diferentes formas de movimiento y expresión corporal. Además, la educación física inculca valores como el trabajo en equipo, el respeto, la tolerancia y la superación personal, mientras se fomenta la inclusión y el disfrute del movimiento. Los estudiantes también adquieren conocimientos sobre anatomía, fisiología y prevención de lesiones, lo que les brinda una comprensión más profunda de cómo el cuerpo humano funciona y se adapta al ejercicio. En resumen, la materia de Educación Física es fundamental para promover un estilo de vida activo y saludable, desarrollar habilidades motoras, fomentar valores positivos y proporcionar conocimientos esenciales sobre el cuerpo humano, contribuyendo así al bienestar integral de los estudiantes.'),
  ('3', 'Filosofía', 'La materia de Filosofía es un apasionante estudio que invita a los estudiantes a explorar las grandes interrogantes de la existencia humana y a reflexionar sobre el mundo que nos rodea. En este curso, se indaga en las diferentes corrientes filosóficas a lo largo de la historia, desde los antiguos pensadores griegos hasta los filósofos contemporáneos. Se examinan temas como la naturaleza del conocimiento, la realidad, la moral, la ética, la política y la estética, buscando comprender la naturaleza de la verdad, la justicia, el bien y el mal, y el significado de la vida misma. Los estudiantes desarrollan habilidades críticas de pensamiento, aprendiendo a analizar argumentos, cuestionar supuestos y formular juicios fundamentados. Además, la filosofía fomenta el pensamiento creativo y la capacidad de plantear preguntas profundas sobre la condición humana y el propósito de nuestra existencia. Al explorar las diferentes perspectivas filosóficas, los estudiantes también desarrollan una mayor conciencia de las diversas culturas, valores y creencias que conforman la humanidad, fomentando el respeto y la tolerancia. En resumen, la materia de Filosofía es un viaje intelectual que invita a los estudiantes a reflexionar sobre las cuestiones fundamentales de la vida, desarrollar habilidades críticas y éticas, y adquirir una comprensión más profunda de sí mismos y del mundo que los rodea.'),
  ('3', 'Geografía', 'La materia de Geografía es un fascinante estudio de la Tierra y su diversidad. En este curso, los estudiantes exploran la interrelación entre el medio ambiente, las sociedades humanas y los fenómenos naturales. Se analizan los diferentes elementos que conforman la superficie terrestre, como los continentes, los océanos, las montañas, los ríos y los climas, comprendiendo cómo estos elementos influyen en la distribución de la vida y las actividades humanas. Además, se examinan los patrones de población, las migraciones, los sistemas económicos y las interacciones culturales en diferentes regiones del mundo, proporcionando una comprensión más amplia de la diversidad cultural y la interconexión global. La geografía también estudia los problemas ambientales y los desafíos de la sostenibilidad, explorando formas de gestionar los recursos naturales, proteger los ecosistemas y enfrentar los impactos del cambio climático. A través del uso de herramientas tecnológicas como los sistemas de información geográfica, los estudiantes adquieren habilidades para analizar datos espaciales y comprender la dinámica de los paisajes. En resumen, la materia de Geografía es un viaje que nos permite comprender mejor el mundo en el que vivimos, sus complejidades físicas y humanas, y los desafíos y oportunidades que enfrentamos como sociedad global.'),
  ('3', 'Historia', 'La materia de Historia es un apasionante estudio que nos sumerge en el pasado para comprender el presente y proyectarnos hacia el futuro. En este curso, los estudiantes exploran las diversas civilizaciones, eventos y procesos que han dado forma a la humanidad a lo largo del tiempo. Se examinan las sociedades antiguas, las culturas medievales, las revoluciones, las guerras y los movimientos sociales que han dejado una huella en nuestra historia colectiva. A través del análisis de fuentes primarias y secundarias, los estudiantes desarrollan habilidades críticas de investigación y evaluación de la información histórica. Además, la historia nos permite comprender las causas y consecuencias de los acontecimientos pasados, así como las continuidades y cambios en las estructuras políticas, sociales, económicas y culturales. Al estudiar la historia, los estudiantes también desarrollan una mayor conciencia de la diversidad cultural y la interconexión global, valorando la importancia del diálogo intercultural y el respeto por las diferencias. En resumen, la materia de Historia nos invita a reflexionar sobre nuestra identidad y a comprender cómo el pasado influye en nuestro presente, ofreciendo una perspectiva crítica y una base sólida para tomar decisiones informadas y contribuir a la construcción de un futuro mejor.'),
  ('4', 'Italiano', 'La materia de Italiano es un fascinante estudio que nos sumerge en la belleza y riqueza de la lengua italiana. En este curso, los estudiantes exploran la gramática, el vocabulario y la pronunciación del italiano, desarrollando habilidades tanto en la comprensión como en la expresión oral y escrita. Se estudian textos literarios, culturales y comunicativos, que nos permiten sumergirnos en la rica historia y la vibrante cultura italiana. A través del italiano, los estudiantes también exploran las tradiciones, la música, el cine y el arte italianos, lo que les brinda una comprensión más profunda de la identidad y la diversidad cultural del país. Además, el estudio del italiano fomenta el pensamiento crítico y la apreciación de la comunicación intercultural, alentando a los estudiantes a desarrollar habilidades de comunicación efectivas y a conectarse con personas de diferentes culturas y orígenes. En resumen, la materia de Italiano nos ofrece una ventana hacia la riqueza lingüística y cultural de Italia, nos permite desarrollar habilidades de comunicación y nos invita a explorar y apreciar una de las lenguas más hermosas y expresivas del mundo.'),
  ('4', 'Inglés', 'La materia de Inglés es un emocionante estudio que nos introduce en el mundo del idioma inglés, ampliamente utilizado a nivel global. En este curso, los estudiantes desarrollan habilidades en la comprensión oral, la expresión oral, la lectura y la escritura en inglés. Se exploran aspectos gramaticales, vocabulario y pronunciación, permitiendo a los estudiantes comunicarse de manera efectiva en diversos contextos. A través del inglés, los estudiantes también se sumergen en la cultura angloparlante, explorando la literatura, el cine, la música y las tradiciones de países de habla inglesa. Además, el estudio del inglés fomenta habilidades de comunicación intercultural y brinda oportunidades para conectarse con personas de diferentes culturas y perspectivas. En resumen, la materia de Inglés nos abre las puertas a la comunicación global, nos permite desarrollar habilidades lingüísticas esenciales y nos conecta con una amplia variedad de culturas y conocimientos.'),
  ('4', 'Francés', 'La materia de Francés es un apasionante estudio que nos sumerge en la lengua y la cultura francesa. En este curso, los estudiantes exploran la gramática, el vocabulario y la pronunciación del francés, desarrollando habilidades tanto en la comprensión como en la expresión oral y escrita. Se estudian textos literarios, históricos y culturales en francés, permitiéndonos adentrarnos en la rica tradición artística, filosófica y literaria de Francia y otras regiones francófonas. A través del francés, los estudiantes también adquieren una comprensión más profunda de la cultura, la historia y la sociedad de los países francófonos, y pueden apreciar la diversidad lingüística y cultural en el mundo francófono. Además, el estudio del francés fomenta habilidades de comunicación intercultural, brindando oportunidades para conectarse con personas de diferentes culturas y establecer relaciones en un contexto global. En resumen, la materia de Francés nos abre las puertas a una de las lenguas más habladas en el mundo, nos permite sumergirnos en una cultura rica y nos brinda la oportunidad de expandir nuestros horizontes y establecer conexiones significativas en un mundo cada vez más interconectado.'),
  ('4', 'Alemán', 'La materia de Alemán es un apasionante estudio que nos sumerge en la lengua y la cultura alemana. En este curso, los estudiantes exploran la gramática, el vocabulario y la pronunciación del alemán, desarrollando habilidades tanto en la comprensión como en la expresión oral y escrita. Se estudian textos literarios, históricos y culturales en alemán, permitiéndonos comprender la rica tradición cultural y artística de los países de habla alemana. A través del alemán, los estudiantes también adquieren una comprensión más profunda de la historia, la filosofía y la música de Alemania, Austria y Suiza. Además, el estudio del alemán fomenta el pensamiento crítico y la apreciación de la comunicación intercultural, alentando a los estudiantes a desarrollar habilidades de comunicación efectivas y a conectarse con personas de diferentes culturas y orígenes. En resumen, la materia de Alemán nos abre las puertas a una de las lenguas más habladas en Europa, nos permite explorar una cultura fascinante y nos brinda la oportunidad de establecer conexiones y relaciones en un mundo cada vez más globalizado.'),
  ('3', 'Literatura', 'La materia de Literatura es un enriquecedor estudio que nos sumerge en el mundo de las palabras, la creatividad y la expresión artística. En este curso, los estudiantes exploran una amplia variedad de obras literarias, desde la poesía y el teatro hasta la novela y el ensayo. Se analizan los estilos literarios, las técnicas narrativas, la construcción de personajes y la evolución de los géneros a lo largo del tiempo. A través de la literatura, se descubren diferentes perspectivas y realidades, ampliando nuestra comprensión de la condición humana y sus complejidades. Los estudiantes desarrollan habilidades críticas de interpretación y análisis, aprendiendo a apreciar el lenguaje literario, las metáforas y los símbolos que enriquecen las obras. Además, la literatura nos brinda la oportunidad de explorar temas universales como el amor, la justicia, la identidad y la búsqueda de sentido, estimulando la reflexión y el diálogo sobre cuestiones fundamentales de la existencia. A través de la lectura y el estudio de la literatura, los estudiantes también mejoran sus habilidades de comunicación y escritura, al tiempo que se sumergen en el placer estético y la imaginación desbordante de las obras literarias. En resumen, la materia de Literatura nos transporta a mundos imaginarios y reales, nos desafía a reflexionar sobre la condición humana y nos permite disfrutar y comprender la belleza de las palabras y las historias que nos conectan como seres humanos.'),
  ('6', 'Matemáticas', 'Las Matemáticas es una materia fundamental que se basa en la lógica y el razonamiento para resolver problemas y comprender el mundo que nos rodea. A través del estudio de conceptos como el álgebra, la geometría y el cálculo, los estudiantes desarrollan habilidades analíticas y de pensamiento crítico. Las Matemáticas fomentan el pensamiento abstracto, la resolución de problemas y la toma de decisiones informadas, proporcionando a los estudiantes una base sólida para el desarrollo académico y profesional en diversas áreas.'),
  ('6', 'Tecnología', 'La materia de Tecnología es un emocionante estudio que nos sumerge en el mundo de la innovación, la creatividad y la aplicación práctica del conocimiento científico. En este curso, los estudiantes exploran los avances tecnológicos, desde las herramientas simples hasta los sistemas complejos, que han transformado nuestra sociedad. Se examinan los principios de diseño, la ingeniería, la programación y la electrónica, para comprender cómo se crean y se utilizan las tecnologías en diferentes campos. A través de la tecnología, los estudiantes adquieren habilidades prácticas, resolución de problemas y pensamiento crítico, mientras se familiarizan con herramientas y software utilizados en áreas como la robótica, la inteligencia artificial, el desarrollo de aplicaciones y la fabricación digital. Además, la tecnología también plantea cuestiones éticas y sociales, ya que se exploran temas como la privacidad, la seguridad cibernética y el impacto de la tecnología en la vida cotidiana. La materia de Tecnología fomenta la creatividad y el espíritu emprendedor, invitando a los estudiantes a desarrollar soluciones innovadoras para problemas del mundo real y a comprender cómo la tecnología puede mejorar la calidad de vida y abordar desafíos globales. En resumen, la materia de Tecnología es un viaje emocionante que nos sumerge en la era digital, nos capacita con habilidades esenciales y nos invita a imaginar y crear un futuro impulsado por la innovación y la tecnología.'),
  ('6', 'Informática', 'La materia de Informática es un apasionante estudio que nos introduce en el mundo de la computación, el manejo de datos y el desarrollo de software. En este curso, los estudiantes exploran los fundamentos teóricos y prácticos de la informática, desde los conceptos básicos de programación hasta la gestión de redes y bases de datos. Se estudian lenguajes de programación, algoritmos, estructuras de datos y principios de diseño de software, adquiriendo habilidades para resolver problemas y desarrollar aplicaciones prácticas. A través de la informática, se comprenden los diferentes aspectos de la tecnología de la información, incluyendo el manejo eficiente de datos, la seguridad informática y la ciberseguridad. Los estudiantes también aprenden a trabajar con sistemas operativos, aplicaciones de productividad y herramientas de desarrollo, adquiriendo una comprensión más profunda de cómo funcionan los sistemas informáticos y cómo optimizar su rendimiento. Además, la informática fomenta el pensamiento lógico, el razonamiento abstracto y la creatividad, alentando a los estudiantes a encontrar soluciones innovadoras y eficientes a los desafíos informáticos. En resumen, la materia de Informática nos equipa con habilidades clave en la era digital, nos prepara para un mundo cada vez más conectado y nos brinda las herramientas necesarias para desarrollar soluciones tecnológicas y afrontar los desafíos del siglo XXI.'),
  ('4', 'Idiomas', 'La materia de Idiomas abarca diversas áreas relacionadas con el aprendizaje y uso de una lengua extranjera. Esto incluye el estudio de la gramática, vocabulario y el desarrollo de habilidades de comprensión auditiva y de lectura. También se enfoca en la expresión oral y escrita, la cultura y civilización del país, la pronunciación, habilidades de conversación y la práctica de situaciones comunicativas reales. Estas áreas de estudio permiten a los estudiantes adquirir un conocimiento integral del idioma y desarrollar las habilidades necesarias para comunicarse efectivamente en un entorno culturalmente diverso.');

/*****************************************************************************************************************************************************************************/
/*****************************************************************************************************************************************************************************/
/*****************************************************************************************************************************************************************************/

-- Inserción de nuestros 3 usuarios
INSERT INTO usuarios (nombre_usuario, password, email) VALUES
  ('Juan Carlos','alumno','3480348@alu.murciaeduca.es'),
  ('Santiago','alumno','5634224@alu.murciaeduca.es'),
  ('Eugenio','alumno','3983508@alu.murciaeduca.es');

/*****************************************************************************************************************************************************************************/
/*****************************************************************************************************************************************************************************/
/*****************************************************************************************************************************************************************************/