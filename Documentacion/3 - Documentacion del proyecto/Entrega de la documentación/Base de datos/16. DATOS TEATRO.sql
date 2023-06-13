-- Datos para la tabla TESTS para los test de Teatro del tipo tipo de pregunta 2 multiples respuestas
INSERT INTO tests (id_materia, nombre_test, descripcion, id_usuario_creador) VALUES
(4, 'Teatro 01', 'Test 01 sobre la materia de Teatro de multiples respuestas.', 1),
(4, 'Teatro 02', 'Test 02 sobre la materia de Teatro de multiples respuestas.', 1),
(4, 'Teatro 03', 'Test 03 sobre la materia de Teatro de multiples respuestas.', 1),
(4, 'Teatro 04', 'Test 04 sobre la materia de Teatro de multiples respuestas.', 1),
(4, 'Teatro 05', 'Test 05 sobre la materia de Teatro de multiples respuestas.', 1);

-- Datos para la tabla TESTS para los test de Teatro del tipo tipo de pregunta 2 multiples respuestas
INSERT INTO tests (id_materia, nombre_test, descripcion, id_usuario_creador) VALUES
(4, 'Teatro 06', 'Test 06 sobre la materia de Teatro de respuesta única.', 1),
(4, 'Teatro 07', 'Test 07 sobre la materia de Teatro de respuesta única.', 1),
(4, 'Teatro 08', 'Test 08 sobre la materia de Teatro de respuesta única.', 1),
(4, 'Teatro 09', 'Test 09 sobre la materia de Teatro de respuesta única.', 1),
(4, 'Teatro 10', 'Test 10 sobre la materia de Teatro de respuesta única.', 1);

SET foreign_key_checks = 0;

SET @newid := 0;
UPDATE tests SET id = (@newid := @newid + 1) ORDER BY id;

SET foreign_key_checks = 1;

-- Datos para la tabla PREGUNTAS de la MATERIA "Teatro" para el tipo de pregunta 2 multiples respuestas

-- Preguntas para el test 1 de Teatro
INSERT INTO preguntas (id_test, tipo_pregunta, nombre_pregunta, datos_pregunta, retroalimentacion) VALUES
(151, 2, '¿Quién escribió la obra de teatro "Hamlet"?', '{"respuestas": ["William Shakespeare", "Federico García Lorca", "Antón Chéjov", "Tennessee Williams"], "respuestas_correctas": ["William Shakespeare", "Federico García Lorca"]}', null),
(151, 2, '¿Cuál de las siguientes obras es escrita por Arthur Miller?', '{"respuestas": ["La muerte de un viajante", "Esperando a Godot", "Romeo y Julieta", "El avaro"], "respuestas_correctas": ["La muerte de un viajante", "Esperando a Godot"]}', null),
(151, 2, '¿Quién es el autor de la obra de teatro "Esperando a Godot"?', '{"respuestas": ["Samuel Beckett", "Tennessee Williams", "Arthur Miller", "Federico García Lorca"], "respuestas_correctas": ["Samuel Beckett", "Federico García Lorca"]}', null),
(151, 2, '¿Cuál de las siguientes obras es una tragedia de Sófocles?', '{"respuestas": ["Edipo Rey", "Don Juan Tenorio", "El avaro", "Fuenteovejuna"], "respuestas_correctas": ["Edipo Rey", "Don Juan Tenorio"]}', null),
(151, 2, '¿Quién escribió la obra de teatro "Antígona"?', '{"respuestas": ["Sófocles", "Eurípides", "Aristófanes", "Plauto"], "respuestas_correctas": ["Sófocles", "Eurípides"]}', null),
(151, 2, '¿Cuál de las siguientes obras es una comedia de Molière?', '{"respuestas": ["El avaro", "Tartufo", "Don Juan Tenorio", "Fuenteovejuna"], "respuestas_correctas": ["El avaro", "Tartufo"]}', null),
(151, 2, '¿Quién escribió la obra de teatro "Romeo y Julieta"?', '{"respuestas": ["William Shakespeare", "Federico García Lorca", "Antón Chéjov", "Tennessee Williams"], "respuestas_correctas": ["William Shakespeare", "Federico García Lorca"]}', null),
(151, 2, '¿Cuál de las siguientes obras es una tragedia de William Shakespeare?', '{"respuestas": ["Macbeth", "Otelo", "Hamlet", "El rey Lear"], "respuestas_correctas": ["Macbeth", "Otelo"]}', null),
(151, 2, '¿Quién es el autor de la obra de teatro "La gaviota"?', '{"respuestas": ["Antón Chéjov", "Henrik Ibsen", "Arthur Miller", "Federico García Lorca"], "respuestas_correctas": ["Antón Chéjov", "Henrik Ibsen"]}', null),
(151, 2, '¿Quién escribió la obra de teatro "Hamlet"?', '{"respuestas": ["William Shakespeare", "Federico García Lorca", "Antón Chéjov", "Tennessee Williams"], "respuestas_correctas": ["William Shakespeare", "Federico García Lorca"]}', null);

-- Preguntas para el test 2 de Teatro
INSERT INTO preguntas (id_test, tipo_pregunta, nombre_pregunta, datos_pregunta, retroalimentacion) VALUES
(152, 2, '¿Cuál de las siguientes obras es escrita por Arthur Miller?', '{"respuestas": ["La muerte de un viajante", "Esperando a Godot", "Romeo y Julieta", "El avaro"], "respuestas_correctas": ["La muerte de un viajante", "Esperando a Godot"]}', null),
(152, 2, '¿Quién es el autor de la obra de teatro "Esperando a Godot"?', '{"respuestas": ["Samuel Beckett", "Tennessee Williams", "Arthur Miller", "Federico García Lorca"], "respuestas_correctas": ["Samuel Beckett", "Federico García Lorca"]}', null),
(152, 2, '¿Cuál de las siguientes obras es una tragedia de Sófocles?', '{"respuestas": ["Edipo Rey", "Don Juan Tenorio", "El avaro", "Fuenteovejuna"], "respuestas_correctas": ["Edipo Rey", "Don Juan Tenorio"]}', null),
(152, 2, '¿Quién escribió la obra de teatro "Antígona"?', '{"respuestas": ["Sófocles", "Eurípides", "Aristófanes", "Plauto"], "respuestas_correctas": ["Sófocles", "Eurípides"]}', null),
(152, 2, '¿Cuál de las siguientes obras es una comedia de Molière?', '{"respuestas": ["El avaro", "Tartufo", "Don Juan Tenorio", "Fuenteovejuna"], "respuestas_correctas": ["El avaro", "Tartufo"]}', null),
(152, 2, '¿Quién escribió la obra de teatro "Romeo y Julieta"?', '{"respuestas": ["William Shakespeare", "Federico García Lorca", "Antón Chéjov", "Tennessee Williams"], "respuestas_correctas": ["William Shakespeare", "Federico García Lorca"]}', null),
(152, 2, '¿Cuál de las siguientes obras es una tragedia de William Shakespeare?', '{"respuestas": ["Macbeth", "Otelo", "Hamlet", "El rey Lear"], "respuestas_correctas": ["Macbeth", "Otelo"]}', null),
(152, 2, '¿Quién es el autor de la obra de teatro "La gaviota"?', '{"respuestas": ["Antón Chéjov", "Henrik Ibsen", "Arthur Miller", "Federico García Lorca"], "respuestas_correctas": ["Antón Chéjov", "Henrik Ibsen"]}', null),
(152, 2, '¿Quién escribió la obra de teatro "Hamlet"?', '{"respuestas": ["William Shakespeare", "Federico García Lorca", "Antón Chéjov", "Tennessee Williams"], "respuestas_correctas": ["William Shakespeare", "Federico García Lorca"]}', null),
(152, 2, '¿Cuál de las siguientes obras es escrita por Arthur Miller?', '{"respuestas": ["La muerte de un viajante", "Esperando a Godot", "Romeo y Julieta", "El avaro"], "respuestas_correctas": ["La muerte de un viajante", "Esperando a Godot"]}', null);

-- Preguntas para el test 3 de Teatro
INSERT INTO preguntas (id_test, tipo_pregunta, nombre_pregunta, datos_pregunta, retroalimentacion) VALUES
(153, 2, '¿Quién es el autor de la obra de teatro "Esperando a Godot"?', '{"respuestas": ["Samuel Beckett", "Tennessee Williams", "Arthur Miller", "Federico García Lorca"], "respuestas_correctas": ["Samuel Beckett", "Federico García Lorca"]}', null),
(153, 2, '¿Cuál de las siguientes obras es una tragedia de Sófocles?', '{"respuestas": ["Edipo Rey", "Don Juan Tenorio", "El avaro", "Fuenteovejuna"], "respuestas_correctas": ["Edipo Rey", "Don Juan Tenorio"]}', null),
(153, 2, '¿Quién escribió la obra de teatro "Antígona"?', '{"respuestas": ["Sófocles", "Eurípides", "Aristófanes", "Plauto"], "respuestas_correctas": ["Sófocles", "Eurípides"]}', null),
(153, 2, '¿Cuál de las siguientes obras es una comedia de Molière?', '{"respuestas": ["El avaro", "Tartufo", "Don Juan Tenorio", "Fuenteovejuna"], "respuestas_correctas": ["El avaro", "Tartufo"]}', null),
(153, 2, '¿Quién escribió la obra de teatro "Romeo y Julieta"?', '{"respuestas": ["William Shakespeare", "Federico García Lorca", "Antón Chéjov", "Tennessee Williams"], "respuestas_correctas": ["William Shakespeare", "Federico García Lorca"]}', null),
(153, 2, '¿Cuál de las siguientes obras es una tragedia de William Shakespeare?', '{"respuestas": ["Macbeth", "Otelo", "Hamlet", "El rey Lear"], "respuestas_correctas": ["Macbeth", "Otelo"]}', null),
(153, 2, '¿Quién es el autor de la obra de teatro "La gaviota"?', '{"respuestas": ["Antón Chéjov", "Henrik Ibsen", "Arthur Miller", "Federico García Lorca"], "respuestas_correctas": ["Antón Chéjov", "Henrik Ibsen"]}', null),
(153, 2, '¿Quién escribió la obra de teatro "Hamlet"?', '{"respuestas": ["William Shakespeare", "Federico García Lorca", "Antón Chéjov", "Tennessee Williams"], "respuestas_correctas": ["William Shakespeare", "Federico García Lorca"]}', null),
(153, 2, '¿Cuál de las siguientes obras es escrita por Arthur Miller?', '{"respuestas": ["La muerte de un viajante", "Esperando a Godot", "Romeo y Julieta", "El avaro"], "respuestas_correctas": ["La muerte de un viajante", "Esperando a Godot"]}', null),
(153, 2, '¿Quién es el autor de la obra de teatro "Esperando a Godot"?', '{"respuestas": ["Samuel Beckett", "Tennessee Williams", "Arthur Miller", "Federico García Lorca"], "respuestas_correctas": ["Samuel Beckett", "Federico García Lorca"]}', null);

-- Preguntas para el test 4 de Teatro
INSERT INTO preguntas (id_test, tipo_pregunta, nombre_pregunta, datos_pregunta, retroalimentacion) VALUES
(154, 2, '¿Cuál de las siguientes obras es una tragedia de Sófocles?', '{"respuestas": ["Edipo Rey", "Don Juan Tenorio", "El avaro", "Fuenteovejuna"], "respuestas_correctas": ["Edipo Rey", "Don Juan Tenorio"]}', null),
(154, 2, '¿Quién escribió la obra de teatro "Antígona"?', '{"respuestas": ["Sófocles", "Eurípides", "Aristófanes", "Plauto"], "respuestas_correctas": ["Sófocles", "Eurípides"]}', null),
(154, 2, '¿Cuál de las siguientes obras es una comedia de Molière?', '{"respuestas": ["El avaro", "Tartufo", "Don Juan Tenorio", "Fuenteovejuna"], "respuestas_correctas": ["El avaro", "Tartufo"]}', null),
(154, 2, '¿Quién escribió la obra de teatro "Romeo y Julieta"?', '{"respuestas": ["William Shakespeare", "Federico García Lorca", "Antón Chéjov", "Tennessee Williams"], "respuestas_correctas": ["William Shakespeare", "Federico García Lorca"]}', null),
(154, 2, '¿Cuál de las siguientes obras es una tragedia de William Shakespeare?', '{"respuestas": ["Macbeth", "Otelo", "Hamlet", "El rey Lear"], "respuestas_correctas": ["Macbeth", "Otelo"]}', null),
(154, 2, '¿Quién es el autor de la obra de teatro "La gaviota"?', '{"respuestas": ["Antón Chéjov", "Henrik Ibsen", "Arthur Miller", "Federico García Lorca"], "respuestas_correctas": ["Antón Chéjov", "Henrik Ibsen"]}', null),
(154, 2, '¿Quién escribió la obra de teatro "Hamlet"?', '{"respuestas": ["William Shakespeare", "Federico García Lorca", "Antón Chéjov", "Tennessee Williams"], "respuestas_correctas": ["William Shakespeare", "Federico García Lorca"]}', null),
(154, 2, '¿Cuál de las siguientes obras es escrita por Arthur Miller?', '{"respuestas": ["La muerte de un viajante", "Esperando a Godot", "Romeo y Julieta", "El avaro"], "respuestas_correctas": ["La muerte de un viajante", "Esperando a Godot"]}', null),
(154, 2, '¿Quién es el autor de la obra de teatro "Esperando a Godot"?', '{"respuestas": ["Samuel Beckett", "Tennessee Williams", "Arthur Miller", "Federico García Lorca"], "respuestas_correctas": ["Samuel Beckett", "Federico García Lorca"]}', null),
(154, 2, '¿Cuál de las siguientes obras es una tragedia de Sófocles?', '{"respuestas": ["Edipo Rey", "Don Juan Tenorio", "El avaro", "Fuenteovejuna"], "respuestas_correctas": ["Edipo Rey", "Don Juan Tenorio"]}', null);

-- Preguntas para el test 5 de Teatro
INSERT INTO preguntas (id_test, tipo_pregunta, nombre_pregunta, datos_pregunta, retroalimentacion) VALUES
(155, 2, '¿Quién escribió la obra de teatro "Antígona"?', '{"respuestas": ["Sófocles", "Eurípides", "Aristófanes", "Plauto"], "respuestas_correctas": ["Sófocles", "Eurípides"]}', null),
(155, 2, '¿Cuál de las siguientes obras es una comedia de Molière?', '{"respuestas": ["El avaro", "Tartufo", "Don Juan Tenorio", "Fuenteovejuna"], "respuestas_correctas": ["El avaro", "Tartufo"]}', null),
(155, 2, '¿Quién escribió la obra de teatro "Romeo y Julieta"?', '{"respuestas": ["William Shakespeare", "Federico García Lorca", "Antón Chéjov", "Tennessee Williams"], "respuestas_correctas": ["William Shakespeare", "Federico García Lorca"]}', null),
(155, 2, '¿Cuál de las siguientes obras es una tragedia de William Shakespeare?', '{"respuestas": ["Macbeth", "Otelo", "Hamlet", "El rey Lear"], "respuestas_correctas": ["Macbeth", "Otelo"]}', null),
(155, 2, '¿Quién es el autor de la obra de teatro "La gaviota"?', '{"respuestas": ["Antón Chéjov", "Henrik Ibsen", "Arthur Miller", "Federico García Lorca"], "respuestas_correctas": ["Antón Chéjov", "Henrik Ibsen"]}', null),
(155, 2, '¿Cuál de las siguientes obras es escrita por William Shakespeare?', '{"respuestas": ["Hamlet", "Romeo y Julieta", "Don Quijote", "Macbeth"], "respuestas_correctas": ["Hamlet", "Romeo y Julieta"]}', null),
(155, 2, '¿Quién es el autor de la obra de teatro "La Casa de Bernarda Alba"?', '{"respuestas": ["Federico García Lorca", "Antón Chéjov", "Samuel Beckett", "Henrik Ibsen"], "respuestas_correctas": ["Federico García Lorca", "Antón Chéjov"]}', null),
(155, 2, '¿Cuál de las siguientes obras es una comedia de William Shakespeare?', '{"respuestas": ["El sueño de una noche de verano", "Edipo Rey", "Esperando a Godot", "La Odisea"], "respuestas_correctas": ["El sueño de una noche de verano", "La Odisea"]}', null),
(155, 2, '¿Quién escribió la obra de teatro "Esperando a Godot"?', '{"respuestas": ["Samuel Beckett", "Tennessee Williams", "Arthur Miller", "Federico García Lorca"], "respuestas_correctas": ["Samuel Beckett", "Federico García Lorca"]}', null),
(155, 2, '¿Cuál de las siguientes obras es una tragedia de Sófocles?', '{"respuestas": ["Edipo Rey", "Don Juan Tenorio", "El avaro", "Fuenteovejuna"], "respuestas_correctas": ["Edipo Rey", "Don Juan Tenorio"]}', null);

/********************************************************************************************************/
/********************************************************************************************************/

-- Datos para la tabla PREGUNTAS de la MATERIA "Teatro" para el tipo de pregunta 1 respuesta única

/********************************************************************************************************/
/********************************************************************************************************/

-- Preguntas para el test 6 de Teatro
INSERT INTO preguntas (id_test, tipo_pregunta, nombre_pregunta, datos_pregunta, retroalimentacion) VALUES
(156, 1, '¿Cuál de los siguientes dramaturgos es conocido por su obra "Esperando a Godot"?', '{"respuestas": ["Samuel Beckett", "William Shakespeare", "Antón Chéjov", "Federico García Lorca"], "respuestas_correctas": "Samuel Beckett"}', null),
(156, 1, '¿Quién escribió la obra de teatro "La casa de Bernarda Alba"?', '{"respuestas": ["Federico García Lorca", "Samuel Beckett", "William Shakespeare", "Antón Chéjov"], "respuestas_correctas": "Federico García Lorca"}', null),
(156, 1, '¿Cuál de las siguientes obras de teatro es una tragedia de William Shakespeare?', '{"respuestas": ["Romeo y Julieta", "La importancia de llamarse Ernesto", "Esperando a Godot", "La casa de Bernarda Alba"], "respuestas_correctas": "Romeo y Julieta"}', null),
(156, 1, '¿Quién es el autor de la obra de teatro "La Celestina"?', '{"respuestas": ["Fernando de Rojas", "Federico García Lorca", "Samuel Beckett", "William Shakespeare"], "respuestas_correctas": "Fernando de Rojas"}', null),
(156, 1, '¿Cuál de las siguientes obras de teatro es una comedia de Molière?', '{"respuestas": ["El burgués gentilhombre", "Esperando a Godot", "La casa de Bernarda Alba", "Romeo y Julieta"], "respuestas_correctas": "El burgués gentilhombre"}', null),
(156, 1, '¿Quién es el autor de la obra de teatro "Las brujas de Salem"?', '{"respuestas": ["Arthur Miller", "Samuel Beckett", "William Shakespeare", "Antón Chéjov"], "respuestas_correctas": "Arthur Miller"}', null),
(156, 1, '¿Cuál de las siguientes obras de teatro es una comedia de Aristófanes?', '{"respuestas": ["Las avispas", "Esperando a Godot", "La casa de Bernarda Alba", "Romeo y Julieta"], "respuestas_correctas": "Las avispas"}', null),
(156, 1, '¿Cuál de las siguientes obras es escrita por William Shakespeare?', '{"respuestas": ["Romeo y Julieta", "La casa de Bernarda Alba", "Esperando a Godot", "Don Quijote"], "respuestas_correctas": "Romeo y Julieta"}', null),
(156, 1, '¿Quién escribió la obra de teatro "La casa de Bernarda Alba"?', '{"respuestas": ["Federico García Lorca", "Arthur Miller", "Samuel Beckett", "William Shakespeare"], "respuestas_correctas": "Federico García Lorca"}', null),
(156, 1, '¿Cuál de las siguientes obras es una tragedia de William Shakespeare?', '{"respuestas": ["Macbeth", "Fuenteovejuna", "La importancia de llamarse Ernesto", "Las brujas de Salem"], "respuestas_correctas": "Macbeth"}', null);

-- Preguntas para el test 7 de Teatro
INSERT INTO preguntas (id_test, tipo_pregunta, nombre_pregunta, datos_pregunta, retroalimentacion) VALUES
(157, 1, '¿Quién escribió la obra de teatro "La vida es sueño"?', '{"respuestas": ["Pedro Calderón de la Barca", "Federico García Lorca", "Samuel Beckett", "William Shakespeare"], "respuestas_correctas": "Pedro Calderón de la Barca"}', null),
(157, 1, '¿Cuál de las siguientes obras es una tragedia de Sófocles?', '{"respuestas": ["Edipo Rey", "Hamlet", "Esperando a Godot", "Don Quijote"], "respuestas_correctas": "Edipo Rey"}', null),
(157, 1, '¿Quién escribió la obra de teatro "Un tranvía llamado Deseo"?', '{"respuestas": ["Tennessee Williams", "Arthur Miller", "Samuel Beckett", "William Shakespeare"], "respuestas_correctas": "Tennessee Williams"}', null),
(157, 1, '¿Cuál de las siguientes obras es una comedia de Lope de Vega?', '{"respuestas": ["Fuenteovejuna", "Esperando a Godot", "La casa de Bernarda Alba", "Romeo y Julieta"], "respuestas_correctas": "Fuenteovejuna"}', null),
(157, 1, '¿Quién es el autor de la obra de teatro "Esperando la carroza"?', '{"respuestas": ["Jacobo Langsner", "Federico García Lorca", "Samuel Beckett", "William Shakespeare"], "respuestas_correctas": "Jacobo Langsner"}', null),
(157, 1, '¿Cuál de las siguientes obras es una tragedia de Eurípides?', '{"respuestas": ["Medea", "El burgués gentilhombre", "La importancia de llamarse Ernesto", "Las brujas de Salem"], "respuestas_correctas": "Medea"}', null),
(157, 1, '¿Quién escribió la obra de teatro "El Rey Lear"?', '{"respuestas": ["William Shakespeare", "Federico García Lorca", "Samuel Beckett", "Antón Chéjov"], "respuestas_correctas": "William Shakespeare"}', null),
(157, 1, '¿Cuál de las siguientes obras es una comedia de Carlo Goldoni?', '{"respuestas": ["El servidor de dos amos", "Esperando a Godot", "La casa de Bernarda Alba", "Romeo y Julieta"], "respuestas_correctas": "El servidor de dos amos"}', null),
(157, 1, '¿Quién es el autor de la obra de teatro "Tartufo"?', '{"respuestas": ["Molière", "Samuel Beckett", "William Shakespeare", "Antón Chéjov"], "respuestas_correctas": "Molière"}', null),
(157, 1, '¿Cuál de las siguientes obras es una comedia de Oscar Wilde?', '{"respuestas": ["El retrato de Dorian Gray", "Esperando a Godot", "La casa de Bernarda Alba", "Romeo y Julieta"], "respuestas_correctas": "El retrato de Dorian Gray"}', null);

-- Preguntas para el test 8 de Teatro
INSERT INTO preguntas (id_test, tipo_pregunta, nombre_pregunta, datos_pregunta, retroalimentacion) VALUES
(158, 1, '¿Quién es el autor de la obra de teatro "Esperando a Godot"?', '{"respuestas": ["Samuel Beckett", "Jacobo Langsner", "Federico García Lorca", "William Shakespeare"], "respuestas_correctas": "Samuel Beckett"}', null),
(158, 1, '¿Cuál de las siguientes obras es una comedia de Molière?', '{"respuestas": ["El avaro", "Esperando a Godot", "La casa de Bernarda Alba", "Romeo y Julieta"], "respuestas_correctas": "El avaro"}', null),
(158, 1, '¿Quién escribió la obra de teatro "Antígona"?', '{"respuestas": ["Sófocles", "Federico García Lorca", "Samuel Beckett", "Antón Chéjov"], "respuestas_correctas": "Sófocles"}', null),
(158, 1, '¿Cuál de las siguientes obras es una tragedia de William Shakespeare?', '{"respuestas": ["Otelo", "Esperando a Godot", "La casa de Bernarda Alba", "Romeo y Julieta"], "respuestas_correctas": "Otelo"}', null),
(158, 1, '¿Quién es el autor de la obra de teatro "La gaviota"?', '{"respuestas": ["Antón Chéjov", "Samuel Beckett", "William Shakespeare", "Federico García Lorca"], "respuestas_correctas": "Antón Chéjov"}', null),
(158, 1, '¿Cuál de las siguientes obras es una comedia de Carlo Goldoni?', '{"respuestas": ["El servidor de dos amos", "Esperando a Godot", "La casa de Bernarda Alba", "Romeo y Julieta"], "respuestas_correctas": "El servidor de dos amos"}', null),
(158, 1, '¿Cuál de las siguientes obras es escrita por William Shakespeare?', '{"respuestas": ["La casa de Bernarda Alba", "Hamlet", "Macbeth", "Otelo"], "respuestas_correctas": "Hamlet"}', null),
(158, 1, '¿Quién escribió la obra de teatro "La casa de Bernarda Alba"?', '{"respuestas": ["Federico García Lorca", "Antón Chéjov", "Molière", "Tennessee Williams"], "respuestas_correctas": "Federico García Lorca"}', null),
(158, 1, '¿Quién escribió la obra de teatro "El Rey Lear"?', '{"respuestas": ["William Shakespeare", "Federico García Lorca", "Samuel Beckett", "Antón Chéjov"], "respuestas_correctas": "William Shakespeare"}', null),
(158, 1, '¿Quién es el autor de la obra de teatro "Esperando a Godot"?', '{"respuestas": ["Samuel Beckett", "Tennessee Williams", "Arthur Miller", "Antón Chéjov"], "respuestas_correctas": "Samuel Beckett"}', null);

-- Preguntas para el test 9 de Teatro
INSERT INTO preguntas (id_test, tipo_pregunta, nombre_pregunta, datos_pregunta, retroalimentacion) VALUES
(159, 1, '¿Quién escribió la obra de teatro "La casa de Bernarda Alba"?', '{"respuestas": ["Federico García Lorca", "Antón Chéjov", "Molière", "Tennessee Williams"], "respuestas_correctas": "Federico García Lorca"}', null),
(159, 1, '¿Quién escribió la obra de teatro "Antígona"?', '{"respuestas": ["Sófocles", "Eurípides", "Aristófanes", "Plauto"], "respuestas_correctas": "Sófocles"}', null),
(159, 1, '¿Cuál de las siguientes obras es una tragedia de William Shakespeare?', '{"respuestas": ["Otelo", "Hamlet", "Romeo y Julieta", "El rey Lear"], "respuestas_correctas": "Otelo"}', null),
(159, 1, '¿Quién es el autor de la obra de teatro "La gaviota"?', '{"respuestas": ["Antón Chéjov", "Henrik Ibsen", "Arthur Miller", "Federico García Lorca"], "respuestas_correctas": "Antón Chéjov"}', null),
(159, 1, '¿Cuál de las siguientes obras es una comedia de Carlo Goldoni?', '{"respuestas": ["Don Juan Tenorio", "La locandiera", "Don Quijote", "Don Juan Tenorio"], "respuestas_correctas": "La locandiera"}', null),
(159, 1, '¿Quién es el autor de la obra de teatro "Esperando a Godot"?', '{"respuestas": ["Samuel Beckett", "Tennessee Williams", "Arthur Miller", "Antón Chéjov"], "respuestas_correctas": "Samuel Beckett"}', null),
(159, 1, '¿Cuál de las siguientes obras es una comedia de Molière?', '{"respuestas": ["Hamlet", "Tartufo", "Don Juan Tenorio", "Fuenteovejuna"], "respuestas_correctas": "Tartufo"}', null),
(159, 1, '¿Quién escribió la obra de teatro "Antígona"?', '{"respuestas": ["Sófocles", "Eurípides", "Aristófanes", "Plauto"], "respuestas_correctas": "Sófocles"}', null),
(159, 1, '¿Cuál de las siguientes obras es una tragedia de William Shakespeare?', '{"respuestas": ["Hamlet", "Macbeth", "Romeo y Julieta", "El rey Lear"], "respuestas_correctas": "Macbeth"}', null),
(159, 1, '¿Quién es el autor de la obra de teatro "La gaviota"?', '{"respuestas": ["Antón Chéjov", "Henrik Ibsen", "Arthur Miller", "Federico García Lorca"], "respuestas_correctas": "Antón Chéjov"}', null);

-- Preguntas para el test 10 de Teatro
INSERT INTO preguntas (id_test, tipo_pregunta, nombre_pregunta, datos_pregunta, retroalimentacion) VALUES
(160, 1, '¿Cuál de las siguientes obras es una comedia de Carlo Goldoni?', '{"respuestas": ["El servidor de dos amos", "Hamlet", "Don Quijote", "Don Juan Tenorio"], "respuestas_correctas": "El servidor de dos amos"}', null),
(160, 1, '¿Quién escribió la obra de teatro "El Rey Lear"?', '{"respuestas": ["William Shakespeare", "Federico García Lorca", "Samuel Beckett", "Antón Chéjov"], "respuestas_correctas": "William Shakespeare"}', null),
(160, 1, '¿Quién escribió la obra de teatro "La casa de Bernarda Alba"?', '{"respuestas": ["Federico García Lorca", "Antón Chéjov", "Molière", "Tennessee Williams"], "respuestas_correctas": "Federico García Lorca"}', null),
(160, 1, '¿Cuál de las siguientes obras de teatro es una comedia de Molière?', '{"respuestas": ["El burgués gentilhombre", "Esperando a Godot", "La casa de Bernarda Alba", "Romeo y Julieta"], "respuestas_correctas": "El burgués gentilhombre"}', null),
(160, 1, '¿Cuál de las siguientes obras es de Federico García Lorca?', '{"respuestas": ["La casa de Bernarda Alba", "Don Juan Tenorio", "Esperando a Godot", "La Celestina"], "respuestas_correctas": "La casa de Bernarda Alba"}', null),
(160, 1, '¿Quién escribió la obra "La vida es sueño"?', '{"respuestas": ["Pedro Calderón de la Barca", "Federico García Lorca", "Miguel de Cervantes", "Lope de Vega"], "respuestas_correctas": "Pedro Calderón de la Barca"}', null),
(160, 1, '¿Quién es el autor de la obra de teatro "La Celestina"?', '{"respuestas": ["Fernando de Rojas", "Federico García Lorca", "Samuel Beckett", "William Shakespeare"], "respuestas_correctas": "Fernando de Rojas"}', null),
(160, 1, '¿Cuál de las siguientes obras es de Arthur Miller?', '{"respuestas": ["El crisol", "Las brujas de Salem", "El gran Gatsby", "Un tranvía llamado Deseo"], "respuestas_correctas": "El crisol"}', null),
(160, 1, '¿Quién escribió la obra "Esperando a Godot"?', '{"respuestas": ["Samuel Beckett", "Anton Chejov", "Tennessee Williams", "Eugene O´Neill"], "respuestas_correctas": "Samuel Beckett"}', null),
(160, 1, '¿Cuál de las siguientes obras es de Molière?', '{"respuestas": ["El avaro", "La casa de Bernarda Alba", "Don Quijote", "El alcalde de Zalamea"], "respuestas_correctas": "El avaro"}', null);


-- Renumera el id de PREGUNTAS
SET foreign_key_checks = 0;

SET @newid := 0;
UPDATE preguntas SET id = (@newid := @newid + 1) ORDER BY id;

SET foreign_key_checks = 1;
