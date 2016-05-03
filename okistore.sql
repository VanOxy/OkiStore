-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Ven 15 Mai 2015 à 16:06
-- Version du serveur :  5.6.24
-- Version de PHP :  5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `okistore`
--

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `cat_id` int(11) NOT NULL,
  `name` varchar(50) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf16 COLLATE=utf16_unicode_ci;

--
-- Contenu de la table `categories`
--

INSERT INTO `categories` (`cat_id`, `name`) VALUES
(1, 'CPU'),
(2, 'Motherboard'),
(3, 'RAM'),
(4, 'Video'),
(5, 'Stockage'),
(6, 'Alimentaion'),
(7, 'Coller');

-- --------------------------------------------------------

--
-- Structure de la table `clients`
--

CREATE TABLE IF NOT EXISTS `clients` (
  `id_client` int(11) NOT NULL,
  `nom` varchar(50) CHARACTER SET latin1 NOT NULL,
  `prenom` varchar(50) CHARACTER SET latin1 NOT NULL,
  `adresse` varchar(150) CHARACTER SET latin1 NOT NULL,
  `code_postal` int(11) NOT NULL,
  `email` varchar(80) CHARACTER SET latin1 NOT NULL,
  `password` varchar(150) CHARACTER SET latin1 NOT NULL,
  `activation` varchar(200) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf16 COLLATE=utf16_unicode_ci;

--
-- Contenu de la table `clients`
--

INSERT INTO `clients` (`id_client`, `nom`, `prenom`, `adresse`, `code_postal`, `email`, `password`, `activation`) VALUES
(4, 'Okulichev', 'Ivan', 'rue des coquelicots 4', 7011, 'ivanokulichev@gmail.com', '11164727a67781c440b206206cc01ddeb93a04c3', '1');

-- --------------------------------------------------------

--
-- Structure de la table `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `id_prod` int(11) NOT NULL,
  `title` varchar(50) CHARACTER SET latin1 NOT NULL,
  `price` double DEFAULT NULL,
  `img` varchar(150) CHARACTER SET latin1 NOT NULL,
  `categorie` int(11) NOT NULL,
  `desc` varchar(500) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf16 COLLATE=utf16_unicode_ci;

--
-- Contenu de la table `products`
--

INSERT INTO `products` (`id_prod`, `title`, `price`, `img`, `categorie`, `desc`) VALUES
(2, 'Intel Core i5 4690K', 239.9, 'img_bd/cpu1.jpg', 1, 'Description du produit: Intel i5-4690K Core;\r\nFamille de processeur: Intel Core i5-4xxx;\r\nFréquence du processeur: 3.5 GHz;\r\nSocket de processeur (réceptable de processeur): Socket H3 (LGA 1150);\r\nMaximum RAM supportée: 32 Go;\r\nTypes de mémoire pris en charge: DDR3-SDRAM;\r\nPrise en charge de la mémoire vitesse d''horloge: 1333. 1600 MHz;\r\nModèle d''adaptateur graphique à bord: Intel HD Graphics 4600. fréquence graphics de base: 350 MHz;\r\nGraphics max dynamique de fréquence: 1200 MHz;'),
(4, 'Intel Core i7 4790K', 365.89, 'img_bd/cpu2.jpg', 1, 'Description du produit: Intel i7-4790K Core;\r\nFamille de processeur: Intel Core i7-4xxx;\r\nFréquence du processeur: 4 GHz;\r\nSocket de processeur (réceptable de processeur): Socket H3 (LGA 1150);\r\nMaximum RAM supportée: 32 Go;\r\nTypes de mémoire pris en charge: DDR3-SDRAM;\r\nPrise en charge de la mémoire vitesse d''horloge: 1333. 1600 MHz;'),
(5, 'Intel Core i3 4150k', 126.9, 'img_bd/cpu3.jpg', 1, 'Intel Core i3 - Socket 1150 / H3 / LGA1150;\r\nFréquence : 3,5 GHz;\r\nNombre de coeurs : 2;\r\nMicroarchitecture : Haswell;\r\nTaille du cache L1 : 4 x 32 Ko;\r\nTaille du cache L2 : 2 x 256 Ko;'),
(10, 'AMD 8350 FX', 181.9, 'img_bd/cpu5.jpg', 1, 'Description du produit: AMD FD8350FRHKBOX;\r\nType de produit: Processeur;\r\nGamme de CPU: AMD FX 8-Core Black Edition;\r\nSocket: Socket AM3+;\r\nDimensions: 14 x 7 x 12,7 cm;\r\nPoids: 454 g;'),
(11, 'AMD Athlon II', 75, 'img_bd/cpu6.jpg', 1, 'Description du produit: AMD Athlon II X4 750k, Athlon;\r\nFamille de processeur: AMD Athlon II X4;\r\nFréquence du processeur: 3,4 GHz;\r\nSocket de processeur (réceptable de processeur): Socket FM2;\r\nTypes de mémoire pris en charge: DDR3-SDRAM;\r\nPrise en charge de la mémoire vitesse d''horloge: 800, 1066, 1333, 1600, 1866 MHz;'),
(12, 'AMD FX 4-Core Black Edition', 78.99, 'img_bd/cpu7.jpg', 1, 'Description du produit: AMD FD4300WMHKBOX;\r\nType de produit: Processeur;\r\nGamme de CPU: AMD FX 4-Core Black Edition;\r\nSocket: Socket AM3+;\r\nDimensions: 14 x 7 x 12,7 cm;\r\nPoids: 454 g;'),
(13, 'Asus Maximus VII Hero', 209.9, 'img_bd/mere1.jpg', 2, 'Description du produit: ASUS MAXIMUS VII HERO;\r\nTypes de mémoire pris en charge: DDR3-SDRAM;\r\nMémoire de type fentes: DIMM;\r\nPrise en charge de la mémoire vitesse d''horloge: 1333, 1600, 1866, 2000, 2133, 2200, 2400, 2600, 2666, 2800, 2933, 3000 MHz;\r\nFamille de processeur: Intel;\r\nProcesseurs compatibles: Celeron, Core i3, Core i5 Core i7 Pentium;\r\nSocket de processeur (réceptable de processeur): Socket H3 (LGA 1150);\r\nInterfaces de disque dur soutenues: Série ATA III;'),
(14, 'Asus B85M-G', 71.02, 'img_bd/mere2.jpg', 2, 'Numéro du modèle de l''article:	B85M-G;\r\nCouleur:	Black;\r\nGarantie constructeur	Garantie Fabricant : 2 an(s);\r\nTaille de la mémoire vive	32768 MB;\r\nMémoire maximale	32 GB;\r\nSocket du processeur	LGA1150 package;\r\nItem dimensions L x W x H	35 x 30 x 6 centimeter;'),
(15, 'MSI AM1I', 37.99, 'img_bd/mere3.jpg', 2, 'Description du produit: MSI AM1I;\r\nTypes de mémoire pris en charge: DDR3-SDRAM;\r\nMémoire de type fentes: DIMM;\r\nCanaux de mémoire: Unique;\r\nFamille de processeur: AMD;\r\nProcesseurs compatibles: Athlon Sempron;\r\nSocket de processeur (réceptable de processeur): Socket AM1;\r\nInterfaces de disque dur soutenues: Série ATA III;\r\nContrôleur de réseau local (LAN): Realtek RTL8111G;\r\nType d''interface Ethernet: Gigabit;\r\nElément de forme de carte mère: Mini iTX;'),
(16, 'Gigabyte F2A88XN-WIFI', 109.39, 'img_bd/mere4.jpg', 2, 'Marque	Gigabyte;\r\nNuméro du modèle de l''article	GA-F2A88XN-WIFI;\r\nGarantie constructeur	Garantie Fabricant : 2 an(s);\r\nTaille de la mémoire vive	65536 MB;\r\nSocket du processeur	FM2+;\r\nItem dimensions L x W x H	25 x 25 x 6 centimeter;\r\nPoids du produit	950 grammes;'),
(17, 'Asus B85-PRO Gamer', 94.42, 'img_bd/mere5.jpg', 2, 'Description du produit: ASUS B85-PRO GAMER;\r\nTypes de mémoire pris en charge: DDR3-SDRAM;\r\nMémoire de type fentes: DIMM;\r\nPrise en charge de la mémoire vitesse d''horloge: 1066, 1333, 1600 MHz;\r\nFamille de processeur: Intel;\r\nSocket de processeur (réceptable de processeur): Socket H3 (LGA 1150);\r\nInterfaces de disque dur soutenues: Série ATA II Série ATA III;\r\nCarte mère chipset: Intel B85;\r\nElément de forme de carte mère: ATX;'),
(18, 'ASRock Z77 Pro3', 105.9, 'img_bd/mere6.jpg', 2, 'Marque	ASRock;\r\nNuméro du modèle de l''article	Z77 PRO3;\r\nséries	Z77 Pro3;\r\nGarantie constructeur	Garantie Fabricant : 1 an;\r\nTaille de la mémoire vive	32768 MB;\r\nMémoire maximale	32 GB;\r\nMarque chipset graphique	Intel;\r\nSocket du processeur	Socket H2 (LGA 1155);'),
(19, 'HyperX Fury', 63.58, 'img_bd/ram1.jpg', 3, 'Unique - Testée avec toutes les grandes marques de cartes mères;\r\nFacile à installer - Fonctionnalité Plug & Play;\r\nSurcadençage automatique - Pour atteindre des vitesses supérieures et des capacités plus élevées en installant uniquement de la mémoire sans avoir à modier le BIOS;\r\n8GB 1600MHz DDR3 CL10 DIMM (Kit of 2) HyperX FURY Blue Series;\r\nGarantie - Garantie à vie, assistance technique gratuite;\r\nCompatible: Avec les plateformes Intel et AMD;'),
(20, 'Corsair CMV4GX3M1A1333C9', 31.05, 'img_bd/ram2.jpg', 3, 'Description du produit: Corsair CMV4GX3M1A1333C9;\r\nMémoire interne: 4 Go;\r\nType de mémoire interne: DDR3;\r\nFréquence de la mémoire: 1333 MHz;'),
(21, 'Corsair CMSX4GX3M1A1600C9', 34.99, 'img_bd/ram3.jpg', 3, 'Description du produit: Corsair - CMSX4GX3M1A1600C9;\r\nType de produit: Mémoire RAM;\r\nCapacité de stockage: 4 Go;\r\nTechnologie: Classe 9;\r\nVitesse de mémoire: 1600 Mhz;\r\nCompatible: 2nd et 3rd Generation Intel Core i5 et Core i7 processor;\r\nGarantie du fabricant: 11 ans;'),
(22, 'G.Skill 8GB DDR3-2133', 77.99, 'img_bd/ram4.jpg', 3, 'Description du produit: G.Skill 8GB DDR3-2133;\r\nMémoire interne: 8 Go;\r\nType de mémoire interne: DDR3;\r\nFréquence de la mémoire: 2133 MHz;\r\nHauteur: 40 mm;'),
(23, 'HyperX Impact HX316LS9IBK2', 73.99, 'img_bd/ram5.jpg', 3, '8GB 1600MHz DDR3L CL9 SODIMM (Kit de 2) 1.35V;\r\nFormat SO-DIMM - design racé, performance thermique, conception mince facilitant l''installation;\r\nFacile à installer - surcadençage automatique, fonctionnalité plug & play sans ajustements dans le BIOS;\r\nÉcologique - Paramètres de basse tension qui réduisent la chaleur et le bruit;'),
(24, 'Corsair Vengeance LP Black', 41.63, 'img_bd/ram6.jpg', 3, 'Marque	Corsair;\r\nNuméro du modèle de l''article	CMZ4GX3M1A1600C9;\r\nCouleur	Black;\r\nGarantie constructeur	Garantie Fabricant : 2 ans;\r\nTaille de la mémoire vive	4096 MB;\r\nItem dimensions L x W x H	10.2 x 7.6 x 25 millimeters;\r\nPoids du produit	115 grammes;'),
(25, 'Asus Nvidia GeForce GTX 980', 649.9, 'img_bd/vid1.jpg', 4, 'Description du produit: ASUS 90YV07D0-M0NA00;\r\nProcesseur graphique: GeForce GTX 980;\r\nProcesseur graphique famille: NVIDIA;\r\nFréquence du chipset: 1178 MHz;\r\nDiscrete graphics adapter memory: 4 Go;\r\nType de mémoire de l''adaptateur graphique: GDDR5-SDRAM;\r\nMémoire Bus: 256 bit;\r\nType d''interface: PCI Express 3.0;\r\nVersion HDMI: 2.0;\r\nType de refroidissement: Actif;\r\nPrises de courant supplementaires: 1x 6-pin, 1x 8-pin;'),
(26, 'MSI Nvidia GeForce GTX 750', 167.71, 'img_bd/vid2.jpg', 4, 'Description du produit: MSI N750TI TF 2GD5/OC;\r\nProcesseur graphique famille: NVIDIA;\r\nProcesseur graphique: GeForce GTX 750 Ti;\r\nRésolution maximale: 2560 x 1600 pixels;\r\nCarte graphique distincte: 2 Go;\r\nType de mémoire de l''adaptateur graphique: GDDR5-SDRAM;\r\nMémoire Bus: 128 bit;\r\nType d''interface: PCI Express 3.0;\r\nVersion HDMI: 1.4a;\r\nVersion DirectX: 11.2;\r\nVersion OpenGL: 4.4;\r\nType de refroidissement: Actif;'),
(27, 'Gigabyte Gaming-4GD', 370.08, 'img_bd/vid3.jpg', 4, 'Numéro du modèle de l''article	GV-N970G1 GAMING-4GD;\r\nséries	Geforce GTX 970 GV-N970G1 GAMING-4GD;\r\nCouleur	NOIR;\r\nGarantie constructeur	Garantie Fabricant : 2 an(s);\r\nTaille du disque dur	4096 MB;\r\nMarque chipset graphique	Nvidia;\r\nFréquence du GPU	1178 MHz;\r\nDescription de la carte graphique	GEF GTX970;\r\nMémoire vive de la carte graphique	4096;\r\nType de mémoire vive (carte graphique)	GDDR5;'),
(28, 'Asus AMD Radeon R9 290 ', 316.77, 'img_bd/vid4.jpg', 4, 'Description du produit: ASUS R9290-DC2OC-4GD5;\r\nProcesseur graphique famille: AMD;\r\nProcesseur graphique: Radeon R9 290;\r\nFréquence du processeur: 1000 MHz;\r\nCarte graphique distincte: 4 Go;\r\nType de mémoire de l''adaptateur graphique: GDDR5-SDRAM;\r\nMémoire Bus: 512 bit;\r\nType d''interface: PCI Express 3.0;\r\nVersion DirectX: 11.2;\r\nType de refroidissement: Actif;'),
(29, 'Asus ATI Radeon R7 260X', 106, 'img_bd/vid5.jpg', 4, 'Description du produit: ASUS R7260X-DC2OC-2GD5 PCI-E A;\r\nProcesseur graphique: Radeon R7 260X;\r\nRésolution maximale: 2560 x 1600 pixels;\r\nProcesseur graphique famille: AMD. mémoire d''adaptateur graphique dicrêt: 2048 Mo;\r\nType de mémoire de l''adaptateur graphique: GDDR5-SDRAM. mémoire Bus: 128 bit;\r\nType d''interface: PCI Express 3.0;\r\nVersion DirectX: 11.2;\r\nProfondeur: 129.54 mm;\r\nHauteur: 38.1 mm;\r\nLargeur: 215.9 mm;'),
(30, 'MSI GTX970 Gaming 4G', 367.9, 'img_bd/vid6.jpg', 4, 'Description du produit: MSI GAMING 4G;\r\nProcesseur graphique famille: NVIDIA;\r\nProcesseur graphique: GeForce GTX 970;\r\nRésolution maximale: 4096 x 2160 pixels;\r\nDiscrete graphics adapter memory: 4 Go;\r\nType de mémoire de l''adaptateur graphique: GDDR5-SDRAM;\r\nMémoire Bus: 256 bit;\r\nType d''interface: PCI Express x16 3.0;\r\nVersion HDMI: 1.4a;\r\nVersion de DisplayPort: 1.2;\r\nVersion DirectX: 12.0;\r\nVersion OpenGL: 4.4;\r\nType de refroidissement: Actif;\r\nCouleur: Noir, Rouge;'),
(31, 'WD 40EFRX', 159.99, 'img_bd/hdd1.jpg', 5, 'Marque	Western Digital;\r\nNuméro du modèle de l''article	WD40EFRX;\r\nséries	WD40EFRX RED;\r\nGarantie constructeur	Garantie Fabricant : 24 mois;\r\nTaille du disque dur	4000 GB;\r\nTaille de l''écran	3.5 pouces;\r\nType d''alimentation	Non;\r\nInterface du matériel informatique	SATA 6.0 Gb/s;\r\nItem dimensions L x W x H	14.7 x 10.2 x 25 millimeters;\r\nPoids du produit	730 grammes;'),
(32, 'WD 10EZEX', 63.09, 'img_bd/hdd2.jpg', 5, 'Description du produit: WD Blue Desktop - WD10EZEX;\r\nType de produit: Disque dur interne;\r\nInterface: SATA 6 Gb/s;\r\nFormes de facteur: 3,5 pouces;\r\nCapacité du disque dur: 1 To;\r\nTaille de la mémoire cache: 64 Mo;\r\nVitesse de rotation: 7200 tr/mn (nominal);\r\nDimensions: 26,1 x 147 x 101,6 mm;\r\nPoids: 0,44 kg;'),
(33, 'WD 30EZRX', 110.75, 'img_bd/hdd3.jpg', 5, 'Description du produit: Western Digital - Caviar Green;\r\nType de Produit : Disque dur interne;\r\nFacteur de forme: 3.5 pouces x 1/3H;\r\nCapacité: 3 To;\r\nType d''interface: Serial ATA-600;\r\nDébit de transfert de données: 600 Mo/s;\r\nTaille de la Mémoire Tampon: 64 Mo;'),
(34, 'Corsair 80 PLUS Bronze ATX', 61.8, 'img_bd/alim1.jpg', 6, 'Marque	Corsair;\r\nNuméro du modèle de l''article	CP-9020048-EU;\r\nCouleur	Noir;\r\nGarantie constructeur	Garantie Fabricant : 3 ans;\r\nItem dimensions L x W x H	20 x 15 x 10 centimeter;\r\nPoids du produit	1000 grammes;'),
(35, 'Corsair 80 PLUS Platinum ATX ', 309.99, 'img_bd/alim2.jpg', 6, 'Marque	Corsair;\r\nNuméro du modèle de l''article	CP-9020008-EU;\r\nséries	AX1200i;\r\nCouleur	Noir;\r\nGarantie constructeur	Garantie Fabricant : 1 an;\r\nItem dimensions L x W x H	20 x 15 x 8.6 centimeter;\r\nPoids du produit	4 kilogrammes;'),
(36, 'FSP Fortron Raider Silver 650W', 87, 'img_bd/alim3.jpg', 6, 'Marque	FSP (Fortron);\r\nNuméro du modèle de l''article	RA-650;\r\nCouleur	Noir;\r\nGarantie constructeur	Garantie Fabricant : 5 an(s);\r\nItem dimensions L x W x H	15 x 14 x 8.6 centimeter;\r\nPoids du produit	1.9 kilogrammes;'),
(37, 'Enermax ENP500-AGT', 38.99, 'img_bd/alim4.jpg', 6, 'Description du produit: Enermax NAXN 500W;\r\nPuissance nominale: 500 W;\r\nTension d''entrée AC: 100 - 240 V;\r\nType de Correcteur de Factueur de Puissance (CFP): Actif;\r\nDiamètre du ventilateur: 120 mm;\r\nType de refroidissement: Actif;\r\nConnecteur de la carte mère: 20+4 pin ATX;\r\nElément de format: ATX;\r\nBut: PC;\r\nVersion ATX: 2.3;\r\nCouleur: Noir;'),
(38, 'SUZA - 500W - MPT5002', 26.99, 'img_bd/alim5.jpg', 6, 'Description du produit: Advance - MPT-5002 - Start Series;\r\nType de produit: Alimentation pour PC;\r\nFormat: ATX;\r\nPuissance: 500 W;\r\nVentilateur: 12 cm;\r\nGarantie du fabricant: 1 an;'),
(39, 'Noctua NH-U12P', 62, 'img_bd/cooler1.jpg', 7, 'Description du produit: Noctua NH-U12P SE2;\r\nCouleur: Marron;\r\nMatériel: Aluminium & cuivre;\r\nPoids: 770g;\r\nSystème de refroidissement: SSO;\r\nVitesse de rotation: 900 tr/min;\r\nDurée de vie du produit: 150000h;'),
(40, 'Cooler Master Hyper TX3 Evo', 23.98, 'img_bd/cooler2.jpg', 7, 'Description du produit: Cooler Master - Hyper TX3EVO;\r\nType de produit: Ventilateur de processeur PC;\r\nMatériaux radiateur: 3 caloducs à contact direct / Ailettes en aluminium;\r\nVitesse du ventilateur: 800 - 2200 RPM (PWM) ± 10%;\r\nNiveau de bruit du ventilateur (dB-A): 17 - 30 dBA;\r\nConnecteurs: 4 broches;\r\nDimensions du ventilateur (LxHxP): 92 x 92 x 25 mm;\r\nPoids: 386 g;'),
(41, 'Cooler Master Hyper 212 Evo', 37.99, 'img_bd/cooler3.jpg', 7, 'Description du produit: Cooler Master - Hyper 212EVO;\r\nType de produit: Ventilateur de processeur PC;\r\nMatériaux radiateur: 4 caloducs à contact direct / Ailettes en aluminium;\r\nVitesse du ventilateur: 600 - 1600 RPM (PWM) ± 10%;\r\nNiveau de bruit du ventilateur (dB-A): 9 - 31dBA;\r\nConnecteurs: 4 broches;\r\nCompatible avec les derniers processeurs Intel® LGA 1366 / 1155 et AMD FM1 / AM3+;\r\nDimensions du ventilateur (LxHxP): (L x l x h) 16 x 12 x 8 cm";\r\nPoids: 580 g;'),
(42, 'Be quiet! Dark Rock 3', 71.29, 'img_bd/cooler4.jpg', 7, 'Description du produit: be quiet! Dark Rock 3;\r\nType: Refroidisseur. convient pour: Processeur;\r\nDiamètre du ventilateur: 13,5 cm;\r\nCouleur: Noir, Argent;\r\nMatériel: Aluminium, Cuivre, Nickel;\r\nLongueur de câble: 0,22m;\r\nCourant nominal: 0,11A;\r\nConsommation électrique: 1,56W;\r\nTension: 12V;\r\nLargeur: 13,7 cm;\r\nProfondeur: 9,7 cm;\r\nHauteur: 16 cm;');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Index pour la table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id_client`);

--
-- Index pour la table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id_prod`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT pour la table `clients`
--
ALTER TABLE `clients`
  MODIFY `id_client` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `products`
--
ALTER TABLE `products`
  MODIFY `id_prod` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=43;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
