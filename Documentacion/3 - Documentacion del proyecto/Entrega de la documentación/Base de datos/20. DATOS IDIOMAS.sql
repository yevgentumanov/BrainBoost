-- Datos para la tabla TESTS para los test de Idiomas del tipo tipo de pregunta 6 varios idiomas
INSERT INTO tests (id_materia, nombre_test, descripcion, id_usuario_creador) VALUES
(21, 'Idiomas 01', 'Test 01 sobre la materia de Idiomas de traducción.', 1),
(21, 'Idiomas 02', 'Test 02 sobre la materia de Idiomas de traducción.', 1),
(21, 'Idiomas 03', 'Test 03 sobre la materia de Idiomas de traducción.', 1),
(21, 'Idiomas 04', 'Test 04 sobre la materia de Idiomas de traducción.', 1),
(21, 'Idiomas 05', 'Test 05 sobre la materia de Idiomas de traducción.', 1),
(21, 'Idiomas 06', 'Test 06 sobre la materia de Idiomas de traducción.', 1),
(21, 'Idiomas 07', 'Test 07 sobre la materia de Idiomas de traducción.', 1),
(21, 'Idiomas 08', 'Test 08 sobre la materia de Idiomas de traducción.', 1),
(21, 'Idiomas 09', 'Test 09 sobre la materia de Idiomas de traducción.', 1),
(21, 'Idiomas 10', 'Test 10 sobre la materia de Idiomas de traducción.', 1);

SET foreign_key_checks = 0;

SET @newid := 0;
UPDATE tests SET id = (@newid := @newid + 1) ORDER BY id;

SET foreign_key_checks = 1;

-- Datos para la tabla PREGUNTAS de la MATERIA "Idiomas" para el tipo de pregunta 6 varios idiomas

-- Preguntas para el test 1 de Idiomas
INSERT INTO preguntas (id_test, tipo_pregunta, nombre_pregunta, datos_pregunta, retroalimentacion) VALUES
(191, 6, 'Escribe la palabra "casa" en:', '{"Inglés":"House", "Francés": "Maison", "Italiano": "Casa", "Alemán": "Haus"}', null),
(191, 6, 'Escribe la palabra "amigo" en:', '{"Inglés":"Friend", "Francés": "Ami", "Italiano": "Amico", "Alemán": "Freund"}', null),
(191, 6, 'Escribe la palabra "coche" en:', '{"Inglés":"Car", "Francés": "Voiture", "Italiano": "Auto", "Alemán": "Auto"}', null),
(191, 6, 'Escribe la palabra "perro" en:', '{"Inglés":"Dog", "Francés": "Chien", "Italiano": "Cane", "Alemán": "Hund"}', null),
(191, 6, 'Escribe la palabra "gato" en:', '{"Inglés":"Cat", "Francés": "Chat", "Italiano": "Gatto", "Alemán": "Katze"}', null),
(191, 6, 'Escribe la palabra "libro" en:', '{"Inglés":"Book", "Francés": "Livre", "Italiano": "Libro", "Alemán": "Buch"}', null),
(191, 6, 'Escribe la palabra "tiempo" en:', '{"Inglés":"Time", "Francés": "Temps", "Italiano": "Tempo", "Alemán": "Zeit"}', null),
(191, 6, 'Escribe la palabra "comer" en:', '{"Inglés":"Eat", "Francés": "Manger", "Italiano": "Mangiare", "Alemán": "Essen"}', null),
(191, 6, 'Escribe la palabra "viajar" en:', '{"Inglés":"Travel", "Francés": "Voyager", "Italiano": "Viaggiare", "Alemán": "Reisen"}', null),
(191, 6, 'Escribe la palabra "música" en:', '{"Inglés":"Music", "Francés": "Musique", "Italiano": "Musica", "Alemán": "Musik"}', null);

-- Preguntas para el test 2 de Idiomas
INSERT INTO preguntas (id_test, tipo_pregunta, nombre_pregunta, datos_pregunta, retroalimentacion) VALUES
(192, 6, 'Escribe la palabra "sol" en:', '{"Inglés":"Sun", "Francés": "Soleil", "Italiano": "Sole", "Alemán": "Sonne"}', null),
(192, 6, 'Escribe la palabra "agua" en:', '{"Inglés":"Water", "Francés": "Eau", "Italiano": "Acqua", "Alemán": "Wasser"}', null),
(192, 6, 'Escribe la palabra "amarillo" en:', '{"Inglés":"Yellow", "Francés": "Jaune", "Italiano": "Giallo", "Alemán": "Gelb"}', null),
(192, 6, 'Escribe la palabra "lunes" en:', '{"Inglés":"Monday", "Francés": "Lundi", "Italiano": "Lunedì", "Alemán": "Montag"}', null),
(192, 6, 'Escribe la palabra "manzana" en:', '{"Inglés":"Apple", "Francés": "Pomme", "Italiano": "Mela", "Alemán": "Apfel"}', null),
(192, 6, 'Escribe la palabra "bueno" en:', '{"Inglés":"Good", "Francés": "Bon", "Italiano": "Buono", "Alemán": "Gut"}', null),
(192, 6, 'Escribe la palabra "ropa" en:', '{"Inglés":"Clothes", "Francés": "Vêtements", "Italiano": "Vestiti", "Alemán": "Kleidung"}', null),
(192, 6, 'Escribe la palabra "familia" en:', '{"Inglés":"Family", "Francés": "Famille", "Italiano": "Famiglia", "Alemán": "Familie"}', null),
(192, 6, 'Escribe la palabra "gracias" en:', '{"Inglés":"Thank you", "Francés": "Merci", "Italiano": "Grazie", "Alemán": "Danke"}', null),
(192, 6, 'Escribe la palabra "canción" en:', '{"Inglés":"Song", "Francés": "Chanson", "Italiano": "Canzone", "Alemán": "Lied"}', null);

-- Preguntas para el test 3 de Idiomas
INSERT INTO preguntas (id_test, tipo_pregunta, nombre_pregunta, datos_pregunta, retroalimentacion) VALUES
(193, 6, 'Escribe la palabra "ordenador" en:', '{"Inglés": "Computer", "Francés": "Ordinateur", "Italiano": "Computer", "Alemán": "Computer"}', null),
(193, 6, 'Escribe la palabra "escuela" en:', '{"Inglés": "School", "Francés": "École", "Italiano": "Scuola", "Alemán": "Schule"}', null),
(193, 6, 'Escribe la palabra "amor" en:', '{"Inglés": "Love", "Francés": "Amour", "Italiano": "Amore", "Alemán": "Liebe"}', null),
(193, 6, 'Escribe la palabra "sol" en:', '{"Inglés": "Sun", "Francés": "Soleil", "Italiano": "Sole", "Alemán": "Sonne"}', null),
(193, 6, 'Escribe la palabra "feliz" en:', '{"Inglés": "Happy", "Francés": "Heureux", "Italiano": "Felice", "Alemán": "Glücklich"}', null),
(193, 6, 'Escribe la palabra "comida" en:', '{"Inglés": "Food", "Francés": "Nourriture", "Italiano": "Cibo", "Alemán": "Essen"}', null),
(193, 6, 'Escribe la palabra "viaje" en:', '{"Inglés": "Trip", "Francés": "Voyage", "Italiano": "Viaggio", "Alemán": "Reise"}', null),
(193, 6, 'Escribe la palabra "dormir" en:', '{"Inglés": "Sleep", "Francés": "Dormir", "Italiano": "Dormire", "Alemán": "Schlafen"}', null),
(193, 6, 'Escribe la palabra "rápido" en:', '{"Inglés": "Fast", "Francés": "Rapide", "Italiano": "Veloce", "Alemán": "Schnell"}', null),
(193, 6, 'Escribe la palabra "triste" en:', '{"Inglés": "Sad", "Francés": "Triste", "Italiano": "Triste", "Alemán": "Traurig"}', null);

-- Preguntas para el test 4 de Idiomas
INSERT INTO preguntas (id_test, tipo_pregunta, nombre_pregunta, datos_pregunta, retroalimentacion) VALUES
(194, 6, 'Escribe la palabra "fantasma" en:', '{"Inglés": "Ghost", "Francés": "Fantôme", "Italiano": "Fantasma", "Alemán": "Geist"}', null),
(194, 6, 'Escribe la palabra "montaña" en:', '{"Inglés": "Mountain", "Francés": "Montagne", "Italiano": "Montagna", "Alemán": "Berg"}', null),
(194, 6, 'Escribe la palabra "esperanza" en:', '{"Inglés": "Hope", "Francés": "Espérance", "Italiano": "Speranza", "Alemán": "Hoffnung"}', null),
(194, 6, 'Escribe la palabra "profesor" en:', '{"Inglés": "Teacher", "Francés": "Professeur", "Italiano": "Professore", "Alemán": "Lehrer"}', null),
(194, 6, 'Escribe la palabra "aventura" en:', '{"Inglés": "Adventure", "Francés": "Aventure", "Italiano": "Avventura", "Alemán": "Abenteuer"}', null),
(194, 6, 'Escribe la palabra "felicidad" en:', '{"Inglés": "Happiness", "Francés": "Bonheur", "Italiano": "Felicità", "Alemán": "Glück"}', null),
(194, 6, 'Escribe la palabra "bosque" en:', '{"Inglés": "Forest", "Francés": "Forêt", "Italiano": "Bosco", "Alemán": "Wald"}', null),
(194, 6, 'Escribe la palabra "pasaporte" en:', '{"Inglés": "Passport", "Francés": "Passeport", "Italiano": "Passaporto", "Alemán": "Reisepass"}', null),
(194, 6, 'Escribe la palabra "sabiduría" en:', '{"Inglés": "Wisdom", "Francés": "Sagesse", "Italiano": "Saggezza", "Alemán": "Weisheit"}', null),
(194, 6, 'Escribe la palabra "extraordinario" en:', '{"Inglés": "Extraordinary", "Francés": "Extraordinaire", "Italiano": "Straordinario", "Alemán": "Außergewöhnlich"}', null);

-- Preguntas para el test 5 de Idiomas
INSERT INTO preguntas (id_test, tipo_pregunta, nombre_pregunta, datos_pregunta, retroalimentacion) VALUES
(195, 6, 'Escribe la palabra "ambición" en:', '{"Inglés": "Ambition", "Francés": "Ambition", "Italiano": "Ambizione", "Alemán": "Ambition"}', null),
(195, 6, 'Escribe la palabra "desafío" en:', '{"Inglés": "Challenge", "Francés": "Défi", "Italiano": "Sfida", "Alemán": "Herausforderung"}', null),
(195, 6, 'Escribe la palabra "esperanza" en:', '{"Inglés": "Hope", "Francés": "Espérance", "Italiano": "Speranza", "Alemán": "Hoffnung"}', null),
(195, 6, 'Escribe la palabra "mariposa" en:', '{"Inglés": "Butterfly", "Francés": "Papillon", "Italiano": "Farfalla", "Alemán": "Schmetterling"}', null),
(195, 6, 'Escribe la palabra "sorpresa" en:', '{"Inglés": "Surprise", "Francés": "Surprise", "Italiano": "Sorpresa", "Alemán": "Überraschung"}', null),
(195, 6, 'Escribe la palabra "nostalgia" en:', '{"Inglés": "Nostalgia", "Francés": "Nostalgie", "Italiano": "Nostalgia", "Alemán": "Sehnsucht"}', null),
(195, 6, 'Escribe la palabra "valiente" en:', '{"Inglés": "Brave", "Francés": "Courageux", "Italiano": "Coraggioso", "Alemán": "Tapfer"}', null),
(195, 6, 'Escribe la palabra "destino" en:', '{"Inglés": "Destiny", "Francés": "Destin", "Italiano": "Destino", "Alemán": "Schicksal"}', null),
(195, 6, 'Escribe la palabra "paciencia" en:', '{"Inglés": "Patience", "Francés": "Patience", "Italiano": "Pazienza", "Alemán": "Geduld"}', null),
(195, 6, 'Escribe la palabra "melancolía" en:', '{"Inglés": "Melancholy", "Francés": "Mélancolie", "Italiano": "Malinconia", "Alemán": "Melancholie"}', null);

-- Preguntas para el test 6 de Idiomas
INSERT INTO preguntas (id_test, tipo_pregunta, nombre_pregunta, datos_pregunta, retroalimentacion) VALUES
(196, 6, 'Escribe la palabra "desconcertado" en:', '{"Inglés": "Bewildered", "Francés": "Déconcerté", "Italiano": "Perplesso", "Alemán": "Verwirrt"}', null),
(196, 6, 'Escribe la palabra "efímero" en:', '{"Inglés": "Ephemeral", "Francés": "Éphémère", "Italiano": "Effimero", "Alemán": "Vergänglich"}', null),
(196, 6, 'Escribe la palabra "resiliencia" en:', '{"Inglés": "Resilience", "Francés": "Résilience", "Italiano": "Resilienza", "Alemán": "Resilienz"}', null),
(196, 6, 'Escribe la palabra "desesperanza" en:', '{"Inglés": "Despair", "Francés": "Désespoir", "Italiano": "Disperazione", "Alemán": "Verzweiflung"}', null),
(196, 6, 'Escribe la palabra "intrincado" en:', '{"Inglés": "Intricate", "Francés": "Intriqué", "Italiano": "Intricato", "Alemán": "Komplex"}', null),
(196, 6, 'Escribe la palabra "consciencia" en:', '{"Inglés": "Consciousness", "Francés": "Conscience", "Italiano": "Coscienza", "Alemán": "Bewusstsein"}', null),
(196, 6, 'Escribe la palabra "efervescente" en:', '{"Inglés": "Effervescent", "Francés": "Effervescent", "Italiano": "Effervescente", "Alemán": "Sprudelnd"}', null),
(196, 6, 'Escribe la palabra "equilibrio" en:', '{"Inglés": "Balance", "Francés": "Équilibre", "Italiano": "Equilibrio", "Alemán": "Gleichgewicht"}', null),
(196, 6, 'Escribe la palabra "inefable" en:', '{"Inglés": "Ineffable", "Francés": "Ineffable", "Italiano": "Ineffabile", "Alemán": "Unbeschreiblich"}', null),
(196, 6, 'Escribe la palabra "journey" en:', '{"Inglés": "Journey", "Francés": "Voyage", "Italiano": "Viaggio", "Alemán": "Reise"}', null);

-- Preguntas para el test 7 de Idiomas
INSERT INTO preguntas (id_test, tipo_pregunta, nombre_pregunta, datos_pregunta, retroalimentacion) VALUES
(197, 6, 'Escribe la palabra "efímero" en:', '{"Inglés": "Ephemeral", "Francés": "Éphémère", "Italiano": "Effimero", "Alemán": "Vergänglich"}', null),
(197, 6, 'Escribe la palabra "serendipity" en:', '{"Inglés": "Serendipity", "Francés": "Serendipité", "Italiano": "Serendipità", "Alemán": "Serendipität"}', null),
(197, 6, 'Escribe la palabra "discombobulate" en:', '{"Inglés": "Discombobulate", "Francés": "Déconcerter", "Italiano": "Discombobulare", "Alemán": "Verwirren"}', null),
(197, 6, 'Escribe la palabra "pristine" en:', '{"Inglés": "Pristine", "Francés": "Immaculé", "Italiano": "Prístino", "Alemán": "Unberührt"}', null),
(197, 6, 'Escribe la palabra "saudade" en:', '{"Inglés": "Saudade", "Francés": "Saudade", "Italiano": "Saudade", "Alemán": "Saudade"}', null),
(197, 6, 'Escribe la palabra "meraki" en:', '{"Inglés": "Meraki", "Francés": "Meraki", "Italiano": "Meraki", "Alemán": "Meraki"}', null),
(197, 6, 'Escribe la palabra "geselligkeit" en:', '{"Inglés": "Conviviality", "Francés": "Convivialité", "Italiano": "Convivialità", "Alemán": "Geselligkeit"}', null),
(197, 6, 'Escribe la palabra "perplexité" en:', '{"Inglés": "Perplexity", "Francés": "Perplexité", "Italiano": "Perplessità", "Alemán": "Verwirrung"}', null),
(197, 6, 'Escribe la palabra "giungla" en:', '{"Inglés": "Jungle", "Francés": "Jungle", "Italiano": "Giungla", "Alemán": "Dschungel"}', null),
(197, 6, 'Escribe la palabra "ausencia" en:', '{"Inglés": "Absence", "Francés": "Absence", "Italiano": "Assenza", "Alemán": "Abwesenheit"}', null);

-- Preguntas para el test 8 de Idiomas
INSERT INTO preguntas (id_test, tipo_pregunta, nombre_pregunta, datos_pregunta, retroalimentacion) VALUES
(198, 6, 'Escribe la palabra "sophisticated" en:', '{"Inglés": "Sophisticated", "Francés": "Sophistiqué", "Italiano": "Sofisticato", "Alemán": "Anspruchsvoll"}', null),
(198, 6, 'Escribe la palabra "courage" en:', '{"Inglés": "Courage", "Francés": "Courage", "Italiano": "Coraggio", "Alemán": "Mut"}', null),
(198, 6, 'Escribe la palabra "révolution" en:', '{"Inglés": "Revolution", "Francés": "Révolution", "Italiano": "Rivoluzione", "Alemán": "Revolution"}', null),
(198, 6, 'Escribe la palabra "delicioso" en:', '{"Inglés": "Delicious", "Francés": "Délicieux", "Italiano": "Delizioso", "Alemán": "Köstlich"}', null),
(198, 6, 'Escribe la palabra "fantastique" en:', '{"Inglés": "Fantastic", "Francés": "Fantastique", "Italiano": "Fantastico", "Alemán": "Fantastisch"}', null),
(198, 6, 'Escribe la palabra "meraviglioso" en:', '{"Inglés": "Wonderful", "Francés": "Merveilleux", "Italiano": "Meraviglioso", "Alemán": "Wunderbar"}', null),
(198, 6, 'Escribe la palabra "schadenfreude" en:', '{"Inglés": "Schadenfreude", "Francés": "Schadenfreude", "Italiano": "Schadenfreude", "Alemán": "Schadenfreude"}', null),
(198, 6, 'Escribe la palabra "magnifique" en:', '{"Inglés": "Magnificent", "Francés": "Magnifique", "Italiano": "Magnifico", "Alemán": "Prächtig"}', null),
(198, 6, 'Escribe la palabra "grazie" en:', '{"Inglés": "Thank you", "Francés": "Merci", "Italiano": "Grazie", "Alemán": "Danke"}', null),
(198, 6, 'Escribe la palabra "hermoso" en:', '{"Inglés": "Beautiful", "Francés": "Beau", "Italiano": "Bello", "Alemán": "Schön"}', null);

-- Preguntas para el test 9 de Idiomas
INSERT INTO preguntas (id_test, tipo_pregunta, nombre_pregunta, datos_pregunta, retroalimentacion) VALUES
(199, 6, 'Escribe la palabra "hello" en:', '{"Inglés": "Hello", "Francés": "Bonjour", "Italiano": "Ciao", "Alemán": "Hallo"}', null),
(199, 6, 'Escribe la palabra "chocolate" en:', '{"Inglés": "Chocolate", "Francés": "Chocolat", "Italiano": "Cioccolato", "Alemán": "Schokolade"}', null),
(199, 6, 'Escribe la palabra "sun" en:', '{"Inglés": "Sun", "Francés": "Soleil", "Italiano": "Sole", "Alemán": "Sonne"}', null),
(199, 6, 'Escribe la palabra "thank you" en:', '{"Inglés": "Thank you", "Francés": "Merci", "Italiano": "Grazie", "Alemán": "Danke"}', null),
(199, 6, 'Escribe la palabra "goodbye" en:', '{"Inglés": "Goodbye", "Francés": "Au revoir", "Italiano": "Addio", "Alemán": "Auf Wiedersehen"}', null),
(199, 6, 'Escribe la palabra "friendship" en:', '{"Inglés": "Friendship", "Francés": "Amitié", "Italiano": "Amicizia", "Alemán": "Freundschaft"}', null),
(199, 6, 'Escribe la palabra "beautiful" en:', '{"Inglés": "Beautiful", "Francés": "Beau/belle", "Italiano": "Bello/bella", "Alemán": "Schön"}', null),
(199, 6, 'Escribe la palabra "thanksgiving" en:', '{"Inglés": "Thanksgiving", "Francés": "Action de grâce", "Italiano": "Ringraziamento", "Alemán": "Erntedankfest"}', null),
(199, 6, 'Escribe la palabra "bicycle" en:', '{"Inglés": "Bicycle", "Francés": "Vélo", "Italiano": "Bicicletta", "Alemán": "Fahrrad"}', null),
(199, 6, 'Escribe la palabra "beach" en:', '{"Inglés": "Beach", "Francés": "Plage", "Italiano": "Spiaggia", "Alemán": "Strand"}', null);

-- Preguntas para el test 10 de Idiomas
INSERT INTO preguntas (id_test, tipo_pregunta, nombre_pregunta, datos_pregunta, retroalimentacion) VALUES
(200, 6, 'Escribe la palabra "happiness" en:', '{"Inglés": "Happiness", "Francés": "Bonheur", "Italiano": "Felicità", "Alemán": "Glück"}', null),
(200, 6, 'Escribe la palabra "mountain" en:', '{"Inglés": "Mountain", "Francés": "Montagne", "Italiano": "Montagna", "Alemán": "Berg"}', null),
(200, 6, 'Escribe la palabra "dream" en:', '{"Inglés": "Dream", "Francés": "Rêve", "Italiano": "Sogno", "Alemán": "Traum"}', null),
(200, 6, 'Escribe la palabra "rain" en:', '{"Inglés": "Rain", "Francés": "Pluie", "Italiano": "Pioggia", "Alemán": "Regen"}', null),
(200, 6, 'Escribe la palabra "fire" en:', '{"Inglés": "Fire", "Francés": "Feu", "Italiano": "Fuoco", "Alemán": "Feuer"}', null),
(200, 6, 'Escribe la palabra "family" en:', '{"Inglés": "Family", "Francés": "Famille", "Italiano": "Famiglia", "Alemán": "Familie"}', null),
(200, 6, 'Escribe la palabra "water" en:', '{"Inglés": "Water", "Francés": "Eau", "Italiano": "Acqua", "Alemán": "Wasser"}', null),
(200, 6, 'Escribe la palabra "tree" en:', '{"Inglés": "Tree", "Francés": "Arbre", "Italiano": "Albero", "Alemán": "Baum"}', null),
(200, 6, 'Escribe la palabra "sunflower" en:', '{"Inglés": "Sunflower", "Francés": "Tournesol", "Italiano": "Girasole", "Alemán": "Sonnenblume"}', null),
(200, 6, 'Escribe la palabra "moon" en:', '{"Inglés": "Moon", "Francés": "Lune", "Italiano": "Luna", "Alemán": "Mond"}', null);

-- Renumera el id de PREGUNTAS
SET foreign_key_checks = 0;

SET @newid := 0;
UPDATE preguntas SET id = (@newid := @newid + 1) ORDER BY id;

SET foreign_key_checks = 1;
