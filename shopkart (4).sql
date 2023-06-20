-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 09, 2023 at 06:47 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shopkart`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `password`) VALUES
(1, 'admin', '6216f8a75fd5bb3d5f22b6f9958cdede3fc086c2');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(10) NOT NULL,
  `quantity` int(10) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `pid`, `name`, `price`, `quantity`, `image`) VALUES
(22, 4, 32, 'Men Red Printed Kurta', 719, 1, '36-05km65-maroon-armaan-ethnic-original-imag8yysggyjvgu5-bb.webp');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `message` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `user_id`, `name`, `email`, `number`, `message`) VALUES
(2, 3, 'shreyasi Bhattachary', 'shreyasibhattacharjee91@gmail.com', '7044550493', 'hii'),
(3, 3, 'Sayan', 'bhattacharyasayan6@gmail.com', '1234567890', 'hello'),
(4, 4, 'Atrick', 'banerjeeatrick@gmail.com', '123456', 'bye'),
(5, 5, 'jyoti', 'jyoti@gmail.com', '12345678', 'hello'),
(6, 3, 'Sayan', 'bhattacharyasayan6@gmail.com', '12345678', 'helllo\r\n'),
(7, 3, 'dipankAR', 'bhattacharyasayan6@gmail.com', '12345678', 'hi hello hello'),
(8, 3, 'Sayan', 'bhattacharyasayan6@gmail.com', '4567788', 'hello'),
(9, 3, 'Rahul', 'bhattacharyasayan6@gmail.com', '24556', 'hello'),
(10, 3, 'soumen', 'bhattacharyasayan6@gmail.com', '1233456', 'hi'),
(11, 3, 'sachin', 'bhattacharyasayan6@gmail.com', '123456', 'hi hello'),
(12, 3, 'Rajat Ghosh', 'bhattacharyasayan6@gmail.com', '1213244355', 'hello'),
(13, 3, 'Rina ma&#39;am', 'bhattacharyasayan6@gmail.com', '12334678', 'hello hii'),
(14, 3, 'PAMPA', 'bhattacharyasayan6@gmail.com', '23445545', 'hello\r\n'),
(15, 3, 'Shib Shankar Bose', 'bhattacharyasayan6@gmail.com', '1323454646', 'hi hwello'),
(16, 3, 'dipankAR', 'bhattacharyasayan6@gmail.com', '1234567890', 'hi hello'),
(17, 3, 'anuradha', 'bhattacharyasayan6@gmail.com', '1234567890', 'hello');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `number` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `method` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `total_products` varchar(1000) NOT NULL,
  `total_price` int(100) NOT NULL,
  `placed_on` date NOT NULL DEFAULT current_timestamp(),
  `payment_status` varchar(20) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `name`, `number`, `email`, `method`, `address`, `total_products`, `total_price`, `placed_on`, `payment_status`) VALUES
(2, 3, 'Sayan Bhattacharya', '0824012757', 'bhattacharyasayan6@gmail.com', 'cash on delivery', 'flat no. 111, Jawpur Panchanantala. Amiyabala Apartment. Du, Amiyabala Apartment, Kolkata, West Bengal, India - 700074', 'Women Solid - White Crop Top  (499 x 1) - ', 499, '2023-04-07', 'completed'),
(3, 2, 'Sayan Bhattacharya', '0824012757', 'bhattacharyasayan6@gmail.com', 'cash on delivery', 'flat no. 111, Jawpur Panchanantala. Amiyabala Apartment. Du, Amiyabala Apartment, Kolkata, West Bengal, India - 700074', 'Women Solid - Black Crop top  (599 x 1) - Women Solid - White Crop Top  (499 x 1) - ', 1098, '2023-04-10', 'completed'),
(4, 3, 'Sayan Bhattacharya', '8240127576', 'bhattacharyasayan6@gmail.com', 'cash on delivery', 'flat no. 111, Jawpur Panchanantala. Amiyabala Apartment. Du, Amiyabala Apartment, Kolkata, West Bengal, India - 700074', 'Kantha Silk Saree (Green) (3200 x 1) - ', 3200, '2023-05-08', 'completed'),
(6, 3, 'Sayan Bhattacharya', '0824012757', 'bhattacharyasayan6@gmail.com', 'cash on delivery', 'flat no. 111, Jawpur Panchanantala. Amiyabala Apartment. Du, Amiyabala Apartment, Kolkata, West Bengal, India - 700074', 'Tangail Cotton Saree (Orange, White) (2499 x 3) - Gypsophilia Earring (350 x 1) - ', 7847, '2023-05-13', 'completed'),
(7, 3, 'Sayan Bhattacharya', '0824012757', 'bhattacharyasayan6@gmail.com', 'cash on delivery', 'flat no. 111, Jawpur Panchanantala. Amiyabala Apartment. Du, Amiyabala Apartment, Kolkata, West Bengal, India - 700074', 'Dokra Owl (449 x 4) - ', 1796, '2023-05-13', 'completed'),
(8, 3, 'Sayan Bhattacharya', '0824012757', 'bhattacharyasayan6@gmail.com', 'cash on delivery', 'flat no. 111, Jawpur Panchanantala. Amiyabala Apartment. Du, Amiyabala Apartment, Kolkata, West Bengal, India - 700074', 'Olive PU Leather Bag (1599 x 1) - Kantha Shawl (Offwhite) (999 x 4) - ', 5595, '2023-05-13', 'completed'),
(9, 4, 'Sayan Bhattacharya', '0824012757', 'bhattacharyasayan6@gmail.com', 'cash on delivery', 'flat no. 111, Jawpur Panchanantala. Amiyabala Apartment. Du, Amiyabala Apartment, Kolkata, West Bengal, India - 700074', 'Bougainville - Finger Ring(1.5\", Silver Plated) (1299 x 3) - Maple Pendent (1.5\", Silver Plated) (550 x 1) - ', 4447, '2023-05-14', 'completed'),
(10, 4, 'Sayan Bhattacharya', '0824012757', 'bhattacharyasayan6@gmail.com', 'cash on delivery', 'flat no. 111, Jawpur Panchanantala. Amiyabala Apartment. Du, Amiyabala Apartment, Kolkata, West Bengal, India - 700074', 'Kantha Shawl (Offwhite) (999 x 3) - ', 2997, '2023-05-14', 'completed'),
(11, 5, 'Sayan Bhattacharya', '0824012757', 'bhattacharyasayan6@gmail.com', 'cash on delivery', 'flat no. 111, Jawpur Panchanantala. Amiyabala Apartment. Du, Amiyabala Apartment, Kolkata, West Bengal, India - 700074', ' Kathi Ganesh (Set of 2) (399 x 3) - ', 1197, '2023-05-14', 'completed'),
(14, 3, 'Sayan Bhattacharya', '0824012757', 'bhattacharyasayan6@gmail.com', 'cash on delivery', 'flat no. 111, Jawpur Panchanantala. Amiyabala Apartment. Du, Amiyabala Apartment, Kolkata, West Bengal, India - 700074', 'Shola-pith Durga Family (1499 x 1) - Dokra Owl (449 x 3) - ', 2846, '2023-05-15', 'pending'),
(15, 3, 'Sayan Bhattacharya', '0824012757', 'bhattacharyasayan6@gmail.com', 'cash on delivery', 'flat no. 111, Jawpur Panchanantala. Amiyabala Apartment. Du, Amiyabala Apartment, Kolkata, West Bengal, India - 700074', 'Dokra Owl (449 x 1) - Tie Dye Tangail Cotton Saree (1899 x 3) - ', 6146, '2023-05-15', 'pending'),
(16, 3, 'Sayan Bhattacharya', '0824012757', 'bhattacharyasayan6@gmail.com', 'cash on delivery', 'flat no. 111, Jawpur Panchanantala. Amiyabala Apartment. Du, Amiyabala Apartment, Kolkata, West Bengal, India - 700074', 'Hancrafted Jute Ganesha (Hanging) (599 x 3) - ', 1797, '2023-05-16', 'pending'),
(17, 3, 'Sayan Bhattacharya', '0824012757', 'bhattacharyasayan6@gmail.com', 'cash on delivery', 'flat no. 111, Jawpur Panchanantala. Amiyabala Apartment. Du, Amiyabala Apartment, Kolkata, West Bengal, India - 700074', 'Men White Casual Shoe (1399 x 3) - ', 4197, '2023-05-16', 'pending'),
(18, 3, 'Sayan Bhattacharya', '0824012757', 'bhattacharyasayan6@gmail.com', 'cash on delivery', 'flat no. 111, Jawpur Panchanantala. Amiyabala Apartment. Du, Amiyabala Apartment, Kolkata, West Bengal, India - 700074', 'Dokra Owl (449 x 5) - ', 2245, '2023-05-16', 'completed'),
(19, 3, 'Sayan Bhattacharya', '0824012757', 'bhattacharyasayan6@gmail.com', 'cash on delivery', 'flat no. 111, Jawpur Panchanantala. Amiyabala Apartment. Du, Amiyabala Apartment, Kolkata, West Bengal, India - 700074', 'Bougainville - Finger Ring(1.5\", Silver Plated) (1299 x 1) - ', 1299, '2023-05-16', 'pending'),
(20, 3, 'Sayan Bhattacharya', '0824012757', 'bhattacharyasayan6@gmail.com', 'cash on delivery', 'flat no. 111, Jawpur Panchanantala. Amiyabala Apartment. Du, Amiyabala Apartment, Kolkata, West Bengal, India - 700074', 'Wooden Coasters (Set of 4) (399 x 3) - ', 1197, '2023-05-16', 'pending'),
(21, 3, 'Sayan Bhattacharya', '0824012757', 'bhattacharyasayan6@gmail.com', 'cash on delivery', 'flat no. 111, Jawpur Panchanantala. Amiyabala Apartment. Du, Amiyabala Apartment, Kolkata, West Bengal, India - 700074', 'Nigella Earring (1.2g Pure Gold Plated) (850 x 4) - ', 3400, '2023-05-16', 'pending'),
(22, 3, 'Shib Shankar Bose', '0824012757', 'bhattacharyasayan6@gmail.com', 'cash on delivery', 'flat no. 111, Jawpur Panchanantala. Amiyabala Apartment. Du, Amiyabala Apartment, Kolkata, West Bengal, India - 700074', 'Kantha Shawl (Offwhite) (999 x 3) - ', 2997, '2023-05-16', 'pending'),
(23, 3, 'Sayan Bhattacharya', '0824012757', 'bhattacharyasayan6@gmail.com', 'cash on delivery', 'flat no. 111, Jawpur Panchanantala. Amiyabala Apartment. Du, Amiyabala Apartment, Kolkata, West Bengal, India - 700074', 'Batik Printed Cotton Shirt ( Half Sleeve, Abstract) (799 x 3) - ', 2397, '2023-05-16', 'pending'),
(24, 3, 'Sayan Bhattacharya', '0824012757', 'bhattacharyasayan6@gmail.com', 'cash on delivery', 'flat no. 111, Jawpur Panchanantala. Amiyabala Apartment. Du, Amiyabala Apartment, Kolkata, West Bengal, India - 700074', 'Hancrafted Jute Owl and Ganesha (400 x 4) - ', 1600, '2023-05-16', 'pending'),
(25, 3, 'Sayan Bhattacharya', '0824012757', 'bhattacharyasayan6@gmail.com', 'cash on delivery', 'flat no. 111, Jawpur Panchanantala. Amiyabala Apartment. Du, Amiyabala Apartment, Kolkata, West Bengal, India - 700074', 'Byangoma Byangomi Set (Set of 2) (199 x 3) - ', 597, '2023-05-16', 'pending'),
(26, 3, 'Sayan Bhattacharya', '0824012757', 'bhattacharyasayan6@gmail.com', 'cash on delivery', 'flat no. 111, Jawpur Panchanantala. Amiyabala Apartment. Du, Amiyabala Apartment, Kolkata, West Bengal, India - 700074', 'Dokra Owl (449 x 3) - ', 1347, '2023-05-16', 'pending'),
(27, 3, 'Sayan Bhattacharya', '0824012757', 'bhattacharyasayan6@gmail.com', 'cash on delivery', 'flat no. 111, Jawpur Panchanantala. Amiyabala Apartment. Du, Amiyabala Apartment, Kolkata, West Bengal, India - 700074', 'Multicolored Kantha Stitch Tappi Stole (1399 x 5) - ', 6995, '2023-05-16', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `details` varchar(500) NOT NULL,
  `price` int(10) NOT NULL,
  `image_01` varchar(100) NOT NULL,
  `image_02` varchar(100) NOT NULL,
  `image_03` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `details`, `price`, `image_01`, `image_02`, `image_03`) VALUES
(9, 'Pink Designer Cotton Kurti Set', 'Women Kurti Set by BIBA', 2499, 'skdasrtd8496ss23pnk _1.webp', 'skdasrtd8496ss23pnk _2.webp', 'skdasrtd8496ss23pnk _5.webp'),
(10, 'Lilac Cotton Printed Dress', 'Women Dresses by BIBA', 2299, 'csld1935ss23lilac_1.webp', 'csld1935ss23lilac_4.webp', 'csld1935ss23lilac_3.webp'),
(11, 'Sea Green Cotton Kurti Set', 'Women Kurti Set by BIBA', 2499, 'skdshweths8632ss23seagrn _1.webp', 'skdshweths8632ss23seagrn _2.webp', 'skdshweths8632ss23seagrn _5.webp'),
(12, 'Forest Green Printed Cotton Dress', 'Women Dresses by BIBA', 1799, 'csld1938ss23fortgrn_1.webp', 'csld1938ss23fortgrn_5.webp', 'csld1938ss23fortgrn_3.webp'),
(15, 'Olive PU Leather Bag', 'Women Handbags by BIBA', 1599, 'hbgwhitbag00008aw22olv_1.webp', 'hbgwhitbag00008aw22olv_3.webp', 'hbgwhitbag00008aw22olv_5.webp'),
(16, 'Teal PU Purse', 'Women Handbags by BIBA', 999, 'hbgwhitbag00017aw22tel_1.webp', 'hbgwhitbag00017aw22tel_3.webp', 'hbgwhitbag00017aw22tel_5.webp'),
(19, 'Women Embroidered Slip-ons', 'Women Footwears', 1399, 'ftwfasspofx55ss23gld_1.webp', 'ftwfasspofx55ss23gld_3.webp', 'ftwfasspofx55ss23gld_5.webp'),
(20, 'Women Maroon Slip-on', 'Women Footwear', 1299, 'ftwrmspo09aw22maroon_1.webp', 'ftwrmspo09aw22maroon_2.webp', 'ftwrmspo09aw22maroon_3.webp'),
(30, 'Men White Casual Shoe', 'Mens Footwear', 1399, '-473Wx593H-465063858-white-MODEL.webp', '-473Wx593H-465063858-white-MODEL7.webp', '-473Wx593H-465063858-white-MODEL6.webp'),
(31, 'Men Brown Sandal', 'Mens Footwear', 689, '-473Wx593H-469253442-brown-MODEL.webp', '-473Wx593H-469253442-brown-MODEL2.webp', '-473Wx593H-469253442-brown-MODEL7.webp'),
(32, 'Men Red Printed Kurta', 'Mens Kurta', 719, '36-05km65-maroon-armaan-ethnic-original-imag8yysggyjvgu5-bb.webp', '38-05km18-wine-armaan-ethnic-original-imag7uhb72jnugns.webp', '38-05km18-wine-armaan-ethnic-original-imag7uhbhyfekjyk.webp'),
(37, 'Sunflower - Finger Ring (1.5&#34;, Adjustable)', 'Handcrafted by ATTOJA -\r\nWomen Jewelry', 650, '324194696_2076234592765342_4029044749974204662_n.jpg', '332698624_932341731453754_7466182364410876761_n.jpg', '336259741_759609798800178_4050015670775343020_n.jpg'),
(38, 'Bougainville - Finger Ring(1.5&#34;, Silver Plated)', 'Handcrafted by ATTOJA - Women Jewelry', 1299, '320942711_1316255419169913_3851634412853479992_n.jpg', '321238960_527721609293246_5854322207199989655_n.jpg', '321053219_2963076260662996_7419090067529421584_n.jpg'),
(39, 'Niamh Set (Neckless, Earring, Gold Plated)', 'Handcrafted by ATTOJA - Women Jewelry', 1599, '317362529_147551171359980_5613797663837505555_n.jpg', '324416735_726143732068866_6978449080676225715_n.jpg', '324464924_555230753170677_5819333414712415469_n.jpg'),
(40, 'Daisy Pendant ( 1.5&#34;, Gold Plated)', 'Handcrafted By ATTOJA - Women Jewelry', 980, '326101424_780854182900106_2007723115701723392_n.jpg', '325681579_1918359731856839_5482724946697599715_n.jpg', '309848470_135053219276442_239586516535547876_n.jpg'),
(41, 'Aster with Leaf Earrings ', 'Handcrafted by ATTOJA - Women Jewelry', 350, 'Aster with leaf earrings (Silver).JPG', '310607330_134990352616062_1894381121341467941_n.jpg', 'Aster with leaf earrings (Golden).JPG'),
(42, 'Japanese Maple Leaf Pendant', 'Handcrafted by ATTOJA - Women Jewelry', 299, '283952627_114125264638388_8702737285410523089_n.jpg', '283949522_114125257971722_1726955762869956423_n.jpg', '283834813_114125261305055_425420559247004210_n.jpg'),
(43, 'Gypsophilia Earring', 'Handcrafted by ATTOJA - Women Jewelry', 350, '330350676_3550928678512160_6933889448406779142_n.jpg', '330395940_5568443519933415_5954552761169518310_n.jpg', '330012417_523692173081072_8117019715928847601_n.jpg'),
(44, 'Aster Earring (1.2g Pure Gold Plated)', 'Handcrafted by ATTOJA - Women Jewelry', 750, '327323991_3397819217145838_2988699717417230092_n.jpg', '326965906_1215918295969206_6988831362402676191_n.jpg', '327078544_503259671940379_2045356720078061519_n.jpg'),
(45, 'Nigella Earring (1.2g Pure Gold Plated)', 'Handcrafted by ATTOJA - Women Jewelry', 850, '319673271_861233261745640_3829307446208848058_n.jpg', '319818151_543232287405397_7968322985017570277_n.jpg', '319556083_676343913940059_703636120676234417_n.jpg'),
(46, 'Four Leaf Clover Pendent (1&#34;, Silver Plated)', 'Handcrafted by ATTOJA - Women Jewelry', 320, '301506560_145302151520699_790596146848439821_n.jpg', '300947801_145302154854032_4687788872535899421_n.jpg', '301006307_145302148187366_1306696866327188238_n.jpg'),
(47, 'Maple Pendent (1.5&#34;, Silver Plated)', 'Handcrafted by ATTOJA - Women Jewelry', 999, '300228751_146528824731365_7681175129093034075_n.jpg', '300375374_146528974731350_3703691278082384731_n.jpg', '300791490_146529001398014_2538732269684541198_n.jpg'),
(48, 'Queen Anne Earring (1.5&#34;, Gold Plated)', 'Handcrafted by ATTOJA - Women Jewelry', 950, '327670756_1208607259743671_4699271936303230093_n.jpg', '327898062_908539586838140_7500462239768141095_n.jpg', '328306180_843622186739827_6801423929238872053_n.jpg'),
(49, 'Dhaniakhali Cotton Saree (Off-white)', 'Handwoven by Biswa Bangla - Women ', 1199, 'bbmc__aug21d__cotton_set191_shrestha_side__2022-9-21-16-49-53__1244x1920-640x640.webp', 'bbmc__aug21d__cotton_set191_shrestha_back__2022-9-21-16-50-2__1244x1920-1024x1024.webp', 'bb2_4481-copy-640x640.webp'),
(50, 'Tangail Cotton Saree', 'Handwoven by Biswa Bangla - Women ', 1299, 'bbmc__mar22b__cotton_set191_shrestha_side__2023-4-17-12-19-31__1244x1920-1024x1024.webp', 'bbmc__mar22b__cotton_set191_shrestha_back__2023-4-17-12-19-35__1244x1920-1024x1024.webp', 'bbm_0639-copy-1024x1024.webp'),
(51, 'Tie Dye Tangail Cotton Saree', 'Handwoven Saree by Biswa Bangla - Women ', 1899, '340215777_980157173363065_5090320733533351198_n-640x640.webp', '340154572_182850567475557_1330758518115079060_n-1--640x640.webp', '340152600_958988041941916_7587154667762444444_n-1024x1024.webp'),
(52, 'Tangail Cotton Saree (Orange, White)', 'Handwoven by Biswa Bangla - Women ', 2499, 'bbmc__mar2__cotton_set191_shrestha_front2__2023-3-17-11-48-23__1244x1920-640x640.webp', 'bbmc__mar2__cotton_set191_shrestha_side__2023-3-17-11-48-31__1244x1920-1024x1024.webp', 'bbmc__mar2__cotton_set191_shrestha_back__2023-3-17-11-47-58__1244x1920-1024x1024.webp'),
(53, 'Dhaniakhali Cotton Saree (Orange)', 'Handwoven by Biswa Bangla - Women ', 1599, 'bbmc__aug21l__cotton_set191_shrestha_side__2022-9-22-0-51-12__1244x1920-1024x1024.webp', 'bbmc__aug21l__cotton_set191_shrestha_back__2022-9-22-0-51-23__1244x1920-1024x1024.webp', 'bb2_4538-copy-1024x1024.webp'),
(54, 'Dhaniakhali Cotton Saree (Off-white & Red)', 'Handwoven by Biswa Bangla - Women ', 1299, 'bbmc__bbjune018__cotton_set191_shrestha_side2_tassels__2022-6-20-17-4-15__1244x1920-1024x1024.webp', 'bbmc__bbjune018__cotton_set191_shrestha_back__2022-6-20-17-4-9__1244x1920-1024x1024.webp', 'dsc_2820-copy-1024x1024.webp'),
(55, 'Kantha Silk Saree (Green)', 'Handwoven by Biswa Bangla - Women ', 3200, 'bbmc__bbjune044__cotton_set191_shrestha_front2__2022-7-9-12-8-1__1244x1920-640x640.webp', 'bbmc__bbjune044__cotton_set191_shrestha_side__2022-7-9-12-8-36__1244x1920-1024x1024.webp', 'bbmc__bbjune044__cotton_set191_shrestha_back__2022-7-9-12-8-42__1244x1920-1024x1024.webp'),
(56, 'Kantha Silk Saree (Green & Pink)', 'Handwoven by Biswa Bangla - Women ', 3399, 'bbmc__bbmc182__silk_set190_shrestha_front__2022-1-20-18-12-11__1244x1920-640x640.webp', 'bbmc__bbmc182__silk_set190_shrestha_side2__2022-1-20-18-12-3__1244x1920-1024x1024.webp', 'bbmc__bbmc182__silk_set190_shrestha_back__2022-1-20-18-11-51__1244x1920-1024x1024.webp'),
(57, 'Kantha  Silk Saree (Green, White)', 'Handwoven by Biswa Bangla - Women ', 2999, '05-640x640.webp', 'bb-d2_660-640x640.webp', 'bb-d2_662-1024x1024.webp'),
(58, 'Cotton Baluchari Saree (Red & White)', 'Handwoven by Biswa Bangla - Women ', 2599, 'bbmc__bbjune049__cotton_set191_shrestha_front2__2022-7-11-15-34-19__1244x1920-640x640.webp', 'bbmc__bbjune049__cotton_set191_shrestha_side__2022-7-11-15-34-48__1244x1920-1024x1024.webp', 'bbmc__bbjune049__cotton_set191_shrestha_back__2022-7-11-15-34-41__1244x1920-1024x1024.webp'),
(59, 'Cotton Baluchari Saree (Grey)', 'Handwoven by Biswa Bangla - Women ', 2499, 'bbmc__030303__cotton_set191_shrestha_front1__2022-2-22-19-26-21__1244x1920-1024x1024.webp', 'bbmc__030303__cotton_set191_shrestha_back__2022-2-22-19-26-37__1244x1920-1024x1024.webp', 'dsc_1187-copy-1024x1024.webp'),
(60, 'Baluchari Silk Saree (Black, Gold)', 'Handwoven by Biswa Bangla - Women ', 2999, 'bbmc__26bc1__silk_set190_shrestha_front__2022-9-26-16-38-42__1244x1920-640x640.webp', 'bbmc__26bc1__silk_set190_shrestha_back__2022-9-26-16-39-20__1244x1920-1024x1024.webp', 'bbmc__26bc1__silk_set190_shrestha_side2_tassels__2022-9-26-16-38-53__1244x1920-1024x1024.webp'),
(61, 'Designer Dhoti & Kurta Set', 'Handwoven by Biswa Bangla - Mens', 3299, 'DBM9006_1_1800x1800.webp', 'DBM9006_2_1800x1800.webp', 'DBM9006_3_1800x1800.webp'),
(62, ' Designer Kurta & Dhoti Set (Black)', 'Handwoven by Biswa Bangla - Mens', 2999, 'CSAM2210052_6_1800x1800.webp', 'CSAM2210052_5_1800x1800.webp', 'CSAM2210052_4_1800x1800.webp'),
(63, 'Designer Kurta & Dhoti Set (Purple, Black)', 'Handwoven by Biswa Bangla - Mens', 2699, 'DBM9005_1_1800x1800.webp', 'DBM9005_3_1800x1800.webp', 'DBM9005_2_1800x1800.webp'),
(64, 'Ikkat Illusion - Pure Cotton Kurta (Red)', 'Handwoven by Biswa Bangla - Mens', 950, 'TSI_8427_eb55a2a5-41c5-4005-a2f7-0491c8fbf87f_1800x1800.webp', 'TSI_8429_6d97b0a0-015d-42bc-b0b0-c7261912c02b_1800x1800.webp', 'TSI_8425copy_71cb4643-2b06-4cb7-a4bf-84ef77e47a14_1800x1800.webp'),
(65, ' Pure Cotton kurta - (Pink)', 'Handwoven by Biswa Bangla - Mens', 850, 'LOU4421-173-114-250-251_1800x1800.webp', 'LOU4419-131-112-248-249_1800x1800.webp', 'LOU4417-104-110-246-247_1800x1800.webp'),
(66, 'Pure Cotton kurta (Purple)', 'Handwoven by Biswa Bangla', 799, 'TSI_9077_1800x1800.webp', 'TSI_9076_1800x1800.webp', 'TSI_9075_1800x1800.webp'),
(67, 'Santiniketan Leather Women Purse', 'Women Bag by Bengal Handicrafts', 349, 'lp1a-1024x1024.webp', 'lp1b-1024x1024.webp', 'lp1c-640x640.webp'),
(68, 'Tan Leather Wallet', 'Mens Bag by Bengal Handicrafts', 329, '714nfuoxn2l-_sl1500_-640x640.webp', '61kkqqmpaul-_sl1500_-1024x1024.webp', '61zuelccokl-_sl1500_-1024x1024.webp'),
(69, 'Leather Handbag with Kantha work', 'Women Handbag by Bengal Handicrafts', 649, '5d120ef6d53b0426f6aee443-640x640.webp', '5d120fb00824e52665c34b04-1024x1024.webp', '5d2c53f494327d63264b68cb-1024x1024.webp'),
(70, 'Santiniketan Leather Hand Bag', 'Women Handbag by Bengal Handicrafts', 899, 'h6a-640x640.webp', 'h6b-1024x1024.webp', '5d2c53f494327d63264b68cb-1024x1024.webp'),
(71, 'Raw Jute Back Pack', 'Handwoven Bag by Bengal Handicrafts', 399, 'layer-9-640x640.webp', 'layer-10-1024x1024.webp', 'layer-9-640x640.webp'),
(72, 'Shantiniketan Leather Sling Bag (Purple)', 'Women Handbag by Bengal Handicrafts', 599, '11-640x640.webp', '819sfiugpyl-_ul1500_-1024x1024.webp', '81yvfzetwel-_ul1500_-1024x1024.webp'),
(73, 'Leather Savings Bank - Ganesh', 'Handwoven Bag by Bengal Handicrafts', 299, 'h4a-640x640.webp', 'h4b-1024x1024.webp', 'h4c-1024x1024.webp'),
(74, 'Leather Piggie Bank - Elephant', 'Handwoven Bag by Bengal Handicrafts', 299, 'h2a-640x640.webp', 'h2b-1024x1024.webp', 'h2c-1024x1024.webp'),
(75, 'Dokra Owl', 'Home Decor Crafted by Bengal Handicrafts', 449, 'dsc_1213-copy-640x640.webp', 'dsc_1212-copy-1024x1024.webp', 'dsc_1215-copy-1024x1024.webp'),
(76, 'Dokra  Ganesha Sitting on Lotus (4 inch)', 'Home Decor Crafted by Bengal Handicrafts', 1299, 'layer-2-640x640.webp', 'layer-5-1024x1024.webp', 'layer-4-1024x1024.webp'),
(77, 'Leather Piggie Bank - Cat', 'Handwoven Bag by Bengal Handicrafts', 329, 'h3a-640x640.webp', 'h3b-1024x1024.webp', 'h3c-1024x1024.webp'),
(79, 'Handcrafted Jute Horse ', 'Jute Handicrafts from Hooghly District - Home Decor', 650, '184987880776499531681367646.jpg', '52666035616087721681367656.jpg', '55935672817209481681367667.jpg'),
(80, 'Hancrafted Jute Owl and Ganesha', 'Jute Handicrafts from Hooghly District - Home Decor', 400, '132375810609022521681368051 (1).jpg', '143112050019461451681368062.jpg', '132375810609022521681368051.jpg'),
(81, 'Hancrafted Jute Owl (Set of 2)', 'Jute Handicrafts from Hooghly District - Home Decor', 350, '88706439759533111681367834.jpg', '235931009886590801681367846.jpg', '51109754811376921681367858.jpg'),
(82, 'Hancrafted Jute Ganesha (Hanging)', 'Jute Handicrafts from Hooghly District - Home Decor', 599, '249818771354337881681368494.jpg', '196965134538556811681368514.jpg', '227176365416725251681368503.jpg'),
(83, 'Begumpuri Cotton Saree (Black, Gold)', 'Handwoven Cotton Saree from Hooghly District - Women', 1299, 'bbmc__aug21g__cotton_set191_shrestha_front2__2022-9-22-0-50-40__1244x1920-640x640.webp', 'bbmc__aug21g__cotton_set191_shrestha_back__2022-9-22-0-51-19__1244x1920-1024x1024.webp', 'bb2_4469-copy-1024x1024.webp'),
(84, 'Dhaniakhali Cotton Saree (Red, Yellow)', 'Handwoven Cotton Saree from Hooghly District - Women', 1499, 'bbmc__mar20f__cotton_set191_shrestha_front2__2023-3-22-12-32-31__1244x1920-640x640.webp', 'bbmc__mar20f__cotton_set191_shrestha_back__2023-3-22-12-32-13__1244x1920-1024x1024.webp', 'bbm_0679-copy-1024x1024.webp'),
(85, 'Begumpuri Cotton Saree (Aqua Blue)', 'Handwoven Cotton Saree from Hooghly District - Women', 1599, 'bbmc__aug21j__cotton_set191_shrestha_front2__2022-9-22-0-51-21__1244x1920-640x640.webp', 'bbmc__aug21j__cotton_set191_shrestha_back__2022-9-22-0-51-31__1244x1920-1024x1024.webp', 'bb2_4545-copy-1024x1024.webp'),
(86, 'Dhaniakhali Cotton Saree', 'Handwoven Cotton Saree from Hooghly District - Women', 1499, 'bbmc__bbjune018__cotton_set191_shrestha_front2__2022-6-20-17-4-6__1244x1920-640x640.webp', 'bbmc__bbjune018__cotton_set191_shrestha_back__2022-6-20-17-4-9__1244x1920-1024x1024 (1).webp', 'dsc_2820-copy-1024x1024 (1).webp'),
(87, 'Dhaniakhali Cotton Saree  (Yellow)', 'Handwoven Cotton Saree from Hooghly District - Women', 1399, 'bbmc__aug21l__cotton_set191_shrestha_front2__2022-9-22-0-52-1__1244x1920-640x640.webp', 'bbmc__aug21l__cotton_set191_shrestha_back__2022-9-22-0-51-23__1244x1920-1024x1024 (1).webp', 'bb2_4538-copy-1024x1024 (1).webp'),
(88, 'Begumpuri Cotton Saree (Yellow)', 'Handwoven Cotton Saree from Hooghly District - Women', 1799, 'bbmc__bbjune061__cotton_set191_shrestha_side__2022-7-22-15-44-22__1244x1920-640x640.webp', 'bbmc__bbjune061__cotton_set191_shrestha_back__2022-7-22-15-45-3__1244x1920-1024x1024.webp', 'dsc_3073-copy-1024x1024.webp'),
(89, 'Ganesh Janani (Clay Craft)', 'Clay Crafts from Nadia District - Home Decor', 799, '4126219989579111651165171.jpg', '143380894319853081651165180.jpg', '4126219989579111651165171.jpg'),
(90, 'Durga Pratima (Medium, Clay Craft)', 'Clay Crafts from Nadia District - Home Decor', 899, '180766499653172241656402634.jpg', '15892633732793981656402643.jpg', '158017744910777681656402663.jpg'),
(91, 'Ganesh Idol (Small, Clay Craft)', 'Clay Crafts from Nadia District - Home Decor', 699, '31893729108968881677913605.jpg', '169837936893858621677913610.jpg', '169837936893858621677913610.jpg'),
(92, ' Kathi Ganesh (Set of 2)', 'Clay Crafts from Nadia District - Home Decor ', 399, '54079350681944691672229147.jpg', '117966758127936651672229157.jpg', '117966758127936651672229157.jpg'),
(93, 'Hand-painted Clay Vases  (Set of 3)', 'Clay Crafts from Nadia District - Home Decor', 800, '152316905762154011681465351.jpg', '153398957507306461681465360.jpg', '217892416318391841681465370.jpg'),
(94, 'Hand-painted Clay Vases (Black and White)', 'Clay Crafts from Nadia District - Home Decor', 899, '179723610242008681681462206.jpg', '21183794873009301681462267.jpg', '188131542185086911681462281.jpg'),
(95, 'Dokra Rickshawala', 'Dokra Crafts from Nadia District - Home Decor', 1299, '134700204900807391624636142.jpg', '38863320751603741624636197.jpg', '20618134896166971624636170.jpg'),
(96, 'Dokra Goddess Saraswati', 'Dokra Crafts from Nadia District - Home Decor', 1399, '22106216901192821624638722.jpg', '118912043947670151624638737.jpg', '6919672566542441624638748.jpg'),
(97, 'Dokra Ganesh Hanging Diya', 'Dokra Crafts from Nadia District - Home Decor', 1599, '179964297122972671624639223.jpg', '17976730100947021624639261.jpg', '216293913126891081624639236.jpg'),
(98, 'Ek-chala Terracotta Durga', 'Terracotta Crafts from Bankura District - Home Decor', 1399, '18487195953430581653293110.jpg', '3810663904730251653293123.jpg', '18487195953430581653293110.jpg'),
(99, 'Terracotta Palki', 'Terracotta Crafts from Bankura District - Home Decor', 1599, '68334911053564441672821944.jpg', '71933998366551801672821955.jpg', '89395203955806871672821970.jpg'),
(100, 'Terracotta Handcrafted Owl (Pecha)', 'Terracotta Crafts from Bankura District - Home Decor', 1699, '103698652683853401673245948.jpg', '216866398788416451673245963.jpg', '45096696656204041673245996.jpg'),
(101, 'Terracotta Elephant and Horse (Set of 2)', 'Terracotta Crafts from Bankura District - Home Decor', 799, '25984057248798251667024102.jpg', '26755707988421561667024125.jpg', '39606405347552551667024135.jpg'),
(102, 'Terracotta Horse', 'Terracotta Crafts from Bankura District - Home Decor', 399, '29468937484316831653457586.jpg', '27820216634872691653457594.jpg', '29468937484316831653457586.jpg'),
(103, 'Terracotta Tiger', 'Terracotta Crafts from Bankura District - Home Decor', 899, '120090144615350371673246761.jpg', '54468495901567681673246773.jpg', '181754169064103161673246789.jpg'),
(104, 'Baluchari Silk Saree (Mustard Yellow)', 'Handwoven Silk Saree from Bankura District - Women', 1499, 'bbmc__mar29a__silk_set190_shrestha_front__2023-4-17-12-15-44__1244x1920-640x640.webp', 'bbmc__mar29a__silk_set190_shrestha_back__2023-4-17-12-15-53__1244x1920-1024x1024.webp', 'bbm_0665-copy-1024x1024.webp'),
(105, 'Baluchari Silk Saree (Blue)', 'Handwoven Silk Saree from Bankura District - Women', 1399, 'bbmc__dec2__silk_set190_shrestha_front__2022-12-16-11-1-29__1244x1920-640x640.webp', 'bbmc__dec2__silk_set190_shrestha_back__2022-12-16-11-1-20__1244x1920-1024x1024.webp', 'bbmc__dec2__all_set0_nomo_blouse__2022-12-16-11-1-42__1244x1920-1024x1024.webp'),
(106, 'Baluchari Silk Saree (Purple)', 'Handwoven Silk Saree from Bankura District - Women', 1499, 'bbmc__dfft6__silk_set172_srijla_front__2022-9-26-16-38-49__1244x1920-640x640.webp', 'bbmc__dfft6__silk_set172_srijla_back__2022-9-26-16-39-1__1244x1920-1024x1024.webp', 'bbmc__dfft6__all_set0_nomo_blouse__2022-9-26-16-38-34__1244x1920-1024x1024.webp'),
(107, ' Baluchari Saree with Zari Mina work (Red)', 'Handwoven Silk Saree from Bankura District - Women', 1899, 'bbmc__bbjune070__silk_set172_srijla_side2__2022-8-1-12-7-58__1244x1920-640x640.webp', 'bbmc__bbjune070__silk_set172_srijla_back__2022-8-1-12-8-33__1244x1920-1024x1024.webp', 'bbhs-5228-1024x1024.webp'),
(109, 'Baluchari Silk Saree (Off-White)', 'Handwoven Silk Saree from Bankura District - Women', 1699, '32-640x640.webp', 'img_8202-1024x1024.webp', 'img_8215-1024x1024.webp'),
(110, 'Shola-pith Elephant chariot (Small, 6&#34;)', 'Shola-pith Crafts from Birbhum District - Home Decor', 299, 'sho0004-500x500_0.jpg', 'sho0004-004-500x500_0.jpg', 'sho0004-004-500x500_0.jpg'),
(111, 'Shola Pith - Peacock Boat (Small, 9&#34;)', 'Shola-pith Crafts from Birbhum District - Home Decor', 399, 'sho0001-500x500_0.jpg', 'sho0001-500x500_0.jpg', 'sho0001-500x500_0.jpg'),
(112, 'Shola-pith Durga Family', 'Shola-pith Crafts from Birbhum District - Home Decor', 1499, 'sho0020-500x500_0.jpg', 'sho0020-005-500x500_0.jpg', 'sho0020-006-500x500_0.jpg'),
(113, 'Shola-pith - Sail boat (Small, 8&#34;)', 'Shola-Pith Crafts from Birbhum District - Home Decor', 349, 'sho0014-500x500_0.jpg', 'sho0014-500x500_0.jpg', 'sho0014-500x500_0.jpg'),
(114, 'Wooden Coasters (Set of 4)', 'Wooden Crafts from Birbhum District - Home Decor', 399, '43675385844844331681372254.jpg', '125558848988326681681372245.jpg', '115509584853422321681372236.jpg'),
(115, 'Wooden King & Queen (Set of 2)', 'Wooden Crafts from Birbhum District - Home Decor', 129, '229062117916885501667931019.jpg', '154026677886889771667931028.jpg', '229062117916885501667931019.jpg'),
(116, 'Byangoma Byangomi Set (Set of 2)', 'Wooden Crafts from Birbhum District - Home Decor', 199, '139254275534601621667930671.jpg', '139254275534601621667930671.jpg', '139254275534601621667930671.jpg'),
(117, 'Cotton Scarf with Kantha work (Indigo)', 'Kantha Work from Birbhum District ', 799, '2-640x640.webp', '2a-1024x1024.webp', '2-640x640.webp'),
(118, 'Kantha Shawl (Offwhite)', 'Kantha Work from Birbhum District ', 999, 'shawl-c6-640x640.webp', 'untitlefgfd-1-1024x1024.webp', 'shawl-c6-640x640.webp'),
(119, 'Batik Print Silk Saree (Purple)', 'Batik work from Birbhum District - Women', 1399, 'bbmc__bbjune07__silk_set190_shrestha_front__2022-6-15-16-16-14__1244x1920-640x640.webp', 'bbmc__bbjune07__silk_set190_shrestha_back_tassels__2022-6-15-16-16-22__1244x1920-1024x1024.webp', 'dsc_2711-copy-1024x1024.webp'),
(120, 'Batik Print Silk Saree (Black, Yellow)', 'Batik work from Birbhum District - Women', 1199, 'bbmc__bbjune03__silk_set172_srijla_side__2022-6-15-12-3-31__1244x1920-640x640.webp', 'bbmc__bbjune03__silk_set172_srijla_back__2022-6-15-12-3-45__1244x1920-1024x1024.webp', 'dsc_2726-copy-1024x1024.webp'),
(121, ' White Muslin with Kantha Stitch Dupatta', 'Kantha work from Birbhum District ', 499, '7-640x640.webp', '7a-1024x1024.webp', '7-640x640.webp'),
(122, 'Batik Printed Cotton Shirt (Half Sleeve, Chakra)', 'Batik work from Birbhum District - Men', 699, 'rgsd001-640x640.webp', 'rgsd002-1024x1024.webp', 'rgsd001-640x640.webp'),
(123, 'Batik Printed Cotton Shirt ( Half Sleeve, Abstract)', 'Batik work from Birbhum District - Men', 799, 'rgsc001-640x640.webp', 'rgsc002-1024x1024.webp', 'rgsc001-640x640.webp'),
(124, 'Batik Printed Cotton  Shirt (Half Sleeve, Flower)', 'Batik work from Birbhum District', 699, 'rgse001-640x640.webp', 'rgse002-640x640.webp', 'rgse001-640x640.webp'),
(125, 'Multicolored Kantha Stitch Tappi Stole', 'Kantha work from Birbhum District', 1399, 'bb-d2_487-1024x1024.webp', 'bb-d2_488-1024x1024.webp', '5d3aeaba723537391a86fbaf-1024x1024.webp'),
(126, 'Handmade Mojaris (Green Fabric)', 'Women Footwear', 799, 'ftwsmamjrsms3ss23grn_1.webp', 'ftwsmamjrsms3ss23grn_2.webp', 'ftwsmamjrsms3ss23grn_5.webp'),
(127, 'Handmade Mojaris (White)', 'Women Footwear', 699, 'ftwsmsmjr61006aw22pink_1.webp', 'ftwsmsmjr61006aw22pink_2.webp', 'ftwsmsmjr61006aw22pink_5.webp');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`) VALUES
(1, 'Sayan', 'sensayanti8@gmail.com', '8cb2237d0679ca88db6464eac60da96345513964'),
(2, 'Sayan', 'sensayanti7@gmail.com', '8cb2237d0679ca88db6464eac60da96345513964'),
(3, 'Sayan Bhattacharya', 'bhattacharyasayan6@gmail.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220'),
(4, 'Atrick', 'banerjeeatrick@gmail.com', 'fc1200c7a7aa52109d762a9f005b149abef01479'),
(5, 'jyoti', 'jyoti@gmail.com', 'b2029ba5ea1042d78c96d3888897571eea8c27fa');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`id`, `user_id`, `pid`, `name`, `price`, `image`) VALUES
(2, 4, 86, 'Dhaniakhali Cotton Saree', 1499, 'bbmc__bbjune018__cotton_set191_shrestha_front2__2022-6-20-17-4-6__1244x1920-640x640.webp');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=128;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
