-- Datos para la tabla TESTS para los test de Historia del tipo tipo de pregunta 1 con respuesta unica
INSERT INTO TESTS (id_materia, nombre_test, descripcion, id_usuario_creador) VALUES
(12, 'Historia 01', 'Test 01 sobre la materia de Historia con respuesta única.', 1),
(12, 'Historia 02', 'Test 02 sobre la materia de Historia con respuesta única.', 1),
(12, 'Historia 03', 'Test 03 sobre la materia de Historia con respuesta única.', 1),
(12, 'Historia 04', 'Test 04 sobre la materia de Historia con respuesta única.', 1),
(12, 'Historia 05', 'Test 05 sobre la materia de Historia con respuesta única.', 1),
(12, 'Historia 06', 'Test 06 sobre la materia de Historia con respuesta única.', 1),
(12, 'Historia 07', 'Test 07 sobre la materia de Historia con respuesta única.', 1),
(12, 'Historia 08', 'Test 08 sobre la materia de Historia con respuesta única.', 1),
(12, 'Historia 09', 'Test 09 sobre la materia de Historia con respuesta única.', 1),
(12, 'Historia 10', 'Test 10 sobre la materia de Historia con respuesta única.', 1);

SET foreign_key_checks = 0;

SET @newid := 0;
UPDATE TESTS SET id = (@newid := @newid + 1) ORDER BY id;

SET foreign_key_checks = 1;

-- Datos para la tabla PREGUNTAS de la MATERIA "Historia" para el tipo de pregunta 1 con respuesta unica

-- Preguntas para el test 1 de Historia
INSERT INTO preguntas (id_test, tipo_pregunta, nombre_pregunta, datos_pregunta, retroalimentacion) VALUES
(51, 1, "¿En qué año se inició la Revolución Francesa?", '{"respuestas": ["1789", "1798", "1804", "1765"], "respuestas_correctas": "1789"}', "La Revolución Francesa comenzó en 1789."),	
(51, 1, "¿Quién fue el primer presidente de Estados Unidos?", '{"respuestas": ["George Washington", "John Adams", "Thomas Jefferson", "James Madison"], "respuestas_correctas": "George Washington"}', "George Washington fue el primer presidente de Estados Unidos."),	
(51, 1, "¿Cuál fue el objetivo de la expedición de Hernán Cortés a México?", '{"respuestas": ["Conquistar y colonizar México", "Comerciar con los mexicanos", "Explorar nuevas tierras", "Convertir a los mexicanos al cristianismo"], "respuestas_correctas": "Conquistar y colonizar México"}', "La expedición de Hernán Cortés a México tenía como objetivo la conquista y colonización de estas tierras."),	
(51, 1, "¿Cuál fue el emperador romano que construyó el Coliseo?", '{"respuestas": ["Vespasiano", "Augusto", "Nerón", "Tito"], "respuestas_correctas": "Vespasiano"}', "El emperador romano Vespasiano fue quien inició la construcción del Coliseo."),	
(51, 1, "¿Quién fue el primer emperador de China?", '{"respuestas": ["Qin Shi Huang", "Liu Bang", "Wudi", "Mao Zedong"], "respuestas_correctas": "Qin Shi Huang"}', "Qin Shi Huang fue el primer emperador de China."),	
(51, 1, "¿Quién lideró la lucha por la independencia de la India?", '{"respuestas": ["Mahatma Gandhi", "Jawaharlal Nehru", "Indira Gandhi", "Rajiv Gandhi"], "respuestas_correctas": "Mahatma Gandhi"}', "Mahatma Gandhi lideró la lucha por la independencia de la India."),	
(51, 1, "¿Qué país invadió Polonia, desencadenando la Segunda Guerra Mundial?", '{"respuestas": ["Alemania", "Italia", "Japón", "Rusia"], "respuestas_correctas": "Alemania"}', "Alemania invadió Polonia, desencadenando la Segunda Guerra Mundial."),	
(51, 1, "¿Qué ciudad fue la capital del Imperio Inca?", '{"respuestas": ["Cusco", "Machu Picchu", "Lima", "Quito"], "respuestas_correctas": "Cusco"}', "La ciudad de Cusco fue la capital del Imperio Inca."),	
(51, 1, "¿Cuál fue la causa principal de la Primera Guerra Mundial?", '{"respuestas": ["La rivalidad entre las grandes potencias europeas", "La invasión de Polonia por parte de Alemania", "El ataque japonés a Pearl Harbor", "El terrorismo internacional"], "respuestas_correctas": "La rivalidad entre las grandes potencias europeas"}', "La Primera Guerra Mundial se desató debido a la rivalidad entre las grandes potencias europeas, que se habían estado preparando militarmente y formando alianzas durante décadas. El asesinato del archiduque austrohúngaro Francisco Fernando en Sarajevo fue la chispa que encendió la guerra."),	
(51, 1, "¿Quién fue Simón Bolívar?", '{"respuestas": ["Un líder de la independencia de América Latina", "Un explorador europeo", "Un filósofo griego", "Un inventor estadounidense"], "respuestas_correctas": "Un líder de la independencia de América Latina"}', "Simón Bolívar fue un líder político y militar de la independencia de América Latina en el siglo XIX. Es considerado uno de los más grandes héroes de la historia de América Latina por su lucha para liberar a las naciones de la región del yugo español.");

-- Preguntas para el test 2 de Historia
INSERT INTO preguntas (id_test, tipo_pregunta, nombre_pregunta, datos_pregunta, retroalimentacion) VALUES
(52, 1, "¿Quién fue el primer presidente de Estados Unidos?", '{"respuestas": ["Thomas Jefferson", "George Washington", "John Adams", "Abraham Lincoln"], "respuestas_correctas": "George Washington"}', "George Washington fue el primer presidente de Estados Unidos."),	
(52, 1, "¿En qué año se firmó la Declaración de Independencia de Estados Unidos?", '{"respuestas": ["1776", "1789", "1765", "1804"], "respuestas_correctas": "1776"}', "La Declaración de Independencia de Estados Unidos se firmó en 1776."),	
(52, 1, "¿Quién fue el líder de la Revolución Cubana?", '{"respuestas": ["Fidel Castro", "Che Guevara", "Raúl Castro", "Miguel Díaz-Canel"], "respuestas_correctas": "Fidel Castro"}', "Fidel Castro fue el líder de la Revolución Cubana."),	
(52, 1, "¿En qué año se inició la Segunda Guerra Mundial?", '{"respuestas": ["1939", "1945", "1914", "1918"], "respuestas_correctas": "1939"}', "La Segunda Guerra Mundial se inició en 1939."),	
(52, 1, "¿Quién fue el presidente de México durante la Revolución Mexicana?", '{"respuestas": ["Porfirio Díaz", "Venustiano Carranza", "Emiliano Zapata", "Francisco Villa"], "respuestas_correctas": "Venustiano Carranza"}', "Venustiano Carranza fue el presidente de México durante la Revolución Mexicana."),	
(52, 1, "¿Cuál fue la primera capital del Imperio Inca?", '{"respuestas": ["Cusco", "Machu Picchu", "Lima", "Arequipa"], "respuestas_correctas": "Cusco"}', "La primera capital del Imperio Inca fue Cusco."),	
(52, 1, "¿Cuál fue la famosa expedición de Hernán Cortés?", '{"respuestas": ["La Conquista de México", "La Conquista del Perú", "La Conquista de Chile", "La Conquista de Brasil"], "respuestas_correctas": "La Conquista de México"}', "La famosa expedición de Hernán Cortés fue la Conquista de México."),	
(52, 1, "¿En qué año se inició la Revolución Rusa?", '{"respuestas": ["1917", "1914", "1921", "1919"], "respuestas_correctas": "1917"}', "La Revolución Rusa se inició en 1917."),	
(52, 1, "¿En qué año se inició la Revolución Rusa?", '{"respuestas": ["1917", "1920", "1905", "1914"], "respuestas_correctas": "1917"}', "La Revolución Rusa se inició en 1917."),	
(52, 1, "¿Quién fue el líder de la Revolución China?", '{"respuestas": ["Mao Zedong", "Chiang Kai-shek", "Sun Yat-sen", "Deng Xiaoping"], "respuestas_correctas": "Mao Zedong"}', "Mao Zedong fue el líder de la Revolución China.");

-- Preguntas para el test 3 de Historia
INSERT INTO preguntas (id_test, tipo_pregunta, nombre_pregunta, datos_pregunta, retroalimentacion) VALUES
(53, 1, "¿Quién fue el primer emperador de China?", '{"respuestas": ["Qin Shi Huang", "Sun Yat-sen", "Mao Zedong", "Chiang Kai-shek"], "respuestas_correctas": "Qin Shi Huang"}', "Qin Shi Huang fue el primer emperador de China."),	
(53, 1, "¿En qué año comenzó la Guerra de los Cien Años?", '{"respuestas": ["1337", "1415", "1492", "1509"], "respuestas_correctas": "1337"}', "La Guerra de los Cien Años comenzó en 1337."),	
(53, 1, "¿Quién fue el líder de la Revolución Bolchevique en Rusia?", '{"respuestas": ["Vladimir Lenin", "Joseph Stalin", "Leon Trotsky", "Nikita Khrushchev"], "respuestas_correctas": "Vladimir Lenin"}', "Vladimir Lenin fue el líder de la Revolución Bolchevique en Rusia."),	
(53, 1, "¿En qué año se firmó el Tratado de Versalles?", '{"respuestas": ["1919", "1922", "1914", "1918"], "respuestas_correctas": "1919"}', "El Tratado de Versalles se firmó en 1919."),	
(53, 1, "¿Quién fue el último zar de Rusia?", '{"respuestas": ["Nicolás II", "Alejandro III", "Pedro I", "Iván IV"], "respuestas_correctas": "Nicolás II"}', "Nicolás II fue el último zar de Rusia."),	
(53, 1, "¿En qué año se inició la Primera Guerra Mundial?", '{"respuestas": ["1914", "1918", "1939", "1945"], "respuestas_correctas": "1914"}', "La Primera Guerra Mundial se inició en 1914."),	
(53, 1, "¿Quién fue el primer presidente de México?", '{"respuestas": ["Guadalupe Victoria", "Vicente Guerrero", "Agustín de Iturbide", "Benito Juárez"], "respuestas_correctas": "Guadalupe Victoria"}', "Guadalupe Victoria fue el primer presidente de México."),	
(53, 1, "¿En qué año se independizó Argentina?", '{"respuestas": ["1816", "1821", "1830", "1845"], "respuestas_correctas": "1816"}', "Argentina se independizó en 1816."),	
(53, 1, "¿En qué año se inició la Revolución Francesa?", '{"respuestas": ["1789", "1798", "1804", "1765"], "respuestas_correctas": "1789"}', "La Revolución Francesa comenzó en 1789."),	
(53, 1, "¿Quién fue el primer presidente de los Estados Unidos?", '{"respuestas": ["George Washington", "Thomas Jefferson", "Abraham Lincoln", "John Adams"], "respuestas_correctas": "George Washington"}', "George Washington fue el primer presidente de los Estados Unidos.");

-- Preguntas para el test 4 de Historia
INSERT INTO preguntas (id_test, tipo_pregunta, nombre_pregunta, datos_pregunta, retroalimentacion) VALUES
(54, 1, "¿Quién fue el primer emperador romano?", '{"respuestas": ["César Augusto", "Julio César", "Calígula", "Nerón"], "respuestas_correctas": "César Augusto"}', "César Augusto fue el primer emperador romano."),	
(54, 1, "¿En qué año se fundó la ciudad de Roma?", '{"respuestas": ["753 a.C.", "476 d.C.", "476 a.C.", "753 d.C."], "respuestas_correctas": "753 a.C."}', "La ciudad de Roma fue fundada en el año 753 a.C."),	
(54, 1, "¿En qué año se produjo la Batalla de Waterloo?", '{"respuestas": ["1815", "1805", "1798", "1820"], "respuestas_correctas": "1815"}', "La Batalla de Waterloo tuvo lugar en el año 1815."),	
(54, 1, "¿Quién fue el líder de la Revolución Cubana?", '{"respuestas": ["Fidel Castro", "Che Guevara", "Raúl Castro", "Camilo Cienfuegos"], "respuestas_correctas": "Fidel Castro"}', "Fidel Castro fue el líder de la Revolución Cubana."),	
(54, 1, "¿En qué año comenzó la Guerra de Vietnam?", '{"respuestas": ["1955", "1960", "1965", "1970"], "respuestas_correctas": "1955"}', "La Guerra de Vietnam comenzó en 1955."),	
(54, 1, "¿Quién fue el fundador del Imperio Persa?", '{"respuestas": ["Ciro el Grande", "Darío I", "Jerjes I", "Alejandro Magno"], "respuestas_correctas": "Ciro el Grande"}', "Ciro el Grande fue el fundador del Imperio Persa."),	
(54, 1, "¿En qué año se produjo la Batalla de Stalingrado?", '{"respuestas": ["1942", "1943", "1944", "1945"], "respuestas_correctas": "1942"}', "La Batalla de Stalingrado tuvo lugar en el año 1942."),	
(54, 1, "¿Quién fue el primer presidente de México?", '{"respuestas": ["Guadalupe Victoria", "Vicente Guerrero", "Antonio López de Santa Anna", "Benito Juárez"], "respuestas_correctas": "Guadalupe Victoria"}', "Guadalupe Victoria fue el primer presidente de México."),	
(54, 1, "¿En qué año se produjo la Batalla de las Termópilas?", '{"respuestas": ["480 a.C.", "490 a.C.", "500 a.C.", "470 a.C."], "respuestas_correctas": "480 a.C."}', "La Batalla de las Termópilas tuvo lugar en el año 480 a.C."),	
(54, 1, "¿Quién fue el fundador del Reino de Portugal?", '{"respuestas": ["Afonso Henriques", "Juan II", "Pedro I", "Fernando I"], "respuestas_correctas": "Afonso Henriques"}', "Afonso Henriques fue el fundador del Reino de Portugal.");

-- Preguntas para el test 5 de Historia
INSERT INTO preguntas (id_test, tipo_pregunta, nombre_pregunta, datos_pregunta, retroalimentacion) VALUES
(55, 1, "¿En qué año se inició la Segunda Guerra Mundial?", '{"respuestas": ["1939", "1945", "1933", "1941"], "respuestas_correctas": "1939"}', "La Segunda Guerra Mundial se inició en 1939."),	
(55, 1, "¿Quién fue el fundador del Imperio Mongol?", '{"respuestas": ["Genghis Khan", "Kublai Khan", "Attila el Huno", "Tamerlán"], "respuestas_correctas": "Genghis Khan"}', "Genghis Khan fue el fundador del Imperio Mongol."),	
(55, 1, "¿En qué año se firmó el Tratado de Versalles que puso fin a la Primera Guerra Mundial?", '{"respuestas": ["1918", "1919", "1920", "1921"], "respuestas_correctas": "1919"}', "El Tratado de Versalles que puso fin a la Primera Guerra Mundial se firmó en el año 1919."),	
(55, 1, "¿Quién fue el líder de la Unión Soviética durante la Segunda Guerra Mundial?", '{"respuestas": ["Josef Stalin", "Vladimir Lenin", "Nikita Jruschov", "Mijaíl Gorbachov"], "respuestas_correctas": "Josef Stalin"}', "Josef Stalin fue el líder de la Unión Soviética durante la Segunda Guerra Mundial."),	
(55, 1, "¿En qué año se produjo la Batalla de Trafalgar?", '{"respuestas": ["1803", "1804", "1805", "1806"], "respuestas_correctas": "1805"}', "La Batalla de Trafalgar tuvo lugar en el año 1805."),	
(55, 1, "¿Quién fue el emperador de Francia durante la Revolución Francesa?", '{"respuestas": ["Napoleón Bonaparte", "Luis XVI", "Robespierre", "Voltaire"], "respuestas_correctas": "Napoleón Bonaparte"}', "Napoleón Bonaparte fue el emperador de Francia durante la Revolución Francesa."),	
(55, 1, "¿En qué año se fundó la ciudad de Roma?", '{"respuestas": ["753 a.C.", "509 a.C.", "27 a.C.", "476 d.C."], "respuestas_correctas": "753 a.C."}', "La ciudad de Roma fue fundada en el año 753 a.C."),	
(55, 1, "¿Quién fue el primer presidente de los Estados Unidos?", '{"respuestas": ["George Washington", "Thomas Jefferson", "John Adams", "Benjamin Franklin"], "respuestas_correctas": "George Washington"}', "George Washington fue el primer presidente de los Estados Unidos."),	
(55, 1, "¿En qué año comenzó la Revolución Rusa?", '{"respuestas": ["1914", "1917", "1920", "1923"], "respuestas_correctas": "1917"}', "La Revolución Rusa comenzó en el año 1917."),	
(55, 1, "¿Quién fue el líder del movimiento de independencia de la India?", '{"respuestas": ["Mahatma Gandhi", "Jawaharlal Nehru", "Subhas Chandra Bose", "Indira Gandhi"], "respuestas_correctas": "Mahatma Gandhi"}', "Mahatma Gandhi fue el líder del movimiento de independencia de la India.");

-- Preguntas para el test 6 de Historia
INSERT INTO preguntas (id_test, tipo_pregunta, nombre_pregunta, datos_pregunta, retroalimentacion) VALUES
(56, 1, "¿Quién fue el primer presidente de México?", '{"respuestas": ["Guadalupe Victoria", "Vicente Guerrero", "Agustín de Iturbide", "Benito Juárez"], "respuestas_correctas": "Guadalupe Victoria"}', "Guadalupe Victoria fue el primer presidente de México."),	
(56, 1, "¿En qué año comenzó la Revolución Mexicana?", '{"respuestas": ["1900", "1910", "1920", "1930"], "respuestas_correctas": "1910"}', "La Revolución Mexicana comenzó en el año 1910."),	
(56, 1, "¿Quién fue el líder de la Revolución Cubana?", '{"respuestas": ["Fidel Castro", "Che Guevara", "Raúl Castro", "Camilo Cienfuegos"], "respuestas_correctas": "Fidel Castro"}', "Fidel Castro fue el líder de la Revolución Cubana."),	
(56, 1, "¿En qué año se produjo la Batalla de Stalingrado?", '{"respuestas": ["1941", "1942", "1943", "1944"], "respuestas_correctas": "1942"}', "La Batalla de Stalingrado tuvo lugar en el año 1942."),	
(56, 1, "¿Quién fue el primer emperador romano?", '{"respuestas": ["Julio César", "Augusto", "Marco Antonio", "Cleopatra"], "respuestas_correctas": "Augusto"}', "Augusto fue el primer emperador romano."),	
(56, 1, "¿En qué año comenzó la Guerra de Independencia de los Estados Unidos?", '{"respuestas": ["1765", "1775", "1785", "1795"], "respuestas_correctas": "1775"}', "La Guerra de Independencia de los Estados Unidos comenzó en el año 1775."),	
(56, 1, "¿En qué año se fundó la ciudad de Roma?", '{"respuestas": ["753 a.C.", "100 a.C.", "500 d.C.", "1000 d.C."], "respuestas_correctas": "753 a.C."}', "La ciudad de Roma se fundó en el año 753 a.C."),	
(56, 1, "¿Cuál fue el primer país en abolir la esclavitud?", '{"respuestas": ["Francia", "Inglaterra", "Estados Unidos", "Haití"], "respuestas_correctas": "Haití"}', "Haití fue el primer país en abolir la esclavitud en 1804."),	
(56, 1, "¿Quién fue el líder de la Unificación de Italia?", '{"respuestas": ["Giuseppe Garibaldi", "Vittorio Emanuele II", "Camillo di Cavour", "Giacomo Leopardi"], "respuestas_correctas": "Camillo di Cavour"}', "Camillo di Cavour fue el líder de la Unificación de Italia."),	
(56, 1, "¿En qué año se produjo la Revolución de Octubre en Rusia?", '{"respuestas": ["1905", "1917", "1929", "1936"], "respuestas_correctas": "1917"}', "La Revolución de Octubre en Rusia se produjo en el año 1917.");

-- Preguntas para el test 7 de Historia
INSERT INTO preguntas (id_test, tipo_pregunta, nombre_pregunta, datos_pregunta, retroalimentacion) VALUES
(57, 1, "¿En qué año se produjo la Revolución Industrial?", '{"respuestas": ["1700", "1750", "1800", "1850"], "respuestas_correctas": "1750"}', "La Revolución Industrial se produjo en el siglo XVIII, hacia el año 1750."),	
(57, 1, "¿Quién escribió el Manifiesto Comunista?", '{"respuestas": ["Karl Marx y Friedrich Engels", "Vladimir Lenin y Leon Trotsky", "Joseph Stalin y Mao Zedong", "Nicolás II y Grigori Rasputin"], "respuestas_correctas": "Karl Marx y Friedrich Engels"}', "El Manifiesto Comunista fue escrito por Karl Marx y Friedrich Engels."),	
(57, 1, "¿Cuándo se fundó la Liga de las Naciones?", '{"respuestas": ["1914", "1918", "1920", "1939"], "respuestas_correctas": "1920"}', "La Liga de las Naciones se fundó en el año 1920."),	
(57, 1, "¿Quién fue el líder de la Revolución Cubana?", '{"respuestas": ["Fidel Castro", "Che Guevara", "Camilo Cienfuegos", "Raúl Castro"], "respuestas_correctas": "Fidel Castro"}', "Fidel Castro fue el líder de la Revolución Cubana."),	
(57, 1, "¿En qué año se produjo la Guerra Fría?", '{"respuestas": ["1939-1945", "1945-1950", "1950-1955", "1947-1991"], "respuestas_correctas": "1947-1991"}', "La Guerra Fría se produjo entre los años 1947 y 1991."),	
(57, 1, "¿Quién fue el primer presidente de los Estados Unidos?", '{"respuestas": ["George Washington", "Thomas Jefferson", "John Adams", "Abraham Lincoln"], "respuestas_correctas": "George Washington"}', "George Washington fue el primer presidente de los Estados Unidos."),	
(57, 1, "¿En qué año se produjo la Revolución Mexicana?", '{"respuestas": ["1810", "1910", "1917", "1920"], "respuestas_correctas": "1910"}', "La Revolución Mexicana comenzó en el año 1910."),	
(57, 1, "¿Quién fue el líder de la Revolución Sandinista?", '{"respuestas": ["Daniel Ortega", "Augusto César Sandino", "Anastasio Somoza", "Violeta Barrios de Chamorro"], "respuestas_correctas": "Augusto César Sandino"}', "Augusto César Sandino fue el líder de la Revolución Sandinista."),	
(57, 1, "¿En qué año se produjo la Guerra de Vietnam?", '{"respuestas": ["1945-1954", "1955-1960", "1961-1965", "1955-1975"], "respuestas_correctas": "1955-1975"}', "La Guerra de Vietnam se produjo entre los años 1955 y 1975."),	
(57, 1, "¿Quién fue el líder de la Revolución de los Claveles en Portugal?", '{"respuestas": ["António de Oliveira Salazar", "Marcelo Caetano", "Mário Soares", "António Ramalho Eanes"], "respuestas_correctas": "Mário Soares"}', "Mário Soares fue uno de los líderes de la Revolución de los Claveles en Portugal.");

-- Preguntas para el test 8 de Historia
INSERT INTO preguntas (id_test, tipo_pregunta, nombre_pregunta, datos_pregunta, retroalimentacion) VALUES
(58, 1, "¿Quién fue el primer presidente de Estados Unidos?", '{"respuestas": ["George Washington", "Thomas Jefferson", "John Adams", "Benjamin Franklin"], "respuestas_correctas": "George Washington"}', "George Washington fue el primer presidente de los Estados Unidos."),	
(58, 1, "¿Cuándo comenzó la Segunda Guerra Mundial?", '{"respuestas": ["1914", "1939", "1945", "1950"], "respuestas_correctas": "1939"}', "La Segunda Guerra Mundial comenzó en el año 1939."),	
(58, 1, "¿Quién fue el primer emperador romano?", '{"respuestas": ["Julio César", "César Augusto", "Marco Antonio", "Nerón"], "respuestas_correctas": "César Augusto"}', "César Augusto fue el primer emperador romano."),	
(58, 1, "¿En qué año se produjo la Revolución Rusa?", '{"respuestas": ["1905", "1917", "1921", "1930"], "respuestas_correctas": "1917"}', "La Revolución Rusa se produjo en el año 1917."),	
(58, 1, "¿Quién fue el último emperador de Rusia?", '{"respuestas": ["Alejandro I", "Nicolás I", "Alejandro II", "Nicolás II"], "respuestas_correctas": "Nicolás II"}', "Nicolás II fue el último emperador de Rusia."),	
(58, 1, "¿En qué año comenzó la Revolución Industrial?", '{"respuestas": ["1700", "1750", "1800", "1850"], "respuestas_correctas": "1750"}', "La Revolución Industrial comenzó en el año 1750."),	
(58, 1, "¿En qué año comenzó la Primera Guerra Mundial?", '{"respuestas": ["1905", "1914", "1918", "1939"], "respuestas_correctas": "1914"}', "La Primera Guerra Mundial comenzó en el año 1914."),	
(58, 1, "¿Quién fue el líder de la Revolución Rusa?", '{"respuestas": ["Vladimir Lenin", "Joseph Stalin", "Leon Trotsky", "Nicolás II"], "respuestas_correctas": "Vladimir Lenin"}', "Vladimir Lenin fue el líder de la Revolución Rusa."),	
(58, 1, "¿Cuál fue la causa principal de la Primera Guerra Mundial?", '{"respuestas": ["La Revolución Industrial", "La caída del Imperio Otomano", "El asesinato del archiduque Francisco Fernando", "La crisis de los misiles en Cuba"], "respuestas_correctas": "El asesinato del archiduque Francisco Fernando"}', "El asesinato del archiduque Francisco Fernando fue la causa principal de la Primera Guerra Mundial."),	
(58, 1, "¿Cuál fue la capital del Imperio Romano?", '{"respuestas": ["Atenas", "Roma", "Cartago", "Constantinopla"], "respuestas_correctas": "Roma"}', "Roma fue la capital del Imperio Romano.");

-- Preguntas para el test 9 de Historia
INSERT INTO preguntas (id_test, tipo_pregunta, nombre_pregunta, datos_pregunta, retroalimentacion) VALUES
(59, 1, "¿En qué año Cristóbal Colón llegó a América?", '{"respuestas": ["1492", "1564", "1607", "1776"], "respuestas_correctas": "1492"}', "Cristóbal Colón llegó a América en el año 1492."),	
(59, 1, "¿Qué implicaciones tuvo la Guerra Fría en la política y la cultura mundial?", '{"respuestas": ["Fomentó la polarización ideológica y el enfrentamiento militar entre los bloques liderados por Estados Unidos y la Unión Soviética, pero también generó avances tecnológicos y científicos significativos", "Estimuló el surgimiento de nuevas potencias regionales y la democratización de la política internacional, pero también generó conflictos y tensiones en zonas como América Latina, Asia y África", "Fomentó el desarrollo de una cultura globalizada y el intercambio cultural entre los bloques, pero también generó una homogeneización cultural y una pérdida de identidad cultural en algunos países", "No tuvo un impacto significativo en la política y la cultura mundial"], "respuestas_correctas": "Fomentó la polarización ideológica y el enfrentamiento militar entre los bloques liderados por Estados Unidos y la Unión Soviética, pero también generó avances tecnológicos y científicos significativos"}', "La Guerra Fría tuvo implicaciones profundas y complejas en la política y la cultura mundial, fomentando la polarización ideológica y el enfrentamiento militar entre los bloques liderados por Estados Unidos y la Unión Soviética, pero también generando avances tecnológicos y científicos significativos."),	
(59, 1, "¿En qué año se proclamó la Independencia de Estados Unidos?", '{"respuestas": ["1776", "1789", "1812", "1836"], "respuestas_correctas": "1776"}', "La Independencia de Estados Unidos se proclamó en el año 1776."),	
(59, 1, "¿Quién fue el primer presidente de Estados Unidos?", '{"respuestas": ["George Washington", "Thomas Jefferson", "Abraham Lincoln", "John F. Kennedy"], "respuestas_correctas": "George Washington"}', "George Washington fue el primer presidente de Estados Unidos."),	
(59, 1, "¿En qué año se produjo la caída del Muro de Berlín?", '{"respuestas": ["1989", "1991", "1993", "1997"], "respuestas_correctas": "1989"}', "La caída del Muro de Berlín ocurrió en el año 1989."),	
(59, 1, "¿Qué impacto tuvo la Revolución Industrial en la economía y la sociedad?", '{"respuestas": ["Fomentó la innovación y el crecimiento económico, pero también generó desigualdades y condiciones laborales precarias para los trabajadores", "Generó un aumento en los salarios y mejoró la calidad de vida de la población, pero también generó un mayor control social y político por parte de las élites", "Contribuyó a la democratización de la riqueza y la disminución de las desigualdades económicas, pero también generó una mayor centralización del poder político", "Provocó un declive económico y social en los países que no se industrializaron, pero también generó una mayor autonomía y empoderamiento de los trabajadores"], "respuestas_correctas": "Fomentó la innovación y el crecimiento económico, pero también generó desigualdades y condiciones laborales precarias para los trabajadores"}', "La Revolución Industrial tuvo un impacto profundo y complejo en la economía y la sociedad, fomentando la innovación y el crecimiento económico, pero también generando desigualdades y condiciones laborales precarias para los trabajadores."),	
(59, 1, "¿Quién fue el último emperador de Rusia?", '{"respuestas": ["Pedro I", "Iván IV", "Alejandro II", "Nicolás II"], "respuestas_correctas": "Nicolás II"}', "Nicolás II fue el último emperador de Rusia."),	
(59, 1, "¿En qué año se firmó el Tratado de Versalles para poner fin a la Primera Guerra Mundial?", '{"respuestas": ["1919", "1923", "1930", "1939"], "respuestas_correctas": "1919"}', "El Tratado de Versalles se firmó en el año 1919 para poner fin a la Primera Guerra Mundial."),	
(59, 1, "¿Qué evento fue el detonante de la Primera Guerra Mundial?", '{"respuestas": ["El asesinato del archiduque Francisco Fernando", "La invasión de Polonia", "La Guerra Fría", "El ataque a Pearl Harbor"], "respuestas_correctas": "El asesinato del archiduque Francisco Fernando"}', "El asesinato del archiduque Francisco Fernando de Austria en 1914 fue el detonante de la Primera Guerra Mundial."),	
(59, 1, "¿Quién lideró la Revolución Cubana en 1959?", '{"respuestas": ["Che Guevara", "Fidel Castro", "Hugo Chávez", "Augusto Pinochet"], "respuestas_correctas": "Fidel Castro"}', "Fidel Castro lideró la Revolución Cubana en 1959.");

-- Preguntas para el test 10 de Historia
INSERT INTO preguntas (id_test, tipo_pregunta, nombre_pregunta, datos_pregunta, retroalimentacion) VALUES
(60, 1, "¿En qué año se produjo el ataque a Pearl Harbor?", '{"respuestas": ["1939", "1941", "1943", "1945"], "respuestas_correctas": "1941"}', "El ataque a Pearl Harbor se produjo en el año 1941."),	
(60, 1, "¿Quién fue el líder de la Revolución China?", '{"respuestas": ["Mao Zedong", "Chiang Kai-shek", "Sun Yat-sen", "Deng Xiaoping"], "respuestas_correctas": "Mao Zedong"}', "Mao Zedong fue el líder de la Revolución China."),	
(60, 1, "¿En qué año se fundó la ciudad de Roma?", '{"respuestas": ["753 a.C.", "509 a.C.", "476 d.C.", "1453 d.C."], "respuestas_correctas": "753 a.C."}', "La ciudad de Roma fue fundada en el año 753 a.C."),	
(60, 1, "¿Quién fue el primer presidente de Estados Unidos?", '{"respuestas": ["George Washington", "Thomas Jefferson", "Benjamin Franklin", "John Adams"], "respuestas_correctas": "George Washington"}', "George Washington fue el primer presidente de Estados Unidos."),	
(60, 1, "¿En qué año se produjo la caída del Muro de Berlín?", '{"respuestas": ["1989", "1991", "1993", "1995"], "respuestas_correctas": "1989"}', "La caída del Muro de Berlín se produjo en el año 1989."),	
(60, 1, "¿Cómo influyó la Revolución Francesa en la política y la cultura europeas?", '{"respuestas": ["Fomentó la democracia y los derechos humanos en toda Europa, pero también generó un mayor autoritarismo y control social", "Contribuyó a la consolidación de los Estados nacionales y la defensa de los intereses nacionales, pero también generó una mayor intolerancia y discriminación hacia las minorías étnicas y religiosas", "Estimuló el florecimiento de la cultura y las artes en toda Europa, pero también generó un mayor elitismo y distanciamiento con la realidad social", "Provocó una mayor confrontación y rivalidad entre las potencias europeas, pero también generó un mayor respeto por los principios republicanos y la soberanía popular"], "respuestas_correctas": "Fomentó la democracia y los derechos humanos en toda Europa, pero también generó un mayor autoritarismo y control social"}', "La Revolución Francesa tuvo una influencia profunda y compleja en la política y la cultura europeas, fomentando la democracia y los derechos humanos en toda Europa, pero también generando un mayor autoritarismo y control social."),	
(60, 1, "¿Cómo afectó la caída del Imperio Romano de Occidente a Europa?", '{"respuestas": ["Generó un vacío de poder y una inestabilidad política que dio lugar a la Edad Media y la fragmentación territorial de Europa", "Permitió la unificación política y cultural de Europa bajo el dominio de los pueblos germánicos", "Fomentó la expansión del cristianismo y la difusión de la cultura clásica a través de la Iglesia Católica", "No tuvo un impacto significativo en la evolución política y cultural de Europa"], "respuestas_correctas": "Generó un vacío de poder y una inestabilidad política que dio lugar a la Edad Media y la fragmentación territorial de Europa"}', "La caída del Imperio Romano de Occidente tuvo un impacto profundo en Europa, generando un vacío de poder y una inestabilidad política que dio lugar a la Edad Media y la fragmentación territorial de Europa."),	
(60, 1, "¿Qué evento marcó el inicio de la Revolución Industrial?", '{"respuestas": ["La invención de la imprenta", "La Revolución Francesa", "La construcción del ferrocarril", "La invención de la máquina de vapor"], "respuestas_correctas": "La invención de la máquina de vapor"}', "El inicio de la Revolución Industrial se suele ubicar en el momento en que se inventó la máquina de vapor en el siglo XVIII."),	
(60, 1, "¿Quién fue el rey de España durante la Conquista de América?", '{"respuestas": ["Felipe II", "Carlos I", "Isabel I", "Fernando II"], "respuestas_correctas": "Carlos I"}', "Carlos I fue el rey de España durante la Conquista de América."),	
(60, 1, "¿Quién fue el líder de la Revolución Cubana?", '{"respuestas": ["Fidel Castro", "Che Guevara", "Camilo Cienfuegos", "Raúl Castro"], "respuestas_correctas": "Fidel Castro"}', "Fidel Castro fue el líder de la Revolución Cubana.");

-- Renumera el id de PREGUNTAS
SET foreign_key_checks = 0;

SET @newid := 0;
UPDATE PREGUNTAS SET id = (@newid := @newid + 1) ORDER BY id;

SET foreign_key_checks = 1;
