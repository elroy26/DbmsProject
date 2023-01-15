-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 15, 2023 at 06:57 AM
-- Server version: 8.0.31
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `furniture-shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int NOT NULL,
  `name` varchar(50) NOT NULL,
  `image` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `image`, `email`, `password`) VALUES
(1, 'admin', 'logo.png', 'admin@gmail.com', 'abc123');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `cart_id` int NOT NULL,
  `cust_id` int NOT NULL,
  `product_id` int NOT NULL,
  `quantity` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`cart_id`, `cust_id`, `product_id`, `quantity`) VALUES
(28, 5, 42, 2),
(86, 4, 42, 2),
(87, 4, 40, 1),
(88, 4, 41, 1),
(89, 4, 37, 1),
(90, 5, 40, 1),
(91, 5, 13, 1),
(99, 1, 42, 2),
(102, 6, 40, 1);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int NOT NULL,
  `category` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `fontawesome-icon` varchar(25) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_croatian_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category`, `fontawesome-icon`) VALUES
(1, 'bed set', 'fa-bed'),
(2, 'Dining set', 'fa-utensils-alt'),
(3, 'Chairs', 'fa-chair-office'),
(4, 'Table', 'fa-columns'),
(5, 'Sofa', 'fa-couch');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `cust_id` int NOT NULL,
  `cust_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `cust_email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `cust_pass` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `cust_add` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `cust_city` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `cust_postalcode` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `cust_number` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_croatian_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`cust_id`, `cust_name`, `cust_email`, `cust_pass`, `cust_add`, `cust_city`, `cust_postalcode`, `cust_number`) VALUES
(6, 'Elroy Merwyn Monis', 'xyz@gmail.com', '123emm2u', 'OLIVET 76 badagabettu Bailoor Udupi 576101', 'mangalore', '576101', '8050393508');

-- --------------------------------------------------------

--
-- Table structure for table `customer_order`
--

CREATE TABLE `customer_order` (
  `order_id` int NOT NULL,
  `customer_id` int NOT NULL,
  `customer_email` varchar(100) NOT NULL,
  `customer_fullname` varchar(100) NOT NULL,
  `customer_address` varchar(225) NOT NULL,
  `customer_city` varchar(50) NOT NULL,
  `customer_pcode` int NOT NULL,
  `customer_phonenumber` varchar(100) NOT NULL,
  `product_id` int NOT NULL,
  `product_amount` int NOT NULL,
  `products_qty` int NOT NULL,
  `order_date` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer_order`
--

INSERT INTO `customer_order` (`order_id`, `customer_id`, `customer_email`, `customer_fullname`, `customer_address`, `customer_city`, `customer_pcode`, `customer_phonenumber`, `product_id`, `product_amount`, `products_qty`, `order_date`) VALUES
(74, 6, 'xyz@gmail.com', 'Elroy Merwyn Monis', 'OLIVET 76 badagabettu Bailoor Udupi 576101', 'Udupi', 576101, '8050393508', 42, 12050, 1, '12-01-2023'),
(75, 6, 'xyz@gmail.com', 'Elroy Merwyn Monis', 'OLIVET 76 badagabettu Bailoor Udupi 576101', 'Udupi', 576101, '8050393508', 41, 36150, 3, '13-01-2023'),
(76, 6, 'xyz@gmail.com', 'Elroy Merwyn Monis', 'OLIVET 76 badagabettu Bailoor Udupi 576101', 'Udupi', 576101, '8050393508', 39, 74700, 3, '13-01-2023'),
(77, 6, 'xyz@gmail.com', 'Elroy Merwyn Monis', 'OLIVET 76 badagabettu Bailoor Udupi 576101', 'Udupi', 576101, '8050393508', 40, 12400, 1, '13-01-2023'),
(78, 6, 'xyz@gmail.com', 'Elroy Merwyn Monis', 'OLIVET 76 badagabettu Bailoor Udupi 576101', 'Udupi', 576101, '8050393508', 42, 12050, 1, '13-01-2023'),
(79, 6, 'xyz@gmail.com', 'Elroy Merwyn Monis', 'OLIVET 76 badagabettu Bailoor Udupi 576101', 'Udupi', 576101, '8050393508', 42, 12050, 1, '13-01-2023'),
(82, 6, 'xyz@gmail.com', 'Elroy Merwyn Monis', 'OLIVET 76 badagabettu Bailoor Udupi 576101', 'mangalore', 576101, '8050393508', 42, 12050, 1, '15-01-2023'),
(83, 6, 'xyz@gmail.com', 'Elroy Merwyn Monis', 'OLIVET 76 badagabettu Bailoor Udupi 576101', 'mangalore', 576101, '8050393508', 42, 12050, 1, '15-01-2023');

-- --------------------------------------------------------

--
-- Table structure for table `furniture_product`
--

CREATE TABLE `furniture_product` (
  `pid` int NOT NULL,
  `title` varchar(80) NOT NULL,
  `category` int NOT NULL,
  `detail` text NOT NULL,
  `price` int NOT NULL,
  `size` varchar(40) NOT NULL,
  `image` varchar(200) NOT NULL,
  `date` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `furniture_product`
--

INSERT INTO `furniture_product` (`pid`, `title`, `category`, `detail`, `price`, `size`, `image`, `date`) VALUES
(4, 'This is new modern Chair', 3, '<p>This is new modern Chair with exquisite\r\nhandle arm to keep your hand and sit with at most comfort. </p>\r\n', 22000, '35w x 35H (inches)', 'armchair.jpg', '12-01-2023'),
(5, 'This is new modern Chair', 3, '<p>This is new modern Chair with premium style design and the comforting golden color is going to relax your mind.</p>\r\n', 19000, '35w x 35H (inches)', 'chairyellow.jpg', '1-1-2023'),
(11, 'Esquel 2 Seater Sofa with Side Rest - Gray', 5, '<p>Esquel 2 Seater Sofa with side rest will give you comfort and add brand new style to your space by also adding a pop of Gray</p>\r\n', 57500, '84w X 30h', 'Esquel2SeaterSofawithSideRest-Gray2_1024x1024.webp', '1-01-2023'),
(13, 'Esquel 1 Seater Sofa - Gray', 5, '<p>Esquel 1 Seater Sofa will give you comfort and add brand new style to your space by also adding a pop of Gray</p>\r\n', 30500, '33.5w X 27h', 'Esquel1SeaterSofa-Gray3_1024x1024.webp', '1-01-2023'),
(14, 'Boeno 1 Seater Sofa - Charcoal Gray', 5, '<p>Exquisitely designed for your comfort Boeno 1 Seater Sofa will enhance the look of your place and add its Charcoal Gray color to make the place look more radiant</p>\r\n', 28500, '33.5w X 27h', 'Boeno1SeaterSofa-CharcoalGray_1024x1024.webp', '1-01-2023'),
(19, 'Flavia 2 Seater Sofa - Azul Green', 5, '<p>Chic and always in style Flavia 2 seater sofa can totally change the way your space looks by adding Azul Green to your array of existing shades.</p>\r\n', 51500, '57.3w X 17.9h', '14aaa_1024x1024.webp', '1-01-2023'),
(20, 'Lazarus Visiting Chair', 3, '<p>Height: 33 inches. Width: 23 inches. Length: 21 inches. Material: Padded seat and back with metal chrome frame</p>\r\n', 8160, '23w x 21h', 'Lazarus_Visiting_Chair_1_1024x1024.jpg', '1-01-2023'),
(21, 'Fuzzer Executive Chair', 3, '<p>Seat and back Padded with foam and fabric, nylon base and hydraulic system .; Hieght(Inches) 30; Length(Inches) 25; Width(Inches) 21</p>\r\n', 13999, '25w x 21h', 'executive_chair_d3f61e67-8aa0-478d-982c-911bbe4cc033_1024x1024.jpg', '1-01-2023'),
(24, 'Julien Upholstered Double Bed', 1, '<p>Gorgeous yet reliable, Julien is an amazing craft with a fine upholstered headboard. It comes with additional storage drawers that keep your clutter hidden and strike a dapper look for your bedroom.</p>\r\n', 99000, '60w X 35h', '39_f802b777-ca58-4edf-94e5-ba24155d02aa_1024x1024.jpg', '1-01-2023'),
(25, 'Brisk Double Bed - Walnut', 1, '<p>The ultimate snooze partner,&nbsp;Brisk is the ideal one for your bedroom. The fine craft accents the design and helps you relax after a tiring day at work. Walnut color says Minimal &amp; Effective!</p>\r\n', 79000, '60w X 35h', '46_ce9acbf1-005f-4f0e-869d-2ad350941303_1024x1024.jpg', '1-01-2023'),
(26, 'Brisk Double Bed - Black Walnut', 1, '<p>The ultimate snooze partner, Brisk is the ideal one for your bedroom. The fine craft accents the design and helps you relax after a tiring day at work. Black walnut color says Bold &amp; Blunt!</p>\r\n', 83500, '60w X 35h', '45_949c002d-b4b9-4635-a154-7db9b1de7385_1024x1024.jpg', '1-01-2023'),
(32, 'Spruce Double Bed', 1, '<p>This elegant bed is a simple yet aesthetic design that would make a gorgeous choice for your bedroom. </p>\r\n', 65000, '50w X 35h', '32aaaaa_1024x1024.jpg', '1-01-2023'),
(34, 'Aurore Dining Table', 2, '<p>Material:Dining Table glass top size 4.5x2.5 legs made of solid wood with black polish. Hieght: 30 Inches Width: 31 Inches Length: 53.5 Inches</p>\r\n', 14600, '31w x 53.5h', 'AURORE_9646f9ee-7510-406a-b2c4-72b8bfb62501_1024x1024.webp', '1-01-2023'),
(35, 'Raimi Dining Set', 2, '<p>Table Height: 29 inchesWidth: 36 inchesMaterial: Melamine faced water and heat resistant MDF and iron legsChair Height: 27 inchesWidth: 16 inches</p>\r\n', 54050, '27w x 16h', 'raimi_2_14e717a7-b66f-471c-9f7d-70d564968d3e_1024x1024.webp', '1-01-2023'),
(36, 'Tapert Dining Set-Black', 2, '<p>Table Height: 30 inchesWidth: 34 inchesMaterial: Melamine faced water and heat resistant MDF and beechwood legsChair Height: 39 inchesWidth: 19 inchesMaterial: Beechwood legs, Foam padded PU leather upholstery.</p>\r\n', 54550, '39w x 19h', 'tapert_black_3_148f8213-457b-491d-9434-6cd40cc16471_1024x1024.webp', '1-01-2023'),
(37, 'Tapert Dining Set-White', 2, '<p>Table Height: 30 inchesWidth: 34 inchesMaterial: Melamine faced water and heat resistant MDF and beechwood legsChair Height: 39 inchesWidth: 19 inchesMaterial: Beechwood legs, Foam padded PU leather upholstery.</p>\r\n', 57000, '39w x 19h', 'tapert_a5df0f6b-6717-4707-abe7-da623cdcdf2c_1024x1024.webp', '1-01-2023'),
(39, 'Lorenzo Table', 4, '<p>Top made of MDF covered with PVC paper having four stools, frame made of MS pipe powder coated black color.</p>\r\n', 24900, '25w X 22h', 'coffee-table-design-glass-and-wood-scandinavian-fiord-l-110xp60xh45cm.jpg', '1-01-2023'),
(40, 'Estela Table', 4, '<p>Height: 4 inches. Width: 20 inches. Length: 5.5 inches.Top made of printed tempered glass, legs made of MS pipe powder coated black color.</p>\r\n', 12400, '20w x 4h', 'aza_1024x1024.jpg', '1-01-2023'),
(41, 'Diogo Table', 4, '<p>Height: 4 inches. Width: 18 inches. Length: 8 inches. Top made of MDF wood texture, legs made of MS powder coated black.</p>\r\n', 12050, '18w x 4h', 'FC-FUR-BS-510_1024x1024.jpg', '1-01-2023'),
(42, 'Erico Table', 4, '<p>Height: 4 inches. Width: 20 inches. Length: 5.5 inches.Top made of printed tempered glass, legs made of MS pipe powder coated black color.</p>\r\n', 12050, '20w X 5.5h', 'sads_1024x1024.jpg', '1-01-2023');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cart_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`cust_id`);

--
-- Indexes for table `customer_order`
--
ALTER TABLE `customer_order`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `furniture_product`
--
ALTER TABLE `furniture_product`
  ADD PRIMARY KEY (`pid`),
  ADD KEY `category` (`category`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `cart_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `cust_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `customer_order`
--
ALTER TABLE `customer_order`
  MODIFY `order_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT for table `furniture_product`
--
ALTER TABLE `furniture_product`
  MODIFY `pid` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `furniture_product` (`pid`);

--
-- Constraints for table `customer_order`
--
ALTER TABLE `customer_order`
  ADD CONSTRAINT `customer_order_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`cust_id`),
  ADD CONSTRAINT `customer_order_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `furniture_product` (`pid`);

--
-- Constraints for table `furniture_product`
--
ALTER TABLE `furniture_product`
  ADD CONSTRAINT `furniture_product_ibfk_1` FOREIGN KEY (`category`) REFERENCES `categories` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
