-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 13, 2022 at 10:07 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `Cart_id` varchar(7) NOT NULL,
  `totalcost` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`Cart_id`, `totalcost`) VALUES
('c_01', 998),
('c_02', 3595),
('c_03', 1199),
('c_04', 2299),
('c_05', 3596),
('c_06', 1598),
('c_07', 998),
('c_08', 3594),
('c_09', 1199),
('c_10', 6897),
('c_11', 1798),
('c_12', 3995),
('c_13', 3493),
('c_14', 2396),
('c_15', 2309),
('c_16', 1497),
('c_17', 1199),
('c_18', 11495),
('c_19', 1798);

-- --------------------------------------------------------

--
-- Table structure for table `cart_item`
--

CREATE TABLE `cart_item` (
  `quantity` int(11) DEFAULT NULL,
  `totalcost` double DEFAULT NULL,
  `itemid` varchar(10) NOT NULL,
  `cart_id` varchar(7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cart_item`
--

INSERT INTO `cart_item` (`quantity`, `totalcost`, `itemid`, `cart_id`) VALUES
(2, 998, 'p_01', 'c_01'),
(4, 2396, 'p_02', 'c_02'),
(1, 1199, 'p_03', 'c_17'),
(5, 11495, 'p_04', 'c_18'),
(2, 1798, 'p_05', 'c_19'),
(9, 7191, 'p_06', 'c_06'),
(3, 1497, 'p_01', 'c_16'),
(2, 1198, 'p_02', 'c_02'),
(1, 1199, 'p_03', 'c_03'),
(1, 2299, 'p_04', 'c_04'),
(4, 3596, 'p_05', 'c_05'),
(2, 1598, 'p_06', 'c_06'),
(2, 998, 'p_01', 'c_07'),
(6, 3594, 'p_02', 'c_08'),
(1, 1199, 'p_03', 'c_09'),
(3, 6897, 'p_04', 'c_10'),
(2, 1798, 'p_05', 'c_11'),
(5, 3995, 'p_06', 'c_12'),
(7, 3493, 'p_01', 'c_13'),
(4, 2396, 'p_02', 'c_14'),
(2, 2398, 'p_03', 'c_15');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customer_id` varchar(10) NOT NULL,
  `username` varchar(10) NOT NULL,
  `password` varchar(5) NOT NULL,
  `F_Name` varchar(20) NOT NULL,
  `L_Name` varchar(20) NOT NULL,
  `Email` varchar(30) DEFAULT NULL,
  `Address` varchar(20) NOT NULL,
  `Pincode` int(11) NOT NULL,
  `Phone_number` mediumtext NOT NULL,
  `payment_id` varchar(7) DEFAULT NULL,
  `cart_id` varchar(7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `username`, `password`, `F_Name`, `L_Name`, `Email`, `Address`, `Pincode`, `Phone_number`, `payment_id`, `cart_id`) VALUES
('USR_001', '  Ajit', 'A@123', '  Ajit', 'Ullal', '  Ajit.Ullal@gmail.com', '10Janpath', 560001, '8850349451', '12763', 'c_01'),
('USR_002', 'Ali', 'A@123', 'Muhammed ', 'Ali', 'Muhammed .Ali@gmail.com', '10Downing', 560003, '6777314232', '20850', 'c_02'),
('USR_003', 'Deepak', 'D@123', 'Sai Deepak', 'Reddy', 'Sai Deepak.Reddy@gmail.com', '14 Kailsh Marg', 600001, '7665705093', '26785', 'c_03'),
('USR_004', 'Rudra', 'R@123', 'Rudra', 'Agarwal', 'Rudra.Agarwal@gmail.com', '5Lohia Garden', 600042, '7746313919', '27205', 'c_04'),
('USR_005', 'Rahul', 'R@123', 'Rahul', 'Khanna', 'Rahul.Khanna@gmail.com', '1Pink Street', 600067, '7974037347', '29706', 'c_05'),
('USR_006', 'Nirmala', 'N@123', 'Nirmala', 'Seturaman', 'Nirmala.Seturaman@gmail.com', '3Blue Avenue', 560105, '3118951142', '31888', 'c_06'),
('USR_007', 'Smriti', 'S@123', 'Smriti', 'Irani', 'Smriti.Irani@gmail.com', '4 Banyan Avenie', 575014, '5771863847', '37625', 'c_07'),
('USR_008', 'Ajit1', 'A@043', 'Ajit', 'Sethi', 'Ajit.Sethi@gmail.com', '6 Poes Garden', 575001, '3310671964', '40522', 'c_08'),
('USR_009', 'Arjun', 'A@043', 'Arjun', 'Allu', 'Arjun.Allu@gmail.com', '7 Dhamaka street', 575020, '3523168377', '47628', 'c_09'),
('USR_010', 'Samanta', 'S@043', 'Samanta', 'Prabhu', 'Samanta.Prabhu@gmail.com', '8Clone Colony', 600042, '8199251147', '49136', 'c_10'),
('USR_011', 'Kiran ', 'K@043', 'Kiran ', 'Bedi', 'Kiran .Bedi@gmail.com', '56 Brigade Road', 560003, '1336497282', '51809', 'c_11'),
('USR_012', 'Rahul 1', 'R@123', 'Rahul ', 'Gandhi', 'Rahul .Gandhi@gmail.com', 'Mirza road', 475001, '1798290957', '54260', 'c_12'),
('USR_013', 'Rashkit ', 'R@043', 'Rashkit ', 'Shetty', 'Rashkit .Shetty@gmail.com', 'JC Road', 560009, '5382230986', '61544', 'c_13'),
('USR_014', 'Rishi', 'R@043', 'Rishi', 'Sunak', 'Rishi.Sunak@gmail.com', 'Anna Sali', 600034, '9974903472', '69723', 'c_14'),
('USR_015', 'Vedavalli', 'V@043', 'Vedavalli', 'Srinath', 'Vedavalli.Srinath@gmail.com', 'Church Street  Banga', 560054, '7853132419', '72876', 'c_15'),
('USR_016', 'Subbu', 'S@043', 'Subbu', 'Saravana', 'Subbu.Saravana@gmail.com', 'American Street', 600043, '3974013503', '72957', 'c_16'),
('USR_017', 'Sheela', 'S@043', 'Sheela', 'Dixit', 'Sheela.Dixit@gmail.com', 'Kasturba Road', 560048, '6729601425', '73469', 'c_17'),
('USR_018', 'Margaret', 'M@043', 'Margaret', 'Alva', 'Margaret.Alva@gmail.com', 'New BEL Road', 560008, '7862147823', '87036', 'c_18'),
('USR_019', 'Arun', 'A@043', 'Arun', 'Kumar', 'Arun.Kumar@gmail.com', 'Mint Street', 600046, '3563529543', '99218', 'c_19');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `payment_id` varchar(7) NOT NULL,
  `payment_date` date NOT NULL,
  `Payment_type` varchar(10) NOT NULL,
  `total_amount` double DEFAULT NULL,
  `cart_id` varchar(7) DEFAULT NULL,
  `customerID` varchar(7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`payment_id`, `payment_date`, `Payment_type`, `total_amount`, `cart_id`, `customerID`) VALUES
('12763', '2020-11-13', 'net_bankin', 11495, 'c_18', 'USR_018'),
('20850', '2020-08-29', 'UPI', 998, 'c_01', 'USR_001'),
('26785', '2020-11-26', 'credit_car', 3595, 'c_02', 'USR_002'),
('27205', '2020-06-04', 'credit_car', 6897, 'c_10', 'USR_010'),
('29706', '2020-04-13', 'UPI', 3596, 'c_05', 'USR_005'),
('31888', '2020-08-23', 'UPI', 1497, 'c_16', 'USR_016'),
('37625', '2020-05-14', 'UPI', 1798, 'c_19', 'USR_019'),
('40522', '2020-12-12', 'credit_car', 1798, 'c_11', 'USR_011'),
('47628', '2020-12-07', 'COD', 2396, 'c_14', 'USR_014'),
('49136', '2020-09-21', 'debit_card', 3594, 'c_08', 'USR_008'),
('51809', '2020-12-04', 'COD', 3493, 'c_13', 'USR_013'),
('54260', '2020-06-17', 'UPI', 2309, 'c_15', 'USR_015'),
('61544', '2020-07-30', 'credit_car', 1199, 'c_09', 'USR_009'),
('69723', '2020-10-01', 'net_bankin', 1199, 'c_17', 'USR_017'),
('72876', '2020-11-23', 'net_bankin', 3995, 'c_12', 'USR_012'),
('72957', '2020-07-26', 'debit_card', 1199, 'c_03', 'USR_003'),
('73469', '2020-06-01', 'UPI', 998, 'c_07', 'USR_007'),
('87036', '2020-12-09', 'net_bankin', 2299, 'c_04', 'USR_004'),
('99218', '2020-06-03', 'UPI', 1598, 'c_06', 'USR_006');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `Product_id` varchar(7) NOT NULL,
  `product_name` varchar(20) NOT NULL,
  `type` varchar(10) DEFAULT NULL,
  `Color` varchar(15) NOT NULL,
  `size` varchar(2) NOT NULL,
  `Cost` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`Product_id`, `product_name`, `type`, `Color`, `size`, `Cost`) VALUES
('p_01', 'Blue_tshirt', 'shirt', 'blue', 'S ', 499),
('p_02', 'black_tshit', 'shirt', 'black', 'S', 599),
('p_03', 'green_shirt', 'shirt', 'green', 'M', 1199),
('p_04', 'yellow_jacket', 'jacket', 'yellow', 'L', 2299),
('p_05', 'black_trousers', 'trousers', 'black', 'M', 899),
('p_06', 'red_shirt', 'shirt', 'red', 'L', 799);

-- --------------------------------------------------------

--
-- Table structure for table `website`
--

CREATE TABLE `website` (
  `websiteID` varchar(20) NOT NULL,
  `website_address` varchar(30) NOT NULL,
  `customerID` varchar(7) DEFAULT NULL,
  `productID` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `website`
--

INSERT INTO `website` (`websiteID`, `website_address`, `customerID`, `productID`) VALUES
('web_001', 'www.myntra.com', 'USR_010', 'p_02'),
('web_002', 'www.amazon.com', 'USR_012', 'p_06'),
('web_003', 'www.flipcart.com', 'USR_003', 'p_05'),
('web_004', 'www.zstore.com', 'USR_015', 'p_01'),
('web_005', 'www.maxstore.com', 'USR_017', 'p_02'),
('web_006', 'www.fbb.com', 'USR_018', 'p_03'),
('web_007', 'www.h&m.com', 'USR_001', 'p_04'),
('web_008', 'www.allensolly.com', 'USR_004', 'p_05'),
('web_009', 'www.zara.com', 'USR_019', 'p_06');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`Cart_id`);

--
-- Indexes for table `cart_item`
--
ALTER TABLE `cart_item`
  ADD KEY `cart_id` (`cart_id`),
  ADD KEY `itemid` (`itemid`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`),
  ADD KEY `cart_id` (`cart_id`),
  ADD KEY `payment_id` (`payment_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`payment_id`),
  ADD KEY `cart_id` (`cart_id`),
  ADD KEY `customerID` (`customerID`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`Product_id`);

--
-- Indexes for table `website`
--
ALTER TABLE `website`
  ADD PRIMARY KEY (`websiteID`),
  ADD KEY `customerID` (`customerID`),
  ADD KEY `productID` (`productID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cart_item`
--
ALTER TABLE `cart_item`
  ADD CONSTRAINT `cart_item_ibfk_1` FOREIGN KEY (`cart_id`) REFERENCES `cart` (`Cart_id`),
  ADD CONSTRAINT `cart_item_ibfk_2` FOREIGN KEY (`itemid`) REFERENCES `product` (`Product_id`);

--
-- Constraints for table `customer`
--
ALTER TABLE `customer`
  ADD CONSTRAINT `customer_ibfk_1` FOREIGN KEY (`cart_id`) REFERENCES `cart` (`Cart_id`),
  ADD CONSTRAINT `customer_ibfk_2` FOREIGN KEY (`payment_id`) REFERENCES `payment` (`payment_id`);

--
-- Constraints for table `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`cart_id`) REFERENCES `cart` (`Cart_id`),
  ADD CONSTRAINT `payment_ibfk_2` FOREIGN KEY (`customerID`) REFERENCES `customer` (`customer_id`);

--
-- Constraints for table `website`
--
ALTER TABLE `website`
  ADD CONSTRAINT `website_ibfk_1` FOREIGN KEY (`customerID`) REFERENCES `customer` (`customer_id`),
  ADD CONSTRAINT `website_ibfk_2` FOREIGN KEY (`productID`) REFERENCES `product` (`Product_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
