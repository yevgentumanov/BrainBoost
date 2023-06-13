-- Datos para la tabla TESTS para los test de Inglés del tipo de pregunta 5 de formas verbales
INSERT INTO tests (id_materia, nombre_test, descripcion, id_usuario_creador) VALUES
(14, 'Inglés 11', 'Test 11 sobre la materia de Inglés de formas verbales.', 1),
(14, 'Inglés 12', 'Test 12 sobre la materia de Inglés de formas verbales.', 1),
(14, 'Inglés 13', 'Test 13 sobre la materia de Inglés de formas verbales.', 1),
(14, 'Inglés 14', 'Test 14 sobre la materia de Inglés de formas verbales.', 1),
(14, 'Inglés 15', 'Test 15 sobre la materia de Inglés de formas verbales.', 1),
(14, 'Inglés 16', 'Test 16 sobre la materia de Inglés de formas verbales.', 1),
(14, 'Inglés 17', 'Test 17 sobre la materia de Inglés de formas verbales.', 1),
(14, 'Inglés 18', 'Test 18 sobre la materia de Inglés de formas verbales.', 1),
(14, 'Inglés 19', 'Test 19 sobre la materia de Inglés de formas verbales.', 1),
(14, 'Inglés 20', 'Test 20 sobre la materia de Inglés de formas verbales.', 1);

SET foreign_key_checks = 0;

SET @newid := 0;
UPDATE tests SET id = (@newid := @newid + 1) ORDER BY id;

SET foreign_key_checks = 1;

-- Datos para la tabla PREGUNTAS de la MATERIA "Inglés" para el tipo de pregunta 5 de formas verbales

-- Preguntas para el test 11 de Inglés
INSERT INTO preguntas (id_test, tipo_pregunta, nombre_pregunta, datos_pregunta, retroalimentacion) VALUES
(91, 5, 'Formas verbales del verbo to eat', '{"Forma base": "eat", "Pasado": "ate", "Participio": "eaten", "Traducción": "comer"}', null),
(91, 5, 'Formas verbales del verbo to go', '{"Forma base": "go", "Pasado": "went", "Participio": "gone", "Traducción": "ir"}', null),
(91, 5, 'Formas verbales del verbo to see', '{"Forma base": "see", "Pasado": "saw", "Participio": "seen", "Traducción": "ver"}', null),
(91, 5, 'Formas verbales del verbo to do', '{"Forma base": "do", "Pasado": "did", "Participio": "done", "Traducción": "hacer"}', null),
(91, 5, 'Formas verbales del verbo to have', '{"Forma base": "have", "Pasado": "had", "Participio": "had", "Traducción": "tener"}', null),
(91, 5, 'Formas verbales del verbo to run', '{"Forma base": "run", "Pasado": "ran", "Participio": "run", "Traducción": "correr"}', null),
(91, 5, 'Formas verbales del verbo to write', '{"Forma base": "write", "Pasado": "wrote", "Participio": "written", "Traducción": "escribir"}', null),
(91, 5, 'Formas verbales del verbo to drink', '{"Forma base": "drink", "Pasado": "drank", "Participio": "drunk", "Traducción": "beber"}', null),
(91, 5, 'Formas verbales del verbo to sleep', '{"Forma base": "sleep", "Pasado": "slept", "Participio": "slept", "Traducción": "dormir"}', null),
(91, 5, 'Formas verbales del verbo to take', '{"Forma base": "take", "Pasado": "took", "Participio": "taken", "Traducción": "tomar"}', null);

-- Preguntas para el test 12 de Inglés
INSERT INTO preguntas (id_test, tipo_pregunta, nombre_pregunta, datos_pregunta, retroalimentacion) VALUES
(92, 5, 'Formas verbales del verbo to swim', '{"Forma base": "swim", "Pasado": "swam", "Participio": "swum", "Traducción": "nadar"}', null),
(92, 5, 'Formas verbales del verbo to speak', '{"Forma base": "speak", "Pasado": "spoke", "Participio": "spoken", "Traducción": "hablar"}', null),
(92, 5, 'Formas verbales del verbo to learn', '{"Forma base": "learn", "Pasado": "learned/learnt", "Participio": "learned/learnt", "Traducción": "aprender"}', null),
(92, 5, 'Formas verbales del verbo to break', '{"Forma base": "break", "Pasado": "broke", "Participio": "broken", "Traducción": "romper"}', null),
(92, 5, 'Formas verbales del verbo to sing', '{"Forma base": "sing", "Pasado": "sang", "Participio": "sung", "Traducción": "cantar"}', null),
(92, 5, 'Formas verbales del verbo to give', '{"Forma base": "give", "Pasado": "gave", "Participio": "given", "Traducción": "dar"}', null),
(92, 5, 'Formas verbales del verbo to see', '{"Forma base": "see", "Pasado": "saw", "Participio": "seen", "Traducción": "ver"}', null),
(92, 5, 'Formas verbales del verbo to wear', '{"Forma base": "wear", "Pasado": "wore", "Participio": "worn", "Traducción": "llevar (ropa)"}', null),
(92, 5, 'Formas verbales del verbo to choose', '{"Forma base": "choose", "Pasado": "chose", "Participio": "chosen", "Traducción": "elegir"}', null),
(92, 5, 'Formas verbales del verbo to run', '{"Forma base": "run", "Pasado": "ran", "Participio": "run", "Traducción": "correr"}', null);

-- Preguntas para el test 13 de Inglés
INSERT INTO preguntas (id_test, tipo_pregunta, nombre_pregunta, datos_pregunta, retroalimentacion) VALUES
(93, 5, 'Formas verbales del verbo to fly', '{"Forma base": "fly", "Pasado": "flew", "Participio": "flown", "Traducción": "volar"}', null),
(93, 5, 'Formas verbales del verbo to break', '{"Forma base": "break", "Pasado": "broke", "Participio": "broken", "Traducción": "romper"}', null),
(93, 5, 'Formas verbales del verbo to sleep', '{"Forma base": "sleep", "Pasado": "slept", "Participio": "slept", "Traducción": "dormir"}', null),
(93, 5, 'Formas verbales del verbo to drive', '{"Forma base": "drive", "Pasado": "drove", "Participio": "driven", "Traducción": "conducir"}', null),
(93, 5, 'Formas verbales del verbo to teach', '{"Forma base": "teach", "Pasado": "taught", "Participio": "taught", "Traducción": "enseñar"}', null),
(93, 5, 'Formas verbales del verbo to drink', '{"Forma base": "drink", "Pasado": "drank", "Participio": "drunk", "Traducción": "beber"}', null),
(93, 5, 'Formas verbales del verbo to sit', '{"Forma base": "sit", "Pasado": "sat", "Participio": "sat", "Traducción": "sentarse"}', null),
(93, 5, 'Formas verbales del verbo to swim', '{"Forma base": "swim", "Pasado": "swam", "Participio": "swum", "Traducción": "nadar"}', null),
(93, 5, 'Formas verbales del verbo to dance', '{"Forma base": "dance", "Pasado": "danced", "Participio": "danced", "Traducción": "bailar"}', null),
(93, 5, 'Formas verbales del verbo to read', '{"Forma base": "read", "Pasado": "read", "Participio": "read", "Traducción": "leer"}', null);

-- Preguntas para el test 14 de Inglés
INSERT INTO preguntas (id_test, tipo_pregunta, nombre_pregunta, datos_pregunta, retroalimentacion) VALUES
(94, 5, 'Formas verbales del verbo to sing', '{"Forma base": "sing", "Pasado": "sang", "Participio": "sung", "Traducción": "cantar"}', null),
(94, 5, 'Formas verbales del verbo to think', '{"Forma base": "think", "Pasado": "thought", "Participio": "thought", "Traducción": "pensar"}', null),
(94, 5, 'Formas verbales del verbo to swim', '{"Forma base": "swim", "Pasado": "swam", "Participio": "swum", "Traducción": "nadar"}', null),
(94, 5, 'Formas verbales del verbo to speak', '{"Forma base": "speak", "Pasado": "spoke", "Participio": "spoken", "Traducción": "hablar"}', null),
(94, 5, 'Formas verbales del verbo to run', '{"Forma base": "run", "Pasado": "ran", "Participio": "run", "Traducción": "correr"}', null),
(94, 5, 'Formas verbales del verbo to write', '{"Forma base": "write", "Pasado": "wrote", "Participio": "written", "Traducción": "escribir"}', null),
(94, 5, 'Formas verbales del verbo to dance', '{"Forma base": "dance", "Pasado": "danced", "Participio": "danced", "Traducción": "bailar"}', null),
(94, 5, 'Formas verbales del verbo to sleep', '{"Forma base": "sleep", "Pasado": "slept", "Participio": "slept", "Traducción": "dormir"}', null),
(94, 5, 'Formas verbales del verbo to eat', '{"Forma base": "eat", "Pasado": "ate", "Participio": "eaten", "Traducción": "comer"}', null),
(94, 5, 'Formas verbales del verbo to see', '{"Forma base": "see", "Pasado": "saw", "Participio": "seen", "Traducción": "ver"}', null);

-- Preguntas para el test 15 de Inglés
INSERT INTO preguntas (id_test, tipo_pregunta, nombre_pregunta, datos_pregunta, retroalimentacion) VALUES
(95, 5, 'Formas verbales del verbo to fly', '{"Forma base": "fly", "Pasado": "flew", "Participio": "flown", "Traducción": "volar"}', null),
(95, 5, 'Formas verbales del verbo to read', '{"Forma base": "read", "Pasado": "read", "Participio": "read", "Traducción": "leer"}', null),
(95, 5, 'Formas verbales del verbo to give', '{"Forma base": "give", "Pasado": "gave", "Participio": "given", "Traducción": "dar"}', null),
(95, 5, 'Formas verbales del verbo to break', '{"Forma base": "break", "Pasado": "broke", "Participio": "broken", "Traducción": "romper"}', null),
(95, 5, 'Formas verbales del verbo to see', '{"Forma base": "see", "Pasado": "saw", "Participio": "seen", "Traducción": "ver"}', null),
(95, 5, 'Formas verbales del verbo to teach', '{"Forma base": "teach", "Pasado": "taught", "Participio": "taught", "Traducción": "enseñar"}', null),
(95, 5, 'Formas verbales del verbo to drink', '{"Forma base": "drink", "Pasado": "drank", "Participio": "drunk", "Traducción": "beber"}', null),
(95, 5, 'Formas verbales del verbo to run', '{"Forma base": "run", "Pasado": "ran", "Participio": "run", "Traducción": "correr"}', null),
(95, 5, 'Formas verbales del verbo to speak', '{"Forma base": "speak", "Pasado": "spoke", "Participio": "spoken", "Traducción": "hablar"}', null),
(95, 5, 'Formas verbales del verbo to dance', '{"Forma base": "dance", "Pasado": "danced", "Participio": "danced", "Traducción": "bailar"}', null);

-- Preguntas para el test 16 de Inglés
INSERT INTO preguntas (id_test, tipo_pregunta, nombre_pregunta, datos_pregunta, retroalimentacion) VALUES
(96, 5, 'Formas verbales del verbo to swim', '{"Forma base": "swim", "Pasado": "swam", "Participio": "swum", "Traducción": "nadar"}', null),
(96, 5, 'Formas verbales del verbo to sing', '{"Forma base": "sing", "Pasado": "sang", "Participio": "sung", "Traducción": "cantar"}', null),
(96, 5, 'Formas verbales del verbo to run', '{"Forma base": "run", "Pasado": "ran", "Participio": "run", "Traducción": "correr"}', null),
(96, 5, 'Formas verbales del verbo to sleep', '{"Forma base": "sleep", "Pasado": "slept", "Participio": "slept", "Traducción": "dormir"}', null),
(96, 5, 'Formas verbales del verbo to write', '{"Forma base": "write", "Pasado": "wrote", "Participio": "written", "Traducción": "escribir"}', null),
(96, 5, 'Formas verbales del verbo to dance', '{"Forma base": "dance", "Pasado": "danced", "Participio": "danced", "Traducción": "bailar"}', null),
(96, 5, 'Formas verbales del verbo to eat', '{"Forma base": "eat", "Pasado": "ate", "Participio": "eaten", "Traducción": "comer"}', null),
(96, 5, 'Formas verbales del verbo to drink', '{"Forma base": "drink", "Pasado": "drank", "Participio": "drunk", "Traducción": "beber"}', null),
(96, 5, 'Formas verbales del verbo to speak', '{"Forma base": "speak", "Pasado": "spoke", "Participio": "spoken", "Traducción": "hablar"}', null),
(96, 5, 'Formas verbales del verbo to take', '{"Forma base": "take", "Pasado": "took", "Participio": "taken", "Traducción": "tomar"}', null);

-- Preguntas para el test 17 de Inglés
INSERT INTO preguntas (id_test, tipo_pregunta, nombre_pregunta, datos_pregunta, retroalimentacion) VALUES
(97, 5, 'Formas verbales del verbo to read', '{"Forma base": "read", "Pasado": "read", "Participio": "read", "Traducción": "leer"}', null),
(97, 5, 'Formas verbales del verbo to speak', '{"Forma base": "speak", "Pasado": "spoke", "Participio": "spoken", "Traducción": "hablar"}', null),
(97, 5, 'Formas verbales del verbo to see', '{"Forma base": "see", "Pasado": "saw", "Participio": "seen", "Traducción": "ver"}', null),
(97, 5, 'Formas verbales del verbo to write', '{"Forma base": "write", "Pasado": "wrote", "Participio": "written", "Traducción": "escribir"}', null),
(97, 5, 'Formas verbales del verbo to listen', '{"Forma base": "listen", "Pasado": "listened", "Participio": "listened", "Traducción": "escuchar"}', null),
(97, 5, 'Formas verbales del verbo to play', '{"Forma base": "play", "Pasado": "played", "Participio": "played", "Traducción": "jugar"}', null),
(97, 5, 'Formas verbales del verbo to dance', '{"Forma base": "dance", "Pasado": "danced", "Participio": "danced", "Traducción": "bailar"}', null),
(97, 5, 'Formas verbales del verbo to run', '{"Forma base": "run", "Pasado": "ran", "Participio": "run", "Traducción": "correr"}', null),
(97, 5, 'Formas verbales del verbo to sleep', '{"Forma base": "sleep", "Pasado": "slept", "Participio": "slept", "Traducción": "dormir"}', null),
(97, 5, 'Formas verbales del verbo to swim', '{"Forma base": "swim", "Pasado": "swam", "Participio": "swum", "Traducción": "nadar"}', null);

-- Preguntas para el test 18 de Inglés
INSERT INTO preguntas (id_test, tipo_pregunta, nombre_pregunta, datos_pregunta, retroalimentacion) VALUES
(98, 5, 'Formas verbales del verbo to buy', '{"Forma base": "buy", "Pasado": "bought", "Participio": "bought", "Traducción": "comprar"}', null),
(98, 5, 'Formas verbales del verbo to sing', '{"Forma base": "sing", "Pasado": "sang", "Participio": "sung", "Traducción": "cantar"}', null),
(98, 5, 'Formas verbales del verbo to meet', '{"Forma base": "meet", "Pasado": "met", "Participio": "met", "Traducción": "conocer"}', null),
(98, 5, 'Formas verbales del verbo to teach', '{"Forma base": "teach", "Pasado": "taught", "Participio": "taught", "Traducción": "enseñar"}', null),
(98, 5, 'Formas verbales del verbo to think', '{"Forma base": "think", "Pasado": "thought", "Participio": "thought", "Traducción": "pensar"}', null),
(98, 5, 'Formas verbales del verbo to drive', '{"Forma base": "drive", "Pasado": "drove", "Participio": "driven", "Traducción": "conducir"}', null),
(98, 5, 'Formas verbales del verbo to give', '{"Forma base": "give", "Pasado": "gave", "Participio": "given", "Traducción": "dar"}', null),
(98, 5, 'Formas verbales del verbo to break', '{"Forma base": "break", "Pasado": "broke", "Participio": "broken", "Traducción": "romper"}', null),
(98, 5, 'Formas verbales del verbo to forget', '{"Forma base": "forget", "Pasado": "forgot", "Participio": "forgotten", "Traducción": "olvidar"}', null),
(98, 5, 'Formas verbales del verbo to choose', '{"Forma base": "choose", "Pasado": "chose", "Participio": "chosen", "Traducción": "elegir"}', null);

-- Preguntas para el test 19 de Inglés
INSERT INTO preguntas (id_test, tipo_pregunta, nombre_pregunta, datos_pregunta, retroalimentacion) VALUES
(99, 5, 'Formas verbales del verbo to swim', '{"Forma base": "swim", "Pasado": "swam", "Participio": "swum", "Traducción": "nadar"}', null),
(99, 5, 'Formas verbales del verbo to speak', '{"Forma base": "speak", "Pasado": "spoke", "Participio": "spoken", "Traducción": "hablar"}', null),
(99, 5, 'Formas verbales del verbo to write', '{"Forma base": "write", "Pasado": "wrote", "Participio": "written", "Traducción": "escribir"}', null),
(99, 5, 'Formas verbales del verbo to break', '{"Forma base": "break", "Pasado": "broke", "Participio": "broken", "Traducción": "romper"}', null),
(99, 5, 'Formas verbales del verbo to run', '{"Forma base": "run", "Pasado": "ran", "Participio": "run", "Traducción": "correr"}', null),
(99, 5, 'Formas verbales del verbo to sleep', '{"Forma base": "sleep", "Pasado": "slept", "Participio": "slept", "Traducción": "dormir"}', null),
(99, 5, 'Formas verbales del verbo to study', '{"Forma base": "study", "Pasado": "studied", "Participio": "studied", "Traducción": "estudiar"}', null),
(99, 5, 'Formas verbales del verbo to drink', '{"Forma base": "drink", "Pasado": "drank", "Participio": "drunk", "Traducción": "beber"}', null),
(99, 5, 'Formas verbales del verbo to think', '{"Forma base": "think", "Pasado": "thought", "Participio": "thought", "Traducción": "pensar"}', null),
(99, 5, 'Formas verbales del verbo to take', '{"Forma base": "take", "Pasado": "took", "Participio": "taken", "Traducción": "tomar"}', null);

-- Preguntas para el test 20 de Inglés
INSERT INTO preguntas (id_test, tipo_pregunta, nombre_pregunta, datos_pregunta, retroalimentacion) VALUES
(100, 5, 'Formas verbales del verbo to recommend', '{"Forma base": "recommend", "Pasado": "recommended", "Participio": "recommended", "Traducción": "recomendar"}', null),
(100, 5, 'Formas verbales del verbo to accomplish', '{"Forma base": "accomplish", "Pasado": "accomplished", "Participio": "accomplished", "Traducción": "lograr"}', null),
(100, 5, 'Formas verbales del verbo to negotiate', '{"Forma base": "negotiate", "Pasado": "negotiated", "Participio": "negotiated", "Traducción": "negociar"}', null),
(100, 5, 'Formas verbales del verbo to comprehend', '{"Forma base": "comprehend", "Pasado": "comprehended", "Participio": "comprehended", "Traducción": "comprender"}', null),
(100, 5, 'Formas verbales del verbo to implement', '{"Forma base": "implement", "Pasado": "implemented", "Participio": "implemented", "Traducción": "implementar"}', null),
(100, 5, 'Formas verbales del verbo to investigate', '{"Forma base": "investigate", "Pasado": "investigated", "Participio": "investigated", "Traducción": "investigar"}', null),
(100, 5, 'Formas verbales del verbo to analyze', '{"Forma base": "analyze", "Pasado": "analyzed", "Participio": "analyzed", "Traducción": "analizar"}', null),
(100, 5, 'Formas verbales del verbo to demonstrate', '{"Forma base": "demonstrate", "Pasado": "demonstrated", "Participio": "demonstrated", "Traducción": "demostrar"}', null),
(100, 5, 'Formas verbales del verbo to evaluate', '{"Forma base": "evaluate", "Pasado": "evaluated", "Participio": "evaluated", "Traducción": "evaluar"}', null),
(100, 5, 'Formas verbales del verbo to participate', '{"Forma base": "participate", "Pasado": "participated", "Participio": "participated", "Traducción": "participar"}', null);

-- Renumera el id de PREGUNTAS
SET foreign_key_checks = 0;

SET @newid := 0;
UPDATE preguntas SET id = (@newid := @newid + 1) ORDER BY id;

SET foreign_key_checks = 1;