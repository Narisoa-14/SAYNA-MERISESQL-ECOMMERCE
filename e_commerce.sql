-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: e_commerce
-- ------------------------------------------------------
-- Server version	8.0.33

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `catégorie`
--

DROP TABLE IF EXISTS `catégorie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `catégorie` (
  `ID_du_Client` int NOT NULL AUTO_INCREMENT,
  `Nom_de_la_catégorie` varchar(255) DEFAULT NULL,
  `Description_de_la_catégorie` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID_du_Client`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `catégorie`
--

LOCK TABLES `catégorie` WRITE;
/*!40000 ALTER TABLE `catégorie` DISABLE KEYS */;
INSERT INTO `catégorie` VALUES (1,'Électronique','Produits électroniques et gadgets'),(2,'Vêtements','Vêtements pour hommes, femmes et enfants'),(3,'Mobilier','Meubles pour la maison et le bureau'),(4,'Sport','Équipements sportifs et articles de sport'),(5,'Alimentation','Produits alimentaires et boissons'),(6,'Beauté','Produits de beauté et soins personnels'),(7,'Jouets','Jouets et jeux pour enfants'),(8,'Livres','Livres imprimés et électroniques'),(9,'Automobile','Pièces et accessoires automobiles'),(10,'Maison et Jardin','Articles pour la maison et le jardin'),(11,'Électronique','Produits électroniques et gadgets'),(12,'Vêtements','Vêtements pour hommes, femmes et enfants'),(13,'Mobilier','Meubles pour la maison et le bureau'),(14,'Sport','Équipements sportifs et articles de sport'),(15,'Alimentation','Produits alimentaires et boissons'),(16,'Beauté','Produits de beauté et soins personnels'),(17,'Jouets','Jouets et jeux pour enfants'),(18,'Livres','Livres imprimés et électroniques'),(19,'Automobile','Pièces et accessoires automobiles'),(20,'Maison et Jardin','Articles pour la maison et le jardin'),(21,'Électronique','Produits électroniques et gadgets'),(22,'Vêtements','Vêtements pour hommes, femmes et enfants'),(23,'Mobilier','Meubles pour la maison et le bureau'),(24,'Sport','Équipements sportifs et articles de sport'),(25,'Alimentation','Produits alimentaires et boissons'),(26,'Beauté','Produits de beauté et soins personnels'),(27,'Jouets','Jouets et jeux pour enfants'),(28,'Livres','Livres imprimés et électroniques'),(29,'Automobile','Pièces et accessoires automobiles'),(30,'Maison et Jardin','Articles pour la maison et le jardin');
/*!40000 ALTER TABLE `catégorie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `client`
--

DROP TABLE IF EXISTS `client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `client` (
  `ID_du_Client` int NOT NULL AUTO_INCREMENT,
  `Nom` varchar(255) DEFAULT NULL,
  `Prénom` varchar(255) DEFAULT NULL,
  `Adresse_de_livraison` varchar(255) DEFAULT NULL,
  `Numéro_de_téléphone` int DEFAULT NULL,
  PRIMARY KEY (`ID_du_Client`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client`
--

LOCK TABLES `client` WRITE;
/*!40000 ALTER TABLE `client` DISABLE KEYS */;
INSERT INTO `client` VALUES (1,'Nouveau nom','John','123 Rue de la Poste',-4135),(2,'Smith','Jane','456 Avenue des Fleurs',-6975),(3,'Johnson','Robert','789 Rue Principale',-5555),(4,'Williams','Emily','321 Rue du Soleil',-1778),(5,'Brown','Michael','555 Boulevard des Arbres',-10332),(6,'Davis','Sarah','777 Avenue des Étoiles',-3555),(7,'Wilson','David','888 Rue de la Lune',-4555),(8,'Miller','Jessica','999 Rue de la Terre',-8221),(9,'Jones','Matthew','1010 Avenue de Mars',-6444),(10,'Garcia','Laura','2020 Rue de Vénus',-5222),(11,'Rico yan','Daniel','3030 Boulevard de Jupiter',-3222),(12,'Hernandez','Emily','4040 Avenue de Saturne',-1333),(13,'Lopez','Alex','5050 Rue ',-8444),(14,'Gonzalez','Olivia','6060 Avenue de Neptune',-4777),(15,'Rodriguez','Sophia','7070 Rue de Pluton',-7444),(16,'Perez','Aiden','8080 Boulevard de Mercure',-889),(17,'Williams','Ella','9090 Avenue de Vénus',-5666),(18,'Smith','Liam','10101 Rue de la Terre',-2222),(19,'Johnson','Emma','11111 Boulevard de Mars',-4666),(20,'Brown','Noah','12121 Avenue de Jupiter',-1000),(21,'Franco','Yan Nick','Fianarantsoa',612345678);
/*!40000 ALTER TABLE `client` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `commande`
--

DROP TABLE IF EXISTS `commande`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `commande` (
  `ID_de_commande` int NOT NULL AUTO_INCREMENT,
  `Date_de_commande` datetime DEFAULT NULL,
  `Etat_de_commande` varchar(255) DEFAULT NULL,
  `ID_du_utilisateur` int NOT NULL,
  `ID_du_client` int NOT NULL,
  PRIMARY KEY (`ID_de_commande`),
  KEY `ID_du_utilisateur` (`ID_du_utilisateur`),
  KEY `fk_Commande_Client` (`ID_du_client`),
  CONSTRAINT `commande_ibfk_1` FOREIGN KEY (`ID_du_utilisateur`) REFERENCES `utilisateur_administrateur` (`ID_de_utilisateur`),
  CONSTRAINT `fk_Commande_Client` FOREIGN KEY (`ID_du_client`) REFERENCES `client` (`ID_du_Client`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `commande`
--

LOCK TABLES `commande` WRITE;
/*!40000 ALTER TABLE `commande` DISABLE KEYS */;
/*!40000 ALTER TABLE `commande` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `commande_produit`
--

DROP TABLE IF EXISTS `commande_produit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `commande_produit` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `ID_du_Client` int NOT NULL,
  `ID_du_produit` int NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `ID_du_Client` (`ID_du_Client`),
  KEY `ID_du_produit` (`ID_du_produit`),
  CONSTRAINT `commande_produit_ibfk_1` FOREIGN KEY (`ID_du_Client`) REFERENCES `commande` (`ID_de_commande`),
  CONSTRAINT `commande_produit_ibfk_2` FOREIGN KEY (`ID_du_produit`) REFERENCES `produit` (`ID_du_produit`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `commande_produit`
--

LOCK TABLES `commande_produit` WRITE;
/*!40000 ALTER TABLE `commande_produit` DISABLE KEYS */;
/*!40000 ALTER TABLE `commande_produit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produit`
--

DROP TABLE IF EXISTS `produit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produit` (
  `ID_du_produit` int NOT NULL AUTO_INCREMENT,
  `Nom_du_produit` varchar(255) DEFAULT NULL,
  `Description` varchar(255) DEFAULT NULL,
  `Prix` double DEFAULT NULL,
  `Stock_disponible` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID_du_produit`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produit`
--

LOCK TABLES `produit` WRITE;
/*!40000 ALTER TABLE `produit` DISABLE KEYS */;
INSERT INTO `produit` VALUES (1,'Smartphone','Téléphone intelligent haut de gamme',79.99,'100'),(2,'Ordinateur portable','Ordinateur portable performant',999.99,'50'),(3,'Téléviseur 4K','Téléviseur Ultra HD avec écran LED',799.99,'30'),(4,'Caméra DSLR','Appareil photo numérique professionnel',1299.99,'20'),(5,'Console de jeux','Console de jeux de dernière génération',399.99,'75'),(6,'Casque audio sans fil','Casque audio Bluetooth de haute qualité',149.99,'150'),(7,'Tablette','Tablette Android avec écran tactile',299.99,'40'),(8,'Imprimante laser','Imprimante laser monochrome rapide',199.99,'25'),(9,'Aspirateur robot','Aspirateur robot intelligent',299.99,'60'),(10,'Enceinte Bluetooth','Enceinte portable avec connectivité Bluetooth',49.99,'200'),(11,'Smartwatch','Montre intelligente avec suivi de la santé',199.99,'80'),(12,'Laptop gaming','Ordinateur portable pour le jeu',1299.99,'35'),(13,'Réfrigérateur','Réfrigérateur avec congélateur',799.99,'15'),(14,'Machine à café','Machine à café programmable',149.99,'50'),(15,'Fer à repasser','Fer à repasser vapeur avec fonction de défroissage',49.99,'100'),(16,'Tapis de yoga','Tapis de yoga antidérapant',29.99,'200'),(17,'Enceinte intelligente','Assistant vocal avec haut-parleur',79.99,'60'),(18,'Souris sans fil','Souris ordinateur sans fil',19.99,'300'),(19,'Chargeur solaire','Chargeur solaire portable pour smartphones',39.99,'75'),(22,'Cafetière','Cafetière programmable avec carafe en verre',69.99,'30'),(23,'Mixeur à main','Mixeur à main électrique avec lames en acier',39.99,'40'),(24,'Couverture chauffante','Couverture chauffante électrique',59.99,'50'),(25,'Tondeuse à gazon','Tondeuse à gazon électrique',249.99,'15'),(26,'Lampe de bureau','Lampe de bureau à LED avec réglage de la luminosité',29.99,'100'),(27,'Casque de vélo','Casque de vélo léger et aérodynamique',39.99,'50'),(28,'Sac à dos','Sac à dos spacieux pour le quotidien',49.99,'75'),(29,'Pèse-personne','Pèse-personne numérique avec affichage LCD',19.99,'200'),(30,'Oreiller en mousse à mémoire de forme','Oreiller ergonomique pour un sommeil confortable',34.99,'150'),(31,'Enceinte Bluetooth étanche','Enceinte portable étanche pour une utilisation en extérieur',69.99,'100'),(32,'Clavier sans fil','Clavier sans fil avec pavé tactile',29.99,'80'),(33,'Ventilateur de bureau','Ventilateur de bureau silencieux avec trois vitesses',19.99,'120'),(34,'Couteau de cuisine','Ensemble de couteaux de cuisine en acier inoxydable',49.99,'40'),(35,'Brosse à dents électrique','Brosse à dents électrique avec minuteur',39.99,'60'),(36,'Chargeur rapide USB','Chargeur rapide USB pour smartphones',14.99,'250'),(37,'Enceinte Bluetooth portable','Enceinte portable avec son stéréo',59.99,'90'),(38,'Thermomètre numérique','Thermomètre numérique infrarouge sans contact',29.99,'70'),(39,'Télécommande universelle','Télécommande universelle pour appareils électroniques',19.99,'100'),(40,'Guitare acoustique','Guitare acoustique avec étui',149.99,'25'),(41,'Microphone USB','Microphone USB pour enregistrement audio',59.99,'30'),(42,'Piano numérique','Piano numérique avec touches lestées',699.99,'10'),(43,'Cafetière à expresso','Cafetière à expresso automatique',299.99,'15'),(44,'Machine à laver','Machine à laver à chargement frontal',499.99,'10'),(45,'Sèche-linge','Sèche-linge électrique avec plusieurs programmes',399.99,'10'),(46,'Four à micro-ondes','Four à micro-ondes compact',79.99,'20'),(66,'Ecouter','Description du nouveau produit',49.99,'50');
/*!40000 ALTER TABLE `produit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produit_catégorie`
--

DROP TABLE IF EXISTS `produit_catégorie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produit_catégorie` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `ID_du_Client` int NOT NULL,
  `ID_du_produit` int NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `ID_du_Client` (`ID_du_Client`),
  KEY `ID_du_produit` (`ID_du_produit`),
  CONSTRAINT `produit_catégorie_ibfk_1` FOREIGN KEY (`ID_du_Client`) REFERENCES `catégorie` (`ID_du_Client`),
  CONSTRAINT `produit_catégorie_ibfk_2` FOREIGN KEY (`ID_du_produit`) REFERENCES `produit` (`ID_du_produit`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produit_catégorie`
--

LOCK TABLES `produit_catégorie` WRITE;
/*!40000 ALTER TABLE `produit_catégorie` DISABLE KEYS */;
/*!40000 ALTER TABLE `produit_catégorie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `utilisateur_administrateur`
--

DROP TABLE IF EXISTS `utilisateur_administrateur`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `utilisateur_administrateur` (
  `ID_de_utilisateur` int NOT NULL AUTO_INCREMENT,
  `Nom_utulisateur` varchar(255) DEFAULT NULL,
  `Mot_de_passe` varchar(64) DEFAULT NULL,
  `utilisateur_normal` varchar(255) DEFAULT NULL,
  `administrateur` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID_de_utilisateur`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `utilisateur_administrateur`
--

LOCK TABLES `utilisateur_administrateur` WRITE;
/*!40000 ALTER TABLE `utilisateur_administrateur` DISABLE KEYS */;
INSERT INTO `utilisateur_administrateur` VALUES (1,'Franco Yannick','00001111','1','0'),(2,'Abel Rey','password15','0','1'),(3,'Aina Rakoto','rakoto2023','0','1'),(4,'François De paul','11111111','0','1'),(5,'John Doe','password123','1','0');
/*!40000 ALTER TABLE `utilisateur_administrateur` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-09-14  2:20:58
