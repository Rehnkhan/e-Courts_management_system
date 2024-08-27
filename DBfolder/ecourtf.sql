-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 14, 2024 at 10:40 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecourt`
--

-- --------------------------------------------------------

--
-- Table structure for table `casee`
--

CREATE TABLE `casee` (
  `CaseID` int(11) NOT NULL,
  `CaseNumber` varchar(50) NOT NULL,
  `CaseDetails` text DEFAULT NULL,
  `FilingDate` date DEFAULT NULL,
  `Status` varchar(50) DEFAULT NULL,
  `CourtID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `casee`
--

INSERT INTO `casee` (`CaseID`, `CaseNumber`, `CaseDetails`, `FilingDate`, `Status`, `CourtID`) VALUES
(1, 'C/2022/001', 'Theft of Property', '2022-01-05', 'Pending', 1),
(2, 'C/2022/002', 'Assault and Battery', '2022-02-10', 'Open', 2),
(3, 'C/2022/003', 'Breach of Contract', '2022-03-15', 'Closed', 3),
(4, 'C/2022/004', 'Medical Malpractice', '2022-04-20', 'Pending', 4),
(5, 'C/2022/005', 'Defamation', '2022-05-25', 'Open', 5),
(6, 'C/2022/006', 'Fraudulent Misrepresentation', '2022-06-30', 'Closed', 6),
(7, 'C/2022/007', 'Child Custody Dispute', '2022-07-05', 'Pending', 7),
(8, 'C/2022/008', 'Property Dispute', '2022-08-10', 'Open', 8),
(9, 'C/2022/009', 'Wrongful Termination', '2022-09-15', 'Closed', 9),
(10, 'C/2022/010', 'Contract Dispute', '2022-10-20', 'Pending', 10),
(11, 'C/2022/011', 'Product Liability', '2022-11-25', 'Open', 11),
(12, 'C/2022/012', 'Divorce Proceedings', '2022-12-30', 'Closed', 12),
(13, 'C/2022/013', 'Personal Injury', '2023-01-05', 'Pending', 13),
(14, 'C/2022/014', 'Intellectual Property Theft', '2023-02-10', 'Open', 14),
(15, 'C/2022/015', 'Securities Fraud', '2023-03-15', 'Closed', 15),
(16, 'C/2022/016', 'Civil Rights Violation', '2023-04-20', 'Pending', 16),
(17, 'C/2022/017', 'Harassment', '2023-05-25', 'Open', 17),
(18, 'C/2022/018', 'Environmental Pollution', '2023-06-30', 'Closed', 18),
(19, 'C/2022/019', 'Traffic Violation', '2023-07-05', 'Pending', 19),
(20, 'C/2022/020', 'Insurance Dispute', '2023-08-10', 'Open', 20),
(21, 'C/2022/021', 'Landlord-Tenant Dispute', '2023-09-15', 'Closed', 21),
(22, 'C/2022/022', 'Immigration Case', '2023-10-20', 'Pending', 22),
(23, 'C/2022/023', 'Estate Planning', '2023-11-25', 'Open', 23),
(24, 'C/2022/024', 'Bankruptcy', '2023-12-30', 'Closed', 24),
(25, 'C/2022/025', 'Employment Discrimination', '2024-01-05', 'Pending', 25),
(26, 'C/2022/026', 'Contractor Dispute', '2024-02-10', 'Open', 26),
(27, 'C/2022/027', 'Animal Rights Violation', '2024-03-15', 'Closed', 27),
(28, 'C/2022/028', 'Child Support Modification', '2024-04-20', 'Pending', 28),
(29, 'C/2022/029', 'Civil Litigation', '2024-05-25', 'Open', 29),
(30, 'C/2022/030', 'Immigration Asylum', '2024-06-30', 'Closed', 30),
(31, 'C/2022/031', 'Property Damage Claim', '2024-07-05', 'Pending', 1),
(32, 'C/2022/032', 'Business Dispute', '2024-08-10', 'Open', 2),
(33, 'C/2022/033', 'Workers Compensation', '2024-09-15', 'Closed', 3),
(34, 'C/2022/034', 'Identity Theft', '2024-10-20', 'Pending', 4),
(35, 'C/2022/035', 'Construction Dispute', '2024-11-25', 'Open', 5),
(36, 'C/2022/036', 'Product Recall', '2024-12-30', 'Closed', 6),
(37, 'C/2022/037', 'Medical Negligence', '2025-01-05', 'Pending', 7),
(38, 'C/2022/038', 'Consumer Complaint', '2025-02-10', 'Open', 8),
(39, 'C/2022/039', 'Contract Termination', '2025-03-15', 'Closed', 9),
(40, 'C/2022/040', 'Land Use Dispute', '2025-04-20', 'Pending', 10),
(41, 'C/2022/041', 'Insurance Fraud', '2025-05-25', 'Open', 11),
(42, 'C/2022/042', 'Personal Property Dispute', '2025-06-30', 'Closed', 12),
(43, 'C/2022/043', 'Child Custody Modification', '2025-07-05', 'Pending', 13),
(44, 'C/2022/044', 'Employment Contract Dispute', '2025-08-10', 'Open', 14),
(45, 'C/2022/045', 'Product Liability Claim', '2025-09-15', 'Closed', 15),
(46, 'C/2022/046', 'Divorce Settlement', '2025-10-20', 'Pending', 16),
(47, 'C/2022/047', 'Real Estate Transaction Dispute', '2025-11-25', 'Open', 17),
(48, 'C/2022/048', 'Fraud Investigation', '2025-12-30', 'Closed', 18),
(49, 'C/2022/049', 'Child Custody Modification', '2026-01-05', 'Pending', 19),
(50, 'C/2022/050', 'Trademark Infringement', '2026-02-10', 'Open', 20),
(51, 'C/2022/051', 'Trademark Dispute', '2026-03-15', 'Closed', 21),
(52, 'C/2022/052', 'Personal Injury Claim', '2026-04-20', 'Pending', 22),
(53, 'C/2022/053', 'Intellectual Property Dispute', '2026-05-25', 'Open', 23),
(54, 'C/2022/054', 'Contract Breach', '2026-06-30', 'Closed', 24),
(55, 'C/2022/055', 'Employment Dispute', '2026-07-05', 'Pending', 25),
(56, 'C/2022/056', 'Real Estate Dispute', '2026-08-10', 'Open', 26),
(57, 'C/2022/057', 'Tax Dispute', '2026-09-15', 'Closed', 27),
(58, 'C/2022/058', 'Insurance Claim', '2026-10-20', 'Pending', 28),
(59, 'C/2022/059', 'Environmental Lawsuit', '2026-11-25', 'Open', 29),
(60, 'C/2022/060', 'Medical Malpractice Claim', '2026-12-30', 'Closed', 30),
(61, 'C/2022/061', 'Consumer Rights Violation', '2027-01-05', 'Pending', 1),
(62, 'C/2022/062', 'Civil Litigation', '2027-02-10', 'Open', 2),
(63, 'C/2022/063', 'Land Dispute', '2027-03-15', 'Closed', 3),
(64, 'C/2022/064', 'Divorce Proceedings', '2027-04-20', 'Pending', 4),
(65, 'C/2022/065', 'Child Custody Dispute', '2027-05-25', 'Open', 5),
(66, 'C/2022/066', 'Personal Injury Lawsuit', '2027-06-30', 'Closed', 6),
(67, 'C/2022/067', 'Product Liability Claim', '2027-07-05', 'Pending', 7),
(68, 'C/2022/068', 'Wrongful Death Claim', '2027-08-10', 'Open', 8),
(69, 'C/2022/069', 'Commercial Litigation', '2027-09-15', 'Closed', 9),
(70, 'C/2022/070', 'Bankruptcy Proceedings', '2027-10-20', 'Pending', 10),
(71, 'C/2022/071', 'Intellectual Property Infringement', '2027-11-25', 'Open', 11),
(72, 'C/2022/072', 'Antitrust Lawsuit', '2027-12-30', 'Closed', 12),
(73, 'C/2022/073', 'Employment Discrimination Claim', '2028-01-05', 'Pending', 13),
(74, 'C/2022/074', 'Civil Rights Lawsuit', '2028-02-10', 'Open', 14),
(75, 'C/2022/075', 'Consumer Fraud Case', '2028-03-15', 'Closed', 15),
(76, 'C/2022/076', 'Maritime Law Dispute', '2028-04-20', 'Pending', 16),
(77, 'C/2022/077', 'Insurance Bad Faith Claim', '2028-05-25', 'Open', 17),
(78, 'C/2022/078', 'Environmental Pollution Lawsuit', '2028-06-30', 'Closed', 18),
(79, 'C/2022/079', 'Business Tort Case', '2028-07-05', 'Pending', 19),
(80, 'C/2022/080', 'Patent Infringement Lawsuit', '2028-08-10', 'Open', 20),
(81, 'C/2022/081', 'Personal Injury Lawsuit', '2028-09-15', 'Closed', 21),
(82, 'C/2022/082', 'Construction Defect Claim', '2028-10-20', 'Pending', 22),
(83, 'C/2022/083', 'Medical Malpractice Lawsuit', '2028-11-25', 'Open', 23),
(84, 'C/2022/084', 'Defamation Lawsuit', '2028-12-30', 'Closed', 24),
(85, 'C/2022/085', 'Trade Secret Misappropriation', '2029-01-05', 'Pending', 25),
(86, 'C/2022/086', 'Class Action Lawsuit', '2029-02-10', 'Open', 26),
(87, 'C/2022/087', 'Elder Abuse Case', '2029-03-15', 'Closed', 27),
(88, 'C/2022/088', 'Real Estate Fraud Lawsuit', '2029-04-20', 'Pending', 28),
(89, 'C/2022/089', 'Employment Retaliation Claim', '2029-05-25', 'Open', 29),
(90, 'C/2022/090', 'Civil Fraud Lawsuit', '2029-06-30', 'Closed', 30),
(91, 'C/2022/091', 'Whistleblower Lawsuit', '2029-07-05', 'Pending', 1),
(92, 'C/2022/092', 'Product Recall Lawsuit', '2029-08-10', 'Open', 2),
(93, 'C/2022/093', 'Employment Harassment Claim', '2029-09-15', 'Closed', 3),
(94, 'C/2022/094', 'Construction Accident Lawsuit', '2029-10-20', 'Pending', 4),
(95, 'C/2022/095', 'Premises Liability Lawsuit', '2029-11-25', 'Open', 5),
(96, 'C/2022/096', 'Insurance Coverage Dispute', '2029-12-30', 'Closed', 6),
(97, 'C/2022/097', 'Consumer Protection Lawsuit', '2030-01-05', 'Pending', 7),
(98, 'C/2022/098', 'Police Misconduct Lawsuit', '2030-02-10', 'Open', 8),
(99, 'C/2022/099', 'Shareholder Derivative Lawsuit', '2030-03-15', 'Closed', 9),
(100, 'C/2022/100', 'Deceptive Trade Practices Claim', '2030-04-20', 'Pending', 10);

-- --------------------------------------------------------

--
-- Table structure for table `court`
--

CREATE TABLE `court` (
  `CourtID` int(11) NOT NULL,
  `CourtName` varchar(100) NOT NULL,
  `STATE` varchar(100) DEFAULT NULL,
  `DISTRICT` varchar(100) NOT NULL,
  `ContactDetails` varchar(100) DEFAULT NULL,
  `EstablishmentDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `court`
--

INSERT INTO `court` (`CourtID`, `CourtName`, `STATE`, `DISTRICT`, `ContactDetails`, `EstablishmentDate`) VALUES
(1, 'Shimoga District Court', 'Karnataka', 'Shimoga', 'https://www.shimoga.court.gov.in/', '1985-05-15'),
(2, 'Belagavi District Court', 'Karnataka', 'Belagavi', 'https://www.belagavi.court.gov.in/', '1983-08-22'),
(3, 'Hubli District Court', 'Karnataka', 'Dharwad', 'https://www.dharwad.court.gov.in/', '1986-04-30'),
(4, 'Mangalore District Court', 'Karnataka', 'Dakshina Kannada', 'https://www.mangalore.court.gov.in/', '1979-12-12'),
(5, 'Mysore District Court', 'Karnataka', 'Mysore', 'https://www.mysore.court.gov.in/', '1987-09-25'),
(6, 'Gulbarga District Court', 'Karnataka', 'Gulbarga', 'https://www.gulbarga.court.gov.in/', '1980-06-19'),
(7, 'Tumkur District Court', 'Karnataka', 'Tumkur', 'https://www.tumkur.court.gov.in/', '1978-10-05'),
(8, 'Raichur District Court', 'Karnataka', 'Raichur', 'https://www.raichur.court.gov.in/', '1988-07-11'),
(9, 'Hassan District Court', 'Karnataka', 'Hassan', 'https://www.hassan.court.gov.in/', '1981-03-26'),
(10, 'Davanagere District Court', 'Karnataka', 'Davanagere', 'https://www.davanagere.court.gov.in/', '1977-11-02'),
(11, 'Bellary District Court', 'Karnataka', 'Bellary', 'https://www.bellary.court.gov.in/', '1989-08-17'),
(12, 'Bidar District Court', 'Karnataka', 'Bidar', 'https://www.bidar.court.gov.in/', '1976-09-08'),
(13, 'Chitradurga District Court', 'Karnataka', 'Chitradurga', 'https://www.chitradurga.court.gov.in/', '1990-11-30'),
(14, 'Bagalkot District Court', 'Karnataka', 'Bagalkot', 'https://www.bagalkot.court.gov.in/', '1975-07-24'),
(15, 'Chikmagalur District Court', 'Karnataka', 'Chikmagalur', 'https://www.chikmagalur.court.gov.in/', '1991-12-28'),
(16, 'Udupi District Court', 'Karnataka', 'Udupi', 'https://www.udupi.court.gov.in/', '1974-06-15'),
(17, 'Kolar District Court', 'Karnataka', 'Kolar', 'https://www.kolar.court.gov.in/', '1992-10-18'),
(18, 'Yadgir District Court', 'Karnataka', 'Yadgir', 'https://www.yadgir.court.gov.in/', '1973-05-30'),
(19, 'Koppal District Court', 'Karnataka', 'Koppal', 'https://www.koppal.court.gov.in/', '1993-09-08'),
(20, 'Haveri District Court', 'Karnataka', 'Haveri', 'https://www.haveri.court.gov.in/', '1972-04-22'),
(21, 'Ramanagara District Court', 'Karnataka', 'Ramanagara', 'https://www.ramanagara.court.gov.in/', '1994-08-12'),
(22, 'Shivamogga District Court', 'Karnataka', 'Shivamogga', 'https://www.shivamogga.court.gov.in/', '1971-11-05'),
(23, 'Gadag District Court', 'Karnataka', 'Gadag', 'https://www.gadag.court.gov.in/', '1995-07-26'),
(24, 'Mandya District Court', 'Karnataka', 'Mandya', 'https://www.mandya.court.gov.in/', '1970-02-18'),
(25, 'Chikkaballapur District Court', 'Karnataka', 'Chikkaballapur', 'https://www.chikkaballapur.court.gov.in/', '1996-11-30'),
(26, 'Dharwad District Court', 'Karnataka', 'Dharwad', 'https://www.dharwad.court.gov.in/', '1969-09-15'),
(27, 'Bijapur District Court', 'Karnataka', 'Bijapur', 'https://www.bijapur.court.gov.in/', '1997-06-23'),
(28, 'Kodagu District Court', 'Karnataka', 'Kodagu', 'https://www.kodagu.court.gov.in/', '1968-05-11'),
(29, 'Yadgir District Court', 'Karnataka', 'Yadgir', 'https://www.yadgir.court.gov.in/', '1998-12-17'),
(30, 'Ramanagara District Court', 'Karnataka', 'Ramanagara', 'https://www.ramanagara.court.gov.in/', '1967-03-03');

-- --------------------------------------------------------

--
-- Table structure for table `courtlawyercase`
--

CREATE TABLE `courtlawyercase` (
  `COURTID` int(11) NOT NULL,
  `LAWYERID` int(11) NOT NULL,
  `CASEID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `courtlawyercase`
--

INSERT INTO `courtlawyercase` (`COURTID`, `LAWYERID`, `CASEID`) VALUES
(1, 1, 1),
(1, 31, 31),
(2, 2, 2),
(2, 32, 32),
(3, 3, 3),
(3, 33, 33),
(4, 4, 4),
(4, 34, 34),
(5, 5, 5),
(5, 35, 35),
(6, 6, 6),
(6, 36, 36),
(7, 7, 7),
(7, 37, 37),
(8, 8, 8),
(8, 38, 38),
(9, 9, 9),
(9, 39, 39),
(10, 10, 10),
(10, 40, 40),
(11, 11, 11),
(11, 41, 41),
(12, 12, 12),
(12, 42, 42),
(13, 13, 13),
(13, 43, 43),
(14, 14, 14),
(14, 44, 44),
(15, 15, 15),
(15, 45, 45),
(16, 16, 16),
(16, 46, 46),
(17, 17, 17),
(17, 47, 47),
(18, 18, 18),
(18, 48, 48),
(19, 19, 19),
(19, 49, 49),
(20, 20, 20),
(20, 50, 50),
(21, 21, 21),
(22, 22, 22),
(23, 23, 23),
(24, 24, 24),
(25, 25, 25),
(26, 26, 26),
(27, 27, 27),
(28, 28, 28),
(29, 29, 29),
(30, 30, 30);

-- --------------------------------------------------------

--
-- Table structure for table `hearing`
--

CREATE TABLE `hearing` (
  `HEARING_ID` int(11) NOT NULL,
  `DATETIME` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `JUDGE_ID` int(11) NOT NULL,
  `LAWYER_ID` int(11) NOT NULL,
  `CASE_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `hearing`
--

INSERT INTO `hearing` (`HEARING_ID`, `DATETIME`, `JUDGE_ID`, `LAWYER_ID`, `CASE_ID`) VALUES
(1, '2024-02-13 02:30:00', 1, 1, 1),
(2, '2024-02-14 03:30:00', 2, 2, 2),
(3, '2024-02-15 04:30:00', 3, 3, 3),
(4, '2024-02-16 05:30:00', 4, 4, 4),
(5, '2024-02-17 06:30:00', 5, 5, 5),
(6, '2024-02-18 07:30:00', 6, 6, 6),
(7, '2024-02-19 08:30:00', 7, 7, 7),
(8, '2024-02-20 09:30:00', 8, 8, 8),
(9, '2024-02-21 10:30:00', 9, 9, 9),
(10, '2024-02-22 11:30:00', 10, 10, 10),
(11, '2024-02-23 12:30:00', 11, 11, 11),
(12, '2024-02-24 13:30:00', 12, 12, 12),
(13, '2024-02-25 14:30:00', 13, 13, 13),
(14, '2024-02-26 15:30:00', 14, 14, 14),
(15, '2024-02-27 16:30:00', 15, 15, 15),
(16, '2024-02-28 17:30:00', 16, 16, 16),
(17, '2024-02-28 18:30:00', 17, 17, 17),
(18, '2024-02-29 19:30:00', 18, 18, 18),
(19, '2024-03-01 20:30:00', 19, 19, 19),
(20, '2024-03-02 21:30:00', 20, 20, 20),
(21, '2024-03-03 22:30:00', 21, 21, 21),
(22, '2024-03-04 23:30:00', 22, 22, 22),
(23, '2024-03-06 00:30:00', 23, 23, 23),
(24, '2024-03-07 01:30:00', 24, 24, 24),
(25, '2024-03-08 02:30:00', 25, 25, 25),
(26, '2024-03-09 03:30:00', 26, 26, 26),
(27, '2024-03-10 04:30:00', 27, 27, 27),
(28, '2024-03-11 05:30:00', 28, 28, 28),
(29, '2024-03-12 06:30:00', 29, 29, 29),
(30, '2024-03-13 07:30:00', 30, 30, 30),
(31, '2024-03-14 08:30:00', 31, 31, 31),
(32, '2024-03-15 09:30:00', 32, 32, 32),
(33, '2024-03-16 10:30:00', 33, 33, 33),
(34, '2024-03-17 11:30:00', 34, 34, 34),
(35, '2024-03-18 12:30:00', 35, 35, 35),
(36, '2024-03-19 13:30:00', 36, 36, 36),
(37, '2024-03-20 14:30:00', 37, 37, 37),
(38, '2024-03-21 15:30:00', 38, 38, 38),
(39, '2024-03-22 16:30:00', 39, 39, 39),
(40, '2024-03-23 17:30:00', 40, 40, 40),
(41, '2024-03-23 18:30:00', 41, 41, 41),
(42, '2024-03-24 19:30:00', 42, 42, 42),
(43, '2024-03-25 20:30:00', 43, 43, 43),
(44, '2024-03-26 21:30:00', 44, 44, 44),
(45, '2024-03-27 22:30:00', 45, 45, 45),
(46, '2024-03-28 23:30:00', 46, 46, 46),
(47, '2024-03-30 00:30:00', 47, 47, 47),
(48, '2024-03-31 01:30:00', 48, 48, 48),
(49, '2024-04-01 02:30:00', 49, 49, 49),
(50, '2024-04-02 03:30:00', 50, 50, 50);

-- --------------------------------------------------------

--
-- Table structure for table `judge`
--

CREATE TABLE `judge` (
  `JudgeID` int(11) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Specialization` varchar(100) DEFAULT NULL,
  `EMAIL` varchar(100) DEFAULT NULL,
  `AppointmentDate` date DEFAULT NULL,
  `COURT_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `judge`
--

INSERT INTO `judge` (`JudgeID`, `Name`, `Specialization`, `EMAIL`, `AppointmentDate`, `COURT_ID`) VALUES
(1, 'Ravi Kumar', 'Criminal Law', 'ravi.kumar@example.com', '2005-09-15', 1),
(2, 'Priya Sharma', 'Family Law', 'priya.sharma@example.com', '2007-03-20', 2),
(3, 'Vikram Singh', 'Civil Law', 'vikram.singh@example.com', '2008-11-10', 3),
(4, 'Ananya Gupta', 'Corporate Law', 'ananya.gupta@example.com', '2010-05-25', 4),
(5, 'Sneha Patel', 'Environmental Law', 'sneha.patel@example.com', '2012-08-12', 5),
(6, 'Rahul Joshi', 'Labor Law', 'rahul.joshi@example.com', '2014-02-18', 6),
(7, 'Aarti Desai', 'Intellectual Property Law', 'aarti.desai@example.com', '2016-06-30', 7),
(8, 'Akash Malhotra', 'Immigration Law', 'akash.malhotra@example.com', '2018-09-05', 8),
(9, 'Neha Khanna', 'Real Estate Law', 'neha.khanna@example.com', '2020-11-22', 9),
(10, 'Amit Sharma', 'Constitutional Law', 'amit.sharma@example.com', '2022-04-14', 10),
(11, 'Suman Kapoor', 'Employment Law', 'suman.kapoor@example.com', '2006-07-03', 11),
(12, 'Rajat Verma', 'Tax Law', 'rajat.verma@example.com', '2009-10-27', 12),
(13, 'Anjali Gupta', 'Personal Injury Law', 'anjali.gupta@example.com', '2011-12-09', 13),
(14, 'Abhishek Sharma', 'Bankruptcy Law', 'abhishek.sharma@example.com', '2013-05-31', 14),
(15, 'Mehak Singh', 'Health Care Law', 'mehak.singh@example.com', '2015-08-20', 15),
(16, 'Divya Rajput', 'Insurance Law', 'divya.rajput@example.com', '2017-01-10', 16),
(17, 'Nitin Gupta', 'Antitrust Law', 'nitin.gupta@example.com', '2019-03-25', 17),
(18, 'Pooja Sharma', 'International Law', 'pooja.sharma@example.com', '2021-06-18', 18),
(19, 'Rahul Singh', 'Entertainment Law', 'rahul.singh@example.com', '2004-08-05', 19),
(20, 'Sakshi Mehta', 'Patent Law', 'sakshi.mehta@example.com', '2008-12-17', 20),
(21, 'Gaurav Gupta', 'Immigration Law', 'gaurav.gupta@example.com', '2010-04-22', 21),
(22, 'Kiran Sharma', 'Real Estate Law', 'kiran.sharma@example.com', '2012-09-08', 22),
(23, 'Preeti Singh', 'Constitutional Law', 'preeti.singh@example.com', '2014-11-29', 23),
(24, 'Sahil Gupta', 'Employment Law', 'sahil.gupta@example.com', '2016-03-03', 24),
(25, 'Jyoti Sharma', 'Tax Law', 'jyoti.sharma@example.com', '2018-05-16', 25),
(26, 'Anushka Singh', 'Personal Injury Law', 'anushka.singh@example.com', '2020-07-21', 26),
(27, 'Rohan Kapoor', 'Bankruptcy Law', 'rohan.kapoor@example.com', '2022-10-10', 27),
(28, 'Tanya Mehra', 'Health Care Law', 'tanya.mehra@example.com', '2007-01-12', 28),
(29, 'Varun Singh', 'Insurance Law', 'varun.singh@example.com', '2009-04-05', 29),
(30, 'Nisha Verma', 'Antitrust Law', 'nisha.verma@example.com', '2011-06-28', 30),
(31, 'Vishal Reddy', 'Criminal Law', 'vishal.reddy@example.com', '2005-09-15', 1),
(32, 'Shreya Gupta', 'Family Law', 'shreya.gupta@example.com', '2007-03-20', 2),
(33, 'Aruna Singh', 'Civil Law', 'aruna.singh@example.com', '2008-11-10', 3),
(34, 'Prakash Patel', 'Corporate Law', 'prakash.patel@example.com', '2010-05-25', 4),
(35, 'Kavita Sharma', 'Environmental Law', 'kavita.sharma@example.com', '2012-08-12', 5),
(36, 'Vikas Kumar', 'Labor Law', 'vikas.kumar@example.com', '2014-02-18', 6),
(37, 'Deepika Jain', 'Intellectual Property Law', 'deepika.jain@example.com', '2016-06-30', 7),
(38, 'Rajesh Khanna', 'Immigration Law', 'rajesh.khanna@example.com', '2018-09-05', 8),
(39, 'Neha Gupta', 'Real Estate Law', 'neha.gupta@example.com', '2020-11-22', 9),
(40, 'Amit Verma', 'Constitutional Law', 'amit.verma@example.com', '2022-04-14', 10),
(41, 'Sneha Singh', 'Employment Law', 'sneha.singh@example.com', '2006-07-03', 11),
(42, 'Gaurav Sharma', 'Tax Law', 'gaurav.sharma@example.com', '2009-10-27', 12),
(43, 'Rajni Yadav', 'Personal Injury Law', 'rajni.yadav@example.com', '2011-12-09', 13),
(44, 'Ankit Singh', 'Bankruptcy Law', 'ankit.singh@example.com', '2013-05-31', 14),
(45, 'Pooja Kapoor', 'Health Care Law', 'pooja.kapoor@example.com', '2015-08-20', 15),
(46, 'Rahul Mehra', 'Insurance Law', 'rahul.mehra@example.com', '2017-01-10', 16),
(47, 'Nidhi Sharma', 'Antitrust Law', 'nidhi.sharma@example.com', '2019-03-25', 17),
(48, 'Vivek Kumar', 'International Law', 'vivek.kumar@example.com', '2021-06-18', 18),
(49, 'Simran Singh', 'Entertainment Law', 'simran.singh@example.com', '2004-08-05', 19),
(50, 'Karan Gupta', 'Patent Law', 'karan.gupta@example.com', '2008-12-17', 20),
(51, 'Riya Singh', 'Immigration Law', 'riya.singh@example.com', '2010-04-22', 21),
(52, 'Alok Sharma', 'Real Estate Law', 'alok.sharma@example.com', '2012-09-08', 22),
(53, 'Aditi Singh', 'Constitutional Law', 'aditi.singh@example.com', '2014-11-29', 23),
(54, 'Rakesh Kumar', 'Employment Law', 'rakesh.kumar@example.com', '2016-03-03', 24),
(55, 'Sakshi Gupta', 'Tax Law', 'sakshi.gupta@example.com', '2018-05-16', 25),
(56, 'Rajat Mehta', 'Personal Injury Law', 'rajat.mehta@example.com', '2020-07-21', 26),
(57, 'Preeti Sharma', 'Bankruptcy Law', 'preeti.sharma@example.com', '2022-10-10', 27),
(58, 'Kunal Verma', 'Health Care Law', 'kunal.verma@example.com', '2007-01-12', 28),
(59, 'Swati Singh', 'Insurance Law', 'swati.singh@example.com', '2009-04-05', 29),
(60, 'Harish Kumar', 'Antitrust Law', 'harish.kumar@example.com', '2011-06-28', 30);

-- --------------------------------------------------------

--
-- Table structure for table `judgecase`
--

CREATE TABLE `judgecase` (
  `JudgeID` int(11) NOT NULL,
  `CaseID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `judgecase`
--

INSERT INTO `judgecase` (`JudgeID`, `CaseID`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10),
(11, 11),
(12, 12),
(13, 13),
(14, 14),
(15, 15),
(16, 16),
(17, 17),
(18, 18),
(19, 19),
(20, 20),
(21, 21),
(22, 22),
(23, 23),
(24, 24),
(25, 25),
(26, 26),
(27, 27),
(28, 28),
(29, 29),
(30, 30),
(31, 31),
(32, 32),
(33, 33),
(34, 34),
(35, 35),
(36, 36),
(37, 37),
(38, 38),
(39, 39),
(40, 40),
(41, 41),
(42, 42),
(43, 43),
(44, 44),
(45, 45),
(46, 46),
(47, 47),
(48, 48),
(49, 49),
(50, 50);

-- --------------------------------------------------------

--
-- Table structure for table `lawyer`
--

CREATE TABLE `lawyer` (
  `LawyerID` int(11) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `PracticeArea` varchar(100) DEFAULT NULL,
  `GMAIL` varchar(100) DEFAULT NULL,
  `LicenseNumber` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `lawyer`
--

INSERT INTO `lawyer` (`LawyerID`, `Name`, `PracticeArea`, `GMAIL`, `LicenseNumber`) VALUES
(1, 'Rajesh Kumar', 'Criminal Law', 'rajesh.kumar@gmail.com', 'IN1234567'),
(2, 'Priya Sharma', 'Family Law', 'priya.sharma@gmail.com', 'IN2345678'),
(3, 'Suresh Gupta', 'Corporate Law', 'suresh.gupta@gmail.com', 'IN3456789'),
(4, 'Anjali Patel', 'Real Estate Law', 'anjali.patel@gmail.com', 'IN4567890'),
(5, 'Amit Singh', 'Immigration Law', 'amit.singh@gmail.com', 'IN5678901'),
(6, 'Kavita Verma', 'Personal Injury Law', 'kavita.verma@gmail.com', 'IN6789012'),
(7, 'Rahul Shah', 'Intellectual Property Law', 'rahul.shah@gmail.com', 'IN7890123'),
(8, 'Neha Joshi', 'Employment Law', 'neha.joshi@gmail.com', 'IN8901234'),
(9, 'Rakesh Mishra', 'Environmental Law', 'rakesh.mishra@gmail.com', 'IN9012345'),
(10, 'Pooja Malhotra', 'Healthcare Law', 'pooja.malhotra@gmail.com', 'IN0123456'),
(11, 'Vivek Sharma', 'Tax Law', 'vivek.sharma@gmail.com', 'IN1111111'),
(12, 'Sneha Singhania', 'Bankruptcy Law', 'sneha.singhania@gmail.com', 'IN2222222'),
(13, 'Amitabh Gupta', 'International Law', 'amitabh.gupta@gmail.com', 'IN3333333'),
(14, 'Suman Mishra', 'Civil Rights Law', 'suman.mishra@gmail.com', 'IN4444444'),
(15, 'Shashi Patel', 'Consumer Law', 'shashi.patel@gmail.com', 'IN5555555'),
(16, 'Nisha Rana', 'Contract Law', 'nisha.rana@gmail.com', 'IN6666666'),
(17, 'Deepak Agarwal', 'Administrative Law', 'deepak.agarwal@gmail.com', 'IN7777777'),
(18, 'Ananya Sharma', 'Property Law', 'ananya.sharma@gmail.com', 'IN8888888'),
(19, 'Saurabh Singh', 'Torts Law', 'saurabh.singh@gmail.com', 'IN9999999'),
(20, 'Anushka Gupta', 'Insurance Law', 'anushka.gupta@gmail.com', 'IN0000001'),
(21, 'Riya Kapoor', 'Constitutional Law', 'riya.kapoor@gmail.com', 'IN0000011'),
(22, 'Rahul Nair', 'Energy Law', 'rahul.nair@gmail.com', 'IN0000022'),
(23, 'Aarav Reddy', 'Media Law', 'aarav.reddy@gmail.com', 'IN0000033'),
(24, 'Ishaan Kumar', 'Sports Law', 'ishaan.kumar@gmail.com', 'IN0000044'),
(25, 'Aarti Sharma', 'Education Law', 'aarti.sharma@gmail.com', 'IN0000055'),
(26, 'Vikram Singh', 'Entertainment Law', 'vikram.singh@gmail.com', 'IN0000066'),
(27, 'Aakash Patel', 'Government Law', 'aakash.patel@gmail.com', 'IN0000077'),
(28, 'Preeti Pandey', 'Privacy Law', 'preeti.pandey@gmail.com', 'IN0000088'),
(29, 'Aditya Kumar', 'Estate Planning Law', 'aditya.kumar@gmail.com', 'IN0000099'),
(30, 'Divya Singh', 'Securities Law', 'divya.singh@gmail.com', 'IN0000100'),
(31, 'Prerna Gupta', 'International Trade Law', 'prerna.gupta@gmail.com', 'IN0000111'),
(32, 'Rishi Verma', 'Cybersecurity Law', 'rishi.verma@gmail.com', 'IN0000122'),
(33, 'Anjali Khanna', 'Antitrust Law', 'anjali.khanna@gmail.com', 'IN0000133'),
(34, 'Varun Sharma', 'Maritime Law', 'varun.sharma@gmail.com', 'IN0000144'),
(35, 'Kritika Das', 'Transportation Law', 'kritika.das@gmail.com', 'IN0000155'),
(36, 'Rohan Mehta', 'International Humanitarian Law', 'rohan.mehta@gmail.com', 'IN0000166'),
(37, 'Sakshi Singh', 'Art Law', 'sakshi.singh@gmail.com', 'IN0000177'),
(38, 'Aman Gupta', 'Intellectual Property Litigation', 'aman.gupta@gmail.com', 'IN0000188'),
(39, 'Manisha Mishra', 'Labor Law', 'manisha.mishra@gmail.com', 'IN0000199'),
(40, 'Arjun Kapoor', 'Medical Malpractice Law', 'arjun.kapoor@gmail.com', 'IN0000200'),
(41, 'Neha Reddy', 'Military Law', 'neha.reddy@gmail.com', 'IN0000211'),
(42, 'Rajat Kumar', 'Art Law', 'rajat.kumar@gmail.com', 'IN0000222'),
(43, 'Simran Singh', 'Transportation Law', 'simran.singh@gmail.com', 'IN0000233'),
(44, 'Akash Verma', 'International Humanitarian Law', 'akash.verma@gmail.com', 'IN0000244'),
(45, 'Isha Mehra', 'Art Law', 'isha.mehra@gmail.com', 'IN0000255'),
(46, 'Aarav Gupta', 'Intellectual Property Litigation', 'aarav.gupta@gmail.com', 'IN0000266'),
(47, 'Riya Sharma', 'Labor Law', 'riya.sharma@gmail.com', 'IN0000277'),
(48, 'Vivek Mehra', 'Medical Malpractice Law', 'vivek.mehra@gmail.com', 'IN0000288'),
(49, 'Sanya Verma', 'Military Law', 'sanya.verma@gmail.com', 'IN0000299'),
(50, 'Kartik Singh', 'Art Law', 'kartik.singh@gmail.com', 'IN0000300');

-- --------------------------------------------------------

--
-- Table structure for table `lawyerpartycase`
--

CREATE TABLE `lawyerpartycase` (
  `LawyerID` int(11) NOT NULL,
  `PartyID` int(11) NOT NULL,
  `CaseID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `lawyerpartycase`
--

INSERT INTO `lawyerpartycase` (`LawyerID`, `PartyID`, `CaseID`) VALUES
(1, 1, 1),
(1, 31, 31),
(1, 61, 61),
(1, 91, 91),
(2, 2, 2),
(2, 32, 32),
(2, 62, 62),
(2, 92, 92),
(3, 3, 3),
(3, 33, 33),
(3, 63, 63),
(3, 93, 93),
(4, 4, 4),
(4, 34, 34),
(4, 64, 64),
(4, 94, 94),
(5, 5, 5),
(5, 35, 35),
(5, 65, 65),
(5, 95, 95),
(6, 6, 6),
(6, 36, 36),
(6, 66, 66),
(6, 96, 96),
(7, 7, 7),
(7, 37, 37),
(7, 67, 67),
(7, 97, 97),
(8, 8, 8),
(8, 38, 38),
(8, 68, 68),
(8, 98, 98),
(9, 9, 9),
(9, 39, 39),
(9, 69, 69),
(9, 99, 99),
(10, 10, 10),
(10, 40, 40),
(10, 70, 70),
(10, 100, 100),
(11, 11, 11),
(11, 41, 41),
(11, 71, 71),
(12, 12, 12),
(12, 42, 42),
(12, 72, 72),
(13, 13, 13),
(13, 43, 43),
(13, 73, 73),
(14, 14, 14),
(14, 44, 44),
(14, 74, 74),
(15, 15, 15),
(15, 45, 45),
(15, 75, 75),
(16, 16, 16),
(16, 46, 46),
(16, 76, 76),
(17, 17, 17),
(17, 47, 47),
(17, 77, 77),
(18, 18, 18),
(18, 48, 48),
(18, 78, 78),
(19, 19, 19),
(19, 49, 49),
(19, 79, 79),
(20, 20, 20),
(20, 50, 50),
(20, 80, 80),
(21, 21, 21),
(21, 51, 51),
(21, 81, 81),
(22, 22, 22),
(22, 52, 52),
(22, 82, 82),
(23, 23, 23),
(23, 53, 53),
(23, 83, 83),
(24, 24, 24),
(24, 54, 54),
(24, 84, 84),
(25, 25, 25),
(25, 55, 55),
(25, 85, 85),
(26, 26, 26),
(26, 56, 56),
(26, 86, 86),
(27, 27, 27),
(27, 57, 57),
(27, 87, 87),
(28, 28, 28),
(28, 58, 58),
(28, 88, 88),
(29, 29, 29),
(29, 59, 59),
(29, 89, 89),
(30, 30, 30),
(30, 60, 60),
(30, 90, 90);

-- --------------------------------------------------------

--
-- Table structure for table `party`
--

CREATE TABLE `party` (
  `PartyID` int(11) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Address` varchar(100) DEFAULT NULL,
  `ContactDetails` varchar(100) DEFAULT NULL,
  `Role` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `party`
--

INSERT INTO `party` (`PartyID`, `Name`, `Address`, `ContactDetails`, `Role`) VALUES
(1, 'Suresh Enterprises', '123, MG Road, Bangalore', 'suresh.enterprises@gmail.com', 'Plaintiff'),
(2, 'Ramesh Constructions', '456, Indiranagar, Mysore', 'ramesh.constructions@gmail.com', 'Defendant'),
(3, 'Radha Textiles', '789, Commercial Street, Hubli', 'radha.textiles@gmail.com', 'Plaintiff'),
(4, 'Ganesh Builders', '321, Jayanagar, Mangalore', 'ganesh.builders@gmail.com', 'Defendant'),
(5, 'Krishna Exports', '654, Brigade Road, Bangalore', 'krishna.exports@gmail.com', 'Plaintiff'),
(6, 'Sita Pharmaceuticals', '987, Malleshwaram, Bangalore', 'sita.pharmaceuticals@gmail.com', 'Defendant'),
(7, 'Rajesh Hardware', '234, Residency Road, Bangalore', 'rajesh.hardware@gmail.com', 'Plaintiff'),
(8, 'Manju Electricals', '567, Rajajinagar, Bangalore', 'manju.electricals@gmail.com', 'Defendant'),
(9, 'Vinayak Constructions', '890, Yelahanka, Bangalore', 'vinayak.constructions@gmail.com', 'Plaintiff'),
(10, 'Aruna Enterprises', '123, MG Road, Bangalore', 'aruna.enterprises@gmail.com', 'Defendant'),
(11, 'Naveen Textiles', '456, Indiranagar, Mysore', 'naveen.textiles@gmail.com', 'Plaintiff'),
(12, 'Suman Builders', '789, Commercial Street, Hubli', 'suman.builders@gmail.com', 'Defendant'),
(13, 'Ram Exports', '321, Jayanagar, Mangalore', 'ram.exports@gmail.com', 'Plaintiff'),
(14, 'Vijay Pharmaceuticals', '654, Brigade Road, Bangalore', 'vijay.pharmaceuticals@gmail.com', 'Defendant'),
(15, 'Mohan Hardware', '987, Malleshwaram, Bangalore', 'mohan.hardware@gmail.com', 'Plaintiff'),
(16, 'Geeta Electricals', '234, Residency Road, Bangalore', 'geeta.electricals@gmail.com', 'Defendant'),
(17, 'Krish Constructions', '567, Rajajinagar, Bangalore', 'krish.constructions@gmail.com', 'Plaintiff'),
(18, 'Rani Enterprises', '890, Yelahanka, Bangalore', 'rani.enterprises@gmail.com', 'Defendant'),
(19, 'Amit Textiles', '123, MG Road, Bangalore', 'amit.textiles@gmail.com', 'Plaintiff'),
(20, 'Nisha Builders', '456, Indiranagar, Mysore', 'nisha.builders@gmail.com', 'Defendant'),
(21, 'Vishal Exports', '789, Commercial Street, Hubli', 'vishal.exports@gmail.com', 'Plaintiff'),
(22, 'Sandeep Pharmaceuticals', '321, Jayanagar, Mangalore', 'sandeep.pharmaceuticals@gmail.com', 'Defendant'),
(23, 'Deepa Hardware', '654, Brigade Road, Bangalore', 'deepa.hardware@gmail.com', 'Plaintiff'),
(24, 'Raj Builders', '987, Malleshwaram, Bangalore', 'raj.builders@gmail.com', 'Defendant'),
(25, 'Kiran Electricals', '234, Residency Road, Bangalore', 'kiran.electricals@gmail.com', 'Plaintiff'),
(26, 'Suresh Constructions', '567, Rajajinagar, Bangalore', 'suresh.constructions@gmail.com', 'Defendant'),
(27, 'Rama Enterprises', '890, Yelahanka, Bangalore', 'rama.enterprises@gmail.com', 'Plaintiff'),
(28, 'Anu Textiles', '123, MG Road, Bangalore', 'anu.textiles@gmail.com', 'Defendant'),
(29, 'Vijay Builders', '456, Indiranagar, Mysore', 'vijay.builders@gmail.com', 'Plaintiff'),
(30, 'Raj Exports', '789, Commercial Street, Hubli', 'raj.exports@gmail.com', 'Defendant'),
(31, 'Geetha Pharmaceuticals', '321, Jayanagar, Mangalore', 'geetha.pharmaceuticals@gmail.com', 'Plaintiff'),
(32, 'Arun Hardware', '654, Brigade Road, Bangalore', 'arun.hardware@gmail.com', 'Defendant'),
(33, 'Rohan Builders', '987, Malleshwaram, Bangalore', 'rohan.builders@gmail.com', 'Plaintiff'),
(34, 'Neha Electricals', '234, Residency Road, Bangalore', 'neha.electricals@gmail.com', 'Defendant'),
(35, 'Kavita Constructions', '567, Rajajinagar, Bangalore', 'kavita.constructions@gmail.com', 'Plaintiff'),
(36, 'Rajesh Enterprises', '890, Yelahanka, Bangalore', 'rajesh.enterprises@gmail.com', 'Defendant'),
(37, 'Aruna Textiles', '123, MG Road, Bangalore', 'aruna.textiles@gmail.com', 'Plaintiff'),
(38, 'Vivek Builders', '456, Indiranagar, Mysore', 'vivek.builders@gmail.com', 'Defendant'),
(39, 'Shiv Exports', '789, Commercial Street, Hubli', 'shiv.exports@gmail.com', 'Plaintiff'),
(40, 'Rahul Pharmaceuticals', '321, Jayanagar, Mangalore', 'rahul.pharmaceuticals@gmail.com', 'Defendant'),
(41, 'Sneha Hardware', '654, Brigade Road, Bangalore', 'sneha.hardware@gmail.com', 'Plaintiff'),
(42, 'Sai Builders', '987, Malleshwaram, Bangalore', 'sai.builders@gmail.com', 'Defendant'),
(43, 'Sindhu Electricals', '234, Residency Road, Bangalore', 'sindhu.electricals@gmail.com', 'Plaintiff'),
(44, 'Kamal Constructions', '567, Rajajinagar, Bangalore', 'kamal.constructions@gmail.com', 'Defendant'),
(45, 'Rajesh Enterprises', '890, Yelahanka, Bangalore', 'rajesh.enterprises@gmail.com', 'Plaintiff'),
(46, 'Pooja Textiles', '123, MG Road, Bangalore', 'pooja.textiles@gmail.com', 'Defendant'),
(47, 'Vishnu Builders', '456, Indiranagar, Mysore', 'vishnu.builders@gmail.com', 'Plaintiff'),
(48, 'Anushka Exports', '789, Commercial Street, Hubli', 'anushka.exports@gmail.com', 'Defendant'),
(49, 'Naveen Pharmaceuticals', '321, Jayanagar, Mangalore', 'naveen.pharmaceuticals@gmail.com', 'Plaintiff'),
(50, 'Rajiv Hardware', '654, Brigade Road, Bangalore', 'rajiv.hardware@gmail.com', 'Defendant'),
(51, 'Arun Enterprises', '123, MG Road, Bangalore', 'arun.enterprises@gmail.com', 'Plaintiff'),
(52, 'Nivedita Constructions', '456, Indiranagar, Mysore', 'nivedita.constructions@gmail.com', 'Defendant'),
(53, 'Sai Textiles', '789, Commercial Street, Hubli', 'sai.textiles@gmail.com', 'Plaintiff'),
(54, 'Nitin Builders', '321, Jayanagar, Mangalore', 'nitin.builders@gmail.com', 'Defendant'),
(55, 'Raksha Exports', '654, Brigade Road, Bangalore', 'raksha.exports@gmail.com', 'Plaintiff'),
(56, 'Srinivas Pharmaceuticals', '987, Malleshwaram, Bangalore', 'srinivas.pharmaceuticals@gmail.com', 'Defendant'),
(57, 'Prakash Hardware', '234, Residency Road, Bangalore', 'prakash.hardware@gmail.com', 'Plaintiff'),
(58, 'Anita Electricals', '567, Rajajinagar, Bangalore', 'anita.electricals@gmail.com', 'Defendant'),
(59, 'Venkat Constructions', '890, Yelahanka, Bangalore', 'venkat.constructions@gmail.com', 'Plaintiff'),
(60, 'Shivani Enterprises', '123, MG Road, Bangalore', 'shivani.enterprises@gmail.com', 'Defendant'),
(61, 'Vishal Textiles', '456, Indiranagar, Mysore', 'vishal.textiles@gmail.com', 'Plaintiff'),
(62, 'Ritu Builders', '789, Commercial Street, Hubli', 'ritu.builders@gmail.com', 'Defendant'),
(63, 'Sandeep Exports', '321, Jayanagar, Mangalore', 'sandeep.exports@gmail.com', 'Plaintiff'),
(64, 'Neha Pharmaceuticals', '654, Brigade Road, Bangalore', 'neha.pharmaceuticals@gmail.com', 'Defendant'),
(65, 'Ajay Hardware', '987, Malleshwaram, Bangalore', 'ajay.hardware@gmail.com', 'Plaintiff'),
(66, 'Priya Electricals', '234, Residency Road, Bangalore', 'priya.electricals@gmail.com', 'Defendant'),
(67, 'Manjunath Constructions', '567, Rajajinagar, Bangalore', 'manjunath.constructions@gmail.com', 'Plaintiff'),
(68, 'Sneha Enterprises', '890, Yelahanka, Bangalore', 'sneha.enterprises@gmail.com', 'Defendant'),
(69, 'Rajesh Textiles', '123, MG Road, Bangalore', 'rajesh.textiles@gmail.com', 'Plaintiff'),
(70, 'Anand Builders', '456, Indiranagar, Mysore', 'anand.builders@gmail.com', 'Defendant'),
(71, 'Vijaya Exports', '789, Commercial Street, Hubli', 'vijaya.exports@gmail.com', 'Plaintiff'),
(72, 'Sai Pharmaceuticals', '321, Jayanagar, Mangalore', 'sai.pharmaceuticals@gmail.com', 'Defendant'),
(73, 'Rajendra Hardware', '654, Brigade Road, Bangalore', 'rajendra.hardware@gmail.com', 'Plaintiff'),
(74, 'Lakshmi Electricals', '987, Malleshwaram, Bangalore', 'lakshmi.electricals@gmail.com', 'Defendant'),
(75, 'Surya Constructions', '234, Residency Road, Bangalore', 'surya.constructions@gmail.com', 'Plaintiff'),
(76, 'Manoj Enterprises', '567, Rajajinagar, Bangalore', 'manoj.enterprises@gmail.com', 'Defendant'),
(77, 'Ananya Textiles', '890, Yelahanka, Bangalore', 'ananya.textiles@gmail.com', 'Plaintiff'),
(78, 'Rahul Builders', '123, MG Road, Bangalore', 'rahul.builders@gmail.com', 'Defendant'),
(79, 'Naveen Exports', '456, Indiranagar, Mysore', 'naveen.exports@gmail.com', 'Plaintiff'),
(80, 'Shiva Pharmaceuticals', '789, Commercial Street, Hubli', 'shiva.pharmaceuticals@gmail.com', 'Defendant'),
(81, 'Mangesh Hardware', '321, Jayanagar, Mangalore', 'mangesh.hardware@gmail.com', 'Plaintiff'),
(82, 'Divya Electricals', '654, Brigade Road, Bangalore', 'divya.electricals@gmail.com', 'Defendant'),
(83, 'Ganesh Constructions', '987, Malleshwaram, Bangalore', 'ganesh.constructions@gmail.com', 'Plaintiff'),
(84, 'Anjali Enterprises', '234, Residency Road, Bangalore', 'anjali.enterprises@gmail.com', 'Defendant'),
(85, 'Vikas Textiles', '567, Rajajinagar, Bangalore', 'vikas.textiles@gmail.com', 'Plaintiff'),
(86, 'Rahul Exports', '890, Yelahanka, Bangalore', 'rahul.exports@gmail.com', 'Defendant'),
(87, 'Sujata Pharmaceuticals', '123, MG Road, Bangalore', 'sujata.pharmaceuticals@gmail.com', 'Plaintiff'),
(88, 'Srinidhi Hardware', '456, Indiranagar, Mysore', 'srinidhi.hardware@gmail.com', 'Defendant'),
(89, 'Gopal Constructions', '789, Commercial Street, Hubli', 'gopal.constructions@gmail.com', 'Plaintiff'),
(90, 'Krishna Enterprises', '321, Jayanagar, Mangalore', 'krishna.enterprises@gmail.com', 'Defendant'),
(91, 'Anuradha Textiles', '654, Brigade Road, Bangalore', 'anuradha.textiles@gmail.com', 'Plaintiff'),
(92, 'Vikram Builders', '987, Malleshwaram, Bangalore', 'vikram.builders@gmail.com', 'Defendant'),
(93, 'Vijay Electricals', '234, Residency Road, Bangalore', 'vijay.electricals@gmail.com', 'Plaintiff'),
(94, 'Aruna Constructions', '567, Rajajinagar, Bangalore', 'aruna.constructions@gmail.com', 'Defendant'),
(95, 'Sneha Enterprises', '890, Yelahanka, Bangalore', 'sneha.enterprises@gmail.com', 'Plaintiff'),
(96, 'Rajesh Textiles', '123, MG Road, Bangalore', 'rajesh.textiles@gmail.com', 'Defendant'),
(97, 'Anand Builders', '456, Indiranagar, Mysore', 'anand.builders@gmail.com', 'Plaintiff'),
(98, 'Vijaya Exports', '789, Commercial Street, Hubli', 'vijaya.exports@gmail.com', 'Defendant'),
(99, 'Sai Pharmaceuticals', '321, Jayanagar, Mangalore', 'sai.pharmaceuticals@gmail.com', 'Plaintiff'),
(100, 'Rajendra Hardware', '654, Brigade Road, Bangalore', 'rajendra.hardware@gmail.com', 'Defendant');

-- --------------------------------------------------------

--
-- Table structure for table `partycasehearing`
--

CREATE TABLE `partycasehearing` (
  `PartyID` int(11) NOT NULL,
  `CaseID` int(11) NOT NULL,
  `HearingID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `partycasehearing`
--

INSERT INTO `partycasehearing` (`PartyID`, `CaseID`, `HearingID`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 5),
(6, 6, 6),
(7, 7, 7),
(8, 8, 8),
(9, 9, 9),
(10, 10, 10),
(11, 11, 11),
(12, 12, 12),
(13, 13, 13),
(14, 14, 14),
(15, 15, 15),
(16, 16, 16),
(17, 17, 17),
(18, 18, 18),
(19, 19, 19),
(20, 20, 20),
(21, 21, 21),
(22, 22, 22),
(23, 23, 23),
(24, 24, 24),
(25, 25, 25),
(26, 26, 26),
(27, 27, 27),
(28, 28, 28),
(29, 29, 29),
(30, 30, 30),
(31, 31, 31),
(32, 32, 32),
(33, 33, 33),
(34, 34, 34),
(35, 35, 35),
(36, 36, 36),
(37, 37, 37),
(38, 38, 38),
(39, 39, 39),
(40, 40, 40),
(41, 41, 41),
(42, 42, 42),
(43, 43, 43),
(44, 44, 44),
(45, 45, 45),
(46, 46, 46),
(47, 47, 47),
(48, 48, 48),
(49, 49, 49),
(50, 50, 50);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `casee`
--
ALTER TABLE `casee`
  ADD PRIMARY KEY (`CaseID`),
  ADD UNIQUE KEY `CaseNumber` (`CaseNumber`),
  ADD KEY `F1` (`CourtID`);

--
-- Indexes for table `court`
--
ALTER TABLE `court`
  ADD PRIMARY KEY (`CourtID`);

--
-- Indexes for table `courtlawyercase`
--
ALTER TABLE `courtlawyercase`
  ADD PRIMARY KEY (`COURTID`,`LAWYERID`,`CASEID`),
  ADD KEY `COURTID` (`COURTID`,`LAWYERID`,`CASEID`),
  ADD KEY `F23` (`CASEID`),
  ADD KEY `F25` (`LAWYERID`);

--
-- Indexes for table `hearing`
--
ALTER TABLE `hearing`
  ADD PRIMARY KEY (`HEARING_ID`),
  ADD KEY `F2` (`CASE_ID`),
  ADD KEY `F3` (`JUDGE_ID`),
  ADD KEY `F4` (`LAWYER_ID`);

--
-- Indexes for table `judge`
--
ALTER TABLE `judge`
  ADD PRIMARY KEY (`JudgeID`),
  ADD KEY `F13` (`COURT_ID`);

--
-- Indexes for table `judgecase`
--
ALTER TABLE `judgecase`
  ADD PRIMARY KEY (`JudgeID`,`CaseID`),
  ADD KEY `F11` (`CaseID`);

--
-- Indexes for table `lawyer`
--
ALTER TABLE `lawyer`
  ADD PRIMARY KEY (`LawyerID`),
  ADD UNIQUE KEY `LicenseNumber` (`LicenseNumber`);

--
-- Indexes for table `lawyerpartycase`
--
ALTER TABLE `lawyerpartycase`
  ADD PRIMARY KEY (`LawyerID`,`PartyID`,`CaseID`),
  ADD KEY `F5` (`CaseID`),
  ADD KEY `F7` (`PartyID`),
  ADD KEY `LawyerID` (`LawyerID`),
  ADD KEY `LawyerID_2` (`LawyerID`);

--
-- Indexes for table `party`
--
ALTER TABLE `party`
  ADD PRIMARY KEY (`PartyID`);

--
-- Indexes for table `partycasehearing`
--
ALTER TABLE `partycasehearing`
  ADD PRIMARY KEY (`PartyID`,`CaseID`,`HearingID`),
  ADD KEY `F8` (`CaseID`),
  ADD KEY `F9` (`HearingID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `casee`
--
ALTER TABLE `casee`
  MODIFY `CaseID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `court`
--
ALTER TABLE `court`
  MODIFY `CourtID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `judge`
--
ALTER TABLE `judge`
  MODIFY `JudgeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `lawyer`
--
ALTER TABLE `lawyer`
  MODIFY `LawyerID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `party`
--
ALTER TABLE `party`
  MODIFY `PartyID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `casee`
--
ALTER TABLE `casee`
  ADD CONSTRAINT `F1` FOREIGN KEY (`CourtID`) REFERENCES `court` (`CourtID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `courtlawyercase`
--
ALTER TABLE `courtlawyercase`
  ADD CONSTRAINT `F23` FOREIGN KEY (`CASEID`) REFERENCES `casee` (`CaseID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `F24` FOREIGN KEY (`COURTID`) REFERENCES `court` (`CourtID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `F25` FOREIGN KEY (`LAWYERID`) REFERENCES `lawyer` (`LawyerID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `hearing`
--
ALTER TABLE `hearing`
  ADD CONSTRAINT `F2` FOREIGN KEY (`CASE_ID`) REFERENCES `casee` (`CaseID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `F3` FOREIGN KEY (`JUDGE_ID`) REFERENCES `judge` (`JudgeID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `F4` FOREIGN KEY (`LAWYER_ID`) REFERENCES `lawyer` (`LawyerID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `judge`
--
ALTER TABLE `judge`
  ADD CONSTRAINT `F13` FOREIGN KEY (`COURT_ID`) REFERENCES `court` (`CourtID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `judgecase`
--
ALTER TABLE `judgecase`
  ADD CONSTRAINT `F11` FOREIGN KEY (`CaseID`) REFERENCES `casee` (`CaseID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `F12` FOREIGN KEY (`JudgeID`) REFERENCES `judge` (`JudgeID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `lawyerpartycase`
--
ALTER TABLE `lawyerpartycase`
  ADD CONSTRAINT `F5` FOREIGN KEY (`CaseID`) REFERENCES `casee` (`CaseID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `F6` FOREIGN KEY (`LawyerID`) REFERENCES `lawyer` (`LawyerID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `F7` FOREIGN KEY (`PartyID`) REFERENCES `party` (`PartyID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `partycasehearing`
--
ALTER TABLE `partycasehearing`
  ADD CONSTRAINT `F10` FOREIGN KEY (`PartyID`) REFERENCES `party` (`PartyID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `F8` FOREIGN KEY (`CaseID`) REFERENCES `casee` (`CaseID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `F9` FOREIGN KEY (`HearingID`) REFERENCES `hearing` (`HEARING_ID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
