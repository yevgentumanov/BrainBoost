-- Datos para la tabla TESTS para los test de Biología del tipo tipo de pregunta 1 respuesta única
INSERT INTO tests (id_materia, nombre_test, descripcion, id_usuario_creador) VALUES
(6, 'Biología 01', 'Test 01 sobre la materia de Biología de respuesta única.', 1),
(6, 'Biología 02', 'Test 02 sobre la materia de Biología de respuesta única.', 1),
(6, 'Biología 03', 'Test 03 sobre la materia de Biología de respuesta única.', 1),
(6, 'Biología 04', 'Test 04 sobre la materia de Biología de respuesta única.', 1),
(6, 'Biología 05', 'Test 05 sobre la materia de Biología de respuesta única.', 1),
(6, 'Biología 06', 'Test 06 sobre la materia de Biología de respuesta única.', 1),

-- Datos para la tabla TESTS para los test de Biología del tipo tipo de pregunta 2 múltiples respuestas
(6, 'Biología 07', 'Test 07 sobre la materia de Biología de múltiples respuestas.', 1),
(6, 'Biología 08', 'Test 08 sobre la materia de Biología de múltiples respuestas.', 1),
(6, 'Biología 09', 'Test 09 sobre la materia de Biología de múltiples respuestas.', 1),
(6, 'Biología 10', 'Test 10 sobre la materia de Biología de múltiples respuestas.', 1);

SET foreign_key_checks = 0;

SET @newid := 0;
UPDATE tests SET id = (@newid := @newid + 1) ORDER BY id;

SET foreign_key_checks = 1;

-- Datos para la tabla PREGUNTAS de la MATERIA "Biología" para el tipo de pregunta 1 respuesta única

-- Preguntas para el test 1 de Biología
INSERT INTO preguntas (id_test, tipo_pregunta, nombre_pregunta, datos_pregunta, retroalimentacion) VALUES
(201, 1, '¿Cuál de los siguientes órganos es parte del sistema respiratorio?', '{"respuestas": ["Pulmón", "Hígado", "Estómago", "Riñón"], "respuestas_correctas": ["Pulmón"]}', null),
(201, 1, '¿Cuál es la función principal del sistema endocrino?', '{"respuestas": ["Regular las funciones del organismo a través de hormonas", "Producir energía para el cuerpo", "Realizar la digestión de los alimentos", "Eliminar desechos metabólicos"], "respuestas_correctas": ["Regular las funciones del organismo a través de hormonas"]}', null),
(201, 1, '¿Cuál de las siguientes estructuras es parte del sistema nervioso central?', '{"respuestas": ["Cerebro", "Pulmón", "Hígado", "Riñón"], "respuestas_correctas": ["Cerebro"]}', null),
(201, 1, '¿Cuál es el proceso de formación de gametos en la reproducción sexual?', '{"respuestas": ["Meiosis", "Mitosis", "Fecundación", "Segmentación"], "respuestas_correctas": ["Meiosis"]}', null),
(201, 1, '¿Cuál es la función principal del sistema excretor?', '{"respuestas": ["Eliminar desechos metabólicos", "Transportar oxígeno y nutrientes", "Regular la temperatura corporal", "Producir energía para el cuerpo"], "respuestas_correctas": ["Eliminar desechos metabólicos"]}', null),
(201, 1, '¿Cuál es el proceso de conversión de glucosa en energía en las células?', '{"respuestas": ["Respiración celular", "Fotosíntesis", "Digestión", "Excreción"], "respuestas_correctas": ["Respiración celular"]}', null),
(201, 1, '¿Cuál es la función principal del sistema esquelético?', '{"respuestas": ["Proporcionar soporte y protección", "Transportar oxígeno y nutrientes", "Regular la temperatura corporal", "Producir energía para el cuerpo"], "respuestas_correctas": ["Proporcionar soporte y protección"]}', null),
(201, 1, '¿Cuál es la función principal del sistema de transporte en las plantas?', '{"respuestas": ["Transportar agua y nutrientes", "Realizar la fotosíntesis", "Producir energía para la célula", "Regular la temperatura corporal"], "respuestas_correctas": ["Transportar agua y nutrientes"]}', null),
(201, 1, '¿Cuál de los siguientes órganos es parte del sistema reproductor masculino?', '{"respuestas": ["Testículo", "Ovario", "Útero", "Vejiga"], "respuestas_correctas": ["Testículo"]}', null),
(201, 1, '¿Cuál es la función principal de la clorofila en las plantas?', '{"respuestas": ["Realizar la fotosíntesis", "Transportar agua y nutrientes", "Producir energía para la célula", "Eliminar desechos"], "respuestas_correctas": ["Realizar la fotosíntesis"]}', null);

-- Preguntas para el test 2 de Biología
INSERT INTO preguntas (id_test, tipo_pregunta, nombre_pregunta, datos_pregunta, retroalimentacion) VALUES
(202, 1, '¿Cuál de las siguientes estructuras es parte del sistema respiratorio de las plantas?', '{"respuestas": ["Estoma", "Raíz", "Floema", "Corteza"], "respuestas_correctas": ["Estoma"]}', null),
(202, 1, '¿Cuál es el proceso de formación de nuevos individuos en las plantas?', '{"respuestas": ["Reproducción sexual y asexual", "Fotosíntesis", "Digestión", "Excreción"], "respuestas_correctas": ["Reproducción sexual y asexual"]}', null),
(202, 1, '¿Cuál es la función principal del sistema de defensa en las plantas?', '{"respuestas": ["Proteger contra patógenos y herbívoros", "Transportar agua y nutrientes", "Regular la temperatura corporal", "Producir energía para la célula"], "respuestas_correctas": ["Proteger contra patógenos y herbívoros"]}', null),
(202, 1, '¿Cuál es el proceso de conversión de la luz solar en energía en las plantas?', '{"respuestas": ["Fotosíntesis", "Respiración celular", "Digestión", "Excreción"], "respuestas_correctas": ["Fotosíntesis"]}', null),
(202, 1, '¿Cuál es la función principal del sistema de soporte en las plantas?', '{"respuestas": ["Proporcionar estructura y rigidez", "Transportar agua y nutrientes", "Realizar la fotosíntesis", "Eliminar desechos"], "respuestas_correctas": ["Proporcionar estructura y rigidez"]}', null),
(203, 1, '¿Cuál de las siguientes enzimas es responsable de la descomposición de los lípidos?', '{"respuestas": ["Lipasa", "Amilasa", "Pepsina", "Tripsina"], "respuestas_correctas": ["Lipasa"]}', null),
(203, 1, '¿Cuáles de las siguientes estructuras son parte del sistema esquelético humano?', '{"respuestas": ["Cráneo", "Hígado", "Pulmón", "Riñón"], "respuestas_correctas": ["Cráneo"]}', null),
(203, 1, '¿Cuál de los siguientes órganos es parte del sistema circulatorio?', '{"respuestas": ["Corazón", "Estómago", "Pulmón", "Hígado"], "respuestas_correctas": ["Corazón"]}', null),
(203, 1, '¿Cuáles de las siguientes son funciones del sistema endocrino?', '{"respuestas": ["Regular el equilibrio hormonal", "Procesar los alimentos", "Producir energía para la célula", "Eliminar desechos"], "respuestas_correctas": ["Regular el equilibrio hormonal"]}', null),
(202, 1, '¿Cuál de las siguientes estructuras es parte del sistema digestivo de las plantas?', '{"respuestas": ["Estoma", "Raíz", "Floema", "Corteza"], "respuestas_correctas": ["Floema"]}', null);

-- Preguntas para el test 3 de Biología
INSERT INTO preguntas (id_test, tipo_pregunta, nombre_pregunta, datos_pregunta, retroalimentacion) VALUES
(203, 1, '¿Cuáles de las siguientes son características de las células eucariotas?', '{"respuestas": ["Poseen núcleo definido", "No tienen membrana plasmática", "Son procariotas", "Carecen de orgánulos"], "respuestas_correctas": ["Poseen núcleo definido"]}', null),
(203, 1, '¿Cuáles de las siguientes son características de los mamíferos?', '{"respuestas": ["Tienen glándulas mamarias", "Son ovíparos", "Tienen escamas", "Poseen reproducción asexual"], "respuestas_correctas": ["Tienen glándulas mamarias"]}', null),
(203, 1, '¿Cuáles de las siguientes son funciones de los ribosomas?', '{"respuestas": ["Síntesis de proteínas", "Almacenamiento de agua", "Producción de energía", "Regulación del pH"], "respuestas_correctas": ["Síntesis de proteínas"]}', null),
(203, 1, '¿Cuáles de las siguientes son características de los ácidos nucleicos?', '{"respuestas": ["Formados por nucleótidos", "Transportan oxígeno en la sangre", "Almacenamiento de energía", "Producen hormonas"], "respuestas_correctas": ["Formados por nucleótidos"]}', null),
(203, 1, '¿Cuáles de las siguientes son funciones de las mitocondrias?', '{"respuestas": ["Producción de energía", "Regulación del pH", "Síntesis de proteínas", "Almacenamiento de agua"], "respuestas_correctas": ["Producción de energía"]}', null),
(203, 1, '¿Cuáles de las siguientes son características de los virus?', '{"respuestas": ["No están vivos", "Son células unicelulares", "Tienen membrana plasmática", "Realizan la fotosíntesis"], "respuestas_correctas": ["No están vivos"]}', null),
(203, 1, '¿Cuáles de las siguientes son funciones de los lisosomas?', '{"respuestas": ["Digestión de sustancias", "Transporte de oxígeno", "Regulación de la temperatura corporal", "Producen hormonas"], "respuestas_correctas": ["Digestión de sustancias"]}', null),
(203, 1, '¿Cuáles de los siguientes son órganos del sistema digestivo?', '{"respuestas": ["Estómago", "Pulmón", "Riñón", "Cerebro"], "respuestas_correctas": ["Estómago"]}', null),
(203, 1, '¿Cuáles de las siguientes son características de las células procariotas?', '{"respuestas": ["No tienen núcleo definido", "Son multicelulares", "Tienen membrana nuclear", "Realizan la fotosíntesis"], "respuestas_correctas": ["No tienen núcleo definido"]}', null),
(203, 1, '¿Cuáles de los siguientes son órganos del sistema respiratorio?', '{"respuestas": ["Pulmones", "Riñones", "Hígado", "Cerebro"], "respuestas_correctas": ["Pulmones"]}', null);

-- Preguntas para el test 4 de Biología
INSERT INTO preguntas (id_test, tipo_pregunta, nombre_pregunta, datos_pregunta, retroalimentacion) VALUES
(204, 1, '¿Cuáles de las siguientes son funciones de las enzimas?', '{"respuestas": ["Catalizar reacciones químicas", "Transportar oxígeno en la sangre", "Producir energía", "Regular el equilibrio hormonal"], "respuestas_correctas": ["Catalizar reacciones químicas"]}', null),
(204, 1, '¿Cuáles de las siguientes son características de los organismos autótrofos?', '{"respuestas": ["Son capaces de producir su propio alimento", "Dependen de la ingesta de otros organismos para obtener alimento", "Tienen células procariotas", "No necesitan energía"], "respuestas_correctas": ["Son capaces de producir su propio alimento"]}', null),
(204, 1, '¿Cuáles de los siguientes órganos son parte del sistema urinario?', '{"respuestas": ["Riñones", "Hígado", "Pulmones", "Estómago"], "respuestas_correctas": ["Riñones"]}', null),
(204, 1, '¿Cuáles de las siguientes son funciones del sistema cardiovascular?', '{"respuestas": ["Transporte de nutrientes y oxígeno", "Digestión de alimentos", "Producción de hormonas", "Regulación de la temperatura corporal"], "respuestas_correctas": ["Transporte de nutrientes y oxígeno"]}', null),
(204, 1, '¿Cuáles de las siguientes son funciones de los cromosomas?', '{"respuestas": ["Almacenar y transmitir información genética", "Regular el pH sanguíneo", "Producir insulina", "Controlar movimientos musculares"], "respuestas_correctas": ["Almacenar y transmitir información genética"]}', null),
(204, 1, '¿Cuáles de los siguientes son órganos del sistema nervioso central?', '{"respuestas": ["Cerebro", "Hígado", "Riñones", "Pulmones"], "respuestas_correctas": ["Cerebro"]}', null),
(204, 1, '¿Cuáles de las siguientes son funciones de los cloroplastos?', '{"respuestas": ["Realizar la fotosíntesis", "Regular el equilibrio hormonal", "Almacenar agua", "Producir energía"], "respuestas_correctas": ["Realizar la fotosíntesis"]}', null),
(204, 1, '¿Cuáles de las siguientes son funciones del sistema circulatorio?', '{"respuestas": ["Transporte de nutrientes y oxígeno", "Digestión de alimentos", "Producción de hormonas", "Regulación de la temperatura corporal"], "respuestas_correctas": ["Transporte de nutrientes y oxígeno"]}', null),
(204, 1, '¿Cuáles de las siguientes son características de los vertebrados?', '{"respuestas": ["Poseen columna vertebral", "Son unicelulares", "Tienen reproducción asexual", "No necesitan respirar"], "respuestas_correctas": ["Poseen columna vertebral"]}', null),
(204, 1, '¿Cuáles de las siguientes son funciones de los lisosomas?', '{"respuestas": ["Digestión celular", "Transporte de oxígeno", "Síntesis de proteínas", "Control de la temperatura corporal"], "respuestas_correctas": ["Digestión celular"]}', null);

-- Preguntas para el test 5 de Biología
INSERT INTO preguntas (id_test, tipo_pregunta, nombre_pregunta, datos_pregunta, retroalimentacion) VALUES
(205, 1, '¿Cuáles de los siguientes órganos son parte del sistema excretor?', '{"respuestas": ["Riñones", "Pulmones", "Estómago", "Cerebro"], "respuestas_correctas": ["Riñones"]}', null),
(205, 1, '¿Cuáles de las siguientes son características de las células eucariotas?', '{"respuestas": ["Poseen núcleo definido", "Son procariotas", "No tienen membrana plasmática", "Carecen de orgánulos"], "respuestas_correctas": ["Poseen núcleo definido"]}', null),
(205, 1, '¿Cuáles de las siguientes son funciones de los ribosomas?', '{"respuestas": ["Síntesis de proteínas", "Almacenamiento de agua", "Producción de energía", "Regulación del pH"], "respuestas_correctas": ["Síntesis de proteínas"]}', null),
(205, 1, '¿Cuáles de las siguientes son características de los ácidos nucleicos?', '{"respuestas": ["Formados por nucleótidos", "Transportan oxígeno en la sangre", "Almacenamiento de energía", "Producen hormonas"], "respuestas_correctas": ["Formados por nucleótidos"]}', null),
(205, 1, '¿Cuáles de las siguientes son funciones de las mitocondrias?', '{"respuestas": ["Producción de energía", "Regulación del pH", "Síntesis de proteínas", "Almacenamiento de agua"], "respuestas_correctas": ["Producción de energía"]}', null),
(205, 1, '¿Cuáles de las siguientes son características de los virus?', '{"respuestas": ["No están vivos", "Son células unicelulares", "Tienen membrana plasmática", "Realizan la fotosíntesis"], "respuestas_correctas": ["No están vivos"]}', null),
(205, 1, '¿Cuáles de los siguientes son órganos del sistema digestivo?', '{"respuestas": ["Estómago", "Pulmón", "Riñón", "Cerebro"], "respuestas_correctas": ["Estómago"]}', null),
(205, 1, '¿Cuáles de las siguientes son características de las células procariotas?', '{"respuestas": ["No tienen núcleo definido", "Son multicelulares", "Tienen membrana nuclear", "Realizan la fotosíntesis"], "respuestas_correctas": ["No tienen núcleo definido"]}', null),
(205, 1, '¿Cuáles de los siguientes son órganos del sistema respiratorio?', '{"respuestas": ["Pulmones", "Riñones", "Hígado", "Cerebro"], "respuestas_correctas": ["Pulmones"]}', null),
(205, 1, '¿Cuáles de las siguientes son funciones de las enzimas?', '{"respuestas": ["Catalizar reacciones químicas", "Transportar oxígeno en la sangre", "Producir energía", "Regular el equilibrio hormonal"], "respuestas_correctas": ["Catalizar reacciones químicas"]}', null);

-- Preguntas para el test 6 de Biología
INSERT INTO preguntas (id_test, tipo_pregunta, nombre_pregunta, datos_pregunta, retroalimentacion) VALUES
(206, 1, '¿Cuáles de las siguientes son características de los organismos autótrofos?', '{"respuestas": ["Son capaces de producir su propio alimento", "Dependen de la ingesta de otros organismos para obtener alimento", "Tienen células procariotas", "No necesitan energía"], "respuestas_correctas": ["Son capaces de producir su propio alimento"]}', null),
(206, 1, '¿Cuáles de los siguientes órganos son parte del sistema urinario?', '{"respuestas": ["Riñones", "Hígado", "Pulmones", "Estómago"], "respuestas_correctas": ["Riñones"]}', null),
(206, 1, '¿Cuáles de las siguientes son funciones del sistema cardiovascular?', '{"respuestas": ["Transporte de nutrientes y oxígeno", "Digestión de alimentos", "Producción de hormonas", "Regulación de la temperatura corporal"], "respuestas_correctas": ["Transporte de nutrientes y oxígeno"]}', null),
(206, 1, '¿Cuáles de las siguientes son funciones de los cromosomas?', '{"respuestas": ["Almacenar y transmitir información genética", "Regular el pH sanguíneo", "Producir insulina", "Controlar movimientos musculares"], "respuestas_correctas": ["Almacenar y transmitir información genética"]}', null),
(206, 1, '¿Cuáles de los siguientes son ejemplos de artrópodos?', '{"respuestas": ["Araña", "Ballena", "Rana", "Cocodrilo"], "respuestas_correctas": ["Araña"]}', null),
(206, 1, '¿Cuáles de los siguientes son órganos del sistema nervioso central?', '{"respuestas": ["Cerebro", "Hígado", "Riñones", "Pulmones"], "respuestas_correctas": ["Cerebro"]}', null),
(206, 1, '¿Cuáles de las siguientes son características de las plantas gimnospermas?', '{"respuestas": ["Producen semillas desnudas", "Tienen flores y frutos", "Poseen raíces aéreas", "Se reproducen por esporas"], "respuestas_correctas": ["Producen semillas desnudas"]}', null),
(206, 1, '¿Cuáles de las siguientes características son comunes en los mamíferos?', '{"respuestas": ["Tienen glándulas mamarias", "Son ovíparos", "Poseen escamas", "Respiran a través de branquias"], "respuestas_correctas": ["Tienen glándulas mamarias"]}', null),
(206, 1, '¿Cuáles de los siguientes son ejemplos de aves?', '{"respuestas": ["Águila", "Tiburón", "Serpiente", "Tortuga"], "respuestas_correctas": ["Águila"]}', null),
(206, 1, '¿Cuáles de los siguientes son ejemplos de moluscos?', '{"respuestas": ["Caracol", "Conejo", "Serpiente", "Ave"], "respuestas_correctas": ["Caracol"]}', null);

/***********************************************************************************************************/
/***********************************************************************************************************/

-- Datos para la tabla PREGUNTAS de la MATERIA "Biología" para el tipo de pregunta 2 múltiples respuestas

/***********************************************************************************************************/
/***********************************************************************************************************/

-- Preguntas para el test 7 de Biología
INSERT INTO preguntas (id_test, tipo_pregunta, nombre_pregunta, datos_pregunta, retroalimentacion) VALUES
(207, 2, '¿Cuáles son los principales tipos de tejido en las plantas?', '{"respuestas": ["Tejido meristemático", "Tejido dérmico", "Tejido vascular", "Tejido fundamental"], "respuestas_correctas": ["Tejido meristemático", "Tejido dérmico", "Tejido vascular"]}', null),
(207, 2, '¿Cuáles de las siguientes son funciones del sistema respiratorio humano?', '{"respuestas": ["Intercambio de gases", "Regulación del pH sanguíneo", "Procesamiento de nutrientes", "Protección contra infecciones"], "respuestas_correctas": ["Intercambio de gases", "Regulación del pH sanguíneo"]}', null),
(207, 2, '¿Cuáles son los cuatro tipos principales de tejido en los organismos animales?', '{"respuestas": ["Tejido epitelial", "Tejido conectivo", "Tejido muscular", "Tejido nervioso"], "respuestas_correctas": ["Tejido epitelial", "Tejido conectivo", "Tejido muscular", "Tejido nervioso"]}', null),
(207, 2, '¿Cuáles de las siguientes son características de la replicación del ADN?', '{"respuestas": ["Proceso semiconservativo", "Ocurre en el núcleo celular", "Formación de ARN mensajero", "Producción de proteínas"], "respuestas_correctas": ["Proceso semiconservativo", "Ocurre en el núcleo celular"]}', null),
(207, 2, '¿Cuáles de las siguientes son funciones del sistema linfático?', '{"respuestas": ["Transporte de fluidos y nutrientes", "Producción de células sanguíneas", "Digestión de alimentos", "Regulación del equilibrio hormonal"], "respuestas_correctas": ["Transporte de fluidos y nutrientes", "Producción de células sanguíneas"]}', null),
(207, 2, '¿Cuál es la función principal del aparato circulatorio?', '{"respuestas": ["Transportar oxígeno y nutrientes", "Eliminar desechos metabólicos", "Regular la temperatura corporal", "Defender el organismo de patógenos"], "respuestas_correctas": ["Transportar oxígeno y nutrientes", "Eliminar desechos metabólicos"]}', null),
(207, 2, '¿Cuáles de las siguientes son funciones del sistema nervioso?', '{"respuestas": ["Transmitir impulsos eléctricos", "Controlar movimientos musculares", "Regular el equilibrio hormonal", "Producir glóbulos rojos"], "respuestas_correctas": ["Transmitir impulsos eléctricos", "Controlar movimientos musculares"]}', null),
(207, 2, '¿Cuáles de las siguientes son características de los seres vivos?', '{"respuestas": ["Crecimiento y reproducción", "Conductividad eléctrica", "Movimiento espontáneo", "Generación de energía luminosa"], "respuestas_correctas": ["Crecimiento y reproducción", "Movimiento espontáneo"]}', null),
(207, 2, '¿Cuáles de las siguientes son funciones de los riñones?', '{"respuestas": ["Filtrar y eliminar desechos", "Producir hormonas", "Regular la temperatura corporal", "Procesar los alimentos"], "respuestas_correctas": ["Filtrar y eliminar desechos", "Producir hormonas"]}', null),
(207, 2, '¿Cuáles de las siguientes son funciones del sistema endocrino?', '{"respuestas": ["Regulación del crecimiento y desarrollo", "Control de la temperatura corporal", "Producción y liberación de hormonas", "Transporte de oxígeno"], "respuestas_correctas": ["Regulación del crecimiento y desarrollo", "Producción y liberación de hormonas"]}', null);


-- Preguntas para el test 8 de Biología
INSERT INTO preguntas (id_test, tipo_pregunta, nombre_pregunta, datos_pregunta, retroalimentacion) VALUES
(208, 2, '¿Cuáles de las siguientes son características de los seres vivos?', '{"respuestas": ["Crecimiento y reproducción", "Movimiento espontáneo", "Carencia de células", "Procesamiento de información"], "respuestas_correctas": ["Crecimiento y reproducción", "Movimiento espontáneo"]}', null),
(208, 2, '¿Cuáles de las siguientes son funciones de la membrana celular?', '{"respuestas": ["Controlar el paso de sustancias hacia el interior de la célula", "Brindar soporte estructural a la célula", "Participar en la síntesis de proteínas", "Almacenar información genética"], "respuestas_correctas": ["Controlar el paso de sustancias hacia el interior de la célula", "Brindar soporte estructural a la célula"]}', null),
(208, 2, '¿Cuáles de las siguientes son características de los seres vivos?', '{"respuestas": ["Reproducción", "Capacidad de movimiento", "Estructura celular compleja", "Generación de energía luminosa"], "respuestas_correctas": ["Reproducción", "Capacidad de movimiento"]}', null),
(208, 2, '¿Cuáles de las siguientes son funciones del sistema linfático?', '{"respuestas": ["Transporte de fluidos y nutrientes", "Producción de células sanguíneas", "Digestión de alimentos", "Regulación del equilibrio hormonal"], "respuestas_correctas": ["Transporte de fluidos y nutrientes", "Producción de células sanguíneas"]}', null),
(208, 2, '¿Cuáles de las siguientes son funciones del sistema excretor?', '{"respuestas": ["Eliminación de desechos metabólicos", "Transporte de oxígeno", "Regulación del pH", "Producción de hormonas"], "respuestas_correctas": ["Eliminación de desechos metabólicos", "Regulación del pH"]}', null),
(208, 2, '¿Cuáles de las siguientes son características de la replicación del ADN?', '{"respuestas": ["Proceso semiconservativo", "Ocurre en el núcleo celular", "Formación de ARN mensajero", "Producción de proteínas"], "respuestas_correctas": ["Proceso semiconservativo", "Ocurre en el núcleo celular"]}', null),
(208, 2, '¿Cuáles de las siguientes son funciones del sistema nervioso?', '{"respuestas": ["Recepción y transmisión de estímulos", "Producción de energía", "Regulación de la temperatura corporal", "Digestión de alimentos"], "respuestas_correctas": ["Recepción y transmisión de estímulos", "Regulación de la temperatura corporal"]}', null),
(208, 2, '¿Cuáles de las siguientes son características de los seres vivos?', '{"respuestas": ["Crecimiento y reproducción", "Movimiento espontáneo", "Carencia de células", "Procesamiento de información"], "respuestas_correctas": ["Crecimiento y reproducción", "Movimiento espontáneo"]}', null),
(208, 2, '¿Cuáles de las siguientes son funciones del sistema endocrino?', '{"respuestas": ["Regulación del crecimiento y desarrollo", "Control de la temperatura corporal", "Producción y liberación de hormonas", "Transporte de oxígeno"], "respuestas_correctas": ["Regulación del crecimiento y desarrollo", "Producción y liberación de hormonas"]}', null),
(208, 2, '¿Cuáles de las siguientes son características de los reptiles?', '{"respuestas": ["Tienen escamas", "Son vivíparos", "Poseen plumas", "Respiran a través de pulmones"], "respuestas_correctas": ["Tienen escamas", "Respiran a través de pulmones"]}', null);

-- Preguntas para el test 9 de Biología
INSERT INTO preguntas (id_test, tipo_pregunta, nombre_pregunta, datos_pregunta, retroalimentacion) VALUES
(209, 2, '¿Cuáles de las siguientes son características de los anfibios?', '{"respuestas": ["Tienen piel húmeda y permeable", "Son ovíparos", "Tienen plumas", "Respiran a través de branquias"], "respuestas_correctas": ["Tienen piel húmeda y permeable", "Son ovíparos"]}', null),
(209, 2, '¿Cuáles de las siguientes son características de los peces?', '{"respuestas": ["Tienen escamas", "Son ovíparos", "Poseen plumas", "Respiran a través de branquias"], "respuestas_correctas": ["Tienen escamas", "Respiran a través de branquias"]}', null),
(209, 2, '¿Cuáles de las siguientes características son comunes en las plantas angiospermas?', '{"respuestas": ["Tienen flores y frutos", "Son gimnospermas", "Tienen tejidos vasculares", "Se reproducen por esporas"], "respuestas_correctas": ["Tienen flores y frutos", "Tienen tejidos vasculares"]}', null),
(209, 2, '¿Cuáles de los siguientes animales son de la sabana africana?', '{"respuestas": ["León", "Gacela", "Tiburón", "Pingüino"], "respuestas_correctas": ["León", "Gacela"]}', null),
(209, 2, '¿Cuáles de los siguientes son mamíferos acuáticos?', '{"respuestas": ["Ballena", "Delfín", "Águila", "Cobra"], "respuestas_correctas": ["Ballena", "Delfín"]}', null),
(209, 2, '¿Cuáles de los siguientes árboles son de hoja caduca?', '{"respuestas": ["Roble", "Arce", "Cerezo", "Pino"], "respuestas_correctas": ["Roble", "Arce", "Cerezo"]}', null),
(209, 2, '¿Cuáles de los siguientes animales son de la selva amazónica?', '{"respuestas": ["Jaguar", "Loro", "Elefante", "Rinoceronte"], "respuestas_correctas": ["Jaguar", "Loro"]}', null),
(209, 2, '¿Cuáles de los siguientes animales son marinos?', '{"respuestas": ["Tiburón", "Delfín", "León", "Gacela"], "respuestas_correctas": ["Tiburón", "Delfín"]}', null),
(209, 2, '¿Cuáles de los siguientes son órganos del sistema excretor?', '{"respuestas": ["Riñón", "Pulmón", "Hígado", "Intestino"], "respuestas_correctas": ["Riñón", "Hígado"]}', null),
(209, 2, '¿Cuáles de los siguientes son ejemplos de simbiosis?', '{"respuestas": ["Liquen", "Musgo", "Cactus", "Pino"], "respuestas_correctas": ["Liquen", "Musgo"]}', null);

-- Preguntas para el test 10 de Biología
INSERT INTO preguntas (id_test, tipo_pregunta, nombre_pregunta, datos_pregunta, retroalimentacion) VALUES
(210, 2, '¿Cuáles de los siguientes animales son vertebrados?', '{"respuestas": ["Perro", "Abeja", "Serpiente", "Gusano"], "respuestas_correctas": ["Perro", "Serpiente"]}', null),
(210, 2, '¿Cuáles de los siguientes son órganos del sistema digestivo?', '{"respuestas": ["Estómago", "Cerebro", "Riñón", "Hígado"], "respuestas_correctas": ["Estómago", "Hígado"]}', null),
(210, 2, '¿Cuáles de las siguientes plantas son angiospermas?', '{"respuestas": ["Rosa", "Pino", "Lirio", "Helecho"], "respuestas_correctas": ["Rosa", "Lirio"]}', null),
(210, 2, '¿Cuáles de los siguientes son componentes de la célula animal?', '{"respuestas": ["Núcleo", "Cloroplasto", "Mitocondria", "Pared Celular"], "respuestas_correctas": ["Núcleo", "Mitocondria"]}', null),
(210, 2, '¿Cuáles de los siguientes son procesos de reproducción asexual?', '{"respuestas": ["Brotación", "Fecundación", "Fragmentación", "Meiosis"], "respuestas_correctas": ["Brotación", "Fragmentación"]}', null),
(210, 2, '¿Cuáles de las siguientes especies son venenosas?', '{"respuestas": ["Cobra", "Tigre", "Delfín", "Lobo"], "respuestas_correctas": ["Cobra", "Tigre"]}', null),
(210, 2, '¿Cuáles de los siguientes son ejemplos de mutualismo?', '{"respuestas": ["Abeja y Flor", "León y Gacela", "Cobra y Ratón", "Lobo y Conejo"], "respuestas_correctas": ["Abeja y Flor", "Cobra y Ratón"]}', null),
(210, 2, '¿Cuáles de los siguientes son órganos del sistema respiratorio?', '{"respuestas": ["Pulmón", "Corazón", "Hígado", "Estómago"], "respuestas_correctas": ["Pulmón", "Corazón"]}', null),
(210, 2, '¿Cuáles de las siguientes son etapas de la mitosis?', '{"respuestas": ["Profase", "Anafase", "Interfase", "Metafase"], "respuestas_correctas": ["Profase", "Anafase", "Metafase"]}', null),
(210, 2, '¿Cuáles de los siguientes son ejemplos de animales invertebrados?', '{"respuestas": ["Araña", "Pez", "Rana", "Gato"], "respuestas_correctas": ["Araña", "Rana"]}', null);

-- Renumera el id de PREGUNTAS
SET foreign_key_checks = 0;

SET @newid := 0;
UPDATE preguntas SET id = (@newid := @newid + 1) ORDER BY id;

SET foreign_key_checks = 1;