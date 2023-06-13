-- Datos para la tabla TESTS para los test de Educación Física del tipo tipo de pregunta 1 respuesta única
INSERT INTO tests (id_materia, nombre_test, descripcion, id_usuario_creador) VALUES
(9, 'Educación Física 01', 'Test 01 sobre la materia de Educación Física de respuesta única.', 1),
(9, 'Educación Física 02', 'Test 02 sobre la materia de Educación Física de respuesta única.', 1),
(9, 'Educación Física 03', 'Test 03 sobre la materia de Educación Física de respuesta única.', 1),
(9, 'Educación Física 04', 'Test 04 sobre la materia de Educación Física de respuesta única.', 1),
(9, 'Educación Física 05', 'Test 05 sobre la materia de Educación Física de respuesta única.', 1),
(9, 'Educación Física 06', 'Test 06 sobre la materia de Educación Física de respuesta única.', 1),

-- Datos para la tabla TESTS para los test de Educación Física del tipo tipo de pregunta 2 multiples respuestas
(9, 'Educación Física 07', 'Test 07 sobre la materia de Educación Física de respuesta única.', 1),
(9, 'Educación Física 08', 'Test 08 sobre la materia de Educación Física de respuesta única.', 1),
(9, 'Educación Física 09', 'Test 09 sobre la materia de Educación Física de respuesta única.', 1),
(9, 'Educación Física 10', 'Test 10 sobre la materia de Educación Física de respuesta única.', 1);

SET foreign_key_checks = 0;

SET @newid := 0;
UPDATE tests SET id = (@newid := @newid + 1) ORDER BY id;

SET foreign_key_checks = 1;

-- Datos para la tabla PREGUNTAS de la MATERIA "Educación Física" para el tipo de pregunta 1 respuesta única

-- Preguntas para el test 1 de Educación Física
INSERT INTO preguntas (id_test, tipo_pregunta, nombre_pregunta, datos_pregunta, retroalimentacion) VALUES
(221, 1, '¿Cuál es la función principal del sistema cardiovascular?', '{"respuestas": ["Transportar oxígeno y nutrientes a las células del cuerpo", "Regular la temperatura corporal", "Eliminar desechos del organismo", "Producir hormonas"], "respuesta_correcta": "Transportar oxígeno y nutrientes a las células del cuerpo"}', null),
(221, 1, '¿Cuál es la capacidad pulmonar total de una persona?', '{"respuestas": ["Aproximadamente 6 litros", "Aproximadamente 2 litros", "Aproximadamente 10 litros", "Aproximadamente 4 litros"], "respuesta_correcta": "Aproximadamente 6 litros"}', null),
(221, 1, '¿Cuál es el principal mineral necesario para la contracción muscular?', '{"respuestas": ["Calcio", "Hierro", "Potasio", "Magnesio"], "respuesta_correcta": "Calcio"}', null),
(221, 1, '¿Qué músculo es responsable de la respiración?', '{"respuestas": ["Diafragma", "Bíceps", "Tríceps", "Pectoral mayor"], "respuesta_correcta": "Diafragma"}', null),
(221, 1, '¿Qué es la flexibilidad en el contexto del ejercicio físico?', '{"respuestas": ["La capacidad de mover las articulaciones a través de su rango completo de movimiento", "La fuerza máxima que un músculo o grupo muscular puede generar", "La capacidad de mantener una contracción muscular durante un período de tiempo", "La capacidad de realizar actividades físicas de manera continua sin fatiga"], "respuesta_correcta": "La capacidad de mover las articulaciones a través de su rango completo de movimiento"}', null),
(221, 1, '¿Cuál es la fórmula para calcular el índice de masa corporal (IMC)?', '{"respuestas": ["IMC = peso (kg) / altura^2 (m^2)", "IMC = peso (kg) * altura (cm)", "IMC = peso (lb) / altura^2 (in^2)", "IMC = peso (lb) * altura (in)"], "respuesta_correcta": "IMC = peso (kg) / altura^2 (m^2)"}', null),
(221, 1, '¿Cuál es el componente principal de los huesos?', '{"respuestas": ["Calcio", "Hierro", "Potasio", "Magnesio"], "respuesta_correcta": "Calcio"}', null),
(221, 1, '¿Qué es la resistencia muscular en el contexto del ejercicio físico?', '{"respuestas": ["La capacidad de un músculo o grupo muscular para realizar contracciones repetidas durante un período de tiempo", "La fuerza máxima que un músculo o grupo muscular puede generar", "La capacidad de mover las articulaciones a través de su rango completo de movimiento", "La capacidad de realizar actividades físicas de manera continua sin fatiga"], "respuesta_correcta": "La capacidad de un músculo o grupo muscular para realizar contracciones repetidas durante un período de tiempo"}', null),
(221, 1, '¿Cuál es el objetivo principal del calentamiento previo al ejercicio?', '{"respuestas": ["Preparar el cuerpo para el ejercicio físico intenso", "Aumentar la frecuencia cardíaca", "Mejorar la flexibilidad muscular", "Reducir el riesgo de lesiones"], "respuesta_correcta": "Preparar el cuerpo para el ejercicio físico intenso"}', null),
(221, 1, '¿Cuál es la frecuencia cardíaca objetivo durante el ejercicio cardiovascular para mejorar la condición física?', '{"respuestas": ["65-85% de la frecuencia cardíaca máxima", "40-60% de la frecuencia cardíaca máxima", "90-100% de la frecuencia cardíaca máxima", "30-40% de la frecuencia cardíaca máxima"], "respuesta_correcta": "65-85% de la frecuencia cardíaca máxima"}', null);

-- Preguntas para el test 2 de Educación Física
INSERT INTO preguntas (id_test, tipo_pregunta, nombre_pregunta, datos_pregunta, retroalimentacion) VALUES
(222, 1, '¿Qué es la flexibilidad en el contexto del ejercicio físico?', '{"respuestas": ["La capacidad de mover las articulaciones a través de su rango completo de movimiento", "La fuerza máxima que un músculo o grupo muscular puede generar", "La capacidad de mantener una contracción muscular durante un período de tiempo", "La capacidad de realizar actividades físicas de manera continua sin fatiga"], "respuesta_correcta": "La capacidad de mover las articulaciones a través de su rango completo de movimiento"}', null),
(222, 1, '¿Cuál es la fórmula para calcular la frecuencia cardíaca máxima?', '{"respuestas": ["FCM = 220 - edad", "FCM = peso (kg) / altura (m)", "FCM = peso (lb) / altura (in)", "FCM = altura (cm) - edad"], "respuesta_correcta": "FCM = 220 - edad"}', null),
(222, 1, '¿Cuál es el componente principal de los músculos?', '{"respuestas": ["Proteínas", "Carbohidratos", "Vitaminas", "Minerales"], "respuesta_correcta": "Proteínas"}', null),
(222, 1, '¿Qué es la fuerza muscular en el contexto del ejercicio físico?', '{"respuestas": ["La capacidad de un músculo o grupo muscular para generar tensión y vencer resistencia", "La capacidad de mover las articulaciones a través de su rango completo de movimiento", "La capacidad de mantener una contracción muscular durante un período de tiempo", "La capacidad de realizar actividades físicas de manera continua sin fatiga"], "respuesta_correcta": "La capacidad de un músculo o grupo muscular para generar tensión y vencer resistencia"}', null),
(222, 1, '¿Cuál es la unidad de medida de la intensidad del ejercicio?', '{"respuestas": ["MET (equivalente metabólico)", "Vatio", "Kilocaloría", "Kilogramo"], "respuesta_correcta": "MET (equivalente metabólico)"}', null),
(222, 1, '¿Cuál es la fórmula para calcular la frecuencia cardíaca?', '{"respuestas": ["Frecuencia cardíaca = Número de pulsaciones / Tiempo", "Frecuencia cardíaca = Peso / Altura", "Frecuencia cardíaca = Distancia / Tiempo", "Frecuencia cardíaca = Volumen / Superficie"], "respuesta_correcta": "Frecuencia cardíaca = Número de pulsaciones / Tiempo"}', null),
(222, 1, '¿Cuál es la capacidad máxima de almacenamiento de oxígeno en los músculos?', '{"respuestas": ["Aproximadamente 200-300 ml/kg de músculo", "Aproximadamente 100-200 ml/kg de músculo", "Aproximadamente 500-600 ml/kg de músculo", "Aproximadamente 400-500 ml/kg de músculo"], "respuesta_correcta": "Aproximadamente 200-300 ml/kg de músculo"}', null),
(222, 1, '¿Cuál es la fórmula para calcular la frecuencia respiratoria?', '{"respuestas": ["Frecuencia respiratoria = Número de respiraciones / Tiempo", "Frecuencia respiratoria = Peso / Altura", "Frecuencia respiratoria = Distancia / Tiempo", "Frecuencia respiratoria = Volumen / Superficie"], "respuesta_correcta": "Frecuencia respiratoria = Número de respiraciones / Tiempo"}', null),
(222, 1, '¿Cuál es la unidad de medida de la potencia?', '{"respuestas": ["Vatio", "Joule", "Newton", "Amperio"], "respuesta_correcta": "Vatio"}', null),
(222, 1, '¿Cuál es el músculo principal responsable de la flexión del brazo en el antebrazo?', '{"respuestas": ["Bíceps braquial", "Tríceps braquial", "Deltoides", "Pectoral mayor"], "respuesta_correcta": "Bíceps braquial"}', null);

-- Preguntas para el test 3 de Educación Física
INSERT INTO preguntas (id_test, tipo_pregunta, nombre_pregunta, datos_pregunta, retroalimentacion) VALUES
(223, 1, '¿Cuál es el componente principal de la sangre?', '{"respuestas": ["Plasma", "Glóbulos rojos", "Glóbulos blancos", "Plaquetas"], "respuesta_correcta": "Plasma"}', null),
(223, 1, '¿Cuál es la función principal del sistema respiratorio?', '{"respuestas": ["Tomar oxígeno y eliminar dióxido de carbono", "Transportar oxígeno y nutrientes a las células del cuerpo", "Regular la temperatura corporal", "Eliminar desechos del organismo"], "respuesta_correcta": "Tomar oxígeno y eliminar dióxido de carbono"}', null),
(223, 1, '¿Cuál es la unidad de medida de la fuerza?', '{"respuestas": ["Newton", "Joule", "Kilogramo", "Metro"], "respuesta_correcta": "Newton"}', null),
(223, 1, '¿Cuál es la fórmula para calcular el índice de masa corporal (IMC)?', '{"respuestas": ["IMC = peso (kg) / altura^2 (m^2)", "IMC = peso (kg) * altura (cm)", "IMC = peso (lb) / altura^2 (in^2)", "IMC = peso (lb) * altura (in)"], "respuesta_correcta": "IMC = peso (kg) / altura^2 (m^2)"}', null),
(223, 1, '¿Cuál es la función principal del sistema esquelético?', '{"respuestas": ["Proporcionar soporte y protección al cuerpo", "Transportar oxígeno y nutrientes a las células del cuerpo", "Regular la temperatura corporal", "Eliminar desechos del organismo"], "respuesta_correcta": "Proporcionar soporte y protección al cuerpo"}', null),
(223, 1, '¿Cuál es la unidad de medida de la energía?', '{"respuestas": ["Joule", "Caloría", "Vatio", "Amperio"], "respuesta_correcta": "Joule"}', null),
(223, 1, '¿Cuál es la fórmula para calcular el ritmo cardíaco máximo teórico?', '{"respuestas": ["220 - edad", "180 - edad", "200 - edad", "210 - edad"], "respuesta_correcta": "220 - edad"}', null),
(223, 1, '¿Cuál es la capacidad pulmonar total de una persona?', '{"respuestas": ["Aproximadamente 6 litros", "Aproximadamente 2 litros", "Aproximadamente 10 litros", "Aproximadamente 4 litros"], "respuesta_correcta": "Aproximadamente 6 litros"}', null),
(223, 1, '¿Cuál es el principal mineral necesario para la contracción muscular?', '{"respuestas": ["Calcio", "Hierro", "Potasio", "Magnesio"], "respuesta_correcta": "Calcio"}', null),
(223, 1, '¿Qué músculo es responsable de la respiración?', '{"respuestas": ["Diafragma", "Bíceps", "Tríceps", "Pectoral mayor"], "respuesta_correcta": "Diafragma"}', null);

-- Preguntas para el test 4 de Educación Física
INSERT INTO preguntas (id_test, tipo_pregunta, nombre_pregunta, datos_pregunta, retroalimentacion) VALUES
(224, 1, '¿Cuál es la función principal del sistema cardiovascular?', '{"respuestas": ["Transportar oxígeno y nutrientes a todas las células del cuerpo", "Regular la temperatura corporal", "Eliminar desechos del organismo", "Proporcionar soporte y protección al cuerpo"], "respuesta_correcta": "Transportar oxígeno y nutrientes a todas las células del cuerpo"}', null),
(224, 1, '¿Cuál es la unidad de medida de la velocidad?', '{"respuestas": ["Metro por segundo", "Kilómetro por hora", "Segundo por metro", "Hora por kilómetro"], "respuesta_correcta": "Metro por segundo"}', null),
(224, 1, '¿Cuál es la fórmula para calcular el índice de masa corporal (IMC)?', '{"respuestas": ["IMC = Peso (kg) / (Altura (m) * Altura (m))", "IMC = Peso (kg) * Altura (m) * Altura (m)", "IMC = Peso (kg) / Altura (m)", "IMC = Peso (kg) * Altura (m)"], "respuesta_correcta": "IMC = Peso (kg) / (Altura (m) * Altura (m))"}', null),
(224, 1, '¿Cuál es la unidad de medida de la presión arterial?', '{"respuestas": ["Milímetros de mercurio (mmHg)", "Pulsaciones por minuto (ppm)", "Kilogramos (kg)", "Litros (L)"], "respuesta_correcta": "Milímetros de mercurio (mmHg)"}', null),
(224, 1, '¿Cuál es el principal componente del sistema óseo?', '{"respuestas": ["Huesos", "Músculos", "Nervios", "Órganos"], "respuesta_correcta": "Huesos"}', null),
(224, 1, '¿Cuál es la fórmula para calcular la fuerza muscular?', '{"respuestas": ["Fuerza muscular = Peso levantado / Número de repeticiones", "Fuerza muscular = Peso levantado * Número de repeticiones", "Fuerza muscular = Peso levantado - Número de repeticiones", "Fuerza muscular = Peso levantado + Número de repeticiones"], "respuesta_correcta": "Fuerza muscular = Peso levantado / Número de repeticiones"}', null),
(224, 1, '¿Cuál es la unidad de medida del tiempo?', '{"respuestas": ["Segundo", "Metro", "Kilogramo", "Litro"], "respuesta_correcta": "Segundo"}', null),
(224, 1, '¿Cuál es el músculo principal responsable de la extensión del antebrazo?', '{"respuestas": ["Tríceps braquial", "Bíceps braquial", "Deltoides", "Pectoral mayor"], "respuesta_correcta": "Tríceps braquial"}', null),
(224, 1, '¿Cuál es la fórmula para calcular la resistencia muscular?', '{"respuestas": ["Resistencia muscular = Peso levantado / Tiempo", "Resistencia muscular = Peso levantado * Tiempo", "Resistencia muscular = Peso levantado - Tiempo", "Resistencia muscular = Peso levantado + Tiempo"], "respuesta_correcta": "Resistencia muscular = Peso levantado / Tiempo"}', null),
(224, 1, '¿Cuál es la unidad de medida del ritmo cardíaco?', '{"respuestas": ["Pulsaciones por minuto (ppm)", "Milímetros de mercurio (mmHg)", "Kilogramos (kg)", "Litros (L)"], "respuesta_correcta": "Pulsaciones por minuto (ppm)"}', null);

-- Preguntas para el test 5 de Educación Física
INSERT INTO preguntas (id_test, tipo_pregunta, nombre_pregunta, datos_pregunta, retroalimentacion) VALUES
(225, 1, '¿Cuál es el componente principal del sistema aeróbico?', '{"respuestas": ["Oxígeno", "Dióxido de carbono", "Glucosa", "Lactato"], "respuesta_correcta": "Oxígeno"}', null),
(225, 1, '¿Cuál es la fórmula para calcular la potencia aeróbica?', '{"respuestas": ["Potencia aeróbica = Trabajo realizado / Tiempo", "Potencia aeróbica = Fuerza aplicada * Distancia recorrida", "Potencia aeróbica = Masa * Aceleración", "Potencia aeróbica = Energía cinética + Energía potencial"], "respuesta_correcta": "Potencia aeróbica = Trabajo realizado / Tiempo"}', null),
(225, 1, '¿Cuál es la unidad de medida de la capacidad aeróbica?', '{"respuestas": ["Litros de oxígeno por minuto (L/min)", "Pulsaciones por minuto (ppm)", "Segundos por metro (s/m)", "Kilogramos (kg)"], "respuesta_correcta": "Litros de oxígeno por minuto (L/min)"}', null),
(225, 1, '¿Cuál es el músculo principal responsable de la rotación interna del hombro?', '{"respuestas": ["Subescapular", "Supraespinoso", "Redondo mayor", "Pectoral mayor"], "respuesta_correcta": "Subescapular"}', null),
(225, 1, '¿Cuál es la fórmula para calcular la aceleración media?', '{"respuestas": ["Aceleración media = (Velocidad final - Velocidad inicial) / Tiempo", "Aceleración media = Fuerza / Masa", "Aceleración media = Trabajo realizado / Tiempo", "Aceleración media = Distancia / Tiempo"], "respuesta_correcta": "Aceleración media = (Velocidad final - Velocidad inicial) / Tiempo"}', null),
(225, 1, '¿Cuál es la unidad de medida del consumo de oxígeno?', '{"respuestas": ["Mililitros de oxígeno por kilogramo de peso corporal por minuto (ml/kg/min)", "Pulsaciones por minuto (ppm)", "Segundos por metro (s/m)", "Kilogramos (kg)"], "respuesta_correcta": "Mililitros de oxígeno por kilogramo de peso corporal por minuto (ml/kg/min)"}', null),
(225, 1, '¿Cuál es la fórmula para calcular el equilibrio estático?', '{"respuestas": ["Equilibrio estático = Centro de gravedad / Base de sustentación", "Equilibrio estático = Fuerza aplicada * Distancia recorrida", "Equilibrio estático = Masa * Aceleración", "Equilibrio estático = Energía cinética + Energía potencial"], "respuesta_correcta": "Equilibrio estático = Centro de gravedad / Base de sustentación"}', null),
(225, 1, '¿Cuál es la fórmula para calcular la frecuencia cardíaca máxima teórica?', '{"respuestas": ["Frecuencia cardíaca máxima teórica = 220 - Edad", "Frecuencia cardíaca máxima teórica = Peso (kg) * Altura (cm)", "Frecuencia cardíaca máxima teórica = Distancia / Tiempo", "Frecuencia cardíaca máxima teórica = Volumen / Superficie"], "respuesta_correcta": "Frecuencia cardíaca máxima teórica = 220 - Edad"}', null),
(225, 1, '¿Cuál es la unidad de medida de la resistencia aeróbica?', '{"respuestas": ["Minutos", "Segundos", "Kilómetros", "Pulsaciones por minuto (ppm)"], "respuesta_correcta": "Minutos"}', null),
(225, 1, '¿Cuál es el principal componente del sistema anaeróbico aláctico?', '{"respuestas": ["ATP", "Glucosa", "Dióxido de carbono", "Ácido láctico"], "respuesta_correcta": "ATP"}', null);

-- Preguntas para el test 6 de Educación Física
INSERT INTO preguntas (id_test, tipo_pregunta, nombre_pregunta, datos_pregunta, retroalimentacion) VALUES
(226, 1, '¿Cuál es la fórmula para calcular la fuerza explosiva?', '{"respuestas": ["Fuerza explosiva = Peso levantado * Velocidad", "Fuerza explosiva = Peso levantado / Velocidad", "Fuerza explosiva = Peso levantado + Velocidad", "Fuerza explosiva = Peso levantado - Velocidad"], "respuesta_correcta": "Fuerza explosiva = Peso levantado * Velocidad"}', null),
(226, 1, '¿Cuál es la unidad de medida de la agilidad?', '{"respuestas": ["Segundos", "Centímetros", "Kilogramos", "Repeticiones"], "respuesta_correcta": "Segundos"}', null),
(226, 1, '¿Cuál es el músculo principal responsable de la extensión plantar del pie?', '{"respuestas": ["Gastrocnemio", "Sóleo", "Tibial anterior", "Bíceps femoral"], "respuesta_correcta": "Gastrocnemio"}', null),
(226, 1, '¿Cuál es la fórmula para calcular la potencia muscular?', '{"respuestas": ["Potencia muscular = Trabajo realizado / Tiempo", "Potencia muscular = Fuerza aplicada * Distancia recorrida", "Potencia muscular = Masa * Aceleración", "Potencia muscular = Energía cinética + Energía potencial"], "respuesta_correcta": "Potencia muscular = Trabajo realizado / Tiempo"}', null),
(226, 1, '¿Cuál es la fórmula para calcular la velocidad angular?', '{"respuestas": ["Velocidad angular = Ángulo recorrido / Tiempo", "Velocidad angular = Distancia recorrida / Tiempo", "Velocidad angular = Masa * Aceleración", "Velocidad angular = Fuerza / Masa"], "respuesta_correcta": "Velocidad angular = Ángulo recorrido / Tiempo"}', null),
(226, 1, '¿Cuál es la unidad de medida de la fuerza?', '{"respuestas": ["Newton (N)", "Joule (J)", "Vatio (W)", "Pascal (Pa)"], "respuesta_correcta": "Newton (N)"}', null),
(226, 1, '¿Cuál es el componente principal del sistema anaeróbico láctico?', '{"respuestas": ["Ácido láctico", "Oxígeno", "Glucosa", "Dióxido de carbono"], "respuesta_correcta": "Ácido láctico"}', null),
(226, 1, '¿Cuál es la fórmula para calcular el VO2 máximo?', '{"respuestas": ["VO2 máximo = Consumo máximo de oxígeno / Peso corporal", "VO2 máximo = Frecuencia cardíaca máxima / Consumo máximo de oxígeno", "VO2 máximo = Peso corporal / Consumo máximo de oxígeno", "VO2 máximo = Consumo máximo de oxígeno / Frecuencia cardíaca máxima"], "respuesta_correcta": "VO2 máximo = Consumo máximo de oxígeno / Peso corporal"}', null),
(226, 1, '¿Cuál es la unidad de medida del salto vertical?', '{"respuestas": ["Centímetros (cm)", "Segundos (s)", "Kilogramos (kg)", "Repeticiones"], "respuesta_correcta": "Centímetros (cm)"}', null),
(226, 1, '¿Cuál es el músculo principal responsable de la abducción del hombro?', '{"respuestas": ["Deltoides", "Pectoral mayor", "Bíceps braquial", "Tríceps braquial"], "respuesta_correcta": "Deltoides"}', null);

/***********************************************************************************************************/
/***********************************************************************************************************/

-- Datos para la tabla PREGUNTAS de la MATERIA "Educación Física" para el tipo de pregunta 2 multiples respuestas

/***********************************************************************************************************/
/***********************************************************************************************************/


-- Preguntas para el test 7 de Educación Física
INSERT INTO preguntas (id_test, tipo_pregunta, nombre_pregunta, datos_pregunta, retroalimentacion) VALUES
(227, 2, '¿Cuáles son las capacidades físicas básicas?', '{"respuestas": ["Fuerza", "Velocidad", "Equilibrio", "Coordinación"], "respuestas_correctas": ["Fuerza", "Velocidad"]}', null),
(227, 2, '¿Cuáles son los componentes de la aptitud física?', '{"respuestas": ["Fuerza muscular", "Flexibilidad", "Resistencia cardiorrespiratoria", "Inteligencia emocional"], "respuestas_correctas": ["Fuerza muscular", "Flexibilidad"]}', null),
(227, 2, '¿Cuáles son las funciones del sistema cardiovascular?', '{"respuestas": ["Transportar oxígeno y nutrientes", "Regular la temperatura corporal", "Eliminar desechos metabólicos", "Producir hormonas"], "respuestas_correctas": ["Transportar oxígeno y nutrientes", "Eliminar desechos metabólicos"]}', null),
(227, 2, '¿Cuáles son los principios del entrenamiento deportivo?', '{"respuestas": ["Individualidad", "Variedad", "Exceso", "Especificidad"], "respuestas_correctas": ["Individualidad", "Especificidad"]}', null),
(227, 2, '¿Cuáles son los componentes de la condición física?', '{"respuestas": ["Fuerza", "Flexibilidad", "Técnica", "Agilidad"], "respuestas_correctas": ["Fuerza", "Flexibilidad"]}', null),
(227, 2, '¿Cuáles son los tipos de resistencia muscular?', '{"respuestas": ["Resistencia aeróbica", "Resistencia anaeróbica", "Resistencia estática", "Resistencia dinámica"], "respuestas_correctas": ["Resistencia aeróbica", "Resistencia anaeróbica"]}', null),
(227, 2, '¿Cuáles son los beneficios del entrenamiento de fuerza?', '{"respuestas": ["Aumento de la masa muscular", "Disminución de la densidad ósea", "Mejora de la resistencia muscular", "Incremento del riesgo de lesiones"], "respuestas_correctas": ["Aumento de la masa muscular", "Mejora de la resistencia muscular"]}', null),
(227, 2, '¿Cuáles son los tipos de estiramientos?', '{"respuestas": ["Estiramientos estáticos", "Estiramientos dinámicos", "Estiramientos balísticos", "Estiramientos isométricos"], "respuestas_correctas": ["Estiramientos estáticos", "Estiramientos dinámicos"]}', null),
(227, 2, '¿Cuáles son los beneficios del ejercicio cardiovascular?', '{"respuestas": ["Mejora de la capacidad cardiorrespiratoria", "Reducción del estrés", "Aumento de la masa muscular", "Mejora de la flexibilidad"], "respuestas_correctas": ["Mejora de la capacidad cardiorrespiratoria", "Reducción del estrés"]}', null),
(227, 2, '¿Cuáles son los tipos de respiración durante el ejercicio?', '{"respuestas": ["Respiración abdominal", "Respiración torácica", "Respiración clavicular", "Respiración bucal"], "respuestas_correctas": ["Respiración abdominal", "Respiración torácica"]}', null);

-- Preguntas para el test 8 de Educación Física
INSERT INTO preguntas (id_test, tipo_pregunta, nombre_pregunta, datos_pregunta, retroalimentacion) VALUES
(228, 2, '¿Cuáles son las características del calentamiento?', '{"respuestas": ["Aumento de la temperatura corporal", "Mejora de la flexibilidad", "Disminución de la frecuencia cardíaca", "Relajación muscular"], "respuestas_correctas": ["Aumento de la temperatura corporal", "Mejora de la flexibilidad"]}', null),
(228, 2, '¿Cuáles son los tipos de fuerza muscular?', '{"respuestas": ["Fuerza máxima", "Fuerza explosiva", "Fuerza isométrica", "Fuerza estática"], "respuestas_correctas": ["Fuerza máxima", "Fuerza explosiva"]}', null),
(228, 2, '¿Cuáles son los beneficios del entrenamiento de resistencia?', '{"respuestas": ["Aumento de la resistencia muscular", "Mejora de la capacidad cardiorrespiratoria", "Incremento de la fuerza muscular", "Reducción del equilibrio"], "respuestas_correctas": ["Aumento de la resistencia muscular", "Mejora de la capacidad cardiorrespiratoria"]}', null),
(228, 2, '¿Cuáles son las etapas del entrenamiento deportivo?', '{"respuestas": ["Calentamiento, entrenamiento y enfriamiento", "Preparación, competición y recuperación", "Evaluación, planificación y ejecución", "Estiramiento, fuerza y resistencia"], "respuestas_correctas": ["Preparación, competición y recuperación", "Evaluación, planificación y ejecución"]}', null),
(228, 2, '¿Cuáles son los tipos de estiramientos?', '{"respuestas": ["Estiramientos estáticos", "Estiramientos dinámicos", "Estiramientos balísticos", "Estiramientos pasivos"], "respuestas_correctas": ["Estiramientos estáticos", "Estiramientos dinámicos"]}', null),
(228, 2, '¿Cuáles son los principios del entrenamiento deportivo?', '{"respuestas": ["Individualidad", "Especificidad", "Variedad", "Exceso"], "respuestas_correctas": ["Especificidad", "Variedad"]}', null),
(228, 2, '¿Cuáles son los beneficios del ejercicio cardiovascular?', '{"respuestas": ["Mejora de la capacidad cardiorrespiratoria", "Reducción del estrés", "Aumento de la fuerza muscular", "Disminución de la flexibilidad"], "respuestas_correctas": ["Mejora de la capacidad cardiorrespiratoria", "Reducción del estrés"]}', null),
(228, 2, '¿Cuáles son los componentes de la técnica deportiva?', '{"respuestas": ["Agilidad, coordinación y equilibrio", "Fuerza, resistencia y velocidad", "Flexibilidad, fuerza y resistencia", "Coordinación, precisión y fluidez"], "respuestas_correctas": ["Coordinación, precisión y fluidez", "Agilidad, coordinación y equilibrio"]}', null),
(228, 2, '¿Cuáles son los tipos de fuerza muscular?', '{"respuestas": ["Fuerza máxima", "Fuerza explosiva", "Fuerza isométrica", "Fuerza dinámica"], "respuestas_correctas": ["Fuerza máxima", "Fuerza explosiva"]}', null),
(228, 2, '¿Cuáles son los beneficios del entrenamiento de resistencia?', '{"respuestas": ["Aumento de la resistencia muscular", "Mejora de la capacidad cardiorrespiratoria", "Incremento de la fuerza muscular", "Disminución de la coordinación"], "respuestas_correctas": ["Aumento de la resistencia muscular", "Mejora de la capacidad cardiorrespiratoria"]}', null);

-- Preguntas para el test 9 de Educación Física
INSERT INTO preguntas (id_test, tipo_pregunta, nombre_pregunta, datos_pregunta, retroalimentacion) VALUES
(229, 2, '¿Cuáles son los componentes de la condición física?', '{"respuestas": ["Fuerza", "Flexibilidad", "Resistencia", "Agilidad"], "respuestas_correctas": ["Fuerza", "Resistencia"]}', null),
(229, 2, '¿Cuáles son los beneficios de la actividad física regular?', '{"respuestas": ["Mejora de la salud cardiovascular", "Reducción del estrés", "Aumento de la fatiga", "Disminución de la flexibilidad"], "respuestas_correctas": ["Mejora de la salud cardiovascular", "Reducción del estrés"]}', null),
(229, 2, '¿Cuáles son los beneficios del entrenamiento de resistencia?', '{"respuestas": ["Aumento de la resistencia muscular", "Mejora de la capacidad cardiorrespiratoria", "Incremento de la fuerza muscular", "Disminución de la coordinación"], "respuestas_correctas": ["Aumento de la resistencia muscular", "Mejora de la capacidad cardiorrespiratoria"]}', null),
(229, 2, '¿Cuáles son los componentes de la condición física?', '{"respuestas": ["Fuerza", "Flexibilidad", "Resistencia", "Agilidad"], "respuestas_correctas": ["Fuerza", "Flexibilidad"]}', null),
(229, 2, '¿Cuáles son los tipos de estiramientos?', '{"respuestas": ["Estiramientos estáticos", "Estiramientos dinámicos", "Estiramientos balísticos", "Estiramientos pasivos"], "respuestas_correctas": ["Estiramientos estáticos", "Estiramientos dinámicos"]}', null),
(229, 2, '¿Cuáles son los beneficios del ejercicio cardiovascular?', '{"respuestas": ["Mejora de la capacidad cardiorrespiratoria", "Reducción del estrés", "Aumento de la fuerza muscular", "Disminución de la flexibilidad"], "respuestas_correctas": ["Mejora de la capacidad cardiorrespiratoria", "Reducción del estrés"]}', null),
(229, 2, '¿Cuáles son los principios del entrenamiento deportivo?', '{"respuestas": ["Individualidad", "Especificidad", "Variedad", "Exceso"], "respuestas_correctas": ["Individualidad", "Especificidad"]}', null),
(229, 2, '¿Cuáles son los beneficios de la actividad física regular?', '{"respuestas": ["Mejora de la salud cardiovascular", "Reducción del estrés", "Aumento de la fatiga", "Disminución de la flexibilidad"], "respuestas_correctas": ["Mejora de la salud cardiovascular", "Reducción del estrés"]}', null),
(229, 2, '¿Cuáles son los componentes de la técnica deportiva?', '{"respuestas": ["Agilidad, coordinación y equilibrio", "Fuerza, resistencia y velocidad", "Flexibilidad, fuerza y resistencia", "Coordinación, precisión y fluidez"], "respuestas_correctas": ["Agilidad, coordinación y equilibrio", "Coordinación, precisión y fluidez"]}', null),
(229, 2, '¿Cuáles son los tipos de fuerza muscular?', '{"respuestas": ["Fuerza máxima", "Fuerza explosiva", "Fuerza isométrica", "Fuerza dinámica"], "respuestas_correctas": ["Fuerza máxima", "Fuerza explosiva"]}', null);

-- Preguntas para el test 10 de Educación Física
INSERT INTO preguntas (id_test, tipo_pregunta, nombre_pregunta, datos_pregunta, retroalimentacion) VALUES
(230, 2, '¿Cuáles son los tipos de estiramientos?', '{"respuestas": ["Estiramientos estáticos", "Estiramientos dinámicos", "Estiramientos balísticos", "Estiramientos pasivos"], "respuestas_correctas": ["Estiramientos estáticos", "Estiramientos dinámicos"]}', null),
(230, 2, '¿Cuáles son los componentes de la condición física?', '{"respuestas": ["Fuerza", "Flexibilidad", "Resistencia", "Agilidad"], "respuestas_correctas": ["Fuerza", "Flexibilidad"]}', null),
(230, 2, '¿Cuáles son los beneficios del ejercicio cardiovascular?', '{"respuestas": ["Mejora de la capacidad cardiorrespiratoria", "Reducción del estrés", "Aumento de la fuerza muscular", "Disminución de la flexibilidad"], "respuestas_correctas": ["Mejora de la capacidad cardiorrespiratoria", "Reducción del estrés"]}', null),
(230, 2, '¿Cuáles son los principios del entrenamiento deportivo?', '{"respuestas": ["Individualidad", "Especificidad", "Variedad", "Exceso"], "respuestas_correctas": ["Individualidad", "Especificidad"]}', null),
(230, 2, '¿Cuáles son los beneficios de la actividad física regular?', '{"respuestas": ["Mejora de la salud cardiovascular", "Reducción del estrés", "Aumento de la fatiga", "Disminución de la flexibilidad"], "respuestas_correctas": ["Mejora de la salud cardiovascular", "Reducción del estrés"]}', null),
(230, 2, '¿Cuáles son los componentes de la técnica deportiva?', '{"respuestas": ["Agilidad, coordinación y equilibrio", "Fuerza, resistencia y velocidad", "Flexibilidad, fuerza y resistencia", "Coordinación, precisión y fluidez"], "respuestas_correctas": ["Agilidad, coordinación y equilibrio", "Coordinación, precisión y fluidez"]}', null),
(230, 2, '¿Cuáles son los beneficios de la actividad física regular?', '{"respuestas": ["Mejora de la salud cardiovascular", "Aumento de la flexibilidad", "Reducción del estrés", "Fortalecimiento de los músculos"], "respuestas_correctas": ["Mejora de la salud cardiovascular", "Reducción del estrés"]}', null),
(230, 2, '¿Cuáles son los componentes de la condición física?', '{"respuestas": ["Fuerza", "Resistencia", "Agilidad", "Flexibilidad"], "respuestas_correctas": ["Fuerza", "Flexibilidad"]}', null),
(230, 2, '¿Cuáles son los tipos de estiramientos?', '{"respuestas": ["Estiramientos estáticos", "Estiramientos dinámicos", "Estiramientos balísticos", "Estiramientos pasivos"], "respuestas_correctas": ["Estiramientos estáticos", "Estiramientos dinámicos"]}', null),
(230, 2, '¿Cuáles son los principios del entrenamiento deportivo?', '{"respuestas": ["Especificidad", "Progresión", "Variabilidad", "Descanso"], "respuestas_correctas": ["Especificidad", "Progresión"]}', null);

-- Renumera el id de PREGUNTAS
SET foreign_key_checks = 0;

SET @newid := 0;
UPDATE preguntas SET id = (@newid := @newid + 1) ORDER BY id;

SET foreign_key_checks = 1;