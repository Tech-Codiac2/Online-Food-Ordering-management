-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 24, 2021 at 05:23 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `proj`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `adname` varchar(200) NOT NULL,
  `adpass` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adname`, `adpass`) VALUES
('amal', 'amal');

-- --------------------------------------------------------

--
-- Table structure for table `food`
--

CREATE TABLE `food` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `type` varchar(200) NOT NULL,
  `price` varchar(200) NOT NULL,
  `details` varchar(200) NOT NULL,
  `img` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `food`
--

INSERT INTO `food` (`id`, `name`, `type`, `price`, `details`, `img`) VALUES
(1, 'chicken biryani', 'dinner', '200', 'A world-renowned Indian dish, biryani takes time and practice to make but is worth every bit of the effort. Long-grained rice (like basmati) flavored with fragrant spices such as saffron and layered w', 'imagee/download.jfif'),
(4, 'chocolate ice cream', 'dessert', '250', 'Chocolate ice cream is a flavour of ice cream which is the second most common flavour of ice cream, after vanilla. Chocolate ice cream is made by blending in cocoa powder in along with the eggs (optio', 'imagee/cho.jpg'),
(5, 'chicken crispy  burger', 'breakfast', '200', 'The key to getting crispy edges without overcooking the burger is to have two areas on your hot plate. Carefully run the spatula around the edge of the patty.', 'imagee/crispy burg.webp'),
(6, 'normal burger', 'breakfast', '150', 'A hamburger is a sandwich consisting of a cooked patty of ground meat usually placed inside a sliced bread roll. Hamburgers are often served with lettuce, bacon, tomato, onion, pickles, cheese, and co', 'imagee/burger.webp'),
(7, 'Ice Coffee', 'dessert', '300', 'Iced coffee is a coffee beverage served cold. It may be prepared either by brewing coffee in the normal way and then serving it over ice or in cold milk, or by brewing the coffee cold. In hot brewing,', 'imagee/coffee.webp'),
(8, 'pepsi', 'drinks', '40', 'Pepsi-Cola is the first major soft drink maker to begin producing and distributing its product in Vietnam. PepsiCo and Starbucks form the North American Coffee Partnership to jointly develop ready-to-', 'imagee/pepsi.jpg'),
(9, 'sprite', 'drinks', '40', 'sprite is the first major soft drink maker to begin producing and distributing its product in Vietnam. PepsiCo and Starbucks form the North American Coffee Partnership to jointly develop ready-to-drin', 'imagee/sp.jfif'),
(10, 'Thumbs Up', 'drinks', '45', 'Thums Up is a brand of cola in India. The logo is a red thumbs up. It was introduced in 1977 to offset the withdrawal of The Coca-Cola Company from India.', 'imagee/thumbsup.jfif'),
(14, 'Dosa', 'breakfast', '100', 'A dosai or dosa or dose is a thin pancake or crepe, originating from South India, made from a fermented batter predominantly consisting of lentils and rice. ...', 'imagee/=dosa.jfif'),
(15, 'Chapati with curry', 'dinner', '130', 'Chapati (alternatively spelled chapatti, chappati, chapathi, or chappathi; pronounced as IAST: capātī, capāṭī, cāpāṭi), also known as roti, rotli, safati, shabaati, phulka and (in the Maldives) roshi,', 'imagee/chap.jfif'),
(16, 'Paneer', 'dinner', '160', 'Paneer cheese is a fresh, creamy, normally unsalted cheese. ... Instead of rennet, paneer is made by curdling hot milk', 'imagee/nnn.jfif'),
(34, 'test', 'drinks', '34', 'test', 'imagee/=dosa.jfif');

-- --------------------------------------------------------

--
-- Table structure for table `info`
--

CREATE TABLE `info` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `address` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `oname` varchar(200) NOT NULL,
  `quantity` varchar(200) NOT NULL,
  `total` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `name`, `oname`, `quantity`, `total`) VALUES
(186, 'cs', 'Chapati', '2', '260'),
(282, 'akhila', 'Ice', '21', '6300'),
(327, 'amal', 'Ice', '30', '9000'),
(331, 'sathyan', 'pepsi', '5', '200'),
(405, 'akhila', 'pepsi', '31', '1240'),
(407, 'cs', 'Chapati', '30', '3900'),
(573, 'amal', 'Ice', '3', '900'),
(597, 'amal', 'Ice', '30', '9000'),
(701, 'sathyan', 'chicken', '4', '1200'),
(828, 'amal', 'Paneer', '1', '160');

-- --------------------------------------------------------

--
-- Table structure for table `prod`
--

CREATE TABLE `prod` (
  `id` int(200) NOT NULL,
  `name` varchar(200) NOT NULL,
  `price` varchar(200) NOT NULL,
  `img` varchar(350) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `prod`
--

INSERT INTO `prod` (`id`, `name`, `price`, `img`) VALUES
(1, 'amal', '556', 'imagee/a1.PNG');

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `id` int(11) NOT NULL,
  `user` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `address` char(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phoneCode` int(10) NOT NULL,
  `phone` bigint(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`id`, `user`, `password`, `address`, `email`, `phoneCode`, `phone`) VALUES
(2, 'am', '23', 'm', 'amalsathyan9@gmail.com', 977, 12),
(11, 'a', '2', 'm', 'amalsathyan9@gmail.com', 978, 2),
(12, 'a', '1', 'm', 'admin@admin.com', 973, 1),
(20, 'amal', 'a', 'a', 'amal@gmail', 91, 5768),
(21, 'Subhodh Mohanty', '1', 'chakala', 'sub@gmail.com', 91, 5768),
(22, 'sathyan', '1234', 'andheri', 'sathyan@gmail.com', 91, 5768),
(23, 'akhila', 'ak', 'chakala', 'sub@gmail.com', 91, 5768),
(24, 'akhilaa', '1', 'andheri', 'amal@gmail', 91, 5768),
(25, 'amala', '1', 'sakinaka', 'amals086844@gmail.com', 91, 92929),
(26, 'amalaa', '2', 'andheri', 'amals086844@gmail.com', 91, 5768),
(27, 'cs', '12', 'andheri', 'amals086844@gmail.com', 91, 4565);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `food`
--
ALTER TABLE `food`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `info`
--
ALTER TABLE `info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `prod`
--
ALTER TABLE `prod`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `food`
--
ALTER TABLE `food`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT for table `info`
--
ALTER TABLE `info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=982;

--
-- AUTO_INCREMENT for table `prod`
--
ALTER TABLE `prod`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
