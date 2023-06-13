-- Datos para la tabla TESTS para los test de Química del tipo tipo de pregunta 1 con respuesta unica
INSERT INTO tests (id_materia, nombre_test, descripcion, id_usuario_creador) VALUES
(7, 'Química 01', 'Test 01 sobre la materia de Química con respuesta única.', 1),
(7, 'Química 02', 'Test 02 sobre la materia de Química con respuesta única.', 1),
(7, 'Química 03', 'Test 03 sobre la materia de Química con respuesta única.', 1),
(7, 'Química 04', 'Test 04 sobre la materia de Química con respuesta única.', 1),
(7, 'Química 05', 'Test 05 sobre la materia de Química con respuesta única.', 1),
(7, 'Química 06', 'Test 06 sobre la materia de Química con respuesta única.', 1),
(7, 'Química 07', 'Test 07 sobre la materia de Química con respuesta única.', 1),
(7, 'Química 08', 'Test 08 sobre la materia de Química con respuesta única.', 1),
(7, 'Química 09', 'Test 09 sobre la materia de Química con respuesta única.', 1),
(7, 'Química 10', 'Test 10 sobre la materia de Química con respuesta única.', 1);

SET foreign_key_checks = 0;

SET @newid := 0;
UPDATE tests SET id = (@newid := @newid + 1) ORDER BY id;

SET foreign_key_checks = 1;

-- Datos para la tabla PREGUNTAS de la MATERIA "Química" para el tipo de pregunta 1 con respuesta unica

-- Preguntas para el test 1 de Química
INSERT INTO preguntas (id_test, tipo_pregunta, nombre_pregunta, datos_pregunta, retroalimentacion) VALUES
(61, 1, "¿Cuál es el número atómico del hidrógeno?", '{"respuestas": ["1", "2", "3", "4"], "respuestas_correctas": "1"}', "El número atómico del hidrógeno es 1."),
(61, 1, "¿Cuál es el símbolo químico del carbono?", '{"respuestas": ["C", "Ca", "Co", "Cu"], "respuestas_correctas": "C"}', "El símbolo químico del carbono es C."),
(61, 1, "¿Cuál es el producto de la reacción química entre el ácido clorhídrico y el hidróxido de sodio?", '{"respuestas": ["Agua y cloruro de sodio", "Agua y cloruro de hidrógeno", "Dióxido de carbono y agua", "Amoniaco y agua"], "respuestas_correctas": "Agua y cloruro de sodio"}', "El producto de la reacción química entre el ácido clorhídrico y el hidróxido de sodio es agua y cloruro de sodio."),
(61, 1, "¿Cuál es la fórmula química del cloruro de sodio?", '{"respuestas": ["NaCl", "NaHCO3", "Na2SO4", "NaNO3"], "respuestas_correctas": "NaCl"}', "La fórmula química del cloruro de sodio es NaCl."),
(61, 1, "¿Cuál es la diferencia entre un ácido y una base?", '{"respuestas": ["Los ácidos tienen pH más bajo que 7, mientras que las bases tienen pH más alto que 7", "Los ácidos tienen pH más alto que 7, mientras que las bases tienen pH más bajo que 7", "Los ácidos y las bases tienen el mismo pH", "Los ácidos son sólidos y las bases son líquidas"], "respuestas_correctas": "Los ácidos tienen pH más bajo que 7, mientras que las bases tienen pH más alto que 7"}', "La diferencia entre un ácido y una base es que los ácidos tienen pH más bajo que 7, mientras que las bases tienen pH más alto que 7."),
(61, 1, "¿Qué es la tabla periódica?", '{"respuestas": ["Una tabla que organiza los elementos químicos según sus propiedades", "Una tabla que organiza los compuestos químicos según sus propiedades", "Una tabla que muestra la reactividad de los elementos químicos", "Una tabla que muestra la densidad de los elementos químicos"], "respuestas_correctas": "Una tabla que organiza los elementos químicos según sus propiedades"}', "La tabla periódica es una tabla que organiza los elementos químicos según sus propiedades."),
(61, 1, "¿Cuál es el número atómico del oxígeno?", '{"respuestas": ["6", "8", "10", "12"], "respuestas_correctas": "8"}', "El número atómico del oxígeno es 8."),
(61, 1, "¿Cuál es la fórmula química del agua?", '{"respuestas": ["H2O", "CO2", "NO2", "HNO3"], "respuestas_correctas": "H2O"}', "La fórmula química del agua es H2O."),
(61, 1, "¿Cuál es el proceso químico que se utiliza para separar los componentes de una mezcla?", '{"respuestas": ["Destilación", "Filtración", "Evaporación", "Decantación"], "respuestas_correctas": "Destilación"}', "A separar los componentes de una mezcla mediante un proceso químico se le llama destilación."),
(61, 1, "¿Qué es un ácido?", '{"respuestas": ["Un compuesto que libera iones hidronio en solución acuosa", "Un compuesto que libera iones hidróxido en solución acuosa", "Un compuesto que no reacciona con el agua", "Un compuesto que libera dióxido de carbono en solución acuosa"], "respuestas_correctas": "Un compuesto que libera iones hidronio en solución acuosa"}', "Un ácido es un compuesto que libera iones hidronio en solución acuosa.");

-- Preguntas para el test 2 de Química
INSERT INTO preguntas (id_test, tipo_pregunta, nombre_pregunta, datos_pregunta, retroalimentacion) VALUES
(62, 1, "¿Qué es un compuesto iónico?", '{"respuestas": ["Un compuesto formado por átomos que comparten electrones", "Un compuesto formado por iones con cargas opuestas", "Un compuesto que no reacciona con otros compuestos", "Un compuesto que no tiene enlaces químicos"], "respuestas_correctas": "Un compuesto formado por iones con cargas opuestas"}', "Un compuesto iónico es un compuesto formado por iones con cargas opuestas."),
(62, 1, "¿Qué elemento químico es simbolizado por la letra 'Fe'?", '{"respuestas": ["Oxígeno", "Hierro", "Calcio", "Plata"], "respuestas_correctas": "Hierro"}', "El elemento químico simbolizado por la letra 'Fe' es el Hierro."),
(62, 1, "¿Qué es un catalizador?", '{"respuestas": ["Una sustancia que acelera una reacción química sin ser consumida en ella", "Una sustancia que reacciona con otra sustancia para producir un compuesto diferente", "Una sustancia que inhibe una reacción química", "Una sustancia que cambia de estado físico durante una reacción química"], "respuestas_correctas": "Una sustancia que acelera una reacción química sin ser consumida en ella"}', "Un catalizador es una sustancia que acelera una reacción química sin ser consumida en ella."),
(62, 1, "¿Cuál es el gas más abundante en la atmósfera terrestre?", '{"respuestas": ["Nitrógeno", "Oxígeno", "Dióxido de carbono", "Hidrógeno"], "respuestas_correctas": "Nitrógeno"}', "El gas más abundante en la atmósfera terrestre es el nitrógeno."),
(62, 1, "¿Cuál es la fórmula química del agua?", '{"respuestas": ["H2O", "CO2", "NO2", "HNO3"], "respuestas_correctas": "H2O"}', "La fórmula química del agua es H2O."),
(62, 1, "¿Qué elemento químico es simbolizado por la letra 'Fe'?", '{"respuestas": ["Oxígeno", "Hierro", "Calcio", "Plata"], "respuestas_correctas": "Hierro"}', "El elemento químico simbolizado por la letra 'Fe' es el Hierro."),
(62, 1, "¿Qué es un ácido?", '{"respuestas": ["Un compuesto que libera iones hidronio en solución acuosa", "Un compuesto que libera iones hidróxido en solución acuosa", "Un compuesto que no reacciona con el agua", "Un compuesto que libera dióxido de carbono en solución acuosa"], "respuestas_correctas": "Un compuesto que libera iones hidronio en solución acuosa"}', "Un ácido es un compuesto que libera iones hidronio en solución acuosa."),
(62, 1, "¿Qué es un compuesto iónico?", '{"respuestas": ["Un compuesto formado por átomos que comparten electrones", "Un compuesto formado por iones con cargas opuestas", "Un compuesto que no reacciona con otros compuestos", "Un compuesto que no tiene enlaces químicos"], "respuestas_correctas": "Un compuesto formado por iones con cargas opuestas"}', "Un compuesto iónico es un compuesto formado por iones con cargas opuestas."),
(62, 1, "¿Cuál es el número atómico del oxígeno?", '{"respuestas": ["6", "8", "10", "12"], "respuestas_correctas": "8"}', "El número atómico del oxígeno es 8."),
(62, 1, "¿Cuál es el gas más abundante en la atmósfera terrestre?", '{"respuestas": ["Nitrógeno", "Oxígeno", "Dióxido de carbono", "Hidrógeno"], "respuestas_correctas": "Nitrógeno"}', "El gas más abundante en la atmósfera terrestre es el nitrógeno.");

-- Preguntas para el test 3 de Química
INSERT INTO preguntas (id_test, tipo_pregunta, nombre_pregunta, datos_pregunta, retroalimentacion) VALUES
(63, 1, "¿Qué elemento químico tiene el símbolo H?", '{"respuestas": ["Hidrógeno", "Helio", "Hierro", "Hafnio"], "respuestas_correctas": "Hidrógeno"}', "El símbolo H representa el elemento químico Hidrógeno."),
(63, 1, "¿Cuál es el número atómico del oxígeno?", '{"respuestas": ["6", "8", "16", "32"], "respuestas_correctas": "8"}', "El número atómico del oxígeno es 8."),
(63, 1, "¿Qué es un catalizador?", '{"respuestas": ["Una sustancia que acelera una reacción química sin ser consumida en ella", "Una sustancia que reacciona con otra sustancia para producir un compuesto diferente", "Una sustancia que inhibe una reacción química", "Una sustancia que cambia de estado físico durante una reacción química"], "respuestas_correctas": "Una sustancia que acelera una reacción química sin ser consumida en ella"}', "Un catalizador es una sustancia que acelera una reacción química sin ser consumida en ella."),
(63, 1, "¿Qué elemento químico tiene el número atómico 1?", '{"respuestas": ["Hidrógeno", "Helio", "Litio", "Berilio"], "respuestas_correctas": "Hidrógeno"}', "El elemento químico con número atómico 1 es el Hidrógeno."),
(63, 1, "¿Cuál es el elemento químico más abundante en la Tierra?", '{"respuestas": ["Oxígeno", "Hidrógeno", "Carbono", "Nitrógeno"], "respuestas_correctas": "Hidrógeno"}', "El Hidrógeno es el elemento químico más abundante en la Tierra."),
(63, 1, "¿Qué elemento químico tiene el número atómico 79?", '{"respuestas": ["Plata", "Oro", "Mercurio", "Platino"], "respuestas_correctas": "Oro"}', "El número atómico 79 corresponde al elemento químico Oro."),
(63, 1, "¿Cuál es la fórmula química del agua?", '{"respuestas": ["H2O", "CO2", "CH4", "NH3"], "respuestas_correctas": "H2O"}', "La fórmula química del agua es H2O."),
(63, 1, "¿Cuál es el elemento químico más pesado de la tabla periódica?", '{"respuestas": ["Oro", "Plomo", "Uranio", "Plutonio"], "respuestas_correctas": "Oganesón"}', "El Oganesón, con un número atómico de 118, es el elemento químico más pesado de la tabla periódica."),
(63, 1, "¿Qué es la electronegatividad?", '{"respuestas": ["La capacidad de un átomo para atraer electrones hacia sí mismo en una molécula", "La capacidad de un átomo para perder electrones en una reacción química", "La cantidad total de electrones en un átomo", "La capacidad de un átomo para ganar electrones en una reacción química"], "respuestas_correctas": "La capacidad de un átomo para atraer electrones hacia sí mismo en una molécula"}', "La electronegatividad es la capacidad de un átomo para atraer electrones hacia sí mismo en una molécula."),
(63, 1, "¿Cuál es el proceso químico que ocurre en una célula para producir energía?", '{"respuestas": ["Fotosíntesis", "Respiración celular", "Oxidación", "Reducción"], "respuestas_correctas": "Respiración celular"}', "La respiración celular es el proceso químico que ocurre en una célula para producir energía.");


-- Preguntas para el test 4 de Química
INSERT INTO preguntas (id_test, tipo_pregunta, nombre_pregunta, datos_pregunta, retroalimentacion) VALUES
(64, 1, "¿Cuál es el número atómico del carbono?", '{"respuestas": ["6", "7", "8", "9"], "respuestas_correctas": "6"}', "El número atómico del carbono es 6."),
(64, 1, "¿Cuál es la fórmula química del agua?", '{"respuestas": ["H2O2", "H2O3", "H3O", "H2O"], "respuestas_correctas": "H2O"}', "La fórmula química del agua es H2O."),
(64, 1, "¿Qué es la ley de conservación de la masa?", '{"respuestas": ["La masa total de los reactivos es igual a la masa total de los productos en una reacción química", "La masa total de los reactivos siempre es mayor que la masa total de los productos en una reacción química", "La masa total de los productos siempre es mayor que la masa total de los reactivos en una reacción química", "La masa total de los reactivos y los productos no se relaciona en una reacción química"], "respuestas_correctas": "La masa total de los reactivos es igual a la masa total de los productos en una reacción química"}', "La ley de conservación de la masa establece que la masa total de los reactivos es igual a la masa total de los productos en una reacción química."),
(64, 1, "¿Cuál es la fórmula química del dióxido de carbono?", '{"respuestas": ["CO2", "CO", "C2O", "C2O3"], "respuestas_correctas": "CO2"}', "La fórmula química del dióxido de carbono es CO2."),
(64, 1, "¿Cuál es la fórmula química del cloruro de sodio?", '{"respuestas": ["NaCl", "Cl2", "Na2Cl", "HCl"], "respuestas_correctas": "NaCl"}', "La fórmula química del cloruro de sodio es NaCl."),
(64, 1, "¿Cuál es la fórmula molecular del ácido sulfúrico?", '{"respuestas": ["H2SO4", "HSO4", "SO4H2", "SO3"], "respuestas_correctas": "H2SO4"}', "La fórmula molecular del ácido sulfúrico es H2SO4."),
(64, 1, "¿Qué es la ley de conservación de la masa?", '{"respuestas": ["La masa de los productos es igual a la masa de los reactivos en una reacción química", "La masa de los productos es mayor que la masa de los reactivos en una reacción química", "La masa de los productos es menor que la masa de los reactivos en una reacción química", "La masa de los productos y los reactivos no están relacionados"], "respuestas_correctas": "La masa de los productos es igual a la masa de los reactivos en una reacción química"}', "La ley de conservación de la masa establece que la masa de los productos de una reacción química es igual a la masa de los reactivos."),
(64, 1, "¿Cuál es el número de Avogadro?", '{"respuestas": ["6.02 x 10^23", "6.63 x 10^-34", "9.81", "299792458"], "respuestas_correctas": "6.02 x 10^23"}', "El número de Avogadro es 6.02 x 10^23."),
(64, 1, "¿Qué es la entalpía?", '{"respuestas": ["La cantidad de energía que se libera o se absorbe en una reacción química", "La cantidad de energía requerida para separar un enlace químico", "La cantidad de energía requerida para ionizar un átomo o molécula", "La cantidad de energía liberada cuando se forma un enlace químico"], "respuestas_correctas": "La cantidad de energía que se libera o se absorbe en una reacción química"}', "La entalpía es la cantidad de energía que se libera o se absorbe en una reacción química."),
(64, 1, "¿Cuál es el punto de ebullición del agua a nivel del mar?", '{"respuestas": ["100°C", "0°C", "50°C", "200°C"], "respuestas_correctas": "100°C"}', "El punto de ebullición del agua a nivel del mar es 100°C.");

-- Preguntas para el test 5 de Química
INSERT INTO preguntas (id_test, tipo_pregunta, nombre_pregunta, datos_pregunta, retroalimentacion) VALUES
(65, 1, "¿Cuál es el símbolo químico del hierro?", '{"respuestas": ["Fe", "H", "Ag", "Au"], "respuestas_correctas": "Fe"}', "El símbolo químico del hierro es Fe."),
(65, 1, "¿Qué gas se libera durante la fotosíntesis?", '{"respuestas": ["Dióxido de carbono", "Oxígeno", "Nitrógeno", "Metano"], "respuestas_correctas": "Oxígeno"}', "Durante la fotosíntesis se libera oxígeno."),
(65, 1, "¿Qué elemento químico se encuentra en mayor cantidad en la atmósfera terrestre?", '{"respuestas": ["Oxígeno", "Nitrógeno", "Dióxido de carbono", "Hidrógeno"], "respuestas_correctas": "Nitrógeno"}', "El elemento químico que se encuentra en mayor cantidad en la atmósfera terrestre es el nitrógeno."),
(65, 1, "¿Qué es el pH?", '{"respuestas": ["Un indicador de acidez o alcalinidad", "Un tipo de ácido", "Una medida de la cantidad de oxígeno en el agua", "Un tipo de gas"], "respuestas_correctas": "Un indicador de acidez o alcalinidad"}', "El pH es un indicador de acidez o alcalinidad."),
(65, 1, "¿Qué es un átomo?", '{"respuestas": ["La unidad básica de la materia", "Un tipo de molécula", "Una forma de energía", "Un tipo de célula"], "respuestas_correctas": "La unidad básica de la materia"}', "Un átomo es la unidad básica de la materia."),
(65, 1, "¿Cuál es la fórmula química del agua?", '{"respuestas": ["H2O2", "NaCl", "CO2", "H2O"], "respuestas_correctas": "H2O"}', "La fórmula química del agua es H2O."),
(65, 1, "¿Cuál es el elemento químico más abundante en el universo?", '{"respuestas": ["Oxígeno", "Nitrógeno", "Hidrógeno", "Helio"], "respuestas_correctas": "Hidrógeno"}', "El elemento químico más abundante en el universo es el hidrógeno."),
(65, 1, "¿Cuál es el elemento químico más abundante en la corteza terrestre?", '{"respuestas": ["Oxígeno", "Carbono", "Hierro", "Aluminio"], "respuestas_correctas": "Oxígeno"}', "El oxígeno es el elemento más abundante en la corteza terrestre."),
(65, 1, "¿Qué es la electronegatividad en química?", '{"respuestas": ["La capacidad de un átomo de atraer electrones hacia sí mismo", "La capacidad de un átomo de ceder electrones", "La capacidad de un átomo de compartir electrones", "La capacidad de un átomo de repeler electrones"], "respuestas_correctas": "La capacidad de un átomo de atraer electrones hacia sí mismo"}', "La electronegatividad en química es la capacidad de un átomo de atraer electrones hacia sí mismo."),
(65, 1, "¿Cuál es el proceso químico que permite la producción de energía en las estrellas?", '{"respuestas": ["Fusión nuclear", "Fisión nuclear", "Reacción química", "Oxidación"], "respuestas_correctas": "Fusión nuclear"}', "El proceso químico que permite la producción de energía en las estrellas es la fusión nuclear.");

-- Preguntas para el test 6 de Química
INSERT INTO preguntas (id_test, tipo_pregunta, nombre_pregunta, datos_pregunta, retroalimentacion) VALUES
(66, 1, "¿Cuál es el número atómico del helio?", '{"respuestas": ["1", "2", "3", "4"], "respuestas_correctas": "2"}', "El helio tiene un número atómico de 2."),
(66, 1, "¿Qué es la ley de conservación de la masa?", '{"respuestas": ["La masa total de los reactivos es igual a la masa total de los productos en una reacción química", "La masa total de los reactivos es menor que la masa total de los productos en una reacción química", "La masa total de los reactivos es mayor que la masa total de los productos en una reacción química", "La masa total de los reactivos y los productos en una reacción química es cero"], "respuestas_correctas": "La masa total de los reactivos es igual a la masa total de los productos en una reacción química"}', "La ley de conservación de la masa establece que la masa total de los reactivos es igual a la masa total de los productos en una reacción química."),
(66, 1, "¿Qué es un isótopo en química?", '{"respuestas": ["Átomos de un elemento que tienen diferente número atómico", "Átomos de un elemento que tienen diferente número de neutrones", "Átomos de diferentes elementos químicos", "Moléculas que contienen diferentes elementos químicos"], "respuestas_correctas": "Átomos de un elemento que tienen diferente número de neutrones"}', "Un isótopo en química es un átomo de un elemento que tiene un número diferente de neutrones."),
(66, 1, "¿Cuál es la fórmula química del agua?", '{"respuestas": ["H2SO4", "NaCl", "H2O", "CO2"], "respuestas_correctas": "H2O"}', "La fórmula química del agua es H2O."),
(66, 1, "¿Cuál es la fórmula química del agua?", '{"respuestas": ["H2O", "CO2", "NaCl", "CH4"], "respuestas_correctas": "H2O"}', "La fórmula química del agua es H2O."),
(66, 1, "¿Cuál es el gas más abundante en la atmósfera terrestre?", '{"respuestas": ["Oxígeno", "Dióxido de carbono", "Nitrógeno", "Hidrógeno"], "respuestas_correctas": "Nitrógeno"}', "El gas más abundante en la atmósfera terrestre es el nitrógeno."),
(66, 1, "¿Cuál es el elemento más ligero de la tabla periódica?", '{"respuestas": ["Hidrógeno", "Helio", "Litio", "Carbono"], "respuestas_correctas": "Hidrógeno"}', "El hidrógeno es el elemento más ligero de la tabla periódica."),
(66, 1, "¿Cuál es la fórmula química del dióxido de carbono?", '{"respuestas": ["H2O", "CO2", "NaCl", "CH4"], "respuestas_correctas": "CO2"}', "La fórmula química del dióxido de carbono es CO2."),
(66, 1, "¿Cuál es el elemento más abundante en la corteza terrestre?", '{"respuestas": ["Oxígeno", "Silicio", "Aluminio", "Hierro"], "respuestas_correctas": "Oxígeno"}', "El elemento más abundante en la corteza terrestre es el oxígeno."),
(66, 1, "¿Cuál es el elemento químico utilizado en la fabricación de bombillas incandescentes?", '{"respuestas": ["Oxígeno", "Nitrógeno", "Helio", "Wolframio"], "respuestas_correctas": "Wolframio"}', "El elemento químico utilizado en la fabricación de bombillas incandescentes es el wolframio.");

-- Preguntas para el test 7 de Química
INSERT INTO preguntas (id_test, tipo_pregunta, nombre_pregunta, datos_pregunta, retroalimentacion) VALUES
(67, 1, "¿Cuál es el nombre del grupo funcional -OH?", '{"respuestas": ["Hidroxilo", "Metoxilo", "Aminilo", "Alquil"], "respuestas_correctas": "Hidroxilo"}', "El grupo funcional -OH se llama hidroxilo."),
(67, 1, "¿Cuál es el nombre del grupo funcional -COOH?", '{"respuestas": ["Carboxilo", "Ciano", "Amino", "Fenilo"], "respuestas_correctas": "Carboxilo"}', "El grupo funcional -COOH se llama carboxilo."),
(67, 1, "¿Cuál es el nombre del compuesto CH3-CH2-CH3?", '{"respuestas": ["Propano", "Metano", "Eteno", "Butano"], "respuestas_correctas": "Propano"}', "El compuesto CH3-CH2-CH3 se llama propano."),
(67, 1, "¿Cuál es la unidad básica de los ácidos nucleicos?", '{"respuestas": ["Aminoácidos", "Nucleótidos", "Lípidos", "Proteínas"], "respuestas_correctas": "Nucleótidos"}', "La unidad básica de los ácidos nucleicos son los nucleótidos."),
(67, 1, "¿Cuál es la fórmula molecular del etanol?", '{"respuestas": ["C2H6O", "C3H6O2", "CH3OH", "C2H5OH"], "respuestas_correctas": "C2H5OH"}', "La fórmula molecular del etanol es C2H5OH."),
(67, 1, "¿Qué tipo de enlace tienen los hidrocarburos?", '{"respuestas": ["Enlace covalente no polar", "Enlace covalente polar", "Enlace iónico", "Enlace metálico"], "respuestas_correctas": "Enlace covalente no polar"}', "Los hidrocarburos tienen enlaces covalentes no polares."),
(67, 1, "¿Cuál es el nombre del compuesto C2H5Br?", '{"respuestas": ["Bromuro de etilo", "Cloruro de etilo", "Etano", "Bromuro de metilo"], "respuestas_correctas": "Bromuro de etilo"}', "El compuesto C2H5Br se llama bromuro de etilo."),
(67, 1, "¿Cuál es el nombre del compuesto CH3-CH=CH2?", '{"respuestas": ["Propeno", "Propino", "Buteno", "Butino"], "respuestas_correctas": "Propeno"}', "El compuesto CH3-CH=CH2 se llama propeno."),
(67, 1, "¿Cuál es el gas noble más pesado?", '{"respuestas": ["Neón", "Argón", "Kriptón", "Radón"], "respuestas_correctas": "Radón"}', "El gas noble más pesado es el radón."),
(67, 1, "¿Cuál es el nombre del compuesto CH3-CH2-C≡CH?", '{"respuestas": ["Butino", "Butano", "Pentino", "Pentano"], "respuestas_correctas": "Butino"}', "El compuesto CH3-CH2-C≡CH se llama butino.");

-- Preguntas para el test 8 de Química
INSERT INTO preguntas (id_test, tipo_pregunta, nombre_pregunta, datos_pregunta, retroalimentacion) VALUES
(68, 1, "¿Cuál es el nombre común del ácido etanoico?", '{"respuestas": ["Ácido acético", "Ácido fórmico", "Ácido metanoico", "Ácido propanoico"], "respuestas_correctas": "Ácido acético"}', "El ácido etanoico es más comúnmente conocido como ácido acético."),
(68, 1, "¿Cuál es la fórmula molecular del etanol?", '{"respuestas": ["C2H4O2", "CH4O", "C2H5OH", "C3H6O"], "respuestas_correctas": "C2H5OH"}', "La fórmula molecular del etanol es C2H5OH."),
(68, 1, "¿Cuál es el nombre común del 2-propanol?", '{"respuestas": ["Isopropanol", "Butanol", "Metanol", "Etanol"], "respuestas_correctas": "Isopropanol"}', "El 2-propanol es más comúnmente conocido como isopropanol."),
(68, 1, "¿Cuál es la fórmula molecular del acetileno?", '{"respuestas": ["C2H2", "C3H6", "C4H8", "C5H10"], "respuestas_correctas": "C2H2"}', "La fórmula molecular del acetileno es C2H2."),
(68, 1, "¿Cuál es el nombre común del CH3CH2OH?", '{"respuestas": ["Etanol", "Propanol", "Metanol", "Butanol"], "respuestas_correctas": "Etanol"}', "El compuesto CH3CH2OH es más comúnmente conocido como etanol."),
(68, 1, "¿Cuál es la fórmula química del dióxido de carbono?", '{"respuestas": ["CO2", "H2O", "NaCl", "HCl"], "respuestas_correctas": "CO2"}', "La fórmula química del dióxido de carbono es CO2."),
(68, 1, "¿Cuál es el nombre común del ácido butanoico?", '{"respuestas": ["Ácido butírico", "Ácido fórmico", "Ácido acético", "Ácido metanoico"], "respuestas_correctas": "Ácido butírico"}', "El ácido butanoico es más comúnmente conocido como ácido butírico."),
(68, 1, "¿Cuál es la fórmula química del metano?", '{"respuestas": ["CH4", "C2H6", "C6H12O6", "H2O"], "respuestas_correctas": "CH4"}', "La fórmula química del metano es CH4."),
(68, 1, "¿Cuál es la fórmula molecular del benceno?", '{"respuestas": ["C6H6", "C7H8", "C8H10", "C9H12"], "respuestas_correctas": "C6H6"}', "La fórmula molecular del benceno es C6H6."),
(68, 1, "¿Cuál es el nombre común del CH3CH2CH2OH?", '{"respuestas": ["Propanol", "Butanol", "Pentanol", "Hexanol"], "respuestas_correctas": "Butanol"}', "El compuesto CH3CH2CH2OH es más comúnmente conocido como butanol.");


-- Preguntas para el test 9 de Química
INSERT INTO preguntas (id_test, tipo_pregunta, nombre_pregunta, datos_pregunta, retroalimentacion) VALUES
(69, 1, "¿Cuál es la fórmula química del agua oxigenada?", '{"respuestas": ["H2O2", "H2O", "CO2", "NaCl"], "respuestas_correctas": "H2O2"}', "La fórmula química del agua oxigenada es H2O2."),
(69, 1, "¿Cuál es el ácido presente en el vinagre?", '{"respuestas": ["Ácido clorhídrico", "Ácido sulfúrico", "Ácido acético", "Ácido nítrico"], "respuestas_correctas": "Ácido acético"}', "El vinagre contiene ácido acético, que le da su sabor característico y su olor."),
(69, 1, "¿Cuál es la fórmula química del ácido clorhídrico?", '{"respuestas": ["HCl", "NaCl", "H2SO4", "HNO3"], "respuestas_correctas": "HCl"}', "La fórmula química del ácido clorhídrico es HCl."),
(69, 1, "¿Qué es el pH?", '{"respuestas": ["La cantidad de iones hidrógeno en una solución.", "La medida de la acidez o basicidad de una solución.", "La cantidad de electrones que un átomo tiene en su capa de valencia.", "La fuerza que mantiene unidos a los átomos en una molécula."], "respuestas_correctas": "La medida de la acidez o basicidad de una solución."}', "El pH es una medida de la acidez o basicidad de una solución."),
(69, 1, "¿Cuál es la fórmula química del ácido sulfúrico?", '{"respuestas": ["H2SO4", "HCl", "NaCl", "HNO3"], "respuestas_correctas": "H2SO4"}', "La fórmula química del ácido sulfúrico es H2SO4."),
(69, 1, "¿Cuál es la fórmula química del etanol?", '{"respuestas": ["C2H5OH", "CH3OH", "C6H12O6", "CO2"], "respuestas_correctas": "C2H5OH"}', "La fórmula química del etanol es C2H5OH."),
(69, 1, "¿Qué es la electronegatividad?", '{"respuestas": ["La habilidad de un átomo para atraer electrones hacia sí mismo en un enlace químico.", "La cantidad de electrones que un átomo tiene en su capa de valencia.", "La medida de la concentración de iones hidrógeno en una solución.", "La fuerza que mantiene unidos a los átomos en una molécula."], "respuestas_correctas": "La habilidad de un átomo para atraer electrones hacia sí mismo en un enlace químico."}', "La electronegatividad se refiere a la habilidad de un átomo para atraer electrones hacia sí mismo en un enlace químico."),
(69, 1, "¿Cuál es la fórmula química del ácido acético?", '{"respuestas": ["CH3COOH", "H2SO4", "HCl", "NaCl"], "respuestas_correctas": "CH3COOH"}', "La fórmula química del ácido acético es CH3COOH."),
(69, 1, "¿Cuál es la fórmula química del cloruro de sodio?", '{"respuestas": ["NaCl", "H2O", "CO2", "HCl"], "respuestas_correctas": "NaCl"}', "La fórmula química del cloruro de sodio es NaCl."),
(69, 1, "¿Qué elemento químico tiene el símbolo Au?", '{"respuestas": ["Plata", "Oro", "Hierro", "Cobre"], "respuestas_correctas": "Oro"}', "El oro tiene el símbolo químico Au.");

-- Preguntas para el test 10 de Química
INSERT INTO preguntas (id_test, tipo_pregunta, nombre_pregunta, datos_pregunta, retroalimentacion) VALUES
(70, 1, "¿Cuál es la fórmula química del agua?", '{"respuestas": ["NaCl", "HCl", "H2O", "CO2"], "respuestas_correctas": "H2O"}', "La fórmula química del agua es H2O."),
(70, 1, "¿Qué tipo de enlace químico comparten dos átomos en una molécula de oxígeno?", '{"respuestas": ["Enlace iónico", "Enlace covalente", "Enlace metálico", "Enlace de hidrógeno"], "respuestas_correctas": "Enlace covalente"}', "Los dos átomos en una molécula de oxígeno comparten un enlace covalente."),
(70, 1, "¿Cuál es el número atómico del carbono?", '{"respuestas": ["5", "12", "6", "8"], "respuestas_correctas": "6"}', "El carbono tiene un número atómico de 6, lo que significa que tiene 6 protones en su núcleo."),
(70, 1, "¿Cuál es la fórmula química del agua?", '{"respuestas": ["H2SO4", "NaCl", "H2O", "CO2"], "respuestas_correctas": "H2O"}', "La fórmula química del agua es H2O, lo que significa que cada molécula de agua está compuesta por dos átomos de hidrógeno y uno de oxígeno."),
(70, 1, "¿Qué es un compuesto?", '{"respuestas": ["Un tipo de átomo", "Una sustancia formada por dos o más elementos químicos diferentes.", "Una molécula formada por dos o más átomos del mismo elemento.", "Una molécula formada por dos átomos de hidrógeno y uno de oxígeno."], "respuestas_correctas": "Una sustancia formada por dos o más elementos químicos diferentes."}', "Un compuesto es una sustancia formada por dos o más elementos químicos diferentes."),
(70, 1, "¿Cuál es el ácido que se encuentra en el vinagre?", '{"respuestas": ["Ácido acético", "Ácido clorhídrico", "Ácido sulfúrico", "Ácido nítrico"], "respuestas_correctas": "Ácido acético"}', "El vinagre contiene ácido acético."),
(70, 1, "¿Cuál es el nombre del compuesto químico con la fórmula NH3?", '{"respuestas": ["Ácido sulfúrico", "Cloroformo", "Amoníaco", "Ácido clorhídrico"], "respuestas_correctas": "Amoníaco"}', "La fórmula NH3 corresponde al compuesto químico amoníaco."),
(70, 1, "¿Cuál es el gas más abundante en la atmósfera de la Tierra?", '{"respuestas": ["Dióxido de carbono", "Nitrógeno", "Oxígeno", "Metano"], "respuestas_correctas": "Nitrógeno"}', "El gas más abundante en la atmósfera de la Tierra es el nitrógeno."),
(70, 1, "¿Cuál es el metal más reactivo?", '{"respuestas": ["Hierro", "Cobre", "Plata", "Potasio"], "respuestas_correctas": "Potasio"}', "El potasio es el metal más reactivo."),
(70, 1, "¿Qué es un catalizador?", '{"respuestas": ["Una sustancia que acelera una reacción química sin ser consumida en ella", "Una sustancia que reacciona con otra sustancia para producir un compuesto diferente", "Una sustancia que inhibe una reacción química", "Una sustancia que cambia de estado físico durante una reacción química"], "respuestas_correctas": "Una sustancia que acelera una reacción química sin ser consumida en ella"}', "Un catalizador es una sustancia que acelera una reacción química sin ser consumida en ella.");

-- Renumera el id de PREGUNTAS
SET foreign_key_checks = 0;

SET @newid := 0;
UPDATE preguntas SET id = (@newid := @newid + 1) ORDER BY id;

SET foreign_key_checks = 1;