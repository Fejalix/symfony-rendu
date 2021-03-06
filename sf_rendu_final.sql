-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 20, 2022 at 10:29 PM
-- Server version: 5.7.33
-- PHP Version: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sf_rendu_final`
--

-- --------------------------------------------------------

--
-- Table structure for table `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20220220193432', '2022-02-20 19:34:40', 56),
('DoctrineMigrations\\Version20220220194701', '2022-02-20 19:47:07', 154),
('DoctrineMigrations\\Version20220220200754', '2022-02-20 20:08:00', 93),
('DoctrineMigrations\\Version20220220215635', '2022-02-20 21:56:43', 139);

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtitle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'No subtitle'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`id`, `title`, `content`, `created_at`, `image`, `subtitle`) VALUES
(33, 'Grec ou Python ? Et si Pascal avait la solution???', 'Zemmour ne conna??t pas Python, et lui pr??f??re le grec. Mais la France ne restera pas un pays d\'innovation, dont les ing??nieurs sont pl??biscit??s, si le niveau des maths ?? l\'??cole continue ?? descendre en chute libre. Car sans les maths, pas d\'IA et pas de data scientists... Les maths ne doivent pas pour autant ??vincer les ?? humanit??s ?? : les codeurs ont besoin aussi d\'apprendre l\'??thique !\r\n\r\nGrec ou Python ? La pol??mique lanc??e involontairement par Eric Zemmour, qui ne connaissait pas ce langage de programmation informatique, est r??v??latrice. Tous les candidats ?? la pr??sidentielle louent les capacit??s d\'innovation du pays, ses ing??nieurs, ses licornes, et depuis le rapport de C??dric Villani, sa fili??re intelligence artificielle (IA) - qui est en r??alit?? une extension de notre fili??re math??matique car sans formation solide dans cette discipline, il est difficile d\'exceller en Python. Les entreprises am??ricaines de la tech s\'arrachent nos data scientists : elles ouvrent en France des centres d\'expertise de pointe.\r\n\r\nMais combien de temps cela restera-t-il vrai ? L\'??dition 2021 du classement TIMSS (Trends in Mathematics and Science Study) nous rappelle ?? l\'ordre - la France est d??sormais class??e 30e sur les 31 pays de l\'OCDE et de l\'UE, juste devant le Chili -, pour le niveau en math??matiques des ??l??ves de CM1.', '2017-01-01 00:00:00', '070860807789-web-tete-6212bc568b383.jpg', 'Zemmour ne conna??t pas Python, et lui pr??f??re le grec. Mais la France ne restera pas un pays d\'innovation, dont les ing??nieurs sont pl??biscit??s, si le niveau des maths ?? l\'??cole continue ?? descendre en chute libre. Car sans les maths, pas d\'IA et pas de d'),
(34, 'Horoscope du jour : Lion', 'Consultez l\'horoscope Lion de la journ??e. Pour conna??tre, les pr??visions quotidiennes de votre signe en amour, travail, sant??, argent, famille et foyer, d??couvrez, chaque jour, l???horoscope gratuit que les astrologues vous r??servent pour le 20 f??vrier 2022.\r\n\r\nAmour\r\nSi, derni??rement, vous avez r??ussi ?? ??viter la s??paration sous l\'influence de la Lune, vous pourrez d??sormais reconstruire une relation harmonieuse avec votre conjoint ou partenaire. Ce mouvement c??leste sera ??galement favorable aux solitaires. Moins exigeants, ils auront, en outre, davantage d\'occasions de croiser la personne qui ??veillera leur d??sir.\r\n\r\nTravail\r\nDans le travail, vous ne rencontrerez aucun obstacle. Vous jouerez sur du velours gr??ce aux superbes aspects de Mercure. Vous serez projet?? sur le devant de la sc??ne professionnelle.\r\n\r\nSant??\r\nVotre vitalit?? sera excellente, mais votre moral accusera des fluctuations. Sachez que vous n\'avez vraiment rien de s??rieux ?? redouter en ce moment. Juste quelques petites contrari??t??s familiales ou professionnelles, ?? g??rer avec m??thode, et surtout sans vous d??monter.\r\n\r\nArgent\r\nAttention ?? l\'agressivit?? verbale dont les cons??quences peuvent vous ??tre n??fastes. Un coup de d??veine financier pourra en r??sulter. Journ??e d??licate pour les placements d\'argent ; il vaudrait mieux attendre.\r\n\r\nFamille et foyer\r\nMercure vous conseillera de surveiller ??troitement la sant?? de vos enfants. Pensez ?? leur faire subir syst??matiquement un contr??le m??dical tous les six mois, m??me s\'ils ne pr??sentent aucun sympt??me suspect, car \"tout bien portant est un malade qui s\'ignore\" (Jules Romains).', '2017-01-01 00:00:00', 'lion-6212bc964aef9.jpg', 'Consultez l\'horoscope Lion de la journ??e. Pour conna??tre, les pr??visions quotidiennes de votre signe en amour, travail, sant??, argent, famille et foyer, d??couvrez, chaque jour, l???horoscope gratuit que les astrologues vous r??servent pour le 20 f??vrier 2022'),
(35, '5 formations en ligne pour devenir d??veloppeur web', 'D??veloppement de sites web avec langage HTML et les style CSS + WordPress avec FORMA13\r\nCette formation vous permettra d???appr??hender la cr??ation de site web avec WordPress et les langages HTML/CSS, afin de d??velopper un site de A ?? Z. ?? l???issue de ce programme, vous serez en capacit?? d???optimiser votre site web gr??ce au code, personnaliser le graphisme gr??ce au CSS et optimiser son r??f??rencement SEO. Aucun niveau acad??mique n???est requis pour suivre cette formation, qui d??livre les certifications ICPF & PSI, Datadock et Qualiopi.\r\n\r\nDur??e : 10 jours ??? 70h\r\nType d???enseignement : ?? distance ??? En centre ??? En entreprise\r\nPublic admis : salari?? en poste, entreprise\r\nPrix : 2 800 ???, finan??able CPF\r\n\r\nDemander le programme\r\n\r\nD??veloppeur d???application ??? JavaScript React avec OpenClassRooms ??? Social Programs\r\nCe cursus, propos?? ?? distance, est destin?? aux demandeurs d???emploi et vise ?? former au m??tier de d??veloppeur front-end. L???objectif de ce programme : savoir travailler en mode agile, cr??er des sites web gr??ce au HTML et au CSS, cr??er des applications web dynamiques avec JavaScript et React, ou encore communiquer avec le back-end de l???application gr??ce ?? une API. Pour cette formation, un niveau bac+2 est requis, ainsi que l???acc??s ?? un mat??riel performant. ?? l???issue de cette formation, les apprenants acc??dent au dipl??me ?? D??veloppeur concepteur logiciel ??, avec la sp??cialit?? front-end (niveau bac+3/4).\r\n\r\nDur??e : 12 mois\r\nType d???enseignement : ?? distance\r\nPublic admis : demandeur d???emploi\r\nPrix : contacter l???organisme\r\n\r\nS???informer gratuitement\r\n\r\nPython pour la data science avec Stat4decision\r\nCe programme vise ?? acqu??rir une bonne ma??trise des bases du langage Python, ??tre capable d???analyser des donn??es, pouvoir automatiser leur traitement et conna??tre les outils de la data science, mais aussi appr??hender les principes du machine learning. Pour acc??der ?? cette formation, un niveau bac+3 est requis, ainsi que des connaissances de base en traitement de donn??es (statistique et tables de donn??es). Les apprenants b??n??ficient des certifications Datadock et Qualiopi ?? l???issue de la formation.\r\n\r\nDur??e : 21 heures\r\nType d???enseignement : ?? distance ??? En centre ??? En entreprise\r\nPublic admis : salari?? en poste, entreprise\r\nPrix : 1 500 ???\r\n\r\nEn savoir plus sur cette formation\r\n\r\nBootcamp Cloud AWS avec ISIKA\r\nCe bootcamp vise ?? permettre aux apprenants de faire ??voluer leurs architectures et de tirer parti des capacit??s du Cloud AWS. Les objectifs de cette formation : ma??triser le d??veloppement d???applications cloud ?? l???aide d???AWS, cr??er et entretenir des modules de code sur AWS, ou encore appr??hender les bonnes pratiques d???AWS en mati??re de s??curit??. La formation demande de poss??der un niveau bac+3, des notions de DevOps, la connaissance d???au moins un langage de programmation et des connaissances de base pour SpringBoot et WebServices.\r\n\r\nDur??e : 8 jours\r\nType d???enseignement : ?? distance\r\nPublic admis : salari?? en poste, demandeur d???emploi, entreprise\r\nPrix : contacter l???organisme, finan??able CPF\r\n\r\nS???informer gratuitement\r\n\r\nD??veloppeur JavaScript avec 26 ACADEMY\r\nCette formation entend rendre les apprenants totalement op??rationnels et capables de d??velopper des sites web dynamiques. ?? l???issue du parcours, vous serez capable de prendre en compte la diversit?? et les exigences des utilisateurs, d?????crire du code JavaScript efficace. Vous disposerez d???une bonne connaissance des m??tiers du web et des bonnes pratiques en JavaScript. Un examen final vous permet de valider ces comp??tences et d???acc??der au certificat de ??Ma??trise de la qualit?? en projet Web ?? reconnu par l?????tat, les entreprises et d??pos?? au Registre Sp??cifique de France Comp??tences.\r\n\r\nDur??e : 52 heures\r\nType d???enseignement : ?? distance\r\nPublic admis : salari?? en poste, demandeur d???emploi, entreprise\r\nPrix : 1 799 ???, finan??able CPF', '2017-01-01 00:00:00', 'formations-developpeur-web-6212bce40ffac.jpg', 'D??veloppement de sites web avec langage HTML et les style CSS + WordPress avec FORMA13 Cette formation vous permettra d???appr??hender la cr??ation de site web avec WordPress et les langages HTML/CSS, afin de d??velopper un site de A ?? Z. ?? l???issue de ce progr');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` json NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `email`, `roles`, `password`) VALUES
(2, 'test@test.com', '[\"ROLE_ADMIN\"]', '$2y$13$AedeJadlTp0Xkc2k2M4tF.ZA8N1BEl5EorEu/1xy3AXUoCLhBgwvO');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
