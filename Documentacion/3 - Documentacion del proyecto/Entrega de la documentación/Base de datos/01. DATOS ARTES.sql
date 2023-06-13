-- Datos para la tabla TESTS para los test de Artes del tipo tipo 1 de pregunta con respuesta unica
INSERT INTO tests (id_materia, nombre_test, descripcion, id_usuario_creador) VALUES
(1, 'Artes 01', 'Test 01 sobre la materia de Artes con respuesta única.', 1),
(1, 'Artes 02', 'Test 02 sobre la materia de Artes con respuesta única.', 1),
(1, 'Artes 03', 'Test 03 sobre la materia de Artes con respuesta única.', 1),
(1, 'Artes 04', 'Test 04 sobre la materia de Artes con respuesta única.', 1),
(1, 'Artes 05', 'Test 05 sobre la materia de Artes con respuesta única.', 1),
(1, 'Artes 06', 'Test 06 sobre la materia de Artes con respuesta única.', 1),
(1, 'Artes 07', 'Test 07 sobre la materia de Artes con respuesta única.', 1),
(1, 'Artes 08', 'Test 08 sobre la materia de Artes con respuesta única.', 1),
(1, 'Artes 09', 'Test 09 sobre la materia de Artes con respuesta única.', 1),
(1, 'Artes 10', 'Test 10 sobre la materia de Artes con respuesta única.', 1);

SET foreign_key_checks = 0;

SET @newid := 0;
UPDATE tests SET id = (@newid := @newid + 1) ORDER BY id;

SET foreign_key_checks = 1;

-- Datos para la tabla PREGUNTAS de la MATERIA "Artes" para el tipo 1 de pregunta con respuesta unica

-- Preguntas para el test 1 de ARTES
INSERT INTO preguntas (id_test, tipo_pregunta, nombre_pregunta, datos_pregunta, retroalimentacion) VALUES
(1, 1, "¿Quién es considerado el padre del impresionismo musical?",
 '{"respuestas": ["Claude Debussy", "Johann Sebastian Bach", "Wolfgang Amadeus Mozart", "Ludwig van Beethoven"], "respuestas_correctas": "Claude Debussy"}',
 "Debussy es considerado el padre del impresionismo musical, un movimiento que se caracteriza por su uso de armonías y ritmos sugerentes para evocar imágenes y estados de ánimo."),
(1, 1, "¿Qué artista es conocido por su técnica de drip painting?",
 '{"respuestas": ["Jackson Pollock", "Pablo Picasso", "Vincent van Gogh", "Salvador Dalí"], "respuestas_correctas": "Jackson Pollock"}',
 "Pollock es conocido por su técnica de drip painting, que consiste en salpicar pintura sobre el lienzo para crear una obra abstracta."),
(1, 1, "¿Qué movimiento artístico se caracteriza por el uso de líneas curvas y formas orgánicas?",
 '{"respuestas": ["Art Nouveau", "Cubismo", "Expresionismo", "Surrealismo"], "respuestas_correctas": "Art Nouveau"}',
 "El Art Nouveau se caracteriza por el uso de líneas curvas y formas orgánicas inspiradas en la naturaleza."),
(1, 1, "¿Quién es el autor de la obra teatral Hamlet?",
 '{"respuestas": ["William Shakespeare", "Arthur Miller", "Tennessee Williams", "Samuel Beckett"], "respuestas_correctas": "William Shakespeare"}',
 "Shakespeare es el autor de la obra teatral Hamlet, una de las más famosas e influyentes de la literatura universal."),
(1, 1, "¿Qué técnica se utiliza para crear imágenes en relieve?",
 '{"respuestas": ["Escultura", "Pintura", "Grabado", "Dibujo"], "respuestas_correctas": "Escultura"}',
 "La técnica utilizada para crear imágenes en relieve se llama escultura."),
(1, 1, "¿Quién es el autor de la escultura David?",
 '{"respuestas": ["Miguel Ángel", "Donatello", "Leonardo da Vinci", "Rafael Sanzio"], "respuestas_correctas": "Miguel Ángel"}',
 "La escultura de David fue creada por el artista italiano Miguel Ángel."),
(1, 1, "¿Cuál es el nombre del estilo artístico que se desarrolló en la década de 1960 en los Estados Unidos?",
 '{"respuestas": ["Pop Art", "Arte abstracto", "Fauvismo", "Impresionismo"], "respuestas_correctas": "Pop Art"}',
 "El Pop Art es el nombre del estilo artístico que se desarrolló en los Estados Unidos en la década de 1960."),
(1, 1, "¿Qué artista es conocido por su obra escultórica El Pensador?",
 '{"respuestas": ["Auguste Rodin", "Pablo Picasso", "Salvador Dalí", "Vincent van Gogh"], "respuestas_correctas": "Auguste Rodin"}',
 "El Pensador es una obra escultórica creada por el artista francés Auguste Rodin."),
(1, 1, "¿Qué es un tríptico en el arte?",
 '{"respuestas": ["Una obra de arte compuesta por tres paneles", "Una técnica de pintura que utiliza tres colores", "Una escultura que representa tres figuras", "Una instalación de arte que se compone de tres partes"], "respuestas_correctas": "Una obra de arte compuesta por tres paneles"}',
 "Un tríptico en el arte es una obra compuesta por tres paneles que se pueden mostrar juntos o por separado."),
(1, 1, "¿Quién es el autor de la obra literaria Cien años de soledad?",
 '{"respuestas": ["Gabriel García Márquez", "Mario Vargas Llosa", "Jorge Luis Borges", "Pablo Neruda"], "respuestas_correctas": "Gabriel García Márquez"}',
 "Cien años de soledad es una obra literaria del escritor colombiano Gabriel García Márquez.");

-- Preguntas para el test 2 de ARTES
INSERT INTO preguntas (id_test, tipo_pregunta, nombre_pregunta, datos_pregunta, retroalimentacion) VALUES
(2, 1, "¿Quién pintó La Noche Estrellada?",
 '{"respuestas": ["Vincent van Gogh", "Leonardo da Vinci", "Pablo Picasso", "Salvador Dalí"], "respuestas_correctas": "Vincent van Gogh"}',
 "La Noche Estrellada es una famosa obra del pintor holandés Vincent van Gogh."),
(2, 1, "¿En qué País se encuentra la Ópera de Sídney?",
 '{"respuestas": ["Australia", "Francia", "Reino Unido", "Estados Unidos"], "respuestas_correctas": "Australia"}',
 "La Ópera de Sídney se encuentra en Sídney, Australia."),
(2, 1, "¿Cuál es el nombre del teatro griego más famoso del mundo?",
 '{"respuestas": ["Teatro de Dioniso", "Teatro Romano de Mérida", "Anfiteatro Flavio", "Teatro Antico di Taormina"], "respuestas_correctas": "Teatro de Dioniso"}',
 "El Teatro de Dioniso es el teatro griego más famoso del mundo."),
(2, 1, "¿Qué tipo de arte se caracteriza por el uso de palabras y letras como elemento principal?",
 '{"respuestas": ["Arte textual", "Arte conceptual", "Arte cinético", "Arte urbano"], "respuestas_correctas": "Arte textual"}',
 "El arte textual se caracteriza por el uso de palabras y letras como elemento principal."),
(2, 1, "¿Quién fue el director de la película 'Psicosis'?",
 '{"respuestas": ["Alfred Hitchcock", "Francis Ford Coppola", "Steven Spielberg", "Martin Scorsese"], "respuestas_correctas": "Alfred Hitchcock"}',
 "Alfred Hitchcock fue el director de la película 'Psicosis', considerada una de las obras maestras del cine de terror."),
(2, 1, "¿Cuál es la técnica artística que utiliza la luz como medio principal?",
 '{"respuestas": ["Escultura", "Pintura", "Fotografía", "Música"], "respuestas_correctas": "Fotografía"}',
 "La fotografía es una técnica artística que utiliza la luz como medio principal para capturar imágenes."),
(2, 1, "¿Quién fue el autor de la ópera 'Las bodas de Fígaro'?",
 '{"respuestas": ["Wolfgang Amadeus Mozart", "Giuseppe Verdi", "Georges Bizet", "Johann Strauss II"], "respuestas_correctas": "Wolfgang Amadeus Mozart"}',
 "Wolfgang Amadeus Mozart fue el autor de la ópera 'Las bodas de Fígaro', estrenada en 1786."),
(2, 1, "¿En qué año se estrenó la obra de teatro 'La casa de Bernarda Alba' de Federico García Lorca?",
 '{"respuestas": ["1928", "1936", "1945", "1953"], "respuestas_correctas": "1936"}',
 "La obra de teatro 'La casa de Bernarda Alba' de Federico García Lorca se estrenó en 1936."),
(2, 1, "¿Quién pintó La Noche Estrellada?",
 '{"respuestas": ["Pablo Picasso", "Claude Monet", "Vincent van Gogh", "Leonardo da Vinci"], "respuestas_correctas": "Vincent van Gogh"}',
 "Vincent van Gogh fue el autor de esta pintura, reconocida por su estilo postimpresionista y la representación del cielo nocturno."),
(2, 1, "¿Cuál de estos instrumentos musicales es de viento?",
 '{"respuestas": ["Guitarra", "Piano", "Trompeta", "Batería"], "respuestas_correctas": "Trompeta"}',
 "La trompeta es un instrumento de viento, específicamente de la familia de los metales.");

-- Preguntas para el test 3 de ARTES
INSERT INTO preguntas (id_test, tipo_pregunta, nombre_pregunta, datos_pregunta, retroalimentacion) VALUES
(3, 1, "¿Quién es el autor de la escultura David?",
 '{"respuestas": ["Miguel Ángel", "Donatello", "Leonardo da Vinci", "Rafael Sanzio"], "respuestas_correctas": "Miguel Ángel"}',
 "La escultura de David fue creada por el artista italiano Miguel Ángel."),
(3, 1, "¿Cuál es el nombre del estilo artístico que se desarrolló en la década de 1960 en los Estados Unidos?",
 '{"respuestas": ["Pop Art", "Arte abstracto", "Fauvismo", "Impresionismo"], "respuestas_correctas": "Pop Art"}',
 "El Pop Art es el nombre del estilo artístico que se desarrolló en los Estados Unidos en la década de 1960."),
(3, 1, "¿Qué artista es conocido por su obra escultórica El Pensador?",
 '{"respuestas": ["Auguste Rodin", "Pablo Picasso", "Salvador Dalí", "Vincent van Gogh"], "respuestas_correctas": "Auguste Rodin"}',
 "El Pensador es una obra escultórica creada por el artista francés Auguste Rodin."),
(3, 1, "¿Qué es un tríptico en el arte?",
 '{"respuestas": ["Una obra de arte compuesta por tres paneles", "Una técnica de pintura que utiliza tres colores", "Una escultura que representa tres figuras", "Una instalación de arte que se compone de tres partes"], "respuestas_correctas": "Una obra de arte compuesta por tres paneles"}',
 "Un tríptico en el arte es una obra compuesta por tres paneles que se pueden mostrar juntos o por separado."),
(3, 1, "¿Quién es el autor de la obra literaria Cien años de soledad?",
 '{"respuestas": ["Gabriel García Márquez", "Mario Vargas Llosa", "Jorge Luis Borges", "Pablo Neruda"], "respuestas_correctas": "Gabriel García Márquez"}',
 "Cien años de soledad es una obra literaria del escritor colombiano Gabriel García Márquez."),
(3, 1, "¿Quién es el autor de la obra Las Meninas?",
 '{"respuestas": ["Diego Velázquez", "Francisco de Goya", "El Greco", "Bartolomé Esteban Murillo"], "respuestas_correctas": "Diego Velázquez"}',
 "Las Meninas es una famosa obra del pintor español Diego Velázquez."),
(3, 1, "¿En qué país se originó el tango?",
 '{"respuestas": ["Argentina", "Brasil", "México", "España"], "respuestas_correctas": "Argentina"}',
 "El tango se originó en Argentina, en la ciudad de Buenos Aires."),
(3, 1, "¿Quién es el autor de la obra El Beso?",
 '{"respuestas": ["Gustav Klimt", "Salvador Dalí", "Pablo Picasso", "Vincent van Gogh"], "respuestas_correctas": "Gustav Klimt"}',
 "El Beso es una famosa obra del pintor austriaco Gustav Klimt."),
(3, 1, "¿Qué movimiento artístico se caracteriza por el uso de colores brillantes y formas geométricas?",
 '{"respuestas": ["Arte abstracto", "Expresionismo", "Cubismo", "Fauvismo"], "respuestas_correctas": "Fauvismo"}',
 "El fauvismo se caracteriza por el uso de colores brillantes y formas geométricas."),
(3, 1, "¿Quién es el autor de la obra La Gioconda?",
 '{"respuestas": ["Leonardo da Vinci", "Rafael Sanzio", "Miguel Ángel", "Sandro Botticelli"], "respuestas_correctas": "Leonardo da Vinci"}',
 "La Gioconda es una famosa obra del pintor italiano Leonardo da Vinci.");

-- Preguntas para el test 4 de ARTES
INSERT INTO preguntas (id_test, tipo_pregunta, nombre_pregunta, datos_pregunta, retroalimentacion) VALUES
(4, 1, "¿Cuál es la técnica que consiste en cortar y pegar diferentes materiales para crear una obra de arte?",
 '{"respuestas": ["Collage", "Pintura al óleo", "Escultura", "Acuarela"], "respuestas_correctas": "Collage"}',
 "El collage es una técnica que consiste en cortar y pegar diferentes materiales, como papel, tela o fotografías, para crear una obra de arte."),
(4, 1, "¿Cuál es el título de la obra más famosa del pintor español Salvador Dalí?",
 '{"respuestas": ["La persistencia de la memoria", "Guernica", "El jardín de las delicias", "Las meninas"], "respuestas_correctas": "La persistencia de la memoria"}',
 "La persistencia de la memoria es la obra más famosa del pintor español Salvador Dalí, y es conocida por sus relojes blandos."),
(4, 1, "¿Qué artista es conocido por su técnica de pirograbado en madera?",
 '{"respuestas": ["Giuseppe Penone", "Yayoi Kusama", "Joan Miró", "Frida Kahlo"], "respuestas_correctas": "Giuseppe Penone"}',
 "Giuseppe Penone es conocido por su técnica de pirograbado en madera, que consiste en quemar la madera para crear texturas y formas."),
(4, 1, "¿Cuál es el nombre del movimiento artístico que surgió en Rusia en el siglo XX?",
 '{"respuestas": ["Constructivismo", "Impresionismo", "Expresionismo", "Surrealismo"], "respuestas_correctas": "Constructivismo"}',
 "El Constructivismo es un movimiento artístico que surgió en Rusia en el siglo XX y se caracteriza por la utilización de formas geométricas simples y la exploración de la relación entre el arte y la sociedad."),
(4, 1, "¿Qué artista es conocido por sus esculturas en hierro forjado?",
 '{"respuestas": ["Alexander Calder", "Barbara Hepworth", "Henry Moore", "Louise Bourgeois"], "respuestas_correctas": "Alexander Calder"}',
 "Alexander Calder es conocido por sus esculturas en hierro forjado, que se caracterizan por sus formas abstractas y su uso del movimiento."),
(4, 1, "¿Cuál es el título de la obra de teatro más famosa de Tennessee Williams?",
 '{"respuestas": ["Un tranvía llamado deseo", "La gaviota", "Esperando a Godot", "La casa de Bernarda Alba"], "respuestas_correctas": "Un tranvía llamado deseo"}',
 "Un tranvía llamado deseo es la obra de teatro más famosa de Tennessee Williams, y cuenta la historia de una mujer que trata de escapar de su pasado."),
(4, 1, "¿En qué país se originó el arte del origami?",
 '{"respuestas": ["Japón", "China", "Corea del Sur", "Tailandia"], "respuestas_correctas": "Japón"}',
 "El arte del origami se originó en Japón, y consiste en crear figuras con papel utilizando técnicas de plegado."),
(4, 1, "¿Cuál es el nombre de la técnica que se utiliza para imprimir imágenes sobre un papel a partir de una matriz?",
 '{"respuestas": ["Grabado", "Litografía", "Serigrafía", "Impresión digital"], "respuestas_correctas": "Grabado"}',
 "El grabado es la técnica que se utiliza para imprimir imágenes sobre un papel a partir de una matriz, y se puede realizar con diferentes materiales como madera, metal o linóleo."),
(4, 1, "¿En qué país nació el compositor Wolfgang Amadeus Mozart?",
 '{"respuestas": ["Italia", "Austria", "Alemania", "Francia"], "respuestas_correctas": "Austria"}',
 "Mozart nació en Salzburgo, Austria, en 1756."),
(4, 1, "¿Qué corriente artística surgió en España a principios del siglo XX?",
 '{"respuestas": ["Realismo", "Cubismo", "Impresionismo", "Modernismo"], "respuestas_correctas": "Modernismo"}',
 "El Modernismo fue una corriente artística que surgió en España a principios del siglo XX, caracterizada por su estética ornamental y su inspiración en la naturaleza.");

-- Preguntas para el test 5 de ARTES
INSERT INTO preguntas (id_test, tipo_pregunta, nombre_pregunta, datos_pregunta, retroalimentacion) VALUES
(5, 1, "¿Quién es el autor de la obra teatral Esperando a Godot?",
 '{"respuestas": ["Samuel Beckett", "Arthur Miller", "Tennessee Williams", "William Shakespeare"], "respuestas_correctas": "Samuel Beckett"}',
 "Esperando a Godot es una obra teatral del autor irlandés Samuel Beckett, considerada una de las obras más importantes del teatro del siglo XX."),
(5, 1, "¿Qué pintor es conocido por su serie de pinturas de latas de sopa Campbell?",
 '{"respuestas": ["Andy Warhol", "Jackson Pollock", "Pablo Picasso", "Vincent van Gogh"], "respuestas_correctas": "Andy Warhol"}',
 "Andy Warhol es conocido por su serie de pinturas de latas de sopa Campbell, un icono del arte pop."),
(5, 1, "¿En qué ciudad se encuentra la Basílica de San Pedro?",
 '{"respuestas": ["Ciudad del Vaticano", "Roma, Italia", "París, Francia", "Madrid, España"], "respuestas_correctas": "Ciudad del Vaticano"}',
 "La Basílica de San Pedro se encuentra en la Ciudad del Vaticano, un estado independiente dentro de la ciudad de Roma, Italia."),
(5, 1, "¿Cuál es el nombre de la obra más famosa de Gustav Mahler?",
 '{"respuestas": ["Sinfonía No. 5", "Sinfonía No. 9", "Sinfonía No. 3", "Sinfonía No. 1"], "respuestas_correctas": "Sinfonía No. 9"}',
 "La Sinfonía No. 9 es la obra más famosa del compositor austriaco Gustav Mahler."),
(5, 1, "¿Qué movimiento artístico se caracteriza por el uso de formas geométricas y colores brillantes?",
 '{"respuestas": ["Arte abstracto", "Expresionismo", "Surrealismo", "Realismo"], "respuestas_correctas": "Arte abstracto"}',
 "El arte abstracto se caracteriza por el uso de formas geométricas y colores brillantes para crear obras que no representan objetos o figuras reconocibles."),
(5, 1, "¿Qué bailarina rusa es considerada una de las mejores de la historia?",
 '{"respuestas": ["Anna Pavlova", "Mikhail Baryshnikov", "Rudolf Nureyev", "Maya Plisetskaya"], "respuestas_correctas": "Anna Pavlova"}',
 "Anna Pavlova es considerada una de las mejores bailarinas de la historia, conocida por su técnica y expresividad."),
(5, 1, "¿Cuál es el nombre del compositor de la famosa ópera La Bohème?",
 '{"respuestas": ["Giacomo Puccini", "Wolfgang Amadeus Mozart", "Giuseppe Verdi", "Richard Wagner"], "respuestas_correctas": "Giacomo Puccini"}',
 "Giacomo Puccini es el compositor de la famosa ópera La Bohème, una de las óperas más populares de todos los tiempos."),
(5, 1, "¿Qué artista creó el famoso mural Sueño de una tarde dominical en la Alameda Central?",
 '{"respuestas": ["Diego Rivera", "Pablo Picasso", "Salvador Dalí", "Frida Kahlo"], "respuestas_correctas": "Diego Rivera"}',
 "Diego Rivera creó el famoso mural Sueño de una tarde dominical en la Alameda Central, una obra de arte importante del muralismo mexicano."),
(5, 1, "¿En qué año se inauguró el Museo del Louvre en París?",
 '{"respuestas": ["1793", "1864", "1900", "1950"], "respuestas_correctas": "1793"}',
 "El Museo del Louvre fue inaugurado en París en el año 1793."),
(5, 1, "¿Quién es el autor de la obra Guernica?",
 '{"respuestas": ["Pablo Picasso", "Salvador Dalí", "Joan Miró", "Antoni Gaudí"], "respuestas_correctas": "Pablo Picasso"}',
 "Guernica es una famosa obra del pintor español Pablo Picasso.");

-- Preguntas para el test 6 de ARTES
INSERT INTO preguntas (id_test, tipo_pregunta, nombre_pregunta, datos_pregunta, retroalimentacion) VALUES
(6, 1, "¿Quién es el autor del cuadro 'La última cena'?",
 '{"respuestas": ["Leonardo da Vinci", "Pablo Picasso", "Vincent van Gogh", "Salvador Dalí"], "respuestas_correctas": "Leonardo da Vinci"}',
 "'La última cena' es una obra del pintor italiano Leonardo da Vinci, famosa por su realismo y técnica de perspectiva."),
(6, 1, "¿Qué pintor creó la obra 'Guernica'?",
 '{"respuestas": ["Pablo Picasso", "Vincent van Gogh", "Claude Monet", "Salvador Dalí"], "respuestas_correctas": "Pablo Picasso"}',
 "'Guernica' es una famosa obra del pintor español Pablo Picasso, que representa el bombardeo de la ciudad española de Guernica durante la Guerra Civil española."),
(6, 1, "¿En qué ciudad se encuentra la Galería Uffizi?",
 '{"respuestas": ["Florencia, Italia", "París, Francia", "Nueva York, Estados Unidos", "Londres, Reino Unido"], "respuestas_correctas": "Florencia, Italia"}',
 "La Galería Uffizi se encuentra en la ciudad de Florencia, Italia, y alberga una de las colecciones de arte más importantes del mundo."),
(6, 1, "¿Qué movimiento artístico se caracteriza por el uso de colores puros y brillantes?",
 '{"respuestas": ["Fauvismo", "Expresionismo", "Cubismo", "Surrealismo"], "respuestas_correctas": "Fauvismo"}',
 "El Fauvismo se caracteriza por el uso de colores puros y brillantes para crear una atmósfera vibrante y emocional."),
(6, 1, "¿En qué siglo se desarrolló el Renacimiento?",
 '{"respuestas": ["Siglo XV y XVI", "Siglo XIII y XIV", "Siglo XVII y XVIII", "Siglo XIX y XX"], "respuestas_correctas": "Siglo XV y XVI"}',
 "El Renacimiento se desarrolló en los siglos XV y XVI en Europa, y se caracterizó por el interés en la cultura clásica y la búsqueda de la perfección en el arte y la ciencia."),
(6, 1, "¿Quién es el autor de la ópera 'La Traviata'?",
 '{"respuestas": ["Giuseppe Verdi", "Wolfgang Amadeus Mozart", "Richard Wagner", "Georges Bizet"], "respuestas_correctas": "Giuseppe Verdi"}',
 "'La Traviata' es una ópera del compositor italiano Giuseppe Verdi, que cuenta la historia de una cortesana enamorada de un joven noble."),
(6, 1, "¿Qué es el arte abstracto?",
 '{"respuestas": ["Un tipo de arte que no representa objetos o figuras reconocibles", "Un tipo de arte que representa objetos o figuras reconocibles de manera realista", "Un tipo de arte que se basa en la fotografía", "Un tipo de arte que se enfoca en el uso de colores brillantes"], "respuestas_correctas": "Un tipo de arte que no representa objetos o figuras reconocibles"}',
 "El arte abstracto es un tipo de arte que no representa objetos o figuras reconocibles, y se enfoca en la experimentación con formas, colores y texturas."),
(6, 1, "¿Qué famoso ballet fue compuesto por Tchaikovsky?",
 '{"respuestas": ["El Lago de los Cisnes", "El Cascanueces", "Giselle", "Romeo y Julieta"], "respuestas_correctas": "El Lago de los Cisnes"}',
 "El Lago de los Cisnes es uno de los ballets más famosos de la historia, compuesto por el músico ruso Pyotr Ilyich Tchaikovsky."),
(6, 1, "¿Qué instrumento musical es conocido como el rey de los instrumentos?",
 '{"respuestas": ["Órgano", "Violín", "Piano", "Guitarra"], "respuestas_correctas": "Órgano"}',
 "El órgano es conocido como el rey de los instrumentos debido a su gran tamaño y complejidad."),
(6, 1, "¿Quién es el autor de la novela Cien años de soledad?",
 '{"respuestas": ["Gabriel García Márquez", "Jorge Luis Borges", "Mario Vargas Llosa", "Julio Cortázar"], "respuestas_correctas": "Gabriel García Márquez"}',
 "Cien años de soledad es una famosa novela del escritor colombiano Gabriel García Márquez.");

-- Preguntas para el test 7 de ARTES
INSERT INTO preguntas (id_test, tipo_pregunta, nombre_pregunta, datos_pregunta, retroalimentacion) VALUES
(7, 1, "¿Quién diseñó la famosa silla Barcelona?",
 '{"respuestas": ["Ludwig Mies van der Rohe", "Le Corbusier", "Frank Lloyd Wright", "Eero Saarinen"], "respuestas_correctas": "Ludwig Mies van der Rohe"}',
 "La famosa silla Barcelona fue diseñada por el arquitecto alemán Ludwig Mies van der Rohe."),
(7, 1, "¿Qué escritor es conocido por su obra El Principito?",
 '{"respuestas": ["Antoine de Saint-Exupéry", "Albert Camus", "Jean-Paul Sartre", "Marcel Proust"], "respuestas_correctas": "Antoine de Saint-Exupéry"}',
 "El Principito es una obra del escritor francés Antoine de Saint-Exupéry, considerada una de las obras más populares y queridas de la literatura universal."),
(7, 1, "¿Qué movimiento artístico se caracteriza por el uso de colores brillantes y contrastantes?",
 '{"respuestas": ["Fauvismo", "Impresionismo", "Expresionismo", "Cubismo"], "respuestas_correctas": "Fauvismo"}',
 "El fauvismo se caracteriza por el uso de colores brillantes y contrastantes para crear obras con una fuerte carga emocional."),
(7, 1, "¿Quién es el autor de la obra teatral Esperando a Godot?",
 '{"respuestas": ["Samuel Beckett", "Harold Pinter", "Edward Albee", "Tennessee Williams"], "respuestas_correctas": "Samuel Beckett"}',
 "Esperando a Godot es una obra teatral del escritor irlandés Samuel Beckett, considerada una de las más importantes e influyentes del siglo XX."),
(7, 1, "¿Qué técnica se utiliza para crear imágenes a partir de pequeñas piezas de vidrio o azulejos?",
 '{"respuestas": ["Mosaico", "Vidriería", "Esmalte", "Cerámica"], "respuestas_correctas": "Mosaico"}',
 "La técnica utilizada para crear imágenes a partir de pequeñas piezas de vidrio o azulejos se llama mosaico."),
(7, 1, "¿Qué artista es conocido por sus esculturas de caballos?",
 '{"respuestas": ["Marino Marini", "Henry Moore", "Alberto Giacometti", "Barbara Hepworth"], "respuestas_correctas": "Marino Marini"}',
 "Marino Marini es conocido por sus esculturas de caballos, que son una de sus obras más reconocidas."),
(7, 1, "¿En qué ciudad se encuentra el Museo del Prado?",
 '{"respuestas": ["Madrid, España", "París, Francia", "Londres, Reino Unido", "Nueva York, Estados Unidos"], "respuestas_correctas": "Madrid, España"}',
 "El Museo del Prado se encuentra en Madrid, España."),
(7, 1, "¿Qué artista es conocido por sus pinturas de la naturaleza muerta?",
 '{"respuestas": ["Juan Sánchez Cotán", "Francisco de Zurbarán", "Diego Velázquez", "Bartolomé Esteban Murillo"], "respuestas_correctas": "Juan Sánchez Cotán"}',
 "Juan Sánchez Cotán es conocido por sus pinturas de la naturaleza muerta, que son una de las más destacadas del arte barroco español."),
(7, 1, "¿Qué movimiento artístico se caracteriza por el uso de la fotografía como medio de expresión?",
 '{"respuestas": ["Fotografía artística", "Arte conceptual", "Land art", "Arte urbano"], "respuestas_correctas": "Fotografía artística"}',
 "La fotografía artística se caracteriza por el uso de la fotografía como medio de expresión artística, explorando temas como la belleza, la identidad y la política."),
(7, 1, "¿Quién es el autor de la novela 1984?",
 '{"respuestas": ["George Orwell", "Aldous Huxley", "Ray Bradbury", "Jules Verne"], "respuestas_correctas": "George Orwell"}',
 "1984 es una novela distópica escrita por George Orwell, publicada en 1949.");

-- Preguntas para el test 8 de ARTES
INSERT INTO preguntas (id_test, tipo_pregunta, nombre_pregunta, datos_pregunta, retroalimentacion) VALUES
(8, 1, "¿En qué ciudad se encuentra el Museo del Prado?",
 '{"respuestas": ["Madrid, España", "París, Francia", "Londres, Reino Unido", "Nueva York, Estados Unidos"], "respuestas_correctas": "Madrid, España"}',
 "El Museo del Prado se encuentra en Madrid, España, y es uno de los museos de arte más importantes del mundo."),
(8, 1, "¿En qué época se desarrolló el movimiento artístico del Renacimiento?",
 '{"respuestas": ["Siglo XV y XVI", "Siglo XIII y XIV", "Siglo XVII y XVIII", "Siglo XIX y XX"], "respuestas_correctas": "Siglo XV y XVI"}',
 "El Renacimiento se desarrolló entre los siglos XV y XVI en Europa, marcando una época de gran desarrollo artístico, científico y cultural."),
(8, 1, "¿Qué pintor es conocido por su técnica de luz y sombra llamada chiaroscuro?",
 '{"respuestas": ["Caravaggio", "Leonardo da Vinci", "Rembrandt", "Miguel Ángel"], "respuestas_correctas": "Caravaggio"}',
 "Caravaggio es conocido por su técnica de luz y sombra llamada chiaroscuro, que le permitía crear efectos dramáticos en sus obras."),
(8, 1, "¿Quién es el autor de la obra El Jardín de las Delicias?",
 '{"respuestas": ["El Bosco", "Jan van Eyck", "Pieter Bruegel el Viejo", "Hans Holbein el Joven"], "respuestas_correctas": "El Bosco"}',
 "El Jardín de las Delicias es una obra del pintor flamenco El Bosco, creada en el siglo XVI."),
(8, 1, "¿Qué tipo de arte se caracteriza por el uso de objetos cotidianos como materiales?",
 '{"respuestas": ["Arte pop", "Arte abstracto", "Arte minimalista", "Arte cinético"], "respuestas_correctas": "Arte pop"}',
 "El arte pop se caracteriza por el uso de objetos cotidianos como materiales para crear obras de arte."),
(8, 1, "¿Quién es el autor de la obra literaria Don Quijote de la Mancha?",
 '{"respuestas": ["Miguel de Cervantes", "García Lorca", "Rubén Darío", "Pablo Neruda"], "respuestas_correctas": "Miguel de Cervantes"}',
 "Don Quijote de la Mancha es una obra literaria escrita por el español Miguel de Cervantes en el siglo XVII."),
(8, 1, "¿Qué pintor es conocido por su técnica de impresionismo?",
 '{"respuestas": ["Claude Monet", "Vincent van Gogh", "Edvard Munch", "Pablo Picasso"], "respuestas_correctas": "Claude Monet"}',
 "Claude Monet es conocido por ser uno de los fundadores del movimiento impresionista en la pintura."),
(8, 1, "¿Quién es el autor de la obra literaria El Principito?",
 '{"respuestas": ["Antoine de Saint-Exupéry", "Jules Verne", "Mark Twain", "Charles Dickens"], "respuestas_correctas": "Antoine de Saint-Exupéry"}',
 "El Principito es una obra literaria escrita por el francés Antoine de Saint-Exupéry en 1943."),
(8, 1, "¿Quién es el autor de la novela El retrato de Dorian Gray?",
 '{"respuestas": ["Oscar Wilde", "Jane Austen", "Charles Dickens", "Mark Twain"], "respuestas_correctas": "Oscar Wilde"}',
 "El retrato de Dorian Gray es una novela del escritor irlandés Oscar Wilde, considerada una de las obras maestras del decadentismo."),
(8, 1, "¿Qué artista es conocido por sus pinturas de latas de sopa y cajas de detergente?",
 '{"respuestas": ["Andy Warhol", "Roy Lichtenstein", "Claes Oldenburg", "Robert Rauschenberg"], "respuestas_correctas": "Andy Warhol"}',
 "Andy Warhol es conocido por sus pinturas de latas de sopa y cajas de detergente, que forman parte de su obra pop art.");

-- Preguntas para el test 9 de ARTES
INSERT INTO preguntas (id_test, tipo_pregunta, nombre_pregunta, datos_pregunta, retroalimentacion) VALUES
(9, 1, "¿Quién es el autor de la obra literaria Cien años de soledad?",
 '{"respuestas": ["Gabriel García Márquez", "Jorge Luis Borges", "Mario Vargas Llosa", "Julio Cortázar"], "respuestas_correctas": "Gabriel García Márquez"}',
 "Cien años de soledad es una obra del escritor colombiano Gabriel García Márquez, considerada una de las obras maestras de la literatura latinoamericana."),
(9, 1, "¿En qué siglo nació Leonardo da Vinci?",
 '{"respuestas": ["Siglo XV", "Siglo XVI", "Siglo XVII", "Siglo XIV"], "respuestas_correctas": "Siglo XV"}',
 "Leonardo da Vinci nació en el siglo XV, en la ciudad de Vinci, Italia."),
(9, 1, "¿Quién es el autor de la obra teatral Esperando a Godot?",
 '{"respuestas": ["Samuel Beckett", "Eugene O´Neill", "Arthur Miller", "Tennessee Williams"], "respuestas_correctas": "Samuel Beckett"}',
 "Esperando a Godot es una obra del escritor irlandés Samuel Beckett, considerada una de las obras cumbre del teatro del absurdo."),
(9, 1, "¿En qué ciudad se encuentra el Museo del Prado?",
 '{"respuestas": ["Madrid, España", "Barcelona, España", "Valencia, España", "Sevilla, España"], "respuestas_correctas": "Madrid"}',
 "El Museo del Prado se encuentra en la ciudad de Madrid, España."),
(9, 1, "¿Qué director de cine es conocido por su estilo de cine negro?",
 '{"respuestas": ["Orson Welles", "Alfred Hitchcock", "Stanley Kubrick", "Martin Scorsese"], "respuestas_correctas": "Orson Welles"}',
 "Orson Welles es conocido por su estilo de cine negro, especialmente por su película Ciudadano Kane."),
(9, 1, "¿En qué ciudad se encuentra la Basílica de San Pedro?",
 '{"respuestas": ["Ciudad del Vaticano", "Roma, Italia", "Madrid, España", "París, Francia"], "respuestas_correctas": "Ciudad del Vaticano"}',
 "La Basílica de San Pedro se encuentra en la Ciudad del Vaticano, un estado independiente dentro de la ciudad de Roma."),
(9, 1, "¿Cuál es el nombre del escultor griego más famoso?",
 '{"respuestas": ["Fidias", "Praxíteles", "Escopas", "Lisipo"], "respuestas_correctas": "Fidias"}',
 "Fidias es el escultor griego más famoso, conocido por su obra en el Partenón de Atenas."),
(9, 1, "¿Cuál es el nombre de la corriente artística que surgió en Italia en el siglo XIV?",
 '{"respuestas": ["Renacimiento", "Barroco", "Gótico", "Rococó"], "respuestas_correctas": "Renacimiento"}',
 "La corriente artística que surgió en Italia en el siglo XIV es conocida como Renacimiento."),
(9, 1, "¿Qué artista es conocido por sus cuadros de mujeres con sombreros y vestidos largos?",
 '{"respuestas": ["Henri Matisse", "Pablo Picasso", "Edgar Degas", "Vincent van Gogh"], "respuestas_correctas": "Henri Matisse"}',
 "Henri Matisse es conocido por sus cuadros de mujeres con sombreros y vestidos largos, como La Danse y La Música."),
(9, 1, "¿Qué técnica se utiliza para crear imágenes a partir de pequeños puntos de colores?",
 '{"respuestas": ["Puntillismo", "Cubismo", "Fauvismo", "Surrealismo"], "respuestas_correctas": "Puntillismo"}',
 "La técnica utilizada para crear imágenes a partir de pequeños puntos de colores se llama puntillismo.");

-- Preguntas para el test 10 de ARTES
INSERT INTO preguntas (id_test, tipo_pregunta, nombre_pregunta, datos_pregunta, retroalimentacion) VALUES
(10, 1, "¿Cuál es el nombre del principal personaje de la novela Don Quijote de la Mancha?",
 '{"respuestas": ["Alonso Quijano", "Sancho Panza", "Miguel de Cervantes", "Dulcinea del Toboso"], "respuestas_correctas": "Alonso Quijano"}',
 "El principal personaje de la novela Don Quijote de la Mancha es Alonso Quijano, quien se transforma en Don Quijote para vivir aventuras."),
(10, 1, "¿Cuál es la capital de Italia?",
 '{"respuestas": ["Roma", "París", "Madrid", "Atenas"], "respuestas_correctas": "Roma"}',
 "La capital de Italia es Roma."),
(10, 1, "¿Quién escribió la novela Cien años de soledad?",
 '{"respuestas": ["Gabriel García Márquez", "Julio Cortázar", "Pablo Neruda", "Mario Vargas Llosa"], "respuestas_correctas": "Gabriel García Márquez"}',
 "La novela Cien años de soledad fue escrita por el colombiano Gabriel García Márquez."),
(10, 1, "¿Quién es el autor de la obra teatral La Casa de Bernarda Alba?",
 '{"respuestas": ["Federico García Lorca", "Antonio Buero Vallejo", "Pedro Calderón de la Barca", "Lope de Vega"], "respuestas_correctas": "Federico García Lorca"}',
 "La obra teatral La Casa de Bernarda Alba fue escrita por el español Federico García Lorca."),
(10, 1, "¿Qué artista es conocido por sus esculturas en mármol blanco?",
 '{"respuestas": ["Miguel Ángel", "Leonardo da Vinci", "Rafael Sanzio", "Tiziano Vecellio"], "respuestas_correctas": "Miguel Ángel"}',
 "Miguel Ángel es conocido por sus esculturas en mármol blanco, como La Piedad y el David."),
(10, 1, "¿Qué pintor español es conocido por sus cuadros de naturaleza muerta?",
 '{"respuestas": ["Juan Sánchez Cotán", "Diego Velázquez", "Francisco de Goya", "Pablo Picasso"], "respuestas_correctas": "Juan Sánchez Cotán"}',
 "Juan Sánchez Cotán es conocido por sus cuadros de naturaleza muerta, como Bodegón con cardos y calabazas."),
(10, 1, "¿En qué siglo se desarrolló el estilo barroco?",
 '{"respuestas": ["Siglo XVII", "Siglo XVIII", "Siglo XVI", "Siglo XIX"], "respuestas_correctas": "Siglo XVII"}',
 "El estilo barroco se desarrolló principalmente en el siglo XVII."),
(10, 1, "¿Quién es el autor de la obra pictórica La Gioconda?",
 '{"respuestas": ["Leonardo da Vinci", "Pablo Picasso", "Vincent van Gogh", "Rembrandt"], "respuestas_correctas": "Leonardo da Vinci"}',
 "La Gioconda es una famosa obra pictórica del artista italiano Leonardo da Vinci."),
(10, 1, "¿Qué pintor es conocido por sus obras de arte en las que aparecen relojes blandos?",
 '{"respuestas": ["Salvador Dalí", "René Magritte", "Pablo Picasso", "Vincent van Gogh"], "respuestas_correctas": "Salvador Dalí"}',
 "Salvador Dalí es conocido por sus obras de arte en las que aparecen relojes blandos, una técnica que se conoce como 'daliismo'"),
(10, 1, "¿Cuál es el nombre de la obra musical más famosa de Andrew Lloyd Webber?",
 '{"respuestas": ["El Fantasma de la Ópera", "Cats", "Los Miserables", "Evita"], "respuestas_correctas": "El Fantasma de la Ópera"}',
 "El Fantasma de la Ópera es la obra musical más famosa del compositor británico Andrew Lloyd Webber.");
 
SET foreign_key_checks = 0;

SET @newid := 0;
UPDATE preguntas SET id = (@newid := @newid + 1) ORDER BY id;

SET foreign_key_checks = 1;