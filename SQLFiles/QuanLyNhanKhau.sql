-- MySQL dump 10.13  Distrib 8.0.22, for Linux (x86_64)
--
-- Host: localhost    Database: QuanLyNhanKhau
-- ------------------------------------------------------
-- Server version	8.0.22-0ubuntu0.20.04.3

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `chung_minh_thu`
--

DROP TABLE IF EXISTS `chung_minh_thu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chung_minh_thu` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `idNhanKhau` int DEFAULT NULL,
  `soCMT` varchar(12) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ngayCap` date DEFAULT NULL,
  `noiCap` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `idNhanKhau` (`idNhanKhau`),
  FULLTEXT KEY `soCMT` (`soCMT`),
  CONSTRAINT `chung_minh_thu_ibfk_1` FOREIGN KEY (`idNhanKhau`) REFERENCES `nhan_khau` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chung_minh_thu`
--

LOCK TABLES `chung_minh_thu` WRITE;
/*!40000 ALTER TABLE `chung_minh_thu` DISABLE KEYS */;
INSERT INTO `chung_minh_thu` VALUES (13,26,'000000000001',NULL,NULL),(14,27,'000000000002',NULL,NULL),(15,28,'000000000003',NULL,NULL),(16,29,'000000000004',NULL,NULL),(17,30,'000000000005',NULL,NULL),(18,31,'000000000006',NULL,NULL),(19,32,'000000000007',NULL,NULL),(20,33,'000000000008',NULL,NULL),(21,34,'000000000009',NULL,NULL),(22,35,'100000000001',NULL,NULL),(23,36,'100000000002',NULL,NULL),(24,37,'000000000010',NULL,NULL),(25,38,'000000000011',NULL,NULL),(26,30,'000000000015',NULL,NULL),(27,30,'000000000015',NULL,NULL),(28,30,'000000000015',NULL,NULL),(29,39,'030300008742',NULL,NULL);
/*!40000 ALTER TABLE `chung_minh_thu` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-15 21:52:09
-- MySQL dump 10.13  Distrib 8.0.22, for Linux (x86_64)
--
-- Host: localhost    Database: QuanLyNhanKhau
-- ------------------------------------------------------
-- Server version	8.0.22-0ubuntu0.20.04.3

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `dinh_chinh`
--

DROP TABLE IF EXISTS `dinh_chinh`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dinh_chinh` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `idHoKhau` int DEFAULT NULL,
  `thongTinThayDoi` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `thayDoiTu` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `thayDoiThanh` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `ngayThayDoi` date DEFAULT NULL,
  `nguoiThayDoi` int DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `idHoKhau` (`idHoKhau`),
  KEY `nguoiThayDoi` (`nguoiThayDoi`),
  CONSTRAINT `dinh_chinh_ibfk_1` FOREIGN KEY (`idHoKhau`) REFERENCES `ho_khau` (`ID`),
  CONSTRAINT `dinh_chinh_ibfk_2` FOREIGN KEY (`nguoiThayDoi`) REFERENCES `users` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dinh_chinh`
--

LOCK TABLES `dinh_chinh` WRITE;
/*!40000 ALTER TABLE `dinh_chinh` DISABLE KEYS */;
/*!40000 ALTER TABLE `dinh_chinh` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-15 21:52:09
-- MySQL dump 10.13  Distrib 8.0.22, for Linux (x86_64)
--
-- Host: localhost    Database: QuanLyNhanKhau
-- ------------------------------------------------------
-- Server version	8.0.22-0ubuntu0.20.04.3

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `gia_dinh`
--

DROP TABLE IF EXISTS `gia_dinh`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gia_dinh` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `idNhanKhau` int DEFAULT NULL,
  `hoTen` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `namSinh` date DEFAULT NULL,
  `gioiTinh` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `quanHeVoiNhanKhau` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `ngheNghiep` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `diaChiHienTai` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `idNhanKhau` (`idNhanKhau`),
  CONSTRAINT `gia_dinh_ibfk_1` FOREIGN KEY (`idNhanKhau`) REFERENCES `nhan_khau` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gia_dinh`
--

LOCK TABLES `gia_dinh` WRITE;
/*!40000 ALTER TABLE `gia_dinh` DISABLE KEYS */;
INSERT INTO `gia_dinh` VALUES (2,27,'Nguy???n Minh Qu??n','1995-05-31','Nam','Ch???ng','K??? s??','S??? 2 T??? Quang B???u, Hai B?? Tr??ng, H?? N???i'),(3,28,'Tr???n Thanh Duy??n','1997-12-23','N???','V???','Nh??n vi??n v??n ph??ng','S??? 2 T??? Quang B???u, qu???n Hai B?? Tr??ng, H?? N???i'),(4,29,'V?? M??? Linh','1965-12-06','N???','V???','N???i tr???','S??? 3 T??? Quang B???u, qu???n Hai B?? Tr??ng, H?? N???i'),(5,29,'Nguy???n Ti???n ?????t','1990-09-09','Nam','Con trai','K??? s?? ??i???n','S??? 3 T??? Quang B???u, qu???n Hai B?? Tr??ng, H?? N???i'),(6,29,'Nguy???n Tr?? My','1997-12-12','N???','Con g??i','Lu???t s??','S??? 3 T??? Quang B???u, qu???n Hai B?? Tr??ng, H?? N???i'),(7,30,'Nguy???n Ti???n D??ng','1964-06-03','Nam','Ch???ng','Ph?? gi??m ?????c','S??? 3 T??? Quang B???u, qu???n Hai B?? Tr??ng, H?? N???i'),(8,30,'Nguy???n Ti???n ?????t','1990-09-09','Nam','Con trai','K??? s?? ??i???n','S??? 3 T??? Quang B???u, qu???n Hai B?? Tr??ng, H?? N???i'),(9,30,'Nguy???n Tr?? My','1997-12-12','N???','Con G??i','Lu???t s??',''),(10,31,'Nguy???n Ti???n D??ng','1964-06-03','Nam','B???','Ph?? gi??m ?????c','S??? 3 T??? Quang B???u, qu???n Hai B?? Tr??ng, H?? N???i'),(11,31,'V?? M??? Linh','1965-12-06','N???','M???','N???i tr???','S??? 3 T??? Quang B???u, qu???n Hai B?? Tr??ng, H?? N???i'),(12,31,'Nguy???n Tr?? My','1997-12-12','N???','Em g??i','Lu???t s??','S??? 3 T??? Quang B???u, qu???n Hai B?? Tr??ng, H?? N???i'),(13,32,'Nguy???n Ti???n D??ng','1964-06-03','Nam','B???','Ph?? gi??m ?????c','S??? 3 T??? Quang B???u, qu???n Hai B?? Tr??ng, H?? N???i'),(14,32,'V?? M??? Linh','1965-12-06','N???','M???','N???i tr???','S??? 3 T??? Quang B???u, qu???n Hai B?? Tr??ng, H?? N???i'),(15,32,'Nguy???n Ti???n ?????t','1990-09-09','Nam','Anh trai','K??? s?? ??i???n','S??? 3 T??? Quang B???u, qu???n Hai B?? Tr??ng, H?? N???i'),(16,33,'Nguy???n Minh Tuy???t','1985-09-02','N???','V???','B??c s??','S??? 4 T??? Quang B???u, qu???n Hai B?? Tr??ng, H?? N???i'),(17,33,'Tr???n Trung Ki??n','2008-12-25','Nam','Con trai','H???c sinh','S??? 4 T??? Quang B???u, qu???n Hai B?? Tr??ng, H?? N???i'),(18,33,'Tr???n Th??y Ng???c','2013-01-15','N???','Con g??i','H???c sinh','S??? 4 T??? Quang B???u, qu???n Hai B?? Tr??ng, H?? N???i'),(19,34,'Tr???n Trung Ki??n','2008-12-25','Nam','Con trai','H???c sinh','S??? 4 T??? Quang B???u, qu???n Hai B?? Tr??ng, H?? N???i'),(20,34,'Tr???n Th??y Ng???c','2013-01-15','N???','Con g??i','H???c sinh','S??? 4 T??? Quang B???u, qu???n Hai B?? Tr??ng, H?? N???i'),(21,34,'Tr???n V??n Nam','1980-07-09','Nam','Ch???ng','Gi???ng vi??n ?????i h???c','S??? 4 T??? Quang B???u, qu???n Hai B?? Tr??ng, H?? N???i'),(22,35,'Tr???n V??n Nam','1980-07-09','Nam','B???','Gi???ng vi??n ?????i h???c','S??? 4 T??? Quang B???u, qu???n Hai B?? Tr??ng, H?? N???i'),(23,35,'Nguy???n Minh Tuy???t','1985-09-02','N???','M???','B??c s??','S??? 4 T??? Quang B???u, qu???n Hai B?? Tr??ng, H?? N???i'),(24,35,'Tr???n Th??y Ng???c','2013-01-15','N???','Em g??i','H???c sinh','S??? 4 T??? Quang B???u, qu???n Hai B?? Tr??ng, H?? N???i'),(25,36,'Tr???n V??n Nam','1980-07-09','Nam','B???','Gi???ng vi??n ?????i h???c','S??? 4 T??? Quang B???u, qu???n Hai B?? Tr??ng, H?? N???i'),(26,36,'Nguy???n Minh Tuy???t','1985-09-02','N??? ','M???','B??c s??','S??? 4 T??? Quang B???u, qu???n Hai B?? Tr??ng, H?? N???i'),(27,36,'Tr???n Trung Ki??n','2008-12-25','Nam','Anh trai','H???c sinh','S??? 4 T??? Quang B???u, qu???n Hai B?? Tr??ng, H?? N???i'),(28,37,'B??i Th??? H??','1948-02-03','N???','V???','N???i tr???','S??? 5 T??? Quang B???u, qu???n Hai B?? Tr??ng, H?? N???i'),(29,37,'L?? Th??nh Nam','1968-06-12','Nam','Con Trai','C??ng nh??n','S??? 89, ng?? 98 Tr?????ng Chinh, H?? N???i'),(30,37,'L?? Thu Th???y','1971-03-05','N???','Con G??i','Nh??n vi??n v??n ph??ng','S??? 3, ng?? 568 ???????ng L??ng, H?? N???i'),(31,38,'L?? V??n C??ng','1945-06-04','Nam','Ch???ng','B??? ?????i v??? h??u','S??? 5 T??? Quang B???u, qu???n Hai B?? Tr??ng, H?? N???i'),(32,38,'L?? Th??nh Nam','1968-06-12','Nam','Con trai','C??ng nh??n','S??? 89, ng?? 98 Tr?????ng Chinh, H?? N???i'),(33,38,'L?? Thu Th???y','1971-03-05','N???','Con g??i','Nh??n vi??n v??n ph??ng','S??? 3, ng?? 568 ???????ng L??ng, H?? N???i');
/*!40000 ALTER TABLE `gia_dinh` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-15 21:52:09
-- MySQL dump 10.13  Distrib 8.0.22, for Linux (x86_64)
--
-- Host: localhost    Database: QuanLyNhanKhau
-- ------------------------------------------------------
-- Server version	8.0.22-0ubuntu0.20.04.3

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `ho_khau`
--

DROP TABLE IF EXISTS `ho_khau`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ho_khau` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `maHoKhau` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `idChuHo` int DEFAULT NULL,
  `maKhuVuc` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `diaChi` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `ngayLap` date DEFAULT NULL,
  `ngayChuyenDi` date DEFAULT NULL,
  `lyDoChuyen` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `nguoiThucHien` int DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `idChuHo` (`idChuHo`),
  FULLTEXT KEY `maHoKhau` (`maHoKhau`),
  CONSTRAINT `ho_khau_ibfk_1` FOREIGN KEY (`idChuHo`) REFERENCES `nhan_khau` (`ID`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ho_khau`
--

LOCK TABLES `ho_khau` WRITE;
/*!40000 ALTER TABLE `ho_khau` DISABLE KEYS */;
INSERT INTO `ho_khau` VALUES (13,'TQB002',28,'HN03','S??? 2 T??? Quang B???u, qu???n Hai B?? Tr??ng, H?? N???i','2019-12-08',NULL,NULL,NULL),(14,'TQB001',26,'HN03','S??? 1 T??? Quang B???u, qu???n Hai B?? Tr??ng, H?? N???i','2019-12-08',NULL,NULL,NULL),(15,'TQB003',29,'HN03','S??? 3 T??? Quang B???u, qu???n Hai B?? Tr??ng, H?? N???i','2019-12-08',NULL,NULL,NULL),(16,'TQB004',33,'HN03','S??? 4 T??? Quang B???u, qu???n Hai B?? Tr??ng, H?? N???i','2019-12-08',NULL,NULL,NULL);
/*!40000 ALTER TABLE `ho_khau` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-15 21:52:09
-- MySQL dump 10.13  Distrib 8.0.22, for Linux (x86_64)
--
-- Host: localhost    Database: QuanLyNhanKhau
-- ------------------------------------------------------
-- Server version	8.0.22-0ubuntu0.20.04.3

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `khai_bao_canh_ly`
--

DROP TABLE IF EXISTS `khai_bao_canh_ly`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `khai_bao_canh_ly` (
  `ID` int NOT NULL,
  `hoTen` varchar(45) NOT NULL,
  `thoiGianBatDau` date NOT NULL,
  `thoiGianKetThuc` date NOT NULL,
  `mucDo` varchar(5) NOT NULL,
  `diaDiemCachLy` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  KEY `fk_khai_bao_canh_ly_1_idx` (`ID`),
  CONSTRAINT `fk_khai_bao_canh_ly_1` FOREIGN KEY (`ID`) REFERENCES `nhan_khau` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `khai_bao_canh_ly`
--

LOCK TABLES `khai_bao_canh_ly` WRITE;
/*!40000 ALTER TABLE `khai_bao_canh_ly` DISABLE KEYS */;
INSERT INTO `khai_bao_canh_ly` VALUES (39,'Minh','2020-11-30','2020-12-01','F0','test'),(39,'Minh','2020-12-08','2020-12-09','F1','Thailand');
/*!40000 ALTER TABLE `khai_bao_canh_ly` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-15 21:52:10
-- MySQL dump 10.13  Distrib 8.0.22, for Linux (x86_64)
--
-- Host: localhost    Database: QuanLyNhanKhau
-- ------------------------------------------------------
-- Server version	8.0.22-0ubuntu0.20.04.3

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `khai_bao_lo_trinh`
--

DROP TABLE IF EXISTS `khai_bao_lo_trinh`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `khai_bao_lo_trinh` (
  `ID` int NOT NULL,
  `hoTen` varchar(100) NOT NULL,
  `thoiGianBatDau` date NOT NULL,
  `thoiGianKetThuc` date NOT NULL,
  `diaDiem` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  KEY `fk_khai_bao_lo_trinh_1_idx` (`ID`),
  CONSTRAINT `fk_khai_bao_lo_trinh_1` FOREIGN KEY (`ID`) REFERENCES `nhan_khau` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `khai_bao_lo_trinh`
--

LOCK TABLES `khai_bao_lo_trinh` WRITE;
/*!40000 ALTER TABLE `khai_bao_lo_trinh` DISABLE KEYS */;
/*!40000 ALTER TABLE `khai_bao_lo_trinh` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-15 21:52:09
-- MySQL dump 10.13  Distrib 8.0.22, for Linux (x86_64)
--
-- Host: localhost    Database: QuanLyNhanKhau
-- ------------------------------------------------------
-- Server version	8.0.22-0ubuntu0.20.04.3

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `khai_bao_suc_khoe`
--

DROP TABLE IF EXISTS `khai_bao_suc_khoe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `khai_bao_suc_khoe` (
  `ID` int NOT NULL,
  `hoTen` varchar(100) NOT NULL,
  `trieuChung` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `nguoiTiepXuc` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `tieuSuBenh` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  KEY `fk_khai_bao_suc_khoe_1_idx` (`ID`),
  CONSTRAINT `fk_khai_bao_suc_khoe_1` FOREIGN KEY (`ID`) REFERENCES `nhan_khau` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `khai_bao_suc_khoe`
--

LOCK TABLES `khai_bao_suc_khoe` WRITE;
/*!40000 ALTER TABLE `khai_bao_suc_khoe` DISABLE KEYS */;
INSERT INTO `khai_bao_suc_khoe` VALUES (39,'Minh','Khong co trieu chung gi','a','a');
/*!40000 ALTER TABLE `khai_bao_suc_khoe` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-15 21:52:09
-- MySQL dump 10.13  Distrib 8.0.22, for Linux (x86_64)
--
-- Host: localhost    Database: QuanLyNhanKhau
-- ------------------------------------------------------
-- Server version	8.0.22-0ubuntu0.20.04.3

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `khai_tu`
--

DROP TABLE IF EXISTS `khai_tu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `khai_tu` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `soGiayKhaiTu` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `idNguoiKhai` int DEFAULT NULL,
  `idNguoiChet` int DEFAULT NULL,
  `ngayKhai` date DEFAULT NULL,
  `ngayChet` date DEFAULT NULL,
  `lyDoChet` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `idNguoiKhai` (`idNguoiKhai`),
  KEY `idNguoiChet` (`idNguoiChet`),
  CONSTRAINT `khai_tu_ibfk_1` FOREIGN KEY (`idNguoiKhai`) REFERENCES `nhan_khau` (`ID`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `khai_tu_ibfk_2` FOREIGN KEY (`idNguoiChet`) REFERENCES `nhan_khau` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `khai_tu`
--

LOCK TABLES `khai_tu` WRITE;
/*!40000 ALTER TABLE `khai_tu` DISABLE KEYS */;
/*!40000 ALTER TABLE `khai_tu` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-15 21:52:09
-- MySQL dump 10.13  Distrib 8.0.22, for Linux (x86_64)
--
-- Host: localhost    Database: QuanLyNhanKhau
-- ------------------------------------------------------
-- Server version	8.0.22-0ubuntu0.20.04.3

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `nhan_khau`
--

DROP TABLE IF EXISTS `nhan_khau`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nhan_khau` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `maNhanKhau` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `hoTen` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `bietDanh` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `namSinh` date DEFAULT NULL,
  `gioiTinh` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `noiSinh` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `nguyenQuan` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `danToc` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `tonGiao` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `quocTich` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `soHoChieu` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `noiThuongTru` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `diaChiHienNay` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `trinhDoHocVan` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `TrinhDoChuyenMon` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `bietTiengDanToc` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `trinhDoNgoaiNgu` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `ngheNghiep` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `noiLamViec` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `tienAn` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `ngayChuyenDen` date DEFAULT NULL,
  `lyDoChuyenDen` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `ngayChuyenDi` date DEFAULT NULL,
  `lyDoChuyenDi` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `diaChiMoi` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `ngayTao` date DEFAULT NULL,
  `idNguoiTao` int DEFAULT NULL,
  `ngayXoa` date DEFAULT NULL,
  `idNguoiXoa` int DEFAULT NULL,
  `lyDoXoa` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `ghiChu` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `idNguoiTao` (`idNguoiTao`),
  KEY `idNguoiXoa` (`idNguoiXoa`),
  FULLTEXT KEY `hoTen` (`hoTen`,`bietDanh`),
  CONSTRAINT `nhan_khau_ibfk_1` FOREIGN KEY (`idNguoiTao`) REFERENCES `users` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `nhan_khau_ibfk_2` FOREIGN KEY (`idNguoiXoa`) REFERENCES `users` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nhan_khau`
--

LOCK TABLES `nhan_khau` WRITE;
/*!40000 ALTER TABLE `nhan_khau` DISABLE KEYS */;
INSERT INTO `nhan_khau` VALUES (26,NULL,'Trinh V??n An','','1990-12-07','Nam',NULL,'H?? N???i','Kinh','Kh??ng','Vi???t Nam','','S??? 1 T??? Quang B??u, Hai B?? Tr??ng, H?? N???i','S??? 1 T??? Quang B??u, Hai B?? Tr??ng, H?? N???i','12/12 ch??nh quy','Th???c s??','Kh??ng','Anh tr??nh ????? B','Gi??o Vi??n','Tr?????ng THCS Chu V??n An',NULL,NULL,NULL,NULL,NULL,NULL,'2019-12-08',1,NULL,NULL,NULL,NULL),(27,NULL,'Tr???n Thanh Duy??n','','1997-12-23','N???',NULL,'H???i Ph??ng','Kinh','Kh??ng','Vi???t Nam','','S??? 3, ???????ng ????nh ????ng, ph?????ng ????nh ????ng, qu???n Ng?? Quy???n, H???i Ph??ng','S??? 2 T??? Quang B???u, qu???n Hai B?? Tr??ng, H?? N???i','12/12 ch??nh quy','Th???c s??','Kh??ng','Anh tr??nh ????? D','Nh??n vi??n v??n ph??ng','C??ng ty ABC',NULL,NULL,NULL,NULL,NULL,NULL,'2019-12-08',1,NULL,NULL,NULL,NULL),(28,NULL,'Nguy???n Minh Qu??n','','1995-05-31','Nam',NULL,'H?? N???i','Kinh','Kh??ng','Vi???t Nam','','S??? 2 T??? Quang B???u, qu???n Hai B?? Tr??ng, H?? N???i','S??? 2 T??? Quang B???u, qu???n Hai B?? Tr??ng, H?? N???i','12/12 ch??nh quy','Th???c s??','Kh??ng','Anh tr??nh ????? D','K??? s??','Viettel',NULL,NULL,NULL,NULL,NULL,NULL,'2019-12-08',1,NULL,NULL,NULL,NULL),(29,NULL,'Nguy???n Ti???n D??ng','','1964-06-03','Nam',NULL,'H???i D????ng','Kinh','Thi??n ch??a gi??o','Vi???t Nam','','S??? 3 T??? Quang B???u, qu???n Hai B?? Tr??ng, H?? N???i','S??? 4 T??? Quang B???u, qu???n Hai B?? Tr??ng, H?? N???i','12/12 ch??nh quy','K??? s??','Kh??ng','Kh??ng','Ph?? gi??m ?????c','C??ng ty EXE',NULL,NULL,NULL,NULL,NULL,NULL,'2019-12-08',1,NULL,NULL,NULL,NULL),(30,NULL,'V?? M??? Linh','','1965-12-06','N???',NULL,'H?? N???i','Kinh','Kh??ng','Vi???t Nam','','S??? 3 T??? Quang B???u, qu???n Hai B?? Tr??ng, H?? N???i','S??? 3 T??? Quang B???u, qu???n Hai B?? Tr??ng, H?? N???i','12/12','C??? Nh??n','Kh??ng','Kh??ng','N???i tr???','T???i nh??',NULL,NULL,NULL,NULL,NULL,NULL,'2019-12-08',1,NULL,NULL,NULL,NULL),(31,NULL,'Nguy???n Ti???n ?????t','','1990-09-09','Nam',NULL,'H???i D????ng','Kinh','Thi??n ch??a gi??o','Vi???t Nam','','S??? 3 T??? Quang B???u, qu???n Hai B?? Tr??ng, H?? N???i','S??? 3 T??? Quang B???u, qu???n Hai B?? Tr??ng, H?? N???i','12/12 ch??nh quy','K??? s??','kh??ng','Anh tr??nh ????? C','K??? s?? ??i???n','C??ng ty ??i???n EVN',NULL,NULL,NULL,NULL,NULL,NULL,'2019-12-08',1,NULL,NULL,NULL,NULL),(32,NULL,'Nguy???n Tr?? My','','1997-12-12','N???',NULL,'H???i D????ng','Kinh','Thi??n ch??a gi??o','Vi???t Nam','','S??? 3 T??? Quang B???u, qu???n Hai B?? Tr??ng, H?? N???i','S??? 3 T??? Quang B???u, qu???n Hai B?? Tr??ng, H?? N???i','12/12 ch??nh quy','Th???c s??','kh??ng','Anh tr??nh ????? D','Lu???t s??','V??n ph??ng lu???t s?? 123',NULL,NULL,NULL,NULL,NULL,NULL,'2019-12-08',1,NULL,NULL,NULL,NULL),(33,NULL,'Tr???n V??n Nam','','1980-07-09','Nam',NULL,'H?? N???i','Kinh','Kh??ng','Vi???t Nam','','S??? 4 T??? Quang B???u, qu???n Hai B?? Tr??ng, H?? N???i','S??? 4 T??? Quang B???u, qu???n Hai B?? Tr??ng, H?? N???i','12/12 ch??nh quy','Ti???n s??','Kh??ng','Anh tr??nh ????? D','Gi???ng vi??n ?????i h???c','?????i h???c B??ch khoa H?? N???i',NULL,NULL,NULL,NULL,NULL,NULL,'2019-12-08',1,NULL,NULL,NULL,NULL),(34,NULL,'Nguy???n Minh Tuy???t','','1985-09-02','N???',NULL,'Nam ?????nh','Kinh','Kh??ng','Vi???t Nam','','S??? 4 T??? Quang B???u, qu???n Hai B?? Tr??ng, H?? N???i','S??? 4 T??? Quang B???u, qu???n Hai B?? Tr??ng, H?? N???i','12/12 ch??nh quy','Th???c s??','Kh??ng','Anh tr??nh ????? D','B??c s??','B???nh vi???n qu???c t??? HJK',NULL,NULL,NULL,NULL,NULL,NULL,'2019-12-08',1,NULL,NULL,NULL,NULL),(35,NULL,'Tr???n Trung Ki??n','','2008-12-25','Nam',NULL,'H?? N???i','Kinh','Kh??ng','Vi???t Nam','','S??? 4 T??? Quang B???u, qu???n Hai B?? Tr??ng, H?? N???i','S??? 4 T??? Quang B???u, qu???n Hai B?? Tr??ng, H?? N???i','6/12 ch??nh quy','Kh??ng','Kh??ng','Kh??ng','H???c sinh','Tr?????ng THCS Chu V??n An',NULL,NULL,NULL,NULL,NULL,NULL,'2019-12-08',1,NULL,NULL,NULL,NULL),(36,NULL,'Tr???n Th??y Ng???c','','2013-01-15','N???',NULL,'H?? N???i','Kinh','Kh??ng','Vi???t Nam','','S??? 4 T??? Quang B???u, qu???n Hai B?? Tr??ng, H?? N???i','S??? 4 T??? Quang B???u, qu???n Hai B?? Tr??ng, H?? N???i','1/12 ch??nh quy','Kh??ng','Kh??ng','Kh??ng','H???c sinh','Tr?????ng ti???u h???c Chu V??n An',NULL,NULL,NULL,NULL,NULL,NULL,'2019-12-08',1,NULL,NULL,NULL,NULL),(37,NULL,'L?? V??n C??ng','','1945-06-04','Nam',NULL,'H?? N???i','Kinh','Kh??ng','Vi???t Nam','','S??? 5 T??? Quang B???u, qu???n Hai B?? Tr??ng, H?? N???i','S??? 5 T??? Quang B???u, qu???n Hai B?? Tr??ng, H?? N???i','10/12 ch??nh quy','Kh??ng','Kh??ng','Kh??ng','V??? h??u','Kh??ng',NULL,NULL,NULL,NULL,NULL,NULL,'2019-12-08',1,NULL,NULL,NULL,NULL),(38,NULL,'B??i Th??? H??','','1948-02-03','N???',NULL,'H???i Ph??ng','Kinh','Kh??ng','Vi???t Nam','','S??? 5 T??? Quang B???u, qu???n Hai B?? Tr??ng, H?? N???i','S??? 5 T??? Quang B???u, qu???n Hai B?? Tr??ng, H?? N???i','10/12','Kh??ng','Kh??ng','Kh??ng','N???i tr???','T???i nh??',NULL,NULL,NULL,NULL,NULL,NULL,'2019-12-08',1,NULL,NULL,NULL,NULL),(39,NULL,'Minh','a','2020-12-15','Nam',NULL,'Doan Tung','a','a','a','','a','a','a','a','a','aa','a','a',NULL,NULL,NULL,NULL,NULL,NULL,'2020-12-09',1,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `nhan_khau` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-15 21:52:10
-- MySQL dump 10.13  Distrib 8.0.22, for Linux (x86_64)
--
-- Host: localhost    Database: QuanLyNhanKhau
-- ------------------------------------------------------
-- Server version	8.0.22-0ubuntu0.20.04.3

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `tam_tru`
--

DROP TABLE IF EXISTS `tam_tru`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tam_tru` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `idNhanKhau` int DEFAULT NULL,
  `maGiayTamtru` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `soDienThoaiNguoiDangKy` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `tuNgay` date NOT NULL,
  `denNgay` date NOT NULL,
  `lyDo` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `idNhanKhau` (`idNhanKhau`),
  CONSTRAINT `tam_tru_ibfk_1` FOREIGN KEY (`idNhanKhau`) REFERENCES `nhan_khau` (`ID`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tam_tru`
--

LOCK TABLES `tam_tru` WRITE;
/*!40000 ALTER TABLE `tam_tru` DISABLE KEYS */;
/*!40000 ALTER TABLE `tam_tru` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-15 21:52:09
-- MySQL dump 10.13  Distrib 8.0.22, for Linux (x86_64)
--
-- Host: localhost    Database: QuanLyNhanKhau
-- ------------------------------------------------------
-- Server version	8.0.22-0ubuntu0.20.04.3

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `tam_vang`
--

DROP TABLE IF EXISTS `tam_vang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tam_vang` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `idNhanKhau` int DEFAULT NULL,
  `maGiayTamVang` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `noiTamtru` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `tuNgay` date DEFAULT NULL,
  `denNgay` date DEFAULT NULL,
  `lyDo` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `idNhanKhau` (`idNhanKhau`),
  CONSTRAINT `tam_vang_ibfk_1` FOREIGN KEY (`idNhanKhau`) REFERENCES `nhan_khau` (`ID`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tam_vang`
--

LOCK TABLES `tam_vang` WRITE;
/*!40000 ALTER TABLE `tam_vang` DISABLE KEYS */;
/*!40000 ALTER TABLE `tam_vang` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-15 21:52:09
-- MySQL dump 10.13  Distrib 8.0.22, for Linux (x86_64)
--
-- Host: localhost    Database: QuanLyNhanKhau
-- ------------------------------------------------------
-- Server version	8.0.22-0ubuntu0.20.04.3

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `testcovid`
--

DROP TABLE IF EXISTS `testcovid`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `testcovid` (
  `ID` int NOT NULL,
  `hoTen` varchar(100) DEFAULT NULL,
  `thoiGianTest` date DEFAULT NULL,
  `ketQuaTest` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `hinhThucTest` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  KEY `IdNhanKhau` (`hoTen`),
  KEY `fk_testcovid_1_idx` (`ID`),
  CONSTRAINT `fk_testcovid_1` FOREIGN KEY (`ID`) REFERENCES `nhan_khau` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `testcovid`
--

LOCK TABLES `testcovid` WRITE;
/*!40000 ALTER TABLE `testcovid` DISABLE KEYS */;
INSERT INTO `testcovid` VALUES (39,'Minh','2020-11-12','??m t??nh','Test nhanh');
/*!40000 ALTER TABLE `testcovid` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-15 21:52:10
-- MySQL dump 10.13  Distrib 8.0.22, for Linux (x86_64)
--
-- Host: localhost    Database: QuanLyNhanKhau
-- ------------------------------------------------------
-- Server version	8.0.22-0ubuntu0.20.04.3

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `thanh_vien_cua_ho`
--

DROP TABLE IF EXISTS `thanh_vien_cua_ho`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `thanh_vien_cua_ho` (
  `idNhanKhau` int NOT NULL,
  `idHoKhau` int NOT NULL,
  `quanHeVoiChuHo` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`idNhanKhau`,`idHoKhau`),
  KEY `idHoKhau` (`idHoKhau`),
  CONSTRAINT `thanh_vien_cua_ho_ibfk_1` FOREIGN KEY (`idNhanKhau`) REFERENCES `nhan_khau` (`ID`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `thanh_vien_cua_ho_ibfk_2` FOREIGN KEY (`idHoKhau`) REFERENCES `ho_khau` (`ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `thanh_vien_cua_ho`
--

LOCK TABLES `thanh_vien_cua_ho` WRITE;
/*!40000 ALTER TABLE `thanh_vien_cua_ho` DISABLE KEYS */;
INSERT INTO `thanh_vien_cua_ho` VALUES (26,14,'Ch??? h???'),(27,13,'V???'),(29,15,'Ch??? h???'),(30,15,'V???'),(31,15,'Con trai'),(32,15,'Con g??i'),(33,16,'Ch??? h???'),(34,16,'V???'),(35,16,'Con trai'),(36,16,'Con g??i');
/*!40000 ALTER TABLE `thanh_vien_cua_ho` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-15 21:52:10
-- MySQL dump 10.13  Distrib 8.0.22, for Linux (x86_64)
--
-- Host: localhost    Database: QuanLyNhanKhau
-- ------------------------------------------------------
-- Server version	8.0.22-0ubuntu0.20.04.3

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `tieu_su`
--

DROP TABLE IF EXISTS `tieu_su`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tieu_su` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `idNhanKhau` int DEFAULT NULL,
  `tuNgay` date DEFAULT NULL,
  `denNgay` date DEFAULT NULL,
  `diaChi` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `ngheNghiep` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `noiLamViec` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `idNhanKhau` (`idNhanKhau`),
  CONSTRAINT `tieu_su_ibfk_1` FOREIGN KEY (`idNhanKhau`) REFERENCES `nhan_khau` (`ID`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tieu_su`
--

LOCK TABLES `tieu_su` WRITE;
/*!40000 ALTER TABLE `tieu_su` DISABLE KEYS */;
INSERT INTO `tieu_su` VALUES (2,27,'2015-09-05','2015-09-05','S??? 45, ng?? 56, Nguy???n Khang, C???u Gi???y, H?? N???i','Sinh Vi??n','?????i h???c Th????ng m???i'),(3,28,'2012-09-05','2017-09-05','556 La Th??nh, H?? N???i','Sinh Vi??n','?????i h???c B??ch khoa H?? N???i'),(4,29,'1989-05-10','2000-08-25','S??? 5 Nguy???n Khuy???n, H?? N???i','Qu???n l?? nh???n s???','C??ng ty BCC'),(5,30,'1987-05-23','1997-03-01','S??? 3 T??? Quang B???u, qu???n Hai B?? Tr??ng, H?? N???i','Nh??n vi??n v??n ph??ng','C??ng ty Zezs'),(6,31,'2008-09-05','2013-09-05','S??? 3 T??? Quang B???u, qu???n Hai B?? Tr??ng, H?? N???i','Sinh vi??n','?????i h???c B??ch khoa H?? N???i'),(7,32,'2015-09-05','2019-09-05','S??? 3 T??? Quang B???u, qu???n Hai B?? Tr??ng, H?? N???i','Sinh vi??n','?????i h???c Lu???t H?? N???i'),(8,33,'1998-09-05','2003-09-05','S??? 66, ng?? 445 Nguy???n Khang, C???u Gi???y, H?? N???i','Sinh Vv??n','?????i h???c B??ch khoa H?? N???i'),(9,33,'2003-10-03','2018-08-06','S??? 4 T??? Quang B???u, qu???n Hai B?? Tr??ng, H?? N???i','Gi???ng vi??n','?????i h???c C??ng ngi???p H?? N???i'),(10,34,'2003-09-05','2011-09-05','S??? 8 T??n Th???t T??ng, H?? N???i','Sinh vi??n','?????i h???c Y H?? N???i'),(11,34,'2011-10-03','2015-08-09','S??? 8 T??n Th???t T??ng, H?? N???i','B??c s?? n???i tr??','B???nh vi???n B???ch Mai'),(12,37,'1961-01-01','1963-01-01','Kh??ng r??','B??? ?????i','H?? N???i');
/*!40000 ALTER TABLE `tieu_su` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-15 21:52:10
-- MySQL dump 10.13  Distrib 8.0.22, for Linux (x86_64)
--
-- Host: localhost    Database: QuanLyNhanKhau
-- ------------------------------------------------------
-- Server version	8.0.22-0ubuntu0.20.04.3

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `userName` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `passwd` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','1');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-15 21:52:10
