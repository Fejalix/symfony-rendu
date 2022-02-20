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
(33, 'Grec ou Python ? Et si Pascal avait la solution…', 'Zemmour ne connaît pas Python, et lui préfère le grec. Mais la France ne restera pas un pays d\'innovation, dont les ingénieurs sont plébiscités, si le niveau des maths à l\'école continue à descendre en chute libre. Car sans les maths, pas d\'IA et pas de data scientists... Les maths ne doivent pas pour autant évincer les « humanités » : les codeurs ont besoin aussi d\'apprendre l\'éthique !\r\n\r\nGrec ou Python ? La polémique lancée involontairement par Eric Zemmour, qui ne connaissait pas ce langage de programmation informatique, est révélatrice. Tous les candidats à la présidentielle louent les capacités d\'innovation du pays, ses ingénieurs, ses licornes, et depuis le rapport de Cédric Villani, sa filière intelligence artificielle (IA) - qui est en réalité une extension de notre filière mathématique car sans formation solide dans cette discipline, il est difficile d\'exceller en Python. Les entreprises américaines de la tech s\'arrachent nos data scientists : elles ouvrent en France des centres d\'expertise de pointe.\r\n\r\nMais combien de temps cela restera-t-il vrai ? L\'édition 2021 du classement TIMSS (Trends in Mathematics and Science Study) nous rappelle à l\'ordre - la France est désormais classée 30e sur les 31 pays de l\'OCDE et de l\'UE, juste devant le Chili -, pour le niveau en mathématiques des élèves de CM1.', '2017-01-01 00:00:00', '070860807789-web-tete-6212bc568b383.jpg', 'Zemmour ne connaît pas Python, et lui préfère le grec. Mais la France ne restera pas un pays d\'innovation, dont les ingénieurs sont plébiscités, si le niveau des maths à l\'école continue à descendre en chute libre. Car sans les maths, pas d\'IA et pas de d'),
(34, 'Horoscope du jour : Lion', 'Consultez l\'horoscope Lion de la journée. Pour connaître, les prévisions quotidiennes de votre signe en amour, travail, santé, argent, famille et foyer, découvrez, chaque jour, l’horoscope gratuit que les astrologues vous réservent pour le 20 février 2022.\r\n\r\nAmour\r\nSi, dernièrement, vous avez réussi à éviter la séparation sous l\'influence de la Lune, vous pourrez désormais reconstruire une relation harmonieuse avec votre conjoint ou partenaire. Ce mouvement céleste sera également favorable aux solitaires. Moins exigeants, ils auront, en outre, davantage d\'occasions de croiser la personne qui éveillera leur désir.\r\n\r\nTravail\r\nDans le travail, vous ne rencontrerez aucun obstacle. Vous jouerez sur du velours grâce aux superbes aspects de Mercure. Vous serez projeté sur le devant de la scène professionnelle.\r\n\r\nSanté\r\nVotre vitalité sera excellente, mais votre moral accusera des fluctuations. Sachez que vous n\'avez vraiment rien de sérieux à redouter en ce moment. Juste quelques petites contrariétés familiales ou professionnelles, à gérer avec méthode, et surtout sans vous démonter.\r\n\r\nArgent\r\nAttention à l\'agressivité verbale dont les conséquences peuvent vous être néfastes. Un coup de déveine financier pourra en résulter. Journée délicate pour les placements d\'argent ; il vaudrait mieux attendre.\r\n\r\nFamille et foyer\r\nMercure vous conseillera de surveiller étroitement la santé de vos enfants. Pensez à leur faire subir systématiquement un contrôle médical tous les six mois, même s\'ils ne présentent aucun symptôme suspect, car \"tout bien portant est un malade qui s\'ignore\" (Jules Romains).', '2017-01-01 00:00:00', 'lion-6212bc964aef9.jpg', 'Consultez l\'horoscope Lion de la journée. Pour connaître, les prévisions quotidiennes de votre signe en amour, travail, santé, argent, famille et foyer, découvrez, chaque jour, l’horoscope gratuit que les astrologues vous réservent pour le 20 février 2022'),
(35, '5 formations en ligne pour devenir développeur web', 'Développement de sites web avec langage HTML et les style CSS + WordPress avec FORMA13\r\nCette formation vous permettra d’appréhender la création de site web avec WordPress et les langages HTML/CSS, afin de développer un site de A à Z. À l’issue de ce programme, vous serez en capacité d’optimiser votre site web grâce au code, personnaliser le graphisme grâce au CSS et optimiser son référencement SEO. Aucun niveau académique n’est requis pour suivre cette formation, qui délivre les certifications ICPF & PSI, Datadock et Qualiopi.\r\n\r\nDurée : 10 jours – 70h\r\nType d’enseignement : À distance • En centre • En entreprise\r\nPublic admis : salarié en poste, entreprise\r\nPrix : 2 800 €, finançable CPF\r\n\r\nDemander le programme\r\n\r\nDéveloppeur d’application – JavaScript React avec OpenClassRooms – Social Programs\r\nCe cursus, proposé à distance, est destiné aux demandeurs d’emploi et vise à former au métier de développeur front-end. L’objectif de ce programme : savoir travailler en mode agile, créer des sites web grâce au HTML et au CSS, créer des applications web dynamiques avec JavaScript et React, ou encore communiquer avec le back-end de l’application grâce à une API. Pour cette formation, un niveau bac+2 est requis, ainsi que l’accès à un matériel performant. À l’issue de cette formation, les apprenants accèdent au diplôme « Développeur concepteur logiciel », avec la spécialité front-end (niveau bac+3/4).\r\n\r\nDurée : 12 mois\r\nType d’enseignement : À distance\r\nPublic admis : demandeur d’emploi\r\nPrix : contacter l’organisme\r\n\r\nS’informer gratuitement\r\n\r\nPython pour la data science avec Stat4decision\r\nCe programme vise à acquérir une bonne maîtrise des bases du langage Python, être capable d’analyser des données, pouvoir automatiser leur traitement et connaître les outils de la data science, mais aussi appréhender les principes du machine learning. Pour accéder à cette formation, un niveau bac+3 est requis, ainsi que des connaissances de base en traitement de données (statistique et tables de données). Les apprenants bénéficient des certifications Datadock et Qualiopi à l’issue de la formation.\r\n\r\nDurée : 21 heures\r\nType d’enseignement : À distance • En centre • En entreprise\r\nPublic admis : salarié en poste, entreprise\r\nPrix : 1 500 €\r\n\r\nEn savoir plus sur cette formation\r\n\r\nBootcamp Cloud AWS avec ISIKA\r\nCe bootcamp vise à permettre aux apprenants de faire évoluer leurs architectures et de tirer parti des capacités du Cloud AWS. Les objectifs de cette formation : maîtriser le développement d’applications cloud à l’aide d’AWS, créer et entretenir des modules de code sur AWS, ou encore appréhender les bonnes pratiques d’AWS en matière de sécurité. La formation demande de posséder un niveau bac+3, des notions de DevOps, la connaissance d’au moins un langage de programmation et des connaissances de base pour SpringBoot et WebServices.\r\n\r\nDurée : 8 jours\r\nType d’enseignement : À distance\r\nPublic admis : salarié en poste, demandeur d’emploi, entreprise\r\nPrix : contacter l’organisme, finançable CPF\r\n\r\nS’informer gratuitement\r\n\r\nDéveloppeur JavaScript avec 26 ACADEMY\r\nCette formation entend rendre les apprenants totalement opérationnels et capables de développer des sites web dynamiques. À l’issue du parcours, vous serez capable de prendre en compte la diversité et les exigences des utilisateurs, d’écrire du code JavaScript efficace. Vous disposerez d’une bonne connaissance des métiers du web et des bonnes pratiques en JavaScript. Un examen final vous permet de valider ces compétences et d’accéder au certificat de «Maîtrise de la qualité en projet Web » reconnu par l’État, les entreprises et déposé au Registre Spécifique de France Compétences.\r\n\r\nDurée : 52 heures\r\nType d’enseignement : À distance\r\nPublic admis : salarié en poste, demandeur d’emploi, entreprise\r\nPrix : 1 799 €, finançable CPF', '2017-01-01 00:00:00', 'formations-developpeur-web-6212bce40ffac.jpg', 'Développement de sites web avec langage HTML et les style CSS + WordPress avec FORMA13 Cette formation vous permettra d’appréhender la création de site web avec WordPress et les langages HTML/CSS, afin de développer un site de A à Z. À l’issue de ce progr');

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
