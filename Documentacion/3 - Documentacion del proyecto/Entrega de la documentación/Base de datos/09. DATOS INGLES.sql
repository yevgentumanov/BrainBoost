-- Datos para la tabla TESTS para los test de Inglés del tipo tipo de pregunta 1 con respuesta unica
INSERT INTO tests (id_materia, nombre_test, descripcion, id_usuario_creador) VALUES
(14, 'Inglés 01', 'Test 01 sobre la materia de Inglés de rellenar huecos.', 1),
(14, 'Inglés 02', 'Test 02 sobre la materia de Inglés de rellenar huecos.', 1),
(14, 'Inglés 03', 'Test 03 sobre la materia de Inglés de rellenar huecos.', 1),
(14, 'Inglés 04', 'Test 04 sobre la materia de Inglés de rellenar huecos.', 1),
(14, 'Inglés 05', 'Test 05 sobre la materia de Inglés de rellenar huecos.', 1),
(14, 'Inglés 06', 'Test 06 sobre la materia de Inglés de rellenar huecos.', 1),
(14, 'Inglés 07', 'Test 07 sobre la materia de Inglés de rellenar huecos.', 1),
(14, 'Inglés 08', 'Test 08 sobre la materia de Inglés de rellenar huecos.', 1),
(14, 'Inglés 09', 'Test 09 sobre la materia de Inglés de rellenar huecos.', 1),
(14, 'Inglés 10', 'Test 10 sobre la materia de Inglés de rellenar huecos.', 1);

SET foreign_key_checks = 0;

SET @newid := 0;
UPDATE tests SET id = (@newid := @newid + 1) ORDER BY id;

SET foreign_key_checks = 1;

-- Datos para la tabla PREGUNTAS de la MATERIA "Inglés" para el tipo de pregunta 1 con respuesta unica

-- Preguntas para el test 1 de Inglés
INSERT INTO preguntas (id_test, tipo_pregunta, nombre_pregunta, datos_pregunta, retroalimentacion) VALUES
(81, 4, "I ${1:1} to work by bus every day. She ${1:2} from the University of California last year. We ${1:3} a great time at the party last night. My brother ${1:4} me his car for the weekend.", '{"${1:1}": "go", "${1:2}": "graduated", "${1:3}": "had", "${1:4}": "lent"}', null),
(81, 4, "She ${2:1} in New York before she moved to London. He ${2:2} the guitar since he was a child. They ${2:3} dinner when I arrived. My sister ${2:4} me to go to the party with her.", '{"${2:1}": "lived", "${2:2}": "has played", "${2:3}": "were having", "${2:4}": "invited"}', null),
(81, 4, "I ${3:1} my homework yesterday evening. She ${3:2} her purse on the train this morning. They ${3:3} a lot of questions during the interview. They ${3:4} a great time on their vacation.", '{"${3:1}": "did", "${3:2}": "lost", "${3:3}": "asked", "${3:4}": "had"}', null),
(81, 4, "He ${4:1} his ankle playing football last weekend. She ${4:2} her phone in the bathroom. We ${4:3} the train to Paris next week. She ${4:4} up early to watch the sunrise.", '{"${4:1}": "sprained", "${4:2}": "left", "${4:3}": "are taking", "${4:4}": "gets"}', null),
(81, 4, "I ${5:1} a coffee before class every morning. She ${5:2} her hair twice a week. They ${5:3} the news on TV when I came in. I ${5:4} my hair every month.", '{"${5:1}": "have", "${5:2}": "washes", "${5:3}": "were watching", "${5:4}": "dye"}', null),
(81, 4, "We ${6:1} to the beach every summer. He ${6:2} his driving test last week. She ${6:3} her sister every Sunday. I ${6:4} my birthday with my family every year.", '{"${6:1}": "go", "${6:2}": "passed", "${6:3}": "visits", "${6:4}": "celebrate"}', null),
(81, 4, "I ${7:1} my umbrella at home this morning. She ${7:2} to me about her new job. They ${7:3} us to come to the party. He ${7:4} his homework every day after school.", '{"${7:1}": "left", "${7:2}": "lied", "${7:3}": "invited", "${7:4}": "does"}', null),
(81, 4, "He ${8:1} his keys at the office yesterday. They ${8:2} to see the new movie last night. She ${8:3} her job last month. We ${8:4} for two hours.", '{"${8:1}": "left", "${8:2}": "went", "${8:3}": "lost", "${8:4}": "talked"}', null),
(81, 4, "I ${9:1} to learn a new language this year. She ${9:2} her friends to come over tonight. They ${9:3} their homework yesterday. He ${9:4} a lot of books last month.", '{"${9:1}": "want", "${9:2}": "invited", "${9:3}": "did", "${9:4}": "read"}', null),
(81, 4, "He ${10:1} English for two years. I ${10:2} tennis when I was younger. They ${10:3} their car last month. They ${10:4} the train to Madrid next week.", '{"${10:1}": "has been learning", "${10:2}": "played", "${10:3}": "sold", "${10:4}": "are taking"}', null);

-- Preguntas para el test 2 de Inglés
INSERT INTO preguntas (id_test, tipo_pregunta, nombre_pregunta, datos_pregunta, retroalimentacion) VALUES
(82, 4, "He ${1:1} to the gym every morning before work. She ${1:2} her grandmother every week. We ${1:3} to the party last Saturday. They ${1:4} a lot of pictures on vacation.", '{"${:1}": "goes", "${:2}": "visits", "${:3}": "went", "${:4}": "took"}', null),
(82, 4, "I ${2:1} to the supermarket after work. She ${2:2} her hair every month. They ${2:3} a lot of questions during the meeting. He ${2:4} his phone on the train this morning.", '{"${:1}": "go", "${:2}": "cuts", "${:3}": "asked", "${:4}": "left"}', null),
(82, 4, "He ${3:1} to the doctor last week. She ${3:2} to visit her family this weekend. They ${3:3} a great time at the concert. I ${3:4} my wallet at home this morning.", '{"${:1}": "went", "${:2}": "is going", "${:3}": "had", "${:4}": "left"}', null),
(82, 4, "I ${4:1} my breakfast before leaving the house. She ${4:2} her keys in the car yesterday. They ${4:3} their parents on the phone last night. He ${4:4} his homework before going to bed.", '{"${:1}": "ate", "${:2}": "left", "${:3}": "called", "${:4}": "did"}', null),
(82, 4, "I ${5:1} to the gym three times a week. She ${5:2} her dog for a walk every morning. They ${5:3} a movie last night. He ${5:4} to the park every weekend.", '{"${:1}": "go", "${:2}": "takes", "${:3}": "watched", "${:4}": "goes"}', null),
(82, 4, "He ${6:1} his phone in the car. She ${6:2} to the store twice this week. We ${6:3} our luggage at the hotel. My dad ${6:4} to retire next year.", '{"${:1}": "left", "${:2}": "has gone", "${:3}": "left", "${:4}": "plans"}', null),
(82, 4, "I ${7:1} a book right now. She ${7:2} her hair every morning. They ${7:3} a walk in the park yesterday. He ${7:4} his phone in the car.", '{"${:1}": "am reading", "${:2}": "brushes", "${:3}": "took", "${:4}": "left"}', null),
(82, 4, "I can't believe he ${8:1} the party so early! She ${8:2} Spanish fluently. We ${8:3} our dog to the vet yesterday. My parents ${8:4} in Italy when they were young.", '{"${:1}": "left", "${:2}": "speaks", "${:3}": "took", "${:4}": "lived"}', null),
(82, 4, "He ${9:1} a new job next month. She ${9:2} to the radio every morning. They ${9:3} a lot of pizza at the party. I ${9:4} my sister every week.", '{"${:1}": "starts", "${:2}": "listens", "${:3}": "had", "${:4}": "visit"}', null),
(82, 4, "I ${10:1} my computer to work from home. She ${10:2} her bike to school every day. They ${10:3} their house last year. He ${10:4} a lot of money on his vacation.", '{"${:1}": "use", "${:2}": "rides", "${:3}": "sold", "${:4}": "spent"}', null);

-- Preguntas para el test 3 de Inglés
INSERT INTO preguntas (id_test, tipo_pregunta, nombre_pregunta, datos_pregunta, retroalimentacion) VALUES
(83, 4, "I ${1:1} to the gym every Monday. She ${1:2} her phone in the car. They ${1:3} a book when I saw them. I ${1:4} a lot of vegetables in my diet.", '{"${:1}": "go", "${:2}": "forgot", "${:3}": "were reading", "${:4}": "include"}', null),
(83, 4, "He ${2:1} his hair every two weeks. She ${2:2} to visit her family in the countryside every summer. We ${2:3} a great time on our trip to Japan. She ${2:4} her grandmother every weekend.", '{"${:1}": "cuts", "${:2}": "goes", "${:3}": "had", "${:4}": "visits"}', null),
(83, 4, "I ${3:1} to the store yesterday. She ${3:2} her job two weeks ago. They ${3:3} their vacation last month. They ${3:4} a movie when I called.", '{"${:1}": "went", "${:2}": "quit", "${:3}": "took", "${:4}": "were watching"}', null),
(83, 4, "He ${4:1} a new computer last month. She ${4:2} her phone in the park yesterday. We ${4:3} a delicious dinner at the new restaurant. I ${4:4} my keys this morning.", '{"${:1}": "bought", "${:2}": "lost", "${:3}": "had", "${:4}": "lost"}', null),
(83, 4, "I ${5:1} to the gym every Monday. She ${5:2} her keys in the car. They ${5:3} to Spain last summer. My brother ${5:4} his job two weeks ago.", '{"${:1}": "go", "${:2}": "left", "${:3}": "went", "${:4}": "quit"}', null),
(83, 4, "He ${6:1} his shoes before entering the house. She ${6:2} to the gym twice a week. We ${6:3} the bus to go to the city center. She ${6:4} a new pair of shoes yesterday.", '{"${:1}": "takes off", "${:2}": "goes", "${:3}": "took", "${:4}": "bought"}', null),
(83, 4, "I ${7:1} my coffee with milk and sugar. She ${7:2} her keys in the car. They ${7:3} a new puppy last month. They ${7:4} a lot of questions during the meeting.", '{"${:1}": "take", "${:2}": "forgot", "${:3}": "got", "${:4}": "asked"}', null),
(83, 4, "He ${8:1} his shirt for the party last night. She ${8:2} to her favorite restaurant every Saturday. We ${8:3} a great time at the beach. He ${8:4} a lot of money last month.", '{"${:1}": "wore", "${:2}": "goes", "${:3}": "had", "${:4}": "earned"}', null),
(83, 4, "He ${9:1} his job last month. She ${9:2} the train to Paris. We ${9:3} lunch at the restaurant yesterday. They ${9:4} to the party on Saturday.", '{"${:1}": "quit", "${:2}": "took", "${:3}": "had", "${:4}": "went"}', null),
(83, 4, "He ${10:1} for the company for 10 years. She ${10:2} to the beach every summer. We ${10:3} our homework before the deadline. She ${10:4} the train to work every day.", '{"${:1}": "has worked", "${:2}": "goes", "${:3}": "finished", "${:4}": "takes"}', null);

-- Preguntas para el test 4 de Inglés
INSERT INTO preguntas (id_test, tipo_pregunta, nombre_pregunta, datos_pregunta, retroalimentacion) VALUES
(84, 4, "She ${1:1} her makeup every morning. He ${1:2} his lunch to work. They ${1:3} the game on TV. I ${1:4} to music when I'm working.", '{"${:1}": "does", "${:2}": "brings", "${:3}": "watched", "${:4}": "listen"}', null),
(84, 4, "He ${2:1} to the gym every morning before work. They ${2:2} to see the movie last night. We ${2:3} lunch together every Friday. She ${2:4} a book when I called her.", '{"${:1}": "goes", "${:2}": "wanted", "${:3}": "have", "${:4}": "was reading"}', null),
(84, 4, "I always ${3:1} a book before going to bed. She ${3:2} in a small village in Italy. They ${3:3} the movie twice to understand it better. He ${3:4} a sandwich and some chips for lunch.", '{"${:1}": "read", "${:2}": "grew up", "${:3}": "watched", "${:4}": "had"}', null),
(84, 4, "We ${4:1} our friends at the park last Sunday. She ${4:2} her keys and couldn't get into the house. He ${4:3} the lottery and became a millionaire. They ${4:4} a lot of fruit and vegetables every day.", '{"${:1}": "met", "${:2}": "lost", "${:3}": "won", "${:4}": "eat"}', null),
(84, 4, "He ${5:1} his homework when his friend called. I ${5:2} a cake for her birthday party. They ${5:3} to the store to buy some milk. She ${5:4} a dog and a cat as pets.", '{"${:1}": "was doing", "${:2}": "baked", "${:3}": "went", "${:4}": "has"}', null),
(84, 4, "I ${6:1} my phone at home this morning. She ${6:2} a cup of tea with honey for her sore throat. They ${6:3} the city by bike last summer. He ${6:4} to the gym three times a week.", '{"${:1}": "left", "${:2}": "had", "${:3}": "explored", "${:4}": "goes"}', null),
(84, 4, "We ${7:1} up early to watch the sunrise. She ${7:2} a terrible headache and had to take a nap. He ${7:3} his sister a birthday present. They ${7:4} the house and found some old photos.", '{"${:1}": "woke", "${:2}": "had", "${:3}": "bought", "${:4}": "searched"}', null),
(84, 4, "I ${8:1} my car in the parking lot yesterday. She ${8:2} a poem for her English class. They ${8:3} their wedding anniversary at a fancy restaurant. He ${8:4} a new job as a teacher.", '{"${:1}": "parked", "${:2}": "wrote", "${:3}": "celebrated", "${:4}": "got"}', null),
(84, 4, "He ${9:1} a flight to Paris last night. I ${9:2} to the supermarket to buy some bread. She ${9:3} a glass of water before going to bed. They ${9:4} the news on TV and got scared.", '{"${:1}": "took", "${:2}": "went", "${:3}": "had", "${:4}": "watched"}', null),
(84, 4, "We ${10:1} a lot of snow last winter. She ${10:2} a red dress for her sister's wedding. They ${10:3} the new museum in town. He ${10:4} a broken leg and had to stay in bed for a month.", '{"${:1}": "had", "${:2}": "bought", "${:3}": "visited", "${:4}": "had"}', null);

-- Preguntas para el test 5 de Inglés
INSERT INTO preguntas (id_test, tipo_pregunta, nombre_pregunta, datos_pregunta, retroalimentacion) VALUES
(85, 4, "I ${1:1} watching movies on weekends. She ${1:2} her dog to the park every morning. They ${1:3} a new car last week. He ${1:4} to the gym every day.", '{"${:1}": "like", "${:2}": "takes", "${:3}": "bought", "${:4}": "goes"}', null),
(85, 4, "She ${2:1} her keys yesterday. He ${2:2} the piano since he was a child. We ${2:3} a pizza for dinner last night. They ${2:4} to the beach every summer.", '{"${:1}": "lost", "${:2}": "has played", "${:3}": "had", "${:4}": "go"}', null),
(85, 4, "I ${3:1} my phone at home this morning. She ${3:2} French at school. They ${3:3} a lot of food at the party. He ${3:4} his shirt for the interview.", '{"${:1}": "left", "${:2}": "studies", "${:3}": "ate", "${:4}": "ironed"}', null),
(85, 4, "He ${4:1} his hair short. She ${4:2} her email before breakfast. They ${4:3} a new house last year. I ${4:4} a shower before bed.", '{"${:1}": "keeps", "${:2}": "checks", "${:3}": "bought", "${:4}": "take"}', null),
(85, 4, "I ${5:1} my teeth before bed. She ${5:2} her homework in the afternoon. They ${5:3} a great time at the concert. He ${5:4} to the park every weekend.", '{"${:1}": "brush", "${:2}": "does", "${:3}": "had", "${:4}": "goes"}', null),
(85, 4, "I ${6:1} a book before bed. She ${6:2} to the store after work. They ${6:3} a barbecue last weekend. He ${6:4} to bed early.", '{"${:1}": "read", "${:2}": "goes", "${:3}": "had", "${:4}": "goes"}', null),
(85, 4, "She ${7:1} her makeup every morning. He ${7:2} his lunch to work. They ${7:3} the game on TV. I ${7:4} to music when I'm working.", '{"${:1}": "does", "${:2}": "brings", "${:3}": "watched", "${:4}": "listen"}', null),
(85, 4, "He ${8:1} his shirt to the party. She ${8:2} to the gym every day. They ${8:3} a new phone last month. I ${8:4} a lot of coffee in the morning.", '{"${:1}": "wore", "${:2}": "goes", "${:3}": "bought", "${:4}": "drink"}', null),
(85, 4, "I ${9:1} my coffee with milk. She ${9:2} her daughter to school every morning. They ${9:3} their car last week. He ${9:4} his jacket at the restaurant.", '{"${:1}": "drink", "${:2}": "takes", "${:3}": "sold", "${:4}": "left"}', null),
(85, 4, "He ${10:1} for the company since 2010. She ${10:2} her keys at the restaurant last night. We ${10:3} a lot of fun at the amusement park. They ${10:4} to the movies every weekend.", '{"${:1}": "has worked", "${:2}": "left", "${:3}": "had", "${:4}": "go"}', null);

-- Preguntas para el test 6 de Inglés
INSERT INTO preguntas (id_test, tipo_pregunta, nombre_pregunta, datos_pregunta, retroalimentacion) VALUES
(86, 4, "I ${1:1} the book last night. She ${1:2} to music while she works. They ${1:3} for a walk in the park when it started raining. He ${1:4} to bed late last night.", '{"${:1}": "read", "${:2}": "listens", "${:3}": "went", "${:4}": "went"}', null),
(86, 4, "He ${2:1} to the gym every morning. She ${2:2} her dress for the party. We ${2:3} the train to London tomorrow. They ${2:4} to the beach last weekend.", '{"${:1}": "goes", "${:2}": "bought", "${:3}": "are taking", "${:4}": "went"}', null),
(86, 4, "I ${3:1} a cake for her birthday. She ${3:2} her phone in the car. They ${3:3} soccer every Saturday. He ${3:4} to work by bike every day.", '{"${:1}": "baked", "${:2}": "forgot", "${:3}": "play", "${:4}": "goes"}', null),
(86, 4, "She ${4:1} her hair every month. He ${4:2} basketball in high school. We ${4:3} to the museum last weekend. They ${4:4} a good job on the project.", '{"${:1}": "dyes", "${:2}": "played", "${:3}": "went", "${:4}": "did"}', null),
(86, 4, "I ${5:1} to the gym every Monday. She ${5:2} her keys in the car. They ${5:3} to Spain last summer. My brother ${5:4} his job two weeks ago.", '{"${:1}": "go", "${:2}": "left", "${:3}": "went", "${:4}": "quit"}', null),
(86, 4, "She ${6:1} a book when she heard the noise. He ${6:2} to the cinema every Friday. We ${6:3} the train at 9 am. My dad ${6:4} to retire next year.", '{"${:1}": "was reading", "${:2}": "goes", "${:3}": "catch", "${:4}": "plans"}', null),
(86, 4, "I ${7:1} my coffee black. She ${7:2} her hair before the party. They ${7:3} a lot of money on their trip. My mom ${7:4} to bake cookies every Christmas.", '{"${:1}": "take", "${:2}": "did", "${:3}": "spent", "${:4}": "likes"}', null),
(86, 4, "I ${8:1} a lot of books on vacation. She ${8:2} a headache after work. They ${8:3} their dogs to the park every afternoon. He ${8:4} to the supermarket yesterday.", '{"${:1}": "read", "${:2}": "had", "${:3}": "take", "${:4}": "went"}', null),
(86, 4, "He ${9:1} his job last month. She ${9:2} the train to Paris. We ${9:3} lunch at the restaurant yesterday. They ${9:4} to the party on Saturday.", '{"${:1}": "quit", "${:2}": "took", "${:3}": "had", "${:4}": "went"}', null),
(86, 4, "I ${10:1} to the dentist twice a year. She ${10:2} a lot of clothes in the sale. They ${10:3} a good time at the concert last night. He ${10:4} a lot of coffee in the morning.", '{"${:1}": "go", "${:2}": "bought", "${:3}": "had", "${:4}": "drinks"}', null);

-- Preguntas para el test 7 de Inglés
INSERT INTO preguntas (id_test, tipo_pregunta, nombre_pregunta, datos_pregunta, retroalimentacion) VALUES
(87, 4, "He ${1:1} his phone in the car. She ${1:2} for the test next week. We ${1:3} to the park every weekend. My sister ${1:4} her room clean.", '{"${:1}": "left", "${:2}": "is studying", "${:3}": "go", "${:4}": "keeps"}', null),
(87, 4, "I ${2:1} a shower every morning. She ${2:2} her laptop at work. They ${2:3} a great time at the concert. My grandpa ${2:4} to take a nap after lunch.", '{"${:1}": "take", "${:2}": "left", "${:3}": "had", "${:4}": "likes"}', null),
(87, 4, "She ${3:1} to the dentist twice a year. He ${3:2} his car last month. We ${3:3} the movie last night. My brother ${3:4} to his girlfriend every day.", '{"${:1}": "goes", "${:2}": "sold", "${:3}": "watched", "${:4}": "talks"}', null),
(87, 4, "I ${4:1} a lot of water every day. She ${4:2} her glasses on the table. They ${4:3} to Japan next summer. My friend ${4:4} to play basketball every weekend.", '{"${:1}": "drink", "${:2}": "left", "${:3}": "are going", "${:4}": "likes"}', null),
(87, 4, "I ${5:1} my coffee with milk and sugar. She ${5:2} from her vacation next week. They ${5:3} to the party last Saturday. He ${5:4} to the gym three times a week.", '{"${:1}": "take", "${:2}": "returns", "${:3}": "went", "${:4}": "goes"}', null),
(87, 4, "She ${6:1} her phone at the restaurant yesterday. We ${6:2} to the museum every month. They ${6:3} for their exam last night. He ${6:4} up early every morning.", '{"${:1}": "forgot", "${:2}": "visit", "${:3}": "studied", "${:4}": "wakes"}', null),
(87, 4, "I ${7:1} my birthday with my family every year. She ${7:2} French for six months. They ${7:3} the train to Madrid next week. He ${7:4} his homework every day after school.", '{"${:1}": "celebrate", "${:2}": "has been learning", "${:3}": "are taking", "${:4}": "does"}', null),
(87, 4, "She ${8:1} her earrings on the beach last summer. I ${8:2} my breakfast at 7 am every day. They ${8:3} for the job interview next week. He ${8:4} his sister every Sunday.", '{"${:1}": "lost", "${:2}": "have", "${:3}": "are preparing", "${:4}": "visits"}', null),
(87, 4, "I ${9:1} the bus to work every day. She ${9:2} her favorite movie last night. They ${9:3} the concert last Friday. He ${9:4} his laundry on Sundays.", '{"${:1}": "take", "${:2}": "watched", "${:3}": "went to", "${:4}": "does"}', null),
(87, 4, "He ${10:1} the newspaper every morning. She ${10:2} her phone at home. We ${10:3} a lot of food at the party. My sister ${10:4} to take a walk every evening.", '{"${:1}": "reads", "${:2}": "left", "${:3}": "had", "${:4}": "likes"}', null);

-- Preguntas para el test 8 de Inglés
INSERT INTO preguntas (id_test, tipo_pregunta, nombre_pregunta, datos_pregunta, retroalimentacion) VALUES
(88, 4, "I ${1:1} a lot of books last month. She ${1:2} a great job offer. They ${1:3} the concert tickets before they sold out. He ${1:4} a new phone last week.", '{"${:1}": "read", "${:2}": "got", "${:3}": "bought", "${:4}": "bought"}', null),
(88, 4, "I ${2:1} to go to the gym every day. She ${2:2} a cake for her friend's birthday party. They ${2:3} the news on TV when I came in. He ${2:4} a new car last year.", '{"${:1}": "like", "${:2}": "baked", "${:3}": "were watching", "${:4}": "bought"}', null),
(88, 4, "He ${3:1} a lot of weight since he started working out. She ${3:2} her purse at the restaurant. They ${3:3} a lot of fun at the party. I ${3:4} a pizza for dinner last night.", '{"${:1}": "has lost", "${:2}": "left", "${:3}": "had", "${:4}": "ate"}', null),
(88, 4, "I ${4:1} to the movies every weekend. She ${4:2} a new laptop for work. They ${4:3} a lot of photos during their trip. He ${4:4} his keys at the office.", '{"${:1}": "go", "${:2}": "bought", "${:3}": "took", "${:4}": "left"}', null),
(88, 4, "He ${5:1} his favorite shirt on his vacation. I ${5:2} a book on the train this morning. She ${5:3} a sandwich for lunch. They ${5:4} to the beach last weekend.", '{"${:1}": "forgot", "${:2}": "read", "${:3}": "made", "${:4}": "went"}', null),
(88, 4, "I ${6:1} coffee in the morning. She ${6:2} a lot of money on her vacation. They ${6:3} a great time at the amusement park. He ${6:4} his glasses at the store.", '{"${:1}": "drink", "${:2}": "spent", "${:3}": "had", "${:4}": "left"}', null),
(88, 4, "He ${7:1} English for two years. She ${7:2} her phone last night. They ${7:3} a lot of questions during the interview. I ${7:4} to the gym yesterday.", '{"${:1}": "has been learning", "${:2}": "lost", "${:3}": "asked", "${:4}": "went"}', null),
(88, 4, "I ${8:1} to the park every weekend. She ${8:2} her hair at the salon. They ${8:3} a lot of food at the restaurant. He ${8:4} a new watch last month.", '{"${:1}": "go", "${:2}": "got", "${:3}": "ate", "${:4}": "bought"}', null),
(88, 4, "She ${9:1} her keys in her purse. We ${9:2} to the beach every summer. They ${9:3} the new restaurant downtown. He ${9:4} the dishes after dinner every night.", '{"${:1}": "put", "${:2}": "go", "${:3}": "tried", "${:4}": "washes"}', null),
(88, 4, "She ${10:1} to the party last Saturday. We ${10:2} a pizza for dinner every Friday. They ${1:3} their homework at the library. He ${10:4} his bed every morning.", '{"${:1}": "went", "${:2}": "order", "${:3}": "do", "${:4}": "makes"}', null);

-- Preguntas para el test 9 de Inglés
INSERT INTO preguntas (id_test, tipo_pregunta, nombre_pregunta, datos_pregunta, retroalimentacion) VALUES
(89, 4, "I usually ${1:1} breakfast at 7 am. She ${1:2} her phone at the mall. They ${1:3} to the cinema every Friday night. We ${1:4} our vacation in Italy next year.", '{"${:1}": "have", "${:2}": "lost", "${:3}": "go", "${:4}": "are planning"}', null),
(89, 4, "He ${2:1} his homework every day after school. She ${2:2} for her flight at the airport. They ${2:3} a new car last month. We ${2:4} to the gym three times a week.", '{"${:1}": "does", "${:2}": "is checking in", "${:3}": "bought", "${:4}": "go"}', null),
(89, 4, "I ${3:1} my best friend last weekend. She ${3:2} in London for five years. They ${3:3} a book club. We ${3:4} the party last night.", '{"${:1}": "saw", "${:2}": "has lived", "${:3}": "are in", "${:4}": "went to"}', null),
(89, 4, "He ${4:1} to the beach last summer. She ${4:2} a new job next month. They ${4:3} a trip to Hawaii. We ${4:4} dinner at a fancy restaurant tonight.", '{"${:1}": "went", "${:2}": "is starting", "${:3}": "are planning", "${:4}": "are having"}', null),
(89, 4, "I ${5:1} to the supermarket every Sunday morning. She ${5:2} the train to Paris. They ${5:3} to the same school. We ${5:4} a lot of fun at the party last night.", '{"${:1}": "go", "${:2}": "took", "${:3}": "go", "${:4}": "had"}', null),
(89, 4, "He ${6:1} the guitar every day. She ${6:2} her keys in the car. They ${6:3} to the park on Saturdays. We ${6:4} the train to Madrid next month.", '{"${:1}": "plays", "${:2}": "left", "${:3}": "go", "${:4}": "are taking"}', null),
(89, 4, "I ${7:1} in bed until 10 am last Sunday. She ${7:2} her sister every week. They ${7:3} to a concert next month. We ${7:4} pizza for dinner last night.", '{"${:1}": "stayed", "${:2}": "visits", "${:3}": "are going", "${:4}": "had"}', null),
(89, 4, "He ${8:1} his car last year. She ${8:2} to the gym every morning. They ${8:3} a lot of money last month. We ${8:4} to the beach every summer.", '{"${:1}": "sold", "${:2}": "goes", "${:3}": "earned", "${:4}": "go"}', null),
(89, 4, "I ${9:1} for the exam last night. She ${9:2} her hair every week. They ${9:3} the news on TV every morning. He ${9:4} a book before bed every night.", '{"${:1}": "studied", "${:2}": "washes", "${:3}": "watch", "${:4}": "reads"}', null),
(89, 4, "She ${10:1} a cake for her sister's birthday. We ${10:2} to the movies last night. He ${10:3} his favorite book to me. They ${10:4} a lot of food at the party.", '{"${:1}": "baked", "${:2}": "went", "${:3}": "lent", "${:4}": "ate"}', null);

-- Preguntas para el test 10 de Inglés
INSERT INTO preguntas (id_test, tipo_pregunta, nombre_pregunta, datos_pregunta, retroalimentacion) VALUES
(90, 4, "I ${1:1} to the gym every morning. She ${1:2} to travel the world. They ${1:3} to the same school as me. My brother ${1:4} for a job in the city.", '{"${:1}": "go", "${:2}": "loves", "${:3}": "went", "${:4}": "applied"}', null),
(90, 4, "She ${2:1} a big cake for her birthday. He ${2:2} his wallet at the restaurant. We ${2:3} for the train when it arrived. They ${2:4} the news to their parents.", '{"${:1}": "baked", "${:2}": "left", "${:3}": "waited", "${:4}": "broke"}', null),
(90, 4, "I ${3:1} my hair every month. She ${3:2} up early to watch the sunrise. They ${3:3} a great time on their vacation. My sister ${3:4} me to go to the party with her.", '{"${:1}": "dye", "${:2}": "gets", "${:3}": "had", "${:4}": "invited"}', null),
(90, 4, "He ${4:1} up the stairs because the elevator was broken. She ${4:2} her keys on the way to work. We ${4:3} to meet at the coffee shop. They ${4:4} their homework before dinner.", '{"${:1}": "walked", "${:2}": "forgot", "${:3}": "agreed", "${:4}": "finished"}', null),
(90, 4, "I ${5:1} my shoes before I leave the house. She ${5:2} to learn how to play the guitar. They ${5:3} their dog to the park every afternoon. My parents ${5:4} a new car last week.", '{"${:1}": "tie", "${:2}": "wants", "${:3}": "take", "${:4}": "bought"}', null),
(90, 4, "We ${6:1} pizza for dinner last night. He ${6:2} his watch during his vacation. She ${6:3} her dress for the party. They ${6:4} a lot of pictures on their trip.", '{"${:1}": "ate", "${:2}": "lost", "${:3}": "bought", "${:4}": "took"}', null),
(90, 4, "I ${7:1} to learn Spanish. She ${7:2} her makeup before going out. They ${7:3} the bus to the mall. My friend ${7:4} me a book to read.", '{"${:1}": "want", "${:2}": "puts on", "${:3}": "took", "${:4}": "lent"}', null),
(90, 4, "I can't believe he ${8:1} the party so early! She ${8:2} Spanish fluently. We ${8:3} our dog to the vet yesterday. My parents ${8:4} in Italy when they were young.", '{"${:1}": "left", "${:2}": "speaks", "${:3}": "took", "${:4}": "lived"}', null),
(90, 4, "I ${9:1} up early every day to go for a run. She ${9:2} her phone at home yesterday. They ${9:3} for the hills when the storm hit. My brother ${9:4} with me for a week.", '{"${:1}": "wake", "${:2}": "forgot", "${:3}": "headed", "${:4}": "stayed"}', null),
(90, 4, "He ${1:1} to become a doctor. She ${9:2} her phone in the car. We ${9:3} to the beach last summer. They ${9:4} a party for their anniversary.", '{"${:1}": "studies", "${:2}": "left", "${:3}": "went", "${:4}": "had"}', null);

-- Renumera el id de PREGUNTAS
SET foreign_key_checks = 0;

SET @newid := 0;
UPDATE preguntas SET id = (@newid := @newid + 1) ORDER BY id;

SET foreign_key_checks = 1;

