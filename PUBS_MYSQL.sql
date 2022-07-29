USE PUBS_MYSQL;
-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 07, 2021 at 06:31 PM
-- Server version: 10.2.22-MariaDB
-- PHP Version: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `PUBS`
--

-- --------------------------------------------------------

--
-- Table structure for table `AUTHOR_T`
--

CREATE TABLE `AUTHOR_T` (
  `au_id` varchar(11) NOT NULL CHECK (`au_id` regexp '[0-9][0-9][0-9]-[0-9][0-9]-[0-9][0-9][0-9][0-9]'),
  `au_lname` varchar(40) NOT NULL,
  `au_fname` varchar(20) NOT NULL,
  `phone` char(12) NOT NULL DEFAULT 'UNKNOWN',
  `address` varchar(40) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `state` char(2) DEFAULT NULL,
  `zip` char(5) DEFAULT NULL CHECK (`zip` regexp '[0-9][0-9][0-9][0-9][0-9]'),
  `contract` bit(1) NOT NULL,
  `country` varchar(50) DEFAULT 'USA'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `AUTHOR_T`
--

INSERT INTO `AUTHOR_T` (`au_id`, `au_lname`, `au_fname`, `phone`, `address`, `city`, `state`, `zip`, `contract`, `country`) VALUES
('172-32-1176', 'White', 'Johnson', '408 496-7223', '10932 Bigge Rd.', 'Menlo Park', 'CA', '94025', b'1', 'USA'),
('213-46-8915', 'Green', 'Marjorie', '415 986-7020', '309 63rd St. #411', 'Oakland', 'CA', '94618', b'1', 'USA'),
('238-95-7766', 'Carson', 'Cheryl', '415 548-7723', '589 Darwin Ln.', 'Berkeley', 'CA', '94705', b'1', 'USA'),
('267-41-2394', 'O\'Leary', 'Michael', '408 286-2428', '22 Cleveland Av. #14', 'San Jose', 'CA', '95128', b'1', 'USA'),
('274-80-9391', 'Straight', 'Dean', '415 834-2919', '5420 College Av.', 'Oakland', 'CA', '94609', b'1', 'USA'),
('341-22-1782', 'Smith', 'Meander', '913 843-0462', '10 Mississippi Dr.', 'Lawrence', 'KS', '66044', b'0', 'USA'),
('409-56-7008', 'Bennet', 'Abraham', '415 658-9932', '6223 Bateman St.', 'Berkeley', 'CA', '94705', b'1', 'USA'),
('427-17-2319', 'Dull', 'Ann', '415 836-7128', '3410 Blonde St.', 'Palo Alto', 'CA', '94301', b'1', 'USA'),
('472-27-2349', 'Gringlesby', 'Burt', '707 938-6445', 'PO Box 792', 'Covelo', 'CA', '95428', b'1', 'USA'),
('486-29-1786', 'Locksley', 'Charlene', '415 585-4620', '18 Broadway Av.', 'San Francisco', 'CA', '94130', b'1', 'USA'),
('527-72-3246', 'Greene', 'Morningstar', '615 297-2723', '22 Graybar House Rd.', 'Nashville', 'TN', '37215', b'0', 'USA'),
('648-92-1872', 'Blotchet-Halls', 'Reginald', '503 745-6402', '55 Hillsdale Bl.', 'Corvallis', 'OR', '97330', b'1', 'USA'),
('672-71-3249', 'Yokomoto', 'Akiko', '415 935-4228', '3 Silver Ct.', 'Walnut Creek', 'CA', '94595', b'1', 'USA'),
('712-45-1867', 'del Castillo', 'Innes', '615 996-8275', '2286 Cram Pl. #86', 'Ann Arbor', 'MI', '48105', b'1', 'USA'),
('722-51-5454', 'DeFrance', 'Michel', '219 547-9982', '3 Balding Pl.', 'Gary', 'IN', '46403', b'1', 'USA'),
('724-08-9931', 'Stringer', 'Dirk', '415 843-2991', '5420 Telegraph Av.', 'Oakland', 'CA', '94609', b'0', 'USA'),
('724-80-9391', 'MacFeather', 'Stearns', '415 354-7128', '44 Upland Hts.', 'Oakland', 'CA', '94612', b'1', 'USA'),
('756-30-7391', 'Karsen', 'Livia', '415 534-9219', '5720 McAuley St.', 'Oakland', 'CA', '94609', b'1', 'USA'),
('807-91-6654', 'Panteley', 'Sylvia', '301 946-8853', '1956 Arlington Pl.', 'Rockville', 'MD', '20853', b'1', 'USA'),
('846-92-7186', 'Hunter', 'Sheryl', '415 836-7128', '3410 Blonde St.', 'Palo Alto', 'CA', '94301', b'1', 'USA'),
('893-72-1158', 'McBadden', 'Heather', '707 448-4982', '301 Putnam', 'Vacaville', 'CA', '95688', b'0', 'USA'),
('899-46-2035', 'Ringer', 'Anne', '801 826-0752', '67 Seventh Av.', 'Salt Lake City', 'UT', '84152', b'1', 'USA'),
('998-72-3567', 'Ringer', 'Albert', '801 826-0752', '67 Seventh Av.', 'Salt Lake City', 'UT', '84152', b'1', 'USA');

-- --------------------------------------------------------

--
-- Table structure for table `COUNTRY_T`
--

CREATE TABLE `COUNTRY_T` (
  `country` varchar(50) NOT NULL,
  `continent` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `COUNTRY_T`
--

INSERT INTO `COUNTRY_T` (`country`, `continent`) VALUES
('Bangladesh', 'South Asia'),
('France', 'Europe'),
('Germany', 'Europe'),
('India', 'South Asia'),
('USA', 'North America');

-- --------------------------------------------------------

--
-- Table structure for table `DISCOUNT_T`
--

CREATE TABLE `DISCOUNT_T` (
  `discount_type` varchar(20) NOT NULL,
  `stor_id` char(4) DEFAULT NULL,
  `lowqty` smallint(6) DEFAULT NULL,
  `highqty` smallint(6) DEFAULT NULL,
  `discount` decimal(4,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `DISCOUNT_T`
--

INSERT INTO `DISCOUNT_T` (`discount_type`, `stor_id`, `lowqty`, `highqty`, `discount`) VALUES
('Customer Discount', '8042', NULL, NULL, '5.00'),
('Initial Customer', NULL, NULL, NULL, '10.50'),
('Volume Discount', NULL, 100, 1000, '6.70');

-- --------------------------------------------------------

--
-- Table structure for table `EMPLOYEE_T`
--

CREATE TABLE `EMPLOYEE_T` (
  `emp_id` varchar(9) NOT NULL CHECK (`emp_id` regexp '[A-Z][A-Z][A-Z][1-9][0-9][0-9][0-9][0-9][FM]' or `emp_id` regexp '[A-Z]-[A-Z][1-9][0-9][0-9][0-9][0-9][FM]'),
  `fname` varchar(20) NOT NULL,
  `minit` char(1) DEFAULT NULL,
  `lname` varchar(30) NOT NULL,
  `job_id` int(11) NOT NULL,
  `job_lvl` int(11) DEFAULT NULL,
  `pub_id` char(4) DEFAULT '9952',
  `hire_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `EMPLOYEE_T`
--

INSERT INTO `EMPLOYEE_T` (`emp_id`, `fname`, `minit`, `lname`, `job_id`, `job_lvl`, `pub_id`, `hire_date`) VALUES
('A-C71970F', 'Aria', '', 'Cruz', 10, 87, '1389', '1991-10-26 00:00:00'),
('A-R89858F', 'Annette', '', 'Roulet', 6, 152, '9999', '1990-02-21 00:00:00'),
('AMD15433F', 'Ann', 'M', 'Devon', 3, 200, '9952', '1991-07-16 00:00:00'),
('ARD36773F', 'Anabela', 'R', 'Domingues', 8, 100, '0877', '1993-01-27 00:00:00'),
('CFH28514M', 'Carlos', 'F', 'Hernadez', 5, 211, '9999', '1989-04-21 00:00:00'),
('CGS88322F', 'Carine', 'G', 'Schmitt', 13, 64, '1389', '1992-07-07 00:00:00'),
('DBT39435M', 'Daniel', 'B', 'Tonini', 11, 75, '0877', '1990-01-01 00:00:00'),
('DWR65030M', 'Diego', 'W', 'Roel', 6, 192, '1389', '1991-12-16 00:00:00'),
('ENL44273F', 'Elizabeth', 'N', 'Lincoln', 14, 35, '0877', '1990-07-24 00:00:00'),
('F-C16315M', 'Francisco', '', 'Chang', 4, 227, '9952', '0000-00-00 00:00:00'),
('GHT50241M', 'Gary', 'H', 'Thomas', 9, 170, '0736', '1988-08-09 00:00:00'),
('H-B39728F', 'Helen', '', 'Bennett', 12, 35, '0877', '1989-09-21 00:00:00'),
('HAN90777M', 'Helvetius', 'A', 'Nagy', 7, 120, '9999', '1993-03-19 00:00:00'),
('HAS54740M', 'Howard', 'A', 'Snyder', 12, 100, '0736', '1988-11-19 00:00:00'),
('JYL26161F', 'Janine', 'Y', 'Labrune', 5, 172, '9901', '1991-05-26 00:00:00'),
('KFJ64308F', 'Karin', 'F', 'Josephs', 14, 100, '0736', '1992-10-17 00:00:00'),
('KJJ92907F', 'Karla', 'J', 'Jablonski', 9, 170, '9999', '1994-03-11 00:00:00'),
('L-B31947F', 'Lesley', '', 'Brown', 7, 120, '0877', '1991-02-13 00:00:00'),
('LAL21447M', 'Laurence', 'A', 'Lebihan', 5, 175, '0736', '1990-06-03 00:00:00'),
('M-L67958F', 'Maria', '', 'Larsson', 7, 135, '1389', '1992-03-27 00:00:00'),
('M-P91209M', 'Manuel', '', 'Pereira', 8, 101, '9999', '1989-01-09 00:00:00'),
('M-R38834F', 'Martine', '', 'Rance', 9, 75, '0877', '1992-02-05 00:00:00'),
('MAP77183M', 'Miguel', 'A', 'Paolino', 11, 112, '1389', '1992-12-07 00:00:00'),
('MAS70474F', 'Margaret', 'A', 'Smith', 9, 78, '1389', '1988-09-29 00:00:00'),
('MFS52347M', 'Martin', 'F', 'Sommer', 10, 165, '0736', '1990-04-13 00:00:00'),
('MGK44605M', 'Matti', 'G', 'Karttunen', 6, 220, '0736', '1994-05-01 00:00:00'),
('MJP25939M', 'Maria', 'J', 'Pontes', 5, 246, '1756', '1989-03-01 00:00:00'),
('MMS49649F', 'Mary', 'M', 'Saveley', 8, 175, '0736', '1993-06-29 00:00:00'),
('PCM98509F', 'Patricia', 'C', 'McKenna', 11, 150, '9999', '1989-08-01 00:00:00'),
('PDI47470M', 'Palle', 'D', 'Ibsen', 7, 195, '0736', '1993-05-09 00:00:00'),
('PHF38899M', 'Peter', 'H', 'Franken', 10, 75, '0877', '1992-05-17 00:00:00'),
('PMA42628M', 'Paolo', 'M', 'Accorti', 13, 35, '0877', '1992-08-27 00:00:00'),
('POK93028M', 'Pirkko', 'O', 'Koskitalo', 10, 80, '9999', '1993-11-29 00:00:00'),
('PSA89086M', 'Pedro', 'S', 'Afonso', 14, 89, '1389', '1990-12-24 00:00:00'),
('PSP68661F', 'Paula', 'S', 'Parente', 8, 125, '1389', '1994-01-19 00:00:00'),
('PTC11962M', 'Philip', 'T', 'Cramer', 2, 215, '9952', '1989-11-11 00:00:00'),
('PXH22250M', 'Paul', 'X', 'Henriot', 5, 159, '0877', '1993-08-19 00:00:00'),
('R-M53550M', 'Roland', '', 'Mendel', 11, 150, '0736', '1991-09-05 00:00:00'),
('RBM23061F', 'Rita', 'B', 'Muller', 5, 198, '1622', '1993-10-09 00:00:00'),
('SKO22412M', 'Sven', 'K', 'Ottlieb', 5, 150, '1389', '1991-04-05 00:00:00'),
('TPO55093M', 'Timothy', 'P', 'O\'Rourke', 13, 100, '0736', '1988-06-19 00:00:00'),
('VPA30890F', 'Victoria', 'P', 'Ashworth', 6, 140, '0877', '1990-09-13 00:00:00'),
('Y-L77953M', 'Yoshi', '', 'Latimer', 12, 32, '1389', '1989-06-11 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `JOB_T`
--

CREATE TABLE `JOB_T` (
  `job_id` int(11) NOT NULL,
  `job_desc` varchar(50) NOT NULL DEFAULT 'New Position - title not formalized yet',
  `min_lvl` int(11) DEFAULT NULL,
  `max_lvl` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `JOB_T`
--

INSERT INTO `JOB_T` (`job_id`, `job_desc`, `min_lvl`, `max_lvl`) VALUES
(1, 'New Hire - Job not specified', 10, 10),
(2, 'Chief Executive Officer', 200, 250),
(3, 'Business Operations Manager', 175, 225),
(4, 'Chief Financial Officier', 175, 250),
(5, 'Publisher', 150, 250),
(6, 'Managing Editor', 140, 225),
(7, 'Marketing Manager', 120, 200),
(8, 'Public Relations Manager', 100, 175),
(9, 'Acquisitions Manager', 75, 175),
(10, 'Productions Manager', 75, 165),
(11, 'Operations Manager', 75, 150),
(12, 'Editor', 25, 100),
(13, 'Sales Representative', 25, 100),
(14, 'Designer', 25, 100);

-- --------------------------------------------------------

--
-- Table structure for table `PUBLISHER_T`
--

CREATE TABLE `PUBLISHER_T` (
  `pub_id` char(4) NOT NULL CHECK (`pub_id` in ('1389','0736','0877','1622','1756') or `pub_id` regexp '99[0-9][0-9]'),
  `pub_name` varchar(40) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `state` char(2) DEFAULT NULL,
  `country` varchar(50) DEFAULT 'USA'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `PUBLISHER_T`
--

INSERT INTO `PUBLISHER_T` (`pub_id`, `pub_name`, `city`, `state`, `country`) VALUES
('0736', 'New Moon Books', 'Boston', 'MA', 'USA'),
('0877', 'Binnet & Hardley', 'Washington', 'DC', 'USA'),
('1389', 'Algodata Infosystems', 'Berkeley', 'CA', 'USA'),
('1622', 'Five Lakes Publishing', 'Chicago', 'IL', 'USA'),
('1756', 'Ramona Publishers', 'Dallas', 'TX', 'USA'),
('9901', 'GGG&G', 'Munchen', NULL, 'Germany'),
('9952', 'Scootney Books', 'New York', 'NY', 'USA'),
('9999', 'Lucerne Publishing', 'Paris', NULL, 'France');

-- --------------------------------------------------------

--
-- Table structure for table `SALE_T`
--

CREATE TABLE `SALE_T` (
  `stor_id` char(4) NOT NULL,
  `title_id` varchar(10) NOT NULL,
  `ord_num` varchar(20) NOT NULL,
  `ord_date` datetime DEFAULT NULL,
  `qty` smallint(6) DEFAULT NULL,
  `payterms` varchar(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `SALE_T`
--

INSERT INTO `SALE_T` (`stor_id`, `title_id`, `ord_num`, `ord_date`, `qty`, `payterms`) VALUES
('6380', 'BU1032', '6871', '1994-09-14 00:00:00', 5, 'Net 60'),
('6380', 'PS2091', '722a', '1994-09-13 00:00:00', 3, 'Net 60'),
('7066', 'PC8888', 'A2976', '1993-05-24 00:00:00', 50, 'Net 30'),
('7066', 'PS2091', 'QA7442.3', '1994-09-13 00:00:00', 75, 'ON invoice'),
('7067', 'PS2091', 'D4482', '1994-09-14 00:00:00', 10, 'Net 60'),
('7067', 'TC3218', 'P2121', '1992-06-15 00:00:00', 40, 'Net 30'),
('7067', 'TC4203', 'P2121', '1992-06-15 00:00:00', 20, 'Net 30'),
('7067', 'TC7777', 'P2121', '1992-06-15 00:00:00', 20, 'Net 30'),
('7131', 'PS2091', 'N914008', '1994-09-14 00:00:00', 20, 'Net 30'),
('7131', 'MC3021', 'N914014', '1994-09-14 00:00:00', 25, 'Net 30'),
('7131', 'PS1372', 'P3087a', '1993-05-29 00:00:00', 20, 'Net 60'),
('7131', 'PS2106', 'P3087a', '1993-05-29 00:00:00', 25, 'Net 60'),
('7131', 'PS3333', 'P3087a', '1993-05-29 00:00:00', 15, 'Net 60'),
('7131', 'PS7777', 'P3087a', '1993-05-29 00:00:00', 25, 'Net 60'),
('7896', 'BU7832', 'QQ2299', '1993-10-28 00:00:00', 15, 'Net 60'),
('7896', 'MC2222', 'TQ456', '1993-12-12 00:00:00', 10, 'Net 60'),
('7896', 'BU2075', 'X999', '1993-02-21 00:00:00', 35, 'ON invoice'),
('8042', 'MC3021', '423LL19922', '1994-09-14 00:00:00', 15, 'ON invoice'),
('8042', 'BU1032', '423LL19930', '1994-09-14 00:00:00', 10, 'ON invoice'),
('8042', 'BU1111', 'P723', '1993-03-11 00:00:00', 25, 'Net 30'),
('8042', 'PC1035', 'QA879.1', '1993-05-22 00:00:00', 30, 'Net 30');

-- --------------------------------------------------------

--
-- Table structure for table `STORE_T`
--

CREATE TABLE `STORE_T` (
  `stor_id` char(4) NOT NULL,
  `stor_name` varchar(50) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `state` char(2) DEFAULT NULL,
  `zip` char(5) DEFAULT NULL CHECK (`zip` regexp '[0-9][0-9][0-9][0-9][0-9]'),
  `country` varchar(50) DEFAULT 'USA'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `STORE_T`
--

INSERT INTO `STORE_T` (`stor_id`, `stor_name`, `address`, `city`, `state`, `zip`, `country`) VALUES
('6380', 'Eric the Read Books', '788 Catamaugus Ave.', 'Seattle', 'WA', '98056', 'USA'),
('7066', 'Barnum\'s', '567 Pasadena Ave.', 'Tustin', 'CA', '92789', 'USA'),
('7067', 'News & Brews', '577 First St.', 'Los Gatos', 'CA', '96745', 'USA'),
('7131', 'Doc-U-Mat: Quality Laundry and Books', '24-A Avogadro Way', 'Remulade', 'WA', '98014', 'USA'),
('7896', 'Fricative Bookshop', '89 Madison St.', 'Fremont', 'CA', '90019', 'USA'),
('8042', 'Bookbeat', '679 Carson St.', 'Portland', 'OR', '89076', 'USA');

-- --------------------------------------------------------

--
-- Table structure for table `TITLEAUTHOR_T`
--

CREATE TABLE `TITLEAUTHOR_T` (
  `au_id` varchar(11) NOT NULL,
  `title_id` varchar(10) NOT NULL,
  `au_order` int(11) DEFAULT NULL,
  `royalty_share` decimal(5,3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `TITLEAUTHOR_T`
--

INSERT INTO `TITLEAUTHOR_T` (`au_id`, `title_id`, `au_order`, `royalty_share`) VALUES
('172-32-1176', 'PS3333', 1, '99.999'),
('213-46-8915', 'BU1032', 2, '40.000'),
('213-46-8915', 'BU2075', 1, '99.999'),
('238-95-7766', 'PC1035', 1, '99.999'),
('267-41-2394', 'BU1111', 2, '40.000'),
('267-41-2394', 'TC7777', 2, '30.000'),
('274-80-9391', 'BU7832', 1, '99.999'),
('409-56-7008', 'BU1032', 1, '60.000'),
('427-17-2319', 'PC8888', 1, '50.000'),
('472-27-2349', 'TC7777', 3, '30.000'),
('486-29-1786', 'PC9999', 1, '99.999'),
('486-29-1786', 'PS7777', 1, '99.999'),
('648-92-1872', 'TC4203', 1, '99.999'),
('672-71-3249', 'TC7777', 1, '40.000'),
('712-45-1867', 'MC2222', 1, '99.999'),
('722-51-5454', 'MC3021', 1, '75.000'),
('724-80-9391', 'BU1111', 1, '60.000'),
('724-80-9391', 'PS1372', 2, '25.000'),
('756-30-7391', 'PS1372', 1, '75.000'),
('807-91-6654', 'TC3218', 1, '99.999'),
('846-92-7186', 'PC8888', 2, '50.000'),
('899-46-2035', 'MC3021', 2, '25.000'),
('899-46-2035', 'PS2091', 2, '50.000'),
('998-72-3567', 'PS2091', 1, '50.000'),
('998-72-3567', 'PS2106', 1, '99.999');

-- --------------------------------------------------------

--
-- Table structure for table `TITLES_T`
--

CREATE TABLE `TITLES_T` (
  `title_id` varchar(10) NOT NULL,
  `title` varchar(80) DEFAULT NULL,
  `type` char(12) DEFAULT 'UNDECIDED',
  `pub_id` char(4) DEFAULT NULL,
  `price` decimal(10,4) DEFAULT NULL,
  `advance` decimal(10,4) DEFAULT NULL,
  `royalty` int(11) DEFAULT NULL,
  `ytd_sales` int(11) DEFAULT NULL,
  `notes` varchar(200) DEFAULT NULL,
  `pub_date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `TITLES_T`
--

INSERT INTO `TITLES_T` (`title_id`, `title`, `type`, `pub_id`, `price`, `advance`, `royalty`, `ytd_sales`, `notes`, `pub_date`) VALUES
('BU1032', 'The Busy Executive\'s Database Guide', 'business', '1389', '19.9900', '5000.0000', 10, 4095, 'An overview of available database systems with emphasis on common business applications. Illustrated.', '0000-00-00 00:00:00'),
('BU1111', 'Cooking with Computers: Surreptitious Balance Sheets', 'business', '1389', '11.9500', '5000.0000', 10, 3876, 'Helpful hints on how to use your electronic resources to the best advantage.', '0000-00-00 00:00:00'),
('BU2075', 'You Can Combat Computer Stress!', 'business', '0736', '2.9900', '10125.0000', 24, 18722, 'The latest medical and psychological techniques for living with the electronic office. Easy-to-understand explanations.', '0000-00-00 00:00:00'),
('BU7832', 'Straight Talk About Computers', 'business', '1389', '19.9900', '5000.0000', 10, 4095, 'Annotated analysis of what computers can do for you: a no-hype guide for the critical user.', '0000-00-00 00:00:00'),
('MC2222', 'Silicon Valley Gastronomic Treats', 'mod_cook', '0877', '19.9900', '0.0000', 12, 2032, 'Favorite recipes for quick, easy, and elegant meals.', '0000-00-00 00:00:00'),
('MC3021', 'The Gourmet Microwave', 'mod_cook', '0877', '2.9900', '15000.0000', 24, 22246, 'Traditional French gourmet recipes adapted for modern microwave cooking.', '0000-00-00 00:00:00'),
('MC3026', 'The Psychology of Computer Cooking', 'UNDECIDED', '0877', NULL, NULL, NULL, NULL, NULL, '2021-01-07 21:37:27'),
('PC1035', 'But Is It User Friendly?', 'popular_comp', '1389', '22.9500', '7000.0000', 16, 8780, 'A survey of software for the naive user, focusing on the \'friendliness\' of each.', '0000-00-00 00:00:00'),
('PC8888', 'Secrets of Silicon Valley', 'popular_comp', '1389', '20.0000', '8000.0000', 10, 4095, 'Muckraking reporting on the world\'s largest computer hardware and software manufacturers.', '0000-00-00 00:00:00'),
('PC9999', 'Net Etiquette', 'popular_comp', '1389', NULL, NULL, NULL, NULL, 'A must-read for computer conferencing.', '2021-01-07 21:37:27'),
('PS1372', 'Computer Phobic AND Non-Phobic Individuals: Behavior Variations', 'psychology', '0877', '21.5900', '7000.0000', 10, 375, 'A must for the specialist, this book examines the difference between those who hate and fear computers and those who don\'t.', '0000-00-00 00:00:00'),
('PS2091', 'Is Anger the Enemy?', 'psychology', '0736', '10.9500', '2275.0000', 12, 2045, 'Carefully researched study of the effects of strong emotions on the body. Metabolic charts included.', '0000-00-00 00:00:00'),
('PS2106', 'Life Without Fear', 'psychology', '0736', '7.0000', '6000.0000', 10, 111, 'New exercise, meditation, and nutritional techniques that can reduce the shock of daily interactions. Popular audience. Sample menus included, exercise video available separately.', '0000-00-00 00:00:00'),
('PS3333', 'Prolonged Data Deprivation: Four Case Studies', 'psychology', '0736', '19.9900', '2000.0000', 10, 4072, 'What happens when the data runs dry?  Searching evaluations of information-shortage effects.', '0000-00-00 00:00:00'),
('PS7777', 'Emotional Security: A New Algorithm', 'psychology', '0736', '7.9900', '4000.0000', 10, 3336, 'Protecting yourself and your loved ones from undue emotional stress in the modern world. Use of computer and nutritional aids emphasized.', '0000-00-00 00:00:00'),
('TC3218', 'Onions, Leeks, and Garlic: Cooking Secrets of the Mediterranean', 'trad_cook', '0877', '20.9500', '7000.0000', 10, 375, 'Profusely illustrated in color, this makes a wonderful gift book for a cuisine-oriented friend.', '0000-00-00 00:00:00'),
('TC4203', 'Fifty Years in Buckingham Palace Kitchens', 'trad_cook', '0877', '11.9500', '4000.0000', 14, 15096, 'More anecdotes from the Queen\'s favorite cook describing life among English royalty. Recipes, techniques, tender vignettes.', '0000-00-00 00:00:00'),
('TC7777', 'Sushi, Anyone?', 'trad_cook', '0877', '14.9900', '8000.0000', 10, 4095, 'Detailed instructions on how to make authentic Japanese sushi in your spare time.', '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `AUTHOR_T`
--
ALTER TABLE `AUTHOR_T`
  ADD PRIMARY KEY (`au_id`),
  ADD KEY `AU_fk01` (`country`);

--
-- Indexes for table `COUNTRY_T`
--
ALTER TABLE `COUNTRY_T`
  ADD PRIMARY KEY (`country`);

--
-- Indexes for table `DISCOUNT_T`
--
ALTER TABLE `DISCOUNT_T`
  ADD PRIMARY KEY (`discount_type`),
  ADD KEY `DI_fk01` (`stor_id`);

--
-- Indexes for table `EMPLOYEE_T`
--
ALTER TABLE `EMPLOYEE_T`
  ADD PRIMARY KEY (`emp_id`),
  ADD KEY `EM_fk01` (`job_id`),
  ADD KEY `EM_fk02` (`pub_id`);

--
-- Indexes for table `JOB_T`
--
ALTER TABLE `JOB_T`
  ADD PRIMARY KEY (`job_id`);

--
-- Indexes for table `PUBLISHER_T`
--
ALTER TABLE `PUBLISHER_T`
  ADD PRIMARY KEY (`pub_id`),
  ADD KEY `PUB_fk01` (`country`);

--
-- Indexes for table `SALE_T`
--
ALTER TABLE `SALE_T`
  ADD PRIMARY KEY (`stor_id`,`ord_num`,`title_id`),
  ADD KEY `SA_fk02` (`title_id`);

--
-- Indexes for table `STORE_T`
--
ALTER TABLE `STORE_T`
  ADD PRIMARY KEY (`stor_id`),
  ADD KEY `ST_fk01` (`country`);

--
-- Indexes for table `TITLEAUTHOR_T`
--
ALTER TABLE `TITLEAUTHOR_T`
  ADD PRIMARY KEY (`au_id`,`title_id`),
  ADD KEY `TA_fk02` (`title_id`);

--
-- Indexes for table `TITLES_T`
--
ALTER TABLE `TITLES_T`
  ADD PRIMARY KEY (`title_id`),
  ADD KEY `TI_fk01` (`pub_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `JOB_T`
--
ALTER TABLE `JOB_T`
  MODIFY `job_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `AUTHOR_T`
--
ALTER TABLE `AUTHOR_T`
  ADD CONSTRAINT `AU_fk01` FOREIGN KEY (`country`) REFERENCES `COUNTRY_T` (`country`);

--
-- Constraints for table `DISCOUNT_T`
--
ALTER TABLE `DISCOUNT_T`
  ADD CONSTRAINT `DI_fk01` FOREIGN KEY (`stor_id`) REFERENCES `STORE_T` (`stor_id`);

--
-- Constraints for table `PUBLISHER_T`
--
ALTER TABLE `PUBLISHER_T`
  ADD CONSTRAINT `PUB_fk01` FOREIGN KEY (`country`) REFERENCES `COUNTRY_T` (`country`);

--
-- Constraints for table `SALE_T`
--
ALTER TABLE `SALE_T`
  ADD CONSTRAINT `SA_fk01` FOREIGN KEY (`stor_id`) REFERENCES `STORE_T` (`stor_id`),
  ADD CONSTRAINT `SA_fk02` FOREIGN KEY (`title_id`) REFERENCES `TITLES_T` (`title_id`);

--
-- Constraints for table `STORE_T`
--
ALTER TABLE `STORE_T`
  ADD CONSTRAINT `ST_fk01` FOREIGN KEY (`country`) REFERENCES `COUNTRY_T` (`country`);

--
-- Constraints for table `TITLEAUTHOR_T`
--
ALTER TABLE `TITLEAUTHOR_T`
  ADD CONSTRAINT `TA_fk01` FOREIGN KEY (`au_id`) REFERENCES `AUTHOR_T` (`au_id`),
  ADD CONSTRAINT `TA_fk02` FOREIGN KEY (`title_id`) REFERENCES `TITLES_T` (`title_id`);

--
-- Constraints for table `TITLES_T`
--
ALTER TABLE `TITLES_T`
  ADD CONSTRAINT `TI_fk01` FOREIGN KEY (`pub_id`) REFERENCES `PUBLISHER_T` (`pub_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
