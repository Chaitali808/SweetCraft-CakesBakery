-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 29, 2024 at 08:16 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cake_ordering_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `add_new_cake`
--

CREATE TABLE `add_new_cake` (
  `cake_id` int(10) NOT NULL,
  `cake_name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `add_new_cake`
--

INSERT INTO `add_new_cake` (`cake_id`, `cake_name`) VALUES
(1, 'Chocolate Cake'),
(2, 'Mango Cake'),
(3, 'Doll Cake'),
(4, 'Black Forest'),
(5, 'White Forest'),
(6, 'Pineapple cake'),
(7, 'Ice Cake');

-- --------------------------------------------------------

--
-- Table structure for table `add_new_category`
--

CREATE TABLE `add_new_category` (
  `category_id` int(10) NOT NULL,
  `category` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `add_new_category`
--

INSERT INTO `add_new_category` (`category_id`, `category`) VALUES
(1, 'Wedding'),
(2, 'Birthday'),
(3, 'Anniversary'),
(5, 'Engagement');

-- --------------------------------------------------------

--
-- Table structure for table `advance_order_info`
--

CREATE TABLE `advance_order_info` (
  `ad_id` int(30) NOT NULL,
  `c_name` varchar(50) DEFAULT NULL,
  `mobile` varchar(12) DEFAULT NULL,
  `cake_name` varchar(50) DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
  `order_date` varchar(30) DEFAULT NULL,
  `delivery_date` varchar(30) DEFAULT NULL,
  `unit_price` varchar(20) DEFAULT NULL,
  `quantity` varchar(20) DEFAULT NULL,
  `total_price` varchar(20) DEFAULT NULL,
  `advance_price` varchar(30) DEFAULT NULL,
  `due_price` varchar(40) DEFAULT NULL,
  `order_status` varchar(40) DEFAULT NULL,
  `payment_mode` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `advance_order_info`
--

INSERT INTO `advance_order_info` (`ad_id`, `c_name`, `mobile`, `cake_name`, `category`, `order_date`, `delivery_date`, `unit_price`, `quantity`, `total_price`, `advance_price`, `due_price`, `order_status`, `payment_mode`) VALUES
(1, 'harshali', '7894546123', 'Pineapple cake', 'Anniversary', '2020-01-25', '2020-01-30', '400.0', '3.0', '1200.0', '600.0', '0.0', 'delivered', 'cash'),
(2, 'meena', '9887567545', 'White Forest', 'Wedding', '2020-01-25', '2020-01-31', '477.0', '3.0', '1431.0', '100.0', '0.0', 'delivered', 'debit'),
(3, 'seema', '6767895678', 'mango cake', 'Birthday', '2020-01-25', '2020-01-28', '200.0', '2.0', '400.0', '100.0', '0.0', 'delivered', 'credit'),
(4, 'sanika', '8788954622', 'Black Forest', 'Wedding', '2020-01-23', '2020-01-30', '344.0', '2.0', '688.0', '100.0', '0.0', 'delivered', 'cash'),
(5, 'kalyani', '6575687887', 'Doll Cake', 'Birthday', '2020-01-22', '2020-01-29', '500.0', '6.0', '3000.0', '1000.0', '2000.0', 'pending', 'credit'),
(6, 'Neha', '7896857485', 'chocolate Cake', 'Birthday', '2020-04-17', '2020-04-20', '800.0', '2.0', '1600.0', '600.0', '1000.0', 'pending', 'Cash');

-- --------------------------------------------------------

--
-- Table structure for table `employee_info`
--

CREATE TABLE `employee_info` (
  `emp_id` int(20) NOT NULL,
  `emp_name` varchar(100) DEFAULT NULL,
  `emp_mobile` varchar(15) DEFAULT NULL,
  `emp_address` varchar(120) DEFAULT NULL,
  `emp_post` varchar(50) DEFAULT NULL,
  `emp_status` varchar(50) DEFAULT NULL,
  `emp_joining` varchar(50) DEFAULT NULL,
  `emp_leaving` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `employee_info`
--

INSERT INTO `employee_info` (`emp_id`, `emp_name`, `emp_mobile`, `emp_address`, `emp_post`, `emp_status`, `emp_joining`, `emp_leaving`) VALUES
(1, 'Sachin Patil', '8975486958', 'Mumbai', 'Manager', 'inactive', '2023-01-01', '2019-01-30'),
(2, 'Payal Jadhav', '8974856985', 'Mumbai', 'Manager', 'inactive', '2020-01-14', '2020-01-26'),
(3, 'Manish desai', '8975486900', 'Nashik', 'Designer', 'active', '2020-04-17', ''),
(4, 'Sangam Pardesi', '7845869253', 'Indore', 'Waiter', 'active', '2020-04-19', ''),
(5, 'Dhanashree Borse', '2365985874', 'Indore', 'Manager', 'inactive', '2020-04-16', '2020-04-17'),
(6, 'Manali Thakur', '7845857452', 'Dhule', 'Waiter', 'active', '2023-04-17', ''),
(7, 'neha Bhavsar', '8536489715', 'shirpur', 'Manager', 'active', '2024-05-08', '');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `name` varchar(100) DEFAULT NULL,
  `mail` varchar(100) NOT NULL,
  `message` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`name`, `mail`, `message`) VALUES
('Anushka Rajput', 'anushkar82@gmail.com', 'nice'),
('Chaitali Bhavsar', 'chaitali5663@gmail.com', 'Amazing taste and Flavours'),
('kalyani wadile', 'kalyani532@gmail.com', 'Amazing cakes'),
('Neha Bhavsar', 'neha0909@gmail.com', 'Beautiful design of cake'),
('Sanika Joshi', 'sanika435@gmail.com', 'delicious taste'),
('Shivam Yadav', 'shiv867@gmail.com', 'Tasty cake favours'),
('Chinmay Patil', 'shweta123123@gmail.com', 'Amazing theme cake '),
('Yash Bhavsar', 'vikas9740@gmail.com', 'Good Website for cake');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(20) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `mobile` varchar(50) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `username`, `password`, `name`, `mobile`, `address`, `email`) VALUES
(1, 'admin', '123', 'chaitali Bhavsar', '9876543215', 'Jalgaon, Maharashtra', 'admin.chaitali@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `order_info`
--

CREATE TABLE `order_info` (
  `order_id` int(10) NOT NULL,
  `customer_name` varchar(50) DEFAULT NULL,
  `mobile` varchar(12) DEFAULT NULL,
  `cake_name` varchar(50) DEFAULT NULL,
  `unit_price` varchar(50) DEFAULT NULL,
  `quantity` varchar(50) DEFAULT NULL,
  `total_price` varchar(50) DEFAULT NULL,
  `payment_mode` varchar(50) DEFAULT NULL,
  `date` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `order_info`
--

INSERT INTO `order_info` (`order_id`, `customer_name`, `mobile`, `cake_name`, `unit_price`, `quantity`, `total_price`, `payment_mode`, `date`) VALUES
(1, 'Raksha Khadse', '9869568789', 'Doll Cake', '5445.0', '3.0', '16335.0', 'cash', '2024-01-23'),
(2, 'Anant Ambani', '8897154265', 'Mango Cake', '500.0', '2.0', '1000.0', 'cash', '2024-01-24'),
(3, 'Jethalal Gada', '8774532323', 'White Forest', '500.0', '5.0', '2500.0', 'credit', '2024-01-24'),
(4, 'Yogi adityanath', '6757456789', 'Pineapple Cake ', '600.0', '1.0', '600.0', 'cash', '2024-01-25'),
(5, 'Radhika Merchant', '8085663565', 'Mango cake', '455.0', '4.0', '1820.0', 'Cash', '2024-01-28'),
(6, 'Amit Shah', '9856748569', 'mango cake', '400.0', '2.0', '800.0', 'Cash', '2024-01-28'),
(7, 'Elvish Bhai', '8974569825', 'Choclate cake', '300.0', '2.0', '600.0', 'Cash', '2024-04-16'),
(8, 'Bhau Kadam', '8974569825', 'Orange cake', '400.0', '4.0', '1600.0', 'Cash', '2024-04-16'),
(9, 'Babita ji', '9857485698', 'Chocolate Cake', '650.0', '3.0', '1950.0', 'Cash', '2024-04-17'),
(10, 'Virat Kohli', '8798569858', 'White Forest', '750.0', '3.0', '2250.0', 'Cash', '2024-04-17'),
(11, 'Kartik aryan', '7709671206', 'Black Forest', '900.0', '2.0', '1800.0', 'Cash', '2024-06-05'),
(12, 'Shraddha Kapur', '7709671206', 'Doll Cake', '900.0', '2.0', '1800.0', 'Cash', '2024-08-04'),
(13, 'Bhupendar Jogi', '7709671206', 'Mango cake', '300.0', '1.0', '300.0', 'Credit Card', '2024-08-05');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `add_new_cake`
--
ALTER TABLE `add_new_cake`
  ADD PRIMARY KEY (`cake_id`);

--
-- Indexes for table `add_new_category`
--
ALTER TABLE `add_new_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `advance_order_info`
--
ALTER TABLE `advance_order_info`
  ADD PRIMARY KEY (`ad_id`);

--
-- Indexes for table `employee_info`
--
ALTER TABLE `employee_info`
  ADD PRIMARY KEY (`emp_id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`mail`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_info`
--
ALTER TABLE `order_info`
  ADD PRIMARY KEY (`order_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `add_new_cake`
--
ALTER TABLE `add_new_cake`
  MODIFY `cake_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `add_new_category`
--
ALTER TABLE `add_new_category`
  MODIFY `category_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `employee_info`
--
ALTER TABLE `employee_info`
  MODIFY `emp_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
