-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 15, 2024 at 06:18 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `inventorye44`
--

-- --------------------------------------------------------

--
-- Table structure for table `appuser`
--

CREATE TABLE `appuser` (
  `appuser_pk` int(11) NOT NULL,
  `email` varchar(200) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `appuser`
--

INSERT INTO `appuser` (`appuser_pk`, `email`, `password`) VALUES
(1, 'superadmin@email.com', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_pk` int(11) NOT NULL,
  `name` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_pk`, `name`) VALUES
(1, 'Cricket Bat'),
(2, 'Cricket Ball'),
(3, 'Football Shoes'),
(5, 'Badminton Racket'),
(7, 'Bottoms'),
(8, 'Boards');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customer_pk` int(11) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `mobileNumber` varchar(50) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_pk`, `name`, `mobileNumber`, `email`) VALUES
(1, 'Eranda Madusanka', '0702274334', 'madushankaeranda@gmail.com'),
(2, 'Sahan', '0712254345', 'Sahan@123gmai.com'),
(4, 'Nimesh', '0752274334', 'HoranaNimesh@gmail.com'),
(5, 'Madush', '0112242673', 'madush123@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `orderdetail`
--

CREATE TABLE `orderdetail` (
  `order_pk` int(11) NOT NULL,
  `orderId` varchar(200) DEFAULT NULL,
  `customer_fk` int(11) DEFAULT NULL,
  `orderDate` varchar(200) DEFAULT NULL,
  `totalPaid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orderdetail`
--

INSERT INTO `orderdetail` (`order_pk`, `orderId`, `customer_fk`, `orderDate`, `totalPaid`) VALUES
(1, 'Bill-1092217141874300', 1, '12-02-2024', 8500),
(2, 'Bill-1092279981982700', 1, '12-02-2024', 68500),
(3, 'Bill-1160699369032800', 2, '13-02-2024', 17000),
(4, 'Bill-1351334739369200', 5, '15-02-2024', 4800),
(5, 'Bill-1351377523472300', 5, '15-02-2024', 2400),
(6, 'Bill-1351430363354800', 4, '15-02-2024', 2400),
(7, 'Bill-1351526660016800', 4, '15-02-2024', 2400),
(8, 'Bill-1351571939857600', 5, '15-02-2024', 20000);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_pk` int(11) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `category_fk` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_pk`, `name`, `quantity`, `price`, `description`, `category_fk`) VALUES
(1, 'SS bats', 6, 20000, 'new ss brand bats', 1),
(2, 'Nike', 8, 8500, 'new branded nike shoes', 3),
(4, 'Wilson new', 12, 8500, 'new branded racket', 5),
(5, 'Chess Board', 12, 1500, 'Various colors', 8),
(6, 'Mas Brand Bottom', 30, 2400, 'Good qullity ', 7),
(7, 'Nike bottoms', 5, 1800, 'nike brand', 7);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appuser`
--
ALTER TABLE `appuser`
  ADD PRIMARY KEY (`appuser_pk`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_pk`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_pk`);

--
-- Indexes for table `orderdetail`
--
ALTER TABLE `orderdetail`
  ADD PRIMARY KEY (`order_pk`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_pk`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appuser`
--
ALTER TABLE `appuser`
  MODIFY `appuser_pk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_pk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_pk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `orderdetail`
--
ALTER TABLE `orderdetail`
  MODIFY `order_pk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_pk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
