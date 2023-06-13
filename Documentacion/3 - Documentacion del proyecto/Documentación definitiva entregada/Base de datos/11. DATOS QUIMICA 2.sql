-- Datos para la tabla TESTS para los test de Química del tipo tipo de pregunta 3 conceptio/definición
INSERT INTO tests (id_materia, nombre_test, descripcion, id_usuario_creador) VALUES
(7, 'Química 11', 'Test 11 sobre la materia de Química de conceptio/definición.', 1),
(7, 'Química 12', 'Test 12 sobre la materia de Química de conceptio/definición.', 1),
(7, 'Química 13', 'Test 13 sobre la materia de Química de conceptio/definición.', 1),
(7, 'Química 14', 'Test 14 sobre la materia de Química de conceptio/definición.', 1),
(7, 'Química 15', 'Test 15 sobre la materia de Química de conceptio/definición.', 1),
(7, 'Química 16', 'Test 16 sobre la materia de Química de conceptio/definición.', 1),
(7, 'Química 17', 'Test 17 sobre la materia de Química de conceptio/definición.', 1),
(7, 'Química 18', 'Test 18 sobre la materia de Química de conceptio/definición.', 1),
(7, 'Química 19', 'Test 19 sobre la materia de Química de conceptio/definición.', 1),
(7, 'Química 20', 'Test 20 sobre la materia de Química de conceptio/definición.', 1);

SET foreign_key_checks = 0;

SET @newid := 0;
UPDATE tests SET id = (@newid := @newid + 1) ORDER BY id;

SET foreign_key_checks = 1;

-- Datos para la tabla PREGUNTAS de la MATERIA "Química" para el tipo de pregunta 3 conceptio/definición

-- Preguntas para el test 11 de Química
INSERT INTO preguntas (id_test, tipo_pregunta, nombre_pregunta, datos_pregunta, retroalimentacion) VALUES
(101, 3, 'Indica cuál es el elemento químico cuyo símbolo es: Ca', '{"respuesta": "Calcio"}', null),
(101, 3, 'Indica cuál es el elemento químico cuyo símbolo es: Fe', '{"respuesta": "Hierro"}', null),
(101, 3, 'Indica cuál es el elemento químico cuyo símbolo es: Ti', '{"respuesta": "Titanio"}', null),
(101, 3, 'Indica cuál es el elemento químico cuyo símbolo es: C', '{"respuesta": "Carbono"}', null),
(101, 3, 'Indica cuál es el elemento químico cuyo símbolo es: Na', '{"respuesta": "Sodio"}', null),
(101, 3, 'Indica cuál es el elemento químico cuyo símbolo es: Cl', '{"respuesta": "Cloro"}', null),
(101, 3, 'Indica cuál es el elemento químico cuyo símbolo es: Fr', '{"respuesta": "Francio"}', null),
(101, 3, 'Indica cuál es el elemento químico cuyo símbolo es: F', '{"respuesta": "Fluor"}', null),
(101, 3, 'Indica cuál es el elemento químico cuyo símbolo es: Li', '{"respuesta": "Litio"}', null),
(101, 3, 'Indica cuál es el elemento químico cuyo símbolo es: Ir', '{"respuesta": "Iridio"}', null);

-- Preguntas para el test 12 de Química
INSERT INTO preguntas (id_test, tipo_pregunta, nombre_pregunta, datos_pregunta, retroalimentacion)
VALUES
(102, 3, 'Indica cuál es el elemento químico cuyo símbolo es: Hg', '{"respuesta": "Mercurio"}', null),
(102, 3, 'Indica cuál es el elemento químico cuyo símbolo es: Ag', '{"respuesta": "Plata"}', null),
(102, 3, 'Indica cuál es el elemento químico cuyo símbolo es: Au', '{"respuesta": "Oro"}', null),
(102, 3, 'Indica cuál es el elemento químico cuyo símbolo es: Pb', '{"respuesta": "Plomo"}', null),
(102, 3, 'Indica cuál es el elemento químico cuyo símbolo es: Sn', '{"respuesta": "Estaño"}', null),
(102, 3, 'Indica cuál es el elemento químico cuyo símbolo es: Cu', '{"respuesta": "Cobre"}', null),
(102, 3, 'Indica cuál es el elemento químico cuyo símbolo es: Zn', '{"respuesta": "Zinc"}', null),
(102, 3, 'Indica cuál es el elemento químico cuyo símbolo es: Pt', '{"respuesta": "Platino"}', null),
(102, 3, 'Indica cuál es el elemento químico cuyo símbolo es: Ni', '{"respuesta": "Níquel"}', null),
(102, 3, 'Indica cuál es el elemento químico cuyo símbolo es: Co', '{"respuesta": "Cobalto"}', null);

-- Preguntas para el test 13 de Química
INSERT INTO preguntas (id_test, tipo_pregunta, nombre_pregunta, datos_pregunta, retroalimentacion)
VALUES
(103, 3, 'Indica cuál es el elemento químico cuyo símbolo es: Br', '{"respuesta": "Bromo"}', null),
(103, 3, 'Indica cuál es el elemento químico cuyo símbolo es: I', '{"respuesta": "Yodo"}', null),
(103, 3, 'Indica cuál es el elemento químico cuyo símbolo es: Ca', '{"respuesta": "Calcio"}', null),
(103, 3, 'Indica cuál es el elemento químico cuyo símbolo es: K', '{"respuesta": "Potasio"}', null),
(103, 3, 'Indica cuál es el elemento químico cuyo símbolo es: Mg', '{"respuesta": "Magnesio"}', null),
(103, 3, 'Indica cuál es el elemento químico cuyo símbolo es: Ba', '{"respuesta": "Bario"}', null),
(103, 3, 'Indica cuál es el elemento químico cuyo símbolo es: Sr', '{"respuesta": "Estroncio"}', null),
(103, 3, 'Indica cuál es el elemento químico cuyo símbolo es: Al', '{"respuesta": "Aluminio"}', null),
(103, 3, 'Indica cuál es el elemento químico cuyo símbolo es: Si', '{"respuesta": "Silicio"}', null),
(103, 3, 'Indica cuál es el elemento químico cuyo símbolo es: Sn', '{"respuesta": "Estaño"}', null);

-- Preguntas para el test 14 de Química
INSERT INTO preguntas (id_test, tipo_pregunta, nombre_pregunta, datos_pregunta, retroalimentacion)
VALUES
(104, 3, 'Indica cuál es el elemento químico cuyo símbolo es: Ne', '{"respuesta": "Neón"}', null),
(104, 3, 'Indica cuál es el elemento químico cuyo símbolo es: S', '{"respuesta": "Azufre"}', null),
(104, 3, 'Indica cuál es el elemento químico cuyo símbolo es: Fe', '{"respuesta": "Hierro"}', null),
(104, 3, 'Indica cuál es el elemento químico cuyo símbolo es: Cr', '{"respuesta": "Cromo"}', null),
(104, 3, 'Indica cuál es el elemento químico cuyo símbolo es: P', '{"respuesta": "Fósforo"}', null),
(104, 3, 'Indica cuál es el elemento químico cuyo símbolo es: Mn', '{"respuesta": "Manganeso"}', null),
(104, 3, 'Indica cuál es el elemento químico cuyo símbolo es: Ni', '{"respuesta": "Níquel"}', null),
(104, 3, 'Indica cuál es el elemento químico cuyo símbolo es: Cu', '{"respuesta": "Cobre"}', null),
(104, 3, 'Indica cuál es el elemento químico cuyo símbolo es: Co', '{"respuesta": "Cobalto"}', null),
(104, 3, 'Indica cuál es el elemento químico cuyo símbolo es: Zn', '{"respuesta": "Zinc"}', null);

-- Preguntas para el test 15 de Química
INSERT INTO preguntas (id_test, tipo_pregunta, nombre_pregunta, datos_pregunta, retroalimentacion)
VALUES
(105, 3, 'Indica cuál es el elemento químico cuyo símbolo es: Au', '{"respuesta": "Oro"}', null),
(105, 3, 'Indica cuál es el elemento químico cuyo símbolo es: Ag', '{"respuesta": "Plata"}', null),
(105, 3, 'Indica cuál es el elemento químico cuyo símbolo es: Pt', '{"respuesta": "Platino"}', null),
(105, 3, 'Indica cuál es el elemento químico cuyo símbolo es: Hg', '{"respuesta": "Mercurio"}', null),
(105, 3, 'Indica cuál es el elemento químico cuyo símbolo es: Pb', '{"respuesta": "Plomo"}', null),
(105, 3, 'Indica cuál es el elemento químico cuyo símbolo es: U', '{"respuesta": "Uranio"}', null),
(105, 3, 'Indica cuál es el elemento químico cuyo símbolo es: Sn', '{"respuesta": "Estaño"}', null),
(105, 3, 'Indica cuál es el elemento químico cuyo símbolo es: W', '{"respuesta": "Wolframio"}', null),
(105, 3, 'Indica cuál es el elemento químico cuyo símbolo es: Bi', '{"respuesta": "Bismuto"}', null),
(105, 3, 'Indica cuál es el elemento químico cuyo símbolo es: Cd', '{"respuesta": "Cadmio"}', null);

-- Preguntas para el test 16 de Química
INSERT INTO preguntas (id_test, tipo_pregunta, nombre_pregunta, datos_pregunta, retroalimentacion)
VALUES
(106, 3, 'Indica cuál es el elemento químico cuyo símbolo es: Mn', '{"respuesta": "Manganeso"}', null),
(106, 3, 'Indica cuál es el elemento químico cuyo símbolo es: Cr', '{"respuesta": "Cromo"}', null),
(106, 3, 'Indica cuál es el elemento químico cuyo símbolo es: Ni', '{"respuesta": "Níquel"}', null),
(106, 3, 'Indica cuál es el elemento químico cuyo símbolo es: Co', '{"respuesta": "Cobalto"}', null),
(106, 3, 'Indica cuál es el elemento químico cuyo símbolo es: Zn', '{"respuesta": "Cinc"}', null),
(106, 3, 'Indica cuál es el elemento químico cuyo símbolo es: As', '{"respuesta": "Arsénico"}', null),
(106, 3, 'Indica cuál es el elemento químico cuyo símbolo es: Se', '{"respuesta": "Selenio"}', null),
(106, 3, 'Indica cuál es el elemento químico cuyo símbolo es: Te', '{"respuesta": "Telurio"}', null),
(106, 3, 'Indica cuál es el elemento químico cuyo símbolo es: Sn', '{"respuesta": "Estaño"}', null),
(106, 3, 'Indica cuál es el elemento químico cuyo símbolo es: Pb', '{"respuesta": "Plomo"}', null);

-- Preguntas para el test 17 de Química
INSERT INTO preguntas (id_test, tipo_pregunta, nombre_pregunta, datos_pregunta, retroalimentacion)
VALUES
(107, 3, 'Indica cuál es el elemento químico cuyo símbolo es: Cu', '{"respuesta": "Cobre"}', null),
(107, 3, 'Indica cuál es el elemento químico cuyo símbolo es: Ag', '{"respuesta": "Plata"}', null),
(107, 3, 'Indica cuál es el elemento químico cuyo símbolo es: Au', '{"respuesta": "Oro"}', null),
(107, 3, 'Indica cuál es el elemento químico cuyo símbolo es: Pt', '{"respuesta": "Platino"}', null),
(107, 3, 'Indica cuál es el elemento químico cuyo símbolo es: Hg', '{"respuesta": "Mercurio"}', null),
(107, 3, 'Indica cuál es el elemento químico cuyo símbolo es: Al', '{"respuesta": "Aluminio"}', null),
(107, 3, 'Indica cuál es el elemento químico cuyo símbolo es: Si', '{"respuesta": "Silicio"}', null),
(107, 3, 'Indica cuál es el elemento químico cuyo símbolo es: Ar', '{"respuesta": "Argón"}', null),
(107, 3, 'Indica cuál es el elemento químico cuyo símbolo es: Kr', '{"respuesta": "Kriptón"}', null),
(107, 3, 'Indica cuál es el elemento químico cuyo símbolo es: Xe', '{"respuesta": "Xenón"}', null);

-- Preguntas para el test 18 de Química
INSERT INTO preguntas (id_test, tipo_pregunta, nombre_pregunta, datos_pregunta, retroalimentacion)
VALUES
(108, 3, 'Indica cuál es el elemento químico cuyo símbolo es: Ne', '{"respuesta": "Neón"}', null),
(108, 3, 'Indica cuál es el elemento químico cuyo símbolo es: Ca', '{"respuesta": "Calcio"}', null),
(108, 3, 'Indica cuál es el elemento químico cuyo símbolo es: K', '{"respuesta": "Potasio"}', null),
(108, 3, 'Indica cuál es el elemento químico cuyo símbolo es: Mg', '{"respuesta": "Magnesio"}', null),
(108, 3, 'Indica cuál es el elemento químico cuyo símbolo es: Zn', '{"respuesta": "Zinc"}', null),
(108, 3, 'Indica cuál es el elemento químico cuyo símbolo es: Sn', '{"respuesta": "Estaño"}', null),
(108, 3, 'Indica cuál es el elemento químico cuyo símbolo es: Pb', '{"respuesta": "Plomo"}', null),
(108, 3, 'Indica cuál es el elemento químico cuyo símbolo es: Ni', '{"respuesta": "Níquel"}', null),
(108, 3, 'Indica cuál es el elemento químico cuyo símbolo es: Co', '{"respuesta": "Cobalto"}', null),
(108, 3, 'Indica cuál es el elemento químico cuyo símbolo es: Cr', '{"respuesta": "Cromo"}', null);

-- Preguntas para el test 19 de Química
INSERT INTO preguntas (id_test, tipo_pregunta, nombre_pregunta, datos_pregunta, retroalimentacion)
VALUES
(109, 3, 'Indica cuál es el elemento químico cuyo símbolo es: Os', '{"respuesta": "Osmio"}', null),
(109, 3, 'Indica cuál es el elemento químico cuyo símbolo es: Pt', '{"respuesta": "Platino"}', null),
(109, 3, 'Indica cuál es el elemento químico cuyo símbolo es: Rh', '{"respuesta": "Rodio"}', null),
(109, 3, 'Indica cuál es el elemento químico cuyo símbolo es: Ir', '{"respuesta": "Iridio"}', null),
(109, 3, 'Indica cuál es el elemento químico cuyo símbolo es: Pd', '{"respuesta": "Paladio"}', null),
(109, 3, 'Indica cuál es el elemento químico cuyo símbolo es: Au', '{"respuesta": "Oro"}', null),
(109, 3, 'Indica cuál es el elemento químico cuyo símbolo es: Ag', '{"respuesta": "Plata"}', null),
(109, 3, 'Indica cuál es el elemento químico cuyo símbolo es: Hg', '{"respuesta": "Mercurio"}', null),
(109, 3, 'Indica cuál es el elemento químico cuyo símbolo es: Rb', '{"respuesta": "Rubidio"}', null),
(109, 3, 'Indica cuál es el elemento químico cuyo símbolo es: Cs', '{"respuesta": "Cesio"}', null);

-- Preguntas para el test 20 de Química
INSERT INTO preguntas (id_test, tipo_pregunta, nombre_pregunta, datos_pregunta, retroalimentacion)
VALUES
(110, 3, 'Indica cuál es el elemento químico cuyo símbolo es: Ge', '{"respuesta": "Germanio"}', null),
(110, 3, 'Indica cuál es el elemento químico cuyo símbolo es: Sb', '{"respuesta": "Antimonio"}', null),
(110, 3, 'Indica cuál es el elemento químico cuyo símbolo es: Se', '{"respuesta": "Selenio"}', null),
(110, 3, 'Indica cuál es el elemento químico cuyo símbolo es: Re', '{"respuesta": "Renio"}', null),
(110, 3, 'Indica cuál es el elemento químico cuyo símbolo es: Bi', '{"respuesta": "Bismuto"}', null),
(110, 3, 'Indica cuál es el elemento químico cuyo símbolo es: Tl', '{"respuesta": "Talio"}', null),
(110, 3, 'Indica cuál es el elemento químico cuyo símbolo es: Po', '{"respuesta": "Polonio"}', null),
(110, 3, 'Indica cuál es el elemento químico cuyo símbolo es: At', '{"respuesta": "Astato"}', null),
(110, 3, 'Indica cuál es el elemento químico cuyo símbolo es: Es', '{"respuesta": "Einstenio"}', null),
(110, 3, 'Indica cuál es el elemento químico cuyo símbolo es: Md', '{"respuesta": "Mendelevio"}', null);


-- Renumera el id de PREGUNTAS
SET foreign_key_checks = 0;

SET @newid := 0;
UPDATE preguntas SET id = (@newid := @newid + 1) ORDER BY id;

SET foreign_key_checks = 1;