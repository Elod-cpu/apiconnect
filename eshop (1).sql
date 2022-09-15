CREATE DATABASE eshop;

CREATE TABLE `clients` (
  `id_Client` int PRIMARY KEY  NOT NULL AUTO_INCREMENT,
  `nom` varchar(150) NOT NULL,
  `prenom` varchar(75) NOT NULL,
  `adresse` int(11) NOT NULL,
  `email` varchar(45) NOT NULL
) ENGINE=Innodb DEFAULT CHARSET=utf8;


CREATE TABLE `commandes` (
  `id_Commande` int PRIMARY KEY AUTO_INCREMENT,
  `id_Client` int(9) NOT NULL,
  `date` varchar(10) NOT NULL,
  FOREIGN KEY (`id_Client`) REFERENCES clients(`id_Client`)
) ENGINE=Innodb DEFAULT CHARSET=utf8;


CREATE TABLE `marque` (
  `id_marque` int PRIMARY KEY AUTO_INCREMENT,
  `marque` varchar(25) NOT NULL,
  `logo` varchar(10) NOT NULL
) ENGINE=Innodb DEFAULT CHARSET=utf8;


CREATE TABLE `chaussures` (
  `id_Chaussures` int PRIMARY KEY AUTO_INCREMENT,
  `id_marque` int(9) NOT NULL,
  `pointure` int(2) NOT NULL,
  `couleur` varchar(20) NOT NULL,
  `prix` float NOT NULL,
  `nom_chaussure` varchar(25) NOT NULL,  
  FOREIGN KEY (`id_marque`) REFERENCES marque(`id_marque`),
  KEY `pointure`(`pointure`)
) ENGINE=Innodb DEFAULT CHARSET=utf8;


CREATE TABLE `pointure` (
  `id_pointure` int PRIMARY KEY AUTO_INCREMENT,
   `pointure` int(2) NOT NULL,
   FOREIGN KEY (`pointure`) REFERENCES chaussures(`pointure`)
) ENGINE=Innodb DEFAULT CHARSET=utf8;


CREATE TABLE `liste_commandes` (
  `id_Commande` int PRIMARY KEY  AUTO_INCREMENT,
  `id_Chaussures` int(9) NOT NULL,
  `quantité` int(3) NOT NULL,
  FOREIGN KEY (`id_Chaussures`) REFERENCES chaussures(`id_Chaussures`)
) ENGINE=Innodb DEFAULT CHARSET=utf8;


INSERT INTO `marque` (`id_marque`, `marque`, `logo`) VALUES
(NULL, 'Adidas', 'LogoAdidas'),
(NULL, 'Nike', 'LogoNike'),
(NULL, 'Puma', 'LogoPuma'),
(NULL, 'Vans', 'LogoVans');


INSERT INTO `chaussures` (`id_Chaussures`, `id_marque`, `pointure`, `couleur`, `prix`, `nom_chaussure`) VALUES
(NULL, 2, 39, 'Rose', 85000, 'Nike'),
(NULL, 1, 40, 'Bleu', 30000, 'Adidas'),
(NULL, 3, 41, 'Noir', 45000, 'Vans'),

(NULL, 2, 45, 'Rouge', 90000, 'Nike'),
(NULL, 1, 30, 'Orange', 80000, 'Adidas'),
(NULL, 3, 40, 'Vert', 50000, 'Vans'),

(NULL, 2, 20, 'Gris', 25000, 'Nike'),
(NULL, 1, 28, 'Jaune', 60000, 'Adidas'),
(NULL, 3, 41, 'Blanc', 75000, 'Puma');


INSERT INTO `pointure` (`id_pointure`, `pointure`) VALUES
(NULL, 39),
(NULL, 40),
(NULL, 20),
(NULL, 45),
(NULL, 30),
(NULL, 28),
(NULL, 41);





--ALTER TABLE `chaussures` ADD INDEX(`pointure`);
