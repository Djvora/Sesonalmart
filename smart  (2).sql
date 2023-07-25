-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 30, 2021 at 04:50 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `smart`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `a_id` int(3) NOT NULL,
  `a_username` varchar(30) NOT NULL,
  `a_password` varchar(10) NOT NULL,
  `a_email` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`a_id`, `a_username`, `a_password`, `a_email`) VALUES
(34, 'user', 'password', 'ab@gmail.com'),
(46, 'vandan123', 'vdraval', 'vandanraval2002@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `cancellation`
--

CREATE TABLE `cancellation` (
  `cs_id` int(3) NOT NULL,
  `u_id` int(3) NOT NULL,
  `p_id` int(3) NOT NULL,
  `s_id` int(3) NOT NULL,
  `cancellation_reason` mediumtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `uid` int(11) NOT NULL,
  `cart_id` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_price` varchar(50) NOT NULL,
  `product_image` varchar(255) NOT NULL,
  `quantity` int(10) NOT NULL,
  `total_price` varchar(100) NOT NULL,
  `product_code` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `delivery`
--

CREATE TABLE `delivery` (
  `delivery_id` int(3) NOT NULL,
  `deliveryaddress` varchar(150) NOT NULL,
  `status` varchar(100) NOT NULL,
  `deliverytime` datetime(6) NOT NULL,
  `deliverydate` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `deliveryboy`
--

CREATE TABLE `deliveryboy` (
  `db_id` int(3) NOT NULL,
  `db_username` varchar(30) NOT NULL,
  `db_email` varchar(50) NOT NULL,
  `db_password` varchar(10) NOT NULL,
  `db_sex` varchar(10) NOT NULL,
  `db_contactno` int(10) NOT NULL,
  `db_dob` int(100) NOT NULL,
  `db_address` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `deliveryboy`
--

INSERT INTO `deliveryboy` (`db_id`, `db_username`, `db_email`, `db_password`, `db_sex`, `db_contactno`, `db_dob`, `db_address`) VALUES
(2, 'devanshu', 'djvora@gmail.com', 'HKH78', 'male', 2147483647, 2003, 'maninagar,nr jain derasar,ahmedabad'),
(3, 'dhruvam', 'dhruvam@gmail.com', '4564sad', 'male', 2147483647, 2002, 'g14-swami appt,sarkhej , sg highway,ahmedabad'),
(4, 'parth', 'parth67@gmail.com', 'sei43rd', 'female', 2147483647, 26, 'E-4-202 ,7days ,dariyapur,ahmedabad');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `f_id` int(3) NOT NULL,
  `uid` int(3) NOT NULL,
  `feedbacksubject` varchar(20) NOT NULL,
  `feedbackmessage` longtext NOT NULL,
  `postingdate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`f_id`, `uid`, `feedbacksubject`, `feedbackmessage`, `postingdate`) VALUES
(17, 17, 'for product', 'very nice', '2021-03-20 19:34:42'),
(18, 17, 'for product', 'very nice', '2021-03-20 19:35:02'),
(21, 31, 'best', 'good', '2021-03-20 19:39:29'),
(22, 25, 'good', 'very good', '2021-03-20 19:39:29'),
(23, 24, 'good', 'grate', '2021-03-20 20:59:11'),
(24, 24, 'good', 'grate', '2021-03-20 21:01:26'),
(25, 24, 'good', 'grate', '2021-03-20 21:01:35'),
(26, 26, 'thank you', 'parth', '2021-03-20 21:04:32'),
(27, 26, 'thank you', 'parth', '2021-03-20 21:05:36'),
(28, 26, 'thank you', 'parth', '2021-03-20 21:05:46'),
(29, 26, 'thank you', 'parth', '2021-03-20 21:07:06'),
(30, 34, 'parth', 'sarvaiya', '2021-03-21 05:37:16'),
(31, 34, '', '', '2021-03-21 05:38:49'),
(32, 24, 'GOOD', 'THANKYOU', '2021-04-26 05:49:37'),
(33, 24, 'GOOD', 'sarvaiya', '2021-04-26 05:54:59');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `order_id` int(3) NOT NULL,
  `u_id` int(3) NOT NULL,
  `s_id` int(3) NOT NULL,
  `order_status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `orderdetails`
--

CREATE TABLE `orderdetails` (
  `order_id` int(3) NOT NULL,
  `uid` int(3) NOT NULL,
  `p_id` int(30) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `quantity` int(10) NOT NULL,
  `amount` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orderdetails`
--

INSERT INTO `orderdetails` (`order_id`, `uid`, `p_id`, `time`, `quantity`, `amount`) VALUES
(206, 24, 47, '2021-03-26 20:50:37', 1, 250),
(207, 24, 47, '2021-03-26 20:53:01', 1, 30),
(208, 24, 34, '2021-03-27 03:00:07', 1, 30),
(212, 31, 36, '2021-03-27 04:27:19', 1, 250),
(237, 24, 36, '2021-03-27 04:28:34', 1, 250),
(238, 24, 36, '2021-03-27 04:31:02', 1, 250),
(239, 24, 36, '2021-03-27 04:31:02', 1, 250),
(240, 24, 36, '2021-03-27 04:40:48', 1, 250),
(241, 24, 36, '2021-03-27 04:42:11', 1, 250),
(242, 24, 37, '2021-03-27 04:44:49', 1, 700),
(243, 24, 36, '2021-03-27 04:44:50', 1, 250),
(244, 35, 37, '2021-03-27 05:28:41', 2, 700),
(245, 24, 39, '2021-04-02 18:16:57', 1, 400),
(246, 24, 36, '2021-04-11 06:58:22', 1, 250),
(247, 24, 56, '2021-04-29 12:27:38', 1, 100),
(248, 24, 55, '2021-04-29 12:35:08', 1, 450);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `address` varchar(255) NOT NULL,
  `payment_mode` varchar(20) NOT NULL,
  `products` varchar(255) NOT NULL,
  `paid_amount` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` int(11) NOT NULL,
  `sid` int(3) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_type` varchar(100) NOT NULL,
  `product_price` varchar(50) NOT NULL,
  `product_image` varchar(255) NOT NULL,
  `product_code` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `sid`, `product_name`, `product_type`, `product_price`, `product_image`, `product_code`) VALUES
(7, 6, 'banana', 'summer', '80', 'banana.jpg', ''),
(9, 6, 'Shorts', 'summer', '150', 'cloths.jpg', ''),
(10, 6, 'polarized square mens sunglasses', 'summer', '600', 'polarois square men_s sunglasses.jpg', ''),
(11, 6, 'polarized square mens sunglasses', 'summer', '600', 'polarois square men_s sunglasses.jpg', '');

-- --------------------------------------------------------

--
-- Table structure for table `productdetails`
--

CREATE TABLE `productdetails` (
  `p_id` int(3) NOT NULL,
  `productname` varchar(50) NOT NULL,
  `productdetails` varchar(100) NOT NULL,
  `price` int(10) NOT NULL,
  `primage1` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `productdetails`
--

INSERT INTO `productdetails` (`p_id`, `productname`, `productdetails`, `price`, `primage1`) VALUES
(1, 'mango', 'summer product', 600, 'mango.jpg'),
(3, 'banana', 'all seasonal product', 100, 'banana.jpg'),
(4, 'banana', 'all seasonal product', 100, 'banana.jpg'),
(5, 'umbrella', '50% off', 500, 'umb.jpg'),
(6, '', '', 0, ''),
(7, 'T-shirt', 'man t-shirs', 300, 't shirts.jpg'),
(8, 'jacket', 'winter item', 500, 'jacket.jpg'),
(9, 'bikeraincover', 'monsoon', 700, 'bikeraincover.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `return`
--

CREATE TABLE `return` (
  `return_id` int(3) NOT NULL,
  `returning_reason` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `seller`
--

CREATE TABLE `seller` (
  `s_id` int(3) NOT NULL,
  `s_username` varchar(30) NOT NULL,
  `s_email` varchar(50) NOT NULL,
  `s_password` varchar(10) NOT NULL,
  `s_contactno` int(10) NOT NULL,
  `s_gstno` int(15) NOT NULL,
  `s_sex` varchar(10) NOT NULL,
  `s_dob` varchar(100) NOT NULL,
  `s_address` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `seller`
--

INSERT INTO `seller` (`s_id`, `s_username`, `s_email`, `s_password`, `s_contactno`, `s_gstno`, `s_sex`, `s_dob`, `s_address`) VALUES
(6, 'vansh ', 'vansh2@gmail.com', 'asdasd', 1234567891, 2147483647, 'male', '04-12-1999', 'akhbar nagar,kathlal'),
(8, 'vandan', 'vandan12@gmail.com', 'sadsa', 2147483647, 2147483647, 'male', '04-08-2002', 'akhbar nagar ,ahmedabad'),
(10, 'rahul ', 'rahulvaghela@gmail.com', 'as3', 2147483647, 2147483647, 'male', '04-08-2002', 'asdasdsafjndkac'),
(15, 'Maulikbhai', 'maulikraval67@gmail.com', 'maulik8866', 2147483647, 2147483647, 'Male', '11/01/1992', 'anand mangal,bejalpur,ahmedabad'),
(20, 'jugal', 'jugal12@gmail.com', 'jugal123', 2147483647, 2147483647, 'Male', '04/08/2002', 'jugal,ahmedabad');

-- --------------------------------------------------------

--
-- Table structure for table `tblproduct`
--

CREATE TABLE `tblproduct` (
  `id` int(30) NOT NULL,
  `sid` int(3) NOT NULL,
  `name` varchar(255) NOT NULL,
  `ptype` varchar(10) NOT NULL,
  `image` varchar(900) NOT NULL,
  `price` double(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblproduct`
--

INSERT INTO `tblproduct` (`id`, `sid`, `name`, `ptype`, `image`, `price`) VALUES
(34, 6, 'banana', 'summer', 'banana.jpg', 60.00),
(35, 6, 'Man Jacket', 'winter', 'COTTON JACKET.jpeg', 900.00),
(36, 6, 'Shorts', 'summer', 'cloths.jpg', 250.00),
(37, 6, 'polarized square mens sunglasses', 'summer', 'polarois square men_s sunglasses.jpg', 700.00),
(38, 6, 'Nivya Body Lotion', 'summer', 'body lotion 2.jpg', 175.00),
(39, 6, '4 ltr tank toy pchkari with 100 free balloons', 'summer', '4 ltr tank toy pchkari with 100 free balloons.jpg', 400.00),
(40, 6, 'holi puja kit(7+ items)', 'summer', 'arkam holi puja kit(25+ items).jpg', 360.00),
(41, 6, 'Bura Na Mano Holi t-shirt for Men', 'summer', 'Bura Na Mano Holi t-shirt for Men.jpg', 250.00),
(42, 6, 'Bura Na Mano Holi t-shirts for Couple', 'summer', 'Bura Na Mano Holi t-shirts for Couple.jpg', 600.00),
(43, 10, '10  pure natural skin-friendly holi gulal - 6 assorted colors(100 grams)', 'summer', 'All natural 100_ pure _ natural skin-friendly holi gulal - 6 assorted colors(100 g each).jpg', 120.00),
(44, 10, 'Ascension Plastic AK47 Gun Toy Holi Pressure Water Gun Pichkari Tank for Children Holi Pool Party (Pack of 2)', 'summer', 'Ascension Plastic AK47 Gun Toy Holi Pressure Water Gun Pichkari Tank for Children Holi Pool Party (Pack of 2).jpg', 450.00),
(45, 10, 'Ascension Plastic PubG Water Gun Pichkari Tank Toy with Magic Balloons', 'summer', 'Ascension Plastic PubG Water Gun Pichkari Tank Toy with Magic Balloons.jpg', 250.00),
(46, 10, 'holi water gun with tank', 'summer', 'holi water gun with tank.jpg', 350.00),
(47, 10, 'double nozzle pichkari with ballons', 'summer', 'double nozzle pichkari with ballons.jpg', 250.00),
(48, 10, 'herbal eco-friendly gulaal', 'summer', 'herbal eco-friendly gulaal.jpg', 300.00),
(49, 10, 'GUN PICHKARI', 'summer', 'pichkari 2.jpg', 150.00),
(50, 10, 'pichkari 3 big size more pressure', 'summer', 'pack of 6 unisex sunglasses.jpg', 1000.00),
(51, 10, 'davidoff perfume for men', 'summer', 'davidoff perfume for men.jpg', 400.00),
(52, 10, 'Holi Puja Kit', 'summer', 'Holi Puja Kit.jpg', 250.00),
(55, 15, 'ice cream face mask', 'summer', 'ice cream face mask.jpg', 450.00),
(56, 15, 'Simple Pichkari', 'summer', 'pichkari.jpg', 100.00),
(57, 15, 'multicolor water balloons (1000 pcs)', 'summer', 'multicolor water balloons (1000 pcs).jpg', 150.00),
(58, 15, 't-shirt  for kids', 'summer', 'tee for kids.jpg', 99.00),
(59, 15, 'gulal gang holi tees unisex', 'summer', 'gulal gang holi tees unisex.jpg', 325.00),
(60, 15, 'pack of 6 unisex sunglasses', 'summer', 'pack of 6 unisex sunglasses.jpg', 3000.00),
(61, 15, 'water balloon pumping pichkari (300 pcs balloons)', 'summer', 'water balloon pumping pichkari (300 pcs balloons).jpg', 800.00),
(62, 15, 'Powerpuff - Kids Happy Holi 3D Deisgn T-Shirts', 'summer', 'Powerpuff - Kids Happy Holi 3D Deisgn T-Shirts.jpg', 250.00),
(63, 15, 'lakme sun protection cream', 'summer', 'lakme sun protection cream.jpg', 175.00),
(64, 15, 'face-wash', 'summer', 'primary-products-face-wash.jpg', 100.00),
(65, 15, 'Gradient aviator mens sunglasses', 'summer', 'Gradient aviator men_s sunglasses.jpg', 350.00),
(66, 15, 'rayban men sunglasses', 'summer', 'rayban men sunglasses.jpg', 500.00),
(67, 15, 'Non-Toxic Eco Friendly Holi Herbal Gulal Spray Bottle (pack of 4)', 'summer', 'Non-Toxic Eco Friendly Holi Herbal Gulal Spray Bottle (pack of 4).jpg', 650.00),
(68, 15, 'popo toys holi anar color gulal fog (3 pcs)', 'summer', 'popo toys holi anar color gulal fog (3 pcs).jpg', 150.00),
(69, 15, 'body wash summer', 'summer', 'body wash summer.jpg', 200.00),
(70, 15, 'IDEE unisex sunglasses', 'summer', 'IDEE unisex sunglasses.jpg', 500.00),
(71, 15, 'Popo Toys Holi Magic Balloons Auto Fill  Tie - 3 Bunch (111 Balloons)', 'summer', 'Popo Toys Holi Magic Balloons Auto Fill _ Tie - 3 Bunch (111 Balloons).jpg', 900.00),
(72, 15, 'musical singing greeting card holi', 'summer', 'musical singing greeting card holi.jpg', 100.00),
(73, 15, 'mango kesar keri', 'summer', 'mango.jpg', 600.00),
(74, 8, 'plainumbrella', 'monsoon', 'plainumbrella.jpg', 700.00),
(76, 10, 'raincoat formen', 'monsoon', 'dj.jpg', 400.00),
(77, 15, 'Umbrella for Kids', 'monsoon', 'kids.jpg', 350.00),
(78, 15, 'Large Umbrella', 'monsoon', 'designer.jpg', 700.00),
(79, 20, 'xyz', 'monsoon', 'pichkari.jpg', 70.00);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `u_id` int(3) NOT NULL,
  `u_username` varchar(30) NOT NULL,
  `u_email` varchar(50) NOT NULL,
  `u_sex` varchar(10) NOT NULL,
  `u_password` varchar(10) NOT NULL,
  `u_contactno` int(10) NOT NULL,
  `u_dob` varchar(100) NOT NULL,
  `u_areaname` varchar(20) NOT NULL,
  `u_address` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`u_id`, `u_username`, `u_email`, `u_sex`, `u_password`, `u_contactno`, `u_dob`, `u_areaname`, `u_address`) VALUES
(16, 'parth', 'parth123@gmail.com', 'female', 'sarvaiya95', 2147483647, '15-08-2002', 'ambawadi', 'jaymangal,ahmedabad,380013'),
(17, 'vraj', 'vajravat@gmail.com', 'male', 'asdasd', 755845647, '15-08-2004', 'ashram road', 'naheru nagae maninagar'),
(20, 'jagdip kaka', 'jagdipkaka@gmail.com', 'male', 'asd23', 2147483647, '2002-01-12', 'bapunagar  ', 'maninagar wadaj'),
(21, 'jagdip kaka', 'jagdipkaka@gmail.com', 'male', 'asd23', 2147483647, '2002-01-12', 'bodakdev', 'maninagar wadaj'),
(22, 'jagdip kaka', 'jagdipkaka@gmail.com', 'male', 'asd23', 2147483647, '2002-01-12', 'bopal', 'maninagar wadaj'),
(24, 'vandan', 'vandanraval2002@gmail.com', 'male', '1234', 2147483647, '2002-08-04', 'chaloda', 'shivam,ahmedabad,new wadaj,380013'),
(25, 'mahek', 'mahek1234@gmail.com', 'Female', 'mdkasjd78', 2147483647, '2000-02-15', 'chandlodia', 'jay mangal ,ahmedabad, degree'),
(26, 'bora', 'bora12@gmail.com', 'Male', 'asd646', 2147483647, '2009-02-14', 'chandranagar', 'maninagar,ahmedabad-380013'),
(27, 'rahul', 'ahulpanchal@gmail.co', 'Male', '4564dsa', 2147483647, '2009-02-14', 'civil hospital', 'sarkhej highway'),
(28, 'parth sarvaiya', 'parthbora12@gmail.co', 'Male', 'djksf2', 2147483647, '26-12-2004', 'ctm char rasta ', 'maninagar'),
(29, 'parth sarvaiya', 'parthbora12@gmail.co', 'Male', 'djksf2', 2147483647, '26-12-2004', 'dariapur', 'maninagar'),
(30, 'naishu', 'naishu@gmail.com', 'Female', '256d4sf', 2147483647, '04/08/2001', 'gandhi ashram', 'ijdskllkndslknfd'),
(31, 'sumit', 'sumit@gmail.com', 'Male', 'sad87879', 1234567891, '30/01/2003', 'gandhi road', 'nbnasbdjkasbkjdbbsx'),
(32, 'VANDAN', 'vandanraval2002@gmai', 'Male', '2as1d2sa', 1234567891, '04/08/2002', 'ghatlodia', 'ahmedabad,new wadaj'),
(33, 'amit sir', 'amitshah8915@gmail.c', 'Male', 'ajavaking', 1252236985, '14/08/1970', 'ghuma', 'J/23/23  ,bhagwan nagar, swarg appt,ghuma, ahmedabad'),
(34, 'KUNAL', 'kunal123@gmail.com', 'Male', 'kunal1234', 2147483647, '01/08/2000', 'dariapur', 'dariyapur ,gali no 7,ahmedabad,india'),
(35, 'sumit', 'sumit12@gmail.com', 'Male', 'sumit123', 1236547896, '01/01/2002', 'civil hospital ', 'ahmedabad');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`a_id`);

--
-- Indexes for table `cancellation`
--
ALTER TABLE `cancellation`
  ADD PRIMARY KEY (`cs_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cart_id`),
  ADD KEY `uid` (`uid`);

--
-- Indexes for table `delivery`
--
ALTER TABLE `delivery`
  ADD PRIMARY KEY (`delivery_id`);

--
-- Indexes for table `deliveryboy`
--
ALTER TABLE `deliveryboy`
  ADD PRIMARY KEY (`db_id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`f_id`),
  ADD KEY `feedback_ibfk_1` (`uid`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `orderdetails`
--
ALTER TABLE `orderdetails`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `uid` (`uid`),
  ADD KEY `orderdetails_ibfk_2` (`p_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `sid` (`sid`);

--
-- Indexes for table `productdetails`
--
ALTER TABLE `productdetails`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `return`
--
ALTER TABLE `return`
  ADD PRIMARY KEY (`return_id`);

--
-- Indexes for table `seller`
--
ALTER TABLE `seller`
  ADD PRIMARY KEY (`s_id`);

--
-- Indexes for table `tblproduct`
--
ALTER TABLE `tblproduct`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sid` (`sid`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`u_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `a_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `cancellation`
--
ALTER TABLE `cancellation`
  MODIFY `cs_id` int(3) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `cart_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `delivery`
--
ALTER TABLE `delivery`
  MODIFY `delivery_id` int(3) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `deliveryboy`
--
ALTER TABLE `deliveryboy`
  MODIFY `db_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `f_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `order_id` int(3) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orderdetails`
--
ALTER TABLE `orderdetails`
  MODIFY `order_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=249;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `productdetails`
--
ALTER TABLE `productdetails`
  MODIFY `p_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `return`
--
ALTER TABLE `return`
  MODIFY `return_id` int(3) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `seller`
--
ALTER TABLE `seller`
  MODIFY `s_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tblproduct`
--
ALTER TABLE `tblproduct`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `u_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `user` (`u_id`);

--
-- Constraints for table `feedback`
--
ALTER TABLE `feedback`
  ADD CONSTRAINT `feedback_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `user` (`u_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `orderdetails`
--
ALTER TABLE `orderdetails`
  ADD CONSTRAINT `orderdetails_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `user` (`u_id`),
  ADD CONSTRAINT `orderdetails_ibfk_2` FOREIGN KEY (`p_id`) REFERENCES `tblproduct` (`id`);

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`sid`) REFERENCES `seller` (`s_id`);

--
-- Constraints for table `tblproduct`
--
ALTER TABLE `tblproduct`
  ADD CONSTRAINT `tblproduct_ibfk_1` FOREIGN KEY (`sid`) REFERENCES `seller` (`s_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
