-- Datos para la tabla TESTS para los test de Música del tipo tipo de pregunta 2 multiples respuestas
INSERT INTO tests (id_materia, nombre_test, descripcion, id_usuario_creador) VALUES
(2, 'Música 01', 'Test 01 sobre la materia de Música de conceptio/definición.', 1),
(2, 'Música 02', 'Test 02 sobre la materia de Música de conceptio/definición.', 1),
(2, 'Música 03', 'Test 03 sobre la materia de Música de conceptio/definición.', 1),
(2, 'Música 04', 'Test 04 sobre la materia de Música de conceptio/definición.', 1),
(2, 'Música 05', 'Test 05 sobre la materia de Música de conceptio/definición.', 1),
(2, 'Música 06', 'Test 06 sobre la materia de Música de conceptio/definición.', 1),
(2, 'Música 07', 'Test 07 sobre la materia de Música de conceptio/definición.', 1),
(2, 'Música 08', 'Test 08 sobre la materia de Música de conceptio/definición.', 1),
(2, 'Música 09', 'Test 09 sobre la materia de Música de conceptio/definición.', 1),
(2, 'Música 10', 'Test 10 sobre la materia de Música de conceptio/definición.', 1);

SET foreign_key_checks = 0;

SET @newid := 0;
UPDATE tests SET id = (@newid := @newid + 1) ORDER BY id;

SET foreign_key_checks = 1;

-- Datos para la tabla PREGUNTAS de la MATERIA "Música" para el tipo de pregunta 2 multiples respuestas

-- Preguntas para el test 1 de Música
INSERT INTO preguntas (id_test, tipo_pregunta, nombre_pregunta, datos_pregunta, retroalimentacion) VALUES
(121, 2, '¿Cuáles son los artistas principales de la canción "Smells Like Teen Spirit" lanzada en 1991?', '{"respuestas": ["Nirvana", "Kurt Cobain", "Dave Grohl", "Krist Novoselic"], "respuestas_correctas": ["Nirvana", "Kurt Cobain", "Dave Grohl"]}', 'La canción "Smells Like Teen Spirit" fue interpretada por Nirvana, liderada por Kurt Cobain, con Dave Grohl en la batería.'),
(121, 2, '¿Cuáles son los artistas principales de la canción "I Will Always Love You" lanzada en 1992?', '{"respuestas": ["Whitney Houston", "Dolly Parton", "David Foster", "Linda Ronstadt"], "respuestas_correctas": ["Whitney Houston", "Dolly Parton"]}', 'La canción "I Will Always Love You" fue interpretada por Whitney Houston y originalmente escrita por Dolly Parton.'),
(121, 2, '¿Quiénes son los artistas principales de la canción "Black Hole Sun" lanzada en 1994?', '{"respuestas": ["Soundgarden", "Chris Cornell", "Kim Thayil", "Ben Shepherd"], "respuestas_correctas": ["Soundgarden", "Chris Cornell"]}', 'La canción "Black Hole Sun" fue interpretada por Soundgarden, con Chris Cornell como el vocalista principal.'),
(121, 2, '¿Quiénes son los artistas principales de la canción "Under the Bridge" lanzada en 1992?', '{"respuestas": ["Red Hot Chili Peppers", "Anthony Kiedis", "Flea", "John Frusciante"], "respuestas_correctas": ["Red Hot Chili Peppers", "Anthony Kiedis"]}', 'La canción "Under the Bridge" fue interpretada por Red Hot Chili Peppers, con Anthony Kiedis como el vocalista principal.'),
(121, 2, '¿Cuáles son los artistas principales de la canción "No Rain" lanzada en 1992?', '{"respuestas": ["Blind Melon", "Shannon Hoon", "Brad Smith", "Christopher Thorn"], "respuestas_correctas": ["Blind Melon", "Shannon Hoon"]}', 'La canción "No Rain" fue interpretada por Blind Melon, con Shannon Hoon como el vocalista principal.'),
(121, 2, '¿Quiénes son los artistas principales de la canción "Every Breath You Take" lanzada en 1983?', '{"respuestas": ["The Police", "Sting", "Andy Summers", "Stewart Copeland"], "respuestas_correctas": ["The Police", "Sting"]}', 'La canción "Every Breath You Take" fue interpretada por The Police, con Sting como el vocalista principal.'),
(121, 2, '¿Cuáles de los siguientes artistas formaron parte del grupo musical "The Beatles"?', '{"respuestas": ["John Lennon", "Paul McCartney", "George Harrison", "Ringo Starr"], "respuestas_correctas": ["John Lennon", "Paul McCartney", "George Harrison", "Ringo Starr"]}', 'Los artistas John Lennon, Paul McCartney, George Harrison y Ringo Starr formaron parte del grupo musical "The Beatles".'),
(121, 2, '¿Cuáles de las siguientes canciones son del género hip hop?', '{"respuestas": ["Empire State of Mind", "Lose Yourself", "Sweet Child O'' Mine", "Bohemian Rhapsody"], "respuestas_correctas": ["Empire State of Mind", "Lose Yourself"]}', 'Las canciones "Empire State of Mind" y "Lose Yourself" son del género hip hop.'),
(121, 2, '¿Cuáles de las siguientes bandas son consideradas pioneras del género punk?', '{"respuestas": ["Ramones", "Sex Pistols", "The Clash", "Nirvana"], "respuestas_correctas": ["Ramones", "Sex Pistols", "The Clash"]}', 'Las bandas Ramones, Sex Pistols y The Clash son consideradas pioneras del género punk.'),
(121, 2, '¿Cuáles de los siguientes artistas han ganado el premio Grammy en la categoría de Mejor Álbum del Año?', '{"respuestas": ["Adele", "Taylor Swift", "Beyoncé", "Kanye West"], "respuestas_correctas": ["Adele", "Taylor Swift", "Beyoncé"]}', 'Los artistas Adele, Taylor Swift y Beyoncé han ganado el premio Grammy en la categoría de Mejor Álbum del Año.');

-- Preguntas para el test 2 de Música
INSERT INTO preguntas (id_test, tipo_pregunta, nombre_pregunta, datos_pregunta, retroalimentacion) VALUES
(122, 2, '¿Cuáles de las siguientes canciones son del género reggaetón?', '{"respuestas": ["Despacito", "Gasolina", "Sweet Child O'' Mine", "Bohemian Rhapsody"], "respuestas_correctas": ["Despacito", "Gasolina"]}', 'Las canciones "Despacito" y "Gasolina" son del género reggaetón.'),
(122, 2, '¿Cuáles de los siguientes artistas son considerados íconos del género R&B?', '{"respuestas": ["Marvin Gaye", "Whitney Houston", "Beyoncé", "Kanye West"], "respuestas_correctas": ["Marvin Gaye", "Whitney Houston"]}', 'Los artistas Marvin Gaye y Whitney Houston son considerados íconos del género R&B.'),
(122, 2, '¿Cuáles de los siguientes instrumentos se utilizan en una orquesta sinfónica?', '{"respuestas": ["Violín", "Flauta", "Trompeta", "Guitarra"], "respuestas_correctas": ["Violín", "Flauta", "Trompeta"]}', 'Los instrumentos Violín, Flauta y Trompeta se utilizan en una orquesta sinfónica.'),
(122, 2, '¿Cuáles de las siguientes canciones fueron éxitos en la década de los 80?', '{"respuestas": ["Billie Jean", "Sweet Child O'' Mine", "Livin'' on a Prayer", "Smells Like Teen Spirit"], "respuestas_correctas": ["Billie Jean", "Livin'' on a Prayer"]}', 'Las canciones "Billie Jean" y "Livin'' on a Prayer" fueron éxitos en la década de los 80.'),
(122, 2, '¿Cuáles de los siguientes artistas fueron íconos del pop en los años 90?', '{"respuestas": ["Michael Jackson", "Madonna", "Britney Spears", "Nirvana"], "respuestas_correctas": ["Michael Jackson", "Madonna", "Britney Spears"]}', 'Los artistas Michael Jackson, Madonna y Britney Spears fueron íconos del pop en los años 90.'),
(122, 2, '¿Cuáles de las siguientes bandas de rock surgieron en los años 80?', '{"respuestas": ["Guns N'' Roses", "Nirvana", "Backstreet Boys", "Spice Girls"], "respuestas_correctas": ["Guns N'' Roses"]}', 'La banda Guns N'' Roses surgió en los años 80.'),
(122, 2, '¿Cuáles de las siguientes canciones pertenecen al género grunge?', '{"respuestas": ["Smells Like Teen Spirit", "Wannabe", "Bohemian Rhapsody", "Vogue"], "respuestas_correctas": ["Smells Like Teen Spirit"]}', 'La canción "Smells Like Teen Spirit" pertenece al género grunge.'),
(122, 2, '¿Cuáles de los siguientes artistas se destacaron en el género del hip hop en los 90?', '{"respuestas": ["Tupac Shakur", "Eminem", "Whitney Houston", "Bon Jovi"], "respuestas_correctas": ["Tupac Shakur", "Eminem"]}', 'Los artistas Tupac Shakur y Eminem se destacaron en el género del hip hop en los 90.'),
(122, 2, '¿Cuáles de las siguientes canciones fueron éxitos de la banda Queen en los 80?', '{"respuestas": ["Another One Bites the Dust", "Wonderwall", "Livin'' on a Prayer", "Billie Jean"], "respuestas_correctas": ["Another One Bites the Dust"]}', 'La canción "Another One Bites the Dust" fue un éxito de la banda Queen en los 80.'),
(122, 2, '¿Cuáles de los siguientes artistas fueron exponentes del género R&B en los años 90?', '{"respuestas": ["Whitney Houston", "Mariah Carey", "Aaliyah", "Guns N'' Roses"], "respuestas_correctas": ["Whitney Houston", "Mariah Carey", "Aaliyah"]}', 'Los artistas Whitney Houston, Mariah Carey y Aaliyah fueron exponentes del género R&B en los años 90.');

-- Preguntas para el test 3 de Música
INSERT INTO preguntas (id_test, tipo_pregunta, nombre_pregunta, datos_pregunta, retroalimentacion) VALUES
(123, 2, '¿Cuáles de las siguientes canciones pertenecen al género new wave?', '{"respuestas": ["Sweet Child O'' Mine", "Take on Me", "Bohemian Rhapsody", "Vogue"], "respuestas_correctas": ["Take on Me"]}', 'La canción "Take on Me" pertenece al género new wave.'),
(123, 2, '¿Cuáles de los siguientes artistas se destacaron en el género del pop rock en los 90?', '{"respuestas": ["Alanis Morissette", "Green Day", "Whitney Houston", "Bon Jovi"], "respuestas_correctas": ["Alanis Morissette", "Green Day"]}', 'Los artistas Alanis Morissette y Green Day se destacaron en el género del pop rock en los 90.'),
(123, 2, '¿Cuáles de las siguientes canciones fueron éxitos en la década de los 80?', '{"respuestas": ["Don''t Stop Believin''", "Smells Like Teen Spirit", "Livin'' on a Prayer", "Billie Jean"], "respuestas_correctas": ["Don''t Stop Believin''", "Livin'' on a Prayer"]}', 'Las canciones "Don''t Stop Believin''" y "Livin'' on a Prayer" fueron éxitos en la década de los 80.'),
(123, 2, '¿Cuáles de los siguientes artistas se destacaron en el género del dance-pop en los 90?', '{"respuestas": ["Madonna", "Britney Spears", "Michael Jackson", "Nirvana"], "respuestas_correctas": ["Madonna", "Britney Spears"]}', 'Los artistas Madonna y Britney Spears se destacaron en el género del dance-pop en los 90.'),
(123, 2, '¿Cuáles de las siguientes canciones fueron éxitos de la banda U2 en los 80?', '{"respuestas": ["With or Without You", "Wonderwall", "Bohemian Rhapsody", "Vogue"], "respuestas_correctas": ["With or Without You"]}', 'La canción "With or Without You" fue un éxito de la banda U2 en los 80.'),
(123, 2, '¿Cuáles de las siguientes bandas de rock surgieron en los años 80?', '{"respuestas": ["Guns N'' Roses", "Nirvana", "Metallica", "Spice Girls"], "respuestas_correctas": ["Guns N'' Roses", "Metallica"]}', 'Las bandas Guns N'' Roses y Metallica surgieron en los años 80.'),
(123, 2, '¿Cuáles de los siguientes artistas fueron exponentes del género del soul en los años 90?', '{"respuestas": ["TLC", "R. Kelly", "Aaliyah", "Guns N'' Roses"], "respuestas_correctas": ["TLC", "R. Kelly", "Aaliyah"]}', 'Los artistas TLC, R. Kelly y Aaliyah fueron exponentes del género del soul en los años 90.'),
(123, 2, '¿Cuáles de los siguientes artistas fueron parte del movimiento de la música folk en los años 60?', '{"respuestas": ["Bob Dylan", "Simon & Garfunkel", "The Beatles", "The Rolling Stones"], "respuestas_correctas": ["Bob Dylan", "Simon & Garfunkel"]}', 'Los artistas Bob Dylan y Simon & Garfunkel fueron parte del movimiento de la música folk en los años 60.'),
(123, 2, '¿Cuáles de las siguientes canciones fueron éxitos de la banda Led Zeppelin en los 70?', '{"respuestas": ["Stairway to Heaven", "Bohemian Rhapsody", "Smells Like Teen Spirit", "Imagine"], "respuestas_correctas": ["Stairway to Heaven"]}', 'La canción "Stairway to Heaven" fue un éxito de la banda Led Zeppelin en los 70.'),
(123, 2, '¿Cuáles de los siguientes artistas fueron exponentes del género del rock progresivo en los años 70?', '{"respuestas": ["Pink Floyd", "Genesis", "Elvis Presley", "Michael Jackson"], "respuestas_correctas": ["Pink Floyd", "Genesis"]}', 'Los artistas Pink Floyd y Genesis fueron exponentes del género del rock progresivo en los años 70.');

-- Preguntas para el test 4 de Música
INSERT INTO preguntas (id_test, tipo_pregunta, nombre_pregunta, datos_pregunta, retroalimentacion) VALUES
(124, 2, 'Banda de rock famosa', '{"respuestas": ["The Beatles", "Nirvana", "Coldplay", "Backstreet Boys"], "respuestas_correctas": ["The Beatles", "Nirvana"]}', 'The Beatles y Nirvana son conocidas bandas de rock.'),
(124, 2, 'Álbumes icónicos', '{"respuestas": ["Thriller", "Abbey Road", "Dark Side of the Moon", "Nevermind"], "respuestas_correctas": ["Thriller", "Dark Side of the Moon"]}', 'Thriller de Michael Jackson y Dark Side of the Moon de Pink Floyd son álbumes icónicos.'),
(124, 2, 'Género musical de Taylor Swift', '{"respuestas": ["Pop", "Rap", "Country", "Reggae"], "respuestas_correctas": ["Pop", "Country"]}', 'Taylor Swift es conocida por su música en los géneros de pop y country.'),
(124, 2, 'Artistas ganadores del Grammy', '{"respuestas": ["Beyoncé", "Taylor Swift", "Adele", "Kendrick Lamar"], "respuestas_correctas": ["Beyoncé", "Adele"]}', 'Beyoncé y Adele han sido ganadoras del Grammy.'),
(124, 2, 'Bandas de música británicas', '{"respuestas": ["The Beatles", "Coldplay", "Oasis", "Backstreet Boys"], "respuestas_correctas": ["The Beatles", "Coldplay", "Oasis"]}', 'The Beatles, Coldplay y Oasis son bandas de música británicas famosas.'),
(124, 2, 'Cantantes masculinos de R&B', '{"respuestas": ["Usher", "Justin Bieber", "Bruno Mars", "Drake"], "respuestas_correctas": ["Usher", "Bruno Mars"]}', 'Usher y Bruno Mars son conocidos cantantes masculinos de R&B.'),
(124, 2, 'Canciones de Shakira', '{"respuestas": ["Hips Don''t Lie", "Shape of You", "Hello", "Bohemian Rhapsody"], "respuestas_correctas": ["Hips Don''t Lie"]}', 'Hips Don''t Lie es una canción famosa de Shakira.'),
(124, 2, 'Género musical de J Balvin', '{"respuestas": ["Reguetón", "Country", "Rock", "Pop"], "respuestas_correctas": ["Reguetón"]}', 'J Balvin es conocido por su música en el género de reguetón.'),
(124, 2, '¿Cuáles de los siguientes artistas fueron exponentes del género del soul en los años 60?', '{"respuestas": ["James Brown", "Aretha Franklin", "The Rolling Stones", "Nirvana"], "respuestas_correctas": ["James Brown", "Aretha Franklin"]}', 'Los artistas James Brown y Aretha Franklin fueron exponentes del género del soul en los años 60.'),
(124, 2, 'Bands de rock clásico', '{"respuestas": ["Led Zeppelin", "The Rolling Stones", "Pink Floyd", "Nirvana"], "respuestas_correctas": ["Led Zeppelin", "The Rolling Stones", "Pink Floyd"]}', 'Led Zeppelin, The Rolling Stones y Pink Floyd son bandas icónicas de rock clásico.');

-- Preguntas para el test 5 de Música
INSERT INTO preguntas (id_test, tipo_pregunta, nombre_pregunta, datos_pregunta, retroalimentacion) VALUES
(125, 2, '¿Cuáles de los siguientes artistas son conocidos por su música pop actual?', '{"respuestas": ["Ariana Grande", "Post Malone", "Dua Lipa", "The Weeknd"], "respuestas_correctas": ["Ariana Grande", "Dua Lipa"]}', 'Los artistas Ariana Grande y Dua Lipa son conocidos por su música pop actual.'),
(125, 2, '¿Cuáles de los siguientes géneros musicales son originarios de América Latina?', '{"respuestas": ["Salsa", "Reggae", "K-Pop", "Bachata"], "respuestas_correctas": ["Salsa", "Bachata"]}', 'Los géneros musicales de Salsa y Bachata son originarios de América Latina.'),
(125, 2, 'Películas de Quentin Tarantino', '{"respuestas": ["Pulp Fiction", "Kill Bill", "Inglourious Basterds", "Django Unchained"], "respuestas_correctas": ["Pulp Fiction", "Kill Bill", "Inglourious Basterds"]}', 'Pulp Fiction, Kill Bill y Inglourious Basterds son películas dirigidas por Quentin Tarantino.'),
(125, 2, 'Bands de rock alternativo', '{"respuestas": ["Arctic Monkeys", "Radiohead", "The Strokes", "Coldplay"], "respuestas_correctas": ["Arctic Monkeys", "Radiohead", "The Strokes"]}', 'Arctic Monkeys, Radiohead y The Strokes son bandas famosas de rock alternativo.'),
(125, 2, 'Cantantes femeninas de pop', '{"respuestas": ["Beyoncé", "Rihanna", "Ariana Grande", "Taylor Swift"], "respuestas_correctas": ["Rihanna", "Ariana Grande", "Taylor Swift"]}', 'Rihanna, Ariana Grande y Taylor Swift son reconocidas cantantes femeninas de pop.'),
(125, 2, 'Canciones de Michael Jackson', '{"respuestas": ["Thriller", "Billie Jean", "Beat It", "Bohemian Rhapsody"], "respuestas_correctas": ["Thriller", "Billie Jean", "Beat It"]}', 'Thriller, Billie Jean y Beat It son canciones icónicas de Michael Jackson.'),
(125, 2, 'Géneros musicales de Ed Sheeran', '{"respuestas": ["Pop", "Folk", "R&B", "Reggae"], "respuestas_correctas": ["Pop", "Folk", "R&B"]}', 'Ed Sheeran es conocido por su música en los géneros de Pop, Folk y R&B.'),
(125, 2, 'Bands de música electrónica', '{"respuestas": ["Daft Punk", "The Chemical Brothers", "Justice", "Coldplay"], "respuestas_correctas": ["Daft Punk", "The Chemical Brothers", "Justice"]}', 'Daft Punk, The Chemical Brothers y Justice son bandas famosas de música electrónica.'),
(125, 2, 'Cantantes masculinos de R&B', '{"respuestas": ["Usher", "The Weeknd", "Chris Brown", "Justin Timberlake"], "respuestas_correctas": ["Usher", "The Weeknd", "Chris Brown"]}', 'Usher, The Weeknd y Chris Brown son reconocidos cantantes masculinos de R&B.'),
(125, 2, 'Canciones de Taylor Swift', '{"respuestas": ["Love Story", "Bad Blood", "Shake It Off", "Despacito"], "respuestas_correctas": ["Love Story", "Shake It Off"]}', 'Love Story y Shake It Off son canciones populares de Taylor Swift.');

-- Preguntas para el test 6 de Música
INSERT INTO preguntas (id_test, tipo_pregunta, nombre_pregunta, datos_pregunta, retroalimentacion) VALUES
(126, 2, 'Géneros musicales de Beyoncé', '{"respuestas": ["R&B", "Pop", "Hip-Hop", "Country"], "respuestas_correctas": ["R&B", "Pop", "Hip-Hop"]}', 'Beyoncé es conocida por su música en los géneros de R&B, Pop y Hip-Hop.'),
(126, 2, 'Películas ganadoras del Óscar a Mejor Película', '{"respuestas": ["The Godfather", "Titanic", "The Shape of Water", "Parasite"], "respuestas_correctas": ["The Godfather", "Titanic", "Parasite"]}', 'The Godfather, Titanic y Parasite son películas ganadoras del Óscar a Mejor Película.'),
(126, 2, 'Bandas de rock clásico', '{"respuestas": ["Led Zeppelin", "The Beatles", "Pink Floyd", "Nirvana"], "respuestas_correctas": ["Led Zeppelin", "The Beatles", "Pink Floyd"]}', 'Led Zeppelin, The Beatles y Pink Floyd son reconocidas bandas de rock clásico.'),
(126, 2, 'Cantantes masculinos de música country', '{"respuestas": ["Johnny Cash", "Willie Nelson", "Luke Bryan", "Blake Shelton"], "respuestas_correctas": ["Johnny Cash", "Willie Nelson"]}', 'Johnny Cash y Willie Nelson son cantantes masculinos famosos de música country.'),
(126, 2, 'Géneros musicales de Bruno Mars', '{"respuestas": ["Pop", "R&B", "Funk", "Reggae"], "respuestas_correctas": ["Pop", "R&B", "Funk"]}', 'Bruno Mars es conocido por su música en los géneros de Pop, R&B y Funk.'),
(126, 2, 'Canciones de Beyoncé', '{"respuestas": ["Single Ladies (Put a Ring on It)", "Crazy in Love", "Halo", "Shape of You"], "respuestas_correctas": ["Single Ladies (Put a Ring on It)", "Crazy in Love", "Halo"]}', 'Single Ladies (Put a Ring on It), Crazy in Love y Halo son canciones populares de Beyoncé.'),
(126, 2, 'Películas de Disney', '{"respuestas": ["The Lion King", "Frozen", "Beauty and the Beast", "Moana"], "respuestas_correctas": ["The Lion King", "Frozen", "Moana"]}', 'The Lion King, Frozen y Moana son películas de Disney.'),
(126, 2, 'Bandas de rock alternativo', '{"respuestas": ["Radiohead", "Arctic Monkeys", "The Strokes", "Green Day"], "respuestas_correctas": ["Radiohead", "Arctic Monkeys", "The Strokes"]}', 'Radiohead, Arctic Monkeys y The Strokes son bandas de rock alternativo reconocidas.'),
(126, 2, 'Cantantes femeninas de música pop', '{"respuestas": ["Taylor Swift", "Ariana Grande", "Rihanna", "Beyoncé"], "respuestas_correctas": ["Taylor Swift", "Ariana Grande"]}', 'Taylor Swift y Ariana Grande son cantantes femeninas populares de música pop.'),
(126, 2, 'Canciones de The Beatles', '{"respuestas": ["Hey Jude", "Let It Be", "Yesterday", "Shape of You"], "respuestas_correctas": ["Hey Jude", "Let It Be", "Yesterday"]}', 'Hey Jude, Let It Be y Yesterday son canciones icónicas de The Beatles.');

-- Preguntas para el test 7 de Música
INSERT INTO preguntas (id_test, tipo_pregunta, nombre_pregunta, datos_pregunta, retroalimentacion) VALUES
(127, 2, '¿Cuáles de los siguientes artistas son reconocidos en el género del reguetón?', '{"respuestas": ["Daddy Yankee", "Shakira", "Maluma", "Taylor Swift"], "respuestas_correctas": ["Daddy Yankee", "Maluma"]}', 'Los artistas Daddy Yankee y Maluma son reconocidos en el género del reguetón.'),
(127, 2, '¿Cuáles de las siguientes canciones son éxitos de la música latina urbana?', '{"respuestas": ["Despacito", "Vivir Mi Vida", "La Bicicleta", "Someone Like You"], "respuestas_correctas": ["Despacito", "La Bicicleta"]}', 'Las canciones "Despacito" y "La Bicicleta" son éxitos de la música latina urbana.'),
(127, 2, 'Banda sonora de películas', '{"respuestas": ["Jurassic Park", "The Dark Knight", "Star Wars", "Titanic"], "respuestas_correctas": ["Jurassic Park", "The Dark Knight", "Star Wars"]}', 'Jurassic Park, The Dark Knight y Star Wars tienen reconocidas bandas sonoras.'),
(127, 2, '¿Cuáles de los siguientes artistas son considerados íconos del género R&B?', '{"respuestas": ["Marvin Gaye", "Whitney Houston", "Beyoncé", "Kanye West"], "respuestas_correctas": ["Marvin Gaye", "Whitney Houston"]}', 'Los artistas Marvin Gaye y Whitney Houston son considerados íconos del género R&B.'),
(127, 2, 'Canciones de Madonna', '{"respuestas": ["Like a Prayer", "Material Girl", "Vogue", "Bad Romance"], "respuestas_correctas": ["Like a Prayer", "Material Girl", "Vogue"]}', 'Like a Prayer, Material Girl y Vogue son canciones famosas de Madonna.'),
(127, 2, '¿Cuáles de los siguientes artistas son conocidos por su música latina?', '{"respuestas": ["Shakira", "Maluma", "Justin Bieber", "J Balvin"], "respuestas_correctas": ["Shakira", "Maluma", "J Balvin"]}', 'Shakira, Maluma y J Balvin son artistas reconocidos por su música latina.'),
(127, 2, '¿Cuáles de las siguientes canciones son éxitos de música latina?', '{"respuestas": ["Despacito", "Shape of You", "Bailando", "Uptown Funk"], "respuestas_correctas": ["Despacito", "Bailando"]}', 'Despacito y Bailando son canciones populares de música latina.'),
(127, 2, '¿Cuáles de los siguientes géneros musicales están asociados con la música latina?', '{"respuestas": ["Reggaeton", "Rock", "Salsa", "Country"], "respuestas_correctas": ["Reggaeton", "Salsa"]}', 'El reggaeton y la salsa son géneros musicales asociados con la música latina.'),
(127, 2, 'Bandas de rock famosas', '{"respuestas": ["The Beatles", "Led Zeppelin", "Queen", "Nirvana"], "respuestas_correctas": ["The Beatles", "Led Zeppelin", "Queen"]}', 'The Beatles, Led Zeppelin y Queen son bandas de rock famosas.'),
(127, 2, '¿Cuáles de los siguientes artistas son reconocidos en el género del pop?', '{"respuestas": ["Taylor Swift", "J Balvin", "Drake", "Beyoncé"], "respuestas_correctas": ["Taylor Swift", "Beyoncé"]}', 'Los artistas Taylor Swift y Beyoncé son reconocidos en el género del pop.');

-- Preguntas para el test 8 de Música
INSERT INTO preguntas (id_test, tipo_pregunta, nombre_pregunta, datos_pregunta, retroalimentacion) VALUES
(128, 2, 'Géneros musicales de Queen', '{"respuestas": ["Rock", "Pop", "Metal", "Reggae"], "respuestas_correctas": ["Rock", "Pop"]}', 'Queen es conocida por su música en los géneros de Rock y Pop.'),
(128, 2, 'Directores de cine famosos', '{"respuestas": ["Steven Spielberg", "Martin Scorsese", "Christopher Nolan", "Quentin Tarantino"], "respuestas_correctas": ["Steven Spielberg", "Martin Scorsese", "Quentin Tarantino"]}', 'Steven Spielberg, Martin Scorsese y Quentin Tarantino son reconocidos directores de cine.'),
(128, 2, 'Canciones de Beyoncé', '{"respuestas": ["Single Ladies (Put a Ring on It)", "Crazy in Love", "Halo", "Shape of You"], "respuestas_correctas": ["Single Ladies (Put a Ring on It)", "Crazy in Love", "Halo"]}', 'Single Ladies (Put a Ring on It), Crazy in Love y Halo son canciones populares de Beyoncé.'),
(128, 2, 'Artistas de reggaeton', '{"respuestas": ["Daddy Yankee", "Shakira", "J Balvin", "Selena Gomez"], "respuestas_correctas": ["Daddy Yankee", "J Balvin"]}', 'Daddy Yankee y J Balvin son reconocidos artistas del género de reggaeton.'),
(128, 2, 'Éxitos de música latina', '{"respuestas": ["Despacito", "Shape of You", "Bailando", "Uptown Funk"], "respuestas_correctas": ["Despacito", "Bailando"]}', 'Despacito de Luis Fonsi y Bailando de Enrique Iglesias son grandes éxitos de la música latina.'),
(128, 2, 'Colaboración de Ozuna', '{"respuestas": ["Despacito", "Taki Taki", "Con Calma", "Hasta Que Salga el Sol"], "respuestas_correctas": ["Taki Taki", "Con Calma"]}', 'Ozuna ha colaborado en las canciones Taki Taki y Con Calma.'),
(128, 2, 'Artistas de reggaeton', '{"respuestas": ["Daddy Yankee", "Shakira", "J Balvin", "Selena Gomez"], "respuestas_correctas": ["Daddy Yankee", "J Balvin"]}', 'Daddy Yankee y J Balvin son reconocidos artistas del género de reggaeton.'),
(128, 2, 'Éxitos de música latina', '{"respuestas": ["Despacito", "Shape of You", "Bailando", "Uptown Funk"], "respuestas_correctas": ["Despacito", "Bailando"]}', 'Despacito de Luis Fonsi y Bailando de Enrique Iglesias son grandes éxitos de la música latina.'),
(128, 2, 'Colaboración de Ozuna', '{"respuestas": ["Despacito", "Taki Taki", "Con Calma", "Hasta Que Salga el Sol"], "respuestas_correctas": ["Taki Taki", "Con Calma"]}', 'Ozuna ha colaborado en las canciones Taki Taki y Con Calma.'),
(128, 2, 'Cantantes femeninas de Pop', '{"respuestas": ["Madonna", "Rihanna", "Beyoncé", "Ariana Grande"], "respuestas_correctas": ["Madonna", "Rihanna", "Beyoncé"]}', 'Madonna, Rihanna y Beyoncé son reconocidas cantantes femeninas de Pop.');

-- Preguntas para el test 9 de Música
INSERT INTO preguntas (id_test, tipo_pregunta, nombre_pregunta, datos_pregunta, retroalimentacion) VALUES
(129, 2, 'Canciones de Michael Jackson', '{"respuestas": ["Thriller", "Billie Jean", "Beat It", "Bohemian Rhapsody"], "respuestas_correctas": ["Thriller", "Billie Jean", "Beat It"]}', 'Thriller, Billie Jean y Beat It son canciones icónicas de Michael Jackson.'),
(129, 2, 'Bandas de rock clásico', '{"respuestas": ["Led Zeppelin", "The Beatles", "Pink Floyd", "Nirvana"], "respuestas_correctas": ["Led Zeppelin", "The Beatles", "Pink Floyd"]}', 'Led Zeppelin, The Beatles y Pink Floyd son reconocidas bandas de rock clásico.'),
(129, 2, '¿Cuáles de los siguientes artistas se destacaron en el género del hip hop en los 90?', '{"respuestas": ["Tupac Shakur", "Eminem", "Whitney Houston", "Bon Jovi"], "respuestas_correctas": ["Tupac Shakur", "Eminem"]}', 'Los artistas Tupac Shakur y Eminem se destacaron en el género del hip hop en los 90.'),
(129, 2, 'Géneros musicales de Metallica', '{"respuestas": ["Heavy Metal", "Thrash Metal", "Grunge", "Reggae"], "respuestas_correctas": ["Heavy Metal", "Thrash Metal"]}', 'Metallica es conocida por su música en los géneros de Heavy Metal y Thrash Metal.'),
(129, 2, 'Bandas de música famosas', '{"respuestas": ["The Rolling Stones", "U2", "Coldplay", "AC/DC"], "respuestas_correctas": ["The Rolling Stones", "U2", "AC/DC"]}', 'The Rolling Stones, U2 y AC/DC son bandas de música famosas.'),
(129, 2, 'Cantantes de música country', '{"respuestas": ["Johnny Cash", "Dolly Parton", "Shania Twain", "Blake Shelton"], "respuestas_correctas": ["Johnny Cash", "Dolly Parton"]}', 'Johnny Cash y Dolly Parton son cantantes de música country reconocidos.'),
(129, 2, 'Bands de rock alternativo', '{"respuestas": ["Nirvana", "Radiohead", "Foo Fighters", "Pearl Jam"], "respuestas_correctas": ["Nirvana", "Radiohead", "Foo Fighters"]}', 'Nirvana, Radiohead y Foo Fighters son bandas de rock alternativo populares.'),
(129, 2, 'Canciones de los años 70', '{"respuestas": ["Bohemian Rhapsody", "Hotel California", "Imagine", "Stairway to Heaven"], "respuestas_correctas": ["Bohemian Rhapsody", "Hotel California", "Stairway to Heaven"]}', 'Bohemian Rhapsody, Hotel California y Stairway to Heaven son canciones icónicas de los años 70.'),
(129, 2, 'Géneros de música electrónica', '{"respuestas": ["Techno", "House", "Trance", "Dubstep"], "respuestas_correctas": ["Techno", "House", "Trance"]}', 'Techno, House y Trance son géneros de música electrónica reconocidos.'),
(129, 2, 'Cantantes de soul y R&B', '{"respuestas": ["Aretha Franklin", "Stevie Wonder", "Beyoncé", "Sam Smith"], "respuestas_correctas": ["Aretha Franklin", "Stevie Wonder"]}', 'Aretha Franklin y Stevie Wonder son cantantes de soul y R&B legendarios.');

-- Preguntas para el test 10 de Música
INSERT INTO preguntas (id_test, tipo_pregunta, nombre_pregunta, datos_pregunta, retroalimentacion) VALUES
(130, 2, 'Géneros musicales de Shakira', '{"respuestas": ["Pop", "Rock", "Reggaeton", "Salsa"], "respuestas_correctas": ["Pop", "Rock", "Salsa"]}', 'Shakira es conocida por su música en los géneros de Pop, Rock y Salsa.'),
(130, 2, 'Canciones de los Beatles', '{"respuestas": ["Hey Jude", "Yesterday", "Let It Be", "Bohemian Rhapsody"], "respuestas_correctas": ["Hey Jude", "Yesterday", "Let It Be"]}', 'Hey Jude, Yesterday y Let It Be son canciones famosas de los Beatles.'),
(130, 2, 'Géneros musicales populares', '{"respuestas": ["Pop", "Rock", "Hip Hop", "Country"], "respuestas_correctas": ["Pop", "Rock", "Hip Hop"]}', 'Pop, Rock y Hip Hop son géneros musicales populares.'),
(130, 2, 'Bandas de rock clásico', '{"respuestas": ["The Beatles", "Led Zeppelin", "The Rolling Stones", "Queen"], "respuestas_correctas": ["Led Zeppelin", "The Rolling Stones"]}', 'Led Zeppelin y The Rolling Stones son bandas de rock clásico.'),
(130, 2, 'Géneros musicales latinoamericanos', '{"respuestas": ["Salsa", "Cumbia", "Reggaetón", "Bachata"], "respuestas_correctas": ["Salsa", "Cumbia"]}', 'Salsa y Cumbia son géneros musicales latinoamericanos.'),
(130, 2, 'Cantantes femeninas de pop', '{"respuestas": ["Madonna", "Beyoncé", "Taylor Swift", "Rihanna"], "respuestas_correctas": ["Madonna", "Taylor Swift"]}', 'Madonna y Taylor Swift son cantantes femeninas de pop reconocidas.'),
(130, 2, 'Grupos de música alternativa', '{"respuestas": ["Arctic Monkeys", "Radiohead", "The Killers", "Muse"], "respuestas_correctas": ["Arctic Monkeys", "The Killers", "Muse"]}', 'Arctic Monkeys, The Killers y Muse son grupos de música alternativa.'),
(130, 2, 'Canciones de la década de los 90', '{"respuestas": ["Smells Like Teen Spirit", "Wonderwall", "No Scrubs", "Black Hole Sun"], "respuestas_correctas": ["Smells Like Teen Spirit", "Wonderwall", "No Scrubs"]}', 'Smells Like Teen Spirit, Wonderwall y No Scrubs son canciones populares de la década de los 90.'),
(130, 2, 'Cantantes de R&B contemporáneo', '{"respuestas": ["Rihanna", "The Weeknd", "Bruno Mars", "Alicia Keys"], "respuestas_correctas": ["Rihanna", "The Weeknd", "Bruno Mars", "Alicia Keys"]}', 'Rihanna, The Weeknd, Bruno Mars y Alicia Keys son cantantes de R&B contemporáneo.'),
(130, 2, 'Bandas de música electrónica', '{"respuestas": ["Daft Punk", "The Chemical Brothers", "Justice", "Disclosure"], "respuestas_correctas": ["Daft Punk", "The Chemical Brothers", "Justice"]}', 'Daft Punk, The Chemical Brothers y Justice son bandas de música electrónica.');

-- Renumera el id de PREGUNTAS
SET foreign_key_checks = 0;

SET @newid := 0;
UPDATE preguntas SET id = (@newid := @newid + 1) ORDER BY id;

SET foreign_key_checks = 1;