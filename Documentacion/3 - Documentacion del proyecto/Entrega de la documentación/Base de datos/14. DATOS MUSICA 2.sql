-- Datos para la tabla TESTS para los test de Música del tipo tipo de pregunta 1 respuesta única
INSERT INTO tests (id_materia, nombre_test, descripcion, id_usuario_creador) VALUES
(2, 'Música 11', 'Test 11 sobre la materia de Música de respuesta única.', 1),
(2, 'Música 12', 'Test 12 sobre la materia de Música de respuesta única.', 1),
(2, 'Música 13', 'Test 13 sobre la materia de Música de respuesta única.', 1),
(2, 'Música 14', 'Test 14 sobre la materia de Música de respuesta única.', 1),
(2, 'Música 15', 'Test 15 sobre la materia de Música de respuesta única.', 1),
(2, 'Música 16', 'Test 16 sobre la materia de Música de respuesta única.', 1),
(2, 'Música 17', 'Test 17 sobre la materia de Música de respuesta única.', 1),
(2, 'Música 18', 'Test 18 sobre la materia de Música de respuesta única.', 1),
(2, 'Música 19', 'Test 19 sobre la materia de Música de respuesta única.', 1),
(2, 'Música 20', 'Test 20 sobre la materia de Música de respuesta única.', 1);

SET foreign_key_checks = 0;

SET @newid := 0;
UPDATE tests SET id = (@newid := @newid + 1) ORDER BY id;

SET foreign_key_checks = 1;

-- Datos para la tabla PREGUNTAS de la MATERIA "Música" para el tipo de pregunta 1 respuesta única

-- Preguntas para el test 11 de Música
INSERT INTO preguntas (id_test, tipo_pregunta, nombre_pregunta, datos_pregunta, retroalimentacion) VALUES
(131, 1, '¿Cuál de las siguientes canciones es interpretada por Queen?', '{"respuestas": ["Bohemian Rhapsody", "Smells Like Teen Spirit", "Hey Jude", "Imagine"], "respuestas_correctas": "Bohemian Rhapsody"}', 'La canción "Bohemian Rhapsody" es interpretada por Queen.'),
(131, 1, '¿Cuál de los siguientes géneros musicales se originó en Jamaica?', '{"respuestas": ["Reggae", "Salsa", "Country", "Hip Hop"], "respuestas_correctas": "Reggae"}', 'El género musical Reggae se originó en Jamaica.'),
(131, 1, '¿Cuál de los siguientes artistas es conocido como el "Rey del Pop"?', '{"respuestas": ["Michael Jackson", "Elvis Presley", "Bob Marley", "Madonna"], "respuestas_correctas": "Michael Jackson"}', 'Michael Jackson es conocido como el "Rey del Pop".'),
(131, 1, '¿Cuál de las siguientes bandas es considerada pionera del género heavy metal?', '{"respuestas": ["Black Sabbath", "The Beatles", "Nirvana", "Coldplay"], "respuestas_correctas": "Black Sabbath"}', 'La banda Black Sabbath es considerada pionera del género heavy metal.'),
(131, 1, '¿Cuál de las siguientes cantantes es conocida como la "Reina del Soul"?', '{"respuestas": ["Aretha Franklin", "Whitney Houston", "Beyoncé", "Taylor Swift"], "respuestas_correctas": "Aretha Franklin"}', 'Aretha Franklin es conocida como la "Reina del Soul".'),
(131, 1, '¿Cuál de los siguientes instrumentos se toca soplando?', '{"respuestas": ["Flauta", "Guitarra", "Batería", "Piano"], "respuestas_correctas": "Flauta"}', 'La flauta se toca soplando.'),
(131, 1, '¿Cuáles son los artistas principales de la canción "Billie Jean" lanzada en 1982?', '{"respuestas": ["Michael Jackson", "Quincy Jones", "Rod Temperton", "Steve Porcaro"], "respuestas_correctas": "Michael Jackson"}', 'La canción "Billie Jean" fue interpretada por Michael Jackson.'),
(131, 1, '¿Quiénes son los artistas principales de la canción "Like a Virgin" lanzada en 1984?', '{"respuestas": ["Madonna", "Billy Steinberg", "Tom Kelly", "Nile Rodgers"], "respuestas_correctas": "Madonna"}', 'La canción "Like a Virgin" fue interpretada por Madonna.'),
(131, 1, '¿Cuáles son los artistas principales de la canción "Sweet Child O'' Mine" lanzada en 1987?', '{"respuestas": ["Guns N'' Roses", "Axl Rose", "Slash", "Izzy Stradlin"], "respuestas_correctas": "Guns N'' Roses"}', 'La canción "Sweet Child O'' Mine" fue interpretada por Guns N'' Roses.'),
(131, 1, '¿Cuáles son los artistas principales de la canción "Livin'' on a Prayer" lanzada en 1986?', '{"respuestas": ["Bon Jovi", "Jon Bon Jovi", "Richie Sambora", "Desmond Child"], "respuestas_correctas": "Bon Jovi"}', 'La canción "Livin'' on a Prayer" fue interpretada por Bon Jovi.');

-- Preguntas para el test 12 de Música
INSERT INTO preguntas (id_test, tipo_pregunta, nombre_pregunta, datos_pregunta, retroalimentacion) VALUES
(132, 1, '¿Cuál es el título de la canción más vendida de todos los tiempos?', '{"respuestas": ["White Christmas", "Imagine", "Bohemian Rhapsody", "Thriller"], "respuestas_correctas": "White Christmas"}', 'La canción más vendida de todos los tiempos es "White Christmas".'),
(132, 1, '¿Quién es el cantante principal de la banda de rock Guns N'' Roses?', '{"respuestas": ["Axl Rose", "Slash", "Izzy Stradlin", "Duff McKagan"], "respuestas_correctas": "Axl Rose"}', 'El cantante principal de la banda Guns N'' Roses es Axl Rose.'),
(132, 1, '¿Cuál es el nombre completo de la cantante estadounidense conocida como Lady Gaga?', '{"respuestas": ["Stefani Joanne Angelina Germanotta", "Katheryn Elizabeth Hudson", "Robyn Rihanna Fenty", "Beyoncé Giselle Knowles-Carter"], "respuestas_correctas": "Stefani Joanne Angelina Germanotta"}', 'El nombre completo de la cantante Lady Gaga es Stefani Joanne Angelina Germanotta.'),
(132, 1, '¿Cuál es el álbum debut de la cantante británica Adele?', '{"respuestas": ["19", "21", "25", "30"], "respuestas_correctas": "19"}', 'El álbum debut de Adele es "19".'),
(132, 1, '¿Quién es el autor y compositor de la canción "Bohemian Rhapsody" de la banda Queen?', '{"respuestas": ["Freddie Mercury", "Brian May", "Roger Taylor", "John Deacon"], "respuestas_correctas": "Freddie Mercury"}', 'El autor y compositor de la canción "Bohemian Rhapsody" es Freddie Mercury.'),
(132, 1, '¿Cuál es el título del primer sencillo lanzado por Michael Jackson en su carrera como solista?', '{"respuestas": ["Got to Be There", "Billie Jean", "Thriller", "Beat It"], "respuestas_correctas": "Got to Be There"}', 'El título del primer sencillo lanzado por Michael Jackson es "Got to Be There".'),
(132, 1, '¿Quién es el cantante principal de la banda británica Coldplay?', '{"respuestas": ["Chris Martin", "Jonny Buckland", "Guy Berryman", "Will Champion"], "respuestas_correctas": "Chris Martin"}', 'El cantante principal de la banda Coldplay es Chris Martin.'),
(132, 1, '¿Cuál es la nacionalidad del cantante y compositor Ed Sheeran?', '{"respuestas": ["Británico", "Estadounidense", "Canadiense", "Australiano"], "respuestas_correctas": "Británico"}', 'La nacionalidad del cantante y compositor Ed Sheeran es británico.'),
(132, 1, '¿Cuál es el nombre completo del cantante británico conocido como Freddie Mercury?', '{"respuestas": ["Farrokh Bulsara", "David Robert Jones", "John Winston Lennon", "Paul David Hewson"], "respuestas_correctas": "Farrokh Bulsara"}', 'El nombre completo del cantante Freddie Mercury es Farrokh Bulsara.'),
(132, 1, '¿Quién es el autor y compositor de la canción "Yesterday"?', '{"respuestas": ["Paul McCartney", "John Lennon", "George Harrison", "Ringo Starr"], "respuestas_correctas": "Paul McCartney"}', 'El autor y compositor de la canción "Yesterday" es Paul McCartney.');

-- Preguntas para el test 13 de Música
INSERT INTO preguntas (id_test, tipo_pregunta, nombre_pregunta, datos_pregunta, retroalimentacion) VALUES
(133, 1, '¿Cuáles de los siguientes artistas son conocidos por su música country?', '{"respuestas": ["Taylor Swift", "Bruno Mars", "Kanye West", "Blake Shelton"], "respuestas_correctas": "Blake Shelton"}', 'El artista Blake Shelton es conocido por su música country.'),
(133, 1, '¿Cuáles de las siguientes canciones fueron éxitos en el género del rock alternativo en los últimos años?', '{"respuestas": ["Believer", "Havana", "Closer", "Rockstar"], "respuestas_correctas": "Believer"}', 'La canción "Believer" fue un éxito en el género del rock alternativo en los últimos años.'),
(133, 1, '¿Cuáles de los siguientes artistas son reconocidos por su música dance/electrónica en la actualidad?', '{"respuestas": ["Martin Garrix", "Adele", "Sam Smith", "Eminem"], "respuestas_correctas": "Martin Garrix"}', 'El artista Martin Garrix es reconocido por su música dance/electrónica en la actualidad.'),
(133, 1, '¿Cuáles de las siguientes canciones pertenecen al género del R&B en la música actual?', '{"respuestas": ["Blinding Lights", "Shape of You", "Someone Like You", "Bohemian Rhapsody"], "respuestas_correctas": "Blinding Lights"}', 'La canción "Blinding Lights" pertenece al género del R&B en la música actual.'),
(133, 1, '¿Cuáles de los siguientes artistas son conocidos por su música indie pop en la actualidad?', '{"respuestas": ["Lorde", "Beyoncé", "Justin Bieber", "Rihanna"], "respuestas_correctas": "Lorde"}', 'La artista Lorde es conocida por su música indie pop en la actualidad.'),
(133, 1, '¿Cuáles de las siguientes canciones pertenecen al género del funk en los 60 y 70?', '{"respuestas": ["Superstition", "Hotel California", "Wonderwall", "Billie Jean"], "respuestas_correctas": "Superstition"}', 'La canción "Superstition" pertenece al género del funk en los 60 y 70.'),
(133, 1, '¿Cuáles de los siguientes artistas fueron parte del movimiento de la música disco en los 70?', '{"respuestas": ["Bee Gees", "Queen", "AC/DC", "The Doors"], "respuestas_correctas": "Bee Gees"}', 'El grupo Bee Gees fue parte del movimiento de la música disco en los 70.'),
(133, 1, '¿Cuáles de las siguientes canciones pertenecen al género del indie rock?', '{"respuestas": ["Fluorescent Adolescent", "Havana", "Smooth", "Despacito"], "respuestas_correctas": "Fluorescent Adolescent"}', 'La canción "Fluorescent Adolescent" pertenece al género del indie rock.'),
(133, 1, 'Género musical de Maluma', '{"respuestas": ["Pop", "Reggaeton", "Rock", "Salsa"], "respuestas_correctas": "Reggaeton"}', 'Maluma es conocido por su música en el género de reggaeton.'),
(133, 1, 'Canciones de Bad Bunny', '{"respuestas": ["Mi Gente", "Dákiti", "Havana", "Blinding Lights"], "respuestas_correctas": "Dákiti"}', 'Dákiti es una canción exitosa de Bad Bunny.');

-- Preguntas para el test 14 de Música
INSERT INTO preguntas (id_test, tipo_pregunta, nombre_pregunta, datos_pregunta, retroalimentacion) VALUES
(134, 1, '¿Cuáles de las siguientes canciones pertenecen al género del reguetón?', '{"respuestas": ["Despacito", "Bohemian Rhapsody", "Shape of You", "Thinking Out Loud"], "respuestas_correctas": "Despacito"}', 'La canción "Despacito" pertenece al género del reguetón.'),
(134, 1, '¿Cuáles de los siguientes artistas son reconocidos por su música pop-rock?', '{"respuestas": ["Maroon 5", "Adele", "Shakira", "Metallica"], "respuestas_correctas": "Maroon 5"}', 'El grupo Maroon 5 es reconocido por su música pop-rock.'),
(134, 1, '¿Cuáles de las siguientes canciones fueron éxitos en el género del rap en los últimos años?', '{"respuestas": ["Sicko Mode", "Hello", "Rolling in the Deep", "Uptown Funk"], "respuestas_correctas": "Sicko Mode"}', 'La canción "Sicko Mode" fue un éxito en el género del rap en los últimos años.'),
(134, 1, '¿Cuáles de los siguientes artistas son conocidos por su música pop latino?', '{"respuestas": ["Ricky Martin", "Eminem", "Justin Bieber", "Coldplay"], "respuestas_correctas": "Ricky Martin"}', 'El artista Ricky Martin es conocido por su música pop latino.'),
(134, 1, '¿Cuáles de las siguientes canciones pertenecen al género del rock clásico?', '{"respuestas": ["Stairway to Heaven", "Despacito", "Havana", "Believer"], "respuestas_correctas": "Stairway to Heaven"}', 'La canción "Stairway to Heaven" pertenece al género del rock clásico.'),
(134, 1, '¿Cuáles de los siguientes artistas son conocidos por su música hip-hop?', '{"respuestas": ["Jay-Z", "Ed Sheeran", "Ariana Grande", "Celine Dion"], "respuestas_correctas": "Jay-Z"}', 'El artista Jay-Z es conocido por su música hip-hop.'),
(134, 1, '¿Cuáles de las siguientes canciones pertenecen al género del pop-rock?', '{"respuestas": ["Mr. Brightside", "Smooth Criminal", "Bohemian Rhapsody", "Hotline Bling"], "respuestas_correctas": "Mr. Brightside"}', 'La canción "Mr. Brightside" pertenece al género del pop-rock.'),
(134, 1, '¿Cuáles de los siguientes artistas son reconocidos por su música electrónica?', '{"respuestas": ["Daft Punk", "Adele", "Shakira", "Metallica"], "respuestas_correctas": "Daft Punk"}', 'El dúo Daft Punk es reconocido por su música electrónica.'),
(134, 1, '¿Cuáles de las siguientes canciones fueron éxitos en el género del pop en los últimos años?', '{"respuestas": ["Shape of You", "Thunderstruck", "Livin'' on a Prayer", "Sweet Child O'' Mine"], "respuestas_correctas": "Shape of You"}', 'La canción "Shape of You" fue un éxito en el género del pop en los últimos años.'),
(134, 1, '¿Cuáles de los siguientes artistas son conocidos por su música R&B?', '{"respuestas": ["Beyoncé", "Imagine Dragons", "Coldplay", "AC/DC"], "respuestas_correctas": "Beyoncé"}', 'La artista Beyoncé es conocida por su música R&B.');

-- Preguntas para el test 15 de Música
INSERT INTO preguntas (id_test, tipo_pregunta, nombre_pregunta, datos_pregunta, retroalimentacion) VALUES
(135, 1, '¿Quién es el compositor de la famosa pieza clásica "Für Elise"?', '{"respuestas": ["Ludwig van Beethoven", "Wolfgang Amadeus Mozart", "Johann Sebastian Bach", "Franz Schubert"], "respuestas_correctas": "Ludwig van Beethoven"}', 'El compositor de la famosa pieza clásica "Für Elise" es Ludwig van Beethoven.'),
(135, 1, '¿Cuál es el género musical característico de la banda ABBA?', '{"respuestas": ["Pop", "Rock", "Country", "Jazz"], "respuestas_correctas": "Pop"}', 'El género musical característico de la banda ABBA es el pop.'),
(135, 1, '¿Cuál es el nombre completo del cantante británico conocido como Elton John?', '{"respuestas": ["Reginald Kenneth Dwight", "David Robert Jones", "Paul David Hewson", "Gordon Matthew Thomas Sumner"], "respuestas_correctas": "Reginald Kenneth Dwight"}', 'El nombre completo del cantante Elton John es Reginald Kenneth Dwight.'),
(135, 1, '¿Quién es el compositor de la famosa sinfonía "La Novena"?', '{"respuestas": ["Ludwig van Beethoven", "Wolfgang Amadeus Mozart", "Johann Sebastian Bach", "Franz Schubert"], "respuestas_correctas": "Ludwig van Beethoven"}', 'El compositor de la sinfonía "La Novena" es Ludwig van Beethoven.'),
(135, 1, '¿Cuál es el título del primer álbum de estudio de la cantante estadounidense Taylor Swift?', '{"respuestas": ["Taylor Swift", "Fearless", "Speak Now", "1989"], "respuestas_correctas": "Taylor Swift"}', 'El título del primer álbum de estudio de Taylor Swift es "Taylor Swift".'),
(135, 1, '¿Quién es el autor y compositor de la canción "Like a Rolling Stone"?', '{"respuestas": ["Bob Dylan", "Bruce Springsteen", "Johnny Cash", "David Bowie"], "respuestas_correctas": "Bob Dylan"}', 'El autor y compositor de la canción "Like a Rolling Stone" es Bob Dylan.'),
(135, 1, '¿Cuál es el título de la canción icónica interpretada por Queen y lanzada en 1975?', '{"respuestas": ["Bohemian Rhapsody", "We Will Rock You", "Don''t Stop Me Now", "Another One Bites the Dust"], "respuestas_correctas": "Bohemian Rhapsody"}', 'El título de la canción icónica interpretada por Queen y lanzada en 1975 es "Bohemian Rhapsody".'),
(135, 1, '¿Cuál es el nombre completo del cantante y actor conocido como Elvis Presley?', '{"respuestas": ["Elvis Aaron Presley", "John Winston Lennon", "Paul David Hewson", "Robert Nesta Marley"], "respuestas_correctas": "Elvis Aaron Presley"}', 'El nombre completo del cantante y actor Elvis Presley es Elvis Aaron Presley.'),
(135, 1, '¿Quién es el cantante principal de la banda de rock británica Led Zeppelin?', '{"respuestas": ["Robert Plant", "Jimmy Page", "John Paul Jones", "John Bonham"], "respuestas_correctas": "Robert Plant"}', 'El cantante principal de la banda Led Zeppelin es Robert Plant.'),
(135, 1, '¿Cuál es el título de la canción de éxito mundial interpretada por Luis Fonsi y Daddy Yankee?', '{"respuestas": ["Despacito", "La Bamba", "Livin'' on a Prayer", "Sweet Child O'' Mine"], "respuestas_correctas": "Despacito"}', 'El título de la canción de éxito mundial interpretada por Luis Fonsi y Daddy Yankee es "Despacito".');

-- Preguntas para el test 16 de Música
INSERT INTO preguntas (id_test, tipo_pregunta, nombre_pregunta, datos_pregunta, retroalimentacion) VALUES
(136, 1, '¿Cuáles de las siguientes canciones son populares en la música electrónica?', '{"respuestas": ["Wake Me Up", "Someone Like You", "Shape of You", "Hotel California"], "respuestas_correctas": "Wake Me Up"}', 'La canción "Wake Me Up" es popular en la música electrónica.'),
(136, 1, '¿Cuáles de los siguientes artistas son reconocidos en el género del R&B?', '{"respuestas": ["Rihanna", "Metallica", "Shawn Mendes", "Ed Sheeran"], "respuestas_correctas": "Rihanna"}', 'La artista Rihanna es reconocida en el género del R&B.'),
(136, 1, '¿Cuáles de las siguientes canciones son éxitos en el género del reggae?', '{"respuestas": ["No Woman, No Cry", "Dance Monkey", "Bohemian Rhapsody", "Thunderstruck"], "respuestas_correctas": "No Woman, No Cry"}', 'La canción "No Woman, No Cry" es un éxito en el género del reggae.'),
(136, 1, '¿Cuáles de los siguientes artistas son conocidos por su música en el género del country?', '{"respuestas": ["Taylor Swift", "Maluma", "Eminem", "Kanye West"], "respuestas_correctas": "Taylor Swift"}', 'La artista Taylor Swift es conocida por su música en el género del country.'),
(136, 1, 'Género musical de Maluma', '{"respuestas": ["Pop", "Reggaeton", "Rock", "Salsa"], "respuestas_correctas": "Reggaeton"}', 'Maluma es conocido por su música en el género de reggaeton.'),
(136, 1, 'Canciones de Bad Bunny', '{"respuestas": ["Mi Gente", "Dákiti", "Havana", "Blinding Lights"], "respuestas_correctas": "Dákiti"}', 'Dákiti es una canción exitosa de Bad Bunny.'),
(136, 1, '¿Cuáles de las siguientes canciones fueron éxitos del cantante Ed Sheeran en los últimos años?', '{"respuestas": ["Shape of You", "Hello", "Uptown Funk", "Rolling in the Deep"], "respuestas_correctas": "Shape of You"}', 'La canción "Shape of You" fue un éxito del cantante Ed Sheeran en los últimos años.'),
(136, 1, '¿Cuáles de los siguientes artistas son reconocidos por su música hip-hop en la actualidad?', '{"respuestas": ["Drake", "Taylor Swift", "Coldplay", "Maroon 5"], "respuestas_correctas": "Drake"}', 'El artista Drake es reconocido por su música hip-hop en la actualidad.'),
(136, 1, '¿Cuáles de las siguientes canciones fueron éxitos de la banda Queen en los 80?', '{"respuestas": ["Another One Bites the Dust", "Wonderwall", "Livin'' on a Prayer", "Billie Jean"], "respuestas_correctas": "Another One Bites the Dust"}', 'La canción "Another One Bites the Dust" fue un éxito de la banda Queen en los 80.'),
(136, 1, '¿Cuál es el título de la canción más exitosa de Michael Jackson?', '{"respuestas": ["Thriller", "Billie Jean", "Beat It", "Smooth Criminal"], "respuestas_correctas": "Billie Jean"}', 'La canción más exitosa de Michael Jackson es "Billie Jean".');

-- Preguntas para el test 17 de Música
INSERT INTO preguntas (id_test, tipo_pregunta, nombre_pregunta, datos_pregunta, retroalimentacion) VALUES
(137, 1, '¿Quién es el guitarrista principal de la banda Queen?', '{"respuestas": ["Brian May", "Freddie Mercury", "John Deacon", "Roger Taylor"], "respuestas_correctas": "Brian May"}', 'El guitarrista principal de Queen es Brian May.'),
(137, 1, '¿Cuál es el nombre del álbum debut de Nirvana lanzado en 1991?', '{"respuestas": ["Nevermind", "In Utero", "Bleach", "MTV Unplugged in New York"], "respuestas_correctas": "Nevermind"}', 'El álbum debut de Nirvana lanzado en 1991 se titula "Nevermind".'),
(137, 1, '¿Cuál es el nombre del grupo musical formado por Mick Jagger, Keith Richards, Charlie Watts y Ron Wood?', '{"respuestas": ["The Rolling Stones", "The Beatles", "Led Zeppelin", "Pink Floyd"], "respuestas_correctas": "The Rolling Stones"}', 'El grupo musical formado por Mick Jagger, Keith Richards, Charlie Watts y Ron Wood se llama The Rolling Stones.'),
(137, 1, '¿Cuál es el título de la canción más conocida de The Beatles?', '{"respuestas": ["Hey Jude", "Let It Be", "Yesterday", "Come Together"], "respuestas_correctas": "Hey Jude"}', 'La canción más conocida de The Beatles es "Hey Jude".'),
(137, 1, '¿Cuál es el nombre artístico de Stefani Germanotta, una famosa cantante pop?', '{"respuestas": ["Lady Gaga", "Katy Perry", "Rihanna", "Taylor Swift"], "respuestas_correctas": "Lady Gaga"}', 'El nombre artístico de Stefani Germanotta es Lady Gaga.'),
(137, 1, '¿Cuál es el título de la canción más popular de Queen?', '{"respuestas": ["Bohemian Rhapsody", "We Will Rock You", "Another One Bites the Dust", "Don''t Stop Me Now"], "respuestas_correctas": "Bohemian Rhapsody"}', 'La canción más popular de Queen es "Bohemian Rhapsody".'),
(137, 1, '¿Quién es el cantante principal de la banda U2?', '{"respuestas": ["Bono", "The Edge", "Adam Clayton", "Larry Mullen Jr."], "respuestas_correctas": "Bono"}', 'El cantante principal de la banda U2 es Bono.'),
(137, 1, '¿Quién es el compositor de la ópera "La Traviata"?', '{"respuestas": ["Giuseppe Verdi", "Wolfgang Amadeus Mozart", "Ludwig van Beethoven", "Johann Sebastian Bach"], "respuestas_correctas": "Giuseppe Verdi"}', 'El compositor de la ópera "La Traviata" es Giuseppe Verdi.'),
(137, 1, '¿Qué banda británica lanzó el álbum "The Dark Side of the Moon"?', '{"respuestas": ["Pink Floyd", "The Beatles", "Led Zeppelin", "Queen"], "respuestas_correctas": "Pink Floyd"}', 'El álbum "The Dark Side of the Moon" fue lanzado por la banda Pink Floyd.'),
(137, 1, '¿Cuál es la canción más exitosa de Madonna?', '{"respuestas": ["Like a Prayer", "Vogue", "Material Girl", "Like a Virgin"], "respuestas_correctas": "Like a Prayer"}', 'La canción más exitosa de Madonna es "Like a Prayer".');

-- Preguntas para el test 18 de Música
INSERT INTO preguntas (id_test, tipo_pregunta, nombre_pregunta, datos_pregunta, retroalimentacion) VALUES
(138, 1, '¿Quién es el cantante principal de la banda de rock Guns N'' Roses?', '{"respuestas": ["Axl Rose", "Slash", "Duff McKagan", "Izzy Stradlin"], "respuestas_correctas": "Axl Rose"}', 'El cantante principal de Guns N'' Roses es Axl Rose.'),
(138, 1, '¿Cuál es el título del primer sencillo de Beyoncé como artista en solitario?', '{"respuestas": ["Crazy in Love", "Single Ladies (Put a Ring on It)", "Irreplaceable", "Halo"], "respuestas_correctas": "Crazy in Love"}', 'El primer sencillo de Beyoncé como artista en solitario se titula "Crazy in Love".'),
(138, 1, '¿Quién es el compositor de la famosa obra "Clair de Lune"?', '{"respuestas": ["Claude Debussy", "Johann Sebastian Bach", "Wolfgang Amadeus Mozart", "Ludwig van Beethoven"], "respuestas_correctas": "Claude Debussy"}', 'El compositor de la obra "Clair de Lune" es Claude Debussy.'),
(138, 1, '¿Cuál es la canción más conocida de Elvis Presley?', '{"respuestas": ["Jailhouse Rock", "Love Me Tender", "Hound Dog", "Suspicious Minds"], "respuestas_correctas": "Love Me Tender"}', 'La canción más conocida de Elvis Presley es "Love Me Tender".'),
(138, 1, '¿Quién es el cantante principal de la banda de rock AC/DC?', '{"respuestas": ["Brian Johnson", "Bon Scott", "Angus Young", "Malcolm Young"], "respuestas_correctas": "Brian Johnson"}', 'El cantante principal de AC/DC es Brian Johnson.'),
(138, 1, '¿Quién es el vocalista de la banda Queen?', '{"respuestas": ["Freddie Mercury", "Mick Jagger", "David Bowie", "Elton John"], "respuestas_correctas": "Freddie Mercury"}', 'El vocalista de la banda Queen es Freddie Mercury.'),
(138, 1, '¿Cuál es el álbum más vendido de todos los tiempos?', '{"respuestas": ["Thriller", "Back in Black", "The Dark Side of the Moon", "Abbey Road"], "respuestas_correctas": "Thriller"}', 'El álbum más vendido de todos los tiempos es "Thriller" de Michael Jackson.'),
(138, 1, '¿Quién es la cantante femenina con más premios Grammy?', '{"respuestas": ["Beyoncé", "Adele", "Taylor Swift", "Whitney Houston"], "respuestas_correctas": "Beyoncé"}', 'La cantante femenina con más premios Grammy es Beyoncé.'),
(138, 1, '¿Cuál es la banda de rock considerada como "los padres del heavy metal"?', '{"respuestas": ["Black Sabbath", "Led Zeppelin", "Deep Purple", "Metallica"], "respuestas_correctas": "Black Sabbath"}', 'La banda de rock considerada como "los padres del heavy metal" es Black Sabbath.'),
(138, 1, '¿Quién es el cantante principal de la banda U2?', '{"respuestas": ["Bono", "Chris Martin", "Thom Yorke", "Eddie Vedder"], "respuestas_correctas": "Bono"}', 'El cantante principal de la banda U2 es Bono.');

-- Preguntas para el test 19 de Música
INSERT INTO preguntas (id_test, tipo_pregunta, nombre_pregunta, datos_pregunta, retroalimentacion) VALUES
(139, 1, '¿Cuáles de los siguientes artistas son reconocidos en el género del reggae?', '{"respuestas": ["Bob Marley", "Eminem", "Justin Bieber", "Metallica"], "respuestas_correctas": "Bob Marley"}', 'El artista Bob Marley es reconocido en el género del reggae.'),
(139, 1, '¿Cuáles de los siguientes artistas son conocidos por su música en el género de la salsa?', '{"respuestas": ["Marc Anthony", "Ed Sheeran", "Ariana Grande", "Justin Bieber"], "respuestas_correctas": "Marc Anthony"}', 'El artista Marc Anthony es conocido por su música en el género de la salsa.'),
(139, 1, '¿Cuáles de las siguientes canciones son populares en la música bachata?', '{"respuestas": ["Propuesta Indecente", "Uptown Funk", "Hello", "Bohemian Rhapsody"], "respuestas_correctas": "Propuesta Indecente"}', 'La canción "Propuesta Indecente" es popular en la música bachata.'),
(139, 1, '¿Cuáles de los siguientes artistas son reconocidos en el género del trap latino?', '{"respuestas": ["Bad Bunny", "Taylor Swift", "Coldplay", "Metallica"], "respuestas_correctas": "Bad Bunny"}', 'El artista Bad Bunny es reconocido en el género del trap latino.'),
(139, 1, '¿Cuáles de las siguientes canciones son éxitos en la música latina pop?', '{"respuestas": ["Taki Taki", "Thunderstruck", "Livin'' on a Prayer", "Sweet Child O'' Mine"], "respuestas_correctas": "Taki Taki"}', 'La canción "Taki Taki" es un éxito en la música latina pop.'),
(139, 1, '¿Cuáles de los siguientes artistas son conocidos por su música en el género de la cumbia?', '{"respuestas": ["Carlos Vives", "Imagine Dragons", "Coldplay", "AC/DC"], "respuestas_correctas": "Carlos Vives"}', 'El artista Carlos Vives es conocido por su música en el género de la cumbia.'),
(139, 1, '¿Quiénes son los artistas principales de la canción "I Wanna Dance with Somebody" lanzada en 1987?', '{"respuestas": ["Whitney Houston", "George Merrill", "Shannon Rubicam", "Narada Michael Walden"], "respuestas_correctas": "Whitney Houston"}', 'La canción "I Wanna Dance with Somebody" fue interpretada por Whitney Houston.'),
(139, 1, '¿Quiénes son los artistas principales de la canción "Wonderwall" lanzada en 1995?', '{"respuestas": ["Oasis", "Noel Gallagher", "Liam Gallagher", "Bonehead"], "respuestas_correctas": "Oasis"}', 'La canción "Wonderwall" fue interpretada por Oasis, con Noel Gallagher como el principal compositor y vocalista.'),
(139, 1, '¿Cuáles de las siguientes canciones son éxitos en el género del rock alternativo?', '{"respuestas": ["Radioactive", "Havana", "Blinding Lights", "WAP"], "respuestas_correctas": "Radioactive"}', 'La canción "Radioactive" es un éxito en el género del rock alternativo.'),
(139, 1, '¿Cuáles de los siguientes artistas son conocidos por su música en el género del hip-hop?', '{"respuestas": ["Kendrick Lamar", "Adele", "Maroon 5", "Queen"], "respuestas_correctas": "Kendrick Lamar"}', 'El artista Kendrick Lamar es conocido por su música en el género del hip-hop.');

-- Preguntas para el test 20 de Música
INSERT INTO preguntas (id_test, tipo_pregunta, nombre_pregunta, datos_pregunta, retroalimentacion) VALUES
(140, 1, 'Canciones de Beyoncé', '{"respuestas": ["Single Ladies", "Bohemian Rhapsody", "Hello", "Shape of You"], "respuestas_correctas": "Single Ladies"}', 'Single Ladies es una canción famosa de Beyoncé.'),
(140, 1, 'Colaboración de Ed Sheeran', '{"respuestas": ["Despacito", "Perfect", "Bohemian Rhapsody", "Bad Guy"], "respuestas_correctas": "Perfect"}', 'Ed Sheeran ha colaborado en la canción Perfect.'),
(140, 1, '¿Cuáles de las siguientes canciones fueron éxitos de la banda The Beatles en los 60?', '{"respuestas": ["Hey Jude", "Smells Like Teen Spirit", "Bohemian Rhapsody", "Vogue"], "respuestas_correctas": "Hey Jude"}', 'La canción "Hey Jude" fue un éxito de la banda The Beatles en los 60.'),
(140, 1, '¿Cuáles de los siguientes artistas son conocidos por su música pop actual?', '{"respuestas": ["Taylor Swift", "Kendrick Lamar", "Ebony", "Drake"], "respuestas_correctas": "Taylor Swift"}', 'Los artistas Taylor Swift y Ed Sheeran son conocidos por su música pop actual.'),
(140, 1, '¿Cuáles de las siguientes canciones fueron éxitos en el género del hip-hop en los últimos años?', '{"respuestas": ["Old Town Road", "Shape of You", "Someone Like You", "Blinding Lights"], "respuestas_correctas": "Old Town Road"}', 'La canción "Old Town Road" fue un éxito en el género del hip-hop en los últimos años.'),
(140, 1, '¿Cuáles de los siguientes artistas son reconocidos por su música electrónica contemporánea?', '{"respuestas": ["Calvin Harris", "Adele", "Bruno Mars", "Eminem"], "respuestas_correctas": "Calvin Harris"}', 'El artista Calvin Harris es reconocido por su música electrónica contemporánea.'),
(140, 1, '¿Cuáles de las siguientes canciones pertenecen al género del reguetón en la música actual?', '{"respuestas": ["Despacito", "Bohemian Rhapsody", "Sweet Child O'' Mine", "Wonderwall"], "respuestas_correctas": "Despacito"}', 'La canción "Despacito" pertenece al género del reguetón en la música actual.'),
(140, 1, '¿Cuáles de los siguientes artistas son conocidos por su música indie en la actualidad?', '{"respuestas": ["Arctic Monkeys", "Beyoncé", "Justin Bieber", "Rihanna"], "respuestas_correctas": "Arctic Monkeys"}', 'El grupo Arctic Monkeys es conocido por su música indie en la actualidad.'),
(140, 1, '¿Cuáles de las siguientes canciones fueron éxitos de la cantante Billie Eilish en los últimos años?', '{"respuestas": ["Bad Guy", "Hello", "Uptown Funk", "Rolling in the Deep"], "respuestas_correctas": "Bad Guy"}', 'La canción "Bad Guy" fue un éxito de la cantante Billie Eilish en los últimos años.'),
(140, 1, '¿Cuáles de los siguientes artistas son reconocidos por su música rap en la actualidad?', '{"respuestas": ["Kendrick Lamar", "Taylor Swift", "Coldplay", "Maroon 5"], "respuestas_correctas": "Kendrick Lamar"}', 'El artista Kendrick Lamar es reconocido por su música rap en la actualidad.');

-- Renumera el id de PREGUNTAS
SET foreign_key_checks = 0;

SET @newid := 0;
UPDATE preguntas SET id = (@newid := @newid + 1) ORDER BY id;

SET foreign_key_checks = 1;
