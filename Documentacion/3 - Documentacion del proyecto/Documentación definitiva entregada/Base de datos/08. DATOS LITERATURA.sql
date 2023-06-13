-- Datos para la tabla TESTS para los test de Literatura del tipo tipo de pregunta 1 con respuesta unica
INSERT INTO tests (id_materia, nombre_test, descripcion, id_usuario_creador) VALUES
(17, 'Literatura 01', 'Test 01 sobre la materia de Literatura con respuesta única.', 1),
(17, 'Literatura 02', 'Test 02 sobre la materia de Literatura con respuesta única.', 1),
(17, 'Literatura 03', 'Test 03 sobre la materia de Literatura con respuesta única.', 1),
(17, 'Literatura 04', 'Test 04 sobre la materia de Literatura con respuesta única.', 1),
(17, 'Literatura 05', 'Test 05 sobre la materia de Literatura con respuesta única.', 1),
(17, 'Literatura 06', 'Test 06 sobre la materia de Literatura con respuesta única.', 1),
(17, 'Literatura 07', 'Test 07 sobre la materia de Literatura con respuesta única.', 1),
(17, 'Literatura 08', 'Test 08 sobre la materia de Literatura con respuesta única.', 1),
(17, 'Literatura 09', 'Test 09 sobre la materia de Literatura con respuesta única.', 1),
(17, 'Literatura 10', 'Test 10 sobre la materia de Literatura con respuesta única.', 1);

SET foreign_key_checks = 0;

SET @newid := 0;
UPDATE tests SET id = (@newid := @newid + 1) ORDER BY id;

SET foreign_key_checks = 1;

-- Datos para la tabla PREGUNTAS de la MATERIA "Literatura" para el tipo de pregunta 1 con respuesta unica

-- Preguntas para el test 1 de Literatura
INSERT INTO preguntas (id_test, tipo_pregunta, nombre_pregunta, datos_pregunta, retroalimentacion) VALUES
(71, 1, "¿Quién escribió 'Cien años de soledad'?", '{"opciones": ["Mario Vargas Llosa", "Gabriel García Márquez", "Julio Cortázar", "Isabel Allende"], "respuestas_correctas": "Gabriel García Márquez"}', "'Cien años de soledad' fue escrito por Gabriel García Márquez."),
(71, 1, "¿Qué obra de Shakespeare cuenta la historia de dos jóvenes enamorados cuyas familias están enfrentadas?", '{"opciones": ["Romeo y Julieta", "Macbeth", "Hamlet", "Otelo"], "respuestas_correctas": "Romeo y Julieta"}', "'Romeo y Julieta' es la obra de Shakespeare que cuenta la historia de dos jóvenes enamorados cuyas familias están enfrentadas."),
(71, 1, "¿Quién es el autor de 'La Metamorfosis'?", '{"opciones": ["Franz Kafka", "Thomas Mann", "Friedrich Nietzsche", "Hermann Hesse"], "respuestas_correctas": "Franz Kafka"}', "'La Metamorfosis' fue escrita por Franz Kafka."),
(71, 1, "¿Qué escritor español es conocido por su obra 'La Regenta'?", '{"opciones": ["Miguel de Cervantes", "Benito Pérez Galdós", "Federico García Lorca", "Antonio Machado"], "respuestas_correctas": "Leopoldo Alas (Clarín)"}', "'La Regenta' fue escrita por Leopoldo Alas, más conocido como Clarín."),
(71, 1, "¿Quién es el autor de 'La Iliada'?", '{"opciones": ["Homero", "Virgilio", "Ovidio", "Esquilo"], "respuestas_correctas": "Homero"}', "'La Iliada' fue escrita por Homero."),
(71, 1, "¿Qué autor escribió la novela 'El Gran Gatsby'?", '{"opciones": ["F. Scott Fitzgerald", "Ernest Hemingway", "William Faulkner", "John Steinbeck"], "respuestas_correctas": "F. Scott Fitzgerald"}', "La novela 'El Gran Gatsby' fue escrita por F. Scott Fitzgerald."),
(71, 1, "¿Quién es el autor de 'La Ciudad y los Perros'?", '{"opciones": ["Jorge Luis Borges", "Mario Vargas Llosa", "Octavio Paz", "Gabriel García Márquez"], "respuestas_correctas": "Mario Vargas Llosa"}', "'La Ciudad y los Perros' fue escrita por Mario Vargas Llosa."),
(71, 1, "¿Quién escribió el libro '1984'?", '{"respuestas": ["George Orwell", "Aldous Huxley", "Ernest Hemingway", "J.K. Rowling"], "respuestas_correctas": "George Orwell"}', "El libro '1984' fue escrito por George Orwell."),
(71, 1, "¿Qué autor escribió 'La Divina Comedia'?", '{"respuestas": ["William Shakespeare", "Dante Alighieri", "Herman Melville", "Edgar Allan Poe"], "respuestas_correctas": "Dante Alighieri"}', "El autor de 'La Divina Comedia' es Dante Alighieri."),
(71, 1, "¿Quién escribió 'Cien años de soledad'?", '{"respuestas": ["Mario Vargas Llosa", "Gabriel García Márquez", "Pablo Neruda", "Jorge Luis Borges"], "respuestas_correctas": "Gabriel García Márquez"}', "El autor de 'Cien años de soledad' es Gabriel García Márquez.");

-- Preguntas para el test 2 de Literatura
INSERT INTO preguntas (id_test, tipo_pregunta, nombre_pregunta, datos_pregunta, retroalimentacion) VALUES
(72, 1, "¿Cuál es la obra más famosa de Miguel de Cervantes?", '{"respuestas": ["La Iliada", "Don Quijote de la Mancha", "Las mil y una noches", "La Eneida"], "respuestas_correctas": "Don Quijote de la Mancha"}', "La obra más famosa de Miguel de Cervantes es 'Don Quijote de la Mancha'."),
(72, 1, "¿Quién escribió 'El principito'?", '{"respuestas": ["Antoine de Saint-Exupéry", "J.K. Rowling", "C.S. Lewis", "J.R.R. Tolkien"], "respuestas_correctas": "Antoine de Saint-Exupéry"}', "El autor de 'El principito' es Antoine de Saint-Exupéry."),
(72, 1, "¿Qué escritor francés escribió 'Los Miserables'?", '{"respuestas": ["Gustave Flaubert", "Albert Camus", "Victor Hugo", "Emile Zola"], "respuestas_correctas": "Victor Hugo"}', "El autor de 'Los Miserables' es Victor Hugo."),
(72, 1, "¿Quién escribió 'Orgullo y prejuicio'?", '{"respuestas": ["Emily Bronte", "Charlotte Bronte", "Jane Austen", "Virginia Woolf"], "respuestas_correctas": "Jane Austen"}', "El autor de 'Orgullo y prejuicio' es Jane Austen."),
(72, 1, "¿Cuál es la obra más famosa de William Shakespeare?", '{"respuestas": ["Hamlet", "Macbeth", "Romeo y Julieta", "Otelo"], "respuestas_correctas": "Hamlet"}', "La obra más famosa de William Shakespeare es 'Hamlet'."),
(72, 1, "¿Quién escribió el Quijote?", '{"respuestas": ["Miguel de Cervantes", "Gabriel García Márquez", "Jorge Luis Borges", "Pablo Neruda"], "respuestas_correctas": "Miguel de Cervantes"}', "El Quijote fue escrito por Miguel de Cervantes."),
(72, 1, "¿Qué poema de Pablo Neruda comienza con 'Puedo escribir los versos más tristes esta noche'?", '{"respuestas": ["20 poemas de amor y una canción desesperada", "Canto general", "Residencia en la Tierra", "Los versos del capitán"], "respuestas_correctas": "20 poemas de amor y una canción desesperada"}', "El poema de Pablo Neruda que comienza con 'Puedo escribir los versos más tristes esta noche' es '20 poemas de amor y una canción desesperada'."),
(72, 1, "¿Quién escribió la novela '1984'?", '{"respuestas": ["Aldous Huxley", "George Orwell", "Ernest Hemingway", "F. Scott Fitzgerald"], "respuestas_correctas": "George Orwell"}', "La novela '1984' fue escrita por George Orwell."),
(72, 1, "¿Quién es el autor de la obra de teatro 'Hamlet'?", '{"respuestas": ["William Shakespeare", "Samuel Beckett", "Arthur Miller", "Tennessee Williams"], "respuestas_correctas": "William Shakespeare"}', "La obra de teatro 'Hamlet' fue escrita por William Shakespeare."),
(72, 1, "¿Quién escribió 'El retrato de Dorian Gray'?", '{"respuestas": ["Oscar Wilde", "Jane Austen", "Charlotte Brontë", "Emily Brontë"], "respuestas_correctas": "Oscar Wilde"}', "'El retrato de Dorian Gray' fue escrito por Oscar Wilde.");

-- Preguntas para el test 3 de Literatura
INSERT INTO preguntas (id_test, tipo_pregunta, nombre_pregunta, datos_pregunta, retroalimentacion) VALUES
(73, 1, "¿Quién es el autor de 'La Odisea'?", '{"respuestas": ["Homero", "Virgilio", "Ovidio", "Sófocles"], "respuestas_correctas": "Homero"}', "'La Odisea' fue escrita por Homero."),
(73, 1, "¿Quién escribió 'Las aventuras de Tom Sawyer'?", '{"respuestas": ["Mark Twain", "Edgar Allan Poe", "Herman Melville", "Nathaniel Hawthorne"], "respuestas_correctas": "Mark Twain"}', "'Las aventuras de Tom Sawyer' fue escrita por Mark Twain."),
(73, 1, "¿Quién es el autor de 'La isla del tesoro'?", '{"respuestas": ["Robert Louis Stevenson", "Jules Verne", "H.G. Wells", "Rudyard Kipling"], "respuestas_correctas": "Robert Louis Stevenson"}', "'La isla del tesoro' fue escrita por Robert Louis Stevenson."),
(73, 1, "¿Quién escribió 'El retrato de Dorian Gray'?", '{"respuestas": ["Oscar Wilde", "Virginia Woolf", "Jane Austen", "William Shakespeare"], "respuestas_correctas": "Oscar Wilde"}', "'El retrato de Dorian Gray' fue escrito por Oscar Wilde."),
(73, 1, "¿Quién escribió 'La Ilíada'?", '{"respuestas": ["Homero", "Sófocles", "Eurípides", "Aristófanes"], "respuestas_correctas": "Homero"}', "'La Ilíada' fue escrita por Homero."),
(73, 1, "¿Quién escribió 'Cien años de soledad'?", '{"respuestas": ["Gabriel García Márquez", "Mario Vargas Llosa", "Pablo Neruda", "Octavio Paz"], "respuestas_correctas": "Gabriel García Márquez"}', "'Cien años de soledad' fue escrito por Gabriel García Márquez."),
(73, 1, "¿Quién escribió 'El principito'?", '{"respuestas": ["Antoine de Saint-Exupéry", "Jules Verne", "Julio Cortázar", "Gustave Flaubert"], "respuestas_correctas": "Antoine de Saint-Exupéry"}', "'El principito' fue escrito por Antoine de Saint-Exupéry."),
(73, 1, "¿En qué obra aparece el personaje de Ofelia?", '{"respuestas": ["Hamlet", "Romeo y Julieta", "Macbeth", "Otelo"], "respuestas_correctas": "Hamlet"}', "El personaje de Ofelia aparece en la obra 'Hamlet'."),
(73, 1, "¿Quién escribió '1984'?", '{"respuestas": ["George Orwell", "Aldous Huxley", "Ray Bradbury", "J.D. Salinger"], "respuestas_correctas": "George Orwell"}', "'1984' fue escrito por George Orwell."),
(73, 1, "¿Quién escribió 'Las venas abiertas de América Latina'?", '{"respuestas": ["Eduardo Galeano", "Mario Vargas Llosa", "Gabriel García Márquez", "Isabel Allende"], "respuestas_correctas": "Eduardo Galeano"}', "'Las venas abiertas de América Latina' fue escrito por Eduardo Galeano.");

-- Preguntas para el test 4 de Literatura
INSERT INTO preguntas (id_test, tipo_pregunta, nombre_pregunta, datos_pregunta, retroalimentacion) VALUES
(74, 1, "¿Quién escribió 'El Aleph'?", '{"respuestas": ["Jorge Luis Borges", "Octavio Paz", "Pablo Neruda", "Gabriel García Márquez"], "respuestas_correctas": "Jorge Luis Borges"}', "'El Aleph' fue escrito por Jorge Luis Borges."),
(74, 1, "¿Quién es el autor de la novela 'El gran Gatsby'?", '{"respuestas": ["F. Scott Fitzgerald", "Ernest Hemingway", "William Faulkner", "J.D. Salinger"], "respuestas_correctas": "F. Scott Fitzgerald"}', "El autor de 'El gran Gatsby' es F. Scott Fitzgerald."),
(74, 1, "¿De qué país es el autor Gabriel García Márquez?", '{"respuestas": ["Argentina", "Colombia", "México", "España"], "respuestas_correctas": "Colombia"}', "El autor Gabriel García Márquez es de Colombia."),
(74, 1, "¿Quién escribió el libro 'La Ilíada'?", '{"respuestas": ["Homero", "Virgilio", "Ovidio", "Sófocles"], "respuestas_correctas": "Homero"}', "La Ilíada fue escrita por Homero."),
(74, 1, "¿Qué poema épico describe las hazañas del guerrero Sigfrido?", '{"respuestas": ["La Ilíada", "La Odisea", "Beowulf", "El Cantar de los Nibelungos"], "respuestas_correctas": "El Cantar de los Nibelungos"}', "El poema épico que describe las hazañas del guerrero Sigfrido es 'El Cantar de los Nibelungos'."),
(74, 1, "¿Cuál es la obra más famosa del autor español Miguel de Cervantes?", '{"respuestas": ["Don Quijote de la Mancha", "La Celestina", "El Lazarillo de Tormes", "La vida es sueño"], "respuestas_correctas": "Don Quijote de la Mancha"}', "La obra más famosa del autor español Miguel de Cervantes es 'Don Quijote de la Mancha'."),
(74, 1, "¿Cuál es el autor de la novela 'Matar a un ruiseñor'?", '{"respuestas": ["Harper Lee", "William Faulkner", "Ernest Hemingway", "F. Scott Fitzgerald"], "respuestas_correctas": "Harper Lee"}', "El autor de la novela 'Matar a un ruiseñor' es Harper Lee."),
(74, 1, "¿Quién escribió la obra de teatro 'Hamlet'?", '{"respuestas": ["William Shakespeare", "Oscar Wilde", "Samuel Beckett", "Tennessee Williams"], "respuestas_correctas": "William Shakespeare"}', "La obra de teatro 'Hamlet' fue escrita por William Shakespeare."),
(74, 1, "¿Cuál es el autor de la novela 'Cien años de soledad'?", '{"respuestas": ["Gabriel García Márquez", "Mario Vargas Llosa", "Isabel Allende", "Octavio Paz"], "respuestas_correctas": "Gabriel García Márquez"}', "El autor de la novela 'Cien años de soledad' es Gabriel García Márquez."),
(74, 1, "¿Quién es el autor de la novela 'La naranja mecánica'?", '{"respuestas": ["Anthony Burgess", "George Orwell", "Aldous Huxley", "Ray Bradbury"], "respuestas_correctas": "Anthony Burgess"}', "El autor de la novela 'La naranja mecánica' es Anthony Burgess.");

-- Preguntas para el test 5 de Literatura
INSERT INTO preguntas (id_test, tipo_pregunta, nombre_pregunta, datos_pregunta, retroalimentacion) VALUES
(75, 1, "¿Cuál es el nombre completo del autor de 'Don Quijote de la Mancha'?", '{"respuestas": ["Miguel de Unamuno", "Miguel Hernández", "Miguel de Cervantes", "Miguel Delibes"], "respuestas_correctas": "Miguel de Cervantes"}', "El nombre completo del autor de 'Don Quijote de la Mancha' es Miguel de Cervantes."),
(75, 1, "¿Cuál es el nombre de la protagonista femenina de la novela 'Orgullo y Prejuicio'?", '{"respuestas": ["Catherine Earnshaw", "Elizabeth Bennet", "Emma Bovary", "Anna Karenina"], "respuestas_correctas": "Elizabeth Bennet"}', "La protagonista femenina de la novela 'Orgullo y Prejuicio' se llama Elizabeth Bennet."),
(75, 1, "¿En qué país nació el autor de la novela 'Cien años de soledad'?", '{"respuestas": ["Colombia", "México", "Argentina", "Perú"], "respuestas_correctas": "Colombia"}', "El autor de la novela 'Cien años de soledad' nació en Colombia."),
(75, 1, "¿Cuál es el título de la obra más famosa de Shakespeare?", '{"respuestas": ["Romeo y Julieta", "Hamlet", "Macbeth", "Otelo"], "respuestas_correctas": "Hamlet"}', "La obra más famosa de Shakespeare es 'Hamlet'."),
(75, 1, "¿Quién escribió 'El retrato de Dorian Gray'?", '{"respuestas": ["Oscar Wilde", "Edgar Allan Poe", "Herman Melville", "Ernest Hemingway"], "respuestas_correctas": "Oscar Wilde"}', "'El retrato de Dorian Gray' fue escrito por Oscar Wilde."),
(75, 1, "¿En qué siglo nació el escritor francés Víctor Hugo?", '{"respuestas": ["XVIII", "XIX", "XX", "XXI"], "respuestas_correctas": "XIX"}', "Víctor Hugo, el escritor francés, nació en el siglo XIX."),
(75, 1, "¿De qué nacionalidad es el escritor Gabriel García Márquez?", '{"respuestas": ["Colombiano", "Argentino", "Mexicano", "Chileno"], "respuestas_correctas": "Colombiano"}', "El escritor Gabriel García Márquez es colombiano."),
(75, 1, "¿Quién escribió el libro 'Don Quijote de la Mancha'?", '{"respuestas": ["Miguel de Cervantes", "Gabriel García Márquez", "Pablo Neruda", "Julio Cortázar"], "respuestas_correctas": "Miguel de Cervantes"}', "El autor de 'Don Quijote de la Mancha' es Miguel de Cervantes."),
(75, 1, "¿Cuál es la obra más famosa de William Shakespeare?", '{"respuestas": ["Macbeth", "Romeo y Julieta", "Hamlet", "El Rey Lear"], "respuestas_correctas": "Hamlet"}', "La obra más famosa de William Shakespeare es 'Hamlet'."),
(75, 1, "¿Quién escribió el libro 'Cien años de soledad'?", '{"respuestas": ["Gabriel García Márquez", "Jorge Luis Borges", "Pablo Neruda", "Julio Cortázar"], "respuestas_correctas": "Gabriel García Márquez"}', "El autor de 'Cien años de soledad' es Gabriel García Márquez.");

-- Preguntas para el test 6 de Literatura
INSERT INTO preguntas (id_test, tipo_pregunta, nombre_pregunta, datos_pregunta, retroalimentacion) VALUES
(76, 1, "¿Cuál es el protagonista de la novela 'El gran Gatsby'?", '{"respuestas": ["Jay Gatsby", "Nick Carraway", "Daisy Buchanan", "Tom Buchanan"], "respuestas_correctas": "Jay Gatsby"}', "El protagonista de la novela 'El gran Gatsby' es Jay Gatsby."),
(76, 1, "¿Quién es el autor de la obra 'El retrato de Dorian Gray'?", '{"respuestas": ["Oscar Wilde", "Edgar Allan Poe", "Friedrich Nietzsche", "Mark Twain"], "respuestas_correctas": "Oscar Wilde"}', "El autor de la obra 'El retrato de Dorian Gray' es Oscar Wilde."),
(76, 1, "¿Cuál es el título de la primera novela de Jane Austen?", '{"respuestas": ["Sentido y sensibilidad", "Orgullo y prejuicio", "Emma", "La abadía de Northanger"], "respuestas_correctas": "La abadía de Northanger"}', "El título de la primera novela de Jane Austen es 'La abadía de Northanger'."),
(76, 1, "¿Quién es el autor de la obra 'El Aleph'?", '{"respuestas": ["Jorge Luis Borges", "Julio Cortázar", "Pablo Neruda", "Mario Vargas Llosa"], "respuestas_correctas": "Jorge Luis Borges"}', "El autor de la obra 'El Aleph' es Jorge Luis Borges."),
(76, 1, "¿Cuál es el título de la obra más famosa de Miguel de Unamuno?", '{"respuestas": ["Niebla", "La tía Tula", "Abel Sánchez", "San Manuel Bueno, mártir"], "respuestas_correctas": "Niebla"}', "El título de la obra más famosa de Miguel de Unamuno es 'Niebla'."),
(76, 1, "¿Quién es el autor de 'Cien años de soledad'?", '{"respuestas": ["Gabriel García Márquez", "Mario Vargas Llosa", "Jorge Luis Borges", "Pablo Neruda"], "respuestas_correctas": "Gabriel García Márquez"}', "El autor de 'Cien años de soledad' es Gabriel García Márquez."),
(76, 1, "¿Cuál es la obra más conocida de William Shakespeare?", '{"respuestas": ["Macbeth", "Hamlet", "Romeo y Julieta", "Otelo"], "respuestas_correctas": "Romeo y Julieta"}', "La obra más conocida de William Shakespeare es 'Romeo y Julieta'."),
(76, 1, "¿Cuál es el autor de 'Don Quijote de la Mancha'?", '{"respuestas": ["Miguel de Cervantes", "Federico García Lorca", "Jorge Luis Borges", "Pablo Neruda"], "respuestas_correctas": "Miguel de Cervantes"}', "El autor de 'Don Quijote de la Mancha' es Miguel de Cervantes."),
(76, 1, "¿Quién escribió 'La Odisea'?", '{"respuestas": ["Homero", "Virgilio", "Ovidio", "Horacio"], "respuestas_correctas": "Homero"}', "'La Odisea' fue escrita por Homero."),
(76, 1, "¿Quién es el autor de 'La Metamorfosis'?", '{"respuestas": ["Friedrich Nietzsche", "Franz Kafka", "Hermann Hesse", "Thomas Mann"], "respuestas_correctas": "Franz Kafka"}', "El autor de 'La Metamorfosis' es Franz Kafka.");

-- Preguntas para el test 7 de Literatura
INSERT INTO preguntas (id_test, tipo_pregunta, nombre_pregunta, datos_pregunta, retroalimentacion) VALUES
(77, 1, "¿Quién escribió 'El Quijote'?", '{"respuestas": ["Miguel de Cervantes", "Federico García Lorca", "Jorge Luis Borges", "Pablo Neruda"], "respuestas_correctas": "Miguel de Cervantes"}', "'El Quijote' fue escrito por Miguel de Cervantes."),
(77, 1, "¿Cuál es la obra más conocida de Gustave Flaubert?", '{"respuestas": ["Madame Bovary", "Ana Karenina", "Crimen y castigo", "El extranjero"], "respuestas_correctas": "Madame Bovary"}', "La obra más conocida de Gustave Flaubert es 'Madame Bovary'."),
(77, 1, "¿Quién es el autor de 'El retrato de Dorian Gray'?", '{"respuestas": ["Oscar Wilde", "James Joyce", "Virginia Woolf", "F. Scott Fitzgerald"], "respuestas_correctas": "Oscar Wilde"}', "El autor de 'El retrato de Dorian Gray' es Oscar Wilde"),
(77, 1, "¿Quién escribió 'Don Juan Tenorio'?", '{"respuestas": ["José Zorrilla", "Federico García Lorca", "Miguel de Cervantes", "Lope de Vega"], "respuestas_correctas": "José Zorrilla"}', "'Don Juan Tenorio' fue escrito por José Zorrilla en 1844."),
(77, 1, "¿Quién es el autor de 'La Celestina'?", '{"respuestas": ["Fernando de Rojas", "Miguel de Cervantes", "Lope de Vega", "Francisco de Quevedo"], "respuestas_correctas": "Fernando de Rojas"}', "'La Celestina' fue escrita por Fernando de Rojas a finales del siglo XV."),
(77, 1, "¿Quién escribió 'Cien años de soledad'?", '{"respuestas": ["Gabriel García Márquez", "Pablo Neruda", "Octavio Paz", "Jorge Luis Borges"], "respuestas_correctas": "Gabriel García Márquez"}', "'Cien años de soledad' fue escrito por Gabriel García Márquez en 1967."),
(77, 1, "¿Quién es el autor de 'El retrato de Dorian Gray'?", '{"respuestas": ["Oscar Wilde", "Ernest Hemingway", "Virginia Woolf", "Jane Austen"], "respuestas_correctas": "Oscar Wilde"}', "'El retrato de Dorian Gray' fue escrito por Oscar Wilde en 1890."),
(77, 1, "¿Quién escribió 'El Aleph'?", '{"respuestas": ["Jorge Luis Borges", "Pablo Neruda", "Octavio Paz", "Gabriel García Márquez"], "respuestas_correctas": "Jorge Luis Borges"}', "'El Aleph' fue escrito por Jorge Luis Borges en 1949."),
(77, 1, "¿Cuál es el autor de la novela 'Cien años de soledad'?", '{"respuestas": ["Gabriel García Márquez", "Mario Vargas Llosa", "Pablo Neruda", "Octavio Paz"], "respuestas_correctas": "Gabriel García Márquez"}', "'Cien años de soledad' fue escrita por Gabriel García Márquez."),
(77, 1, "¿Quién escribió 'La Iliada'?", '{"respuestas": ["Homero", "Virgilio", "Ovidio", "Sófocles"], "respuestas_correctas": "Homero"}', "'La Iliada' fue escrita por Homero.");

-- Preguntas para el test 8 de Literatura
INSERT INTO preguntas (id_test, tipo_pregunta, nombre_pregunta, datos_pregunta, retroalimentacion) VALUES
(78, 1, "¿Quién es el autor de la novela 'El Gran Gatsby'?", '{"A": "F. Scott Fitzgerald", "B": "Ernest Hemingway", "C": "John Steinbeck", "D": "J.D. Salinger"}', "F. Scott Fitzgerald"),
(78, 1, "¿Quién es el autor de la obra 'El reino de este mundo'?", '{"respuestas": ["Alejo Carpentier", "Jorge Luis Borges", "Pablo Neruda", "Julio Cortázar"], "respuestas_correctas": "Alejo Carpentier"}', "'El reino de este mundo' fue escrito por Alejo Carpentier."),
(78, 1, "¿Quién escribió 'El retrato de Dorian Gray'?", '{"respuestas": ["Oscar Wilde", "Jane Austen", "Virginia Woolf", "Emily Bronte"], "respuestas_correctas": "Oscar Wilde"}', "'El retrato de Dorian Gray' fue escrito por Oscar Wilde."),
(78, 1, "¿Quién es el autor de la obra 'La Casa de Bernarda Alba'?", '{"respuestas": ["Federico García Lorca", "Miguel de Cervantes", "Pablo Neruda", "Jorge Luis Borges"], "respuestas_correctas": "Federico García Lorca"}', "'La Casa de Bernarda Alba' fue escrita por Federico García Lorca."),
(78, 1, "¿Quién escribió la novela 'La náusea'?", '{"respuestas": ["Jean-Paul Sartre", "Albert Camus", "Franz Kafka", "Hermann Hesse"], "respuestas_correctas": "Jean-Paul Sartre"}', "'La náusea' fue escrita por Jean-Paul Sartre."),
(78, 1, "¿Quién escribió 'La divina comedia'?", '{"respuestas": ["Dante Alighieri", "Petrarca", "Boccaccio", "Giovanni Verga"], "respuestas_correctas": "Dante Alighieri"}', "'La divina comedia' fue escrita por Dante Alighieri."),
(78, 1, "¿Cuál es el autor de la novela 'Cien años de soledad'?", '{"respuestas": ["Gabriel García Márquez", "Mario Vargas Llosa", "Pablo Neruda", "Octavio Paz"], "respuestas_correctas": "Gabriel García Márquez"}', "'Cien años de soledad' fue escrita por Gabriel García Márquez."),
(78, 1, "¿Quién escribió 'La Iliada'?", '{"respuestas": ["Homero", "Virgilio", "Ovidio", "Sófocles"], "respuestas_correctas": "Homero"}', "'La Iliada' fue escrita por Homero."),
(78, 1, "¿Quién es el autor de la obra 'El reino de este mundo'?", '{"respuestas": ["Alejo Carpentier", "Jorge Luis Borges", "Pablo Neruda", "Julio Cortázar"], "respuestas_correctas": "Alejo Carpentier"}', "'El reino de este mundo' fue escrito por Alejo Carpentier."),
(78, 1, "¿Quién escribió 'El retrato de Dorian Gray'?", '{"respuestas": ["Oscar Wilde", "Jane Austen", "Virginia Woolf", "Emily Bronte"], "respuestas_correctas": "Oscar Wilde"}', "'El retrato de Dorian Gray' fue escrito por Oscar Wilde.");

-- Preguntas para el test 9 de Literatura
INSERT INTO preguntas (id_test, tipo_pregunta, nombre_pregunta, datos_pregunta, retroalimentacion) VALUES
(79, 1, "¿Quién es el autor de la obra 'La Casa de Bernarda Alba'?", '{"respuestas": ["Federico García Lorca", "Miguel de Cervantes", "Pablo Neruda", "Jorge Luis Borges"], "respuestas_correctas": "Federico García Lorca"}', "'La Casa de Bernarda Alba' fue escrita por Federico García Lorca."),
(79, 1, "¿Quién escribió la novela 'La náusea'?", '{"respuestas": ["Jean-Paul Sartre", "Albert Camus", "Franz Kafka", "Hermann Hesse"], "respuestas_correctas": "Jean-Paul Sartre"}', "'La náusea' fue escrita por Jean-Paul Sartre."),
(79, 1, "¿Quién escribió 'La divina comedia'?", '{"respuestas": ["Dante Alighieri", "Petrarca", "Boccaccio", "Giovanni Verga"], "respuestas_correctas": "Dante Alighieri"}', "'La divina comedia' fue escrita por Dante Alighieri."),
(79, 1, "¿Cuál es la obra más larga de Marcel Proust?", '{"respuestas": ["A la sombra de las muchachas en flor", "La fugitiva", "En busca del tiempo perdido", "El tiempo recobrado"], "respuestas_correctas": "En busca del tiempo perdido"}', "En busca del tiempo perdido es una obra de siete volúmenes del escritor francés Marcel Proust."),
(79, 1, "¿Quién es el autor de la novela 'Cien años de soledad'?", '{"respuestas": ["Jorge Luis Borges", "Gabriel García Márquez", "Mario Vargas Llosa", "Julio Cortázar"], "respuestas_correctas": "Gabriel García Márquez"}', "'Cien años de soledad' es una novela del escritor colombiano Gabriel García Márquez."),
(79, 1, "¿Qué poeta inglés escribió 'Paraíso perdido'?", '{"respuestas": ["John Keats", "William Wordsworth", "Percy Bysshe Shelley", "John Milton"], "respuestas_correctas": "John Milton"}', "'Paraíso perdido' es un poema épico escrito por el poeta inglés John Milton."),
(79, 1, "¿Quién escribió el poema 'La Divina Comedia'?", '{"respuestas": ["Giovanni Boccaccio", "Dante Alighieri", "Petrarca", "Giacomo Leopardi"], "respuestas_correctas": "Dante Alighieri"}', "'La Divina Comedia' es un poema escrito por el poeta italiano Dante Alighieri."),
(79, 1, "¿Quién escribió el poema épico 'Beowulf'?", '{"respuestas": ["Geoffrey Chaucer", "John Milton", "William Shakespeare", "Autor anónimo"], "respuestas_correctas": "Autor anónimo"}', "'Beowulf' es un poema épico escrito en inglés antiguo y se cree que su autor es anónimo."),
(79, 1, "¿Quién escribió la obra teatral 'Esperando a Godot'?", '{"respuestas": ["Eugène Ionesco", "Samuel Beckett", "Harold Pinter", "Tom Stoppard"], "respuestas_correctas": "Samuel Beckett"}', "'Esperando a Godot' es una obra teatral del escritor irlandés Samuel Beckett."),
(79, 1, "¿Quién es el autor de la novela 'Ulises'?", '{"respuestas": ["James Joyce", "Ernest Hemingway", "F. Scott Fitzgerald", "Virginia Woolf"], "respuestas_correctas": "James Joyce"}', "'Ulises' es una novela del escritor irlandés James Joyce.");

-- Preguntas para el test 10 de Literatura
INSERT INTO preguntas (id_test, tipo_pregunta, nombre_pregunta, datos_pregunta, retroalimentacion) VALUES
(80, 1, "¿En qué novela aparece el personaje Holden Caulfield?", '{"respuestas": ["El guardián entre el centeno", "1984", "La naranja mecánica", "Crónica de una muerte anunciada"], "respuestas_correctas": "El guardián entre el centeno"}', "'El guardián entre el centeno' es una novela escrita por J.D. Salinger en la que aparece el personaje Holden Caulfield."),
(80, 1, "¿Quién escribió 'El amor en los tiempos del cólera'?", '{"respuestas": ["Gabriel García Márquez", "Mario Vargas Llosa", "Pablo Neruda", "Octavio Paz"], "respuestas_correctas": "Gabriel García Márquez"}', "'El amor en los tiempos del cólera' es una novela escrita por Gabriel García Márquez."),
(80, 1, "¿En qué obra de Shakespeare aparece el personaje Lady Macbeth?", '{"respuestas": ["Macbeth", "Romeo y Julieta", "Hamlet", "El Rey Lear"], "respuestas_correctas": "Macbeth"}', "Correcto, Lady Macbeth es uno de los personajes principales de la obra 'Macbeth' de Shakespeare."),
(80, 1, "¿Quién escribió el poema 'La Divina Comedia'?", '{"respuestas": ["Dante Alighieri", "Petrarca", "Boccaccio", "Leonardo da Vinci"], "respuestas_correctas": "Dante Alighieri"}', "Exacto, 'La Divina Comedia' fue escrita por Dante Alighieri."),
(80, 1, "¿De qué nacionalidad era el escritor Jorge Luis Borges?", '{"respuestas": ["Argentino", "Colombiano", "Español", "Mexicano"], "respuestas_correctas": "Argentino"}', "Muy bien, Jorge Luis Borges fue un escritor argentino reconocido internacionalmente."),
(80, 1, "¿Quién escribió 'El Aleph'?", '{"respuestas": ["Jorge Luis Borges", "Gabriel García Márquez", "Pablo Neruda", "Octavio Paz"], "respuestas_correctas": "Jorge Luis Borges"}', "'El Aleph' es una obra del escritor argentino Jorge Luis Borges."),
(80, 1, "¿Cuál es el título de la obra más famosa de Federico García Lorca?", '{"respuestas": ["La Casa de Bernarda Alba", "Bodas de Sangre", "Yerma", "Doña Rosita la soltera"], "respuestas_correctas": "Bodas de Sangre"}', "Así es, 'Bodas de Sangre' es una de las obras más importantes del poeta y dramaturgo español Federico García Lorca."),
(80, 1, "¿En qué obra de Shakespeare aparece el personaje Hamlet?", '{"respuestas": ["Hamlet", "Macbeth", "Romeo y Julieta", "El Rey Lear"], "respuestas_correctas": "Hamlet"}', "Muy bien, el personaje Hamlet es el protagonista de la obra del mismo nombre escrita por Shakespeare."),
(80, 1, "¿Quién escribió la novela 'Cien años de soledad'?", '{"respuestas": ["Gabriel García Márquez", "Mario Vargas Llosa", "Jorge Luis Borges", "Pablo Neruda"], "respuestas_correctas": "Gabriel García Márquez"}', "'Cien años de soledad' es una novela del escritor colombiano Gabriel García Márquez."),
(80, 1, "¿Cuál es el título de la obra más famosa de Miguel de Unamuno?", '{"respuestas": ["Niebla", "San Manuel Bueno, mártir", "Abel Sánchez", "La tía Tula"], "respuestas_correctas": "Niebla"}', "Correcto, 'Niebla' es una de las obras más famosas de Miguel de Unamuno.");

-- Renumera el id de PREGUNTAS
SET foreign_key_checks = 0;

SET @newid := 0;
UPDATE preguntas SET id = (@newid := @newid + 1) ORDER BY id;

SET foreign_key_checks = 1;
