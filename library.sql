-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: mysql
-- Erstellungszeit: 18. Sep 2023 um 12:30
-- Server-Version: 8.0.33
-- PHP-Version: 8.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `library`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `questions`
--

CREATE TABLE `questions` (
  `id` int NOT NULL,
  `topic` enum('harmonica','football','switzerland','e-guitar','maths','language','anatomy','swiss-animals') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `question_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer_1` varchar(127) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer_2` varchar(127) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer_3` varchar(127) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer_4` varchar(127) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Daten für Tabelle `questions`
--

INSERT INTO `questions` (`id`, `topic`, `question_text`, `answer_1`, `answer_2`, `answer_3`, `answer_4`, `answer_id`) VALUES
(1, 'e-guitar', 'How many strings does an electric guitar usually have?', '6', '3', '5', '7', 1),
(2, 'e-guitar', 'The following is an electric guitar producer.', 'Ford', 'Fjord', 'Fender', 'Bender', 3),
(3, 'e-guitar', 'You can play an electric guitar outdoors with:', 'A portable outlet', 'Your feet', 'a portable amp', 'you cannot', 3),
(4, 'e-guitar', 'The electric guitar needs to be plugged into the power grid.', 'YES', 'Yes but only at 110V', 'Yes but only at 230V', 'The electric guitar needs to be plugged into an amp', 4),
(5, 'e-guitar', 'Metallica performs at concerts with', 'an owl', 'e-guitars, bass guitars, vocals and drums', 'their feet', 'Metallica does not perform at concerts', 2),
(6, 'e-guitar', 'The following musician plays an electric guitar.', 'Max Havelaar', 'Ray Charles', 'Jimmy Page', 'Christoph Blocher', 3),
(7, 'e-guitar', 'What is the main difference between an electric and an acoustic guitar?\r\n', 'The electric guitar has more strings', 'The electric guitar can be played through an amp', 'The acoustic guitar cannot be used for Rock music', 'There is no difference', 2),
(8, 'e-guitar', 'Which component of the electric guitar is responsible for capturing the sound?', 'The pickups', 'The body', 'The pickguard', 'The strings', 1),
(9, 'e-guitar', 'What type of cable is needed to connect an electric guitar to an amplifier?', 'TS, or Tip Sleeve cable. It is a low power and high impedance cable', 'The electric guitar likes the cable from the mains', 'The electric guitar usually connects wirelessly to the amplifier', 'The electric guitar usually uses a USB-C cable', 1),
(10, 'e-guitar', 'What are pickups in an electric guitar, and what role do they play?', 'They are used to play vinyl records with the guitar', 'Electromagnetic devices that capture the vibrations of the guitar strings and convert them into electrical signals', 'Electric guitars do not use pickups', 'Pickups are used to hold the strings in place on a Floyd Rose system', 2),
(11, 'e-guitar', 'Who first introduced the famous single-cut shape of the electric guitar?', 'Jack Sparrow', 'Gibson', 'Fender', 'Jackson Guitars', 2),
(12, 'e-guitar', 'Who is Mick Thomson?', 'A very well known boxer', 'He runs a gas station', 'He invented the 7 string guitar', 'He is one of the guitarists from the band SlipKnot', 4),
(13, 'e-guitar', 'Which of the following is an electric guitar amp?', 'Marlboro Lights', 'B.C. Rich Warlock', 'The Fender Acoustasonic', 'The iconic 5150 which is the signature amp of Eddie Van Halen', 4),
(14, 'e-guitar', 'Who is the lead guitarist of the band Metallica?', 'James Root', 'Kirk Hammet', 'Kurt Cobain', 'Christoph Blocher', 2),
(15, 'e-guitar', 'Which metal guitarist is famous for wearing a distinctive mask and being a member of the band Slipknot?', 'James Root', 'Jimmy Page', 'Kirk Hammet', 'Carlos Santana', 1),
(16, 'switzerland', 'Which mountains are the most famous landmarks of Switzerland?', 'a) Dolomiten\r\n', 'b) Pyrenäen\r\n', 'c) Karpaten\r\n', 'd) Alpen ', 4),
(17, 'switzerland', 'Which countries does the Rhine flow through, besides Switzerland?', 'a) France, Italy, Germany, Austria\r\n', 'b) Belgium, Luxembourg, Netherlands, Germany\r\n', 'c) Liechtenstein, Germany, Austria, Netherlands\r\n', 'd) Liechtenstein, Austria, Germany, France, Netherlands', 4),
(18, 'switzerland', 'How many official languages does Switzerland have?', '\r\na) 2\r\n', 'b) 3\r\n', 'c) 4 \r\n', 'd) 5', 3),
(19, 'switzerland', 'Which is the biggest lake in Switzerland?', 'a) Bodensee\r\n', '\r\nb) Vierwaldstättersee\r\n', '\r\nc) Genfersee\r\n', '\r\nd) Zürichsee', 3),
(20, 'switzerland', 'In which century was the Swiss Confederation founded?', 'a) 20th century', 'b) 19th century', 'c) 16th century', 'd) 17th century', 2),
(21, 'switzerland', 'Which valley is known for its high density of watch manufactures?', 'a) Engadin\r\n', '\r\nb) Simmental\r\n', '\r\nc) Vallée de Joux \r\n', '\r\nd) Lauterbrunnental', 3),
(22, 'switzerland', 'Which city is often called the \"World Capital of the Red Cross\"?', 'a) Geneva ', '\r\nb) Bern\r\n', '\r\nc) Zurich\r\n', '\r\nd) Lausanne', 1),
(23, 'switzerland', 'Which famous pass connects Valais with Valle d\'Aosta in Italy?', 'a) Julierpass\r\n', '\r\nb) Furkapass\r\n', '\r\nc) Gotthardpass\r\n', '\r\nd) Simplonpass', 4),
(24, 'switzerland', 'What is the name of the region in Switzerland where Romansh is spoken?', 'a) Schwarzwald\r\n', '\r\nb) Appenzell\r\n', '\r\nc) Graubünden\r\n', '\r\nd) Uri', 3),
(25, 'switzerland', 'Which famous cable car goes up the Matterhorn?', 'a) none at all', '\r\nb) Gornergratbahn\r\n', '\r\nc) Schilthornbahn\r\n', '\r\nd) Zermatt-Bahn ', 1),
(26, 'switzerland', 'What is the name of the longest river spring in Europe that rises in the Swiss Alps?', 'a) Rhone\r\n', '\r\nb) Elbe\r\n', '\r\nc) Danube\r\n', '\r\nd) Rhine', 4),
(27, 'switzerland', 'In which canton is the town of St. Moritz, a famous winter sports resort?', 'a) Graubünden \r\n', '\r\nb) Wallis\r\n', '\r\nc) Bern\r\n', '\r\nd) Luzern', 1),
(28, 'harmonica', 'What is another name for the harmonica?', 'Flute', 'Mouth Organ', 'Trumpet', 'Piano', 2),
(29, 'harmonica', 'Which musical family does the harmonica belong to?', 'String Instruments', 'Brass Instruments', 'Percussion Instruments', 'Wind Instruments', 4),
(30, 'harmonica', 'Who is credited with inventing the modern harmonica in the 1820s?', 'Johann Sebastian Bach', 'Wolfgang Amadeus Mozart', 'Christian Friedrich Ludwig Buschmann', 'Ludwig van Beethoven', 3),
(31, 'harmonica', 'How many reeds does a typical diatonic harmonica have?', '8 reeds', '12 reeds', '20 reeds', '24 reeds', 3),
(32, 'harmonica', 'Which brand is widely recognized as one of the most typical and iconic manufacturers of harmonicas in the world?', 'Yamaha', 'Fender', 'Hohner', 'Gibson', 3),
(33, 'harmonica', 'Which hand is used for playing the melody on a standard harmonica?', 'Left hand', 'Right hand', 'Both hands', 'Feet', 1),
(34, 'harmonica', 'What is the term for the technique of bending a harmonica reed to produce a note outside its natural range?', 'Twisting', 'Warping', 'Bending', 'Distorting', 3),
(35, 'harmonica', 'In chromatic harmonicas, what feature allows players to access all the notes of the chromatic scale?', 'Slide button', 'Whammy bar', 'Bendable reeds', 'Tremolo effect', 1),
(36, 'harmonica', 'Which harmonica playing technique involves playing two or more notes at once to create a fuller sound?', 'Melodic playing', 'Chordal playing', 'Harmonic playing', 'Solo playing', 2),
(37, 'harmonica', 'Which famous musician was known for playing the harmonica while playing the guitar and singing \"Blowin in the Wind?\"', 'Johnny Cash', 'Elvis Presley', 'Bob Dylan', 'Jimmy Hendrix', 3),
(38, 'harmonica', 'What is the name of the small hole on the back of a harmonica that allows air to escape?', 'Ventilation hole', 'Sound hole', 'Air outlet', 'Vents', 4),
(39, 'harmonica', 'Which popular musical genre heavily features the use of the harmonica alongside guitars and vocals?', 'Jazz', 'Classical music', 'Folk music', 'Hip-hop', 3),
(40, 'harmonica', 'What is the term for a harmonica that is played in a cross position, where inhaling and exhaling produce different notes?', 'Straight harp', 'Cross harp', 'Paralell harp', ' Diagonal harp', 2),
(41, 'harmonica', 'In terms of pitch range, how does a bass harmonica compare to a standard diatonic harmonica?', 'Bass harmonica has a higher pitch range.', 'Bass harmonica has a lower pitch range.', ' Bass harmonica has the same pitch range.', 'Bass harmonica has a variable pitch range.', 2),
(42, 'harmonica', 'What is the purpose of the slide button on a chromatic harmonica?', 'Adjusting volume', 'Changing the key', 'Producing vibrato', 'Redirecting air', 4),
(43, 'maths', 'Observe the calculation rules. What is 3 + 2 · 5?', '15', '30', '13', '25', 3),
(44, 'maths', 'How many meters make a kilometer?', '10', '10000', '100', '1000', 4),
(45, 'maths', 'What is the digit sum of the number 362?', '11', '10', '13', '12', 1),
(46, 'maths', 'If you add the numbers from 1 to 10, what is the sum?', '56', '44', '55', '66', 3),
(47, 'maths', 'The number one million has how many zeros?', '6 zeros', '5 zeros', '7 zeros', '4 zeros', 1),
(48, 'maths', 'In the problem 6 × 7 = 42, the number 6 is a factor and the number 7 is a factor. How do you call the result 42 in technical jargon?\r\n\r\n', 'Quotient', 'Total', 'Product', 'Difference', 3),
(49, 'maths', 'How many degrees is a right angle?', '90 degrees', '180 degrees', '360 degrees', '270 degrees', 1),
(50, 'maths', 'What is half of 1/2?\r\n', ' 1/4', '1/2', ' 2/4', '1/3', 1),
(51, 'maths', 'What do you do with the PQ formula?', ' Simplification of binomial formulas', 'Helps pull the root', ' Solve quadratic equations', 'Calculate hypotenuse', 3),
(52, 'maths', 'A _________ is a natural number greater than 1 and divisible only by itself and 1. Which word is missing here?', 'Euler number', 'Prime number', 'Zahlenreihe', 'series of numbers', 2),
(53, 'maths', 'How many degrees does a whole circle have?\r\n\r\n', '90 degrees', '300 degrees', '180 degrees', '360 degrees', 4),
(54, 'maths', 'An apple costs 40 cents. How much do 4 apples cost?', '1,60 Chf', ' 1,20 Chf', '0,40 Chf', ' 2,00 Chf', 1),
(55, 'maths', 'How much is 50 percent of 60?', ' 60', ' 30', '90', ' 10', 2),
(56, 'maths', 'How many faces does a cube have?', ' 5', '4', '6', '7', 3),
(57, 'maths', 'What is the sum of the interior angles of a triangle?', '180 degrees', '240 degrees', '360 degrees', '120 degrees', 1),
(58, 'football', 'Which footballer has scored over 1000 goals?', 'Marco van Basten', 'Alex Frei', 'Romario', 'Jürgen Klinsmann', 3),
(59, 'football', 'Who played for Sion as a junior?', 'Ronaldinho', 'Johan Vonlanthen', 'Ottmar Hitzfeld', 'Alain Sutter', 1),
(60, 'football', 'Which Spanish team uses red/blue as their home kit?', 'FC Basel', 'FC Barcelona', 'Deportivo La Coruna', 'FC Valencia', 2),
(61, 'football', 'When did FC Zurich reach the semi-finals of the Champions League (national champions)?', '2008 und 2019 ', '1964 und 1977', '1994 und 2010 ', '2002 und 2008', 2),
(62, 'football', 'Who won the Champions League 22/23?', 'FC Barcelona', 'Inter Mailand', 'Manchester City', 'FC Sevilla', 3),
(63, 'football', 'Which Swiss founded FC Barcelona?', 'Hans Gamper', 'Steve Lee', 'Edwin Nägeli', 'Jakob Kuhn', 1),
(64, 'football', 'Who was an FC Zurich player and later Switzerland\'s national coach?', 'Fritz Künzli', 'Jakob Kuhn', 'Lucien Favre', 'Bernard Challandes', 2),
(65, 'football', 'When did Stéphane Chapuisat win the Champions League?', '2000', '1994', '1999', '1997', 4),
(66, 'football', 'How many World Cups did Pelé win with Brazil?', '1', '2', '3', '4', 3),
(67, 'football', 'When did Alexis Sanchez play for FC Barcelona?', '2011-2014', '1989-1999', '1958-1970', '2003-2007', 1),
(68, 'football', 'How many times did Ronaldo become world footballer?', '2', '5', '1', '3', 4),
(69, 'football', 'Who scored 1329 goals during his career?', 'Romario', 'Arthur Friedenreich', 'Pelé', 'Lionel Messi', 2),
(70, 'football', 'Which club did Georghe Hagi play for?', 'AS Roma', 'Flamengo ', 'FC Zürich', 'FC Barcelona', 4),
(71, 'football', 'Which Chilean player once played in Switzerland, later for Real Madrid and Inter Milan?', 'Marcelo Salas', 'Ivan Zamorano', 'Arturo Vidal', 'Erick Pulgar', 2),
(72, 'football', 'Which Turkish player played for AS Roma?', 'Ünder', 'Sükür', 'Turan', 'Emre Belözoğlu', 1),
(73, 'football', 'Who is the most expensive Ethiopian player in market value?', 'Amanuel Gebremichael', 'Shemeles Bekele', 'Gatoch Panom', 'Beneyam Belay', 3),
(74, 'anatomy', 'Which organ is responsible for filtering blood and producing urine?', 'Liver\r\n\r\n\r\n', 'Heart', 'Kidney', 'Lungs', 3),
(75, 'anatomy', 'What bones form the skeleton of the human arm?', 'Ulna and Radius\r\n\r\n\r\n', 'Tibia and Fibula', 'Femur and Patella', 'Humerus and Scapula', 1),
(76, 'anatomy', 'What type of tissue connects bones to each other?', 'a) Muscle tissue\r\n\r\n\r\n', 'b) Nervous tissue', 'c) Connective tissue', 'd) Epithelial tissue', 3),
(77, 'anatomy', 'What is the term for the largest respiratory organ in the human body?\n\n\n\n\n', 'Liver', 'Stomach', 'Lung', 'Kidney', 3),
(78, 'anatomy', 'Which organ is responsible for producing insulin?', 'Pancreas', 'Thyroid gland', 'Adrenal gland', 'Gallbladder', 1),
(79, 'anatomy', 'What is the body\'s own fluid that lubricates joints called?', 'Saliva', 'Synovial fluid', 'Gastric juice', 'Bile', 2),
(80, 'anatomy', 'Which bones protect the brain?', 'Rib bones', 'Pelvic bones', 'Cranial bones', 'Spinal bones', 3),
(81, 'anatomy', 'What is the name of the longest bone in the human body?', 'Ulna', 'Radius', 'Femur', 'Tibia', 3),
(82, 'anatomy', 'Which heart valve separates the left atrium from the left ventricle?', 'Tricuspid valve', 'Aortic valve', 'Pulmonary valve', 'Mitral valve (bicuspid valve)', 4),
(83, 'anatomy', 'Which organ is responsible for producing red blood cells?', 'Spleen', 'Liver', 'Bone marrow', 'Pancreas', 3),
(84, 'anatomy', 'Which organ is part of the digestive system and produces bile?', 'Liver', 'Stomach', 'Small intestine', 'Kidney', 1),
(85, 'anatomy', 'What type of muscle tissue is under voluntary control?', 'Smooth muscle', 'Cardiac muscle', 'Connective muscle', 'Skeletal muscle', 4),
(86, 'anatomy', 'What are the hard outer layers of bone called?', 'Marrow', 'Cartilage', 'Spongy bone', 'Compact bone', 4),
(87, 'anatomy', 'Which organ regulates metabolism in the body and produces hormones?', 'Liver', 'Thyroid gland', 'Pancreas', 'Adrenal gland', 2),
(88, 'anatomy', 'Which blood cells are primarily responsible for immune defense?', 'Red blood cells', 'Platelets', 'White blood cells', 'Plasma cells', 3),
(89, 'swiss-animals', 'Which animal is often referred to as the \"Ghost of the Mountains\" and is perfectly adapted to alpine life?', 'Wolf', 'Lynx', 'Fox', 'Eagle', 2),
(90, 'swiss-animals', 'Which animal is a symbol of untouched nature, having a white fur in winter that turns brown in summer?', 'Wolverine', 'Snow hare', 'Bearded vulture', 'Alpine ptarmigan', 3),
(91, 'swiss-animals', 'Which animal is a skilled diver and primarily feeds on fish?', 'Heron', 'Seagull', 'Cormorant', 'Kingfisher', 3),
(92, 'swiss-animals', 'Which bird is known for its courtship flight at great heights and returns to Switzerland from Africa in spring?', 'Swallow', 'Kite', 'Peregrine falcon', 'Swift', 3),
(93, 'swiss-animals', 'Which animal has a spectacular rutting behavior and marks its territory with urine and fecal piles?', 'Deer', 'Ibex', 'Roe deer', 'Wild boar', 1),
(94, 'swiss-animals', 'Which small raptor is known for its agile flight maneuvers and pronounced hunting behavior?', 'Buzzard', 'Sparrowhawk', 'Falcon', 'Vulture', 2),
(95, 'swiss-animals', 'Which animal has a gray-spotted coat and bushy tail, is nocturnal, and a skillful climber?', 'Hedgehog', 'Badger', 'Fox', 'Stoat', 3),
(96, 'swiss-animals', 'Which animal is a master of camouflage, perfectly blending its color with the surroundings?', 'Owl', 'Chameleon', 'Marten', 'Marmot', 2),
(97, 'swiss-animals', 'Which animal has a powerful beak, feeds on insects, and nests in self-dug holes?', 'Woodpecker', 'Jackdaw', 'Ptarmigan', 'Blackbird', 1),
(98, 'swiss-animals', 'Which animal mostly lives in water, has a flat body, and a long, thin neck?', 'Frog', 'Newt', 'Grass snake', 'Moorhen', 4),
(99, 'swiss-animals', 'Which animal is known for its imposing horns and is primarily found in the high alpine regions?', 'Chamois', 'Ibex', 'Red deer', 'Elk', 2),
(100, 'swiss-animals', 'Which flightless bird has short wings and is known for its dancing courtship behavior on the ground?', 'Lapwing', 'Diver', 'Shrike', 'Dipper', 1),
(101, 'swiss-animals', 'Which animal has an agile body, a striped pattern on its hindquarters, and is known for its \"hopping\" gait?', 'Stoat', 'Weasel', 'Ferret', 'Badger', 2),
(102, 'swiss-animals', 'Which animal is a large omnivore, often scavenging at the roadside, and has a mask-like facial expression?', 'Raccoon', 'Fox', 'Marten', 'Badger', 1),
(103, 'swiss-animals', 'Which animal has a dense brown fur, lives in trees, and is primarily active during twilight?', 'Squirrel', 'Mole', 'Dormouse', 'Ziesel', 1);

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `topic` (`topic`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
