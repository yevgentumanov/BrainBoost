-- Datos para la tabla TESTS para los test de Geografía del tipo tipo de pregunta 1 con respuesta unica
INSERT INTO tests (id_materia, nombre_test, descripcion, id_usuario_creador) VALUES
(11, 'Geografía 01', 'Test 01 sobre la materia de Geografía con respuesta única.', 1),
(11, 'Geografía 02', 'Test 02 sobre la materia de Geografía con respuesta única.', 1),
(11, 'Geografía 03', 'Test 03 sobre la materia de Geografía con respuesta única.', 1),
(11, 'Geografía 04', 'Test 04 sobre la materia de Geografía con respuesta única.', 1),
(11, 'Geografía 05', 'Test 05 sobre la materia de Geografía con respuesta única.', 1),
(11, 'Geografía 06', 'Test 06 sobre la materia de Geografía con respuesta única.', 1),
(11, 'Geografía 07', 'Test 07 sobre la materia de Geografía con respuesta única.', 1),
(11, 'Geografía 08', 'Test 08 sobre la materia de Geografía con respuesta única.', 1),
(11, 'Geografía 09', 'Test 09 sobre la materia de Geografía con respuesta única.', 1),
(11, 'Geografía 10', 'Test 10 sobre la materia de Geografía con respuesta única.', 1);

SET foreign_key_checks = 0;

SET @newid := 0;
UPDATE tests SET id = (@newid := @newid + 1) ORDER BY id;

SET foreign_key_checks = 1;

-- Datos para la tabla PREGUNTAS de la MATERIA "Geografía" para el tipo de pregunta 1 con respuesta unica

-- Preguntas para el test 1 de GEOGRAFIA
INSERT INTO preguntas (id_test, tipo_pregunta, nombre_pregunta, datos_pregunta, retroalimentacion) VALUES
(31, 1, "¿Cuál es el océano más grande del mundo?", '{"respuestas": ["Pacífico", "Atlántico", "Índico", "Ártico"], "respuestas_correctas": "Pacífico"}', "El Océano Pacífico es el océano más grande del mundo, abarcando más de un tercio de la superficie total del planeta."),
(31, 1, "¿Cuál es el río más largo del mundo?", '{"respuestas": ["Amazonas", "Nilo", "Yangtsé", "Misisipi"], "respuestas_correctas": "Nilo"}', "El Río Nilo es considerado el río más largo del mundo, con una longitud total de aproximadamente 6.650 km."),
(31, 1, "¿En qué continente se encuentra el país de India?", '{"respuestas": ["Asia", "África", "Europa", "Oceanía"], "respuestas_correctas": "Asia"}', "India se encuentra en el continente de Asia, al sur del Himalaya."),
(31, 1, "¿Qué país tiene el territorio más extenso del mundo?", '{"respuestas": ["Rusia", "China", "Canadá", "Estados Unidos"], "respuestas_correctas": "Rusia"}', "Rusia es el país con el territorio más extenso del mundo, abarcando más de 17 millones de km²."),
(31, 1, "¿En qué continente se encuentra la cordillera de los Andes?", '{"respuestas": ["Sudamérica", "América del Norte", "Europa", "África"], "respuestas_correctas": "Sudamérica"}', "La cordillera de los Andes se extiende por varios países de Sudamérica, incluyendo Argentina, Bolivia, Chile, Colombia, Ecuador y Perú."),
(31, 1, "¿Cuál es el país más pequeño del mundo en términos de territorio?", '{"respuestas": ["Ciudad del Vaticano", "Mónaco", "Nauru", "San Marino"], "respuestas_correctas": "Ciudad del Vaticano"}', "La Ciudad del Vaticano es el país más pequeño del mundo en términos de territorio, con una superficie de aproximadamente 0,44 km²."),
(22, 1, "¿Qué país es el más grande de África?", '{"respuestas": ["Sudán", "Argelia", "Nigeria", "Egipto"], "respuestas_correctas": "Argelia"}', "Argelia es el país más grande de África, con una superficie de más de 2,3 millones de km²."),
(23, 1, "¿Cuál es el río más largo del mundo?", '{"respuestas": ["Amazonas", "Nilo", "Yangtsé", "Misisipi"], "respuestas_correctas": "Nilo"}', "El río Nilo es el más largo del mundo, con una longitud aproximada de 6.650 km."),
(24, 1, "¿En qué país se encuentra la Gran Barrera de Coral?", '{"respuestas": ["Australia", "Filipinas", "Indonesia", "Papúa Nueva Guinea"], "respuestas_correctas": "Australia"}', "La Gran Barrera de Coral se encuentra frente a la costa de Australia, en el Océano Pacífico, y es el sistema de arrecifes de coral más grande del mundo."),
(25, 1, "¿Cuál es el país más pequeño del mundo?", '{"respuestas": ["Mónaco", "Nauru", "San Marino", "Ciudad del Vaticano"], "respuestas_correctas": "Ciudad del Vaticano"}', "La Ciudad del Vaticano es el país más pequeño del mundo, con una superficie de sólo 44 hectáreas y una población de alrededor de 800 habitantes.");

-- Preguntas para el test 2 de GEOGRAFIA
INSERT INTO preguntas (id_test, tipo_pregunta, nombre_pregunta, datos_pregunta, retroalimentacion) VALUES
(32, 1, "¿Cuál es el país más grande de América Latina?", '{"respuestas": ["Brasil", "México", "Argentina", "Perú"], "respuestas_correctas": "Brasil"}', "Brasil es el país más grande de América Latina, con una superficie total de aproximadamente 8,5 millones de km²."),
(32, 1, "¿Cuál es la capital de Australia?", '{"respuestas": ["Sídney", "Melbourne", "Brisbane", "Canberra"], "respuestas_correctas": "Canberra"}', "Canberra es la capital de Australia, ubicada en el Territorio de la Capital Australiana."),
(32, 1, "¿Cuál es la ciudad más poblada del mundo?", '{"respuestas": ["Tokio", "Shanghái", "Mumbai", "Ciudad de México"], "respuestas_correctas": "Tokio"}', "Tokio, la capital de Japón, es la ciudad más poblada del mundo, con una población de más de 37 millones de habitantes en su área metropolitana."),
(32, 1, "¿En qué país se encuentra la Torre Eiffel?", '{"respuestas": ["Francia", "Italia", "Alemania", "Reino Unido"], "respuestas_correctas": "Francia"}', "La Torre Eiffel se encuentra en París, la capital de Francia, y es uno de los monumentos más emblemáticos del país."),
(32, 1, "¿Qué país se encuentra en la punta sur de América del Sur?", '{"respuestas": ["Argentina", "Chile", "Uruguay", "Brasil"], "respuestas_correctas": "Argentina"}', "Argentina se encuentra en la punta sur de América del Sur, con una extensa costa sobre el Océano Atlántico."),
(32, 1, "¿Cuál es el país más poblado del mundo?", '{"respuestas": ["China", "India", "Estados Unidos", "Indonesia"], "respuestas_correctas": "China"}', "China es el país más poblado del mundo, con una población de más de 1.400 millones de habitantes."),
(32, 1, "¿En qué país se encuentra el volcán Vesuvio?", '{"respuestas": ["Italia", "Grecia", "Turquía", "España"], "respuestas_correctas": "Italia"}', "El volcán Vesuvio se encuentra en Italia, cerca de la ciudad de Nápoles, y es conocido por su erupción en el año 79 d.C. que destruyó la ciudad de Pompeya."),
(32, 1, "¿Cuál es el desierto más grande del mundo?", '{"respuestas": ["Sahara", "Atacama", "Gobi", "Antártico"], "respuestas_correctas": "Sahara"}', "El Sahara es el desierto más grande del mundo, abarcando una superficie de aproximadamente 9 millones de km²."),
(32, 1, "¿En qué océano se encuentra la isla de Madagascar?", '{"respuestas": ["Océano Atlántico", "Océano Índico", "Océano Pacífico", "Mar Mediterráneo"], "respuestas_correctas": "Océano Índico"}', "La isla de Madagascar se encuentra en el Océano Índico, frente a la costa sureste del continente africano."),
(32, 1, "¿Cuál es la cordillera más larga del mundo?", '{"respuestas": ["Andes", "Himalaya", "Alpes", "Rockies"], "respuestas_correctas": "Andes"}', "Los Andes son la cordillera más larga del mundo, con una longitud de aproximadamente 7.000 km, y se extienden por varios países de América del Sur.");

-- Preguntas para el test 3 de GEOGRAFIA
INSERT INTO preguntas (id_test, tipo_pregunta, nombre_pregunta, datos_pregunta, retroalimentacion) VALUES
(33, 1, "¿En qué continente se encuentra el país de Marruecos?", '{"respuestas": ["África", "Europa", "Asia", "Oceanía"], "respuestas_correctas": "África"}', "Marruecos es un país que se encuentra en el continente africano, en la costa noroeste del continente."),
(33, 1, "¿Qué país de Europa tiene forma de bota?", '{"respuestas": ["Italia", "España", "Francia", "Alemania"], "respuestas_correctas": "Italia"}', "Italia es el país de Europa que tiene forma de bota, y se encuentra en la península itálica en el sur del continente."),
(33, 1, "¿En qué océano se encuentra la isla de Tasmania?", '{"respuestas": ["Océano Índico", "Océano Pacífico", "Océano Atlántico", "Ninguno de los anteriores"], "respuestas_correctas": "Océano Pacífico"}', "La isla de Tasmania se encuentra en el Océano Pacífico, al sur de Australia."),
(33, 1, "¿Cuál es el país más grande de América del Sur?", '{"respuestas": ["Argentina", "Brasil", "Colombia", "Perú"], "respuestas_correctas": "Brasil"}', "Brasil es el país más grande de América del Sur, con una superficie de más de 8,5 millones de km²."),
(33, 1, "¿Cuál es el país más pequeño de América del Sur?", '{"respuestas": ["Uruguay", "Surinam", "Guayana", "Guyana Francesa"], "respuestas_correctas": "Surinam"}', "Surinam es el país más pequeño de América del Sur, con una superficie de poco más de 160.000 km²."),
(33, 1, "¿En qué océano se encuentra la isla de Bali?", '{"respuestas": ["Océano Atlántico", "Océano Índico", "Océano Pacífico", "Mar Mediterráneo"], "respuestas_correctas": "Océano Pacífico"}', "La isla de Bali se encuentra en el Océano Pacífico, frente a la costa de Indonesia."),
(33, 1, "¿En qué continente se encuentra el país de Turquía?", '{"respuestas": ["Asia", "Europa", "África", "Oceanía"], "respuestas_correctas": "Asia"}', "Turquía es un país que se encuentra en Asia, aunque una pequeña parte de su territorio se encuentra en Europa."),
(33, 1, "¿Cuál es el lago más grande de África?", '{"respuestas": ["Lago Victoria", "Lago Tanganica", "Lago Chad", "Lago Malawi"], "respuestas_correctas": "Lago Victoria"}', "El Lago Victoria es el lago más grande de África y el segundo más grande del mundo, con una superficie de aproximadamente 69.000 km²."),
(33, 1, "¿En qué país se encuentra la estatua del Cristo Redentor?", '{"respuestas": ["Brasil", "Argentina", "Colombia", "México"], "respuestas_correctas": "Brasil"}', "La estatua del Cristo Redentor se encuentra en Río de Janeiro, Brasil, y es uno de los monumentos más emblemáticos del país."),
(33, 1, "¿Cuál es el país más oriental de América del Sur?", '{"respuestas": ["Brasil", "Uruguay", "Argentina", "Chile"], "respuestas_correctas": "Brasil"}', "Brasil es el país más oriental de América del Sur.");

-- Preguntas para el test 4 de GEOGRAFIA
INSERT INTO preguntas (id_test, tipo_pregunta, nombre_pregunta, datos_pregunta, retroalimentacion) VALUES
(34, 1, "¿Cuál es el río más largo del mundo?", '{"respuestas": ["Nilo", "Amazonas", "Yangtze", "Misisipi"], "respuestas_correctas": "Nilo"}', "El río Nilo es el más largo del mundo, con una longitud aproximada de 6.650 kilómetros."),
(34, 1, "¿Cuál es el país más poblado del mundo?", '{"respuestas": ["India", "Estados Unidos", "China", "Brasil"], "respuestas_correctas": "China"}', "China es el país más poblado del mundo, con una población de más de 1.400 millones de habitantes."),
(34, 1, "¿Cuál es la capital de Australia?", '{"respuestas": ["Melbourne", "Sídney", "Brisbane", "Canberra"], "respuestas_correctas": "Canberra"}', "Canberra es la capital de Australia, ubicada en el sureste del país."),
(34, 1, "¿Cuál es el país más pequeño del mundo?", '{"respuestas": ["Mónaco", "Andorra", "San Marino", "Ciudad del Vaticano"], "respuestas_correctas": "Ciudad del Vaticano"}', "La Ciudad del Vaticano es el país más pequeño del mundo, con una superficie de apenas 0,44 km²."),
(34, 1, "¿En qué continente se encuentra el país de Rusia?", '{"respuestas": ["Asia", "Europa", "África", "Oceanía"], "respuestas_correctas": "Asia"}', "Rusia es un país que se extiende por gran parte de Asia y una pequeña parte de Europa."),
(34, 1, "¿Cuál es el país más grande del mundo?", '{"respuestas": ["China", "Estados Unidos", "Rusia", "Canadá"], "respuestas_correctas": "Rusia"}', "Rusia es el país más grande del mundo, con una superficie de más de 17 millones de km²."),
(34, 1, "¿En qué océano se encuentra la isla de Madagascar?", '{"respuestas": ["Océano Índico", "Océano Pacífico", "Océano Atlántico", "Mar Mediterráneo"], "respuestas_correctas": "Océano Índico"}', "Madagascar es una isla que se encuentra en el Océano Índico, al este de África."),
(34, 1, "¿Cuál es el país más septentrional del mundo?", '{"respuestas": ["Noruega", "Finlandia", "Islandia", "Groenlandia"], "respuestas_correctas": "Groenlandia"}', "Groenlandia es el país más septentrional del mundo, ubicado en el extremo norte de América del Norte."),
(34, 1, "¿En qué continente se encuentra el desierto del Sahara?", '{"respuestas": ["África", "Asia", "Europa", "Oceanía"], "respuestas_correctas": "África"}', "El desierto del Sahara se encuentra en el continente africano."),
(34, 1, "¿Cuál es el país más rico del mundo en términos de PIB per cápita?", '{"respuestas": ["Estados Unidos", "Noruega", "Suiza", "Luxemburgo"], "respuestas_correctas": "Luxemburgo"}', "Luxemburgo es el país más rico del mundo en términos de PIB per cápita, con un valor estimado de más de $100,000.");

-- Preguntas para el test 5 de GEOGRAFIA
INSERT INTO preguntas (id_test, tipo_pregunta, nombre_pregunta, datos_pregunta, retroalimentacion) VALUES
(35, 1, "¿Cuál es el país más grande de América del Sur?", '{"respuestas": ["Argentina", "Brasil", "Colombia", "Perú"], "respuestas_correctas": "Brasil"}', "Brasil es el país más grande de América del Sur, con una superficie de más de 8,5 millones de km²."),
(35, 1, "¿En qué océano se encuentra la Gran Barrera de Coral?", '{"respuestas": ["Océano Pacífico", "Océano Atlántico", "Océano Índico", "Mar Mediterráneo"], "respuestas_correctas": "Océano Pacífico"}', "La Gran Barrera de Coral se encuentra en el Océano Pacífico, en la costa de Australia."),
(35, 1, "¿En qué país se encuentra la Torre Eiffel?", '{"respuestas": ["Italia", "Alemania", "Francia", "España"], "respuestas_correctas": "Francia"}', "La Torre Eiffel se encuentra en Francia, específicamente en la ciudad de París."),
(35, 1, "¿Cuál es el país más poblado de Europa?", '{"respuestas": ["Alemania", "Francia", "Reino Unido", "Rusia"], "respuestas_correctas": "Rusia"}', "Rusia es el país más poblado de Europa, con una población de más de 144 millones de habitantes."),
(35, 1, "¿Cuál es el país más poblado de África?", '{"respuestas": ["Nigeria", "Etiopía", "Egipto", "Sudáfrica"], "respuestas_correctas": "Nigeria"}', "Nigeria es el país más poblado de África, con una población de más de 211 millones de habitantes."),
(35, 1, "¿Cuál es el país más pequeño de América Central?", '{"respuestas": ["Costa Rica", "Honduras", "El Salvador", "Belice"], "respuestas_correctas": "Belice"}', "Belice es el país más pequeño de América Central, con una superficie de apenas 22,965 km²."),
(35, 1, "¿Cuál es el río más caudaloso del mundo?", '{"respuestas": ["Amazonas", "Nilo", "Yangtze", "Misisipi"], "respuestas_correctas": "Amazonas"}', "El río Amazonas es el más caudaloso del mundo, con un caudal promedio de 209,000 metros cúbicos por segundo."),
(35, 1, "¿En qué país se encuentra la cordillera del Himalaya?", '{"respuestas": ["India", "China", "Nepal", "Tíbet"], "respuestas_correctas": "Nepal"}', "La cordillera del Himalaya se encuentra en Nepal, pero también abarca territorios de India, China y Tíbet."),
(35, 1, "¿Cuál es la capital de Canadá?", '{"respuestas": ["Toronto", "Montreal", "Vancouver", "Ottawa"], "respuestas_correctas": "Ottawa"}', "La capital de Canadá es Ottawa, ubicada en la provincia de Ontario."),
(35, 1, "¿En qué continente se encuentra el lago Victoria?", '{"respuestas": ["Asia", "Europa", "África", "Oceanía"], "respuestas_correctas": "África"}', "El lago Victoria se encuentra en África, específicamente en la región de los Grandes Lagos.");

-- Preguntas para el test 6 de GEOGRAFIA
INSERT INTO preguntas (id_test, tipo_pregunta, nombre_pregunta, datos_pregunta, retroalimentacion) VALUES
(36, 1, "¿Cuál es el país más grande del mundo en términos de superficie?", '{"respuestas": ["Estados Unidos", "China", "Rusia", "Canadá"], "respuestas_correctas": "Rusia"}', "Rusia es el país más grande del mundo en términos de superficie, con una superficie total de más de 17 millones de km²."),
(36, 1, "¿Cuál es la capital de Australia?", '{"respuestas": ["Melbourne", "Brisbane", "Sídney", "Canberra"], "respuestas_correctas": "Canberra"}', "La capital de Australia es Canberra, ubicada en el Territorio de la Capital Australiana."),
(36, 1, "¿En qué país se encuentra el Machu Picchu?", '{"respuestas": ["Bolivia", "Colombia", "Perú", "Ecuador"], "respuestas_correctas": "Perú"}', "El Machu Picchu se encuentra en Perú, en la región de Cusco."),
(36, 1, "¿Cuál es el país más pequeño del mundo en términos de superficie?", '{"respuestas": ["Mónaco", "Malta", "Vaticano", "San Marino"], "respuestas_correctas": "Vaticano"}', "El Vaticano es el país más pequeño del mundo en términos de superficie, con una superficie de apenas 0,44 km²."),
(36, 1, "¿En qué país se encuentra el desierto del Sahara?", '{"respuestas": ["Egipto", "Sudán", "Marruecos", "Argelia"], "respuestas_correctas": "Argelia"}', "El desierto del Sahara se encuentra en varios países de África, pero el país con la mayor parte del desierto es Argelia."),
(36, 1, "¿Cuál es el país más poblado del mundo?", '{"respuestas": ["India", "China", "Estados Unidos", "Rusia"], "respuestas_correctas": "China"}', "China es el país más poblado del mundo, con una población de más de 1,4 billones de habitantes."),
(36, 1, "¿En qué país se encuentra la cordillera del Himalaya?", '{"respuestas": ["India", "China", "Nepal", "Tíbet"], "respuestas_correctas": "Nepal"}', "La cordillera del Himalaya se encuentra en Nepal, pero también abarca territorios de India, China y Tíbet."),
(36, 1, "¿Cuál es la capital de Canadá?", '{"respuestas": ["Toronto", "Montreal", "Vancouver", "Ottawa"], "respuestas_correctas": "Ottawa"}', "La capital de Canadá es Ottawa, ubicada en la provincia de Ontario."),
(36, 1, "¿En qué continente se encuentra el lago Victoria?", '{"respuestas": ["Asia", "Europa", "África", "Oceanía"], "respuestas_correctas": "África"}', "El lago Victoria se encuentra en África, específicamente en la región de los Grandes Lagos."),
(36, 1, "¿Cuál es el país más grande del mundo en términos de superficie?", '{"respuestas": ["Estados Unidos", "China", "Rusia", "Canadá"], "respuestas_correctas": "Rusia"}', "Rusia es el país más grande del mundo en términos de superficie, con una superficie total de más de 17 millones de km².");

-- Preguntas para el test 7 de GEOGRAFIA
INSERT INTO preguntas (id_test, tipo_pregunta, nombre_pregunta, datos_pregunta, retroalimentacion) VALUES
(37, 1, "¿Cuál es la capital de Perú?", '{"respuestas": ["Lima", "Bogotá", "Santiago", "Buenos Aires"], "respuestas_correctas": "Lima"}', "La capital de Perú es Lima, ubicada en la costa central del país."),
(37, 1, "¿En qué océano se encuentra la isla de Madagascar?", '{"respuestas": ["Océano Pacífico", "Océano Índico", "Océano Atlántico", "Mar Mediterráneo"], "respuestas_correctas": "Océano Índico"}', "La isla de Madagascar se encuentra en el Océano Índico, frente a la costa sureste de África."),
(37, 1, "¿En qué país se encuentra la Torre Eiffel?", '{"respuestas": ["Reino Unido", "Alemania", "España", "Francia"], "respuestas_correctas": "Francia"}', "La Torre Eiffel se encuentra en Francia, específicamente en París."),
(37, 1, "¿Cuál es el país más al sur de América del Sur?", '{"respuestas": ["Argentina", "Chile", "Uruguay", "Brasil"], "respuestas_correctas": "Chile"}', "Chile es el país más al sur de América del Sur, extendiéndose hasta el Cabo de Hornos."),
(37, 1, "¿En qué país se encuentra la ciudad de Petra?", '{"respuestas": ["Irak", "Jordania", "Líbano", "Siria"], "respuestas_correctas": "Jordania"}', "La ciudad de Petra se encuentra en Jordania, al sur del país."),
(37, 1, "¿En qué continente se encuentra el río Amazonas?", '{"respuestas": ["Asia", "Europa", "África", "América del Sur"], "respuestas_correctas": "América del Sur"}', "El río Amazonas se encuentra en América del Sur, siendo el río más caudaloso y más largo del mundo."),
(37, 1, "¿En qué país se encuentra la Gran Muralla China?", '{"respuestas": ["Japón", "Corea del Sur", "Taiwán", "China"], "respuestas_correctas": "China"}', "La Gran Muralla China se encuentra en China, extendiéndose a lo largo de más de 21 mil kilómetros."),
(37, 1, "¿En qué país se encuentra el monte Everest?", '{"respuestas": ["India", "Nepal", "Bután", "Tíbet"], "respuestas_correctas": "Nepal"}', "El monte Everest se encuentra en la cordillera del Himalaya, en Nepal, cerca de la frontera con China."),
(37, 1, "¿En qué país se encuentra el Coliseo Romano?", '{"respuestas": ["Italia", "Grecia", "España", "Francia"], "respuestas_correctas": "Italia"}', "El Coliseo Romano se encuentra en Italia, específicamente en la ciudad de Roma."),
(37, 1, "¿En qué país se encuentra el volcán Arenal?", '{"respuestas": ["México", "Guatemala", "Costa Rica", "Colombia"], "respuestas_correctas": "Costa Rica"}', "El volcán Arenal se encuentra en Costa Rica, en la región de La Fortuna de San Carlos.");

-- Preguntas para el test 8 de GEOGRAFIA
INSERT INTO preguntas (id_test, tipo_pregunta, nombre_pregunta, datos_pregunta, retroalimentacion) VALUES
(38, 1, "¿Cuál es el río más largo del mundo?", '{"respuestas": ["Río Amazonas", "Río Nilo", "Río Yangtze", "Río Misisipi"], "respuestas_correctas": "Río Nilo"}', "El río Nilo es el río más largo del mundo, con una longitud de aproximadamente 6.650 km."),
(38, 1, "¿En qué océano se encuentra la isla de Bora Bora?", '{"respuestas": ["Océano Pacífico", "Océano Índico", "Océano Atlántico", "Mar Mediterráneo"], "respuestas_correctas": "Océano Pacífico"}', "La isla de Bora Bora se encuentra en el Océano Pacífico, en la Polinesia Francesa."),
(38, 1, "¿En qué país se encuentra el desierto del Sahara?", '{"respuestas": ["Egipto", "Marruecos", "Túnez", "Libia"], "respuestas_correctas": "Marruecos"}', "El desierto del Sahara se encuentra principalmente en Marruecos, Argelia, Túnez, Libia, Egipto, Sudán, Chad, Mali, Níger y Mauritania."),
(38, 1, "¿En qué país se encuentra la ciudad de Angkor Wat?", '{"respuestas": ["Tailandia", "Vietnam", "Camboya", "Myanmar"], "respuestas_correctas": "Camboya"}', "La ciudad de Angkor Wat se encuentra en Camboya, en la provincia de Siem Reap."),
(38, 1, "¿Cuál es el lago más grande de América del Norte?", '{"respuestas": ["Lago Superior", "Lago Hurón", "Lago Michigan", "Lago Ontario"], "respuestas_correctas": "Lago Superior"}', "El lago Superior es el lago más grande de América del Norte, compartido por Estados Unidos y Canadá."),
(38, 1, "¿En qué país se encuentra el monte Kilimanjaro?", '{"respuestas": ["Kenia", "Tanzania", "Uganda", "Ruanda"], "respuestas_correctas": "Tanzania"}', "El monte Kilimanjaro se encuentra en Tanzania, en la frontera con Kenia."),
(38, 1, "¿En qué país se encuentra el río Rin?", '{"respuestas": ["Alemania", "Suiza", "Países Bajos", "Francia"], "respuestas_correctas": "Alemania"}', "El río Rin se encuentra en Europa, atravesando Suiza, Alemania, Países Bajos y Francia."),
(38, 1, "¿Qué océano se encuentra al oeste de América?", '{"respuestas": ["Océano Pacífico", "Océano Índico", "Océano Atlántico", "Océano Antártico"], "respuestas_correctas": "Océano Pacífico"}', "El Océano Pacífico se encuentra al oeste de América, abarcando la costa oeste de América del Sur, América del Norte y Oceanía."),
(38, 1, "¿Cuál es el país más grande de América del Sur?", '{"respuestas": ["Brasil", "Argentina", "Perú", "Colombia"], "respuestas_correctas": "Brasil"}', "Brasil es el país más grande de América del Sur, con una superficie de más de 8,5 millones de km²."),
(38, 1, "¿En qué país se encuentra el Everest?", '{"respuestas": ["Nepal", "China", "India", "Bután"], "respuestas_correctas": "Nepal"}', "El Everest se encuentra en Nepal, en la cordillera del Himalaya, en la frontera entre Nepal y China.");

-- Preguntas para el test 9 de GEOGRAFIA
INSERT INTO preguntas (id_test, tipo_pregunta, nombre_pregunta, datos_pregunta, retroalimentacion) VALUES
(39, 1, "¿En qué continente se encuentra el desierto del Sahara?", '{"respuestas": ["África", "Asia", "América", "Europa"], "respuestas_correctas": "África"}', "El desierto del Sahara se encuentra en África, abarcando gran parte del norte de este continente."),
(39, 1, "¿Cuál es el río más largo del mundo?", '{"respuestas": ["Río Amazonas", "Río Nilo", "Río Misisipi", "Río Yangtsé"], "respuestas_correctas": "Río Nilo"}', "El Río Nilo es el río más largo del mundo, con una longitud de alrededor de 6,650 km."),
(39, 1, "¿Cuál es el país más poblado del mundo?", '{"respuestas": ["China", "India", "Estados Unidos", "Indonesia"], "respuestas_correctas": "China"}', "China es el país más poblado del mundo, con una población de más de 1,4 billones de personas."),
(39, 1, "¿Cuál es el continente más pequeño del mundo?", '{"respuestas": ["Oceanía", "Antártida", "Europa", "América del Norte"], "respuestas_correctas": "Antártida"}', "La Antártida es el continente más pequeño del mundo, con una superficie de alrededor de 14 millones de km²."),
(39, 1, "¿Cuál es el país más grande del mundo?", '{"respuestas": ["Rusia", "China", "Estados Unidos", "Canadá"], "respuestas_correctas": "Rusia"}', "Rusia es el país más grande del mundo, con una superficie de más de 17 millones de km²."),
(39, 1, "¿Cuál es la capital de Australia?", '{"respuestas": ["Canberra", "Melbourne", "Sydney", "Adelaida"], "respuestas_correctas": "Canberra"}', "La capital de Australia es Canberra."),
(39, 1, "¿Cuál es el país más grande del mundo?", '{"respuestas": ["Rusia", "Canadá", "China", "Estados Unidos"], "respuestas_correctas": "Rusia"}', "Rusia es el país más grande del mundo en términos de área."),
(39, 1, "¿En qué continente se encuentra el país de Ghana?", '{"respuestas": ["África", "Asia", "Europa", "Oceanía"], "respuestas_correctas": "África"}', "Ghana se encuentra en África."),
(39, 1, "¿Cuál es el río más largo del mundo?", '{"respuestas": ["Amazonas", "Nilo", "Yangtze", "Misisipi"], "respuestas_correctas": "Nilo"}', "El río Nilo es el más largo del mundo, con una longitud de aproximadamente 6.650 km."),
(39, 1, "¿Cuál es el desierto más grande del mundo?", '{"respuestas": ["Sahara", "Atacama", "Gobi", "Kalahari"], "respuestas_correctas": "Sahara"}', "El Sahara es el desierto más grande del mundo, con una superficie de alrededor de 9 millones de km².");

-- Preguntas para el test 10 de GEOGRAFIA
INSERT INTO preguntas (id_test, tipo_pregunta, nombre_pregunta, datos_pregunta, retroalimentacion) VALUES
(40, 1, "¿Qué país es conocido como la cuna de la civilización?", '{"respuestas": ["Irak", "Egipto", "China", "Grecia"], "respuestas_correctas": "Irak"}', "Irak es conocido como la cuna de la civilización, ya que se cree que aquí se originaron algunas de las primeras civilizaciones humanas."),
(40, 1, "¿Cuál es el océano más grande del mundo?", '{"respuestas": ["Pacífico", "Atlántico", "Índico", "Antártico"], "respuestas_correctas": "Pacífico"}', "El océano Pacífico es el más grande del mundo, abarcando aproximadamente el 46% de la superficie total del planeta."),
(40, 1, "¿Cuál es la cordillera más larga del mundo?", '{"respuestas": ["Andes", "Himalaya", "Rocky", "Alpes"], "respuestas_correctas": "Andes"}', "La cordillera de los Andes es la más larga del mundo, con una longitud de aproximadamente 7.000 km."),
(40, 1, "¿Qué país tiene el sistema de transporte ferroviario más extenso del mundo?", '{"respuestas": ["China", "Estados Unidos", "Rusia", "India"], "respuestas_correctas": "China"}', "China tiene el sistema de transporte ferroviario más extenso del mundo, con una red de vías férreas que se extiende por más de 100.000 km."),
(40, 1, "¿Cuál es la capital de Australia?", '{"respuestas": ["Sidney", "Melbourne", "Brisbane", "Canberra"], "respuestas_correctas": "Canberra"}', "Canberra es la capital de Australia."),
(40, 1, "¿En qué continente se encuentra el monte Kilimanjaro?", '{"respuestas": ["África", "Europa", "Asia", "Oceanía"], "respuestas_correctas": "África"}', "El monte Kilimanjaro se encuentra en África."),
(40, 1, "¿Cuál es el país más grande del mundo por superficie?", '{"respuestas": ["Rusia", "Canadá", "China", "Estados Unidos"], "respuestas_correctas": "Rusia"}', "Rusia es el país más grande del mundo por superficie."),
(40, 1, "¿Cuál es el río más largo del mundo?", '{"respuestas": ["Nilo", "Amazonas", "Yangtsé", "Misisipi"], "respuestas_correctas": "Amazonas"}', "El Amazonas es el río más largo del mundo."),
(40, 1, "¿Cuál es el país más poblado del mundo?", '{"respuestas": ["India", "China", "Estados Unidos", "Brasil"], "respuestas_correctas": "China"}', "China es el país más poblado del mundo."),
(40, 1, "¿Cuál es el lago más grande de América del Norte?", '{"respuestas": ["Gran Lago de los Esclavos", "Lago Hurón", "Lago Michigan", "Lago Superior"], "respuestas_correctas": "Lago Superior"}', "El Lago Superior es el lago más grande de América del Norte.");

SET foreign_key_checks = 0;

SET @newid := 0;
UPDATE preguntas SET id = (@newid := @newid + 1) ORDER BY id;

SET foreign_key_checks = 1;
