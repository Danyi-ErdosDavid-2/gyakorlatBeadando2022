DROP TABLE IF EXISTS users;
CREATE TABLE users (id int(11) PRIMARY KEY, name varchar(255), email varchar(255), password varchar(255));

INSERT INTO users (id, name, email, password) VALUES
(1, 'Admin', 'admin@gmail.com', '$2a$10$QEaf3I.eLiZC4F4pDnqmC.sTysFlJ59wgROmw3ATxceFs/wgg0LvK'),
(2, 'User', 'user@gmail.com', '$2a$10$exVjZOnYQ3oFdNTFP7qVHOoL8K2XhKpWXY3r8duw8v9pTNxmC0qbm');

DROP TABLE IF EXISTS roles;
CREATE TABLE roles (id int(11) PRIMARY KEY, name varchar(255));

INSERT INTO roles (id, name) VALUES
(1, 'ROLE_ADMIN'),
(2, 'ROLE_USER'),
(3, 'ROLE_VISITOR');

DROP TABLE IF EXISTS user_role;
CREATE TABLE user_role (user_id int(11) PRIMARY KEY, role_id int(11));

INSERT INTO user_role (user_id, role_id) VALUES
(1, 1),
(2, 2);

DROP TABLE IF EXISTS jelentkezo;
CREATE TABLE jelentkezo (id int(11) PRIMARY KEY, nev varchar(100), nem varchar(100));

INSERT INTO jelentkezo (id, nev, nem) VALUES
(1, 'Skvar Tamás', 'f'),
(2, 'Tatár István', 'f'),
(3, 'Siket Karen', 'l'),
(5, 'Dombovári Petra', 'l'),
(6, 'Rém Elek', 'f'),
(8, 'Sebő Tas', 'f'),
(9, 'Szendrődi Csaba', 'f'),
(10, 'Berger Péter', 'f'),
(11, 'Csonka Anna', 'l'),
(13, 'Kovács Ágnes', 'l'),
(14, 'Szőke Mátyás', 'f'),
(15, 'Kiss Zsófia', 'l'),
(16, 'Bakos Kata Judit', 'l'),
(17, 'Bodnár Anna Katalin', 'l'),
(18, 'Keszthelyi Zsolt', 'f'),
(19, 'Kiss Lajos', 'f'),
(20, 'Szabó Orsolya Virág', 'l'),
(21, 'Vég Kálmán', 'f'),
(22, 'Hirzer Zsolt', 'f'),
(23, 'Kincses Zoltán', 'f'),
(24, 'Zentay Réka', 'l'),
(25, 'Kovai Róbert', 'f'),
(26, 'Koch Róbert', 'f'),
(27, 'Szilágyi István', 'f'),
(28, 'Horváth Pál', 'f'),
(29, 'Duma Árpád', 'f'),
(30, 'Nemes Gerda', 'l'),
(31, 'Zsolnai Péter', 'f'),
(32, 'Illés Nóra', 'l'),
(33, 'Fődi Anna', 'l'),
(34, 'Szűcs Lóránt', 'f'),
(35, 'Borsos Anett', 'l'),
(36, 'Sarlós Róbert', 'f'),
(37, 'Hoffmann Bettina', 'l'),
(38, 'Farkas Ildikó', 'l'),
(39, 'Gál Brigitta', 'l'),
(40, 'Szabó Izabella Diána', 'l'),
(41, 'Dudás Krisztián', 'f'),
(42, 'Csordás Kálmán', 'f'),
(43, 'Tóth Alexandra', 'l'),
(45, 'Dorogi Nóra Gréta', 'l'),
(46, 'Nemes Petra', 'l'),
(47, 'Schulcz Imola', 'l'),
(48, 'Senkey Tamás', 'f'),
(49, 'Nyers Sándor', 'f'),
(50, 'Szekeres József', 'f'),
(51, 'Berényi Zsolt', 'f'),
(52, 'Bánfalvi Ramóna', 'l'),
(53, 'Rácz Lili', 'l'),
(54, 'Botos Noémi', 'l'),
(55, 'Kasznár Judit', 'l'),
(57, 'Kerekes Lili', 'l'),
(58, 'Kis Barbara Emma', 'l'),
(60, 'Nagy Eszter', 'l'),
(61, 'Benkő Kata Enikő', 'l'),
(62, 'Urbán Roland', 'f'),
(63, 'Samu Blanka', 'l'),
(64, 'Pálinkás Anna', 'l'),
(65, 'Falch Emil', 'f'),
(66, 'Teleki Kálmán', 'f'),
(67, 'Sima Dezső', 'f'),
(68, 'Rudas Ádám', 'f'),
(69, 'Forrai Laura', 'l'),
(70, 'Irinyi Katalin Ida', 'l'),
(71, 'Hódi Vivien', 'l'),
(72, 'Máté Oszkár', 'f'),
(73, 'Püski Kata', 'l'),
(74, 'Mészáros Anita Réka', 'l'),
(75, 'Kis Nóra Judit', 'l'),
(76, 'Nyári Judit', 'l'),
(77, 'Balog Orsolya', 'l'),
(78, 'Zombori Adrienn', 'l'),
(79, 'Tóti Albert', 'f'),
(81, 'Petres Zoltán', 'f'),
(83, 'Rovó Petra', 'l'),
(85, 'Fogó Róbert', 'f'),
(86, 'Juhász Imre', 'f'),
(88, 'Tanács Lilla', 'l'),
(89, 'Kiss Sándor', 'f'),
(90, 'Kovács Vivien', 'l'),
(91, 'Kun Anna', 'l'),
(92, 'Pályi Balázs', 'f'),
(93, 'Kristóf Petra', 'l'),
(94, 'Gábor Zita', 'l'),
(95, 'Lakatos Zita Ildikó', 'l'),
(96, 'Garadnai Zoltán', 'f'),
(97, 'Bognár Ágnes', 'l'),
(98, 'Dobi Brigitta Krisztina', 'l'),
(99, 'Dócz Károly', 'f'),
(100, 'Halász Norbert', 'f');

DROP TABLE IF EXISTS kepzes;
CREATE TABLE kepzes (id int(11) SERIAL PRIMARY KEY, nev varchar(100), felveheto int(11), minimum int(11));

INSERT INTO kepzes (nev, felveheto, minimum) VALUES
('francia', 16, 140),
('angol', 30, 150),
('matematika', 16, 160),
('informatika', 16, 150),
('környezetvédelmi', 16, 130),
('közgazdasági', 30, 130);

DROP TABLE IF EXISTS jelentkezes;
CREATE TABLE jelentkezes (id int(11) SERIAL PRIMARY KEY, jelentkezoid int(11), kepzesid int(11), sorrend int(11), szerzett int(11));

INSERT INTO jelentkezes (jelentkezoid, kepzesid, sorrend, szerzett) VALUES
(212, 2, 1, 152),
(353, 5, 2, 123),
(278, 3, 1, 154),
(191, 4, 1, 187),
(102, 6, 1, 197),
(169, 4, 2, 145),
(67, 5, 3, 161),
(136, 6, 1, 192),
(126, 1, 1, 150),
(209, 6, 3, 107),
(233, 1, 2, 175),
(351, 3, 1, 132),
(366, 6, 2, 178),
(305, 2, 2, 162),
(193, 4, 1, 112),
(150, 3, 2, 132),
(237, 4, 2, 176),
(173, 3, 2, 146),
(138, 3, 1, 184),
(61, 3, 1, 113),
(279, 1, 3, 188),
(342, 1, 1, 151),
(244, 3, 3, 136),
(120, 6, 2, 117),
(39, 2, 1, 122),
(31, 1, 2, 152),
(64, 4, 2, 177),
(258, 6, 2, 112),
(243, 4, 1, 166),
(260, 2, 1, 140),
(346, 1, 1, 152),
(57, 3, 3, 135),
(352, 3, 3, 111),
(106, 2, 1, 125),
(333, 4, 3, 116),
(230, 5, 1, 132),
(335, 6, 1, 123),
(176, 3, 1, 184),
(379, 5, 2, 151),
(53, 1, 1, 182),
(27, 5, 2, 153),
(157, 3, 3, 171),
(254, 2, 1, 174),
(174, 4, 1, 146),
(316, 6, 2, 113),
(264, 3, 1, 186),
(99, 4, 2, 116),
(69, 1, 2, 187),
(5, 2, 1, 154),
(335, 3, 3, 176),
(104, 6, 1, 108),
(292, 2, 2, 174),
(345, 4, 1, 136),
(190, 3, 4, 115),
(36, 5, 1, 108),
(260, 3, 2, 139),
(241, 2, 2, 129),
(1, 2, 1, 139),
(282, 1, 1, 118),
(232, 4, 2, 128),
(67, 3, 1, 190),
(346, 6, 3, 153),
(37, 3, 2, 144),
(30, 5, 4, 197),
(35, 5, 2, 195),
(357, 5, 3, 174),
(371, 4, 1, 122),
(356, 4, 3, 135),
(327, 2, 4, 192),
(267, 6, 2, 155),
(75, 3, 1, 159),
(196, 2, 2, 154),
(282, 2, 2, 195),
(287, 3, 2, 161),
(229, 1, 1, 123),
(22, 5, 1, 133),
(365, 1, 1, 113),
(124, 1, 3, 111),
(179, 5, 3, 165),
(106, 3, 3, 179),
(306, 2, 1, 119),
(19, 2, 1, 162),
(305, 5, 4, 126),
(146, 5, 1, 187),
(243, 6, 2, 178),
(354, 3, 1, 118),
(172, 3, 3, 127),
(112, 3, 1, 189),
(231, 4, 1, 187),
(81, 3, 1, 186),
(284, 6, 1, 147),
(69, 2, 1, 115),
(23, 1, 4, 181),
(50, 2, 4, 125),
(196, 3, 3, 123),
(259, 3, 1, 137),
(321, 5, 1, 143),
(63, 6, 3, 121),
(172, 4, 1, 147),
(148, 3, 2, 123);

DROP TABLE IF EXISTS uzenet;
CREATE TABLE uzenet (id int(11) SERIAL PRIMARY KEY, content varchar(100), date varchar(100), name varchar(100));

DROP TABLE IF EXISTS vizsgazodiak;
CREATE TABLE vizsgazodiak (azon int(11) SERIAL PRIMARY KEY, nev varchar(50), osztaly varchar(50));

INSERT INTO vizsgazodiak (nev, osztaly) VALUES
('Borbás Ferenc', '11/B'),
('Sima Dezső', '11/C'),
('Lajos Lajos', '11/C'),
('Lant János', '12/D'),
('Fogó Róbert', '11/C'),
('Pisty Mihály', '12/D'),
('Déri Béla', '11/B'),
('Nikk Gábor', '12/B'),
('Budai Tamás', '12/A'),
('Bog Aladár', '12/A'),
('Bálint Gábor', '11/B'),
('Fekete Zsolt', '12/E'),
('Kisó Ábel', '10/D'),
('Hámori Frigyes', '10/C'),
('Kosztolányi András', '11/B'),
('Sebes Vilmos', '11/A'),
('Pölös Ágost', '12/A'),
('Szűcs Lóránt', '12/D'),
('Weisz Richárd', '11/B'),
('Tóth Zoltán', '10/E'),
('Pók Béla', '12/E'),
('Stabb Ottó', '9/A'),
('Füst Szabolcs', '12/C'),
('Budai Ferenc', '9/A'),
('Szósz György', '9/A'),
('Fenyves Attila', '12/B'),
('Ilkei Béla', '11/B'),
('Eszes Győző', '12/C'),
('Izsó Gusztáv', '12/C'),
('Mind Ákos', '9/C');