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
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (4,'Dogs'),(14,'Cats');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `body` blob,
  `published` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (24,'Dog Post 1',_binary 'Doggo ipsum wrinkler borking doggo woofer sub woofer, noodle horse. Doggorino doge wow very biscit very jealous pupper puggorino, sub woofer snoot boofers, woofer big ol long water shoob. Pats dat tungg tho heckin good boys and girls tungg what a nice floof very taste wow, shoob floofs he made many woofs. Maximum borkdrive yapper shibe aqua doggo vvv, sub woofer he made many woofs.','2021-04-01 00:00:00'),(34,'Cat Post 2',_binary 'Panther birman or jaguar yet munchkin, so tabby. American bobtail balinese cougar puma, for kitten himalayan. Mouser jaguar for british shorthair. Siberian american shorthair, sphynx burmese panther tabby. Thai american bobtail himalayan. Tabby lynx for tomcat burmese. Thai munchkin so bombay. Cougar jaguar so panther ocicat so cougar so bengal. Havana brown balinese siberian kitten ocelot lynx yet siamese. Ragdoll cougar but ocicat or grimalkin. Munchkin russian blue, or kitten yet american shorthair for british shorthair and american bobtail, and maine coon.\n\nMore text here. This is fun!\n\nI love Markdown!','2021-04-03 00:00:00'),(44,'Blog Post 1',_binary 'Proudly present butt to human so you\'re just gonna scroll by without saying meowdy? blow up sofa in 3 seconds so i bet my nine lives on you-oooo-ooo-hooo car rides are evil fall over dead (not really but gets sypathy) and inspect anything brought into the house. Leave hair everywhere lie in the sink all day for disappear for four days and return home with an expensive injury; bite the vet purr when being pet attack the dog then pretend like nothing happened check cat door for ambush 10 times before coming in yet spread kitty litter all over house. Curl into a furry donut. Groom forever, stretch tongue and leave it slightly out, blep meow meow mama. White cat sleeps on a black shirt my water bowl is clean and freshly replenished, so i\'ll drink from the toilet for pretend you want to go out but then don\'t. Favor packaging over toy eat grass, throw it back up enslave the hooman lick human with sandpaper tongue. Cat sit like bread bury the poop bury it deep yet inspect anything brought into the house, yet as lick i the shoes demand to have some of whatever the human is cooking, then sniff the offering and walk away purrr purr littel cat, little cat purr purr meow\n\nmeow. Do i like standing on litter cuz i sits when i have spaces, my cat buddies have no litter i live in luxury cat life as lick i the shoes. Sleep all day whilst slave is at work, play all night whilst slave is sleeping the best thing in the universe is a cardboard box sleeps on my head or need to check on human, have not seen in an hour might be dead oh look, human is alive, hiss at human, feed me. Human is washing you why halp oh the horror flee scratch hiss bite. Kitty time dead stare with ears cocked yet soft kitty warm kitty little ball of furr warm up laptop with butt lick butt fart rainbows until owner yells pee in litter box hiss at cats make plans to dominate world and then take a nap. Wack the mini furry mouse grass smells good to pet a cat, rub its belly, endure blood and agony, quietly weep, keep rubbing belly and have a lot of grump in yourself because you can\'t forget to be grumpy and not be like king grumpy cat for nap all day. Chase red laser dot more napping, more napping all the napping is exhausting and jump off balcony, onto stranger\'s head gnaw the corn cob.','2021-04-02 00:00:00');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts_categories`
--

DROP TABLE IF EXISTS `posts_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `postid` int(11) NOT NULL,
  `categoryid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts_categories`
--

LOCK TABLES `posts_categories` WRITE;
/*!40000 ALTER TABLE `posts_categories` DISABLE KEYS */;
INSERT INTO `posts_categories` VALUES (4,24,4),(14,34,14),(24,44,14),(34,44,4);
/*!40000 ALTER TABLE `posts_categories` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-27 12:22:48
