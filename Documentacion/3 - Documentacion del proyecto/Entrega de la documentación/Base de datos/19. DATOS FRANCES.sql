-- Datos para la tabla TESTS para los test de Francés del tipo tipo de pregunta 1 con respuesta unica
INSERT INTO tests (id_materia, nombre_test, descripcion, id_usuario_creador) VALUES
(15, 'Francés 01', 'Test 01 sobre la materia de Francés con respuesta única.', 1),
(15, 'Francés 02', 'Test 02 sobre la materia de Francés con respuesta única.', 1),
(15, 'Francés 03', 'Test 03 sobre la materia de Francés con respuesta única.', 1),
(15, 'Francés 04', 'Test 04 sobre la materia de Francés con respuesta única.', 1),
(15, 'Francés 05', 'Test 05 sobre la materia de Francés con respuesta única.', 1),
(15, 'Francés 06', 'Test 06 sobre la materia de Francés con respuesta única.', 1),
(15, 'Francés 07', 'Test 07 sobre la materia de Francés con respuesta única.', 1),
(15, 'Francés 08', 'Test 08 sobre la materia de Francés con respuesta única.', 1),
(15, 'Francés 09', 'Test 09 sobre la materia de Francés con respuesta única.', 1),
(15, 'Francés 10', 'Test 10 sobre la materia de Francés con respuesta única.', 1);

SET foreign_key_checks = 0;

SET @newid := 0;
UPDATE tests SET id = (@newid := @newid + 1) ORDER BY id;

SET foreign_key_checks = 1;


-- Datos para la tabla PREGUNTAS de la MATERIA "Francés" para el tipo de pregunta 1 con respuesta unica

-- Preguntas para el test 1 de Francés
INSERT INTO preguntas (id_test, tipo_pregunta, nombre_pregunta, datos_pregunta, retroalimentacion) VALUES
(181, 1, '¿Cuál es la traducción de "libro" al francés?', '{"respuestas": ["livre", "chien", "voiture", "maison"], "respuestas_correctas": "livre"}', null),
(181, 1, '¿Cómo se dice "bueno" en francés?', '{"respuestas": ["bon", "mauvais", "grand", "petit"], "respuestas_correctas": "bon"}', null),
(181, 1, '¿Qué significa "hacer" en francés?', '{"respuestas": ["faire", "dire", "venir", "aller"], "respuestas_correctas": "faire"}', null),
(181, 1, '¿Cuál es la traducción de "amigo" al francés?', '{"respuestas": ["ami", "ennemi", "famille", "frère"], "respuestas_correctas": "ami"}', null),
(181, 1, '¿Cómo se dice "calle" en francés?', '{"respuestas": ["rue", "place", "pont", "bâtiment"], "respuestas_correctas": "rue"}', null),
(181, 1, '¿Qué significa "tiempo" en francés?', '{"respuestas": ["temps", "heure", "jour", "minute"], "respuestas_correctas": "temps"}', null),
(181, 1, '¿Cuál es la traducción de "música" al francés?', '{"respuestas": ["musique", "danse", "théâtre", "art"], "respuestas_correctas": "musique"}', null),
(181, 1, '¿Cómo se dice "comer" en francés?', '{"respuestas": ["manger", "boire", "parler", "écouter"], "respuestas_correctas": "manger"}', null),
(181, 1, '¿Qué significa "saber" en francés?', '{"respuestas": ["savoir", "connaître", "pouvoir", "vouloir"], "respuestas_correctas": "savoir"}', null),
(181, 1, '¿Cuál es la traducción de "lugar" al francés?', '{"respuestas": ["endroit", "ville", "pays", "rue"], "respuestas_correctas": "endroit"}', null);

-- Preguntas para el test 2 de Francés
INSERT INTO preguntas (id_test, tipo_pregunta, nombre_pregunta, datos_pregunta, retroalimentacion) VALUES
(182, 1, '¿Cuál es la traducción de "perro" al francés?', '{"respuestas": ["chien", "chat", "oiseau", "poisson"], "respuestas_correctas": "chien"}', null),
(182, 1, '¿Cómo se dice "casa" en francés?', '{"respuestas": ["maison", "école", "voiture", "jardin"], "respuestas_correctas": "maison"}', null),
(182, 1, '¿Qué significa "merci" en español?', '{"respuestas": ["gracias", "hola", "adiós", "por favor"], "respuestas_correctas": "gracias"}', null),
(182, 1, '¿Cuál es la traducción de "manzana" al francés?', '{"respuestas": ["pomme", "orange", "banane", "fraise"], "respuestas_correctas": "pomme"}', null),
(182, 1, '¿Cómo se dice "hombre" en francés?', '{"respuestas": ["homme", "femme", "enfant", "amour"], "respuestas_correctas": "homme"}', null),
(182, 1, '¿Qué significa "oui" en español?', '{"respuestas": ["sí", "no", "tal vez", "gracias"], "respuestas_correctas": "sí"}', null),
(182, 1, '¿Cuál es la traducción de "libro" al francés?', '{"respuestas": ["livre", "crayon", "stylo", "papier"], "respuestas_correctas": "livre"}', null),
(182, 1, '¿Cómo se dice "amigo" en francés?', '{"respuestas": ["ami", "amie", "amour", "famille"], "respuestas_correctas": "ami"}', null),
(182, 1, '¿Qué significa "au revoir" en español?', '{"respuestas": ["adiós", "hola", "gracias", "por favor"], "respuestas_correctas": "adiós"}', null),
(182, 1, '¿Cuál es la traducción de "blanco" al francés?', '{"respuestas": ["blanc", "noir", "rouge", "bleu"], "respuestas_correctas": "blanc"}', null);

-- Preguntas para el test 3 de Francés
INSERT INTO preguntas (id_test, tipo_pregunta, nombre_pregunta, datos_pregunta, retroalimentacion) VALUES
(183, 1, '¿Cuál es la traducción de "sueño" al francés?', '{"respuestas": ["rêve", "sommeil", "cauchemar", "dormir"], "respuestas_correctas": "rêve"}', null),
(183, 1, '¿Cómo se dice "esperanza" en francés?', '{"respuestas": ["espoir", "amour", "joie", "tristesse"], "respuestas_correctas": "espoir"}', null),
(183, 1, '¿Qué significa "lumière" en español?', '{"respuestas": ["luz", "oscuridad", "fuego", "sol"], "respuestas_correctas": "luz"}', null),
(183, 1, '¿Cuál es la traducción de "risa" al francés?', '{"respuestas": ["rire", "pleurer", "sourire", "joie"], "respuestas_correctas": "rire"}', null),
(183, 1, '¿Cómo se dice "destino" en francés?', '{"respuestas": ["destin", "avenir", "passé", "présent"], "respuestas_correctas": "destin"}', null),
(183, 1, '¿Qué significa "oublier" en español?', '{"respuestas": ["olvidar", "recordar", "pensar", "entender"], "respuestas_correctas": "olvidar"}', null),
(183, 1, '¿Cuál es la traducción de "éxito" al francés?', '{"respuestas": ["succès", "échec", "problème", "difficulté"], "respuestas_correctas": "succès"}', null),
(183, 1, '¿Cómo se dice "corazón" en francés?', '{"respuestas": ["coeur", "âme", "esprit", "sang"], "respuestas_correctas": "coeur"}', null),
(183, 1, '¿Qué significa "partager" en español?', '{"respuestas": ["compartir", "guardar", "ocultar", "separar"], "respuestas_correctas": "compartir"}', null),
(183, 1, '¿Cuál es la traducción de "sabiduría" al francés?', '{"respuestas": ["sagesse", "intelligence", "connaissance", "érudition"], "respuestas_correctas": "sagesse"}', null);

-- Preguntas para el test 4 de Francés
INSERT INTO preguntas (id_test, tipo_pregunta, nombre_pregunta, datos_pregunta, retroalimentacion) VALUES
(184, 1, '¿Cuál es la traducción de "amor" al francés?', '{"respuestas": ["amour", "temps", "voiture", "soleil"], "respuestas_correctas": "amour"}', null),
(184, 1, '¿Cómo se dice "hola" en francés?', '{"respuestas": ["bonjour", "merci", "au revoir", "pardon"], "respuestas_correctas": "bonjour"}', null),
(184, 1, '¿Qué significa "beaucoup" en español?', '{"respuestas": ["mucho", "poco", "bien", "mal"], "respuestas_correctas": "mucho"}', null),
(184, 1, '¿Cuál es la traducción de "feliz" al francés?', '{"respuestas": ["heureux", "triste", "en colère", "fatigué"], "respuestas_correctas": "heureux"}', null),
(184, 1, '¿Cómo se dice "noche" en francés?', '{"respuestas": ["nuit", "jour", "matin", "soir"], "respuestas_correctas": "nuit"}', null),
(184, 1, '¿Qué significa "bienvenue" en español?', '{"respuestas": ["bienvenido", "gracias", "adiós", "por favor"], "respuestas_correctas": "bienvenido"}', null),
(184, 1, '¿Cuál es la traducción de "escuela" al francés?', '{"respuestas": ["école", "maison", "ville", "rue"], "respuestas_correctas": "école"}', null),
(184, 1, '¿Cómo se dice "gracias" en francés?', '{"respuestas": ["merci", "au revoir", "s\'il vous plaît", "pardon"], "respuestas_correctas": "merci"}', null),
(184, 1, '¿Qué significa "demain" en español?', '{"respuestas": ["mañana", "hoy", "ayer", "tarde"], "respuestas_correctas": "mañana"}', null),
(184, 1, '¿Cuál es la traducción de "rojo" al francés?', '{"respuestas": ["rouge", "bleu", "vert", "jaune"], "respuestas_correctas": "rouge"}', null);

-- Preguntas para el test 5 de Francés
INSERT INTO preguntas (id_test, tipo_pregunta, nombre_pregunta, datos_pregunta, retroalimentacion) VALUES
(185, 1, '¿Cuál es la traducción de "casa" al francés?', '{"respuestas": ["maison", "école", "voiture", "chien"], "respuestas_correctas": "maison"}', null),
(185, 1, '¿Cómo se dice "padre" en francés?', '{"respuestas": ["père", "mère", "frère", "sœur"], "respuestas_correctas": "père"}', null),
(185, 1, '¿Qué significa "merci" en español?', '{"respuestas": ["gracias", "adiós", "por favor", "buenos días"], "respuestas_correctas": "gracias"}', null),
(185, 1, '¿Cuál es la traducción de "libro" al francés?', '{"respuestas": ["livre", "chaise", "table", "porte"], "respuestas_correctas": "livre"}', null),
(185, 1, '¿Cómo se dice "hermano" en francés?', '{"respuestas": ["frère", "sœur", "père", "mère"], "respuestas_correctas": "frère"}', null),
(185, 1, '¿Qué significa "bonjour" en español?', '{"respuestas": ["buenos días", "buenas noches", "hasta luego", "gracias"], "respuestas_correctas": "buenos días"}', null),
(185, 1, '¿Cuál es la traducción de "música" al francés?', '{"respuestas": ["musique", "film", "danse", "théâtre"], "respuestas_correctas": "musique"}', null),
(185, 1, '¿Cómo se dice "manzana" en francés?', '{"respuestas": ["pomme", "poire", "orange", "banane"], "respuestas_correctas": "pomme"}', null),
(185, 1, '¿Qué significa "au revoir" en español?', '{"respuestas": ["adiós", "hola", "gracias", "por favor"], "respuestas_correctas": "adiós"}', null),
(185, 1, '¿Cuál es la traducción de "ciudad" al francés?', '{"respuestas": ["ville", "pays", "rue", "maison"], "respuestas_correctas": "ville"}', null);

-- Preguntas para el test 6 de Francés
INSERT INTO preguntas (id_test, tipo_pregunta, nombre_pregunta, datos_pregunta, retroalimentacion) VALUES
(186, 1, '¿Cuál es la traducción de "hola" al francés?', '{"respuestas": ["bonjour", "au revoir", "merci", "salut"], "respuestas_correctas": "bonjour"}', null),
(186, 1, '¿Cómo se dice "rojo" en francés?', '{"respuestas": ["rouge", "bleu", "vert", "jaune"], "respuestas_correctas": "rouge"}', null),
(186, 1, '¿Qué significa "merci beaucoup" en español?', '{"respuestas": ["muchas gracias", "por favor", "buenos días", "adiós"], "respuestas_correctas": "muchas gracias"}', null),
(186, 1, '¿Cuál es la traducción de "perro" al francés?', '{"respuestas": ["chien", "chat", "oiseau", "poisson"], "respuestas_correctas": "chien"}', null),
(186, 1, '¿Cómo se dice "buenas tardes" en francés?', '{"respuestas": ["bonsoir", "bonjour", "bonne nuit", "au revoir"], "respuestas_correctas": "bonsoir"}', null),
(186, 1, '¿Qué significa "aujourd\'hui" en español?', '{"respuestas": ["hoy", "mañana", "ayer", "siempre"], "respuestas_correctas": "hoy"}', null),
(186, 1, '¿Cuál es la traducción de "amor" al francés?', '{"respuestas": ["amour", "joie", "paix", "espoir"], "respuestas_correctas": "amour"}', null),
(186, 1, '¿Cómo se dice "gracias" en francés?', '{"respuestas": ["merci", "s\'il vous plaît", "bonjour", "au revoir"], "respuestas_correctas": "merci"}', null),
(186, 1, '¿Qué significa "monde" en español?', '{"respuestas": ["mundo", "luz", "vida", "tiempo"], "respuestas_correctas": "mundo"}', null),
(186, 1, '¿Cuál es la traducción de "sol" al francés?', '{"respuestas": ["soleil", "lune", "étoile", "nuage"], "respuestas_correctas": "soleil"}', null);

-- Preguntas para el test 7 de Francés
INSERT INTO preguntas (id_test, tipo_pregunta, nombre_pregunta, datos_pregunta, retroalimentacion) VALUES
(187, 1, '¿Cuál es la traducción de "amigo" al francés?', '{"respuestas": ["ami", "frère", "père", "voisin"], "respuestas_correctas": "ami"}', null),
(187, 1, '¿Cómo se dice "manzana" en francés?', '{"respuestas": ["pomme", "banane", "orange", "raisin"], "respuestas_correctas": "pomme"}', null),
(187, 1, '¿Qué significa "bonjour" en español?', '{"respuestas": ["buenos días", "buenas tardes", "buenas noches", "hola"], "respuestas_correctas": "buenos días"}', null),
(187, 1, '¿Cuál es la traducción de "gato" al francés?', '{"respuestas": ["chat", "chien", "oiseau", "poisson"], "respuestas_correctas": "chat"}', null),
(187, 1, '¿Cómo se dice "libro" en francés?', '{"respuestas": ["livre", "table", "chaise", "lit"], "respuestas_correctas": "livre"}', null),
(187, 1, '¿Qué significa "merci" en español?', '{"respuestas": ["gracias", "por favor", "hola", "adiós"], "respuestas_correctas": "gracias"}', null),
(187, 1, '¿Cuál es la traducción de "casa" al francés?', '{"respuestas": ["maison", "appartement", "hôtel", "chambre"], "respuestas_correctas": "maison"}', null),
(187, 1, '¿Cómo se dice "buenas noches" en francés?', '{"respuestas": ["bonsoir", "bonjour", "bonne nuit", "au revoir"], "respuestas_correctas": "bonne nuit"}', null),
(187, 1, '¿Qué significa "au revoir" en español?', '{"respuestas": ["adiós", "hola", "por favor", "gracias"], "respuestas_correctas": "adiós"}', null),
(187, 1, '¿Cuál es la traducción de "playa" al francés?', '{"respuestas": ["plage", "montagne", "forêt", "rivière"], "respuestas_correctas": "plage"}', null);

-- Preguntas para el test 8 de Francés
INSERT INTO preguntas (id_test, tipo_pregunta, nombre_pregunta, datos_pregunta, retroalimentacion) VALUES
(188, 1, '¿Cuál es la traducción de "sueño" al francés?', '{"respuestas": ["rêve", "espoir", "nuit", "pensée"], "respuestas_correctas": "rêve"}', null),
(188, 1, '¿Cómo se dice "oscuro" en francés?', '{"respuestas": ["sombre", "clair", "brillant", "vif"], "respuestas_correctas": "sombre"}', null),
(188, 1, '¿Qué significa "olvidar" en francés?', '{"respuestas": ["oublier", "rappeler", "garder", "connaître"], "respuestas_correctas": "oublier"}', null),
(188, 1, '¿Cuál es la traducción de "fuego" al francés?', '{"respuestas": ["feu", "eau", "terre", "air"], "respuestas_correctas": "feu"}', null),
(188, 1, '¿Cómo se dice "viajar" en francés?', '{"respuestas": ["voyager", "rester", "arriver", "partir"], "respuestas_correctas": "voyager"}', null),
(188, 1, '¿Qué significa "extraño" en francés?', '{"respuestas": ["étrange", "normal", "difficile", "facile"], "respuestas_correctas": "étrange"}', null),
(188, 1, '¿Cuál es la traducción de "luz" al francés?', '{"respuestas": ["lumière", "ombre", "chaleur", "bruit"], "respuestas_correctas": "lumière"}', null),
(188, 1, '¿Cómo se dice "correr" en francés?', '{"respuestas": ["courir", "marcher", "sauter", "grimper"], "respuestas_correctas": "courir"}', null),
(188, 1, '¿Qué significa "regresar" en francés?', '{"respuestas": ["revenir", "partir", "arriver", "rester"], "respuestas_correctas": "revenir"}', null),
(188, 1, '¿Cuál es la traducción de "llave" al francés?', '{"respuestas": ["clé", "porte", "fenêtre", "chambre"], "respuestas_correctas": "clé"}', null);

-- Preguntas para el test 9 de Francés
INSERT INTO preguntas (id_test, tipo_pregunta, nombre_pregunta, datos_pregunta, retroalimentacion) VALUES
(189, 1, '¿Cuál es la traducción de "casa" al francés?', '{"respuestas": ["maison", "voiture", "chien", "livre"], "respuestas_correctas": "maison"}', null),
(189, 1, '¿Qué significa "trabajo" en francés?', '{"respuestas": ["travail", "amour", "famille", "temps"], "respuestas_correctas": "travail"}', null),
(189, 1, '¿Cuál es la traducción de "perro" al francés?', '{"respuestas": ["chien", "chat", "oiseau", "poisson"], "respuestas_correctas": "chien"}', null),
(189, 1, '¿Cómo se dice "bien" en francés?', '{"respuestas": ["bien", "mal", "vite", "beaucoup"], "respuestas_correctas": "bien"}', null),
(189, 1, '¿Qué significa "amor" en francés?', '{"respuestas": ["amour", "haine", "joie", "tristesse"], "respuestas_correctas": "amour"}', null),
(189, 1, '¿Cuál es la traducción de "jugar" al francés?', '{"respuestas": ["jouer", "écouter", "parler", "chanter"], "respuestas_correctas": "jouer"}', null),
(189, 1, '¿Cómo se dice "mujer" en francés?', '{"respuestas": ["femme", "homme", "enfant", "ami"], "respuestas_correctas": "femme"}', null),
(189, 1, '¿Qué significa "aprender" en francés?', '{"respuestas": ["apprendre", "comprendre", "savoir", "connaître"], "respuestas_correctas": "apprendre"}', null),
(189, 1, '¿Cuál es la traducción de "tienda" al francés?', '{"respuestas": ["magasin", "école", "hôpital", "restaurant"], "respuestas_correctas": "magasin"}', null),
(189, 1, '¿Cómo se dice "hola" en francés?', '{"respuestas": ["bonjour", "au revoir", "merci", "s\'il vous plaît"], "respuestas_correctas": "bonjour"}', null);

-- Preguntas para el test 10 de Francés
INSERT INTO preguntas (id_test, tipo_pregunta, nombre_pregunta, datos_pregunta, retroalimentacion) VALUES
(190, 1, '¿Cuál es la traducción de "casa" al francés?', '{"respuestas": ["maison", "école", "voiture", "travail"], "respuestas_correctas": "maison"}', null),
(190, 1, '¿Qué significa "amor" en francés?', '{"respuestas": ["amour", "ami", "famille", "maison"], "respuestas_correctas": "amour"}', null),
(190, 1, '¿Cuál es la traducción de "trabajo" al francés?', '{"respuestas": ["travail", "école", "maison", "voiture"], "respuestas_correctas": "travail"}', null),
(190, 1, '¿Cómo se dice "mujer" en francés?', '{"respuestas": ["femme", "homme", "enfant", "garçon"], "respuestas_correctas": "femme"}', null),
(190, 1, '¿Qué significa "aprender" en francés?', '{"respuestas": ["apprendre", "lire", "jouer", "dormir"], "respuestas_correctas": "apprendre"}', null),
(190, 1, '¿Cuál es la traducción de "ciudad" al francés?', '{"respuestas": ["ville", "pays", "fleuve", "lac"], "respuestas_correctas": "ville"}', null),
(190, 1, '¿Cómo se dice "padre" en francés?', '{"respuestas": ["père", "mère", "frère", "soeur"], "respuestas_correctas": "père"}', null),
(190, 1, '¿Qué significa "viajar" en francés?', '{"respuestas": ["voyager", "travailler", "étudier", "manger"], "respuestas_correctas": "voyager"}', null),
(190, 1, '¿Cuál es la traducción de "hermano" al francés?', '{"respuestas": ["frère", "soeur", "grand-mère", "grand-père"], "respuestas_correctas": "frère"}', null),
(190, 1, '¿Cómo se dice "hola" en francés?', '{"respuestas": ["bonjour", "au revoir", "merci", "s\'il vous plaît"], "respuestas_correctas": "bonjour"}', null);

-- Renumera el id de PREGUNTAS
SET foreign_key_checks = 0;

SET @newid := 0;
UPDATE preguntas SET id = (@newid := @newid + 1) ORDER BY id;

SET foreign_key_checks = 1;
