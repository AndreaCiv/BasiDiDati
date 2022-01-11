-- MySQL dump 10.13  Distrib 8.0.27, for macos12.0 (x86_64)
--
-- Host: localhost    Database: studio_legale
-- ------------------------------------------------------
-- Server version	8.0.27

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
-- Table structure for table `avvocato`
--

DROP TABLE IF EXISTS `avvocato`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `avvocato` (
  `codiceFiscale` char(16) NOT NULL,
  `nome` varchar(15) NOT NULL,
  `cognome` varchar(15) NOT NULL,
  `dataNascita` date NOT NULL,
  `email` varchar(40) NOT NULL,
  `pec` varchar(40) NOT NULL,
  `partitaIVA` char(11) NOT NULL,
  `numPolizza` varchar(20) NOT NULL,
  `maxPolizza` int NOT NULL,
  PRIMARY KEY (`codiceFiscale`),
  UNIQUE KEY `partitaIVA` (`partitaIVA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `avvocato`
--

LOCK TABLES `avvocato` WRITE;
/*!40000 ALTER TABLE `avvocato` DISABLE KEYS */;
INSERT INTO `avvocato` VALUES ('NREGLI80R63G482C','Giulia','Neri','1980-10-25','giulia@neri.it','giulia@neri.pec.it','12340987543','4352GUE123',100000),('RSSGBR78M56G569X','Gabriele','Rossi','1981-03-06','gabriele@rossi.it','gabriele@rossi.pec.it','89762675910','904875C78',100000),('VRDSMN67M54H456K','Simone','Verdi','1975-03-21','simone@verdi.it','simone@verdi.pec.it','78462985624','ALD457890',100000);
/*!40000 ALTER TABLE `avvocato` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clientefisico`
--

DROP TABLE IF EXISTS `clientefisico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientefisico` (
  `codiceFiscale` char(16) NOT NULL,
  `nome` varchar(15) NOT NULL,
  `cognome` varchar(15) NOT NULL,
  `dataNascita` date NOT NULL,
  `luogoNascita` varchar(20) NOT NULL,
  `citta` varchar(20) NOT NULL,
  `via` varchar(50) NOT NULL,
  `numeroCivico` smallint unsigned DEFAULT NULL,
  `cap` mediumint unsigned NOT NULL,
  `email` varchar(40) NOT NULL,
  `telefono` varchar(15) NOT NULL,
  `numerocontratti` tinyint unsigned DEFAULT '0',
  PRIMARY KEY (`codiceFiscale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientefisico`
--

LOCK TABLES `clientefisico` WRITE;
/*!40000 ALTER TABLE `clientefisico` DISABLE KEYS */;
INSERT INTO `clientefisico` VALUES ('BNCGVN56M96E435J','Giovanni','Bianchi','1984-08-22','Pescara','Pescara','Viale bovio',89,65121,'giovanni@bianchi.it','3925874671',1),('CJDIOR879JI23NI5','paolo','di giovanni','1983-05-09','ancona','ancona','piazza diaz',35,60123,'paolo@digiovanni.it','3986758489',1),('RSSCRL78M87G141P','Carlo','Rossi','1976-05-12','Teramo','Alba Adriatica','Via 1 Maggio',15,69086,'carlo@rossi.it','3997658713',0);
/*!40000 ALTER TABLE `clientefisico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clientegiuridico`
--

DROP TABLE IF EXISTS `clientegiuridico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientegiuridico` (
  `partitaIVA` char(11) NOT NULL,
  `nomeAzienda` varchar(40) NOT NULL,
  `cittaRegistro` varchar(20) NOT NULL,
  `ragioneSociale` varchar(100) NOT NULL,
  `via` varchar(50) NOT NULL,
  `citta` varchar(20) NOT NULL,
  `numeroCivico` smallint unsigned DEFAULT NULL,
  `cap` mediumint unsigned NOT NULL,
  `telefono` varchar(15) NOT NULL,
  `email` varchar(40) NOT NULL,
  `numerocontratti` tinyint unsigned DEFAULT '0',
  PRIMARY KEY (`partitaIVA`),
  UNIQUE KEY `ragioneSociale` (`ragioneSociale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientegiuridico`
--

LOCK TABLES `clientegiuridico` WRITE;
/*!40000 ALTER TABLE `clientegiuridico` DISABLE KEYS */;
INSERT INTO `clientegiuridico` VALUES ('09758637854','Cartolibreria','Teramo','Cartolibreria','Piazza plebiscito','Giulianova',NULL,64021,'08764567982','cartolibreria@cartolibreria.it',1),('19406864209','Fincantieri','Ancona','Fincantieri s.p.a.','lungomare vanvitelli','Ancona',80,60121,'0715951','fincantieri@fincantieri.it',0),('56879579081','Cantina sociale Ortona','Chieti','Cantina sociale','Via Roma','Ortona',50,66026,'0851234567','cantina@sociale.it',0),('68739487561','Autotrasporti s.r.l.','Pescara','Autotrasporti','Via della libertà','Montesilvano',30,65015,'08713435687','autotrasporti@autotrasporti.com',1);
/*!40000 ALTER TABLE `clientegiuridico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Compenso`
--

DROP TABLE IF EXISTS `Compenso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Compenso` (
  `numeroFattura` smallint unsigned NOT NULL,
  `descrizione` varchar(50) NOT NULL,
  `importo` decimal(8,2) NOT NULL,
  PRIMARY KEY (`numeroFattura`,`descrizione`),
  CONSTRAINT `compenso_ibfk_2` FOREIGN KEY (`numeroFattura`) REFERENCES `Fattura` (`numeroFattura`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Compenso`
--

LOCK TABLES `Compenso` WRITE;
/*!40000 ALTER TABLE `Compenso` DISABLE KEYS */;
INSERT INTO `Compenso` VALUES (100,'acconto per avvocato',100.00),(100,'spese avviamento processuale',200.00),(105,'compenso avvocato',800.00),(105,'spese avviamento causa',4000.00),(105,'tasse',200.00),(110,'pagamento consulenze esterne',1000.00),(110,'pagamento servizio assistenza legale',5000.00),(110,'spese processuali',2000.00),(110,'tasse',2000.00);
/*!40000 ALTER TABLE `Compenso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Contratto`
--

DROP TABLE IF EXISTS `Contratto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Contratto` (
  `oggetto` varchar(100) NOT NULL,
  `data` date NOT NULL,
  `attore` varchar(30) NOT NULL,
  `convenuto` varchar(30) NOT NULL,
  `valore` mediumint unsigned NOT NULL,
  `foro` varchar(20) NOT NULL,
  `acconto` decimal(8,2) unsigned NOT NULL,
  `saldo` decimal(8,2) unsigned NOT NULL,
  PRIMARY KEY (`oggetto`,`data`),
  CONSTRAINT `contratto_chk_1` CHECK (((`attore` = _utf8mb4'cliente') or (`convenuto` = _utf8mb4'cliente')))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Contratto`
--

LOCK TABLES `Contratto` WRITE;
/*!40000 ALTER TABLE `Contratto` DISABLE KEYS */;
INSERT INTO `Contratto` VALUES ('denuncia aggressione a pubblico ufficiale','2020-03-27','comando polizia Pescara','cliente',10000,'Pescara',1000.00,1500.00),('nave non conforme alle norme','2020-01-15','Costa Crociere s.p.a.','cliente',100000,'Ancona',5000.00,10000.00),('processo incidente auto','2019-06-23','cliente','Franco Bianchi',6000,'Ancona',300.00,300.00),('risarcimento mancata consegna ordine','2021-08-01','Luca Bianchi','cliente',6000,'Giulianova',200.00,300.00),('risarcimento merce smarrita','2021-05-22','cliente','Bartolini s.p.a.',50000,'Pescara',1000.00,3000.00);
/*!40000 ALTER TABLE `Contratto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documento`
--

DROP TABLE IF EXISTS `documento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `documento` (
  `nome` varchar(40) NOT NULL,
  `idFascicolo` smallint unsigned NOT NULL,
  `descrizione` varchar(140) DEFAULT NULL,
  `numeroProtocollo` char(8) DEFAULT NULL,
  PRIMARY KEY (`nome`,`idFascicolo`),
  KEY `idFascicolo` (`idFascicolo`),
  CONSTRAINT `documento_ibfk_1` FOREIGN KEY (`idFascicolo`) REFERENCES `Fascicolo` (`codiceIdentificativo`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documento`
--

LOCK TABLES `documento` WRITE;
/*!40000 ALTER TABLE `documento` DISABLE KEYS */;
INSERT INTO `documento` VALUES ('cid',145,'copia del cid dell incidente',NULL),('contratto costruzione nave',150,'contratto di costruzione della nave stipulato tra le parti',NULL),('copia dell ordine',1,'copia dell ordine effettuato del quale si richiede il risarcimento',NULL),('denuncia',22,'denuncia sporta contro il cliente','18493768'),('dichiarazioni cliente',145,'dichiarazioni del cliente riguardo l incidente',NULL),('merce',8,'dichiarazione della merce smarrita con relativi valori',NULL),('prima udienza',150,'verbale della prima udienza del processo','09753856'),('risarcimento',1,'richiesta di risarcimento',NULL),('seconda udienza',150,'verbale della seconda udienza del processo','73842123'),('sentenza',1,'sentenza del giudice: risarcimento approvato','19827529'),('sentenza',145,'sentenza del giudice: colap ad entrambe le parti','72453891'),('sentenza',150,'sentenza del giudice: cliente costretto ad apportare modifiche in modo da rendere la nave conforme','10987261'),('verifica specifiche nave',150,'verifica delle specifiche della nave effettuata da consulente esterno',NULL);
/*!40000 ALTER TABLE `documento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Faldone`
--

DROP TABLE IF EXISTS `Faldone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Faldone` (
  `numero` smallint unsigned NOT NULL,
  `dataInizio` date NOT NULL,
  `datafine` date NOT NULL,
  PRIMARY KEY (`numero`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Faldone`
--

LOCK TABLES `Faldone` WRITE;
/*!40000 ALTER TABLE `Faldone` DISABLE KEYS */;
INSERT INTO `Faldone` VALUES (1,'2019-01-01','2019-12-31'),(2,'2020-01-01','2020-12-31'),(3,'2021-01-01','2021-12-31');
/*!40000 ALTER TABLE `Faldone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Fascicolo`
--

DROP TABLE IF EXISTS `Fascicolo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Fascicolo` (
  `codiceIdentificativo` smallint unsigned NOT NULL,
  `annoChiusura` year DEFAULT NULL,
  `nomeGiudice` varchar(30) NOT NULL,
  `tipoGiudice` enum('amministrativo','civile','penale') NOT NULL,
  `presenza` enum('si','no') NOT NULL,
  PRIMARY KEY (`codiceIdentificativo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Fascicolo`
--

LOCK TABLES `Fascicolo` WRITE;
/*!40000 ALTER TABLE `Fascicolo` DISABLE KEYS */;
INSERT INTO `Fascicolo` VALUES (1,2021,'Di Pietro','amministrativo','si'),(8,2021,'Caselli','amministrativo','si'),(22,2020,'Colombo','penale','si'),(145,2019,'Di Camillo','civile','si'),(150,2020,'Colleluori','civile','si');
/*!40000 ALTER TABLE `Fascicolo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Fattura`
--

DROP TABLE IF EXISTS `Fattura`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Fattura` (
  `numeroFattura` smallint unsigned NOT NULL,
  `IBAN` char(27) NOT NULL,
  `dataPagamento` date NOT NULL,
  `importoTotale` decimal(8,2) NOT NULL,
  PRIMARY KEY (`numeroFattura`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Fattura`
--

LOCK TABLES `Fattura` WRITE;
/*!40000 ALTER TABLE `Fattura` DISABLE KEYS */;
INSERT INTO `Fattura` VALUES (12,'IT1234567890000001234567897','2020-03-27',1000.00),(13,'IT1234567890000001234567897','2020-04-27',1500.00),(15,'IT0987654321000000004354657','2021-08-01',200.00),(16,'IT0987654321000000004354657','2021-09-15',300.00),(19,'IT0976543821000000001234567','2021-05-22',1000.00),(22,'IT0976543821000000001234567','2021-06-29',3000.00),(100,'IT39CHIEJ39607498J7H2SS4567','2019-06-24',300.00),(105,'IT39BDJK38495LIUTBHJ2019876','2020-01-20',5000.00),(110,'IT39BDJK38495LIUTBHJ2019876','2020-12-20',10000.00);
/*!40000 ALTER TABLE `Fattura` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Inserimento`
--

DROP TABLE IF EXISTS `Inserimento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Inserimento` (
  `numeroFaldone` smallint unsigned NOT NULL,
  `idFascicolo` smallint unsigned NOT NULL,
  PRIMARY KEY (`numeroFaldone`,`idFascicolo`),
  KEY `idFascicolo` (`idFascicolo`),
  CONSTRAINT `inserimento_ibfk_1` FOREIGN KEY (`numeroFaldone`) REFERENCES `Faldone` (`numero`) ON UPDATE CASCADE,
  CONSTRAINT `inserimento_ibfk_2` FOREIGN KEY (`idFascicolo`) REFERENCES `Fascicolo` (`codiceIdentificativo`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Inserimento`
--

LOCK TABLES `Inserimento` WRITE;
/*!40000 ALTER TABLE `Inserimento` DISABLE KEYS */;
INSERT INTO `Inserimento` VALUES (3,1),(3,8),(2,22),(1,145),(2,150);
/*!40000 ALTER TABLE `Inserimento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pagamento`
--

DROP TABLE IF EXISTS `pagamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pagamento` (
  `oggettoContratto` varchar(100) NOT NULL,
  `dataContratto` date NOT NULL,
  `numeroFattura` smallint unsigned NOT NULL,
  `tipo` enum('acconto','saldo') NOT NULL,
  PRIMARY KEY (`oggettoContratto`,`dataContratto`,`numeroFattura`),
  KEY `numeroFattura` (`numeroFattura`),
  CONSTRAINT `pagamento_ibfk_1` FOREIGN KEY (`oggettoContratto`, `dataContratto`) REFERENCES `Contratto` (`oggetto`, `data`) ON UPDATE CASCADE,
  CONSTRAINT `pagamento_ibfk_2` FOREIGN KEY (`numeroFattura`) REFERENCES `Fattura` (`numeroFattura`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pagamento`
--

LOCK TABLES `pagamento` WRITE;
/*!40000 ALTER TABLE `pagamento` DISABLE KEYS */;
INSERT INTO `pagamento` VALUES ('denuncia aggressione a pubblico ufficiale','2020-03-27',12,'acconto'),('denuncia aggressione a pubblico ufficiale','2020-03-27',13,'saldo'),('nave non conforme alle norme','2020-01-15',105,'acconto'),('nave non conforme alle norme','2020-01-15',110,'saldo'),('processo incidente auto','2019-06-23',100,'acconto'),('risarcimento mancata consegna ordine','2021-08-01',15,'acconto'),('risarcimento mancata consegna ordine','2021-08-01',16,'saldo'),('risarcimento merce smarrita','2021-05-22',19,'acconto'),('risarcimento merce smarrita','2021-05-22',22,'saldo');
/*!40000 ALTER TABLE `pagamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Posizione`
--

DROP TABLE IF EXISTS `Posizione`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Posizione` (
  `codice` tinyint unsigned NOT NULL,
  `numeroFaldone` smallint unsigned NOT NULL,
  PRIMARY KEY (`codice`,`numeroFaldone`),
  KEY `numeroFaldone` (`numeroFaldone`),
  CONSTRAINT `posizione_ibfk_1` FOREIGN KEY (`codice`) REFERENCES `Scaffale` (`codice`) ON UPDATE CASCADE,
  CONSTRAINT `posizione_ibfk_2` FOREIGN KEY (`numeroFaldone`) REFERENCES `Faldone` (`numero`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Posizione`
--

LOCK TABLES `Posizione` WRITE;
/*!40000 ALTER TABLE `Posizione` DISABLE KEYS */;
INSERT INTO `Posizione` VALUES (1,1),(1,2),(1,3);
/*!40000 ALTER TABLE `Posizione` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `referenza`
--

DROP TABLE IF EXISTS `referenza`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `referenza` (
  `idFascicolo` smallint unsigned NOT NULL,
  `oggettoContratto` varchar(100) NOT NULL,
  `dataContratto` date NOT NULL,
  PRIMARY KEY (`idFascicolo`,`oggettoContratto`,`dataContratto`),
  KEY `oggettoContratto` (`oggettoContratto`,`dataContratto`),
  CONSTRAINT `referenza_ibfk_1` FOREIGN KEY (`idFascicolo`) REFERENCES `Fascicolo` (`codiceIdentificativo`) ON UPDATE CASCADE,
  CONSTRAINT `referenza_ibfk_2` FOREIGN KEY (`oggettoContratto`, `dataContratto`) REFERENCES `Contratto` (`oggetto`, `data`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `referenza`
--

LOCK TABLES `referenza` WRITE;
/*!40000 ALTER TABLE `referenza` DISABLE KEYS */;
INSERT INTO `referenza` VALUES (22,'denuncia aggressione a pubblico ufficiale','2020-03-27'),(150,'nave non conforme alle norme','2020-01-15'),(145,'processo incidente auto','2019-06-23'),(1,'risarcimento mancata consegna ordine','2021-08-01'),(8,'risarcimento merce smarrita','2021-05-22');
/*!40000 ALTER TABLE `referenza` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Scaffale`
--

DROP TABLE IF EXISTS `Scaffale`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Scaffale` (
  `codice` tinyint unsigned NOT NULL,
  PRIMARY KEY (`codice`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Scaffale`
--

LOCK TABLES `Scaffale` WRITE;
/*!40000 ALTER TABLE `Scaffale` DISABLE KEYS */;
INSERT INTO `Scaffale` VALUES (1),(2),(3),(4);
/*!40000 ALTER TABLE `Scaffale` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stipulazioneClienteFisico`
--

DROP TABLE IF EXISTS `stipulazioneClienteFisico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stipulazioneClienteFisico` (
  `oggettoContratto` varchar(100) NOT NULL,
  `dataContratto` date NOT NULL,
  `CFAvvocato` char(16) NOT NULL,
  `CFCliente` char(16) NOT NULL,
  PRIMARY KEY (`oggettoContratto`,`dataContratto`,`CFAvvocato`,`CFCliente`),
  KEY `CFAvvocato` (`CFAvvocato`),
  KEY `CFCliente` (`CFCliente`),
  CONSTRAINT `stipulazioneclientefisico_ibfk_1` FOREIGN KEY (`oggettoContratto`, `dataContratto`) REFERENCES `Contratto` (`oggetto`, `data`) ON UPDATE CASCADE,
  CONSTRAINT `stipulazioneclientefisico_ibfk_2` FOREIGN KEY (`CFAvvocato`) REFERENCES `Avvocato` (`codiceFiscale`) ON UPDATE CASCADE,
  CONSTRAINT `stipulazioneclientefisico_ibfk_3` FOREIGN KEY (`CFCliente`) REFERENCES `ClienteFisico` (`codiceFiscale`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stipulazioneClienteFisico`
--

LOCK TABLES `stipulazioneClienteFisico` WRITE;
/*!40000 ALTER TABLE `stipulazioneClienteFisico` DISABLE KEYS */;
INSERT INTO `stipulazioneClienteFisico` VALUES ('processo incidente auto','2019-06-23','NREGLI80R63G482C','CJDIOR879JI23NI5'),('denuncia aggressione a pubblico ufficiale','2020-03-27','VRDSMN67M54H456K','BNCGVN56M96E435J');
/*!40000 ALTER TABLE `stipulazioneClienteFisico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stipulazioneclientegiuridico`
--

DROP TABLE IF EXISTS `stipulazioneclientegiuridico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stipulazioneclientegiuridico` (
  `oggettoContratto` varchar(100) NOT NULL,
  `dataContratto` date NOT NULL,
  `CFAvvocato` char(16) NOT NULL,
  `PIVACliente` char(11) NOT NULL,
  PRIMARY KEY (`oggettoContratto`,`dataContratto`,`CFAvvocato`,`PIVACliente`),
  KEY `CFAvvocato` (`CFAvvocato`),
  KEY `PIVACliente` (`PIVACliente`),
  CONSTRAINT `stipulazioneclientegiuridico_ibfk_1` FOREIGN KEY (`oggettoContratto`, `dataContratto`) REFERENCES `Contratto` (`oggetto`, `data`) ON UPDATE CASCADE,
  CONSTRAINT `stipulazioneclientegiuridico_ibfk_2` FOREIGN KEY (`CFAvvocato`) REFERENCES `Avvocato` (`codiceFiscale`) ON UPDATE CASCADE,
  CONSTRAINT `stipulazioneclientegiuridico_ibfk_3` FOREIGN KEY (`PIVACliente`) REFERENCES `ClienteGiuridico` (`partitaIVA`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stipulazioneclientegiuridico`
--

LOCK TABLES `stipulazioneclientegiuridico` WRITE;
/*!40000 ALTER TABLE `stipulazioneclientegiuridico` DISABLE KEYS */;
INSERT INTO `stipulazioneclientegiuridico` VALUES ('risarcimento mancata consegna ordine','2021-08-01','RSSGBR78M56G569X','09758637854'),('nave non conforme alle norme','2020-01-15','VRDSMN67M54H456K','19406864209'),('risarcimento merce smarrita','2021-05-22','VRDSMN67M54H456K','68739487561');
/*!40000 ALTER TABLE `stipulazioneclientegiuridico` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-11 15:38:26
