-- MySQL dump 10.13  Distrib 5.7.17, for Linux (x86_64)
--
-- Host: localhost    Database: sylius
-- ------------------------------------------------------
-- Server version	5.7.17-0ubuntu0.16.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `ext_log_entries`
--

DROP TABLE IF EXISTS `ext_log_entries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ext_log_entries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `logged_at` datetime NOT NULL,
  `object_id` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `object_class` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `version` int(11) NOT NULL,
  `data` longtext COLLATE utf8_unicode_ci COMMENT '(DC2Type:array)',
  `username` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `log_class_lookup_idx` (`object_class`),
  KEY `log_date_lookup_idx` (`logged_at`),
  KEY `log_user_lookup_idx` (`username`),
  KEY `log_version_lookup_idx` (`object_id`,`object_class`,`version`)
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ext_log_entries`
--

LOCK TABLES `ext_log_entries` WRITE;
/*!40000 ALTER TABLE `ext_log_entries` DISABLE KEYS */;
INSERT INTO `ext_log_entries` VALUES (1,'create','2017-01-19 14:35:35','1','AppBundle\\Entity\\Product',1,'a:3:{s:11:\"availableOn\";O:8:\"DateTime\":3:{s:4:\"date\";s:26:\"2017-01-19 14:35:35.000000\";s:13:\"timezone_type\";i:3;s:8:\"timezone\";s:12:\"Europe/Paris\";}s:14:\"availableUntil\";N;s:16:\"shippingCategory\";N;}',''),(2,'create','2017-01-19 14:35:35','1','Sylius\\Component\\Core\\Model\\ProductTranslation',1,'a:5:{s:4:\"name\";s:16:\"La lettre en pdf\";s:11:\"description\";s:64:\"Il était une fois un e-commerce ou on pouvait payer par chèque\";s:12:\"metaKeywords\";N;s:15:\"metaDescription\";N;s:16:\"shortDescription\";N;}',''),(3,'create','2017-01-19 14:35:35','1','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:10000;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',''),(4,'create','2017-01-19 15:01:16','2','AppBundle\\Entity\\Product',1,'a:3:{s:11:\"availableOn\";O:8:\"DateTime\":3:{s:4:\"date\";s:26:\"2017-01-19 15:01:16.000000\";s:13:\"timezone_type\";i:3;s:8:\"timezone\";s:12:\"Europe/Paris\";}s:14:\"availableUntil\";N;s:16:\"shippingCategory\";N;}',''),(5,'create','2017-01-19 15:01:16','2','Sylius\\Component\\Core\\Model\\ProductTranslation',1,'a:5:{s:4:\"name\";s:17:\"Coeur de vigneron\";s:11:\"description\";s:62:\"Un homme à sombré son cœur est celui d\'un vigneron endetter\";s:12:\"metaKeywords\";N;s:15:\"metaDescription\";N;s:16:\"shortDescription\";N;}',''),(6,'create','2017-01-19 15:01:16','2','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:5000;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',''),(7,'create','2017-01-19 15:05:54','3','AppBundle\\Entity\\Product',1,'a:3:{s:11:\"availableOn\";O:8:\"DateTime\":3:{s:4:\"date\";s:26:\"2017-01-19 15:05:54.000000\";s:13:\"timezone_type\";i:3;s:8:\"timezone\";s:12:\"Europe/Paris\";}s:14:\"availableUntil\";N;s:16:\"shippingCategory\";N;}',''),(8,'create','2017-01-19 15:05:54','3','Sylius\\Component\\Core\\Model\\ProductTranslation',1,'a:5:{s:4:\"name\";s:17:\"une petite pièce\";s:11:\"description\";s:51:\"Un mauvais livre mais pas cher parfait pour l\'hiver\";s:12:\"metaKeywords\";N;s:15:\"metaDescription\";N;s:16:\"shortDescription\";N;}',''),(9,'create','2017-01-19 15:05:54','3','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:100;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',''),(10,'create','2017-01-19 15:07:28','1','Sylius\\Component\\Core\\Model\\Order',1,'a:1:{s:12:\"currencyCode\";s:3:\"EUR\";}',NULL),(11,'create','2017-01-19 15:07:28','1','Sylius\\Component\\Core\\Model\\Payment',1,'a:4:{s:12:\"currencyCode\";s:3:\"EUR\";s:6:\"amount\";i:0;s:5:\"state\";s:3:\"new\";s:7:\"details\";a:0:{}}',NULL),(12,'create','2017-01-19 15:07:28','1','Sylius\\Component\\Core\\Model\\OrderItem',1,'a:2:{s:8:\"quantity\";i:1;s:9:\"unitPrice\";i:10000;}',NULL),(13,'create','2017-01-19 15:10:49','1','Sylius\\Component\\Core\\Model\\Address',1,'a:10:{s:9:\"firstName\";s:4:\"John\";s:8:\"lastName\";s:6:\"connor\";s:11:\"phoneNumber\";N;s:6:\"street\";s:21:\"18 rue phillipe fabia\";s:7:\"company\";N;s:4:\"city\";s:4:\"Lyon\";s:8:\"postcode\";s:5:\"69008\";s:11:\"countryCode\";s:2:\"FR\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}',NULL),(14,'create','2017-01-19 15:10:49','2','Sylius\\Component\\Core\\Model\\Address',1,'a:10:{s:9:\"firstName\";s:4:\"John\";s:8:\"lastName\";s:6:\"connor\";s:11:\"phoneNumber\";N;s:6:\"street\";s:21:\"18 rue phillipe fabia\";s:7:\"company\";N;s:4:\"city\";s:4:\"Lyon\";s:8:\"postcode\";s:5:\"69008\";s:11:\"countryCode\";s:2:\"FR\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}',NULL),(15,'update','2017-01-19 15:10:49','1','Sylius\\Component\\Core\\Model\\Payment',2,'a:1:{s:6:\"amount\";i:10700;}',NULL),(16,'update','2017-01-19 15:11:11','1','Sylius\\Component\\Core\\Model\\Payment',3,'a:1:{s:7:\"details\";a:2:{s:4:\"paid\";b:0;s:6:\"status\";s:7:\"pending\";}}',NULL),(17,'create','2017-01-19 15:20:18','2','Sylius\\Component\\Core\\Model\\Order',1,'a:1:{s:12:\"currencyCode\";s:3:\"EUR\";}',NULL),(18,'create','2017-01-19 15:20:18','2','Sylius\\Component\\Core\\Model\\Payment',1,'a:4:{s:12:\"currencyCode\";s:3:\"EUR\";s:6:\"amount\";i:0;s:5:\"state\";s:3:\"new\";s:7:\"details\";a:0:{}}',NULL),(19,'create','2017-01-19 15:20:18','2','Sylius\\Component\\Core\\Model\\OrderItem',1,'a:2:{s:8:\"quantity\";i:1;s:9:\"unitPrice\";i:10000;}',NULL),(20,'create','2017-01-19 15:22:16','3','Sylius\\Component\\Core\\Model\\Address',1,'a:10:{s:9:\"firstName\";s:4:\"John\";s:8:\"lastName\";s:5:\"Wayne\";s:11:\"phoneNumber\";N;s:6:\"street\";s:17:\"16 avenue gerstom\";s:7:\"company\";N;s:4:\"city\";s:6:\"Berlin\";s:8:\"postcode\";s:6:\"007000\";s:11:\"countryCode\";s:2:\"DE\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}',NULL),(21,'create','2017-01-19 15:22:16','4','Sylius\\Component\\Core\\Model\\Address',1,'a:10:{s:9:\"firstName\";s:4:\"John\";s:8:\"lastName\";s:5:\"Wayne\";s:11:\"phoneNumber\";N;s:6:\"street\";s:17:\"16 avenue gerstom\";s:7:\"company\";N;s:4:\"city\";s:6:\"Berlin\";s:8:\"postcode\";s:6:\"007000\";s:11:\"countryCode\";s:2:\"DE\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}',NULL),(22,'update','2017-01-19 15:22:16','2','Sylius\\Component\\Core\\Model\\Payment',2,'a:1:{s:6:\"amount\";i:10700;}',NULL),(23,'update','2017-01-19 15:22:24','2','Sylius\\Component\\Core\\Model\\Payment',3,'a:1:{s:6:\"amount\";i:11400;}',NULL),(24,'update','2017-01-19 15:22:53','2','Sylius\\Component\\Core\\Model\\Payment',4,'a:1:{s:7:\"details\";a:10:{s:23:\"PAYMENTREQUEST_0_INVNUM\";s:3:\"2-2\";s:29:\"PAYMENTREQUEST_0_CURRENCYCODE\";s:3:\"EUR\";s:20:\"PAYMENTREQUEST_0_AMT\";d:114;s:24:\"PAYMENTREQUEST_0_ITEMAMT\";d:114;s:24:\"L_PAYMENTREQUEST_0_NAME0\";s:16:\"La lettre en pdf\";s:23:\"L_PAYMENTREQUEST_0_AMT0\";d:100;s:23:\"L_PAYMENTREQUEST_0_QTY0\";i:1;s:24:\"L_PAYMENTREQUEST_0_NAME1\";s:14:\"Shipping Total\";s:23:\"L_PAYMENTREQUEST_0_AMT1\";d:14;s:23:\"L_PAYMENTREQUEST_0_QTY1\";i:1;}}',NULL),(25,'update','2017-01-19 15:22:56','2','Sylius\\Component\\Core\\Model\\Payment',5,'a:1:{s:7:\"details\";a:66:{s:23:\"PAYMENTREQUEST_0_INVNUM\";s:3:\"2-2\";s:29:\"PAYMENTREQUEST_0_CURRENCYCODE\";s:3:\"EUR\";s:20:\"PAYMENTREQUEST_0_AMT\";s:6:\"114.00\";s:24:\"PAYMENTREQUEST_0_ITEMAMT\";s:6:\"114.00\";s:24:\"L_PAYMENTREQUEST_0_NAME0\";s:16:\"La lettre en pdf\";s:23:\"L_PAYMENTREQUEST_0_AMT0\";s:6:\"100.00\";s:23:\"L_PAYMENTREQUEST_0_QTY0\";s:1:\"1\";s:24:\"L_PAYMENTREQUEST_0_NAME1\";s:14:\"Shipping Total\";s:23:\"L_PAYMENTREQUEST_0_AMT1\";s:5:\"14.00\";s:23:\"L_PAYMENTREQUEST_0_QTY1\";s:1:\"1\";s:30:\"PAYMENTREQUEST_0_PAYMENTACTION\";s:4:\"Sale\";s:26:\"AUTHORIZE_TOKEN_USERACTION\";s:6:\"commit\";s:9:\"RETURNURL\";s:81:\"http://localhost:8000/payment/capture/kn1Y7ai61p6uKvXe3nNhmQLRmg1p6ijimSOg9vU59FI\";s:9:\"CANCELURL\";s:93:\"http://localhost:8000/payment/capture/kn1Y7ai61p6uKvXe3nNhmQLRmg1p6ijimSOg9vU59FI?cancelled=1\";s:26:\"PAYMENTREQUEST_0_NOTIFYURL\";s:80:\"http://localhost:8000/payment/notify/3UGI7yTtzV03MMv2y8BRi3VvtNTYxooIp6cSqPr2kDE\";s:5:\"TOKEN\";s:20:\"EC-0BB65312EN560691R\";s:9:\"TIMESTAMP\";s:20:\"2017-01-19T14:22:56Z\";s:13:\"CORRELATIONID\";s:13:\"c9401e1aa4340\";s:3:\"ACK\";s:7:\"Success\";s:7:\"VERSION\";s:4:\"65.1\";s:5:\"BUILD\";s:8:\"28806785\";s:30:\"BILLINGAGREEMENTACCEPTEDSTATUS\";s:1:\"0\";s:14:\"CHECKOUTSTATUS\";s:25:\"PaymentActionNotInitiated\";s:12:\"CURRENCYCODE\";s:3:\"EUR\";s:3:\"AMT\";s:6:\"114.00\";s:7:\"ITEMAMT\";s:6:\"114.00\";s:11:\"SHIPPINGAMT\";s:4:\"0.00\";s:11:\"HANDLINGAMT\";s:4:\"0.00\";s:6:\"TAXAMT\";s:4:\"0.00\";s:6:\"INVNUM\";s:3:\"2-2\";s:9:\"NOTIFYURL\";s:80:\"http://localhost:8000/payment/notify/3UGI7yTtzV03MMv2y8BRi3VvtNTYxooIp6cSqPr2kDE\";s:12:\"INSURANCEAMT\";s:4:\"0.00\";s:11:\"SHIPDISCAMT\";s:4:\"0.00\";s:7:\"L_NAME0\";s:16:\"La lettre en pdf\";s:7:\"L_NAME1\";s:14:\"Shipping Total\";s:6:\"L_QTY0\";s:1:\"1\";s:6:\"L_QTY1\";s:1:\"1\";s:9:\"L_TAXAMT0\";s:4:\"0.00\";s:9:\"L_TAXAMT1\";s:4:\"0.00\";s:6:\"L_AMT0\";s:6:\"100.00\";s:6:\"L_AMT1\";s:5:\"14.00\";s:18:\"L_ITEMWEIGHTVALUE0\";s:10:\"   0.00000\";s:18:\"L_ITEMWEIGHTVALUE1\";s:10:\"   0.00000\";s:18:\"L_ITEMLENGTHVALUE0\";s:10:\"   0.00000\";s:18:\"L_ITEMLENGTHVALUE1\";s:10:\"   0.00000\";s:17:\"L_ITEMWIDTHVALUE0\";s:10:\"   0.00000\";s:17:\"L_ITEMWIDTHVALUE1\";s:10:\"   0.00000\";s:18:\"L_ITEMHEIGHTVALUE0\";s:10:\"   0.00000\";s:18:\"L_ITEMHEIGHTVALUE1\";s:10:\"   0.00000\";s:28:\"PAYMENTREQUEST_0_SHIPPINGAMT\";s:4:\"0.00\";s:28:\"PAYMENTREQUEST_0_HANDLINGAMT\";s:4:\"0.00\";s:23:\"PAYMENTREQUEST_0_TAXAMT\";s:4:\"0.00\";s:29:\"PAYMENTREQUEST_0_INSURANCEAMT\";s:4:\"0.00\";s:28:\"PAYMENTREQUEST_0_SHIPDISCAMT\";s:4:\"0.00\";s:39:\"PAYMENTREQUEST_0_INSURANCEOPTIONOFFERED\";s:5:\"false\";s:26:\"L_PAYMENTREQUEST_0_TAXAMT0\";s:4:\"0.00\";s:26:\"L_PAYMENTREQUEST_0_TAXAMT1\";s:4:\"0.00\";s:35:\"L_PAYMENTREQUEST_0_ITEMWEIGHTVALUE0\";s:10:\"   0.00000\";s:35:\"L_PAYMENTREQUEST_0_ITEMWEIGHTVALUE1\";s:10:\"   0.00000\";s:35:\"L_PAYMENTREQUEST_0_ITEMLENGTHVALUE0\";s:10:\"   0.00000\";s:35:\"L_PAYMENTREQUEST_0_ITEMLENGTHVALUE1\";s:10:\"   0.00000\";s:34:\"L_PAYMENTREQUEST_0_ITEMWIDTHVALUE0\";s:10:\"   0.00000\";s:34:\"L_PAYMENTREQUEST_0_ITEMWIDTHVALUE1\";s:10:\"   0.00000\";s:35:\"L_PAYMENTREQUEST_0_ITEMHEIGHTVALUE0\";s:10:\"   0.00000\";s:35:\"L_PAYMENTREQUEST_0_ITEMHEIGHTVALUE1\";s:10:\"   0.00000\";s:30:\"PAYMENTREQUESTINFO_0_ERRORCODE\";s:1:\"0\";}}',NULL),(26,'update','2017-01-19 15:27:08','2','Sylius\\Component\\Core\\Model\\Payment',6,'a:1:{s:7:\"details\";a:118:{s:23:\"PAYMENTREQUEST_0_INVNUM\";s:3:\"2-2\";s:29:\"PAYMENTREQUEST_0_CURRENCYCODE\";s:3:\"EUR\";s:20:\"PAYMENTREQUEST_0_AMT\";s:6:\"114.00\";s:24:\"PAYMENTREQUEST_0_ITEMAMT\";s:6:\"114.00\";s:24:\"L_PAYMENTREQUEST_0_NAME0\";s:16:\"La lettre en pdf\";s:23:\"L_PAYMENTREQUEST_0_AMT0\";s:6:\"100.00\";s:23:\"L_PAYMENTREQUEST_0_QTY0\";s:1:\"1\";s:24:\"L_PAYMENTREQUEST_0_NAME1\";s:14:\"Shipping Total\";s:23:\"L_PAYMENTREQUEST_0_AMT1\";s:5:\"14.00\";s:23:\"L_PAYMENTREQUEST_0_QTY1\";s:1:\"1\";s:30:\"PAYMENTREQUEST_0_PAYMENTACTION\";s:4:\"Sale\";s:26:\"AUTHORIZE_TOKEN_USERACTION\";s:6:\"commit\";s:9:\"RETURNURL\";s:81:\"http://localhost:8000/payment/capture/kn1Y7ai61p6uKvXe3nNhmQLRmg1p6ijimSOg9vU59FI\";s:9:\"CANCELURL\";s:93:\"http://localhost:8000/payment/capture/kn1Y7ai61p6uKvXe3nNhmQLRmg1p6ijimSOg9vU59FI?cancelled=1\";s:26:\"PAYMENTREQUEST_0_NOTIFYURL\";s:80:\"http://localhost:8000/payment/notify/3UGI7yTtzV03MMv2y8BRi3VvtNTYxooIp6cSqPr2kDE\";s:5:\"TOKEN\";s:20:\"EC-0BB65312EN560691R\";s:9:\"TIMESTAMP\";s:20:\"2017-01-19T14:27:07Z\";s:13:\"CORRELATIONID\";s:13:\"952671e74a602\";s:3:\"ACK\";s:7:\"Success\";s:7:\"VERSION\";s:4:\"65.1\";s:5:\"BUILD\";s:8:\"28806785\";s:30:\"BILLINGAGREEMENTACCEPTEDSTATUS\";s:1:\"0\";s:14:\"CHECKOUTSTATUS\";s:22:\"PaymentActionCompleted\";s:12:\"CURRENCYCODE\";s:3:\"EUR\";s:3:\"AMT\";s:6:\"114.00\";s:7:\"ITEMAMT\";s:6:\"114.00\";s:11:\"SHIPPINGAMT\";s:4:\"0.00\";s:11:\"HANDLINGAMT\";s:4:\"0.00\";s:6:\"TAXAMT\";s:4:\"0.00\";s:6:\"INVNUM\";s:3:\"2-2\";s:9:\"NOTIFYURL\";s:80:\"http://localhost:8000/payment/notify/3UGI7yTtzV03MMv2y8BRi3VvtNTYxooIp6cSqPr2kDE\";s:12:\"INSURANCEAMT\";s:4:\"0.00\";s:11:\"SHIPDISCAMT\";s:4:\"0.00\";s:7:\"L_NAME0\";s:16:\"La lettre en pdf\";s:7:\"L_NAME1\";s:14:\"Shipping Total\";s:6:\"L_QTY0\";s:1:\"1\";s:6:\"L_QTY1\";s:1:\"1\";s:9:\"L_TAXAMT0\";s:4:\"0.00\";s:9:\"L_TAXAMT1\";s:4:\"0.00\";s:6:\"L_AMT0\";s:6:\"100.00\";s:6:\"L_AMT1\";s:5:\"14.00\";s:18:\"L_ITEMWEIGHTVALUE0\";s:10:\"   0.00000\";s:18:\"L_ITEMWEIGHTVALUE1\";s:10:\"   0.00000\";s:18:\"L_ITEMLENGTHVALUE0\";s:10:\"   0.00000\";s:18:\"L_ITEMLENGTHVALUE1\";s:10:\"   0.00000\";s:17:\"L_ITEMWIDTHVALUE0\";s:10:\"   0.00000\";s:17:\"L_ITEMWIDTHVALUE1\";s:10:\"   0.00000\";s:18:\"L_ITEMHEIGHTVALUE0\";s:10:\"   0.00000\";s:18:\"L_ITEMHEIGHTVALUE1\";s:10:\"   0.00000\";s:28:\"PAYMENTREQUEST_0_SHIPPINGAMT\";s:4:\"0.00\";s:28:\"PAYMENTREQUEST_0_HANDLINGAMT\";s:4:\"0.00\";s:23:\"PAYMENTREQUEST_0_TAXAMT\";s:4:\"0.00\";s:29:\"PAYMENTREQUEST_0_INSURANCEAMT\";s:4:\"0.00\";s:28:\"PAYMENTREQUEST_0_SHIPDISCAMT\";s:4:\"0.00\";s:39:\"PAYMENTREQUEST_0_INSURANCEOPTIONOFFERED\";s:5:\"false\";s:26:\"L_PAYMENTREQUEST_0_TAXAMT0\";s:4:\"0.00\";s:26:\"L_PAYMENTREQUEST_0_TAXAMT1\";s:4:\"0.00\";s:35:\"L_PAYMENTREQUEST_0_ITEMWEIGHTVALUE0\";s:10:\"   0.00000\";s:35:\"L_PAYMENTREQUEST_0_ITEMWEIGHTVALUE1\";s:10:\"   0.00000\";s:35:\"L_PAYMENTREQUEST_0_ITEMLENGTHVALUE0\";s:10:\"   0.00000\";s:35:\"L_PAYMENTREQUEST_0_ITEMLENGTHVALUE1\";s:10:\"   0.00000\";s:34:\"L_PAYMENTREQUEST_0_ITEMWIDTHVALUE0\";s:10:\"   0.00000\";s:34:\"L_PAYMENTREQUEST_0_ITEMWIDTHVALUE1\";s:10:\"   0.00000\";s:35:\"L_PAYMENTREQUEST_0_ITEMHEIGHTVALUE0\";s:10:\"   0.00000\";s:35:\"L_PAYMENTREQUEST_0_ITEMHEIGHTVALUE1\";s:10:\"   0.00000\";s:30:\"PAYMENTREQUESTINFO_0_ERRORCODE\";s:1:\"0\";s:5:\"EMAIL\";s:34:\"remi.reibel-buyer@rdm-editions.com\";s:7:\"PAYERID\";s:13:\"P5LXY98ZZ9RLE\";s:11:\"PAYERSTATUS\";s:8:\"verified\";s:9:\"FIRSTNAME\";s:4:\"test\";s:8:\"LASTNAME\";s:5:\"buyer\";s:11:\"COUNTRYCODE\";s:2:\"FR\";s:10:\"SHIPTONAME\";s:10:\"test buyer\";s:12:\"SHIPTOSTREET\";s:33:\"Av. de la Pelouse, 87648672 Mayet\";s:10:\"SHIPTOCITY\";s:5:\"Paris\";s:11:\"SHIPTOSTATE\";s:6:\"Alsace\";s:9:\"SHIPTOZIP\";s:5:\"75002\";s:17:\"SHIPTOCOUNTRYCODE\";s:2:\"FR\";s:17:\"SHIPTOCOUNTRYNAME\";s:6:\"France\";s:13:\"ADDRESSSTATUS\";s:9:\"Confirmed\";s:22:\"INSURANCEOPTIONOFFERED\";s:5:\"false\";s:38:\"PAYMENTREQUEST_0_SELLERPAYPALACCOUNTID\";s:40:\"remi.reibel-facilitator@rdm-editions.com\";s:27:\"PAYMENTREQUEST_0_SHIPTONAME\";s:10:\"test buyer\";s:29:\"PAYMENTREQUEST_0_SHIPTOSTREET\";s:33:\"Av. de la Pelouse, 87648672 Mayet\";s:27:\"PAYMENTREQUEST_0_SHIPTOCITY\";s:5:\"Paris\";s:28:\"PAYMENTREQUEST_0_SHIPTOSTATE\";s:6:\"Alsace\";s:26:\"PAYMENTREQUEST_0_SHIPTOZIP\";s:5:\"75002\";s:34:\"PAYMENTREQUEST_0_SHIPTOCOUNTRYCODE\";s:2:\"FR\";s:34:\"PAYMENTREQUEST_0_SHIPTOCOUNTRYNAME\";s:6:\"France\";s:30:\"PAYMENTREQUEST_0_ADDRESSSTATUS\";s:9:\"Confirmed\";s:28:\"SUCCESSPAGEREDIRECTREQUESTED\";s:5:\"false\";s:23:\"INSURANCEOPTIONSELECTED\";s:5:\"false\";s:23:\"SHIPPINGOPTIONISDEFAULT\";s:5:\"false\";s:27:\"PAYMENTINFO_0_TRANSACTIONID\";s:17:\"80R10100UF731374T\";s:29:\"PAYMENTINFO_0_TRANSACTIONTYPE\";s:4:\"cart\";s:25:\"PAYMENTINFO_0_PAYMENTTYPE\";s:7:\"instant\";s:23:\"PAYMENTINFO_0_ORDERTIME\";s:20:\"2017-01-19T14:27:06Z\";s:17:\"PAYMENTINFO_0_AMT\";s:6:\"114.00\";s:20:\"PAYMENTINFO_0_FEEAMT\";s:4:\"4.13\";s:20:\"PAYMENTINFO_0_TAXAMT\";s:4:\"0.00\";s:26:\"PAYMENTINFO_0_CURRENCYCODE\";s:3:\"EUR\";s:27:\"PAYMENTINFO_0_PAYMENTSTATUS\";s:9:\"Completed\";s:27:\"PAYMENTINFO_0_PENDINGREASON\";s:4:\"None\";s:24:\"PAYMENTINFO_0_REASONCODE\";s:4:\"None\";s:35:\"PAYMENTINFO_0_PROTECTIONELIGIBILITY\";s:8:\"Eligible\";s:39:\"PAYMENTINFO_0_PROTECTIONELIGIBILITYTYPE\";s:51:\"ItemNotReceivedEligible,UnauthorizedPaymentEligible\";s:23:\"PAYMENTINFO_0_ERRORCODE\";s:1:\"0\";s:17:\"PAYMENTINFO_0_ACK\";s:7:\"Success\";s:13:\"TRANSACTIONID\";s:17:\"80R10100UF731374T\";s:30:\"PAYMENTREQUEST_0_TRANSACTIONID\";s:17:\"80R10100UF731374T\";s:34:\"PAYMENTREQUESTINFO_0_TRANSACTIONID\";s:17:\"80R10100UF731374T\";s:32:\"PAYMENTREQUEST_0_TRANSACTIONTYPE\";s:4:\"cart\";s:28:\"PAYMENTREQUEST_0_PAYMENTTYPE\";s:7:\"instant\";s:26:\"PAYMENTREQUEST_0_ORDERTIME\";s:20:\"2017-01-19T14:27:05Z\";s:23:\"PAYMENTREQUEST_0_FEEAMT\";s:4:\"4.13\";s:30:\"PAYMENTREQUEST_0_PAYMENTSTATUS\";s:9:\"Completed\";s:30:\"PAYMENTREQUEST_0_PENDINGREASON\";s:4:\"None\";s:27:\"PAYMENTREQUEST_0_REASONCODE\";s:4:\"None\";}}',NULL),(27,'update','2017-01-19 15:27:08','2','Sylius\\Component\\Core\\Model\\Payment',7,'a:1:{s:5:\"state\";s:9:\"completed\";}',NULL),(28,'create','2017-01-19 15:33:02','3','Sylius\\Component\\Core\\Model\\Order',1,'a:1:{s:12:\"currencyCode\";s:3:\"EUR\";}',NULL),(29,'create','2017-01-19 15:33:02','3','Sylius\\Component\\Core\\Model\\Payment',1,'a:4:{s:12:\"currencyCode\";s:3:\"EUR\";s:6:\"amount\";i:0;s:5:\"state\";s:3:\"new\";s:7:\"details\";a:0:{}}',NULL),(30,'create','2017-01-19 15:33:02','3','Sylius\\Component\\Core\\Model\\OrderItem',1,'a:2:{s:8:\"quantity\";i:1;s:9:\"unitPrice\";i:100;}',NULL),(31,'create','2017-01-19 15:34:06','5','Sylius\\Component\\Core\\Model\\Address',1,'a:10:{s:9:\"firstName\";s:4:\"guts\";s:8:\"lastName\";s:7:\"berserk\";s:11:\"phoneNumber\";N;s:6:\"street\";s:21:\"18 avenue de falconia\";s:7:\"company\";N;s:4:\"city\";s:5:\"Alger\";s:8:\"postcode\";s:6:\"999999\";s:11:\"countryCode\";s:2:\"DZ\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}',NULL),(32,'create','2017-01-19 15:34:06','6','Sylius\\Component\\Core\\Model\\Address',1,'a:10:{s:9:\"firstName\";s:4:\"guts\";s:8:\"lastName\";s:7:\"berserk\";s:11:\"phoneNumber\";N;s:6:\"street\";s:21:\"18 avenue de falconia\";s:7:\"company\";N;s:4:\"city\";s:5:\"Alger\";s:8:\"postcode\";s:6:\"999999\";s:11:\"countryCode\";s:2:\"DZ\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}',NULL),(33,'update','2017-01-19 15:34:06','3','Sylius\\Component\\Core\\Model\\Payment',2,'a:1:{s:6:\"amount\";i:800;}',NULL),(34,'update','2017-01-19 15:34:14','3','Sylius\\Component\\Core\\Model\\Payment',3,'a:1:{s:6:\"amount\";i:2600;}',NULL),(35,'update','2017-01-19 15:34:19','3','Sylius\\Component\\Core\\Model\\Payment',4,'a:1:{s:7:\"details\";a:2:{s:4:\"paid\";b:0;s:6:\"status\";s:7:\"pending\";}}',NULL),(36,'create','2017-01-19 16:12:19','4','Sylius\\Component\\Core\\Model\\Order',1,'a:1:{s:12:\"currencyCode\";s:3:\"EUR\";}',NULL),(37,'create','2017-01-19 16:12:19','4','Sylius\\Component\\Core\\Model\\Payment',1,'a:4:{s:12:\"currencyCode\";s:3:\"EUR\";s:6:\"amount\";i:0;s:5:\"state\";s:3:\"new\";s:7:\"details\";a:0:{}}',NULL),(38,'create','2017-01-19 16:12:19','4','Sylius\\Component\\Core\\Model\\OrderItem',1,'a:2:{s:8:\"quantity\";i:1;s:9:\"unitPrice\";i:10000;}',NULL),(39,'create','2017-01-19 16:13:09','7','Sylius\\Component\\Core\\Model\\Address',1,'a:10:{s:9:\"firstName\";s:3:\"jon\";s:8:\"lastName\";s:4:\"snow\";s:11:\"phoneNumber\";N;s:6:\"street\";s:13:\"12 rue watson\";s:7:\"company\";N;s:4:\"city\";s:4:\"Lyon\";s:8:\"postcode\";s:5:\"69008\";s:11:\"countryCode\";s:2:\"FR\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}',NULL),(40,'create','2017-01-19 16:13:09','8','Sylius\\Component\\Core\\Model\\Address',1,'a:10:{s:9:\"firstName\";s:3:\"jon\";s:8:\"lastName\";s:4:\"snow\";s:11:\"phoneNumber\";N;s:6:\"street\";s:13:\"12 rue watson\";s:7:\"company\";N;s:4:\"city\";s:4:\"Lyon\";s:8:\"postcode\";s:5:\"69008\";s:11:\"countryCode\";s:2:\"FR\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}',NULL),(41,'update','2017-01-19 16:13:09','4','Sylius\\Component\\Core\\Model\\Payment',2,'a:1:{s:6:\"amount\";i:10700;}',NULL),(42,'update','2017-01-19 16:13:22','4','Sylius\\Component\\Core\\Model\\Payment',3,'a:1:{s:7:\"details\";a:10:{s:23:\"PAYMENTREQUEST_0_INVNUM\";s:3:\"4-4\";s:29:\"PAYMENTREQUEST_0_CURRENCYCODE\";s:3:\"EUR\";s:20:\"PAYMENTREQUEST_0_AMT\";d:107;s:24:\"PAYMENTREQUEST_0_ITEMAMT\";d:107;s:24:\"L_PAYMENTREQUEST_0_NAME0\";s:16:\"La lettre en pdf\";s:23:\"L_PAYMENTREQUEST_0_AMT0\";d:100;s:23:\"L_PAYMENTREQUEST_0_QTY0\";i:1;s:24:\"L_PAYMENTREQUEST_0_NAME1\";s:14:\"Shipping Total\";s:23:\"L_PAYMENTREQUEST_0_AMT1\";d:7;s:23:\"L_PAYMENTREQUEST_0_QTY1\";i:1;}}',NULL),(43,'update','2017-01-19 16:13:24','4','Sylius\\Component\\Core\\Model\\Payment',4,'a:1:{s:7:\"details\";a:66:{s:23:\"PAYMENTREQUEST_0_INVNUM\";s:3:\"4-4\";s:29:\"PAYMENTREQUEST_0_CURRENCYCODE\";s:3:\"EUR\";s:20:\"PAYMENTREQUEST_0_AMT\";s:6:\"107.00\";s:24:\"PAYMENTREQUEST_0_ITEMAMT\";s:6:\"107.00\";s:24:\"L_PAYMENTREQUEST_0_NAME0\";s:16:\"La lettre en pdf\";s:23:\"L_PAYMENTREQUEST_0_AMT0\";s:6:\"100.00\";s:23:\"L_PAYMENTREQUEST_0_QTY0\";s:1:\"1\";s:24:\"L_PAYMENTREQUEST_0_NAME1\";s:14:\"Shipping Total\";s:23:\"L_PAYMENTREQUEST_0_AMT1\";s:4:\"7.00\";s:23:\"L_PAYMENTREQUEST_0_QTY1\";s:1:\"1\";s:30:\"PAYMENTREQUEST_0_PAYMENTACTION\";s:4:\"Sale\";s:26:\"AUTHORIZE_TOKEN_USERACTION\";s:6:\"commit\";s:9:\"RETURNURL\";s:81:\"http://localhost:8000/payment/capture/IOByPf-1SsGQ9OwKslwHsK-Irp_kfYC7G6vHcMAjz5A\";s:9:\"CANCELURL\";s:93:\"http://localhost:8000/payment/capture/IOByPf-1SsGQ9OwKslwHsK-Irp_kfYC7G6vHcMAjz5A?cancelled=1\";s:26:\"PAYMENTREQUEST_0_NOTIFYURL\";s:80:\"http://localhost:8000/payment/notify/8TpOG0Hd2jyfE7kd6sJ6VPP4F6LkpHjbfp5jtvaIt68\";s:5:\"TOKEN\";s:20:\"EC-7LX127127S3868058\";s:9:\"TIMESTAMP\";s:20:\"2017-01-19T15:13:26Z\";s:13:\"CORRELATIONID\";s:13:\"bd07b099e6297\";s:3:\"ACK\";s:7:\"Success\";s:7:\"VERSION\";s:4:\"65.1\";s:5:\"BUILD\";s:8:\"28806785\";s:30:\"BILLINGAGREEMENTACCEPTEDSTATUS\";s:1:\"0\";s:14:\"CHECKOUTSTATUS\";s:25:\"PaymentActionNotInitiated\";s:12:\"CURRENCYCODE\";s:3:\"EUR\";s:3:\"AMT\";s:6:\"107.00\";s:7:\"ITEMAMT\";s:6:\"107.00\";s:11:\"SHIPPINGAMT\";s:4:\"0.00\";s:11:\"HANDLINGAMT\";s:4:\"0.00\";s:6:\"TAXAMT\";s:4:\"0.00\";s:6:\"INVNUM\";s:3:\"4-4\";s:9:\"NOTIFYURL\";s:80:\"http://localhost:8000/payment/notify/8TpOG0Hd2jyfE7kd6sJ6VPP4F6LkpHjbfp5jtvaIt68\";s:12:\"INSURANCEAMT\";s:4:\"0.00\";s:11:\"SHIPDISCAMT\";s:4:\"0.00\";s:7:\"L_NAME0\";s:16:\"La lettre en pdf\";s:7:\"L_NAME1\";s:14:\"Shipping Total\";s:6:\"L_QTY0\";s:1:\"1\";s:6:\"L_QTY1\";s:1:\"1\";s:9:\"L_TAXAMT0\";s:4:\"0.00\";s:9:\"L_TAXAMT1\";s:4:\"0.00\";s:6:\"L_AMT0\";s:6:\"100.00\";s:6:\"L_AMT1\";s:4:\"7.00\";s:18:\"L_ITEMWEIGHTVALUE0\";s:10:\"   0.00000\";s:18:\"L_ITEMWEIGHTVALUE1\";s:10:\"   0.00000\";s:18:\"L_ITEMLENGTHVALUE0\";s:10:\"   0.00000\";s:18:\"L_ITEMLENGTHVALUE1\";s:10:\"   0.00000\";s:17:\"L_ITEMWIDTHVALUE0\";s:10:\"   0.00000\";s:17:\"L_ITEMWIDTHVALUE1\";s:10:\"   0.00000\";s:18:\"L_ITEMHEIGHTVALUE0\";s:10:\"   0.00000\";s:18:\"L_ITEMHEIGHTVALUE1\";s:10:\"   0.00000\";s:28:\"PAYMENTREQUEST_0_SHIPPINGAMT\";s:4:\"0.00\";s:28:\"PAYMENTREQUEST_0_HANDLINGAMT\";s:4:\"0.00\";s:23:\"PAYMENTREQUEST_0_TAXAMT\";s:4:\"0.00\";s:29:\"PAYMENTREQUEST_0_INSURANCEAMT\";s:4:\"0.00\";s:28:\"PAYMENTREQUEST_0_SHIPDISCAMT\";s:4:\"0.00\";s:39:\"PAYMENTREQUEST_0_INSURANCEOPTIONOFFERED\";s:5:\"false\";s:26:\"L_PAYMENTREQUEST_0_TAXAMT0\";s:4:\"0.00\";s:26:\"L_PAYMENTREQUEST_0_TAXAMT1\";s:4:\"0.00\";s:35:\"L_PAYMENTREQUEST_0_ITEMWEIGHTVALUE0\";s:10:\"   0.00000\";s:35:\"L_PAYMENTREQUEST_0_ITEMWEIGHTVALUE1\";s:10:\"   0.00000\";s:35:\"L_PAYMENTREQUEST_0_ITEMLENGTHVALUE0\";s:10:\"   0.00000\";s:35:\"L_PAYMENTREQUEST_0_ITEMLENGTHVALUE1\";s:10:\"   0.00000\";s:34:\"L_PAYMENTREQUEST_0_ITEMWIDTHVALUE0\";s:10:\"   0.00000\";s:34:\"L_PAYMENTREQUEST_0_ITEMWIDTHVALUE1\";s:10:\"   0.00000\";s:35:\"L_PAYMENTREQUEST_0_ITEMHEIGHTVALUE0\";s:10:\"   0.00000\";s:35:\"L_PAYMENTREQUEST_0_ITEMHEIGHTVALUE1\";s:10:\"   0.00000\";s:30:\"PAYMENTREQUESTINFO_0_ERRORCODE\";s:1:\"0\";}}',NULL),(44,'update','2017-01-19 16:15:28','4','Sylius\\Component\\Core\\Model\\Payment',5,'a:1:{s:7:\"details\";a:118:{s:23:\"PAYMENTREQUEST_0_INVNUM\";s:3:\"4-4\";s:29:\"PAYMENTREQUEST_0_CURRENCYCODE\";s:3:\"EUR\";s:20:\"PAYMENTREQUEST_0_AMT\";s:6:\"107.00\";s:24:\"PAYMENTREQUEST_0_ITEMAMT\";s:6:\"107.00\";s:24:\"L_PAYMENTREQUEST_0_NAME0\";s:16:\"La lettre en pdf\";s:23:\"L_PAYMENTREQUEST_0_AMT0\";s:6:\"100.00\";s:23:\"L_PAYMENTREQUEST_0_QTY0\";s:1:\"1\";s:24:\"L_PAYMENTREQUEST_0_NAME1\";s:14:\"Shipping Total\";s:23:\"L_PAYMENTREQUEST_0_AMT1\";s:4:\"7.00\";s:23:\"L_PAYMENTREQUEST_0_QTY1\";s:1:\"1\";s:30:\"PAYMENTREQUEST_0_PAYMENTACTION\";s:4:\"Sale\";s:26:\"AUTHORIZE_TOKEN_USERACTION\";s:6:\"commit\";s:9:\"RETURNURL\";s:81:\"http://localhost:8000/payment/capture/IOByPf-1SsGQ9OwKslwHsK-Irp_kfYC7G6vHcMAjz5A\";s:9:\"CANCELURL\";s:93:\"http://localhost:8000/payment/capture/IOByPf-1SsGQ9OwKslwHsK-Irp_kfYC7G6vHcMAjz5A?cancelled=1\";s:26:\"PAYMENTREQUEST_0_NOTIFYURL\";s:80:\"http://localhost:8000/payment/notify/8TpOG0Hd2jyfE7kd6sJ6VPP4F6LkpHjbfp5jtvaIt68\";s:5:\"TOKEN\";s:20:\"EC-7LX127127S3868058\";s:9:\"TIMESTAMP\";s:20:\"2017-01-19T15:15:28Z\";s:13:\"CORRELATIONID\";s:13:\"509ce23184ab3\";s:3:\"ACK\";s:7:\"Success\";s:7:\"VERSION\";s:4:\"65.1\";s:5:\"BUILD\";s:8:\"28806785\";s:30:\"BILLINGAGREEMENTACCEPTEDSTATUS\";s:1:\"0\";s:14:\"CHECKOUTSTATUS\";s:22:\"PaymentActionCompleted\";s:12:\"CURRENCYCODE\";s:3:\"EUR\";s:3:\"AMT\";s:6:\"107.00\";s:7:\"ITEMAMT\";s:6:\"107.00\";s:11:\"SHIPPINGAMT\";s:4:\"0.00\";s:11:\"HANDLINGAMT\";s:4:\"0.00\";s:6:\"TAXAMT\";s:4:\"0.00\";s:6:\"INVNUM\";s:3:\"4-4\";s:9:\"NOTIFYURL\";s:80:\"http://localhost:8000/payment/notify/8TpOG0Hd2jyfE7kd6sJ6VPP4F6LkpHjbfp5jtvaIt68\";s:12:\"INSURANCEAMT\";s:4:\"0.00\";s:11:\"SHIPDISCAMT\";s:4:\"0.00\";s:7:\"L_NAME0\";s:16:\"La lettre en pdf\";s:7:\"L_NAME1\";s:14:\"Shipping Total\";s:6:\"L_QTY0\";s:1:\"1\";s:6:\"L_QTY1\";s:1:\"1\";s:9:\"L_TAXAMT0\";s:4:\"0.00\";s:9:\"L_TAXAMT1\";s:4:\"0.00\";s:6:\"L_AMT0\";s:6:\"100.00\";s:6:\"L_AMT1\";s:4:\"7.00\";s:18:\"L_ITEMWEIGHTVALUE0\";s:10:\"   0.00000\";s:18:\"L_ITEMWEIGHTVALUE1\";s:10:\"   0.00000\";s:18:\"L_ITEMLENGTHVALUE0\";s:10:\"   0.00000\";s:18:\"L_ITEMLENGTHVALUE1\";s:10:\"   0.00000\";s:17:\"L_ITEMWIDTHVALUE0\";s:10:\"   0.00000\";s:17:\"L_ITEMWIDTHVALUE1\";s:10:\"   0.00000\";s:18:\"L_ITEMHEIGHTVALUE0\";s:10:\"   0.00000\";s:18:\"L_ITEMHEIGHTVALUE1\";s:10:\"   0.00000\";s:28:\"PAYMENTREQUEST_0_SHIPPINGAMT\";s:4:\"0.00\";s:28:\"PAYMENTREQUEST_0_HANDLINGAMT\";s:4:\"0.00\";s:23:\"PAYMENTREQUEST_0_TAXAMT\";s:4:\"0.00\";s:29:\"PAYMENTREQUEST_0_INSURANCEAMT\";s:4:\"0.00\";s:28:\"PAYMENTREQUEST_0_SHIPDISCAMT\";s:4:\"0.00\";s:39:\"PAYMENTREQUEST_0_INSURANCEOPTIONOFFERED\";s:5:\"false\";s:26:\"L_PAYMENTREQUEST_0_TAXAMT0\";s:4:\"0.00\";s:26:\"L_PAYMENTREQUEST_0_TAXAMT1\";s:4:\"0.00\";s:35:\"L_PAYMENTREQUEST_0_ITEMWEIGHTVALUE0\";s:10:\"   0.00000\";s:35:\"L_PAYMENTREQUEST_0_ITEMWEIGHTVALUE1\";s:10:\"   0.00000\";s:35:\"L_PAYMENTREQUEST_0_ITEMLENGTHVALUE0\";s:10:\"   0.00000\";s:35:\"L_PAYMENTREQUEST_0_ITEMLENGTHVALUE1\";s:10:\"   0.00000\";s:34:\"L_PAYMENTREQUEST_0_ITEMWIDTHVALUE0\";s:10:\"   0.00000\";s:34:\"L_PAYMENTREQUEST_0_ITEMWIDTHVALUE1\";s:10:\"   0.00000\";s:35:\"L_PAYMENTREQUEST_0_ITEMHEIGHTVALUE0\";s:10:\"   0.00000\";s:35:\"L_PAYMENTREQUEST_0_ITEMHEIGHTVALUE1\";s:10:\"   0.00000\";s:30:\"PAYMENTREQUESTINFO_0_ERRORCODE\";s:1:\"0\";s:5:\"EMAIL\";s:34:\"remi.reibel-buyer@rdm-editions.com\";s:7:\"PAYERID\";s:13:\"P5LXY98ZZ9RLE\";s:11:\"PAYERSTATUS\";s:8:\"verified\";s:9:\"FIRSTNAME\";s:4:\"test\";s:8:\"LASTNAME\";s:5:\"buyer\";s:11:\"COUNTRYCODE\";s:2:\"FR\";s:10:\"SHIPTONAME\";s:10:\"test buyer\";s:12:\"SHIPTOSTREET\";s:33:\"Av. de la Pelouse, 87648672 Mayet\";s:10:\"SHIPTOCITY\";s:5:\"Paris\";s:11:\"SHIPTOSTATE\";s:6:\"Alsace\";s:9:\"SHIPTOZIP\";s:5:\"75002\";s:17:\"SHIPTOCOUNTRYCODE\";s:2:\"FR\";s:17:\"SHIPTOCOUNTRYNAME\";s:6:\"France\";s:13:\"ADDRESSSTATUS\";s:9:\"Confirmed\";s:22:\"INSURANCEOPTIONOFFERED\";s:5:\"false\";s:38:\"PAYMENTREQUEST_0_SELLERPAYPALACCOUNTID\";s:40:\"remi.reibel-facilitator@rdm-editions.com\";s:27:\"PAYMENTREQUEST_0_SHIPTONAME\";s:10:\"test buyer\";s:29:\"PAYMENTREQUEST_0_SHIPTOSTREET\";s:33:\"Av. de la Pelouse, 87648672 Mayet\";s:27:\"PAYMENTREQUEST_0_SHIPTOCITY\";s:5:\"Paris\";s:28:\"PAYMENTREQUEST_0_SHIPTOSTATE\";s:6:\"Alsace\";s:26:\"PAYMENTREQUEST_0_SHIPTOZIP\";s:5:\"75002\";s:34:\"PAYMENTREQUEST_0_SHIPTOCOUNTRYCODE\";s:2:\"FR\";s:34:\"PAYMENTREQUEST_0_SHIPTOCOUNTRYNAME\";s:6:\"France\";s:30:\"PAYMENTREQUEST_0_ADDRESSSTATUS\";s:9:\"Confirmed\";s:28:\"SUCCESSPAGEREDIRECTREQUESTED\";s:5:\"false\";s:23:\"INSURANCEOPTIONSELECTED\";s:5:\"false\";s:23:\"SHIPPINGOPTIONISDEFAULT\";s:5:\"false\";s:27:\"PAYMENTINFO_0_TRANSACTIONID\";s:17:\"8TM7899197198772B\";s:29:\"PAYMENTINFO_0_TRANSACTIONTYPE\";s:4:\"cart\";s:25:\"PAYMENTINFO_0_PAYMENTTYPE\";s:7:\"instant\";s:23:\"PAYMENTINFO_0_ORDERTIME\";s:20:\"2017-01-19T15:15:27Z\";s:17:\"PAYMENTINFO_0_AMT\";s:6:\"107.00\";s:20:\"PAYMENTINFO_0_FEEAMT\";s:4:\"3.89\";s:20:\"PAYMENTINFO_0_TAXAMT\";s:4:\"0.00\";s:26:\"PAYMENTINFO_0_CURRENCYCODE\";s:3:\"EUR\";s:27:\"PAYMENTINFO_0_PAYMENTSTATUS\";s:9:\"Completed\";s:27:\"PAYMENTINFO_0_PENDINGREASON\";s:4:\"None\";s:24:\"PAYMENTINFO_0_REASONCODE\";s:4:\"None\";s:35:\"PAYMENTINFO_0_PROTECTIONELIGIBILITY\";s:8:\"Eligible\";s:39:\"PAYMENTINFO_0_PROTECTIONELIGIBILITYTYPE\";s:51:\"ItemNotReceivedEligible,UnauthorizedPaymentEligible\";s:23:\"PAYMENTINFO_0_ERRORCODE\";s:1:\"0\";s:17:\"PAYMENTINFO_0_ACK\";s:7:\"Success\";s:13:\"TRANSACTIONID\";s:17:\"8TM7899197198772B\";s:30:\"PAYMENTREQUEST_0_TRANSACTIONID\";s:17:\"8TM7899197198772B\";s:34:\"PAYMENTREQUESTINFO_0_TRANSACTIONID\";s:17:\"8TM7899197198772B\";s:32:\"PAYMENTREQUEST_0_TRANSACTIONTYPE\";s:4:\"cart\";s:28:\"PAYMENTREQUEST_0_PAYMENTTYPE\";s:7:\"instant\";s:26:\"PAYMENTREQUEST_0_ORDERTIME\";s:20:\"2017-01-19T15:15:27Z\";s:23:\"PAYMENTREQUEST_0_FEEAMT\";s:4:\"3.89\";s:30:\"PAYMENTREQUEST_0_PAYMENTSTATUS\";s:9:\"Completed\";s:30:\"PAYMENTREQUEST_0_PENDINGREASON\";s:4:\"None\";s:27:\"PAYMENTREQUEST_0_REASONCODE\";s:4:\"None\";}}',NULL),(45,'update','2017-01-19 16:15:28','4','Sylius\\Component\\Core\\Model\\Payment',6,'a:1:{s:5:\"state\";s:9:\"completed\";}',NULL),(46,'create','2017-01-19 16:26:56','5','Sylius\\Component\\Core\\Model\\Order',1,'a:1:{s:12:\"currencyCode\";s:3:\"EUR\";}',NULL),(47,'create','2017-01-19 16:26:56','5','Sylius\\Component\\Core\\Model\\Payment',1,'a:4:{s:12:\"currencyCode\";s:3:\"EUR\";s:6:\"amount\";i:0;s:5:\"state\";s:3:\"new\";s:7:\"details\";a:0:{}}',NULL),(48,'create','2017-01-19 16:26:56','5','Sylius\\Component\\Core\\Model\\OrderItem',1,'a:2:{s:8:\"quantity\";i:1;s:9:\"unitPrice\";i:10000;}',NULL),(49,'create','2017-01-19 16:27:57','9','Sylius\\Component\\Core\\Model\\Address',1,'a:10:{s:9:\"firstName\";s:4:\"Kake\";s:8:\"lastName\";s:4:\"keka\";s:11:\"phoneNumber\";N;s:6:\"street\";s:18:\"23 rue frankestein\";s:7:\"company\";N;s:4:\"city\";s:4:\"Lyon\";s:8:\"postcode\";s:5:\"69008\";s:11:\"countryCode\";s:2:\"FR\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}',NULL),(50,'create','2017-01-19 16:27:57','10','Sylius\\Component\\Core\\Model\\Address',1,'a:10:{s:9:\"firstName\";s:4:\"Kake\";s:8:\"lastName\";s:4:\"keka\";s:11:\"phoneNumber\";N;s:6:\"street\";s:18:\"23 rue frankestein\";s:7:\"company\";N;s:4:\"city\";s:4:\"Lyon\";s:8:\"postcode\";s:5:\"69008\";s:11:\"countryCode\";s:2:\"FR\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}',NULL),(51,'update','2017-01-19 16:27:57','5','Sylius\\Component\\Core\\Model\\Payment',2,'a:1:{s:6:\"amount\";i:10700;}',NULL),(52,'update','2017-01-19 16:28:09','5','Sylius\\Component\\Core\\Model\\Payment',3,'a:1:{s:7:\"details\";a:2:{s:4:\"paid\";b:0;s:6:\"status\";s:7:\"pending\";}}',NULL),(53,'create','2017-01-19 16:35:22','6','Sylius\\Component\\Core\\Model\\Order',1,'a:1:{s:12:\"currencyCode\";s:3:\"EUR\";}',NULL),(54,'create','2017-01-19 16:35:22','6','Sylius\\Component\\Core\\Model\\Payment',1,'a:4:{s:12:\"currencyCode\";s:3:\"EUR\";s:6:\"amount\";i:0;s:5:\"state\";s:3:\"new\";s:7:\"details\";a:0:{}}',NULL),(55,'create','2017-01-19 16:35:22','6','Sylius\\Component\\Core\\Model\\OrderItem',1,'a:2:{s:8:\"quantity\";i:1;s:9:\"unitPrice\";i:100;}',NULL),(56,'create','2017-01-19 16:36:18','11','Sylius\\Component\\Core\\Model\\Address',1,'a:10:{s:9:\"firstName\";s:4:\"test\";s:8:\"lastName\";s:4:\"mail\";s:11:\"phoneNumber\";N;s:6:\"street\";s:13:\"17 winterfell\";s:7:\"company\";N;s:4:\"city\";s:6:\"Munich\";s:8:\"postcode\";s:6:\"777777\";s:11:\"countryCode\";s:2:\"DE\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}',NULL),(57,'create','2017-01-19 16:36:18','12','Sylius\\Component\\Core\\Model\\Address',1,'a:10:{s:9:\"firstName\";s:4:\"test\";s:8:\"lastName\";s:4:\"mail\";s:11:\"phoneNumber\";N;s:6:\"street\";s:13:\"17 winterfell\";s:7:\"company\";N;s:4:\"city\";s:6:\"Munich\";s:8:\"postcode\";s:6:\"777777\";s:11:\"countryCode\";s:2:\"DE\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}',NULL),(58,'update','2017-01-19 16:36:18','6','Sylius\\Component\\Core\\Model\\Payment',2,'a:1:{s:6:\"amount\";i:800;}',NULL),(59,'update','2017-01-19 16:36:45','6','Sylius\\Component\\Core\\Model\\Payment',3,'a:1:{s:6:\"amount\";i:1500;}',NULL),(60,'update','2017-01-19 16:36:51','6','Sylius\\Component\\Core\\Model\\Payment',4,'a:1:{s:7:\"details\";a:2:{s:4:\"paid\";b:0;s:6:\"status\";s:7:\"pending\";}}',NULL),(61,'create','2017-01-19 17:51:16','7','Sylius\\Component\\Core\\Model\\Order',1,'a:1:{s:12:\"currencyCode\";s:3:\"EUR\";}',NULL),(62,'create','2017-01-19 17:51:16','7','Sylius\\Component\\Core\\Model\\Payment',1,'a:4:{s:12:\"currencyCode\";s:3:\"EUR\";s:6:\"amount\";i:0;s:5:\"state\";s:3:\"new\";s:7:\"details\";a:0:{}}',NULL),(63,'create','2017-01-19 17:51:16','7','Sylius\\Component\\Core\\Model\\OrderItem',1,'a:2:{s:8:\"quantity\";i:1;s:9:\"unitPrice\";i:5000;}',NULL),(64,'update','2017-01-19 17:51:38','7','Sylius\\Component\\Core\\Model\\OrderItem',2,'a:1:{s:8:\"quantity\";i:2;}',NULL),(65,'update','2017-01-19 17:51:38','7','Sylius\\Component\\Core\\Model\\Payment',2,'a:1:{s:6:\"amount\";i:10700;}',NULL),(66,'update','2017-01-19 17:51:55','7','Sylius\\Component\\Core\\Model\\OrderItem',3,'a:1:{s:8:\"quantity\";i:3;}',NULL),(67,'update','2017-01-19 17:51:55','7','Sylius\\Component\\Core\\Model\\Payment',3,'a:1:{s:6:\"amount\";i:15700;}',NULL),(68,'update','2017-01-19 17:52:11','7','Sylius\\Component\\Core\\Model\\OrderItem',4,'a:1:{s:8:\"quantity\";i:4;}',NULL),(69,'update','2017-01-19 17:52:11','7','Sylius\\Component\\Core\\Model\\Payment',4,'a:1:{s:6:\"amount\";i:20700;}',NULL),(70,'update','2017-01-19 17:54:44','7','Sylius\\Component\\Core\\Model\\Payment',5,'a:1:{s:6:\"amount\";i:700;}',NULL),(71,'remove','2017-01-19 17:54:44','7','Sylius\\Component\\Core\\Model\\OrderItem',5,'N;',NULL);
/*!40000 ALTER TABLE `ext_log_entries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpcr_binarydata`
--

DROP TABLE IF EXISTS `phpcr_binarydata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpcr_binarydata` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `node_id` int(11) NOT NULL,
  `property_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `workspace_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `idx` int(11) NOT NULL DEFAULT '0',
  `data` longblob NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_37E65615460D9FD7413BC13C1AC10DC4E7087E10` (`node_id`,`property_name`,`workspace_name`,`idx`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpcr_binarydata`
--

LOCK TABLES `phpcr_binarydata` WRITE;
/*!40000 ALTER TABLE `phpcr_binarydata` DISABLE KEYS */;
/*!40000 ALTER TABLE `phpcr_binarydata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpcr_internal_index_types`
--

DROP TABLE IF EXISTS `phpcr_internal_index_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpcr_internal_index_types` (
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `node_id` int(11) NOT NULL,
  PRIMARY KEY (`type`,`node_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpcr_internal_index_types`
--

LOCK TABLES `phpcr_internal_index_types` WRITE;
/*!40000 ALTER TABLE `phpcr_internal_index_types` DISABLE KEYS */;
/*!40000 ALTER TABLE `phpcr_internal_index_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpcr_namespaces`
--

DROP TABLE IF EXISTS `phpcr_namespaces`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpcr_namespaces` (
  `prefix` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `uri` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`prefix`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpcr_namespaces`
--

LOCK TABLES `phpcr_namespaces` WRITE;
/*!40000 ALTER TABLE `phpcr_namespaces` DISABLE KEYS */;
INSERT INTO `phpcr_namespaces` VALUES ('phpcr','http://www.doctrine-project.org/projects/phpcr_odm'),('phpcr_locale','http://www.doctrine-project.org/projects/phpcr_odm/phpcr_locale');
/*!40000 ALTER TABLE `phpcr_namespaces` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpcr_nodes`
--

DROP TABLE IF EXISTS `phpcr_nodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpcr_nodes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `path` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `parent` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `local_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `namespace` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `workspace_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `identifier` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `props` longtext COLLATE utf8_unicode_ci NOT NULL,
  `numerical_props` longtext COLLATE utf8_unicode_ci,
  `depth` int(11) NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_A4624AD7B548B0F1AC10DC4` (`path`,`workspace_name`),
  UNIQUE KEY `UNIQ_A4624AD7772E836A1AC10DC4` (`identifier`,`workspace_name`),
  KEY `IDX_A4624AD73D8E604F` (`parent`),
  KEY `IDX_A4624AD78CDE5729` (`type`),
  KEY `IDX_A4624AD7623C14D533E16B56` (`local_name`,`namespace`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpcr_nodes`
--

LOCK TABLES `phpcr_nodes` WRITE;
/*!40000 ALTER TABLE `phpcr_nodes` DISABLE KEYS */;
INSERT INTO `phpcr_nodes` VALUES (1,'/','','','','default','0247bb3b-7f33-4bb2-9501-756738a613e7','nt:unstructured','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property></sv:node>\n',NULL,0,NULL),(2,'/cms','/','cms','','default','8b3e9f16-e1b7-4722-8b50-30cfdb7bbe26','nt:unstructured','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property></sv:node>\n',NULL,1,1),(3,'/cms/pages','/cms','pages','','default','e0ac22c8-1ca3-47b4-9be1-c52e032dba0f','nt:unstructured','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property></sv:node>\n',NULL,2,1),(4,'/cms/routes','/cms','routes','','default','1161a8fb-8a7b-470a-9424-8034498584f6','nt:unstructured','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property></sv:node>\n',NULL,2,2),(5,'/cms/menu','/cms','menu','','default','d7f7cba8-5378-4566-baa2-34eef5feb53f','nt:unstructured','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property></sv:node>\n',NULL,2,3);
/*!40000 ALTER TABLE `phpcr_nodes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpcr_nodes_references`
--

DROP TABLE IF EXISTS `phpcr_nodes_references`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpcr_nodes_references` (
  `source_id` int(11) NOT NULL,
  `source_property_name` varchar(220) COLLATE utf8_unicode_ci NOT NULL,
  `target_id` int(11) NOT NULL,
  PRIMARY KEY (`source_id`,`source_property_name`,`target_id`),
  KEY `IDX_F3BF7E1158E0B66` (`target_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpcr_nodes_references`
--

LOCK TABLES `phpcr_nodes_references` WRITE;
/*!40000 ALTER TABLE `phpcr_nodes_references` DISABLE KEYS */;
/*!40000 ALTER TABLE `phpcr_nodes_references` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpcr_nodes_weakreferences`
--

DROP TABLE IF EXISTS `phpcr_nodes_weakreferences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpcr_nodes_weakreferences` (
  `source_id` int(11) NOT NULL,
  `source_property_name` varchar(220) COLLATE utf8_unicode_ci NOT NULL,
  `target_id` int(11) NOT NULL,
  PRIMARY KEY (`source_id`,`source_property_name`,`target_id`),
  KEY `IDX_F0E4F6FA158E0B66` (`target_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpcr_nodes_weakreferences`
--

LOCK TABLES `phpcr_nodes_weakreferences` WRITE;
/*!40000 ALTER TABLE `phpcr_nodes_weakreferences` DISABLE KEYS */;
/*!40000 ALTER TABLE `phpcr_nodes_weakreferences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpcr_type_childs`
--

DROP TABLE IF EXISTS `phpcr_type_childs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpcr_type_childs` (
  `node_type_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `protected` tinyint(1) NOT NULL,
  `auto_created` tinyint(1) NOT NULL,
  `mandatory` tinyint(1) NOT NULL,
  `on_parent_version` int(11) NOT NULL,
  `primary_types` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `default_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpcr_type_childs`
--

LOCK TABLES `phpcr_type_childs` WRITE;
/*!40000 ALTER TABLE `phpcr_type_childs` DISABLE KEYS */;
/*!40000 ALTER TABLE `phpcr_type_childs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpcr_type_nodes`
--

DROP TABLE IF EXISTS `phpcr_type_nodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpcr_type_nodes` (
  `node_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `supertypes` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `is_abstract` tinyint(1) NOT NULL,
  `is_mixin` tinyint(1) NOT NULL,
  `queryable` tinyint(1) NOT NULL,
  `orderable_child_nodes` tinyint(1) NOT NULL,
  `primary_item` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`node_type_id`),
  UNIQUE KEY `UNIQ_34B0A8095E237E06` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpcr_type_nodes`
--

LOCK TABLES `phpcr_type_nodes` WRITE;
/*!40000 ALTER TABLE `phpcr_type_nodes` DISABLE KEYS */;
INSERT INTO `phpcr_type_nodes` VALUES (1,'phpcr:managed','nt:base',0,1,1,0,NULL);
/*!40000 ALTER TABLE `phpcr_type_nodes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpcr_type_props`
--

DROP TABLE IF EXISTS `phpcr_type_props`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpcr_type_props` (
  `node_type_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `protected` tinyint(1) NOT NULL,
  `auto_created` tinyint(1) NOT NULL,
  `mandatory` tinyint(1) NOT NULL,
  `on_parent_version` int(11) NOT NULL,
  `multiple` tinyint(1) NOT NULL,
  `fulltext_searchable` tinyint(1) NOT NULL,
  `query_orderable` tinyint(1) NOT NULL,
  `required_type` int(11) NOT NULL,
  `query_operators` int(11) NOT NULL,
  `default_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`node_type_id`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpcr_type_props`
--

LOCK TABLES `phpcr_type_props` WRITE;
/*!40000 ALTER TABLE `phpcr_type_props` DISABLE KEYS */;
INSERT INTO `phpcr_type_props` VALUES (1,'phpcr:class',0,0,0,1,0,1,1,1,0,NULL),(1,'phpcr:classparents',0,0,0,1,1,1,1,1,0,NULL);
/*!40000 ALTER TABLE `phpcr_type_props` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpcr_workspaces`
--

DROP TABLE IF EXISTS `phpcr_workspaces`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpcr_workspaces` (
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpcr_workspaces`
--

LOCK TABLES `phpcr_workspaces` WRITE;
/*!40000 ALTER TABLE `phpcr_workspaces` DISABLE KEYS */;
INSERT INTO `phpcr_workspaces` VALUES ('default');
/*!40000 ALTER TABLE `phpcr_workspaces` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_address`
--

DROP TABLE IF EXISTS `sylius_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_address` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `street` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `company` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `postcode` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `country_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `province_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `province_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_B97FF0589395C3F3` (`customer_id`),
  CONSTRAINT `FK_B97FF0589395C3F3` FOREIGN KEY (`customer_id`) REFERENCES `sylius_customer` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_address`
--

LOCK TABLES `sylius_address` WRITE;
/*!40000 ALTER TABLE `sylius_address` DISABLE KEYS */;
INSERT INTO `sylius_address` VALUES (1,NULL,'John','connor',NULL,'18 rue phillipe fabia',NULL,'Lyon','69008','2017-01-19 15:10:48','2017-01-19 15:10:49','FR',NULL,NULL),(2,NULL,'John','connor',NULL,'18 rue phillipe fabia',NULL,'Lyon','69008','2017-01-19 15:10:48','2017-01-19 15:10:49','FR',NULL,NULL),(3,NULL,'John','Wayne',NULL,'16 avenue gerstom',NULL,'Berlin','007000','2017-01-19 15:22:15','2017-01-19 15:22:16','DE',NULL,NULL),(4,NULL,'John','Wayne',NULL,'16 avenue gerstom',NULL,'Berlin','007000','2017-01-19 15:22:15','2017-01-19 15:22:16','DE',NULL,NULL),(5,NULL,'guts','berserk',NULL,'18 avenue de falconia',NULL,'Alger','999999','2017-01-19 15:34:06','2017-01-19 15:34:06','DZ',NULL,NULL),(6,NULL,'guts','berserk',NULL,'18 avenue de falconia',NULL,'Alger','999999','2017-01-19 15:34:06','2017-01-19 15:34:06','DZ',NULL,NULL),(7,NULL,'jon','snow',NULL,'12 rue watson',NULL,'Lyon','69008','2017-01-19 16:13:09','2017-01-19 16:13:09','FR',NULL,NULL),(8,NULL,'jon','snow',NULL,'12 rue watson',NULL,'Lyon','69008','2017-01-19 16:13:09','2017-01-19 16:13:09','FR',NULL,NULL),(9,NULL,'Kake','keka',NULL,'23 rue frankestein',NULL,'Lyon','69008','2017-01-19 16:27:56','2017-01-19 16:27:57','FR',NULL,NULL),(10,NULL,'Kake','keka',NULL,'23 rue frankestein',NULL,'Lyon','69008','2017-01-19 16:27:56','2017-01-19 16:27:57','FR',NULL,NULL),(11,NULL,'test','mail',NULL,'17 winterfell',NULL,'Munich','777777','2017-01-19 16:36:18','2017-01-19 16:36:18','DE',NULL,NULL),(12,NULL,'test','mail',NULL,'17 winterfell',NULL,'Munich','777777','2017-01-19 16:36:18','2017-01-19 16:36:18','DE',NULL,NULL);
/*!40000 ALTER TABLE `sylius_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_adjustment`
--

DROP TABLE IF EXISTS `sylius_adjustment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_adjustment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) DEFAULT NULL,
  `order_item_id` int(11) DEFAULT NULL,
  `order_item_unit_id` int(11) DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `amount` int(11) NOT NULL,
  `is_neutral` tinyint(1) NOT NULL,
  `is_locked` tinyint(1) NOT NULL,
  `origin_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_ACA6E0F28D9F6D38` (`order_id`),
  KEY `IDX_ACA6E0F2E415FB15` (`order_item_id`),
  KEY `IDX_ACA6E0F2F720C233` (`order_item_unit_id`),
  CONSTRAINT `FK_ACA6E0F28D9F6D38` FOREIGN KEY (`order_id`) REFERENCES `sylius_order` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_ACA6E0F2E415FB15` FOREIGN KEY (`order_item_id`) REFERENCES `sylius_order_item` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_ACA6E0F2F720C233` FOREIGN KEY (`order_item_unit_id`) REFERENCES `sylius_order_item_unit` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_adjustment`
--

LOCK TABLES `sylius_adjustment` WRITE;
/*!40000 ALTER TABLE `sylius_adjustment` DISABLE KEYS */;
INSERT INTO `sylius_adjustment` VALUES (4,1,NULL,NULL,'shipping','RDM\'Editions',700,0,0,NULL,'2017-01-19 15:10:58','2017-01-19 15:10:58'),(8,2,NULL,NULL,'shipping','RDM\'Editions Europe',1400,0,0,NULL,'2017-01-19 15:22:24','2017-01-19 15:22:24'),(15,3,NULL,NULL,'shipping','RDM\'Editions International',2500,0,0,NULL,'2017-01-19 15:34:14','2017-01-19 15:34:14'),(16,NULL,NULL,3,'tax','Livre (5.5%)',5,1,0,NULL,'2017-01-19 15:34:14','2017-01-19 15:34:14'),(20,4,NULL,NULL,'shipping','RDM\'Editions',700,0,0,NULL,'2017-01-19 16:13:16','2017-01-19 16:13:16'),(24,5,NULL,NULL,'shipping','RDM\'Editions',700,0,0,NULL,'2017-01-19 16:28:03','2017-01-19 16:28:03'),(31,6,NULL,NULL,'shipping','RDM\'Editions Europe',1400,0,0,NULL,'2017-01-19 16:36:45','2017-01-19 16:36:45'),(32,NULL,NULL,6,'tax','Livre (5.5%)',5,1,0,NULL,'2017-01-19 16:36:45','2017-01-19 16:36:45');
/*!40000 ALTER TABLE `sylius_adjustment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_admin_user`
--

DROP TABLE IF EXISTS `sylius_admin_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_admin_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `username_canonical` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL,
  `salt` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_requested_at` datetime DEFAULT NULL,
  `email_verification_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `verified_at` datetime DEFAULT NULL,
  `locked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  `credentials_expire_at` datetime DEFAULT NULL,
  `roles` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_canonical` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locale_code` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_admin_user`
--

LOCK TABLES `sylius_admin_user` WRITE;
/*!40000 ALTER TABLE `sylius_admin_user` DISABLE KEYS */;
INSERT INTO `sylius_admin_user` VALUES (1,NULL,NULL,1,'7aif26idbywwog88www4g4c0w4c4w08','0Wray2fr15CL1WCURkv8qmvPYyL75M/Go92zxEITcGVgSvG6MQjheh6kPCeasgcu/rMLAOJwLsnBUoZkj6ujAQ==','2017-01-19 16:16:26',NULL,NULL,NULL,NULL,0,NULL,NULL,'a:1:{i:0;s:26:\"ROLE_ADMINISTRATION_ACCESS\";}','adam.benyahia92@gmail.com','adam.benyahia92@gmail.com','2017-01-19 14:29:25','2017-01-19 16:16:26',NULL,NULL,'fr_FR');
/*!40000 ALTER TABLE `sylius_admin_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_api_access_token`
--

DROP TABLE IF EXISTS `sylius_api_access_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_api_access_token` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `client_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `expires_at` int(11) DEFAULT NULL,
  `scope` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_7D83AA7F5F37A13B` (`token`),
  KEY `IDX_7D83AA7F19EB6921` (`client_id`),
  KEY `IDX_7D83AA7FA76ED395` (`user_id`),
  CONSTRAINT `FK_7D83AA7F19EB6921` FOREIGN KEY (`client_id`) REFERENCES `sylius_api_client` (`id`),
  CONSTRAINT `FK_7D83AA7FA76ED395` FOREIGN KEY (`user_id`) REFERENCES `sylius_admin_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_api_access_token`
--

LOCK TABLES `sylius_api_access_token` WRITE;
/*!40000 ALTER TABLE `sylius_api_access_token` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_api_access_token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_api_auth_code`
--

DROP TABLE IF EXISTS `sylius_api_auth_code`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_api_auth_code` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `client_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `redirect_uri` longtext COLLATE utf8_unicode_ci NOT NULL,
  `expires_at` int(11) DEFAULT NULL,
  `scope` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_C84041795F37A13B` (`token`),
  KEY `IDX_C840417919EB6921` (`client_id`),
  KEY `IDX_C8404179A76ED395` (`user_id`),
  CONSTRAINT `FK_C840417919EB6921` FOREIGN KEY (`client_id`) REFERENCES `sylius_api_client` (`id`),
  CONSTRAINT `FK_C8404179A76ED395` FOREIGN KEY (`user_id`) REFERENCES `sylius_admin_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_api_auth_code`
--

LOCK TABLES `sylius_api_auth_code` WRITE;
/*!40000 ALTER TABLE `sylius_api_auth_code` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_api_auth_code` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_api_client`
--

DROP TABLE IF EXISTS `sylius_api_client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_api_client` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `random_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `redirect_uris` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  `secret` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `allowed_grant_types` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_api_client`
--

LOCK TABLES `sylius_api_client` WRITE;
/*!40000 ALTER TABLE `sylius_api_client` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_api_client` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_api_refresh_token`
--

DROP TABLE IF EXISTS `sylius_api_refresh_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_api_refresh_token` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `client_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `expires_at` int(11) DEFAULT NULL,
  `scope` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_445785255F37A13B` (`token`),
  KEY `IDX_4457852519EB6921` (`client_id`),
  KEY `IDX_44578525A76ED395` (`user_id`),
  CONSTRAINT `FK_4457852519EB6921` FOREIGN KEY (`client_id`) REFERENCES `sylius_api_client` (`id`),
  CONSTRAINT `FK_44578525A76ED395` FOREIGN KEY (`user_id`) REFERENCES `sylius_admin_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_api_refresh_token`
--

LOCK TABLES `sylius_api_refresh_token` WRITE;
/*!40000 ALTER TABLE `sylius_api_refresh_token` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_api_refresh_token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_association_type`
--

DROP TABLE IF EXISTS `sylius_association_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_association_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_6237029277153098` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_association_type`
--

LOCK TABLES `sylius_association_type` WRITE;
/*!40000 ALTER TABLE `sylius_association_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_association_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_channel`
--

DROP TABLE IF EXISTS `sylius_channel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_channel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `default_locale_id` int(11) NOT NULL,
  `default_currency_id` int(11) NOT NULL,
  `default_tax_zone_id` int(11) DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `color` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `enabled` tinyint(1) NOT NULL,
  `hostname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `theme_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tax_calculation_strategy` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_16C8119E77153098` (`code`),
  KEY `IDX_16C8119E743BF776` (`default_locale_id`),
  KEY `IDX_16C8119EECD792C0` (`default_currency_id`),
  KEY `IDX_16C8119EA978C17` (`default_tax_zone_id`),
  CONSTRAINT `FK_16C8119E743BF776` FOREIGN KEY (`default_locale_id`) REFERENCES `sylius_locale` (`id`),
  CONSTRAINT `FK_16C8119EA978C17` FOREIGN KEY (`default_tax_zone_id`) REFERENCES `sylius_zone` (`id`) ON DELETE SET NULL,
  CONSTRAINT `FK_16C8119EECD792C0` FOREIGN KEY (`default_currency_id`) REFERENCES `sylius_currency` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_channel`
--

LOCK TABLES `sylius_channel` WRITE;
/*!40000 ALTER TABLE `sylius_channel` DISABLE KEYS */;
INSERT INTO `sylius_channel` VALUES (1,1,1,1,'default','Default',NULL,NULL,1,NULL,'2017-01-19 14:29:25','2017-01-19 14:57:16',NULL,'order_items_based');
/*!40000 ALTER TABLE `sylius_channel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_channel_currencies`
--

DROP TABLE IF EXISTS `sylius_channel_currencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_channel_currencies` (
  `channel_id` int(11) NOT NULL,
  `currency_id` int(11) NOT NULL,
  PRIMARY KEY (`channel_id`,`currency_id`),
  KEY `IDX_AE491F9372F5A1AA` (`channel_id`),
  KEY `IDX_AE491F9338248176` (`currency_id`),
  CONSTRAINT `FK_AE491F9338248176` FOREIGN KEY (`currency_id`) REFERENCES `sylius_currency` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_AE491F9372F5A1AA` FOREIGN KEY (`channel_id`) REFERENCES `sylius_channel` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_channel_currencies`
--

LOCK TABLES `sylius_channel_currencies` WRITE;
/*!40000 ALTER TABLE `sylius_channel_currencies` DISABLE KEYS */;
INSERT INTO `sylius_channel_currencies` VALUES (1,1);
/*!40000 ALTER TABLE `sylius_channel_currencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_channel_locales`
--

DROP TABLE IF EXISTS `sylius_channel_locales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_channel_locales` (
  `channel_id` int(11) NOT NULL,
  `locale_id` int(11) NOT NULL,
  PRIMARY KEY (`channel_id`,`locale_id`),
  KEY `IDX_786B7A8472F5A1AA` (`channel_id`),
  KEY `IDX_786B7A84E559DFD1` (`locale_id`),
  CONSTRAINT `FK_786B7A8472F5A1AA` FOREIGN KEY (`channel_id`) REFERENCES `sylius_channel` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_786B7A84E559DFD1` FOREIGN KEY (`locale_id`) REFERENCES `sylius_locale` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_channel_locales`
--

LOCK TABLES `sylius_channel_locales` WRITE;
/*!40000 ALTER TABLE `sylius_channel_locales` DISABLE KEYS */;
INSERT INTO `sylius_channel_locales` VALUES (1,1);
/*!40000 ALTER TABLE `sylius_channel_locales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_channel_payment_methods`
--

DROP TABLE IF EXISTS `sylius_channel_payment_methods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_channel_payment_methods` (
  `channel_id` int(11) NOT NULL,
  `payment_method_id` int(11) NOT NULL,
  PRIMARY KEY (`channel_id`,`payment_method_id`),
  KEY `IDX_B0C0002B72F5A1AA` (`channel_id`),
  KEY `IDX_B0C0002B5AA1164F` (`payment_method_id`),
  CONSTRAINT `FK_B0C0002B5AA1164F` FOREIGN KEY (`payment_method_id`) REFERENCES `sylius_payment_method` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_B0C0002B72F5A1AA` FOREIGN KEY (`channel_id`) REFERENCES `sylius_channel` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_channel_payment_methods`
--

LOCK TABLES `sylius_channel_payment_methods` WRITE;
/*!40000 ALTER TABLE `sylius_channel_payment_methods` DISABLE KEYS */;
INSERT INTO `sylius_channel_payment_methods` VALUES (1,1),(1,2);
/*!40000 ALTER TABLE `sylius_channel_payment_methods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_channel_shipping_methods`
--

DROP TABLE IF EXISTS `sylius_channel_shipping_methods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_channel_shipping_methods` (
  `channel_id` int(11) NOT NULL,
  `shipping_method_id` int(11) NOT NULL,
  PRIMARY KEY (`channel_id`,`shipping_method_id`),
  KEY `IDX_6858B18E72F5A1AA` (`channel_id`),
  KEY `IDX_6858B18E5F7D6850` (`shipping_method_id`),
  CONSTRAINT `FK_6858B18E5F7D6850` FOREIGN KEY (`shipping_method_id`) REFERENCES `sylius_shipping_method` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_6858B18E72F5A1AA` FOREIGN KEY (`channel_id`) REFERENCES `sylius_channel` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_channel_shipping_methods`
--

LOCK TABLES `sylius_channel_shipping_methods` WRITE;
/*!40000 ALTER TABLE `sylius_channel_shipping_methods` DISABLE KEYS */;
INSERT INTO `sylius_channel_shipping_methods` VALUES (1,1),(1,2),(1,3);
/*!40000 ALTER TABLE `sylius_channel_shipping_methods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_country`
--

DROP TABLE IF EXISTS `sylius_country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_country` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_E74256BF77153098` (`code`),
  KEY `IDX_E74256BF77153098` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_country`
--

LOCK TABLES `sylius_country` WRITE;
/*!40000 ALTER TABLE `sylius_country` DISABLE KEYS */;
INSERT INTO `sylius_country` VALUES (1,'FR',1),(2,'DE',1),(3,'DZ',1);
/*!40000 ALTER TABLE `sylius_country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_credit_card`
--

DROP TABLE IF EXISTS `sylius_credit_card`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_credit_card` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cardholder_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `security_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `expiry_month` int(11) DEFAULT NULL,
  `expiry_year` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_credit_card`
--

LOCK TABLES `sylius_credit_card` WRITE;
/*!40000 ALTER TABLE `sylius_credit_card` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_credit_card` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_currency`
--

DROP TABLE IF EXISTS `sylius_currency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_currency` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `exchange_rate` decimal(10,5) NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_96EDD3D077153098` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_currency`
--

LOCK TABLES `sylius_currency` WRITE;
/*!40000 ALTER TABLE `sylius_currency` DISABLE KEYS */;
INSERT INTO `sylius_currency` VALUES (1,'EUR',1.00000,1,'2017-01-19 14:29:25','2017-01-19 14:29:25');
/*!40000 ALTER TABLE `sylius_currency` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_customer`
--

DROP TABLE IF EXISTS `sylius_customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_customer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_group_id` int(11) DEFAULT NULL,
  `billing_address_id` int(11) DEFAULT NULL,
  `shipping_address_id` int(11) DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email_canonical` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `birthday` datetime DEFAULT NULL,
  `gender` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'u',
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `phone_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `subscribed_to_newsletter` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_7E82D5E6E7927C74` (`email`),
  UNIQUE KEY `UNIQ_7E82D5E6A0D96FBF` (`email_canonical`),
  UNIQUE KEY `UNIQ_7E82D5E679D0C0E4` (`billing_address_id`),
  UNIQUE KEY `UNIQ_7E82D5E64D4CFF2B` (`shipping_address_id`),
  KEY `IDX_7E82D5E6D2919A68` (`customer_group_id`),
  CONSTRAINT `FK_7E82D5E64D4CFF2B` FOREIGN KEY (`shipping_address_id`) REFERENCES `sylius_address` (`id`) ON DELETE SET NULL,
  CONSTRAINT `FK_7E82D5E679D0C0E4` FOREIGN KEY (`billing_address_id`) REFERENCES `sylius_address` (`id`) ON DELETE SET NULL,
  CONSTRAINT `FK_7E82D5E6D2919A68` FOREIGN KEY (`customer_group_id`) REFERENCES `sylius_customer_group` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_customer`
--

LOCK TABLES `sylius_customer` WRITE;
/*!40000 ALTER TABLE `sylius_customer` DISABLE KEYS */;
INSERT INTO `sylius_customer` VALUES (1,NULL,NULL,NULL,'adam.benyahia92@gmail.com','adam.benyahia92@gmail.com',NULL,NULL,NULL,'u','2017-01-19 15:10:49','2017-01-19 15:10:49',NULL,0),(2,NULL,NULL,NULL,'aymen.mechiche@gmail.com','aymen.mechiche@gmail.com',NULL,NULL,NULL,'u','2017-01-19 15:22:15','2017-01-19 15:22:16',NULL,0),(3,NULL,NULL,NULL,'dabinflorent@gmail.com','dabinflorent@gmail.com',NULL,NULL,NULL,'u','2017-01-19 16:13:09','2017-01-19 16:13:09',NULL,0);
/*!40000 ALTER TABLE `sylius_customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_customer_group`
--

DROP TABLE IF EXISTS `sylius_customer_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_customer_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_customer_group`
--

LOCK TABLES `sylius_customer_group` WRITE;
/*!40000 ALTER TABLE `sylius_customer_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_customer_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_email`
--

DROP TABLE IF EXISTS `sylius_email`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_email` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `template` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sender_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sender_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8_unicode_ci,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_732D4E1577153098` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_email`
--

LOCK TABLES `sylius_email` WRITE;
/*!40000 ALTER TABLE `sylius_email` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_email` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_gateway_config`
--

DROP TABLE IF EXISTS `sylius_gateway_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_gateway_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `config` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:json_array)',
  `gateway_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `factory_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_gateway_config`
--

LOCK TABLES `sylius_gateway_config` WRITE;
/*!40000 ALTER TABLE `sylius_gateway_config` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_gateway_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_locale`
--

DROP TABLE IF EXISTS `sylius_locale`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_locale` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_7BA1286477153098` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_locale`
--

LOCK TABLES `sylius_locale` WRITE;
/*!40000 ALTER TABLE `sylius_locale` DISABLE KEYS */;
INSERT INTO `sylius_locale` VALUES (1,'fr_FR',1,'2017-01-19 14:29:25','2017-01-19 14:29:25');
/*!40000 ALTER TABLE `sylius_locale` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_order`
--

DROP TABLE IF EXISTS `sylius_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `shipping_address_id` int(11) DEFAULT NULL,
  `billing_address_id` int(11) DEFAULT NULL,
  `channel_id` int(11) DEFAULT NULL,
  `promotion_coupon_id` int(11) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `notes` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `completed_at` datetime DEFAULT NULL,
  `items_total` int(11) NOT NULL,
  `adjustments_total` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `currency_code` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `exchange_rate` decimal(10,5) NOT NULL,
  `locale_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `checkout_state` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `payment_state` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `shipping_state` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_6196A1F996901F54` (`number`),
  UNIQUE KEY `UNIQ_6196A1F94D4CFF2B` (`shipping_address_id`),
  UNIQUE KEY `UNIQ_6196A1F979D0C0E4` (`billing_address_id`),
  KEY `IDX_6196A1F972F5A1AA` (`channel_id`),
  KEY `IDX_6196A1F917B24436` (`promotion_coupon_id`),
  KEY `IDX_6196A1F99395C3F3` (`customer_id`),
  CONSTRAINT `FK_6196A1F917B24436` FOREIGN KEY (`promotion_coupon_id`) REFERENCES `sylius_promotion_coupon` (`id`),
  CONSTRAINT `FK_6196A1F94D4CFF2B` FOREIGN KEY (`shipping_address_id`) REFERENCES `sylius_address` (`id`),
  CONSTRAINT `FK_6196A1F972F5A1AA` FOREIGN KEY (`channel_id`) REFERENCES `sylius_channel` (`id`),
  CONSTRAINT `FK_6196A1F979D0C0E4` FOREIGN KEY (`billing_address_id`) REFERENCES `sylius_address` (`id`),
  CONSTRAINT `FK_6196A1F99395C3F3` FOREIGN KEY (`customer_id`) REFERENCES `sylius_customer` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_order`
--

LOCK TABLES `sylius_order` WRITE;
/*!40000 ALTER TABLE `sylius_order` DISABLE KEYS */;
INSERT INTO `sylius_order` VALUES (1,1,2,1,NULL,1,'000000001',NULL,'new','2017-01-19 15:11:11',10000,700,10700,'2017-01-19 15:07:28','2017-01-19 15:11:11','EUR',1.00000,'fr_FR','completed','awaiting_payment','ready','5880c8ff2fe2b'),(2,3,4,1,NULL,2,'000000002',NULL,'new','2017-01-19 15:22:53',10000,1400,11400,'2017-01-19 15:20:18','2017-01-19 15:27:08','EUR',1.00000,'fr_FR','completed','paid','ready','5880cbbd53ff3'),(3,5,6,1,NULL,2,'000000003',NULL,'new','2017-01-19 15:34:19',100,2500,2600,'2017-01-19 15:33:02','2017-01-19 15:34:19','EUR',1.00000,'fr_FR','completed','awaiting_payment','ready','5880ce6b4f95e'),(4,7,8,1,NULL,3,'000000004',NULL,'new','2017-01-19 16:13:22',10000,700,10700,'2017-01-19 16:12:19','2017-01-19 16:15:28','EUR',1.00000,'fr_FR','completed','paid','ready','5880d792106f3'),(5,9,10,1,NULL,3,'000000005',NULL,'new','2017-01-19 16:28:08',10000,700,10700,'2017-01-19 16:26:56','2017-01-19 16:28:08','EUR',1.00000,'fr_FR','completed','awaiting_payment','ready','5880db08a1a70'),(6,11,12,1,NULL,3,'000000006',NULL,'new','2017-01-19 16:36:49',100,1400,1500,'2017-01-19 16:35:22','2017-01-19 16:36:49','EUR',1.00000,'fr_FR','completed','awaiting_payment','ready','5880dd1188e02'),(7,NULL,NULL,1,NULL,NULL,NULL,NULL,'cart',NULL,0,0,0,'2017-01-19 17:51:16','2017-01-19 17:54:44','EUR',1.00000,'fr_FR','cart','cart','cart',NULL);
/*!40000 ALTER TABLE `sylius_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_order_item`
--

DROP TABLE IF EXISTS `sylius_order_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_order_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `variant_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `unit_price` int(11) NOT NULL,
  `units_total` int(11) NOT NULL,
  `adjustments_total` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `is_immutable` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_77B587ED8D9F6D38` (`order_id`),
  KEY `IDX_77B587ED3B69A9AF` (`variant_id`),
  CONSTRAINT `FK_77B587ED3B69A9AF` FOREIGN KEY (`variant_id`) REFERENCES `sylius_product_variant` (`id`),
  CONSTRAINT `FK_77B587ED8D9F6D38` FOREIGN KEY (`order_id`) REFERENCES `sylius_order` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_order_item`
--

LOCK TABLES `sylius_order_item` WRITE;
/*!40000 ALTER TABLE `sylius_order_item` DISABLE KEYS */;
INSERT INTO `sylius_order_item` VALUES (1,1,1,1,10000,10000,0,10000,0),(2,2,1,1,10000,10000,0,10000,0),(3,3,3,1,100,100,0,100,0),(4,4,1,1,10000,10000,0,10000,0),(5,5,1,1,10000,10000,0,10000,0),(6,6,3,1,100,100,0,100,0);
/*!40000 ALTER TABLE `sylius_order_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_order_item_unit`
--

DROP TABLE IF EXISTS `sylius_order_item_unit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_order_item_unit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_item_id` int(11) NOT NULL,
  `shipment_id` int(11) DEFAULT NULL,
  `adjustments_total` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_82BF226EE415FB15` (`order_item_id`),
  KEY `IDX_82BF226E7BE036FC` (`shipment_id`),
  CONSTRAINT `FK_82BF226E7BE036FC` FOREIGN KEY (`shipment_id`) REFERENCES `sylius_shipment` (`id`) ON DELETE SET NULL,
  CONSTRAINT `FK_82BF226EE415FB15` FOREIGN KEY (`order_item_id`) REFERENCES `sylius_order_item` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_order_item_unit`
--

LOCK TABLES `sylius_order_item_unit` WRITE;
/*!40000 ALTER TABLE `sylius_order_item_unit` DISABLE KEYS */;
INSERT INTO `sylius_order_item_unit` VALUES (1,1,1,0,'2017-01-19 15:07:28','2017-01-19 15:07:28'),(2,2,2,0,'2017-01-19 15:20:18','2017-01-19 15:20:18'),(3,3,3,0,'2017-01-19 15:33:01','2017-01-19 15:33:02'),(4,4,4,0,'2017-01-19 16:12:19','2017-01-19 16:12:19'),(5,5,5,0,'2017-01-19 16:26:56','2017-01-19 16:26:56'),(6,6,6,0,'2017-01-19 16:35:22','2017-01-19 16:35:22');
/*!40000 ALTER TABLE `sylius_order_item_unit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_order_sequence`
--

DROP TABLE IF EXISTS `sylius_order_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_order_sequence` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idx` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_order_sequence`
--

LOCK TABLES `sylius_order_sequence` WRITE;
/*!40000 ALTER TABLE `sylius_order_sequence` DISABLE KEYS */;
INSERT INTO `sylius_order_sequence` VALUES (1,6);
/*!40000 ALTER TABLE `sylius_order_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_payment`
--

DROP TABLE IF EXISTS `sylius_payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_payment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `method_id` int(11) DEFAULT NULL,
  `credit_card_id` int(11) DEFAULT NULL,
  `order_id` int(11) NOT NULL,
  `currency_code` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `amount` int(11) NOT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `details` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:json_array)',
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_D9191BD419883967` (`method_id`),
  KEY `IDX_D9191BD47048FD0F` (`credit_card_id`),
  KEY `IDX_D9191BD48D9F6D38` (`order_id`),
  CONSTRAINT `FK_D9191BD419883967` FOREIGN KEY (`method_id`) REFERENCES `sylius_payment_method` (`id`) ON DELETE SET NULL,
  CONSTRAINT `FK_D9191BD47048FD0F` FOREIGN KEY (`credit_card_id`) REFERENCES `sylius_credit_card` (`id`) ON DELETE SET NULL,
  CONSTRAINT `FK_D9191BD48D9F6D38` FOREIGN KEY (`order_id`) REFERENCES `sylius_order` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_payment`
--

LOCK TABLES `sylius_payment` WRITE;
/*!40000 ALTER TABLE `sylius_payment` DISABLE KEYS */;
INSERT INTO `sylius_payment` VALUES (1,1,NULL,1,'EUR',10700,'new','{\"paid\":false,\"status\":\"pending\"}','2017-01-19 15:07:28','2017-01-19 15:11:11'),(2,2,NULL,2,'EUR',11400,'completed','{\"PAYMENTREQUEST_0_INVNUM\":\"2-2\",\"PAYMENTREQUEST_0_CURRENCYCODE\":\"EUR\",\"PAYMENTREQUEST_0_AMT\":\"114.00\",\"PAYMENTREQUEST_0_ITEMAMT\":\"114.00\",\"L_PAYMENTREQUEST_0_NAME0\":\"La lettre en pdf\",\"L_PAYMENTREQUEST_0_AMT0\":\"100.00\",\"L_PAYMENTREQUEST_0_QTY0\":\"1\",\"L_PAYMENTREQUEST_0_NAME1\":\"Shipping Total\",\"L_PAYMENTREQUEST_0_AMT1\":\"14.00\",\"L_PAYMENTREQUEST_0_QTY1\":\"1\",\"PAYMENTREQUEST_0_PAYMENTACTION\":\"Sale\",\"AUTHORIZE_TOKEN_USERACTION\":\"commit\",\"RETURNURL\":\"http:\\/\\/localhost:8000\\/payment\\/capture\\/kn1Y7ai61p6uKvXe3nNhmQLRmg1p6ijimSOg9vU59FI\",\"CANCELURL\":\"http:\\/\\/localhost:8000\\/payment\\/capture\\/kn1Y7ai61p6uKvXe3nNhmQLRmg1p6ijimSOg9vU59FI?cancelled=1\",\"PAYMENTREQUEST_0_NOTIFYURL\":\"http:\\/\\/localhost:8000\\/payment\\/notify\\/3UGI7yTtzV03MMv2y8BRi3VvtNTYxooIp6cSqPr2kDE\",\"TOKEN\":\"EC-0BB65312EN560691R\",\"TIMESTAMP\":\"2017-01-19T14:27:07Z\",\"CORRELATIONID\":\"952671e74a602\",\"ACK\":\"Success\",\"VERSION\":\"65.1\",\"BUILD\":\"28806785\",\"BILLINGAGREEMENTACCEPTEDSTATUS\":\"0\",\"CHECKOUTSTATUS\":\"PaymentActionCompleted\",\"CURRENCYCODE\":\"EUR\",\"AMT\":\"114.00\",\"ITEMAMT\":\"114.00\",\"SHIPPINGAMT\":\"0.00\",\"HANDLINGAMT\":\"0.00\",\"TAXAMT\":\"0.00\",\"INVNUM\":\"2-2\",\"NOTIFYURL\":\"http:\\/\\/localhost:8000\\/payment\\/notify\\/3UGI7yTtzV03MMv2y8BRi3VvtNTYxooIp6cSqPr2kDE\",\"INSURANCEAMT\":\"0.00\",\"SHIPDISCAMT\":\"0.00\",\"L_NAME0\":\"La lettre en pdf\",\"L_NAME1\":\"Shipping Total\",\"L_QTY0\":\"1\",\"L_QTY1\":\"1\",\"L_TAXAMT0\":\"0.00\",\"L_TAXAMT1\":\"0.00\",\"L_AMT0\":\"100.00\",\"L_AMT1\":\"14.00\",\"L_ITEMWEIGHTVALUE0\":\"   0.00000\",\"L_ITEMWEIGHTVALUE1\":\"   0.00000\",\"L_ITEMLENGTHVALUE0\":\"   0.00000\",\"L_ITEMLENGTHVALUE1\":\"   0.00000\",\"L_ITEMWIDTHVALUE0\":\"   0.00000\",\"L_ITEMWIDTHVALUE1\":\"   0.00000\",\"L_ITEMHEIGHTVALUE0\":\"   0.00000\",\"L_ITEMHEIGHTVALUE1\":\"   0.00000\",\"PAYMENTREQUEST_0_SHIPPINGAMT\":\"0.00\",\"PAYMENTREQUEST_0_HANDLINGAMT\":\"0.00\",\"PAYMENTREQUEST_0_TAXAMT\":\"0.00\",\"PAYMENTREQUEST_0_INSURANCEAMT\":\"0.00\",\"PAYMENTREQUEST_0_SHIPDISCAMT\":\"0.00\",\"PAYMENTREQUEST_0_INSURANCEOPTIONOFFERED\":\"false\",\"L_PAYMENTREQUEST_0_TAXAMT0\":\"0.00\",\"L_PAYMENTREQUEST_0_TAXAMT1\":\"0.00\",\"L_PAYMENTREQUEST_0_ITEMWEIGHTVALUE0\":\"   0.00000\",\"L_PAYMENTREQUEST_0_ITEMWEIGHTVALUE1\":\"   0.00000\",\"L_PAYMENTREQUEST_0_ITEMLENGTHVALUE0\":\"   0.00000\",\"L_PAYMENTREQUEST_0_ITEMLENGTHVALUE1\":\"   0.00000\",\"L_PAYMENTREQUEST_0_ITEMWIDTHVALUE0\":\"   0.00000\",\"L_PAYMENTREQUEST_0_ITEMWIDTHVALUE1\":\"   0.00000\",\"L_PAYMENTREQUEST_0_ITEMHEIGHTVALUE0\":\"   0.00000\",\"L_PAYMENTREQUEST_0_ITEMHEIGHTVALUE1\":\"   0.00000\",\"PAYMENTREQUESTINFO_0_ERRORCODE\":\"0\",\"EMAIL\":\"remi.reibel-buyer@rdm-editions.com\",\"PAYERID\":\"P5LXY98ZZ9RLE\",\"PAYERSTATUS\":\"verified\",\"FIRSTNAME\":\"test\",\"LASTNAME\":\"buyer\",\"COUNTRYCODE\":\"FR\",\"SHIPTONAME\":\"test buyer\",\"SHIPTOSTREET\":\"Av. de la Pelouse, 87648672 Mayet\",\"SHIPTOCITY\":\"Paris\",\"SHIPTOSTATE\":\"Alsace\",\"SHIPTOZIP\":\"75002\",\"SHIPTOCOUNTRYCODE\":\"FR\",\"SHIPTOCOUNTRYNAME\":\"France\",\"ADDRESSSTATUS\":\"Confirmed\",\"INSURANCEOPTIONOFFERED\":\"false\",\"PAYMENTREQUEST_0_SELLERPAYPALACCOUNTID\":\"remi.reibel-facilitator@rdm-editions.com\",\"PAYMENTREQUEST_0_SHIPTONAME\":\"test buyer\",\"PAYMENTREQUEST_0_SHIPTOSTREET\":\"Av. de la Pelouse, 87648672 Mayet\",\"PAYMENTREQUEST_0_SHIPTOCITY\":\"Paris\",\"PAYMENTREQUEST_0_SHIPTOSTATE\":\"Alsace\",\"PAYMENTREQUEST_0_SHIPTOZIP\":\"75002\",\"PAYMENTREQUEST_0_SHIPTOCOUNTRYCODE\":\"FR\",\"PAYMENTREQUEST_0_SHIPTOCOUNTRYNAME\":\"France\",\"PAYMENTREQUEST_0_ADDRESSSTATUS\":\"Confirmed\",\"SUCCESSPAGEREDIRECTREQUESTED\":\"false\",\"INSURANCEOPTIONSELECTED\":\"false\",\"SHIPPINGOPTIONISDEFAULT\":\"false\",\"PAYMENTINFO_0_TRANSACTIONID\":\"80R10100UF731374T\",\"PAYMENTINFO_0_TRANSACTIONTYPE\":\"cart\",\"PAYMENTINFO_0_PAYMENTTYPE\":\"instant\",\"PAYMENTINFO_0_ORDERTIME\":\"2017-01-19T14:27:06Z\",\"PAYMENTINFO_0_AMT\":\"114.00\",\"PAYMENTINFO_0_FEEAMT\":\"4.13\",\"PAYMENTINFO_0_TAXAMT\":\"0.00\",\"PAYMENTINFO_0_CURRENCYCODE\":\"EUR\",\"PAYMENTINFO_0_PAYMENTSTATUS\":\"Completed\",\"PAYMENTINFO_0_PENDINGREASON\":\"None\",\"PAYMENTINFO_0_REASONCODE\":\"None\",\"PAYMENTINFO_0_PROTECTIONELIGIBILITY\":\"Eligible\",\"PAYMENTINFO_0_PROTECTIONELIGIBILITYTYPE\":\"ItemNotReceivedEligible,UnauthorizedPaymentEligible\",\"PAYMENTINFO_0_ERRORCODE\":\"0\",\"PAYMENTINFO_0_ACK\":\"Success\",\"TRANSACTIONID\":\"80R10100UF731374T\",\"PAYMENTREQUEST_0_TRANSACTIONID\":\"80R10100UF731374T\",\"PAYMENTREQUESTINFO_0_TRANSACTIONID\":\"80R10100UF731374T\",\"PAYMENTREQUEST_0_TRANSACTIONTYPE\":\"cart\",\"PAYMENTREQUEST_0_PAYMENTTYPE\":\"instant\",\"PAYMENTREQUEST_0_ORDERTIME\":\"2017-01-19T14:27:05Z\",\"PAYMENTREQUEST_0_FEEAMT\":\"4.13\",\"PAYMENTREQUEST_0_PAYMENTSTATUS\":\"Completed\",\"PAYMENTREQUEST_0_PENDINGREASON\":\"None\",\"PAYMENTREQUEST_0_REASONCODE\":\"None\"}','2017-01-19 15:20:18','2017-01-19 15:27:08'),(3,1,NULL,3,'EUR',2600,'new','{\"paid\":false,\"status\":\"pending\"}','2017-01-19 15:33:02','2017-01-19 15:34:19'),(4,2,NULL,4,'EUR',10700,'completed','{\"PAYMENTREQUEST_0_INVNUM\":\"4-4\",\"PAYMENTREQUEST_0_CURRENCYCODE\":\"EUR\",\"PAYMENTREQUEST_0_AMT\":\"107.00\",\"PAYMENTREQUEST_0_ITEMAMT\":\"107.00\",\"L_PAYMENTREQUEST_0_NAME0\":\"La lettre en pdf\",\"L_PAYMENTREQUEST_0_AMT0\":\"100.00\",\"L_PAYMENTREQUEST_0_QTY0\":\"1\",\"L_PAYMENTREQUEST_0_NAME1\":\"Shipping Total\",\"L_PAYMENTREQUEST_0_AMT1\":\"7.00\",\"L_PAYMENTREQUEST_0_QTY1\":\"1\",\"PAYMENTREQUEST_0_PAYMENTACTION\":\"Sale\",\"AUTHORIZE_TOKEN_USERACTION\":\"commit\",\"RETURNURL\":\"http:\\/\\/localhost:8000\\/payment\\/capture\\/IOByPf-1SsGQ9OwKslwHsK-Irp_kfYC7G6vHcMAjz5A\",\"CANCELURL\":\"http:\\/\\/localhost:8000\\/payment\\/capture\\/IOByPf-1SsGQ9OwKslwHsK-Irp_kfYC7G6vHcMAjz5A?cancelled=1\",\"PAYMENTREQUEST_0_NOTIFYURL\":\"http:\\/\\/localhost:8000\\/payment\\/notify\\/8TpOG0Hd2jyfE7kd6sJ6VPP4F6LkpHjbfp5jtvaIt68\",\"TOKEN\":\"EC-7LX127127S3868058\",\"TIMESTAMP\":\"2017-01-19T15:15:28Z\",\"CORRELATIONID\":\"509ce23184ab3\",\"ACK\":\"Success\",\"VERSION\":\"65.1\",\"BUILD\":\"28806785\",\"BILLINGAGREEMENTACCEPTEDSTATUS\":\"0\",\"CHECKOUTSTATUS\":\"PaymentActionCompleted\",\"CURRENCYCODE\":\"EUR\",\"AMT\":\"107.00\",\"ITEMAMT\":\"107.00\",\"SHIPPINGAMT\":\"0.00\",\"HANDLINGAMT\":\"0.00\",\"TAXAMT\":\"0.00\",\"INVNUM\":\"4-4\",\"NOTIFYURL\":\"http:\\/\\/localhost:8000\\/payment\\/notify\\/8TpOG0Hd2jyfE7kd6sJ6VPP4F6LkpHjbfp5jtvaIt68\",\"INSURANCEAMT\":\"0.00\",\"SHIPDISCAMT\":\"0.00\",\"L_NAME0\":\"La lettre en pdf\",\"L_NAME1\":\"Shipping Total\",\"L_QTY0\":\"1\",\"L_QTY1\":\"1\",\"L_TAXAMT0\":\"0.00\",\"L_TAXAMT1\":\"0.00\",\"L_AMT0\":\"100.00\",\"L_AMT1\":\"7.00\",\"L_ITEMWEIGHTVALUE0\":\"   0.00000\",\"L_ITEMWEIGHTVALUE1\":\"   0.00000\",\"L_ITEMLENGTHVALUE0\":\"   0.00000\",\"L_ITEMLENGTHVALUE1\":\"   0.00000\",\"L_ITEMWIDTHVALUE0\":\"   0.00000\",\"L_ITEMWIDTHVALUE1\":\"   0.00000\",\"L_ITEMHEIGHTVALUE0\":\"   0.00000\",\"L_ITEMHEIGHTVALUE1\":\"   0.00000\",\"PAYMENTREQUEST_0_SHIPPINGAMT\":\"0.00\",\"PAYMENTREQUEST_0_HANDLINGAMT\":\"0.00\",\"PAYMENTREQUEST_0_TAXAMT\":\"0.00\",\"PAYMENTREQUEST_0_INSURANCEAMT\":\"0.00\",\"PAYMENTREQUEST_0_SHIPDISCAMT\":\"0.00\",\"PAYMENTREQUEST_0_INSURANCEOPTIONOFFERED\":\"false\",\"L_PAYMENTREQUEST_0_TAXAMT0\":\"0.00\",\"L_PAYMENTREQUEST_0_TAXAMT1\":\"0.00\",\"L_PAYMENTREQUEST_0_ITEMWEIGHTVALUE0\":\"   0.00000\",\"L_PAYMENTREQUEST_0_ITEMWEIGHTVALUE1\":\"   0.00000\",\"L_PAYMENTREQUEST_0_ITEMLENGTHVALUE0\":\"   0.00000\",\"L_PAYMENTREQUEST_0_ITEMLENGTHVALUE1\":\"   0.00000\",\"L_PAYMENTREQUEST_0_ITEMWIDTHVALUE0\":\"   0.00000\",\"L_PAYMENTREQUEST_0_ITEMWIDTHVALUE1\":\"   0.00000\",\"L_PAYMENTREQUEST_0_ITEMHEIGHTVALUE0\":\"   0.00000\",\"L_PAYMENTREQUEST_0_ITEMHEIGHTVALUE1\":\"   0.00000\",\"PAYMENTREQUESTINFO_0_ERRORCODE\":\"0\",\"EMAIL\":\"remi.reibel-buyer@rdm-editions.com\",\"PAYERID\":\"P5LXY98ZZ9RLE\",\"PAYERSTATUS\":\"verified\",\"FIRSTNAME\":\"test\",\"LASTNAME\":\"buyer\",\"COUNTRYCODE\":\"FR\",\"SHIPTONAME\":\"test buyer\",\"SHIPTOSTREET\":\"Av. de la Pelouse, 87648672 Mayet\",\"SHIPTOCITY\":\"Paris\",\"SHIPTOSTATE\":\"Alsace\",\"SHIPTOZIP\":\"75002\",\"SHIPTOCOUNTRYCODE\":\"FR\",\"SHIPTOCOUNTRYNAME\":\"France\",\"ADDRESSSTATUS\":\"Confirmed\",\"INSURANCEOPTIONOFFERED\":\"false\",\"PAYMENTREQUEST_0_SELLERPAYPALACCOUNTID\":\"remi.reibel-facilitator@rdm-editions.com\",\"PAYMENTREQUEST_0_SHIPTONAME\":\"test buyer\",\"PAYMENTREQUEST_0_SHIPTOSTREET\":\"Av. de la Pelouse, 87648672 Mayet\",\"PAYMENTREQUEST_0_SHIPTOCITY\":\"Paris\",\"PAYMENTREQUEST_0_SHIPTOSTATE\":\"Alsace\",\"PAYMENTREQUEST_0_SHIPTOZIP\":\"75002\",\"PAYMENTREQUEST_0_SHIPTOCOUNTRYCODE\":\"FR\",\"PAYMENTREQUEST_0_SHIPTOCOUNTRYNAME\":\"France\",\"PAYMENTREQUEST_0_ADDRESSSTATUS\":\"Confirmed\",\"SUCCESSPAGEREDIRECTREQUESTED\":\"false\",\"INSURANCEOPTIONSELECTED\":\"false\",\"SHIPPINGOPTIONISDEFAULT\":\"false\",\"PAYMENTINFO_0_TRANSACTIONID\":\"8TM7899197198772B\",\"PAYMENTINFO_0_TRANSACTIONTYPE\":\"cart\",\"PAYMENTINFO_0_PAYMENTTYPE\":\"instant\",\"PAYMENTINFO_0_ORDERTIME\":\"2017-01-19T15:15:27Z\",\"PAYMENTINFO_0_AMT\":\"107.00\",\"PAYMENTINFO_0_FEEAMT\":\"3.89\",\"PAYMENTINFO_0_TAXAMT\":\"0.00\",\"PAYMENTINFO_0_CURRENCYCODE\":\"EUR\",\"PAYMENTINFO_0_PAYMENTSTATUS\":\"Completed\",\"PAYMENTINFO_0_PENDINGREASON\":\"None\",\"PAYMENTINFO_0_REASONCODE\":\"None\",\"PAYMENTINFO_0_PROTECTIONELIGIBILITY\":\"Eligible\",\"PAYMENTINFO_0_PROTECTIONELIGIBILITYTYPE\":\"ItemNotReceivedEligible,UnauthorizedPaymentEligible\",\"PAYMENTINFO_0_ERRORCODE\":\"0\",\"PAYMENTINFO_0_ACK\":\"Success\",\"TRANSACTIONID\":\"8TM7899197198772B\",\"PAYMENTREQUEST_0_TRANSACTIONID\":\"8TM7899197198772B\",\"PAYMENTREQUESTINFO_0_TRANSACTIONID\":\"8TM7899197198772B\",\"PAYMENTREQUEST_0_TRANSACTIONTYPE\":\"cart\",\"PAYMENTREQUEST_0_PAYMENTTYPE\":\"instant\",\"PAYMENTREQUEST_0_ORDERTIME\":\"2017-01-19T15:15:27Z\",\"PAYMENTREQUEST_0_FEEAMT\":\"3.89\",\"PAYMENTREQUEST_0_PAYMENTSTATUS\":\"Completed\",\"PAYMENTREQUEST_0_PENDINGREASON\":\"None\",\"PAYMENTREQUEST_0_REASONCODE\":\"None\"}','2017-01-19 16:12:19','2017-01-19 16:15:28'),(5,1,NULL,5,'EUR',10700,'new','{\"paid\":false,\"status\":\"pending\"}','2017-01-19 16:26:56','2017-01-19 16:28:09'),(6,1,NULL,6,'EUR',1500,'new','{\"paid\":false,\"status\":\"pending\"}','2017-01-19 16:35:22','2017-01-19 16:36:51'),(7,1,NULL,7,'EUR',700,'new','[]','2017-01-19 17:51:16','2017-01-19 17:54:44');
/*!40000 ALTER TABLE `sylius_payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_payment_method`
--

DROP TABLE IF EXISTS `sylius_payment_method`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_payment_method` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `gateway` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `environment` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_enabled` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_A75B0B0D77153098` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_payment_method`
--

LOCK TABLES `sylius_payment_method` WRITE;
/*!40000 ALTER TABLE `sylius_payment_method` DISABLE KEYS */;
INSERT INTO `sylius_payment_method` VALUES (1,'Chèque','offline',NULL,1,'2017-01-19 14:45:02','2017-01-19 14:45:02'),(2,'Paypal','paypal_express_checkout',NULL,1,'2017-01-19 14:46:01','2017-01-19 14:46:01');
/*!40000 ALTER TABLE `sylius_payment_method` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_payment_method_translation`
--

DROP TABLE IF EXISTS `sylius_payment_method_translation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_payment_method_translation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `translatable_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `instructions` longtext COLLATE utf8_unicode_ci,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sylius_payment_method_translation_uniq_trans` (`translatable_id`,`locale`),
  KEY `IDX_966BE3A12C2AC5D3` (`translatable_id`),
  CONSTRAINT `FK_966BE3A12C2AC5D3` FOREIGN KEY (`translatable_id`) REFERENCES `sylius_payment_method` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_payment_method_translation`
--

LOCK TABLES `sylius_payment_method_translation` WRITE;
/*!40000 ALTER TABLE `sylius_payment_method_translation` DISABLE KEYS */;
INSERT INTO `sylius_payment_method_translation` VALUES (1,1,'Paiement par chèque','Envoyer votre récapitulatif de commande avec un chèque à l\'adresse de RDM','Envoyer votre récapitulatif de commande avec un chèque à l\'adresse de RDM','fr_FR'),(2,2,'Paiement par Paypal ou CB','Payez via votre compte Paypal ou votre CB',NULL,'fr_FR');
/*!40000 ALTER TABLE `sylius_payment_method_translation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_payment_security_token`
--

DROP TABLE IF EXISTS `sylius_payment_security_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_payment_security_token` (
  `hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `details` longtext COLLATE utf8_unicode_ci COMMENT '(DC2Type:object)',
  `after_url` longtext COLLATE utf8_unicode_ci,
  `target_url` longtext COLLATE utf8_unicode_ci NOT NULL,
  `gateway_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`hash`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_payment_security_token`
--

LOCK TABLES `sylius_payment_security_token` WRITE;
/*!40000 ALTER TABLE `sylius_payment_security_token` DISABLE KEYS */;
INSERT INTO `sylius_payment_security_token` VALUES ('3UGI7yTtzV03MMv2y8BRi3VvtNTYxooIp6cSqPr2kDE','C:25:\"Payum\\Core\\Model\\Identity\":61:{a:2:{i:0;i:2;i:1;s:35:\"Sylius\\Component\\Core\\Model\\Payment\";}}',NULL,'http://localhost:8000/payment/notify/3UGI7yTtzV03MMv2y8BRi3VvtNTYxooIp6cSqPr2kDE','paypal_express_checkout'),('8TpOG0Hd2jyfE7kd6sJ6VPP4F6LkpHjbfp5jtvaIt68','C:25:\"Payum\\Core\\Model\\Identity\":61:{a:2:{i:0;i:4;i:1;s:35:\"Sylius\\Component\\Core\\Model\\Payment\";}}',NULL,'http://localhost:8000/payment/notify/8TpOG0Hd2jyfE7kd6sJ6VPP4F6LkpHjbfp5jtvaIt68','paypal_express_checkout');
/*!40000 ALTER TABLE `sylius_payment_security_token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_product`
--

DROP TABLE IF EXISTS `sylius_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `shipping_category_id` int(11) DEFAULT NULL,
  `main_taxon_id` int(11) DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `available_on` datetime DEFAULT NULL,
  `available_until` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL,
  `variant_selection_method` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `average_rating` double NOT NULL DEFAULT '0',
  `author` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `promo` tinyint(1) DEFAULT NULL,
  `preorder` tinyint(1) DEFAULT NULL,
  `new` tinyint(1) DEFAULT NULL,
  `releaseDate` datetime NOT NULL,
  `event` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `facebook` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_677B9B7477153098` (`code`),
  KEY `IDX_677B9B749E2D1A41` (`shipping_category_id`),
  KEY `IDX_677B9B74731E505` (`main_taxon_id`),
  CONSTRAINT `FK_677B9B74731E505` FOREIGN KEY (`main_taxon_id`) REFERENCES `sylius_taxon` (`id`),
  CONSTRAINT `FK_677B9B749E2D1A41` FOREIGN KEY (`shipping_category_id`) REFERENCES `sylius_shipping_category` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_product`
--

LOCK TABLES `sylius_product` WRITE;
/*!40000 ALTER TABLE `sylius_product` DISABLE KEYS */;
INSERT INTO `sylius_product` VALUES (1,NULL,NULL,'TLG','2017-01-19 14:35:35',NULL,'2017-01-19 14:35:35','2017-01-19 15:02:56',1,'choice',0,'Un homme qui veut payer par chèque',0,1,0,'2017-10-10 00:00:00',NULL,NULL),(2,NULL,NULL,'JTF','2017-01-19 15:01:16',NULL,'2017-01-19 15:01:16','2017-01-19 15:01:16',1,'choice',0,'Un homme qui boit beaucoup',0,0,1,'2017-01-17 00:00:00','Une révélation sur le nom de code',NULL),(3,NULL,NULL,'DSS','2017-01-19 15:05:54',NULL,'2017-01-19 15:05:54','2017-01-19 15:05:54',1,'choice',0,'Manuel',1,0,0,'2016-10-10 00:00:00','l\'auteur en dédicace',NULL);
/*!40000 ALTER TABLE `sylius_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_product_association`
--

DROP TABLE IF EXISTS `sylius_product_association`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_product_association` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `association_type_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_48E9CDAB4584665A` (`product_id`),
  KEY `IDX_48E9CDABB1E1C39` (`association_type_id`),
  CONSTRAINT `FK_48E9CDAB4584665A` FOREIGN KEY (`product_id`) REFERENCES `sylius_product` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_48E9CDABB1E1C39` FOREIGN KEY (`association_type_id`) REFERENCES `sylius_association_type` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_product_association`
--

LOCK TABLES `sylius_product_association` WRITE;
/*!40000 ALTER TABLE `sylius_product_association` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_product_association` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_product_association_product`
--

DROP TABLE IF EXISTS `sylius_product_association_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_product_association_product` (
  `association_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  PRIMARY KEY (`association_id`,`product_id`),
  KEY `IDX_A427B983EFB9C8A5` (`association_id`),
  KEY `IDX_A427B9834584665A` (`product_id`),
  CONSTRAINT `FK_A427B9834584665A` FOREIGN KEY (`product_id`) REFERENCES `sylius_product` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_A427B983EFB9C8A5` FOREIGN KEY (`association_id`) REFERENCES `sylius_product_association` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_product_association_product`
--

LOCK TABLES `sylius_product_association_product` WRITE;
/*!40000 ALTER TABLE `sylius_product_association_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_product_association_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_product_attribute`
--

DROP TABLE IF EXISTS `sylius_product_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_product_attribute` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `storage_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `configuration` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_BFAF484A77153098` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_product_attribute`
--

LOCK TABLES `sylius_product_attribute` WRITE;
/*!40000 ALTER TABLE `sylius_product_attribute` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_product_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_product_attribute_translation`
--

DROP TABLE IF EXISTS `sylius_product_attribute_translation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_product_attribute_translation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `translatable_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sylius_product_attribute_translation_uniq_trans` (`translatable_id`,`locale`),
  KEY `IDX_93850EBA2C2AC5D3` (`translatable_id`),
  CONSTRAINT `FK_93850EBA2C2AC5D3` FOREIGN KEY (`translatable_id`) REFERENCES `sylius_product_attribute` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_product_attribute_translation`
--

LOCK TABLES `sylius_product_attribute_translation` WRITE;
/*!40000 ALTER TABLE `sylius_product_attribute_translation` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_product_attribute_translation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_product_attribute_value`
--

DROP TABLE IF EXISTS `sylius_product_attribute_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_product_attribute_value` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `attribute_id` int(11) NOT NULL,
  `text_value` longtext COLLATE utf8_unicode_ci,
  `boolean_value` tinyint(1) DEFAULT NULL,
  `integer_value` int(11) DEFAULT NULL,
  `float_value` double DEFAULT NULL,
  `datetime_value` datetime DEFAULT NULL,
  `date_value` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_8A053E544584665A` (`product_id`),
  KEY `IDX_8A053E54B6E62EFA` (`attribute_id`),
  CONSTRAINT `FK_8A053E544584665A` FOREIGN KEY (`product_id`) REFERENCES `sylius_product` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_8A053E54B6E62EFA` FOREIGN KEY (`attribute_id`) REFERENCES `sylius_product_attribute` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_product_attribute_value`
--

LOCK TABLES `sylius_product_attribute_value` WRITE;
/*!40000 ALTER TABLE `sylius_product_attribute_value` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_product_attribute_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_product_channels`
--

DROP TABLE IF EXISTS `sylius_product_channels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_product_channels` (
  `product_id` int(11) NOT NULL,
  `channel_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`channel_id`),
  KEY `IDX_F9EF269B4584665A` (`product_id`),
  KEY `IDX_F9EF269B72F5A1AA` (`channel_id`),
  CONSTRAINT `FK_F9EF269B4584665A` FOREIGN KEY (`product_id`) REFERENCES `sylius_product` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_F9EF269B72F5A1AA` FOREIGN KEY (`channel_id`) REFERENCES `sylius_channel` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_product_channels`
--

LOCK TABLES `sylius_product_channels` WRITE;
/*!40000 ALTER TABLE `sylius_product_channels` DISABLE KEYS */;
INSERT INTO `sylius_product_channels` VALUES (1,1),(2,1),(3,1);
/*!40000 ALTER TABLE `sylius_product_channels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_product_image`
--

DROP TABLE IF EXISTS `sylius_product_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_product_image` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner_id` int(11) NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `product_image_code_idx` (`owner_id`,`code`),
  KEY `IDX_88C64B2D7E3C61F9` (`owner_id`),
  CONSTRAINT `FK_88C64B2D7E3C61F9` FOREIGN KEY (`owner_id`) REFERENCES `sylius_product` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_product_image`
--

LOCK TABLES `sylius_product_image` WRITE;
/*!40000 ALTER TABLE `sylius_product_image` DISABLE KEYS */;
INSERT INTO `sylius_product_image` VALUES (1,1,'TLG01','45/6f/766e96e5a9ba8225821e88fb8183.jpeg'),(2,3,'VALLS00','8a/75/aa6eefee0787f9bb1e6851fd28ad.jpeg');
/*!40000 ALTER TABLE `sylius_product_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_product_option`
--

DROP TABLE IF EXISTS `sylius_product_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_product_option` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_E4C0EBEF77153098` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_product_option`
--

LOCK TABLES `sylius_product_option` WRITE;
/*!40000 ALTER TABLE `sylius_product_option` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_product_option` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_product_option_translation`
--

DROP TABLE IF EXISTS `sylius_product_option_translation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_product_option_translation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `translatable_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sylius_product_option_translation_uniq_trans` (`translatable_id`,`locale`),
  KEY `IDX_CBA491AD2C2AC5D3` (`translatable_id`),
  CONSTRAINT `FK_CBA491AD2C2AC5D3` FOREIGN KEY (`translatable_id`) REFERENCES `sylius_product_option` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_product_option_translation`
--

LOCK TABLES `sylius_product_option_translation` WRITE;
/*!40000 ALTER TABLE `sylius_product_option_translation` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_product_option_translation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_product_option_value`
--

DROP TABLE IF EXISTS `sylius_product_option_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_product_option_value` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `option_id` int(11) NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_F7FF7D4B77153098` (`code`),
  KEY `IDX_F7FF7D4BA7C41D6F` (`option_id`),
  CONSTRAINT `FK_F7FF7D4BA7C41D6F` FOREIGN KEY (`option_id`) REFERENCES `sylius_product_option` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_product_option_value`
--

LOCK TABLES `sylius_product_option_value` WRITE;
/*!40000 ALTER TABLE `sylius_product_option_value` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_product_option_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_product_option_value_translation`
--

DROP TABLE IF EXISTS `sylius_product_option_value_translation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_product_option_value_translation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `translatable_id` int(11) NOT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sylius_product_option_value_translation_uniq_trans` (`translatable_id`,`locale`),
  KEY `IDX_8D4382DC2C2AC5D3` (`translatable_id`),
  CONSTRAINT `FK_8D4382DC2C2AC5D3` FOREIGN KEY (`translatable_id`) REFERENCES `sylius_product_option_value` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_product_option_value_translation`
--

LOCK TABLES `sylius_product_option_value_translation` WRITE;
/*!40000 ALTER TABLE `sylius_product_option_value_translation` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_product_option_value_translation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_product_options`
--

DROP TABLE IF EXISTS `sylius_product_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_product_options` (
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`option_id`),
  KEY `IDX_2B5FF0094584665A` (`product_id`),
  KEY `IDX_2B5FF009A7C41D6F` (`option_id`),
  CONSTRAINT `FK_2B5FF0094584665A` FOREIGN KEY (`product_id`) REFERENCES `sylius_product` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_2B5FF009A7C41D6F` FOREIGN KEY (`option_id`) REFERENCES `sylius_product_option` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_product_options`
--

LOCK TABLES `sylius_product_options` WRITE;
/*!40000 ALTER TABLE `sylius_product_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_product_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_product_review`
--

DROP TABLE IF EXISTS `sylius_product_review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_product_review` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `author_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `rating` int(11) NOT NULL,
  `comment` longtext COLLATE utf8_unicode_ci,
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_C7056A994584665A` (`product_id`),
  KEY `IDX_C7056A99F675F31B` (`author_id`),
  CONSTRAINT `FK_C7056A994584665A` FOREIGN KEY (`product_id`) REFERENCES `sylius_product` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_C7056A99F675F31B` FOREIGN KEY (`author_id`) REFERENCES `sylius_customer` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_product_review`
--

LOCK TABLES `sylius_product_review` WRITE;
/*!40000 ALTER TABLE `sylius_product_review` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_product_review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_product_taxon`
--

DROP TABLE IF EXISTS `sylius_product_taxon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_product_taxon` (
  `product_id` int(11) NOT NULL,
  `taxon_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`taxon_id`),
  KEY `IDX_169C6CD94584665A` (`product_id`),
  KEY `IDX_169C6CD9DE13F470` (`taxon_id`),
  CONSTRAINT `FK_169C6CD94584665A` FOREIGN KEY (`product_id`) REFERENCES `sylius_product` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_169C6CD9DE13F470` FOREIGN KEY (`taxon_id`) REFERENCES `sylius_taxon` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_product_taxon`
--

LOCK TABLES `sylius_product_taxon` WRITE;
/*!40000 ALTER TABLE `sylius_product_taxon` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_product_taxon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_product_translation`
--

DROP TABLE IF EXISTS `sylius_product_translation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_product_translation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `translatable_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `meta_keywords` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `short_description` longtext COLLATE utf8_unicode_ci,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_105A908989D9B62` (`slug`),
  UNIQUE KEY `sylius_product_translation_uniq_trans` (`translatable_id`,`locale`),
  KEY `IDX_105A9082C2AC5D3` (`translatable_id`),
  CONSTRAINT `FK_105A9082C2AC5D3` FOREIGN KEY (`translatable_id`) REFERENCES `sylius_product` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_product_translation`
--

LOCK TABLES `sylius_product_translation` WRITE;
/*!40000 ALTER TABLE `sylius_product_translation` DISABLE KEYS */;
INSERT INTO `sylius_product_translation` VALUES (1,1,'La lettre en pdf','la-lettre-en-pdf','Il était une fois un e-commerce ou on pouvait payer par chèque',NULL,NULL,NULL,'fr_FR'),(2,2,'Coeur de vigneron','coeur-de-vigneron','Un homme à sombré son cœur est celui d\'un vigneron endetter',NULL,NULL,NULL,'fr_FR'),(3,3,'une petite pièce','une-petite-piece','Un mauvais livre mais pas cher parfait pour l\'hiver',NULL,NULL,NULL,'fr_FR');
/*!40000 ALTER TABLE `sylius_product_translation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_product_variant`
--

DROP TABLE IF EXISTS `sylius_product_variant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_product_variant` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `tax_category_id` int(11) DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `available_on` datetime DEFAULT NULL,
  `available_until` datetime DEFAULT NULL,
  `on_hold` int(11) NOT NULL,
  `on_hand` int(11) NOT NULL,
  `tracked` tinyint(1) NOT NULL,
  `price` int(11) NOT NULL,
  `original_price` int(11) DEFAULT NULL,
  `pricing_calculator` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pricing_configuration` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  `width` double DEFAULT NULL,
  `height` double DEFAULT NULL,
  `depth` double DEFAULT NULL,
  `weight` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_A29B52377153098` (`code`),
  KEY `IDX_A29B5234584665A` (`product_id`),
  KEY `IDX_A29B5239DF894ED` (`tax_category_id`),
  CONSTRAINT `FK_A29B5234584665A` FOREIGN KEY (`product_id`) REFERENCES `sylius_product` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_A29B5239DF894ED` FOREIGN KEY (`tax_category_id`) REFERENCES `sylius_tax_category` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_product_variant`
--

LOCK TABLES `sylius_product_variant` WRITE;
/*!40000 ALTER TABLE `sylius_product_variant` DISABLE KEYS */;
INSERT INTO `sylius_product_variant` VALUES (1,1,NULL,'TLG',NULL,'2017-01-19 14:35:35','2017-01-19 14:35:35',NULL,NULL,0,0,0,10000,NULL,'standard','a:0:{}',NULL,NULL,NULL,NULL),(2,2,1,'JTF',NULL,'2017-01-19 15:01:16','2017-01-19 15:01:16',NULL,NULL,0,0,0,5000,NULL,'standard','a:0:{}',NULL,NULL,NULL,NULL),(3,3,1,'DSS',NULL,'2017-01-19 15:05:54','2017-01-19 15:06:29',NULL,NULL,0,0,0,100,NULL,'standard','a:0:{}',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `sylius_product_variant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_product_variant_option_value`
--

DROP TABLE IF EXISTS `sylius_product_variant_option_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_product_variant_option_value` (
  `variant_id` int(11) NOT NULL,
  `option_value_id` int(11) NOT NULL,
  PRIMARY KEY (`variant_id`,`option_value_id`),
  KEY `IDX_76CDAFA13B69A9AF` (`variant_id`),
  KEY `IDX_76CDAFA1D957CA06` (`option_value_id`),
  CONSTRAINT `FK_76CDAFA13B69A9AF` FOREIGN KEY (`variant_id`) REFERENCES `sylius_product_variant` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_76CDAFA1D957CA06` FOREIGN KEY (`option_value_id`) REFERENCES `sylius_product_option_value` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_product_variant_option_value`
--

LOCK TABLES `sylius_product_variant_option_value` WRITE;
/*!40000 ALTER TABLE `sylius_product_variant_option_value` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_product_variant_option_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_promotion`
--

DROP TABLE IF EXISTS `sylius_promotion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_promotion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `priority` int(11) NOT NULL,
  `exclusive` tinyint(1) NOT NULL,
  `usage_limit` int(11) DEFAULT NULL,
  `used` int(11) NOT NULL,
  `coupon_based` tinyint(1) NOT NULL,
  `starts_at` datetime DEFAULT NULL,
  `ends_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_F157396377153098` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_promotion`
--

LOCK TABLES `sylius_promotion` WRITE;
/*!40000 ALTER TABLE `sylius_promotion` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_promotion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_promotion_action`
--

DROP TABLE IF EXISTS `sylius_promotion_action`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_promotion_action` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `promotion_id` int(11) DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `configuration` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  PRIMARY KEY (`id`),
  KEY `IDX_933D0915139DF194` (`promotion_id`),
  CONSTRAINT `FK_933D0915139DF194` FOREIGN KEY (`promotion_id`) REFERENCES `sylius_promotion` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_promotion_action`
--

LOCK TABLES `sylius_promotion_action` WRITE;
/*!40000 ALTER TABLE `sylius_promotion_action` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_promotion_action` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_promotion_channels`
--

DROP TABLE IF EXISTS `sylius_promotion_channels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_promotion_channels` (
  `promotion_id` int(11) NOT NULL,
  `channel_id` int(11) NOT NULL,
  PRIMARY KEY (`promotion_id`,`channel_id`),
  KEY `IDX_1A044F64139DF194` (`promotion_id`),
  KEY `IDX_1A044F6472F5A1AA` (`channel_id`),
  CONSTRAINT `FK_1A044F64139DF194` FOREIGN KEY (`promotion_id`) REFERENCES `sylius_promotion` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_1A044F6472F5A1AA` FOREIGN KEY (`channel_id`) REFERENCES `sylius_channel` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_promotion_channels`
--

LOCK TABLES `sylius_promotion_channels` WRITE;
/*!40000 ALTER TABLE `sylius_promotion_channels` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_promotion_channels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_promotion_coupon`
--

DROP TABLE IF EXISTS `sylius_promotion_coupon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_promotion_coupon` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `promotion_id` int(11) DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `usage_limit` int(11) DEFAULT NULL,
  `used` int(11) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `per_customer_usage_limit` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_B04EBA8577153098` (`code`),
  KEY `IDX_B04EBA85139DF194` (`promotion_id`),
  CONSTRAINT `FK_B04EBA85139DF194` FOREIGN KEY (`promotion_id`) REFERENCES `sylius_promotion` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_promotion_coupon`
--

LOCK TABLES `sylius_promotion_coupon` WRITE;
/*!40000 ALTER TABLE `sylius_promotion_coupon` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_promotion_coupon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_promotion_order`
--

DROP TABLE IF EXISTS `sylius_promotion_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_promotion_order` (
  `order_id` int(11) NOT NULL,
  `promotion_id` int(11) NOT NULL,
  PRIMARY KEY (`order_id`,`promotion_id`),
  KEY `IDX_BF9CF6FB8D9F6D38` (`order_id`),
  KEY `IDX_BF9CF6FB139DF194` (`promotion_id`),
  CONSTRAINT `FK_BF9CF6FB139DF194` FOREIGN KEY (`promotion_id`) REFERENCES `sylius_promotion` (`id`),
  CONSTRAINT `FK_BF9CF6FB8D9F6D38` FOREIGN KEY (`order_id`) REFERENCES `sylius_order` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_promotion_order`
--

LOCK TABLES `sylius_promotion_order` WRITE;
/*!40000 ALTER TABLE `sylius_promotion_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_promotion_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_promotion_rule`
--

DROP TABLE IF EXISTS `sylius_promotion_rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_promotion_rule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `promotion_id` int(11) DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `configuration` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  PRIMARY KEY (`id`),
  KEY `IDX_2C188EA8139DF194` (`promotion_id`),
  CONSTRAINT `FK_2C188EA8139DF194` FOREIGN KEY (`promotion_id`) REFERENCES `sylius_promotion` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_promotion_rule`
--

LOCK TABLES `sylius_promotion_rule` WRITE;
/*!40000 ALTER TABLE `sylius_promotion_rule` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_promotion_rule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_province`
--

DROP TABLE IF EXISTS `sylius_province`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_province` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `abbreviation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_B5618FE477153098` (`code`),
  UNIQUE KEY `UNIQ_B5618FE4F92F3E705E237E06` (`country_id`,`name`),
  KEY `IDX_B5618FE4F92F3E70` (`country_id`),
  CONSTRAINT `FK_B5618FE4F92F3E70` FOREIGN KEY (`country_id`) REFERENCES `sylius_country` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_province`
--

LOCK TABLES `sylius_province` WRITE;
/*!40000 ALTER TABLE `sylius_province` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_province` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_shipment`
--

DROP TABLE IF EXISTS `sylius_shipment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_shipment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `method_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tracking` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_FD707B3319883967` (`method_id`),
  KEY `IDX_FD707B338D9F6D38` (`order_id`),
  CONSTRAINT `FK_FD707B3319883967` FOREIGN KEY (`method_id`) REFERENCES `sylius_shipping_method` (`id`),
  CONSTRAINT `FK_FD707B338D9F6D38` FOREIGN KEY (`order_id`) REFERENCES `sylius_order` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_shipment`
--

LOCK TABLES `sylius_shipment` WRITE;
/*!40000 ALTER TABLE `sylius_shipment` DISABLE KEYS */;
INSERT INTO `sylius_shipment` VALUES (1,1,1,'ready',NULL,'2017-01-19 15:07:28','2017-01-19 15:11:11'),(2,2,2,'ready',NULL,'2017-01-19 15:20:18','2017-01-19 15:22:53'),(3,3,3,'ready',NULL,'2017-01-19 15:33:02','2017-01-19 15:34:19'),(4,1,4,'ready',NULL,'2017-01-19 16:12:19','2017-01-19 16:13:22'),(5,1,5,'ready',NULL,'2017-01-19 16:26:56','2017-01-19 16:28:08'),(6,2,6,'ready',NULL,'2017-01-19 16:35:22','2017-01-19 16:36:49');
/*!40000 ALTER TABLE `sylius_shipment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_shipping_category`
--

DROP TABLE IF EXISTS `sylius_shipping_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_shipping_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_B1D6465277153098` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_shipping_category`
--

LOCK TABLES `sylius_shipping_category` WRITE;
/*!40000 ALTER TABLE `sylius_shipping_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_shipping_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_shipping_method`
--

DROP TABLE IF EXISTS `sylius_shipping_method`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_shipping_method` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) DEFAULT NULL,
  `zone_id` int(11) NOT NULL,
  `tax_category_id` int(11) DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `configuration` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  `category_requirement` int(11) NOT NULL,
  `calculator` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `is_enabled` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_5FB0EE1177153098` (`code`),
  KEY `IDX_5FB0EE1112469DE2` (`category_id`),
  KEY `IDX_5FB0EE119F2C3FAB` (`zone_id`),
  KEY `IDX_5FB0EE119DF894ED` (`tax_category_id`),
  CONSTRAINT `FK_5FB0EE1112469DE2` FOREIGN KEY (`category_id`) REFERENCES `sylius_shipping_category` (`id`),
  CONSTRAINT `FK_5FB0EE119DF894ED` FOREIGN KEY (`tax_category_id`) REFERENCES `sylius_tax_category` (`id`) ON DELETE SET NULL,
  CONSTRAINT `FK_5FB0EE119F2C3FAB` FOREIGN KEY (`zone_id`) REFERENCES `sylius_zone` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_shipping_method`
--

LOCK TABLES `sylius_shipping_method` WRITE;
/*!40000 ALTER TABLE `sylius_shipping_method` DISABLE KEYS */;
INSERT INTO `sylius_shipping_method` VALUES (1,NULL,1,NULL,'RDM','a:1:{s:6:\"amount\";i:700;}',1,'flat_rate',1,'2017-01-19 14:46:56','2017-01-19 14:46:56'),(2,NULL,2,NULL,'RDM_Eur','a:1:{s:6:\"amount\";i:1400;}',1,'flat_rate',1,'2017-01-19 14:51:27','2017-01-19 14:54:01'),(3,NULL,3,NULL,'RDM_Int','a:1:{s:6:\"amount\";i:2500;}',1,'flat_rate',1,'2017-01-19 14:53:44','2017-01-19 14:53:44');
/*!40000 ALTER TABLE `sylius_shipping_method` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_shipping_method_translation`
--

DROP TABLE IF EXISTS `sylius_shipping_method_translation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_shipping_method_translation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `translatable_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sylius_shipping_method_translation_uniq_trans` (`translatable_id`,`locale`),
  KEY `IDX_2B37DB3D2C2AC5D3` (`translatable_id`),
  CONSTRAINT `FK_2B37DB3D2C2AC5D3` FOREIGN KEY (`translatable_id`) REFERENCES `sylius_shipping_method` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_shipping_method_translation`
--

LOCK TABLES `sylius_shipping_method_translation` WRITE;
/*!40000 ALTER TABLE `sylius_shipping_method_translation` DISABLE KEYS */;
INSERT INTO `sylius_shipping_method_translation` VALUES (1,1,'RDM\'Editions','Livraison assuré par RDM\'Editions','fr_FR'),(2,2,'RDM\'Editions Europe','Livraison assuré par le transporteur choisi par RDM\'Editions','fr_FR'),(3,3,'RDM\'Editions International','Livraison assuré par le transporteur choisi par RDM\'Editions','fr_FR');
/*!40000 ALTER TABLE `sylius_shipping_method_translation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_shop_user`
--

DROP TABLE IF EXISTS `sylius_shop_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_shop_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `username_canonical` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL,
  `salt` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_requested_at` datetime DEFAULT NULL,
  `email_verification_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `verified_at` datetime DEFAULT NULL,
  `locked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  `credentials_expire_at` datetime DEFAULT NULL,
  `roles` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_canonical` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_7C2B74809395C3F3` (`customer_id`),
  CONSTRAINT `FK_7C2B74809395C3F3` FOREIGN KEY (`customer_id`) REFERENCES `sylius_customer` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_shop_user`
--

LOCK TABLES `sylius_shop_user` WRITE;
/*!40000 ALTER TABLE `sylius_shop_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_shop_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_tax_category`
--

DROP TABLE IF EXISTS `sylius_tax_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_tax_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_221EB0BE77153098` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_tax_category`
--

LOCK TABLES `sylius_tax_category` WRITE;
/*!40000 ALTER TABLE `sylius_tax_category` DISABLE KEYS */;
INSERT INTO `sylius_tax_category` VALUES (1,'BTVA','BTVA','TVA à 5,5%','2017-01-19 14:37:38','2017-01-19 14:37:38');
/*!40000 ALTER TABLE `sylius_tax_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_tax_rate`
--

DROP TABLE IF EXISTS `sylius_tax_rate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_tax_rate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `amount` decimal(10,5) NOT NULL,
  `included_in_price` tinyint(1) NOT NULL,
  `calculator` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_3CD86B2E77153098` (`code`),
  KEY `IDX_3CD86B2E12469DE2` (`category_id`),
  KEY `IDX_3CD86B2E9F2C3FAB` (`zone_id`),
  CONSTRAINT `FK_3CD86B2E12469DE2` FOREIGN KEY (`category_id`) REFERENCES `sylius_tax_category` (`id`),
  CONSTRAINT `FK_3CD86B2E9F2C3FAB` FOREIGN KEY (`zone_id`) REFERENCES `sylius_zone` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_tax_rate`
--

LOCK TABLES `sylius_tax_rate` WRITE;
/*!40000 ALTER TABLE `sylius_tax_rate` DISABLE KEYS */;
INSERT INTO `sylius_tax_rate` VALUES (1,1,1,'Livre','Livre',0.05500,1,'default','2017-01-19 14:55:00','2017-01-19 14:55:00'),(2,1,2,'Livre_EUR','Livre',0.05500,1,'default','2017-01-19 14:55:52','2017-01-19 14:55:52'),(3,1,3,'Livre_INT','Livre',0.05500,1,'default','2017-01-19 14:56:28','2017-01-19 14:56:28');
/*!40000 ALTER TABLE `sylius_tax_rate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_taxon`
--

DROP TABLE IF EXISTS `sylius_taxon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_taxon` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tree_root` int(11) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tree_left` int(11) NOT NULL,
  `tree_right` int(11) NOT NULL,
  `tree_level` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_CFD811CA77153098` (`code`),
  KEY `IDX_CFD811CAA977936C` (`tree_root`),
  KEY `IDX_CFD811CA727ACA70` (`parent_id`),
  CONSTRAINT `FK_CFD811CA727ACA70` FOREIGN KEY (`parent_id`) REFERENCES `sylius_taxon` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_CFD811CAA977936C` FOREIGN KEY (`tree_root`) REFERENCES `sylius_taxon` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_taxon`
--

LOCK TABLES `sylius_taxon` WRITE;
/*!40000 ALTER TABLE `sylius_taxon` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_taxon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_taxon_image`
--

DROP TABLE IF EXISTS `sylius_taxon_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_taxon_image` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner_id` int(11) NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `taxon_image_code_idx` (`owner_id`,`code`),
  KEY `IDX_DBE52B287E3C61F9` (`owner_id`),
  CONSTRAINT `FK_DBE52B287E3C61F9` FOREIGN KEY (`owner_id`) REFERENCES `sylius_taxon` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_taxon_image`
--

LOCK TABLES `sylius_taxon_image` WRITE;
/*!40000 ALTER TABLE `sylius_taxon_image` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_taxon_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_taxon_translation`
--

DROP TABLE IF EXISTS `sylius_taxon_translation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_taxon_translation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `translatable_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `permalink` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `permalink_uidx` (`locale`,`permalink`),
  UNIQUE KEY `sylius_taxon_translation_uniq_trans` (`translatable_id`,`locale`),
  KEY `IDX_1487DFCF2C2AC5D3` (`translatable_id`),
  CONSTRAINT `FK_1487DFCF2C2AC5D3` FOREIGN KEY (`translatable_id`) REFERENCES `sylius_taxon` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_taxon_translation`
--

LOCK TABLES `sylius_taxon_translation` WRITE;
/*!40000 ALTER TABLE `sylius_taxon_translation` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_taxon_translation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_user_oauth`
--

DROP TABLE IF EXISTS `sylius_user_oauth`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_user_oauth` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `identifier` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `access_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `refresh_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_provider` (`user_id`,`provider`),
  KEY `IDX_C3471B78A76ED395` (`user_id`),
  CONSTRAINT `FK_C3471B78A76ED395` FOREIGN KEY (`user_id`) REFERENCES `sylius_shop_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_user_oauth`
--

LOCK TABLES `sylius_user_oauth` WRITE;
/*!40000 ALTER TABLE `sylius_user_oauth` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_user_oauth` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_zone`
--

DROP TABLE IF EXISTS `sylius_zone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_zone` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `scope` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_7BE2258E77153098` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_zone`
--

LOCK TABLES `sylius_zone` WRITE;
/*!40000 ALTER TABLE `sylius_zone` DISABLE KEYS */;
INSERT INTO `sylius_zone` VALUES (1,'FR','France','country',NULL),(2,'EUR','Europe','country',NULL),(3,'INT','International','country',NULL);
/*!40000 ALTER TABLE `sylius_zone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_zone_member`
--

DROP TABLE IF EXISTS `sylius_zone_member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_zone_member` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `belongs_to` int(11) DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_E8B5ABF34B0E929B77153098` (`belongs_to`,`code`),
  KEY `IDX_E8B5ABF34B0E929B` (`belongs_to`),
  CONSTRAINT `FK_E8B5ABF34B0E929B` FOREIGN KEY (`belongs_to`) REFERENCES `sylius_zone` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_zone_member`
--

LOCK TABLES `sylius_zone_member` WRITE;
/*!40000 ALTER TABLE `sylius_zone_member` DISABLE KEYS */;
INSERT INTO `sylius_zone_member` VALUES (1,1,'FR'),(2,2,'DE'),(3,3,'DZ');
/*!40000 ALTER TABLE `sylius_zone_member` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-01-24 16:02:01
