-- Datos para la tabla TESTS para los test de Italiano del tipo tipo de pregunta 1 con respuesta unica
INSERT INTO tests (id_materia, nombre_test, descripcion, id_usuario_creador) VALUES
(13, 'Italiano 01', 'Test 01 sobre la materia de Italiano con respuesta única.', 1),
(13, 'Italiano 02', 'Test 02 sobre la materia de Italiano con respuesta única.', 1),
(13, 'Italiano 03', 'Test 03 sobre la materia de Italiano con respuesta única.', 1),
(13, 'Italiano 04', 'Test 04 sobre la materia de Italiano con respuesta única.', 1),
(13, 'Italiano 05', 'Test 05 sobre la materia de Italiano con respuesta única.', 1),
(13, 'Italiano 06', 'Test 06 sobre la materia de Italiano con respuesta única.', 1),
(13, 'Italiano 07', 'Test 07 sobre la materia de Italiano con respuesta única.', 1),
(13, 'Italiano 08', 'Test 08 sobre la materia de Italiano con respuesta única.', 1),
(13, 'Italiano 09', 'Test 09 sobre la materia de Italiano con respuesta única.', 1),
(13, 'Italiano 10', 'Test 10 sobre la materia de Italiano con respuesta única.', 1);

SET foreign_key_checks = 0;

SET @newid := 0;
UPDATE tests SET id = (@newid := @newid + 1) ORDER BY id;

SET foreign_key_checks = 1;


-- Datos para la tabla PREGUNTAS de la MATERIA "Italiano" para el tipo de pregunta 1 con respuesta unica

-- Preguntas para el test 1 de Italiano
INSERT INTO preguntas (id_test, tipo_pregunta, nombre_pregunta, datos_pregunta, retroalimentacion) VALUES
(171, 1, '¿Cuál es la traducción de "casa" al italiano?', '{"respuestas": ["casa", "città", "amore", "sole"], "respuestas_correctas": "casa"}', null),
(171, 1, '¿Cómo se dice "amigo" en italiano?', '{"respuestas": ["amico", "famiglia", "scuola", "cibo"], "respuestas_correctas": "amico"}', null),
(171, 1, '¿Qué significa "bello" en español?', '{"respuestas": ["hermoso", "feo", "alto", "bajo"], "respuestas_correctas": "hermoso"}', null),
(171, 1, '¿Cuál es la traducción de "música" al italiano?', '{"respuestas": ["musica", "arte", "canto", "danza"], "respuestas_correctas": "musica"}', null),
(171, 1, '¿Cómo se dice "comida" en italiano?', '{"respuestas": ["cibo", "bevanda", "spazio", "tempo"], "respuestas_correctas": "cibo"}', null),
(171, 1, '¿Qué significa "libro" en italiano?', '{"respuestas": ["libro", "penna", "quaderno", "scuola"], "respuestas_correctas": "libro"}', null),
(171, 1, '¿Cuál es la traducción de "fiesta" al italiano?', '{"respuestas": ["festa", "gioia", "vacanza", "gioco"], "respuestas_correctas": "festa"}', null),
(171, 1, '¿Cómo se dice "tiempo" en italiano?', '{"respuestas": ["tempo", "luce", "vita", "giorno"], "respuestas_correctas": "tempo"}', null),
(171, 1, '¿Qué significa "feliz" en italiano?', '{"respuestas": ["felice", "triste", "enojado", "asustado"], "respuestas_correctas": "felice"}', null),
(171, 1, '¿Cuál es la traducción de "viaje" al italiano?', '{"respuestas": ["viaggio", "auto", "treno", "aereo"], "respuestas_correctas": "viaggio"}', null);

-- Preguntas para el test 2 de Italiano
INSERT INTO preguntas (id_test, tipo_pregunta, nombre_pregunta, datos_pregunta, retroalimentacion) VALUES
(172, 1, '¿Cuál es la traducción de "casa" al italiano?', '{"respuestas": ["casa", "appartamento", "giardino", "piscina"], "respuestas_correctas": "casa"}', null),
(172, 1, '¿Cómo se dice "hola" en italiano?', '{"respuestas": ["ciao", "arrivederci", "grazie", "per favore"], "respuestas_correctas": "ciao"}', null),
(172, 1, '¿Qué significa "grazie" en español?', '{"respuestas": ["gracias", "adiós", "por favor", "buenos días"], "respuestas_correctas": "gracias"}', null),
(172, 1, '¿Cuál es la traducción de "perro" al italiano?', '{"respuestas": ["cane", "gatto", "uccello", "pesce"], "respuestas_correctas": "cane"}', null),
(172, 1, '¿Cómo se dice "amigo" en italiano?', '{"respuestas": ["amico", "famiglia", "scuola", "lavoro"], "respuestas_correctas": "amico"}', null),
(172, 1, '¿Qué significa "bello" en español?', '{"respuestas": ["hermoso", "feo", "alto", "bajo"], "respuestas_correctas": "hermoso"}', null),
(172, 1, '¿Cuál es la traducción de "libro" al italiano?', '{"respuestas": ["libro", "giornale", "rivista", "recensione"], "respuestas_correctas": "libro"}', null),
(172, 1, '¿Cómo se dice "comer" en italiano?', '{"respuestas": ["mangiare", "bere", "dormire", "parlare"], "respuestas_correctas": "mangiare"}', null),
(172, 1, '¿Qué significa "felice" en español?', '{"respuestas": ["feliz", "triste", "enojado", "asustado"], "respuestas_correctas": "feliz"}', null),
(172, 1, '¿Cuál es la traducción de "ropa" al italiano?', '{"respuestas": ["vestiti", "scarpe", "cappello", "borsetta"], "respuestas_correctas": "vestiti"}', null);

-- Preguntas para el test 3 de Italiano
INSERT INTO preguntas (id_test, tipo_pregunta, nombre_pregunta, datos_pregunta, retroalimentacion) VALUES
(173, 1, '¿Cuál es la traducción de "agua" al italiano?', '{"respuestas": ["acqua", "vino", "latte", "caffè"], "respuestas_correctas": "acqua"}', null),
(173, 1, '¿Cómo se dice "mañana" en italiano?', '{"respuestas": ["domani", "ieri", "oggi", "sempre"], "respuestas_correctas": "domani"}', null),
(173, 1, '¿Qué significa "ciao" en español?', '{"respuestas": ["hola", "adiós", "gracias", "por favor"], "respuestas_correctas": "hola"}', null),
(173, 1, '¿Cuál es la traducción de "ciudad" al italiano?', '{"respuestas": ["città", "paese", "montagna", "mare"], "respuestas_correctas": "città"}', null),
(173, 1, '¿Cómo se dice "comer" en italiano?', '{"respuestas": ["mangiare", "bere", "dormire", "parlare"], "respuestas_correctas": "mangiare"}', null),
(173, 1, '¿Qué significa "feliz" en italiano?', '{"respuestas": ["felice", "triste", "enojado", "asustado"], "respuestas_correctas": "felice"}', null),
(173, 1, '¿Cuál es la traducción de "libro" al italiano?', '{"respuestas": ["libro", "giornale", "rivista", "romanzo"], "respuestas_correctas": "libro"}', null),
(173, 1, '¿Cómo se dice "amarillo" en italiano?', '{"respuestas": ["giallo", "rosso", "blu", "verde"], "respuestas_correctas": "giallo"}', null),
(173, 1, '¿Qué significa "casa" en italiano?', '{"respuestas": ["casa", "appartamento", "giardino", "piscina"], "respuestas_correctas": "casa"}', null),
(173, 1, '¿Cuál es la traducción de "ropa" al italiano?', '{"respuestas": ["vestiti", "scarpe", "cappotto", "borsetta"], "respuestas_correctas": "vestiti"}', null);

-- Preguntas para el test 4 de Italiano
INSERT INTO preguntas (id_test, tipo_pregunta, nombre_pregunta, datos_pregunta, retroalimentacion) VALUES
(174, 1, '¿Cuál es la traducción de "sueño" al italiano?', '{"respuestas": ["sogno", "notte", "sonno", "pensiero"], "respuestas_correctas": "sogno"}', null),
(174, 1, '¿Cómo se dice "silencio" en italiano?', '{"respuestas": ["silenzio", "rumore", "parola", "voce"], "respuestas_correctas": "silenzio"}', null),
(174, 1, '¿Qué significa "destino" en italiano?', '{"respuestas": ["destino", "scelta", "fortuna", "caso"], "respuestas_correctas": "destino"}', null),
(174, 1, '¿Cuál es la traducción de "valiente" al italiano?', '{"respuestas": ["coraggioso", "timido", "debole", "cattivo"], "respuestas_correctas": "coraggioso"}', null),
(174, 1, '¿Cómo se dice "extraordinario" en italiano?', '{"respuestas": ["straordinario", "ordinario", "normale", "comune"], "respuestas_correctas": "straordinario"}', null),
(174, 1, '¿Qué significa "desafío" en italiano?', '{"respuestas": ["sfida", "vittoria", "perdita", "battaglia"], "respuestas_correctas": "sfida"}', null),
(174, 1, '¿Cuál es la traducción de "inocente" al italiano?', '{"respuestas": ["innocente", "colpevole", "malvagio", "corrotto"], "respuestas_correctas": "innocente"}', null),
(174, 1, '¿Cómo se dice "renunciar" en italiano?', '{"respuestas": ["rinunciare", "accettare", "provare", "vincere"], "respuestas_correctas": "rinunciare"}', null),
(174, 1, '¿Qué significa "esencia" en italiano?', '{"respuestas": ["essenza", "odore", "colore", "forma"], "respuestas_correctas": "essenza"}', null),
(174, 1, '¿Cuál es la traducción de "consciencia" al italiano?', '{"respuestas": ["coscienza", "mente", "pensiero", "anima"], "respuestas_correctas": "coscienza"}', null);

-- Preguntas para el test 5 de Italiano
INSERT INTO preguntas (id_test, tipo_pregunta, nombre_pregunta, datos_pregunta, retroalimentacion) VALUES
(175, 1, '¿Cuál es la traducción de "efímero" al italiano?', '{"respuestas": ["effimero", "eterno", "permanente", "duraturo"], "respuestas_correctas": "effimero"}', null),
(175, 1, '¿Cómo se dice "melancolía" en italiano?', '{"respuestas": ["malinconia", "gioia", "felicità", "euforia"], "respuestas_correctas": "malinconia"}', null),
(175, 1, '¿Qué significa "serenidad" en italiano?', '{"respuestas": ["serenità", "agitazione", "nervosismo", "preoccupazione"], "respuestas_correctas": "serenità"}', null),
(175, 1, '¿Cuál es la traducción de "nostalgia" al italiano?', '{"respuestas": ["nostalgia", "amore", "odio", "gioia"], "respuestas_correctas": "nostalgia"}', null),
(175, 1, '¿Cómo se dice "esperanza" en italiano?', '{"respuestas": ["speranza", "tristezza", "disperazione", "rabbia"], "respuestas_correctas": "speranza"}', null),
(175, 1, '¿Qué significa "renacimiento" en italiano?', '{"respuestas": ["rinascita", "fine", "decadenza", "morte"], "respuestas_correctas": "rinascita"}', null),
(175, 1, '¿Cuál es la traducción de "efervescencia" al italiano?', '{"respuestas": ["effervescenza", "calma", "tranquillità", "quiete"], "respuestas_correctas": "effervescenza"}', null),
(175, 1, '¿Cómo se dice "éxtasis" en italiano?', '{"respuestas": ["estasi", "tristezza", "delusione", "amarezza"], "respuestas_correctas": "estasi"}', null),
(175, 1, '¿Qué significa "armonía" en italiano?', '{"respuestas": ["armonia", "caos", "disordine", "discordia"], "respuestas_correctas": "armonia"}', null),
(175, 1, '¿Cuál es la traducción de "desasosiego" al italiano?', '{"respuestas": ["inquietudine", "calma", "tranquillità", "quiete"], "respuestas_correctas": "inquietudine"}', null);

-- Preguntas para el test 6 de Italiano
INSERT INTO preguntas (id_test, tipo_pregunta, nombre_pregunta, datos_pregunta, retroalimentacion) VALUES
(176, 1, '¿Cuál es la traducción de "desayuno" al italiano?', '{"respuestas": ["colazione", "pranzo", "cena", "merenda"], "respuestas_correctas": "colazione"}', null),
(176, 1, '¿Cómo se dice "biblioteca" en italiano?', '{"respuestas": ["biblioteca", "libreria", "archivio", "museo"], "respuestas_correctas": "biblioteca"}', null),
(176, 1, '¿Qué significa "amanecer" en italiano?', '{"respuestas": ["alba", "tramonto", "giorno", "notte"], "respuestas_correctas": "alba"}', null),
(176, 1, '¿Cuál es la traducción de "verano" al italiano?', '{"respuestas": ["estate", "primavera", "autunno", "inverno"], "respuestas_correctas": "estate"}', null),
(176, 1, '¿Cómo se dice "feliz" en italiano?', '{"respuestas": ["felice", "triste", "enojado", "asustado"], "respuestas_correctas": "felice"}', null),
(176, 1, '¿Qué significa "montaña" en italiano?', '{"respuestas": ["montagna", "valle", "collina", "pianura"], "respuestas_correctas": "montagna"}', null),
(176, 1, '¿Cuál es la traducción de "viaje" al italiano?', '{"respuestas": ["viaggio", "destinazione", "arrivo", "partenza"], "respuestas_correctas": "viaggio"}', null),
(176, 1, '¿Cómo se dice "playa" en italiano?', '{"respuestas": ["spiaggia", "mare", "costa", "scoglio"], "respuestas_correctas": "spiaggia"}', null),
(176, 1, '¿Qué significa "amor" en italiano?', '{"respuestas": ["amore", "odio", "gioia", "tristezza"], "respuestas_correctas": "amore"}', null),
(176, 1, '¿Cuál es la traducción de "amigo" al italiano?', '{"respuestas": ["amico", "nemico", "compagno", "collega"], "respuestas_correctas": "amico"}', null);

-- Preguntas para el test 7 de Italiano
INSERT INTO preguntas (id_test, tipo_pregunta, nombre_pregunta, datos_pregunta, retroalimentacion) VALUES
(177, 1, '¿Cuál es la traducción de "perro" al italiano?', '{"respuestas": ["cane", "gatto", "uccello", "pesce"], "respuestas_correctas": "cane"}', null),
(177, 1, '¿Cómo se dice "casa" en italiano?', '{"respuestas": ["casa", "appartamento", "villa", "ufficio"], "respuestas_correctas": "casa"}', null),
(177, 1, '¿Qué significa "tiempo" en italiano?', '{"respuestas": ["tempo", "spazio", "luce", "suono"], "respuestas_correctas": "tempo"}', null),
(177, 1, '¿Cuál es la traducción de "rojo" al italiano?', '{"respuestas": ["rosso", "verde", "blu", "giallo"], "respuestas_correctas": "rosso"}', null),
(177, 1, '¿Cómo se dice "trabajo" en italiano?', '{"respuestas": ["lavoro", "studio", "vacanza", "riposo"], "respuestas_correctas": "lavoro"}', null),
(177, 1, '¿Qué significa "esperanza" en italiano?', '{"respuestas": ["speranza", "paura", "gioia", "rabbia"], "respuestas_correctas": "speranza"}', null),
(177, 1, '¿Cuál es la traducción de "ciudad" al italiano?', '{"respuestas": ["città", "paese", "villaggio", "capitale"], "respuestas_correctas": "città"}', null),
(177, 1, '¿Cómo se dice "hermano" en italiano?', '{"respuestas": ["fratello", "sorella", "madre", "padre"], "respuestas_correctas": "fratello"}', null),
(177, 1, '¿Qué significa "comer" en italiano?', '{"respuestas": ["mangiare", "bere", "dormire", "correre"], "respuestas_correctas": "mangiare"}', null),
(177, 1, '¿Cuál es la traducción de "libro" al italiano?', '{"respuestas": ["libro", "giornale", "rivista", "catalogo"], "respuestas_correctas": "libro"}', null);

-- Preguntas para el test 8 de Italiano
INSERT INTO preguntas (id_test, tipo_pregunta, nombre_pregunta, datos_pregunta, retroalimentacion) VALUES
(178, 1, '¿Cuál es la traducción de "sol" al italiano?', '{"respuestas": ["sole", "luna", "stella", "nuvola"], "respuestas_correctas": "sole"}', null),
(178, 1, '¿Cómo se dice "amigo" en italiano?', '{"respuestas": ["amico", "compagno", "fratello", "socio"], "respuestas_correctas": "amico"}', null),
(178, 1, '¿Qué significa "bello" en italiano?', '{"respuestas": ["hermoso", "feo", "grande", "pequeño"], "respuestas_correctas": "hermoso"}', null),
(178, 1, '¿Cuál es la traducción de "mesa" al italiano?', '{"respuestas": ["tavolo", "sedia", "letto", "cucina"], "respuestas_correctas": "tavolo"}', null),
(178, 1, '¿Cómo se dice "feliz" en italiano?', '{"respuestas": ["felice", "triste", "enojado", "asustado"], "respuestas_correctas": "felice"}', null),
(178, 1, '¿Qué significa "sueño" en italiano?', '{"respuestas": ["sogno", "realtà", "fantasia", "incubo"], "respuestas_correctas": "sogno"}', null),
(178, 1, '¿Cuál es la traducción de "mar" al italiano?', '{"respuestas": ["mare", "fiume", "lago", "oceano"], "respuestas_correctas": "mare"}', null),
(178, 1, '¿Cómo se dice "viaje" en italiano?', '{"respuestas": ["viaggio", "destinazione", "bagaglio", "biglietto"], "respuestas_correctas": "viaggio"}', null),
(178, 1, '¿Qué significa "calle" en italiano?', '{"respuestas": ["strada", "piazza", "vicolo", "corso"], "respuestas_correctas": "strada"}', null),
(178, 1, '¿Cuál es la traducción de "llave" al italiano?', '{"respuestas": ["chiave", "porta", "finestra", "candela"], "respuestas_correctas": "chiave"}', null);

-- Preguntas para el test 9 de Italiano
INSERT INTO preguntas (id_test, tipo_pregunta, nombre_pregunta, datos_pregunta, retroalimentacion) VALUES
(179, 1, '¿Cuál es la traducción de "desafortunado" al italiano?', '{"respuestas": ["sfortunato", "fortunato", "infelice", "incredibile"], "respuestas_correctas": "sfortunato"}', null),
(179, 1, '¿Cómo se dice "pesadilla" en italiano?', '{"respuestas": ["incubo", "sogno", "terrore", "fantasma"], "respuestas_correctas": "incubo"}', null),
(179, 1, '¿Qué significa "suspiro" en italiano?', '{"respuestas": ["sospiro", "respiro", "fiato", "ansia"], "respuestas_correctas": "sospiro"}', null),
(179, 1, '¿Cuál es la traducción de "brillante" al italiano?', '{"respuestas": ["splendente", "opaco", "lucente", "scuro"], "respuestas_correctas": "splendente"}', null),
(179, 1, '¿Cómo se dice "desafío" en italiano?', '{"respuestas": ["sfida", "competizione", "prova", "avventura"], "respuestas_correctas": "sfida"}', null),
(179, 1, '¿Qué significa "efímero" en italiano?', '{"respuestas": ["effimero", "eterno", "duraturo", "infinito"], "respuestas_correctas": "effimero"}', null),
(179, 1, '¿Cuál es la traducción de "susurro" al italiano?', '{"respuestas": ["sussurro", "rumore", "grido", "silenzio"], "respuestas_correctas": "sussurro"}', null),
(179, 1, '¿Cómo se dice "resplandor" en italiano?', '{"respuestas": ["splendore", "oscurità", "luce", "ombra"], "respuestas_correctas": "splendore"}', null),
(179, 1, '¿Qué significa "deslumbrante" en italiano?', '{"respuestas": ["abbagliante", "scuro", "opaco", "palese"], "respuestas_correctas": "abbagliante"}', null),
(179, 1, '¿Cuál es la traducción de "intrincado" al italiano?', '{"respuestas": ["complesso", "semplice", "confuso", "disordinato"], "respuestas_correctas": "complesso"}', null);

-- Preguntas para el test 10 de Italiano
INSERT INTO preguntas (id_test, tipo_pregunta, nombre_pregunta, datos_pregunta, retroalimentacion)
VALUES
(180, 1, '¿Cuál es la traducción de "desesperación" al italiano?', '{"respuestas": ["disperazione", "speranza", "tristezza", "incertezza"], "respuestas_correctas": "disperazione"}', null),
(180, 1, '¿Cómo se dice "inexpugnable" en italiano?', '{"respuestas": ["inespugnabile", "fragile", "debole", "infrangibile"], "respuestas_correctas": "inespugnabile"}', null),
(180, 1, '¿Qué significa "alucinación" en italiano?', '{"respuestas": ["allucinazione", "realtà", "fantasia", "illusione"], "respuestas_correctas": "allucinazione"}', null),
(180, 1, '¿Cuál es la traducción de "inquebrantable" al italiano?', '{"respuestas": ["incrollabile", "fragile", "vulnerabile", "indebolibile"], "respuestas_correctas": "incrollabile"}', null),
(180, 1, '¿Cómo se dice "paradigma" en italiano?', '{"respuestas": ["paradigma", "modello", "schema", "esempio"], "respuestas_correctas": "paradigma"}', null),
(180, 1, '¿Qué significa "exacerbado" en italiano?', '{"respuestas": ["esacerbato", "calmato", "mitigato", "moderato"], "respuestas_correctas": "esacerbato"}', null),
(180, 1, '¿Cuál es la traducción de "inexorable" al italiano?', '{"respuestas": ["inesorabile", "flessibile", "morbido", "resistente"], "respuestas_correctas": "inesorabile"}', null),
(180, 1, '¿Cómo se dice "meticuloso" en italiano?', '{"respuestas": ["meticoloso", "superficiale", "veloce", "trascurato"], "respuestas_correctas": "meticoloso"}', null),
(180, 1, '¿Qué significa "inexplicable" en italiano?', '{"respuestas": ["inexplicabile", "evidente", "comprensibile", "chiaro"], "respuestas_correctas": "inexplicabile"}', null),
(180, 1, '¿Cuál es la traducción de "irrevocable" al italiano?', '{"respuestas": ["irrevocabile", "reversibile", "modificabile", "cambiabile"], "respuestas_correctas": "irrevocabile"}', null);

-- Renumera el id de PREGUNTAS
SET foreign_key_checks = 0;

SET @newid := 0;
UPDATE preguntas SET id = (@newid := @newid + 1) ORDER BY id;

SET foreign_key_checks = 1;
