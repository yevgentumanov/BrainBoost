-- Datos para la tabla TESTS para los test de Alemán del tipo tipo de pregunta 1 con respuesta unica
INSERT INTO tests (id_materia, nombre_test, descripcion, id_usuario_creador) VALUES
(16, 'Alemán 01', 'Test 01 sobre la materia de Alemán con respuesta única.', 1),
(16, 'Alemán 02', 'Test 02 sobre la materia de Alemán con respuesta única.', 1),
(16, 'Alemán 03', 'Test 03 sobre la materia de Alemán con respuesta única.', 1),
(16, 'Alemán 04', 'Test 04 sobre la materia de Alemán con respuesta única.', 1),
(16, 'Alemán 05', 'Test 05 sobre la materia de Alemán con respuesta única.', 1),
(16, 'Alemán 06', 'Test 06 sobre la materia de Alemán con respuesta única.', 1),
(16, 'Alemán 07', 'Test 07 sobre la materia de Alemán con respuesta única.', 1),
(16, 'Alemán 08', 'Test 08 sobre la materia de Alemán con respuesta única.', 1),
(16, 'Alemán 09', 'Test 09 sobre la materia de Alemán con respuesta única.', 1),
(16, 'Alemán 10', 'Test 10 sobre la materia de Alemán con respuesta única.', 1);

SET foreign_key_checks = 0;

SET @newid := 0;
UPDATE tests SET id = (@newid := @newid + 1) ORDER BY id;

SET foreign_key_checks = 1;


-- Datos para la tabla PREGUNTAS de la MATERIA "Alemán" para el tipo de pregunta 1 con respuesta unica

-- Preguntas para el test 1 de ALEMÁN
INSERT INTO preguntas (id_test, tipo_pregunta, nombre_pregunta, datos_pregunta, retroalimentacion) VALUES
(161, 1, '¿Qué significa "hola" en alemán?', '{"respuestas": ["Hallo", "Auf Wiedersehen", "Danke", "Bitte"], "respuestas_correctas": "Hallo"}', null),
(161, 1, '¿Cómo se traduce "buenos días" al alemán?', '{"respuestas": ["Guten Abend", "Guten Morgen", "Guten Tag", "Gute Nacht"], "respuestas_correctas": "Guten Morgen"}', null),
(161, 1, '¿Cuál es la traducción de "gracias" en alemán?', '{"respuestas": ["Bitte", "Tschüss", "Danke", "Entschuldigung"], "respuestas_correctas": "Danke"}', null),
(161, 1, '¿Qué significa "adiós" en alemán?', '{"respuestas": ["Hallo", "Auf Wiedersehen", "Danke", "Bitte"], "respuestas_correctas": "Auf Wiedersehen"}', null),
(161, 1, '¿Cómo se traduce "por favor" al alemán?', '{"respuestas": ["Hallo", "Auf Wiedersehen", "Danke", "Bitte"], "respuestas_correctas": "Bitte"}', null),
(161, 1, '¿Qué significa "perdón" en alemán?', '{"respuestas": ["Hallo", "Auf Wiedersehen", "Danke", "Entschuldigung"], "respuestas_correctas": "Entschuldigung"}', null),
(161, 1, '¿Cuál es la traducción de "sí" en alemán?', '{"respuestas": ["Ja", "Nein", "Vielleicht", "Danke"], "respuestas_correctas": "Ja"}', null),
(161, 1, '¿Cómo se dice "no" en alemán?', '{"respuestas": ["Ja", "Nein", "Vielleicht", "Danke"], "respuestas_correctas": "Nein"}', null),
(161, 1, '¿Qué significa "quizás" en alemán?', '{"respuestas": ["Ja", "Nein", "Vielleicht", "Danke"], "respuestas_correctas": "Vielleicht"}', null),
(161, 1, '¿Cuál es la traducción de "grande" al alemán?', '{"respuestas": ["Groß", "Klein", "Alt", "Jung"], "respuestas_correctas": "Groß"}', null);

-- Preguntas para el test 2 de ALEMÁN
INSERT INTO preguntas (id_test, tipo_pregunta, nombre_pregunta, datos_pregunta, retroalimentacion) VALUES
(162, 1, '¿Cómo se dice "casa" en alemán?', '{"respuestas": ["Haus", "Auto", "Buch", "Schule"], "respuestas_correctas": "Haus"}', null),
(162, 1, '¿Cuál es la traducción de "amigo" al alemán?', '{"respuestas": ["Freund", "Familie", "Essen", "Stadt"], "respuestas_correctas": "Freund"}', null),
(162, 1, '¿Qué significa "feliz" en alemán?', '{"respuestas": ["Glücklich", "Traurig", "Müde", "Wütend"], "respuestas_correctas": "Glücklich"}', null),
(162, 1, '¿Cómo se dice "comer" en alemán?', '{"respuestas": ["Essen", "Trinken", "Schlafen", "Spielen"], "respuestas_correctas": "Essen"}', null),
(162, 1, '¿Cuál es la traducción de "libro" al alemán?', '{"respuestas": ["Buch", "Stift", "Tasche", "Schuhe"], "respuestas_correctas": "Buch"}', null),
(162, 1, '¿Qué significa "bueno" en alemán?', '{"respuestas": ["Gut", "Schlecht", "Groß", "Klein"], "respuestas_correctas": "Gut"}', null),
(162, 1, '¿Cómo se dice "hola" en alemán?', '{"respuestas": ["Hallo", "Tschüss", "Danke", "Entschuldigung"], "respuestas_correctas": "Hallo"}', null),
(162, 1, '¿Cuál es la traducción de "mañana" al alemán?', '{"respuestas": ["Morgen", "Abend", "Tag", "Nacht"], "respuestas_correctas": "Morgen"}', null),
(162, 1, '¿Qué significa "tiempo" en alemán?', '{"respuestas": ["Zeit", "Geld", "Haus", "Schule"], "respuestas_correctas": "Zeit"}', null),
(162, 1, '¿Cómo se dice "música" en alemán?', '{"respuestas": ["Musik", "Film", "Sport", "Essen"], "respuestas_correctas": "Musik"}', null);

-- Preguntas para el test 3 de ALEMÁN
INSERT INTO preguntas (id_test, tipo_pregunta, nombre_pregunta, datos_pregunta, retroalimentacion) VALUES
(163, 1, '¿Cómo se dice "perro" en alemán?', '{"respuestas": ["Hund", "Katze", "Vogel", "Fisch"], "respuestas_correctas": "Hund"}', null),
(163, 1, '¿Cuál es la traducción de "rojo" al alemán?', '{"respuestas": ["Rot", "Blau", "Grün", "Gelb"], "respuestas_correctas": "Rot"}', null),
(163, 1, '¿Qué significa "gracias" en alemán?', '{"respuestas": ["Danke", "Bitte", "Entschuldigung", "Tschüss"], "respuestas_correctas": "Danke"}', null),
(163, 1, '¿Cómo se dice "canción" en alemán?', '{"respuestas": ["Lied", "Tanz", "Spiel", "Film"], "respuestas_correctas": "Lied"}', null),
(163, 1, '¿Cuál es la traducción de "manzana" al alemán?', '{"respuestas": ["Apfel", "Banane", "Orange", "Erdbeere"], "respuestas_correctas": "Apfel"}', null),
(163, 1, '¿Qué significa "caliente" en alemán?', '{"respuestas": ["Heiß", "Kalt", "Wasser", "Feuer"], "respuestas_correctas": "Heiß"}', null),
(163, 1, '¿Cómo se dice "gato" en alemán?', '{"respuestas": ["Katze", "Hund", "Vogel", "Maus"], "respuestas_correctas": "Katze"}', null),
(163, 1, '¿Cuál es la traducción de "azul" al alemán?', '{"respuestas": ["Blau", "Rot", "Grün", "Gelb"], "respuestas_correctas": "Blau"}', null),
(163, 1, '¿Qué significa "hambre" en alemán?', '{"respuestas": ["Hunger", "Durst", "Müde", "Krank"], "respuestas_correctas": "Hunger"}', null),
(163, 1, '¿Cómo se dice "chocolate" en alemán?', '{"respuestas": ["Schokolade", "Kaffee", "Tee", "Milch"], "respuestas_correctas": "Schokolade"}', null);

-- Preguntas para el test 4 de ALEMÁN
INSERT INTO preguntas (id_test, tipo_pregunta, nombre_pregunta, datos_pregunta, retroalimentacion) VALUES
(164, 1, '¿Cuál es la traducción de "casa" al alemán?', '{"respuestas": ["Haus", "Auto", "Schule", "Park"], "respuestas_correctas": "Haus"}', null),
(164, 1, '¿Cómo se dice "hola" en alemán?', '{"respuestas": ["Hallo", "Auf Wiedersehen", "Danke", "Entschuldigung"], "respuestas_correctas": "Hallo"}', null),
(164, 1, '¿Qué significa "amor" en alemán?', '{"respuestas": ["Liebe", "Hass", "Freude", "Trauer"], "respuestas_correctas": "Liebe"}', null),
(164, 1, '¿Cómo se dice "hombre" en alemán?', '{"respuestas": ["Mann", "Frau", "Kind", "Junge"], "respuestas_correctas": "Mann"}', null),
(164, 1, '¿Cuál es la traducción de "mañana" al alemán?', '{"respuestas": ["Morgen", "Abend", "Nacht", "Tag"], "respuestas_correctas": "Morgen"}', null),
(164, 1, '¿Qué significa "fiesta" en alemán?', '{"respuestas": ["Fest", "Urlaub", "Geschenk", "Konzert"], "respuestas_correctas": "Fest"}', null),
(164, 1, '¿Cómo se dice "gracias" en alemán?', '{"respuestas": ["Danke", "Bitte", "Entschuldigung", "Tschüss"], "respuestas_correctas": "Danke"}', null),
(164, 1, '¿Cuál es la traducción de "amigo" al alemán?', '{"respuestas": ["Freund", "Feind", "Bruder", "Schwester"], "respuestas_correctas": "Freund"}', null),
(164, 1, '¿Qué significa "comer" en alemán?', '{"respuestas": ["Essen", "Trinken", "Schlafen", "Laufen"], "respuestas_correctas": "Essen"}', null),
(164, 1, '¿Cómo se dice "música" en alemán?', '{"respuestas": ["Musik", "Film", "Buch", "Malen"], "respuestas_correctas": "Musik"}', null);

-- Preguntas para el test 5 de ALEMÁN
INSERT INTO preguntas (id_test, tipo_pregunta, nombre_pregunta, datos_pregunta, retroalimentacion) VALUES
(165, 1, '¿Cuál es la traducción de "perro" al alemán?', '{"respuestas": ["Hund", "Katze", "Vogel", "Pferd"], "respuestas_correctas": "Hund"}', null),
(165, 1, '¿Cómo se dice "buenos días" en alemán?', '{"respuestas": ["Guten Morgen", "Gute Nacht", "Guten Tag", "Auf Wiedersehen"], "respuestas_correctas": "Guten Morgen"}', null),
(165, 1, '¿Qué significa "feliz" en alemán?', '{"respuestas": ["Glücklich", "Traurig", "Wütend", "Müde"], "respuestas_correctas": "Glücklich"}', null),
(165, 1, '¿Cómo se dice "mujer" en alemán?', '{"respuestas": ["Frau", "Mann", "Kind", "Junge"], "respuestas_correctas": "Frau"}', null),
(165, 1, '¿Cuál es la traducción de "tarde" al alemán?', '{"respuestas": ["Nachmittag", "Abend", "Nacht", "Morgen"], "respuestas_correctas": "Nachmittag"}', null),
(165, 1, '¿Qué significa "familia" en alemán?', '{"respuestas": ["Familie", "Freunde", "Geschwister", "Eltern"], "respuestas_correctas": "Familie"}', null),
(165, 1, '¿Cómo se dice "por favor" en alemán?', '{"respuestas": ["Bitte", "Danke", "Entschuldigung", "Tschüss"], "respuestas_correctas": "Bitte"}', null),
(165, 1, '¿Cuál es la traducción de "hermana" al alemán?', '{"respuestas": ["Schwester", "Bruder", "Freundin", "Mutter"], "respuestas_correctas": "Schwester"}', null),
(165, 1, '¿Qué significa "beber" en alemán?', '{"respuestas": ["Trinken", "Essen", "Schlafen", "Laufen"], "respuestas_correctas": "Trinken"}', null),
(165, 1, '¿Cómo se dice "libro" en alemán?', '{"respuestas": ["Buch", "Musik", "Film", "Malen"], "respuestas_correctas": "Buch"}', null);

-- Preguntas para el test 6 de ALEMÁN
INSERT INTO preguntas (id_test, tipo_pregunta, nombre_pregunta, datos_pregunta, retroalimentacion) VALUES
(166, 1, '¿Cuál es la traducción de "casa" al alemán?', '{"respuestas": ["Haus", "Auto", "Schule", "Apfel"], "respuestas_correctas": "Haus"}', null),
(166, 1, '¿Cómo se dice "hola" en alemán?', '{"respuestas": ["Hallo", "Auf Wiedersehen", "Danke", "Entschuldigung"], "respuestas_correctas": "Hallo"}', null),
(166, 1, '¿Qué significa "amor" en alemán?', '{"respuestas": ["Liebe", "Hass", "Angst", "Freude"], "respuestas_correctas": "Liebe"}', null),
(166, 1, '¿Cómo se dice "padre" en alemán?', '{"respuestas": ["Vater", "Mutter", "Bruder", "Schwester"], "respuestas_correctas": "Vater"}', null),
(166, 1, '¿Cuál es la traducción de "rojo" al alemán?', '{"respuestas": ["Rot", "Blau", "Grün", "Gelb"], "respuestas_correctas": "Rot"}', null),
(166, 1, '¿Qué significa "aprender" en alemán?', '{"respuestas": ["Lernen", "Spielen", "Schlafen", "Essen"], "respuestas_correctas": "Lernen"}', null),
(166, 1, '¿Cómo se dice "amigo" en alemán?', '{"respuestas": ["Freund", "Feind", "Nachbar", "Kollege"], "respuestas_correctas": "Freund"}', null),
(166, 1, '¿Cuál es la traducción de "manzana" al alemán?', '{"respuestas": ["Apfel", "Banane", "Orange", "Erdbeere"], "respuestas_correctas": "Apfel"}', null),
(166, 1, '¿Qué significa "dormir" en alemán?', '{"respuestas": ["Schlafen", "Essen", "Trinken", "Laufen"], "respuestas_correctas": "Schlafen"}', null),
(166, 1, '¿Cómo se dice "música" en alemán?', '{"respuestas": ["Musik", "Buch", "Film", "Malen"], "respuestas_correctas": "Musik"}', null);

-- Preguntas para el test 7 de ALEMÁN
INSERT INTO preguntas (id_test, tipo_pregunta, nombre_pregunta, datos_pregunta, retroalimentacion) VALUES
(167, 1, '¿Cuál es la traducción de "perro" al alemán?', '{"respuestas": ["Hund", "Katze", "Vogel", "Fisch"], "respuestas_correctas": "Hund"}', null),
(167, 1, '¿Cómo se dice "casa" en alemán?', '{"respuestas": ["Haus", "Auto", "Schule", "Baum"], "respuestas_correctas": "Haus"}', null),
(167, 1, '¿Qué significa "buenos días" en alemán?', '{"respuestas": ["Guten Morgen", "Auf Wiedersehen", "Danke", "Entschuldigung"], "respuestas_correctas": "Guten Morgen"}', null),
(167, 1, '¿Cómo se dice "madre" en alemán?', '{"respuestas": ["Mutter", "Vater", "Bruder", "Schwester"], "respuestas_correctas": "Mutter"}', null),
(167, 1, '¿Cuál es la traducción de "verde" al alemán?', '{"respuestas": ["Grün", "Blau", "Rot", "Gelb"], "respuestas_correctas": "Grün"}', null),
(167, 1, '¿Qué significa "estudiar" en alemán?', '{"respuestas": ["Studieren", "Spielen", "Schlafen", "Essen"], "respuestas_correctas": "Studieren"}', null),
(167, 1, '¿Cómo se dice "hermano" en alemán?', '{"respuestas": ["Bruder", "Schwester", "Freund", "Nachbar"], "respuestas_correctas": "Bruder"}', null),
(167, 1, '¿Cuál es la traducción de "naranja" al alemán?', '{"respuestas": ["Orange", "Apfel", "Banane", "Erdbeere"], "respuestas_correctas": "Orange"}', null),
(167, 1, '¿Qué significa "viajar" en alemán?', '{"respuestas": ["Reisen", "Essen", "Trinken", "Laufen"], "respuestas_correctas": "Reisen"}', null),
(167, 1, '¿Cómo se dice "libro" en alemán?', '{"respuestas": ["Buch", "Musik", "Film", "Malen"], "respuestas_correctas": "Buch"}', null);

-- Preguntas para el test 8 de ALEMÁN
INSERT INTO preguntas (id_test, tipo_pregunta, nombre_pregunta, datos_pregunta, retroalimentacion) VALUES
(168, 1, '¿Cuál es la traducción de "amigo" al alemán?', '{"respuestas": ["Freund", "Hund", "Katze", "Schule"], "respuestas_correctas": "Freund"}', null),
(168, 1, '¿Cómo se dice "gracias" en alemán?', '{"respuestas": ["Danke", "Auf Wiedersehen", "Guten Morgen", "Entschuldigung"], "respuestas_correctas": "Danke"}', null),
(168, 1, '¿Qué significa "hola" en alemán?', '{"respuestas": ["Hallo", "Tschüss", "Bitte", "Ja"], "respuestas_correctas": "Hallo"}', null),
(168, 1, '¿Cómo se dice "padre" en alemán?', '{"respuestas": ["Vater", "Mutter", "Bruder", "Schwester"], "respuestas_correctas": "Vater"}', null),
(168, 1, '¿Cuál es la traducción de "azul" al alemán?', '{"respuestas": ["Blau", "Rot", "Grün", "Gelb"], "respuestas_correctas": "Blau"}', null),
(168, 1, '¿Qué significa "estudiar" en alemán?', '{"respuestas": ["Studieren", "Spielen", "Schlafen", "Essen"], "respuestas_correctas": "Studieren"}', null),
(168, 1, '¿Cómo se dice "hermana" en alemán?', '{"respuestas": ["Schwester", "Bruder", "Freund", "Nachbar"], "respuestas_correctas": "Schwester"}', null),
(168, 1, '¿Cuál es la traducción de "manzana" al alemán?', '{"respuestas": ["Apfel", "Orange", "Banane", "Erdbeere"], "respuestas_correctas": "Apfel"}', null),
(168, 1, '¿Qué significa "viajar" en alemán?', '{"respuestas": ["Reisen", "Essen", "Trinken", "Laufen"], "respuestas_correctas": "Reisen"}', null),
(168, 1, '¿Cómo se dice "canción" en alemán?', '{"respuestas": ["Lied", "Buch", "Film", "Malen"], "respuestas_correctas": "Lied"}', null);

-- Preguntas para el test 9 de ALEMÁN
INSERT INTO preguntas (id_test, tipo_pregunta, nombre_pregunta, datos_pregunta, retroalimentacion)
VALUES
(169, 1, '¿Cuál es la traducción de "perro" al alemán?', '{"respuestas": ["Hund", "Katze", "Vogel", "Fisch"], "respuestas_correctas": "Hund"}', null),
(169, 1, '¿Cómo se dice "casa" en alemán?', '{"respuestas": ["Haus", "Auto", "Schule", "Buch"], "respuestas_correctas": "Haus"}', null),
(169, 1, '¿Qué significa "bueno" en alemán?', '{"respuestas": ["Gut", "Schlecht", "Groß", "Klein"], "respuestas_correctas": "Gut"}', null),
(169, 1, '¿Cuál es la traducción de "jugar" al alemán?', '{"respuestas": ["Spielen", "Lesen", "Schwimmen", "Laufen"], "respuestas_correctas": "Spielen"}', null),
(169, 1, '¿Cómo se dice "mañana" en alemán?', '{"respuestas": ["Morgen", "Abend", "Tag", "Woche"], "respuestas_correctas": "Morgen"}', null),
(169, 1, '¿Qué significa "amor" en alemán?', '{"respuestas": ["Liebe", "Hass", "Freude", "Trauer"], "respuestas_correctas": "Liebe"}', null),
(169, 1, '¿Cuál es la traducción de "libro" al alemán?', '{"respuestas": ["Buch", "Stift", "Tisch", "Fenster"], "respuestas_correctas": "Buch"}', null),
(169, 1, '¿Cómo se dice "comer" en alemán?', '{"respuestas": ["Essen", "Trinken", "Schlafen", "Spielen"], "respuestas_correctas": "Essen"}', null),
(169, 1, '¿Qué significa "pequeño" en alemán?', '{"respuestas": ["Klein", "Groß", "Dunkel", "Hell"], "respuestas_correctas": "Klein"}', null),
(169, 1, '¿Cuál es la traducción de "tiempo" al alemán?', '{"respuestas": ["Zeit", "Geld", "Arbeit", "Weg"], "respuestas_correctas": "Zeit"}', null);

-- Preguntas para el test 10 de ALEMÁN
INSERT INTO preguntas (id_test, tipo_pregunta, nombre_pregunta, datos_pregunta, retroalimentacion)
VALUES
(170, 1, '¿Cuál es la traducción de "amigo" al alemán?', '{"respuestas": ["Freund", "Familie", "Haus", "Schule"], "respuestas_correctas": "Freund"}', null),
(170, 1, '¿Cómo se dice "buenos días" en alemán?', '{"respuestas": ["Guten Morgen", "Gute Nacht", "Hallo", "Auf Wiedersehen"], "respuestas_correctas": "Guten Morgen"}', null),
(170, 1, '¿Qué significa "feliz" en alemán?', '{"respuestas": ["Glücklich", "Traurig", "Wütend", "Überrascht"], "respuestas_correctas": "Glücklich"}', null),
(170, 1, '¿Cuál es la traducción de "trabajo" al alemán?', '{"respuestas": ["Arbeit", "Schule", "Haus", "Auto"], "respuestas_correctas": "Arbeit"}', null),
(170, 1, '¿Cómo se dice "mujer" en alemán?', '{"respuestas": ["Frau", "Mann", "Kind", "Junge"], "respuestas_correctas": "Frau"}', null),
(170, 1, '¿Qué significa "aprender" en alemán?', '{"respuestas": ["Lernen", "Lesen", "Spielen", "Schlafen"], "respuestas_correctas": "Lernen"}', null),
(170, 1, '¿Cuál es la traducción de "ciudad" al alemán?', '{"respuestas": ["Stadt", "Land", "Fluss", "See"], "respuestas_correctas": "Stadt"}', null),
(170, 1, '¿Cómo se dice "padre" en alemán?', '{"respuestas": ["Vater", "Mutter", "Bruder", "Schwester"], "respuestas_correctas": "Vater"}', null),
(170, 1, '¿Qué significa "viajar" en alemán?', '{"respuestas": ["Reisen", "Arbeiten", "Studieren", "Essen"], "respuestas_correctas": "Reisen"}', null),
(170, 1, '¿Cuál es la traducción de "hermano" al alemán?', '{"respuestas": ["Bruder", "Schwester", "Oma", "Opa"], "respuestas_correctas": "Bruder"}', null);

-- Renumera el id de PREGUNTAS
SET foreign_key_checks = 0;

SET @newid := 0;
UPDATE preguntas SET id = (@newid := @newid + 1) ORDER BY id;

SET foreign_key_checks = 1;
