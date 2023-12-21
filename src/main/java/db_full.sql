CREATE DATABASE  IF NOT EXISTS `rmi_manager_lib` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `rmi_manager_lib`;
-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: rmi_manager_lib
-- ------------------------------------------------------
-- Server version	8.0.33

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `author`
--

DROP TABLE IF EXISTS author;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE author (
  id int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `author`
--

INSERT INTO `author` VALUES (1,'Author 1'),(2,'Louisa May Alcott'),(3,'PGS.TS Huỳnh Công Pháp'),(4,'Og Mandino'),(5,'Ernest Hemingway'),(6,'Tony Hsieh'),(7,'Nguyễn Nhật Ánh'),(8,'Ngô Tất Tố'),(9,'Hà Thanh Xuân'),(10,'Nguyễn Ngọc Tư'),(11,'Nguyễn Nhật Ánh'),(12,'Dale Carnegie'),(13,'Paulo Coelho'),(14,'Andrew Matthews'),(15,'Edmondo De Amicis'),(16,'Mario Puzo'),(17,'Charlotte Bronte'),(18,'David J.Lieberman'),(19,'Mari Tamagawa'),(20,'Stephen R. Covey'),(21,'Nguyễn Ngọc Thạch'),(22,'Nguyễn Du'),(23,' Mitch Albom'),(24,'Tô Hoài'),(25,'Nam Cao'),(26,'Vũ Trọng Phụng'),(27,'Trần Thị Thu Trang');
ALTER DATABASE rmi_manager_lib CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=root@localhost*/ /*!50003 TRIGGER trg_db_log_insert_author AFTER INSERT ON author FOR EACH ROW BEGIN
  INSERT INTO `db_log` (`table_name`, `action`) VALUES ('author', 'INSERT');
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE rmi_manager_lib CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci ;
ALTER DATABASE rmi_manager_lib CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=root@localhost*/ /*!50003 TRIGGER trg_db_log_update_author AFTER UPDATE ON author FOR EACH ROW BEGIN
  INSERT INTO `db_log` (`table_name`, `action`) VALUES ('author', 'UPDATE');
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE rmi_manager_lib CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci ;
ALTER DATABASE rmi_manager_lib CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=root@localhost*/ /*!50003 TRIGGER trg_db_log_delete_author AFTER DELETE ON author FOR EACH ROW BEGIN
  INSERT INTO `db_log` (`table_name`, `action`) VALUES ('author', 'DELETE');
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE rmi_manager_lib CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci ;

--
-- Table structure for table `book`
--

DROP TABLE IF EXISTS book;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE book (
  id int NOT NULL AUTO_INCREMENT,
  title varchar(255) DEFAULT NULL,
  category_id int DEFAULT NULL,
  PRIMARY KEY (id),
  KEY FK_category_idx (category_id),
  CONSTRAINT FK_category FOREIGN KEY (category_id) REFERENCES category (id)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book`
--

INSERT INTO `book` VALUES (1,'10 vạn câu hỏi vì sao',1),(2,'Toán Cao cấp',2),(3,'Pháp luật đại cương',1),(4,'Lập trình hướng đối tượng OOP',3),(5,'Book 5',2),(6,'Book 6',1),(7,'Hồ sơ mật',4),(8,'Người tình của tôi',6),(9,'Lập trình không khó',2),(10,'Book 10',4),(18,'Cú sốc tuổi 20',8),(21,'Người yêu lí tưởng của tôi',5),(22,'Đồi thông hai mộ',3),(25,'Cho tôi xin một vé đi tuổi thơ',1),(26,'Tắt đèn',13),(27,'Những ngày thứ ba với Thầy Morrie',13),(28,'Gặp gỡ tình yêu',8),(29,'Cánh đồng bất tận',13),(30,'Biển không chỗ đậu',1),(31,'Dế Mèn Phiêu Lưu Ký',10),(32,'Mắt Biếc',5),(33,'Chí Phèo',7),(34,'Kính Vạn Hoa',13);
ALTER DATABASE rmi_manager_lib CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=root@localhost*/ /*!50003 TRIGGER trg_db_log_insert_book AFTER INSERT ON book FOR EACH ROW BEGIN
  INSERT INTO `db_log` (`table_name`, `action`) VALUES ('book', 'INSERT');
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE rmi_manager_lib CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci ;
ALTER DATABASE rmi_manager_lib CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=root@localhost*/ /*!50003 TRIGGER trg_db_log_update_book AFTER UPDATE ON book FOR EACH ROW BEGIN
  INSERT INTO `db_log` (`table_name`, `action`) VALUES ('book', 'UPDATE');
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE rmi_manager_lib CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci ;
ALTER DATABASE rmi_manager_lib CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=root@localhost*/ /*!50003 TRIGGER trg_db_log_delete_book AFTER DELETE ON book FOR EACH ROW BEGIN
  INSERT INTO `db_log` (`table_name`, `action`) VALUES ('book', 'DELETE');
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE rmi_manager_lib CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci ;

--
-- Table structure for table `book_author`
--

DROP TABLE IF EXISTS book_author;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE book_author (
  book_id int NOT NULL,
  author_id int NOT NULL,
  PRIMARY KEY (book_id,author_id),
  KEY FK_author_idx (author_id),
  CONSTRAINT FK_author FOREIGN KEY (author_id) REFERENCES author (id),
  CONSTRAINT FK_book FOREIGN KEY (book_id) REFERENCES book (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book_author`
--

INSERT INTO `book_author` VALUES (2,2),(9,2),(3,3),(4,3),(22,4),(25,7),(26,8),(28,9),(29,10),(30,11),(34,11),(27,17),(7,18),(8,19),(18,19),(1,20),(21,20),(31,24),(33,25),(32,27);

--
-- Table structure for table `book_copy`
--

DROP TABLE IF EXISTS book_copy;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE book_copy (
  id int NOT NULL AUTO_INCREMENT,
  year_published int NOT NULL,
  book_id int NOT NULL,
  published_id int NOT NULL,
  PRIMARY KEY (id),
  KEY FK_published_book_copy_idx (published_id),
  KEY FK_book_book_copy (book_id),
  CONSTRAINT FK_book_book_copy FOREIGN KEY (book_id) REFERENCES book (id),
  CONSTRAINT FK_published_book_copy FOREIGN KEY (published_id) REFERENCES published (id)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book_copy`
--

INSERT INTO `book_copy` VALUES (1,2000,1,1),(2,2001,2,2),(3,2002,3,1),(4,2003,4,3),(6,2005,6,1),(7,2006,7,4),(8,2007,8,3),(9,2008,9,2),(11,2021,25,3),(12,2021,26,3),(13,2021,27,5),(14,2021,28,6),(15,2021,29,7),(16,2021,30,3),(17,2000,31,1),(18,2021,32,5),(19,2022,33,1),(20,2021,34,6);
ALTER DATABASE rmi_manager_lib CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=root@localhost*/ /*!50003 TRIGGER trg_db_log_insert_book_copy AFTER INSERT ON book_copy FOR EACH ROW BEGIN
  INSERT INTO `db_log` (`table_name`, `action`) VALUES ('book_copy', 'INSERT');
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE rmi_manager_lib CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci ;
ALTER DATABASE rmi_manager_lib CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=root@localhost*/ /*!50003 TRIGGER trg_db_log_update_book_copy AFTER UPDATE ON book_copy FOR EACH ROW BEGIN
  INSERT INTO `db_log` (`table_name`, `action`) VALUES ('book_copy', 'UPDATE');
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE rmi_manager_lib CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci ;
ALTER DATABASE rmi_manager_lib CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=root@localhost*/ /*!50003 TRIGGER trg_db_log_delete_book_copy AFTER DELETE ON book_copy FOR EACH ROW BEGIN
  INSERT INTO `db_log` (`table_name`, `action`) VALUES ('book_copy', 'DELETE');
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE rmi_manager_lib CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci ;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS category;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE category (
  id int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

INSERT INTO `category` VALUES (1,'Sách tham khảo'),(2,'Sách giáo khoa'),(3,'Hành động'),(4,'Trinh thám'),(5,'Tình cảm'),(6,'18+'),(7,'Đời sống'),(8,'Tâm lý'),(9,'Hình sự'),(10,'Trẻ em'),(11,'Truyện tranh'),(12,'Truyện chữ'),(13,'Tiểu thuyết'),(14,'Huyền bí'),(15,'Học thuật');
ALTER DATABASE rmi_manager_lib CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=root@localhost*/ /*!50003 TRIGGER trg_db_log_insert_category AFTER INSERT ON category FOR EACH ROW BEGIN
  INSERT INTO `db_log` (`table_name`, `action`) VALUES ('category', 'INSERT');
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE rmi_manager_lib CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci ;
ALTER DATABASE rmi_manager_lib CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=root@localhost*/ /*!50003 TRIGGER trg_db_log_update_category AFTER UPDATE ON category FOR EACH ROW BEGIN
  INSERT INTO `db_log` (`table_name`, `action`) VALUES ('category', 'UPDATE');
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE rmi_manager_lib CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci ;
ALTER DATABASE rmi_manager_lib CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=root@localhost*/ /*!50003 TRIGGER trg_db_log_delete_category AFTER DELETE ON category FOR EACH ROW BEGIN
  INSERT INTO `db_log` (`table_name`, `action`) VALUES ('category', 'DELETE');
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE rmi_manager_lib CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci ;

--
-- Table structure for table `checkout`
--

DROP TABLE IF EXISTS checkout;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE checkout (
  id int NOT NULL AUTO_INCREMENT,
  start_time timestamp NOT NULL,
  end_time timestamp NOT NULL,
  is_returned tinyint NOT NULL,
  patron_id int NOT NULL,
  book_copy_id int NOT NULL,
  PRIMARY KEY (id),
  KEY FK_checkout_patron_idx (patron_id),
  KEY FK_checkout_book_copy_idx (book_copy_id),
  CONSTRAINT FK_checkout_book_copy FOREIGN KEY (book_copy_id) REFERENCES book_copy (id),
  CONSTRAINT FK_checkout_patron FOREIGN KEY (patron_id) REFERENCES patron_account (id)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `checkout`
--

INSERT INTO `checkout` VALUES (1,'2023-10-15 07:00:00','2023-10-16 07:00:00',1,1,1);
--
-- Table structure for table `db_log`
--

DROP TABLE IF EXISTS db_log;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE db_log (
  id int NOT NULL AUTO_INCREMENT,
  `table_name` varchar(255) NOT NULL,
  `action` enum('INSERT','UPDATE','DELETE') NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_log`
--


--
-- Table structure for table `hold`
--

DROP TABLE IF EXISTS hold;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE hold (
  id int NOT NULL AUTO_INCREMENT,
  start_time timestamp NOT NULL,
  end_time timestamp NOT NULL,
  patron_id int NOT NULL,
  book_copy_id int NOT NULL,
  PRIMARY KEY (id),
  KEY FK_hold_book_copy_idx (book_copy_id),
  KEY FK_hold_patron_idx (patron_id),
  CONSTRAINT FK_hold_book_copy FOREIGN KEY (book_copy_id) REFERENCES book_copy (id),
  CONSTRAINT FK_hold_patron FOREIGN KEY (patron_id) REFERENCES patron_account (id)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hold`
--



--
-- Table structure for table `log`
--

DROP TABLE IF EXISTS log;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE log (
  id int NOT NULL AUTO_INCREMENT,
  ip varchar(255) NOT NULL,
  username varchar(255) NOT NULL DEFAULT 'Manage',
  `table_name` varchar(45) NOT NULL,
  col_id int NOT NULL,
  time_start timestamp NOT NULL,
  time_end timestamp NULL DEFAULT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log`
--


--
-- Table structure for table `notification`
--

DROP TABLE IF EXISTS notification;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE notification (
  id int NOT NULL AUTO_INCREMENT,
  sent_at timestamp NOT NULL,
  message text NOT NULL,
  patron_id int NOT NULL,
  PRIMARY KEY (id),
  KEY FK_notification_patron_idx (patron_id),
  CONSTRAINT FK_notification_patron FOREIGN KEY (patron_id) REFERENCES patron_account (id)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notification`
--

INSERT INTO notification VALUES (1,'2023-10-15 14:00:00','Notification 1',1);
INSERT INTO notification VALUES (2,'2023-10-15 14:30:00','Notification 2',2);
INSERT INTO notification VALUES (3,'2023-10-15 15:00:00','Notification 3',3);
INSERT INTO notification VALUES (4,'2023-10-15 15:30:00','Notification 4',4);
INSERT INTO notification VALUES (5,'2023-10-15 16:00:00','Notification 5',5);
INSERT INTO notification VALUES (6,'2023-10-15 16:30:00','Notification 6',6);
INSERT INTO notification VALUES (7,'2023-10-15 17:00:00','Notification 7',7);
INSERT INTO notification VALUES (8,'2023-10-15 17:30:00','Notification 8',8);
INSERT INTO notification VALUES (9,'2023-10-15 18:00:00','Notification 9',9);
INSERT INTO notification VALUES (10,'2023-10-15 18:30:00','Notification 10',10);

--
-- Table structure for table `patron_account`
--

DROP TABLE IF EXISTS patron_account;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE patron_account (
  id int NOT NULL AUTO_INCREMENT,
  first_name varchar(255) NOT NULL,
  last_name varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  email varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  PRIMARY KEY (id),
  UNIQUE KEY email_UNIQUE (email)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patron_account`
--

INSERT INTO patron_account VALUES (1, 'Quân', 'Nguyễn Anh', '1@gmail.com', '1', 1);
INSERT INTO patron_account VALUES (2, 'Hương', 'Trần Thị', '2@gmail.com', '2', 1);
INSERT INTO patron_account VALUES (3, 'Tuấn', 'Lê Minh', '3@gmail.com', '3', 1);
INSERT INTO patron_account VALUES (4, 'Lan', 'Phạm Thị', '4@gmail.com', '4', 1);
INSERT INTO patron_account VALUES (5, 'Nam', 'Hoàng Văn', '5@gmail.com', 'password5', 1);
INSERT INTO patron_account VALUES (6, 'Mai', 'Nguyễn Thị', '6@gmail.com', 'password6', 1);
INSERT INTO patron_account VALUES (7, 'Anh', 'Trần Văn', '7@gmail.com', 'password7', 1);
INSERT INTO patron_account VALUES (8, 'Thu', 'Lê Thị', '8@gmail.com', 'password8', 1);
INSERT INTO patron_account VALUES (9, 'Đức', 'Hồ Văn', '9@gmail.com', 'password9', 1);
INSERT INTO patron_account VALUES (10, 'Hải', 'Phạm Thị', '10@gmail.com', 'password10', 1);
INSERT INTO patron_account VALUES (11, 'Trung', 'Nguyễn Văn', '11@gmail.com', 'password11', 1);
INSERT INTO patron_account VALUES (12, 'Ngọc', 'Vũ Thị', '12@gmail.com', 'password12', 1);
INSERT INTO patron_account VALUES (13, 'Hùng', 'Hoàng Văn', '13@gmail.com', 'password13', 1);
INSERT INTO patron_account VALUES (14, 'Thúy', 'Nguyễn Thị', '14@gmail.com', 'password14', 1);
INSERT INTO patron_account VALUES (15, 'Tuấn', 'Trần Văn', '15@gmail.com', 'password15', 1);
INSERT INTO patron_account VALUES (16, 'Hồng', 'Lê Thị', '16@gmail.com', 'password16', 1);
INSERT INTO patron_account VALUES (17, 'Long', 'Đỗ Văn', '17@gmail.com', 'password17', 1);
INSERT INTO patron_account VALUES (18, 'Hằng', 'Phạm Thị', '18@gmail.com', 'password18', 1);
INSERT INTO patron_account VALUES (19, 'Đức', 'Nguyễn Văn', '19@gmail.com', 'password19', 1);
INSERT INTO patron_account VALUES (20, 'Quỳnh', 'Trần Thị', '20@gmail.com', 'password20', 1);
ALTER DATABASE rmi_manager_lib CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=root@localhost*/ /*!50003 TRIGGER trg_db_log_insert_patron_account AFTER INSERT ON patron_account FOR EACH ROW BEGIN
  INSERT INTO `db_log` (`table_name`, `action`) VALUES ('patron_account', 'INSERT');
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE rmi_manager_lib CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci ;
ALTER DATABASE rmi_manager_lib CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=root@localhost*/ /*!50003 TRIGGER trg_db_log_update_patron_account AFTER UPDATE ON patron_account FOR EACH ROW BEGIN
  INSERT INTO `db_log` (`table_name`, `action`) VALUES ('patron_account', 'UPDATE');
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE rmi_manager_lib CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci ;
ALTER DATABASE rmi_manager_lib CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=root@localhost*/ /*!50003 TRIGGER trg_db_log_delete_patron_account AFTER DELETE ON patron_account FOR EACH ROW BEGIN
  INSERT INTO `db_log` (`table_name`, `action`) VALUES ('patron_account', 'DELETE');
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE rmi_manager_lib CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci ;

--
-- Table structure for table `published`
--

DROP TABLE IF EXISTS published;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE published (
  id int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `published`
--

INSERT INTO published VALUES (1, 'Nhà xuất bản Kim Đồng');
INSERT INTO published VALUES (2, 'Nhà xuất bản Trẻ');
INSERT INTO published VALUES (3, 'Nhà xuất bản Giáo dục');
INSERT INTO published VALUES (4, 'Nhà xuất bản Văn học');
INSERT INTO published VALUES (5, 'Nhà xuất bản Nxb Hội Nhà văn');
INSERT INTO published VALUES (6, 'Nhà xuất bản Thanh Niên');
INSERT INTO published VALUES (7, 'Nhà xuất bản Thế giới');
INSERT INTO published VALUES (8, 'Nhà xuất bản Tổng hợp TP.HCM');
INSERT INTO published VALUES (9, 'Nhà xuất bản Phụ nữ');
INSERT INTO published VALUES (10, 'Nhà xuất bản Tri Thức');
ALTER DATABASE rmi_manager_lib CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=root@localhost*/ /*!50003 TRIGGER trg_db_log_insert_published AFTER INSERT ON published FOR EACH ROW BEGIN
  INSERT INTO `db_log` (`table_name`, `action`) VALUES ('published', 'INSERT');
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE rmi_manager_lib CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci ;
ALTER DATABASE rmi_manager_lib CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=root@localhost*/ /*!50003 TRIGGER trg_db_log_update_published AFTER UPDATE ON published FOR EACH ROW BEGIN
  INSERT INTO `db_log` (`table_name`, `action`) VALUES ('published', 'UPDATE');
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE rmi_manager_lib CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci ;
ALTER DATABASE rmi_manager_lib CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=root@localhost*/ /*!50003 TRIGGER trg_db_log_delete_published AFTER DELETE ON published FOR EACH ROW BEGIN
  INSERT INTO `db_log` (`table_name`, `action`) VALUES ('published', 'DELETE');
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE rmi_manager_lib CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci ;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed
