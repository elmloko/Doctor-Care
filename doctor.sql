-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         10.4.32-MariaDB - mariadb.org binary distribution
-- SO del servidor:              Win64
-- HeidiSQL Versión:             12.9.0.6999
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para doctor
CREATE DATABASE IF NOT EXISTS `doctor` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;
USE `doctor`;

-- Volcando estructura para tabla doctor.accountant
CREATE TABLE IF NOT EXISTS `accountant` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `img_url` varchar(200) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `x` varchar(100) DEFAULT NULL,
  `ion_user_id` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=81 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Volcando datos para la tabla doctor.accountant: 1 rows
/*!40000 ALTER TABLE `accountant` DISABLE KEYS */;
INSERT INTO `accountant` (`id`, `img_url`, `name`, `email`, `address`, `phone`, `x`, `ion_user_id`) VALUES
	(72, 'uploads/favicon7.png', 'Mr. Accountant', 'accountant@dms.com', 'New York, USA', '+880123456789', '', '112');
/*!40000 ALTER TABLE `accountant` ENABLE KEYS */;

-- Volcando estructura para tabla doctor.appointment
CREATE TABLE IF NOT EXISTS `appointment` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `patient` varchar(100) DEFAULT NULL,
  `doctor` varchar(100) DEFAULT NULL,
  `date` varchar(100) DEFAULT NULL,
  `time_slot` varchar(100) DEFAULT NULL,
  `s_time` varchar(100) DEFAULT NULL,
  `e_time` varchar(100) DEFAULT NULL,
  `remarks` varchar(500) DEFAULT NULL,
  `add_date` varchar(100) DEFAULT NULL,
  `registration_time` varchar(100) DEFAULT NULL,
  `s_time_key` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `user` varchar(100) DEFAULT NULL,
  `request` varchar(100) DEFAULT NULL,
  `patientname` varchar(1000) DEFAULT NULL,
  `doctorname` varchar(1000) DEFAULT NULL,
  `room_id` varchar(500) DEFAULT NULL,
  `live_meeting_link` varchar(500) DEFAULT NULL,
  `app_time` varchar(500) DEFAULT NULL,
  `app_time_full_format` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Volcando datos para la tabla doctor.appointment: 0 rows
/*!40000 ALTER TABLE `appointment` DISABLE KEYS */;
/*!40000 ALTER TABLE `appointment` ENABLE KEYS */;

-- Volcando estructura para tabla doctor.autoemailshortcode
CREATE TABLE IF NOT EXISTS `autoemailshortcode` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `name` varchar(1000) DEFAULT NULL,
  `type` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=61 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Volcando datos para la tabla doctor.autoemailshortcode: 33 rows
/*!40000 ALTER TABLE `autoemailshortcode` DISABLE KEYS */;
INSERT INTO `autoemailshortcode` (`id`, `name`, `type`) VALUES
	(1, '{firstname}', 'payment'),
	(2, '{lastname}', 'payment'),
	(3, '{name}', 'payment'),
	(4, '{amount}', 'payment'),
	(52, '{doctorname}', 'appoinment_confirmation'),
	(42, '{firstname}', 'appoinment_creation'),
	(51, '{name}', 'appoinment_confirmation'),
	(50, '{lastname}', 'appoinment_confirmation'),
	(49, '{firstname}', 'appoinment_confirmation'),
	(48, '{hospital_name}', 'appoinment_creation'),
	(47, '{time_slot}', 'appoinment_creation'),
	(46, '{appoinmentdate}', 'appoinment_creation'),
	(45, '{doctorname}', 'appoinment_creation'),
	(44, '{name}', 'appoinment_creation'),
	(43, '{lastname}', 'appoinment_creation'),
	(26, '{name}', 'doctor'),
	(27, '{firstname}', 'doctor'),
	(28, '{lastname}', 'doctor'),
	(29, '{company}', 'doctor'),
	(41, '{doctor}', 'patient'),
	(40, '{company}', 'patient'),
	(39, '{lastname}', 'patient'),
	(38, '{firstname}', 'patient'),
	(37, '{name}', 'patient'),
	(36, '{department}', 'doctor'),
	(53, '{appoinmentdate}', 'appoinment_confirmation'),
	(54, '{time_slot}', 'appoinment_confirmation'),
	(55, '{hospital_name}', 'appoinment_confirmation'),
	(56, '{start_time}', 'meeting_creation'),
	(57, '{patient_name}', 'meeting_creation'),
	(58, '{doctor_name}', 'meeting_creation'),
	(59, '{hospital_name}', 'meeting_creation'),
	(60, '{meeting_link}', 'meeting_creation');
/*!40000 ALTER TABLE `autoemailshortcode` ENABLE KEYS */;

-- Volcando estructura para tabla doctor.autoemailtemplate
CREATE TABLE IF NOT EXISTS `autoemailtemplate` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `name` varchar(1000) DEFAULT NULL,
  `message` varchar(1000) DEFAULT NULL,
  `type` varchar(1000) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Volcando datos para la tabla doctor.autoemailtemplate: 6 rows
/*!40000 ALTER TABLE `autoemailtemplate` DISABLE KEYS */;
INSERT INTO `autoemailtemplate` (`id`, `name`, `message`, `type`, `status`) VALUES
	(1, 'Payment successful email to patient', '<p>Dear {name}, Your paying amount - Tk {amount} was successful.</p>\r\n\r\n<p>Thank You</p>\r\n', 'payment', 'Active'),
	(9, 'Appointment creation email to patient', 'Dear {name},<br />\r\nYou have an &nbsp;appointment with {doctorname} on {appoinmentdate} at {time_slot} .Please confirm your appointment.<br />\r\nFor more information contact with {hospital_name}<br />\r\nRegards', 'appoinment_creation', 'Active'),
	(10, 'Appointment Confirmation email  to patient', 'Dear {name},<br />\r\nYour appointment with {doctorname} on {appoinmentdate} at {time_slot} is confirmed.<br />\r\nFor more information contact with {hospital_name}<br />\r\nRegards', 'appoinment_confirmation', 'Active'),
	(11, 'Meeting Schedule Notification To Patient', '<p>Dear {patient_name},</p>\r\n\r\n<p>You have a Live Video Meeting with {doctor_name} on {start_time}.<br />\r\nPlease click on this link to join the meeting&nbsp; {meeting_link} .<br />\r\nFor more information please contact with {hospital_name} .</p>\r\n\r\n<p>Regards</p>\r\n', 'meeting_creation', 'Active'),
	(6, 'send joining confirmation to Doctor', '<p>Dear {name},<br />\r\nYou are appointed as a doctor&nbsp; in {department}.<br />\r\nThank You</p>\r\n\r\n<p>{company}</p>\r\n', 'doctor', 'Active'),
	(8, 'Patient Registration Confirmation ', '<p>Dear {name},</p>\r\n\r\n<p>You are registered to {company} as a patient to {doctor}.</p>\r\n\r\n<p>Regards</p>\r\n', 'patient', 'Active');
/*!40000 ALTER TABLE `autoemailtemplate` ENABLE KEYS */;

-- Volcando estructura para tabla doctor.autosmsshortcode
CREATE TABLE IF NOT EXISTS `autosmsshortcode` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `name` varchar(1000) DEFAULT NULL,
  `type` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=63 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Volcando datos para la tabla doctor.autosmsshortcode: 33 rows
/*!40000 ALTER TABLE `autosmsshortcode` DISABLE KEYS */;
INSERT INTO `autosmsshortcode` (`id`, `name`, `type`) VALUES
	(1, '{name}', 'payment'),
	(2, '{firstname}', 'payment'),
	(3, '{lastname}', 'payment'),
	(4, '{amount}', 'payment'),
	(55, '{appoinmentdate}', 'appoinment_confirmation'),
	(54, '{doctorname}', 'appoinment_confirmation'),
	(53, '{name}', 'appoinment_confirmation'),
	(52, '{lastname}', 'appoinment_confirmation'),
	(51, '{firstname}', 'appoinment_confirmation'),
	(50, '{time_slot}', 'appoinment_creation'),
	(49, '{appoinmentdate}', 'appoinment_creation'),
	(48, '{hospital_name}', 'appoinment_creation'),
	(47, '{doctorname}', 'appoinment_creation'),
	(46, '{name}', 'appoinment_creation'),
	(45, '{lastname}', 'appoinment_creation'),
	(44, '{firstname}', 'appoinment_creation'),
	(28, '{firstname}', 'doctor'),
	(29, '{lastname}', 'doctor'),
	(30, '{name}', 'doctor'),
	(31, '{company}', 'doctor'),
	(43, '{doctor}', 'patient'),
	(42, '{company}', 'patient'),
	(41, '{lastname}', 'patient'),
	(40, '{firstname}', 'patient'),
	(39, '{name}', 'patient'),
	(38, '{department}', 'doctor'),
	(56, '{time_slot}', 'appoinment_confirmation'),
	(57, '{hospital_name}', 'appoinment_confirmation'),
	(58, '{start_time}', 'meeting_creation'),
	(59, '{patient_name}', 'meeting_creation'),
	(60, '{doctor_name}', 'meeting_creation'),
	(61, '{hospital_name}', 'meeting_creation'),
	(62, '{meeting_link}', 'meeting_creation');
/*!40000 ALTER TABLE `autosmsshortcode` ENABLE KEYS */;

-- Volcando estructura para tabla doctor.autosmstemplate
CREATE TABLE IF NOT EXISTS `autosmstemplate` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `name` varchar(1000) DEFAULT NULL,
  `message` varchar(1000) DEFAULT NULL,
  `type` varchar(1000) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Volcando datos para la tabla doctor.autosmstemplate: 6 rows
/*!40000 ALTER TABLE `autosmstemplate` DISABLE KEYS */;
INSERT INTO `autosmstemplate` (`id`, `name`, `message`, `type`, `status`) VALUES
	(1, 'Payment successful sms to patient', 'Dear {name},\r\n Your paying amount - Tk {amount} was successful.\r\nThank You\r\nPlease contact our support for further queries.', 'payment', 'Active'),
	(12, 'Appointment Confirmation sms to patient', 'Dear {name},\r\nYour appointment with {doctorname} on {appoinmentdate} at {time_slot} is confirmed.\r\nFor more information contact with {hospital_name}\r\nRegards', 'appoinment_confirmation', 'Active'),
	(13, 'Appointment creation sms to patient', 'Dear {name},\r\nYou have an  appointment with {doctorname} on {appoinmentdate} at {time_slot} .Please confirm your appointment.\r\nFor more information contact with {hospital_name}\r\nRegards', 'appoinment_creation', 'Active'),
	(14, 'Meeting Schedule Notification To Patient', 'Dear {patient_name}, You have a Live Video Meeting with {doctor_name} on {start_time}. Click on this link to join the meeting {meeting_link} . For more information contact with {hospital_name} .\r\nRegards ', 'meeting_creation', 'Active'),
	(9, 'send appoint confirmation to Doctor', 'Dear {name},\nYou are appointed as a doctor in {department} .\nThank You\n{company}', 'doctor', 'Active'),
	(11, 'Patient Registration Confirmation ', 'Dear {name},\n You are registred to {company} as a patient to {doctor}. \nRegards', 'patient', 'Active');
/*!40000 ALTER TABLE `autosmstemplate` ENABLE KEYS */;

-- Volcando estructura para tabla doctor.bankb
CREATE TABLE IF NOT EXISTS `bankb` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `group` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Volcando datos para la tabla doctor.bankb: 8 rows
/*!40000 ALTER TABLE `bankb` DISABLE KEYS */;
INSERT INTO `bankb` (`id`, `group`, `status`) VALUES
	(1, 'A+', '0 Bags'),
	(2, 'A-', '0 Bags'),
	(3, 'B+', '0 Bags'),
	(4, 'B-', '0 Bags'),
	(5, 'AB+', '0 Bags'),
	(6, 'AB-', '0 Bags'),
	(7, 'O+', '0 Bags'),
	(8, 'O-', '0 Bags');
/*!40000 ALTER TABLE `bankb` ENABLE KEYS */;

-- Volcando estructura para tabla doctor.diagnostic_report
CREATE TABLE IF NOT EXISTS `diagnostic_report` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `date` varchar(100) DEFAULT NULL,
  `invoice` varchar(100) DEFAULT NULL,
  `report` varchar(10000) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Volcando datos para la tabla doctor.diagnostic_report: 0 rows
/*!40000 ALTER TABLE `diagnostic_report` DISABLE KEYS */;
/*!40000 ALTER TABLE `diagnostic_report` ENABLE KEYS */;

-- Volcando estructura para tabla doctor.doctor
CREATE TABLE IF NOT EXISTS `doctor` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `img_url` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `department` varchar(100) DEFAULT NULL,
  `profile` varchar(100) DEFAULT NULL,
  `x` varchar(100) DEFAULT NULL,
  `y` varchar(10) DEFAULT NULL,
  `ion_user_id` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Volcando datos para la tabla doctor.doctor: 1 rows
/*!40000 ALTER TABLE `doctor` DISABLE KEYS */;
INSERT INTO `doctor` (`id`, `img_url`, `name`, `email`, `address`, `phone`, `department`, `profile`, `x`, `y`, `ion_user_id`) VALUES
	(1, '', 'Mr Doctor', 'doctor@dms.com', 'Colegepara, Rajbari', '+880123456789', 'Cardiology', 'Cardiac Specialized', '', '', '709');
/*!40000 ALTER TABLE `doctor` ENABLE KEYS */;

-- Volcando estructura para tabla doctor.email
CREATE TABLE IF NOT EXISTS `email` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `subject` varchar(100) DEFAULT NULL,
  `date` varchar(100) DEFAULT NULL,
  `message` varchar(10000) DEFAULT NULL,
  `reciepient` varchar(100) DEFAULT NULL,
  `user` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=53 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Volcando datos para la tabla doctor.email: 1 rows
/*!40000 ALTER TABLE `email` DISABLE KEYS */;
INSERT INTO `email` (`id`, `subject`, `date`, `message`, `reciepient`, `user`) VALUES
	(52, 'Pro-active Email for employment verification ( 12305-0121-0505)', '1615197338', '<p>kkgjgjhgj</p>\r\n', 'rizvi.mahmud.plabon@gmail.com', '1');
/*!40000 ALTER TABLE `email` ENABLE KEYS */;

-- Volcando estructura para tabla doctor.email_settings
CREATE TABLE IF NOT EXISTS `email_settings` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `admin_email` varchar(100) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `user` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `smtp_host` varchar(1000) DEFAULT NULL,
  `smtp_port` varchar(1000) DEFAULT NULL,
  `send_multipart` varchar(1000) DEFAULT NULL,
  `mail_provider` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Volcando datos para la tabla doctor.email_settings: 2 rows
/*!40000 ALTER TABLE `email_settings` DISABLE KEYS */;
INSERT INTO `email_settings` (`id`, `admin_email`, `type`, `user`, `password`, `smtp_host`, `smtp_port`, `send_multipart`, `mail_provider`) VALUES
	(1, 'shaibal@codearistos.net', 'Domain Email', '', '', '', '', '', NULL),
	(6, NULL, 'Smtp', 'sahashaibal22@yahoo.com', 'YXNvdWh6eGNqYW1ydmN2eQ==', 'smtp.mail.yahoo.com', '587', '1', 'yahoo');
/*!40000 ALTER TABLE `email_settings` ENABLE KEYS */;

-- Volcando estructura para tabla doctor.expense
CREATE TABLE IF NOT EXISTS `expense` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `category` varchar(100) DEFAULT NULL,
  `date` varchar(100) DEFAULT NULL,
  `note` varchar(1000) DEFAULT NULL,
  `amount` varchar(100) DEFAULT NULL,
  `user` varchar(100) DEFAULT NULL,
  `datestring` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=89 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Volcando datos para la tabla doctor.expense: 0 rows
/*!40000 ALTER TABLE `expense` DISABLE KEYS */;
/*!40000 ALTER TABLE `expense` ENABLE KEYS */;

-- Volcando estructura para tabla doctor.expense_category
CREATE TABLE IF NOT EXISTS `expense_category` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `category` varchar(100) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `x` varchar(100) DEFAULT NULL,
  `y` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=59 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Volcando datos para la tabla doctor.expense_category: 0 rows
/*!40000 ALTER TABLE `expense_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `expense_category` ENABLE KEYS */;

-- Volcando estructura para tabla doctor.featured
CREATE TABLE IF NOT EXISTS `featured` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `img_url` varchar(1000) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `profile` varchar(100) DEFAULT NULL,
  `description` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Volcando datos para la tabla doctor.featured: 3 rows
/*!40000 ALTER TABLE `featured` DISABLE KEYS */;
INSERT INTO `featured` (`id`, `img_url`, `name`, `profile`, `description`) VALUES
	(1, 'uploads/images.jpg', 'Dr Momenuzzaman', 'Cardiac Specialized', 'Redantium, totam rem aperiam, eaque ipsa qu ab illo inventore veritatis et quasi architectos beatae vitae dicta sunt explicabo. Nemo enims sadips ipsums un.'),
	(2, 'uploads/doctor.png', 'Dr RahmatUllah Asif', 'Cardiac Specialized', 'Cardiac Excellence Cardiac Excellence Cardiac Excellence Cardiac Excellence Cardiac Excellence Cardiac Excellence Cardiac Excellence Cardiac Excellence Cardiac Excellence'),
	(3, 'uploads/download_(2)2.png', 'Dr A.R.M. Jamil', 'Cardiac Specialized', 'Cardiac Excellence Cardiac Excellence Cardiac Excellence Cardiac Excellence Cardiac Excellence Cardiac Excellence Cardiac Excellence Cardiac Excellence Cardiac Excellence');
/*!40000 ALTER TABLE `featured` ENABLE KEYS */;

-- Volcando estructura para tabla doctor.groups
CREATE TABLE IF NOT EXISTS `groups` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Volcando datos para la tabla doctor.groups: ~9 rows (aproximadamente)
INSERT INTO `groups` (`id`, `name`, `description`) VALUES
	(1, 'admin', 'Administrator'),
	(2, 'members', 'General User'),
	(3, 'Accountant', 'For Financial Activities'),
	(4, 'Doctor', ''),
	(5, 'Patient', ''),
	(6, 'Nurse', ''),
	(7, 'Pharmacist', ''),
	(8, 'Laboratorist', ''),
	(10, 'Receptionist', 'Receptionist');

-- Volcando estructura para tabla doctor.holidays
CREATE TABLE IF NOT EXISTS `holidays` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `doctor` varchar(100) DEFAULT NULL,
  `date` varchar(100) DEFAULT NULL,
  `x` varchar(100) DEFAULT NULL,
  `y` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=76 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Volcando datos para la tabla doctor.holidays: 0 rows
/*!40000 ALTER TABLE `holidays` DISABLE KEYS */;
/*!40000 ALTER TABLE `holidays` ENABLE KEYS */;

-- Volcando estructura para tabla doctor.lab
CREATE TABLE IF NOT EXISTS `lab` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `category` varchar(100) DEFAULT NULL,
  `patient` varchar(100) DEFAULT NULL,
  `doctor` varchar(100) DEFAULT NULL,
  `date` varchar(100) DEFAULT NULL,
  `category_name` varchar(1000) DEFAULT NULL,
  `report` varchar(10000) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `user` varchar(100) DEFAULT NULL,
  `patient_name` varchar(100) DEFAULT NULL,
  `patient_phone` varchar(100) DEFAULT NULL,
  `patient_address` varchar(100) DEFAULT NULL,
  `doctor_name` varchar(100) DEFAULT NULL,
  `date_string` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Volcando datos para la tabla doctor.lab: 0 rows
/*!40000 ALTER TABLE `lab` DISABLE KEYS */;
/*!40000 ALTER TABLE `lab` ENABLE KEYS */;

-- Volcando estructura para tabla doctor.laboratorist
CREATE TABLE IF NOT EXISTS `laboratorist` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `img_url` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `x` varchar(100) DEFAULT NULL,
  `y` varchar(100) DEFAULT NULL,
  `ion_user_id` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Volcando datos para la tabla doctor.laboratorist: 1 rows
/*!40000 ALTER TABLE `laboratorist` DISABLE KEYS */;
INSERT INTO `laboratorist` (`id`, `img_url`, `name`, `email`, `address`, `phone`, `x`, `y`, `ion_user_id`) VALUES
	(3, 'uploads/favicon1.png', 'Mr Laboratorist', 'laboratorist@dms.com', 'Tampa, Florida, USA', '+880123456789', '', '', '111');
/*!40000 ALTER TABLE `laboratorist` ENABLE KEYS */;

-- Volcando estructura para tabla doctor.lab_category
CREATE TABLE IF NOT EXISTS `lab_category` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `category` varchar(100) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `reference_value` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=128 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Volcando datos para la tabla doctor.lab_category: 47 rows
/*!40000 ALTER TABLE `lab_category` DISABLE KEYS */;
INSERT INTO `lab_category` (`id`, `category`, `description`, `reference_value`) VALUES
	(35, 'Troponin-I', 'Pathological Test', ''),
	(36, 'CBC (DIGITAL)', 'Pathological Test', ''),
	(37, 'Eosinophil', 'Pathological Test', ''),
	(38, 'Platelets', 'Pathological Test', ''),
	(39, 'Malarial Parasites (MP)', 'Pathological Test', ''),
	(40, 'BT/ CT', 'Pathological Test', ''),
	(41, 'ASO Titre', 'Pathological Test', ''),
	(42, 'CRP', 'Pathological Test', ''),
	(43, 'R/A test', 'Pathological Test', ''),
	(44, 'VDRL', 'Pathological Test', ''),
	(45, 'TPHA', 'Pathological Test', ''),
	(46, 'HBsAg (Screening)', 'Pathological Test', ''),
	(47, 'HBsAg (Confirmatory)', 'Pathological Test', ''),
	(48, 'CFT for Kala Zar', 'Pathological Test', ''),
	(49, 'CFT for Filaria', 'Pathological Test', ''),
	(50, 'Pregnancy Test', 'Pathological Test', ''),
	(51, 'Blood Grouping', 'Pathological Test', ''),
	(52, 'Widal Test', 'Pathological Test', '(70-110)mg/dl'),
	(53, 'RBS', 'Pathological Test', ''),
	(54, 'Blood Urea', 'Pathological Test', ''),
	(55, 'S. Creatinine', 'Pathological Test', ''),
	(56, 'S. cholesterol', 'Pathological Test', ''),
	(57, 'Fasting Lipid Profile', 'Pathological Test', ''),
	(58, 'S. Bilirubin', 'Pathological Test', ''),
	(59, 'S. Alkaline Phosohare', 'Pathological Test', ''),
	(61, 'S. Calcium', 'Pathological Test', ''),
	(62, 'RBS with CUS', 'Pathological Test', ''),
	(63, 'SGPT', 'Pathological Test', ''),
	(64, 'SGOT', 'Pathological Test', ''),
	(65, 'Urine for R/E', 'Pathological Test', ''),
	(66, 'Urine C/S', 'Pathological Test', ''),
	(67, 'Stool for R/E', 'Pathological Test', ''),
	(68, 'Semen Analysis', 'Pathological Test', ''),
	(69, 'S. Electrolyte', 'Pathological Test', ''),
	(70, 'S. T3/ T4/ THS', 'Pathological Test', ''),
	(71, 'MT', 'Pathological Test', ''),
	(106, 'ESR', 'Patho Test', ''),
	(107, 'FBS CUS', 'Pathological test', ''),
	(108, 'Hb%', 'Pathological test', ''),
	(114, '2HABF', 'Pathological test', ''),
	(113, 'FBS', 'Pathological test', ''),
	(115, 'S. TSH', 'Pathological test', ''),
	(116, 'S. T3', 'Pathological test', ''),
	(117, 'DC', 'Pathological test', ''),
	(118, 'TC', 'Pathological test', ''),
	(120, 'S. Uric acid', 'Pathological test', ''),
	(126, 'eosinphil', 'Pathology Test', '');
/*!40000 ALTER TABLE `lab_category` ENABLE KEYS */;

-- Volcando estructura para tabla doctor.login_attempts
CREATE TABLE IF NOT EXISTS `login_attempts` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(15) NOT NULL,
  `login` varchar(100) NOT NULL,
  `time` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Volcando datos para la tabla doctor.login_attempts: ~0 rows (aproximadamente)

-- Volcando estructura para tabla doctor.manualemailshortcode
CREATE TABLE IF NOT EXISTS `manualemailshortcode` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `name` varchar(1000) DEFAULT NULL,
  `type` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Volcando datos para la tabla doctor.manualemailshortcode: 7 rows
/*!40000 ALTER TABLE `manualemailshortcode` DISABLE KEYS */;
INSERT INTO `manualemailshortcode` (`id`, `name`, `type`) VALUES
	(1, '{firstname}', 'email'),
	(2, '{lastname}', 'email'),
	(3, '{name}', 'email'),
	(6, '{address}', 'email'),
	(7, '{company}', 'email'),
	(8, '{email}', 'email'),
	(9, '{phone}', 'email');
/*!40000 ALTER TABLE `manualemailshortcode` ENABLE KEYS */;

-- Volcando estructura para tabla doctor.manualsmsshortcode
CREATE TABLE IF NOT EXISTS `manualsmsshortcode` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `name` varchar(1000) DEFAULT NULL,
  `type` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Volcando datos para la tabla doctor.manualsmsshortcode: 7 rows
/*!40000 ALTER TABLE `manualsmsshortcode` DISABLE KEYS */;
INSERT INTO `manualsmsshortcode` (`id`, `name`, `type`) VALUES
	(1, '{firstname}', 'sms'),
	(2, '{lastname}', 'sms'),
	(3, '{name}', 'sms'),
	(4, '{email}', 'sms'),
	(5, '{phone}', 'sms'),
	(6, '{address}', 'sms'),
	(10, '{company}', 'sms');
/*!40000 ALTER TABLE `manualsmsshortcode` ENABLE KEYS */;

-- Volcando estructura para tabla doctor.manual_email_template
CREATE TABLE IF NOT EXISTS `manual_email_template` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `name` varchar(1000) DEFAULT NULL,
  `message` varchar(1000) DEFAULT NULL,
  `type` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Volcando datos para la tabla doctor.manual_email_template: 1 rows
/*!40000 ALTER TABLE `manual_email_template` DISABLE KEYS */;
INSERT INTO `manual_email_template` (`id`, `name`, `message`, `type`) VALUES
	(7, 'vddfvdf', '<p>dvdfvdfvdfvd</p>\r\n', 'email');
/*!40000 ALTER TABLE `manual_email_template` ENABLE KEYS */;

-- Volcando estructura para tabla doctor.manual_sms_template
CREATE TABLE IF NOT EXISTS `manual_sms_template` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `message` varchar(1000) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Volcando datos para la tabla doctor.manual_sms_template: 5 rows
/*!40000 ALTER TABLE `manual_sms_template` DISABLE KEYS */;
INSERT INTO `manual_sms_template` (`id`, `name`, `message`, `type`) VALUES
	(1, 'test', '{firstname} come to my offce {lastname}', 'sms'),
	(8, 'dsdsdss3wew454', '{firstname}{address}{phone}{address}{email}{name}{lastname}{firstname}', 'sms'),
	(3, 'sdgfgfdgfdgdf', '<p>{email}{instructor}{address} gfdgdfg</p>\r\n', 'email'),
	(7, 'test223', '<table border="1" cellpadding="1" cellspacing="1" style="width: 500px;">\r\n	<tbody>\r\n		<tr>\r\n			<td>dsfsf</td>\r\n			<td>sdfsdf</td>\r\n		</tr>\r\n		<tr>\r\n			<td>sdfdsf</td>\r\n			<td>dfdsf</td>\r\n		</tr>\r\n		<tr>\r\n			<td>dfdf</td>\r\n			<td>dfdfd</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n{email}{instructor}', 'email'),
	(9, 'zxcxzczx', ' {address}{phone}', 'sms');
/*!40000 ALTER TABLE `manual_sms_template` ENABLE KEYS */;

-- Volcando estructura para tabla doctor.medical_history
CREATE TABLE IF NOT EXISTS `medical_history` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `patient_id` varchar(100) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `description` varchar(10000) DEFAULT NULL,
  `patient_name` varchar(100) DEFAULT NULL,
  `patient_address` varchar(500) DEFAULT NULL,
  `patient_phone` varchar(100) DEFAULT NULL,
  `img_url` varchar(500) DEFAULT NULL,
  `date` varchar(100) DEFAULT NULL,
  `registration_time` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=65 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Volcando datos para la tabla doctor.medical_history: 0 rows
/*!40000 ALTER TABLE `medical_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `medical_history` ENABLE KEYS */;

-- Volcando estructura para tabla doctor.medicine
CREATE TABLE IF NOT EXISTS `medicine` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `category` varchar(100) DEFAULT NULL,
  `price` varchar(100) DEFAULT NULL,
  `box` varchar(100) DEFAULT NULL,
  `s_price` varchar(100) DEFAULT NULL,
  `quantity` int(100) DEFAULT NULL,
  `generic` varchar(100) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `effects` varchar(100) DEFAULT NULL,
  `e_date` varchar(70) DEFAULT NULL,
  `add_date` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2880 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Volcando datos para la tabla doctor.medicine: 0 rows
/*!40000 ALTER TABLE `medicine` DISABLE KEYS */;
/*!40000 ALTER TABLE `medicine` ENABLE KEYS */;

-- Volcando estructura para tabla doctor.medicine_category
CREATE TABLE IF NOT EXISTS `medicine_category` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `category` varchar(100) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Volcando datos para la tabla doctor.medicine_category: 0 rows
/*!40000 ALTER TABLE `medicine_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `medicine_category` ENABLE KEYS */;

-- Volcando estructura para tabla doctor.meeting
CREATE TABLE IF NOT EXISTS `meeting` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `patient` varchar(100) DEFAULT NULL,
  `doctor` varchar(100) DEFAULT NULL,
  `topic` varchar(1000) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `start_time` varchar(100) DEFAULT NULL,
  `duration` varchar(100) DEFAULT NULL,
  `timezone` varchar(100) DEFAULT NULL,
  `meeting_id` varchar(100) DEFAULT NULL,
  `meeting_password` varchar(100) DEFAULT NULL,
  `date` varchar(100) DEFAULT NULL,
  `time_slot` varchar(100) DEFAULT NULL,
  `s_time` varchar(100) DEFAULT NULL,
  `e_time` varchar(100) DEFAULT NULL,
  `remarks` varchar(500) DEFAULT NULL,
  `add_date` varchar(100) DEFAULT NULL,
  `registration_time` varchar(100) DEFAULT NULL,
  `s_time_key` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `user` varchar(100) DEFAULT NULL,
  `request` varchar(100) DEFAULT NULL,
  `patientname` varchar(1000) DEFAULT NULL,
  `doctorname` varchar(1000) DEFAULT NULL,
  `ion_user_id` varchar(100) DEFAULT NULL,
  `doctor_ion_id` varchar(100) DEFAULT NULL,
  `patient_ion_id` varchar(100) DEFAULT NULL,
  `appointment_id` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=616 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Volcando datos para la tabla doctor.meeting: 27 rows
/*!40000 ALTER TABLE `meeting` DISABLE KEYS */;
INSERT INTO `meeting` (`id`, `patient`, `doctor`, `topic`, `type`, `start_time`, `duration`, `timezone`, `meeting_id`, `meeting_password`, `date`, `time_slot`, `s_time`, `e_time`, `remarks`, `add_date`, `registration_time`, `s_time_key`, `status`, `user`, `request`, `patientname`, `doctorname`, `ion_user_id`, `doctor_ion_id`, `patient_ion_id`, `appointment_id`) VALUES
	(597, '1', '147', 'Doctor Appointment', '2', '2020-08-31 05:57', '60', 'UTC', '78065502079', '12345', NULL, NULL, NULL, NULL, NULL, '08/31/20', '1598867830', NULL, NULL, '1', NULL, 'Mr Patient', 'Mr Doctor', NULL, '709', '681', NULL),
	(596, '1', '147', 'Doctor Appointment', '2', '2020-08-31 05:55', '60', 'UTC', '73399002446', '12345', NULL, NULL, NULL, NULL, NULL, '08/31/20', '1598867708', NULL, NULL, '1', NULL, 'Mr Patient', 'Mr Doctor', NULL, '709', '681', NULL),
	(594, '1', '147', 'Doctor Appointment', '2', '2020-08-31 05:52', '60', 'UTC', '76863762416', '12345', NULL, NULL, NULL, NULL, NULL, '08/31/20', '1598867523', NULL, NULL, '1', NULL, 'Mr Patient', 'Mr Doctor', NULL, '709', '681', NULL),
	(595, '1', '147', 'Doctor Appointment', '2', '2020-08-31 05:53', '60', 'UTC', '76103574289', '12345', NULL, NULL, NULL, NULL, NULL, '08/31/20', '1598867627', NULL, NULL, '1', NULL, 'Mr Patient', 'Mr Doctor', NULL, '709', '681', NULL),
	(593, '1', '147', 'Doctor Appointment', '2', '2020-08-31 05:50', '60', 'UTC', '78581884320', '12345', NULL, NULL, NULL, NULL, NULL, '08/31/20', '1598867418', NULL, NULL, '1', NULL, 'Mr Patient', 'Mr Doctor', NULL, '709', '681', NULL),
	(592, '1', '147', 'Doctor Appointment', '2', '2020-08-31 03:01', '60', 'UTC', '71935056353', '12345', NULL, NULL, NULL, NULL, NULL, '08/31/20', '1598857283', NULL, NULL, '1', NULL, 'Mr Patient', 'Mr Doctor', NULL, '709', '681', NULL),
	(590, '1', '147', 'Doctor Appointment', '2', '2020-08-31 02:47', '60', 'UTC', '73066856714', '12345', NULL, NULL, NULL, NULL, NULL, '08/31/20', '1598856455', NULL, NULL, '1', NULL, 'Mr Patient', 'Mr Doctor', NULL, '709', '681', NULL),
	(591, '1', '147', 'Doctor Appointment', '2', '2020-08-31 03:01', '60', 'UTC', '73873024898', '12345', NULL, NULL, NULL, NULL, NULL, '08/31/20', '1598857264', NULL, NULL, '1', NULL, 'Mr Patient', 'Mr Doctor', NULL, '709', '681', NULL),
	(589, '1', '147', 'Doctor Appointment', '2', '2020-08-31 02:46', '60', 'UTC', '71674039118', '12345', NULL, NULL, NULL, NULL, NULL, '08/31/20', '1598856418', NULL, NULL, '1', NULL, 'Mr Patient', 'Mr Doctor', NULL, '709', '681', NULL),
	(598, '1', '147', 'Doctor Appointment', '2', '2020-08-31 06:37', '60', 'UTC', '79952317532', '12345', NULL, NULL, NULL, NULL, NULL, '08/31/20', '1598870269', NULL, NULL, '1', NULL, 'Mr Patient', 'Mr Doctor', NULL, '709', '681', '455'),
	(599, '1', '147', 'Doctor Appointment', '2', '2020-08-31 06:52', '60', 'UTC', '71430825323', '12345', NULL, NULL, NULL, NULL, NULL, '08/31/20', '1598871125', NULL, NULL, '1', NULL, 'Mr Patient', 'Mr Doctor', NULL, '709', '681', '455'),
	(600, '1', '147', 'Doctor Appointment', '2', '2020-08-31 11:34', '60', 'UTC', '78873863945', '12345', NULL, NULL, NULL, NULL, NULL, '08/31/20', '1598888071', NULL, NULL, '1', NULL, 'Mr Patient', 'Mr Doctor', NULL, '709', '681', '455'),
	(601, '1', '147', 'Doctor Appointment', '2', '2020-08-31 14:21', '60', 'UTC', '77058133464', '12345', NULL, NULL, NULL, NULL, NULL, '08/31/20', '1598898079', NULL, NULL, '709', NULL, 'Rizvi Mahmud Plabon', 'Dr. Rahmatullah Asif', NULL, '709', '681', '455'),
	(602, '1', '147', 'Doctor Appointment', '2', '2020-08-31 14:35', '60', 'UTC', '76826440714', '12345', NULL, NULL, NULL, NULL, NULL, '08/31/20', '1598898940', NULL, NULL, '709', NULL, 'Rizvi Mahmud Plabon', 'Dr. Rahmatullah Asif', NULL, '709', '681', '455'),
	(603, '1', '147', 'Doctor Appointment', '2', '2020-08-31 15:09', '60', 'UTC', '71324680797', '12345', NULL, NULL, NULL, NULL, NULL, '08/31/20', '1598900963', NULL, NULL, '1', NULL, 'Rizvi Mahmud Plabon', 'Dr. Rahmatullah Asif', NULL, '709', '681', '455'),
	(604, '1', '147', 'Doctor Appointment', '2', '2020-08-31 17:51', '60', 'UTC', '72784087056', '12345', NULL, NULL, NULL, NULL, NULL, '08/31/20', '1598910684', NULL, NULL, '1', NULL, 'Rizvi Mahmud Plabon', 'Dr. Rahmatullah Asif', NULL, '709', '681', '455'),
	(605, '1', '147', 'Doctor Appointment', '2', '2020-08-31 18:03', '60', 'UTC', '71781120129', '12345', NULL, NULL, NULL, NULL, NULL, '08/31/20', '1598911430', NULL, NULL, '1', NULL, 'Rizvi Mahmud Plabon', 'Dr. Rahmatullah Asif', NULL, '709', '681', '455'),
	(606, '1', '147', 'Doctor Appointment', '2', '2020-09-01 05:21', '60', 'UTC', '73426854489', '12345', NULL, NULL, NULL, NULL, NULL, '09/01/20', '1598952101', NULL, NULL, '1', NULL, 'Rizvi Mahmud Plabon', 'Dr. Rahmatullah Asif', NULL, '709', '681', '456'),
	(607, '1', '147', 'Doctor Appointment', '2', '2020-09-10 14:13', '60', 'UTC', '73576408457', '12345', NULL, NULL, NULL, NULL, NULL, '09/10/20', '1599761627', NULL, NULL, '1', NULL, 'Mr Patient', 'Mr Doctor', NULL, '709', '681', '464'),
	(608, '1', '147', 'Doctor Appointment', '2', '2020-09-11 13:47', '60', 'UTC', '75454341566', '12345', NULL, NULL, NULL, NULL, NULL, '09/11/20', '1599846437', NULL, NULL, '1', NULL, 'Mr Patient', 'Mr Doctor', NULL, '709', '681', '464'),
	(609, '1', '147', 'Doctor Appointment', '2', '2020-09-11 13:47', '60', 'UTC', '73157465436', '12345', NULL, NULL, NULL, NULL, NULL, '09/11/20', '1599846468', NULL, NULL, '1', NULL, 'Mr Patient', 'Mr Doctor', NULL, '709', '681', '465'),
	(610, '1', '147', 'Doctor Appointment', '2', '2020-09-11 13:48', '60', 'UTC', '78370052717', '12345', NULL, NULL, NULL, NULL, NULL, '09/11/20', '1599846502', NULL, NULL, '1', NULL, 'Mr Patient', 'Mr Doctor', NULL, '709', '681', '465'),
	(611, '1', '147', 'Doctor Appointment', '2', '2020-09-11 13:48', '60', 'UTC', '71877134261', '12345', NULL, NULL, NULL, NULL, NULL, '09/11/20', '1599846505', NULL, NULL, '1', NULL, 'Mr Patient', 'Mr Doctor', NULL, '709', '681', '465'),
	(612, '1', '147', 'Doctor Appointment', '2', '2020-09-11 13:48', '60', 'UTC', '75349390219', '12345', NULL, NULL, NULL, NULL, NULL, '09/11/20', '1599846517', NULL, NULL, '1', NULL, 'Mr Patient', 'Mr Doctor', NULL, '709', '681', '465'),
	(613, '1', '147', 'Doctor Appointment', '2', '2020-09-11 13:48', '60', 'UTC', '77947823088', '12345', NULL, NULL, NULL, NULL, NULL, '09/11/20', '1599846518', NULL, NULL, '1', NULL, 'Mr Patient', 'Mr Doctor', NULL, '709', '681', '465'),
	(614, '1', '147', 'Doctor Appointment', '2', '2020-09-11 13:49', '60', 'UTC', '75473785483', '12345', NULL, NULL, NULL, NULL, NULL, '09/11/20', '1599846572', NULL, NULL, '1', NULL, 'Mr Patient', 'Mr Doctor', NULL, '709', '681', '465'),
	(615, '1', '147', 'Doctor Appointment', '2', '2020-09-11 13:49', '60', 'UTC', '76165228124', '12345', NULL, NULL, NULL, NULL, NULL, '09/11/20', '1599846593', NULL, NULL, '1', NULL, 'Mr Patient', 'Mr Doctor', NULL, '709', '681', '465');
/*!40000 ALTER TABLE `meeting` ENABLE KEYS */;

-- Volcando estructura para tabla doctor.meeting_settings
CREATE TABLE IF NOT EXISTS `meeting_settings` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `api_key` varchar(100) DEFAULT NULL,
  `secret_key` varchar(100) DEFAULT NULL,
  `ion_user_id` varchar(100) DEFAULT NULL,
  `y` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Volcando datos para la tabla doctor.meeting_settings: 1 rows
/*!40000 ALTER TABLE `meeting_settings` DISABLE KEYS */;
INSERT INTO `meeting_settings` (`id`, `api_key`, `secret_key`, `ion_user_id`, `y`) VALUES
	(8, 'PEbvh2uESS6ryue3Kb3D0w', 'BZpvXJsvgqG6mN4Up1FuuWJQAY47w5QCWIAo', '709', NULL);
/*!40000 ALTER TABLE `meeting_settings` ENABLE KEYS */;

-- Volcando estructura para tabla doctor.nurse
CREATE TABLE IF NOT EXISTS `nurse` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `img_url` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `x` varchar(100) DEFAULT NULL,
  `y` varchar(100) DEFAULT NULL,
  `z` varchar(100) DEFAULT NULL,
  `ion_user_id` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Volcando datos para la tabla doctor.nurse: 1 rows
/*!40000 ALTER TABLE `nurse` DISABLE KEYS */;
INSERT INTO `nurse` (`id`, `img_url`, `name`, `email`, `address`, `phone`, `x`, `y`, `z`, `ion_user_id`) VALUES
	(8, 'uploads/favicon4.png', 'Mrs Nurse', 'nurse@dms.com', 'Uttara, Dhaka', '+880123456789', '', '', '', '109');
/*!40000 ALTER TABLE `nurse` ENABLE KEYS */;

-- Volcando estructura para tabla doctor.ot_payment
CREATE TABLE IF NOT EXISTS `ot_payment` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `patient` varchar(100) DEFAULT NULL,
  `doctor_c_s` varchar(100) DEFAULT NULL,
  `doctor_a_s_1` varchar(100) DEFAULT NULL,
  `doctor_a_s_2` varchar(100) DEFAULT NULL,
  `doctor_anaes` varchar(100) DEFAULT NULL,
  `n_o_o` varchar(100) DEFAULT NULL,
  `c_s_f` varchar(100) DEFAULT NULL,
  `a_s_f_1` varchar(100) DEFAULT NULL,
  `a_s_f_2` varchar(11) DEFAULT NULL,
  `anaes_f` varchar(100) DEFAULT NULL,
  `ot_charge` varchar(100) DEFAULT NULL,
  `cab_rent` varchar(100) DEFAULT NULL,
  `seat_rent` varchar(100) DEFAULT NULL,
  `others` varchar(100) DEFAULT NULL,
  `discount` varchar(100) DEFAULT NULL,
  `date` varchar(100) DEFAULT NULL,
  `amount` varchar(100) DEFAULT NULL,
  `doctor_fees` varchar(100) DEFAULT NULL,
  `hospital_fees` varchar(100) DEFAULT NULL,
  `gross_total` varchar(100) DEFAULT NULL,
  `flat_discount` varchar(100) DEFAULT NULL,
  `amount_received` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `user` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=86 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Volcando datos para la tabla doctor.ot_payment: 1 rows
/*!40000 ALTER TABLE `ot_payment` DISABLE KEYS */;
INSERT INTO `ot_payment` (`id`, `patient`, `doctor_c_s`, `doctor_a_s_1`, `doctor_a_s_2`, `doctor_anaes`, `n_o_o`, `c_s_f`, `a_s_f_1`, `a_s_f_2`, `anaes_f`, `ot_charge`, `cab_rent`, `seat_rent`, `others`, `discount`, `date`, `amount`, `doctor_fees`, `hospital_fees`, `gross_total`, `flat_discount`, `amount_received`, `status`, `user`) VALUES
	(85, '451', 'None', '123', 'None', '125', 'dbdbd', '', '1000', '0', '1000', '', '', '', '', '', '1506195494', '2000', '2000', '0', '2000', '', '1000', 'unpaid', '614');
/*!40000 ALTER TABLE `ot_payment` ENABLE KEYS */;

-- Volcando estructura para tabla doctor.patient
CREATE TABLE IF NOT EXISTS `patient` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `img_url` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(1000) DEFAULT NULL,
  `doctor` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `sex` varchar(100) DEFAULT NULL,
  `birthdate` varchar(100) DEFAULT NULL,
  `age` varchar(100) DEFAULT NULL,
  `bloodgroup` varchar(100) DEFAULT NULL,
  `ion_user_id` varchar(100) DEFAULT NULL,
  `patient_id` varchar(100) DEFAULT NULL,
  `add_date` varchar(100) DEFAULT NULL,
  `registration_time` varchar(100) DEFAULT NULL,
  `how_added` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Volcando datos para la tabla doctor.patient: 1 rows
/*!40000 ALTER TABLE `patient` DISABLE KEYS */;
INSERT INTO `patient` (`id`, `img_url`, `name`, `email`, `doctor`, `address`, `phone`, `sex`, `birthdate`, `age`, `bloodgroup`, `ion_user_id`, `patient_id`, `add_date`, `registration_time`, `how_added`) VALUES
	(1, 'uploads/cardiology-patient-icon-vector-6244713.jpg', 'Mr Patient', 'patient@hms.com', ',1,202', 'Ka/5 Jagannathpur', '+8801777024443', 'Male', '01-01-1987', '', 'A+', '681', '101223', '01/30/19', '', '');
/*!40000 ALTER TABLE `patient` ENABLE KEYS */;

-- Volcando estructura para tabla doctor.patient_deposit
CREATE TABLE IF NOT EXISTS `patient_deposit` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `patient` varchar(100) DEFAULT NULL,
  `payment_id` varchar(100) DEFAULT NULL,
  `date` varchar(100) DEFAULT NULL,
  `deposited_amount` varchar(100) DEFAULT NULL,
  `amount_received_id` varchar(100) DEFAULT NULL,
  `deposit_type` varchar(100) DEFAULT NULL,
  `gateway` varchar(100) DEFAULT NULL,
  `user` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1733 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Volcando datos para la tabla doctor.patient_deposit: 0 rows
/*!40000 ALTER TABLE `patient_deposit` DISABLE KEYS */;
/*!40000 ALTER TABLE `patient_deposit` ENABLE KEYS */;

-- Volcando estructura para tabla doctor.patient_material
CREATE TABLE IF NOT EXISTS `patient_material` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `date` varchar(100) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `category` varchar(100) DEFAULT NULL,
  `patient` varchar(100) DEFAULT NULL,
  `patient_name` varchar(100) DEFAULT NULL,
  `patient_address` varchar(100) DEFAULT NULL,
  `patient_phone` varchar(100) DEFAULT NULL,
  `url` varchar(1000) DEFAULT NULL,
  `date_string` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=95 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Volcando datos para la tabla doctor.patient_material: 0 rows
/*!40000 ALTER TABLE `patient_material` DISABLE KEYS */;
/*!40000 ALTER TABLE `patient_material` ENABLE KEYS */;

-- Volcando estructura para tabla doctor.payment
CREATE TABLE IF NOT EXISTS `payment` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `category` varchar(100) DEFAULT NULL,
  `patient` varchar(100) DEFAULT NULL,
  `doctor` varchar(100) DEFAULT NULL,
  `date` varchar(100) DEFAULT NULL,
  `amount` varchar(100) DEFAULT NULL,
  `vat` varchar(100) NOT NULL DEFAULT '0',
  `x_ray` varchar(100) DEFAULT NULL,
  `flat_vat` varchar(100) DEFAULT NULL,
  `discount` varchar(100) NOT NULL DEFAULT '0',
  `flat_discount` varchar(100) DEFAULT NULL,
  `gross_total` varchar(100) DEFAULT NULL,
  `remarks` varchar(500) DEFAULT NULL,
  `hospital_amount` varchar(100) DEFAULT NULL,
  `doctor_amount` varchar(100) DEFAULT NULL,
  `category_amount` varchar(1000) DEFAULT NULL,
  `category_name` varchar(1000) DEFAULT NULL,
  `amount_received` varchar(100) DEFAULT NULL,
  `deposit_type` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `user` varchar(100) DEFAULT NULL,
  `patient_name` varchar(100) DEFAULT NULL,
  `patient_phone` varchar(100) DEFAULT NULL,
  `patient_address` varchar(100) DEFAULT NULL,
  `doctor_name` varchar(100) DEFAULT NULL,
  `date_string` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Volcando datos para la tabla doctor.payment: 0 rows
/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;

-- Volcando estructura para tabla doctor.paymentgateway
CREATE TABLE IF NOT EXISTS `paymentgateway` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `merchant_key` varchar(100) DEFAULT NULL,
  `salt` varchar(100) DEFAULT NULL,
  `x` varchar(100) DEFAULT NULL,
  `y` varchar(100) DEFAULT NULL,
  `APIUsername` varchar(100) DEFAULT NULL,
  `APIPassword` varchar(100) DEFAULT NULL,
  `APISignature` varchar(100) DEFAULT NULL,
  `status` varchar(1000) DEFAULT NULL,
  `publish` varchar(1000) DEFAULT NULL,
  `secret` varchar(1000) DEFAULT NULL,
  `public_key` varchar(1000) DEFAULT NULL,
  `store_id` varchar(1000) DEFAULT NULL,
  `store_password` varchar(1000) DEFAULT NULL,
  `merchant_mid` varchar(1000) DEFAULT NULL,
  `merchant_website` varchar(1000) DEFAULT NULL,
  `apiloginid` varchar(1000) DEFAULT NULL,
  `transactionkey` varchar(1000) DEFAULT NULL,
  `apikey` varchar(1000) DEFAULT NULL,
  `merchantcode` varchar(1000) DEFAULT NULL,
  `privatekey` varchar(1000) DEFAULT NULL,
  `publishablekey` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Volcando datos para la tabla doctor.paymentgateway: 8 rows
/*!40000 ALTER TABLE `paymentgateway` DISABLE KEYS */;
INSERT INTO `paymentgateway` (`id`, `name`, `merchant_key`, `salt`, `x`, `y`, `APIUsername`, `APIPassword`, `APISignature`, `status`, `publish`, `secret`, `public_key`, `store_id`, `store_password`, `merchant_mid`, `merchant_website`, `apiloginid`, `transactionkey`, `apikey`, `merchantcode`, `privatekey`, `publishablekey`) VALUES
	(1, 'PayPal', '', '', '', '', 'sahashaibal19-facilitator_api1.gmail.com', 'B63U4VHDE8E8K8E2', 'AGVBtjcchZdpMmwaGJXMakrp-RyZAuNqRwECP9LNRref5tv0ZwZkllTN', 'test', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(2, 'Pay U Money', 'HbimD3hk', 'BnuUHR1FDG', '', '', '', '', 'Aaw-Fd69z.JLuiq13ejMN-CsSMuuAPEXWUFPF5QW9sD22fp1hosGIFKo', 'test', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(3, 'Stripe', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'test', 'Publish key', 'Secret Key', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(4, 'Paystack', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'test', NULL, 'sk_test_c0b4a969e33564d0fdc6c781efb0300e68316897', 'pk_test_6511ce507f68769d3035234614ba03f3e7368f4e', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(5, 'SSLCOMMERZ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'test', NULL, NULL, NULL, 'vella5fe8cfbe4ed3a', 'vella5fe8cfbe4ed3a@ssl', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(6, 'Paytm', 'Merchant Key', NULL, NULL, NULL, NULL, NULL, NULL, 'test', NULL, NULL, NULL, NULL, NULL, 'Merchant MID', 'Merchant Website', NULL, NULL, NULL, NULL, NULL, NULL),
	(7, 'Authorize.Net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'test', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2LJcUm497L2', '46u3b3AMd44sJX5w', NULL, NULL, NULL, NULL),
	(8, '2Checkout', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'test', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Merchant Code', 'Private key', 'Publishable Key');
/*!40000 ALTER TABLE `paymentgateway` ENABLE KEYS */;

-- Volcando estructura para tabla doctor.payment_category
CREATE TABLE IF NOT EXISTS `payment_category` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `category` varchar(100) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `c_price` varchar(100) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `d_commission` int(100) DEFAULT NULL,
  `h_commission` int(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=129 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Volcando datos para la tabla doctor.payment_category: 0 rows
/*!40000 ALTER TABLE `payment_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `payment_category` ENABLE KEYS */;

-- Volcando estructura para tabla doctor.pharmacist
CREATE TABLE IF NOT EXISTS `pharmacist` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `img_url` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `x` varchar(100) DEFAULT NULL,
  `y` varchar(100) DEFAULT NULL,
  `ion_user_id` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Volcando datos para la tabla doctor.pharmacist: 1 rows
/*!40000 ALTER TABLE `pharmacist` DISABLE KEYS */;
INSERT INTO `pharmacist` (`id`, `img_url`, `name`, `email`, `address`, `phone`, `x`, `y`, `ion_user_id`) VALUES
	(7, 'uploads/favicon6.png', 'Mr. Pharmacist', 'pharmacist@dms.com', 'Pottersbar, Hertfordshire, UK', '+880123456789', '', '', '110');
/*!40000 ALTER TABLE `pharmacist` ENABLE KEYS */;

-- Volcando estructura para tabla doctor.pharmacy_expense
CREATE TABLE IF NOT EXISTS `pharmacy_expense` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `category` varchar(100) DEFAULT NULL,
  `date` varchar(100) DEFAULT NULL,
  `amount` varchar(100) DEFAULT NULL,
  `user` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=142 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Volcando datos para la tabla doctor.pharmacy_expense: 0 rows
/*!40000 ALTER TABLE `pharmacy_expense` DISABLE KEYS */;
/*!40000 ALTER TABLE `pharmacy_expense` ENABLE KEYS */;

-- Volcando estructura para tabla doctor.pharmacy_expense_category
CREATE TABLE IF NOT EXISTS `pharmacy_expense_category` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `category` varchar(100) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `x` varchar(100) DEFAULT NULL,
  `y` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=63 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Volcando datos para la tabla doctor.pharmacy_expense_category: 0 rows
/*!40000 ALTER TABLE `pharmacy_expense_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `pharmacy_expense_category` ENABLE KEYS */;

-- Volcando estructura para tabla doctor.pharmacy_payment
CREATE TABLE IF NOT EXISTS `pharmacy_payment` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `category` varchar(100) DEFAULT NULL,
  `patient` varchar(100) DEFAULT NULL,
  `doctor` varchar(100) DEFAULT NULL,
  `date` varchar(100) DEFAULT NULL,
  `amount` varchar(100) DEFAULT NULL,
  `vat` varchar(100) NOT NULL DEFAULT '0',
  `x_ray` varchar(100) DEFAULT NULL,
  `flat_vat` varchar(100) DEFAULT NULL,
  `discount` varchar(100) NOT NULL DEFAULT '0',
  `flat_discount` varchar(100) DEFAULT NULL,
  `gross_total` varchar(100) DEFAULT NULL,
  `hospital_amount` varchar(100) DEFAULT NULL,
  `doctor_amount` varchar(100) DEFAULT NULL,
  `category_amount` varchar(1000) DEFAULT NULL,
  `category_name` varchar(1000) DEFAULT NULL,
  `amount_received` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Volcando datos para la tabla doctor.pharmacy_payment: 0 rows
/*!40000 ALTER TABLE `pharmacy_payment` DISABLE KEYS */;
/*!40000 ALTER TABLE `pharmacy_payment` ENABLE KEYS */;

-- Volcando estructura para tabla doctor.pharmacy_payment_category
CREATE TABLE IF NOT EXISTS `pharmacy_payment_category` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `category` varchar(100) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `c_price` varchar(100) DEFAULT NULL,
  `d_commission` int(100) DEFAULT NULL,
  `h_commission` int(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Volcando datos para la tabla doctor.pharmacy_payment_category: 0 rows
/*!40000 ALTER TABLE `pharmacy_payment_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `pharmacy_payment_category` ENABLE KEYS */;

-- Volcando estructura para tabla doctor.prescription
CREATE TABLE IF NOT EXISTS `prescription` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `date` varchar(100) DEFAULT NULL,
  `patient` varchar(100) DEFAULT NULL,
  `doctor` varchar(100) DEFAULT NULL,
  `symptom` varchar(100) DEFAULT NULL,
  `advice` varchar(1000) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `dd` varchar(100) DEFAULT NULL,
  `medicine` varchar(1000) DEFAULT NULL,
  `validity` varchar(100) DEFAULT NULL,
  `note` varchar(1000) DEFAULT NULL,
  `patientname` varchar(1000) DEFAULT NULL,
  `doctorname` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=100 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Volcando datos para la tabla doctor.prescription: 0 rows
/*!40000 ALTER TABLE `prescription` DISABLE KEYS */;
/*!40000 ALTER TABLE `prescription` ENABLE KEYS */;

-- Volcando estructura para tabla doctor.receptionist
CREATE TABLE IF NOT EXISTS `receptionist` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `img_url` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `x` varchar(100) DEFAULT NULL,
  `ion_user_id` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Volcando datos para la tabla doctor.receptionist: 1 rows
/*!40000 ALTER TABLE `receptionist` DISABLE KEYS */;
INSERT INTO `receptionist` (`id`, `img_url`, `name`, `email`, `address`, `phone`, `x`, `ion_user_id`) VALUES
	(7, '', 'Mr Receptionist', 'receptionist@dms.com', 'Collegepara, Rajbari', '+880123456789', '', '614');
/*!40000 ALTER TABLE `receptionist` ENABLE KEYS */;

-- Volcando estructura para tabla doctor.report
CREATE TABLE IF NOT EXISTS `report` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `report_type` varchar(100) DEFAULT NULL,
  `patient` varchar(100) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `doctor` varchar(100) DEFAULT NULL,
  `date` varchar(100) DEFAULT NULL,
  `add_date` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Volcando datos para la tabla doctor.report: 1 rows
/*!40000 ALTER TABLE `report` DISABLE KEYS */;
INSERT INTO `report` (`id`, `report_type`, `patient`, `description`, `doctor`, `date`, `add_date`) VALUES
	(36, 'operation', 'Mr Patient*681', 'jhvvnbv', 'Mr Doctor', '07-12-2020', '12/13/20');
/*!40000 ALTER TABLE `report` ENABLE KEYS */;

-- Volcando estructura para tabla doctor.service
CREATE TABLE IF NOT EXISTS `service` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `img_url` varchar(1000) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `description` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Volcando datos para la tabla doctor.service: 5 rows
/*!40000 ALTER TABLE `service` DISABLE KEYS */;
INSERT INTO `service` (`id`, `img_url`, `title`, `description`) VALUES
	(1, 'uploads/featured-icon-3.png', 'Cardiac Excellence', 'Cardiac Excellence Cardiac Excellence Cardiac Excellence Cardiac Excellence Cardiac Excellence Cardiac Excellence Cardiac Excellence Cardiac Excellence Cardiac Excellence'),
	(2, 'uploads/featured-icon-4.png', 'Cancer Treatment', 'Cardiac Excellence Cardiac Excellence Cardiac Excellence Cardiac Excellence Cardiac Excellence Cardiac Excellence Cardiac Excellence Cardiac Excellence Cardiac Excellence'),
	(3, 'uploads/featured-icon-1.png', 'Stroke Management', 'Cardiac Excellence Cardiac Excellence Cardiac Excellence Cardiac Excellence Cardiac Excellence Cardiac Excellence Cardiac Excellence Cardiac Excellence Cardiac Excellence'),
	(4, 'uploads/featured-icon-6.png', '24 / 7 Support', 'Cardiac Excellence Cardiac Excellence Cardiac Excellence Cardiac Excellence Cardiac Excellence Cardiac Excellence Cardiac Excellence Cardiac Excellence Cardiac Excellence'),
	(5, 'uploads/featured-icon-2.png', 'Care', 'Cardiac Excellence Cardiac Excellence Cardiac Excellence Cardiac Excellence Cardiac Excellence Cardiac Excellence Cardiac Excellence Cardiac Excellence Cardiac Excellence');
/*!40000 ALTER TABLE `service` ENABLE KEYS */;

-- Volcando estructura para tabla doctor.settings
CREATE TABLE IF NOT EXISTS `settings` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `system_vendor` varchar(100) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `facebook_id` varchar(100) DEFAULT NULL,
  `currency` varchar(100) DEFAULT NULL,
  `language` varchar(100) DEFAULT NULL,
  `discount` varchar(100) DEFAULT NULL,
  `live_appointment_type` varchar(100) DEFAULT NULL,
  `vat` varchar(100) DEFAULT NULL,
  `login_title` varchar(100) DEFAULT NULL,
  `logo` varchar(500) DEFAULT NULL,
  `invoice_logo` varchar(500) DEFAULT NULL,
  `payment_gateway` varchar(100) DEFAULT NULL,
  `sms_gateway` varchar(100) DEFAULT NULL,
  `codec_username` varchar(100) DEFAULT NULL,
  `codec_purchase_code` varchar(100) DEFAULT NULL,
  `timezone` varchar(1000) DEFAULT NULL,
  `emailtype` varchar(1000) DEFAULT NULL,
  `appointment_subtitle` varchar(1000) NOT NULL,
  `appointment_title` varchar(1000) NOT NULL,
  `appointment_description` varchar(1000) NOT NULL,
  `appointment_img_url` varchar(500) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Volcando datos para la tabla doctor.settings: 1 rows
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` (`id`, `system_vendor`, `title`, `address`, `phone`, `email`, `facebook_id`, `currency`, `language`, `discount`, `live_appointment_type`, `vat`, `login_title`, `logo`, `invoice_logo`, `payment_gateway`, `sms_gateway`, `codec_username`, `codec_purchase_code`, `timezone`, `emailtype`, `appointment_subtitle`, `appointment_title`, `appointment_description`, `appointment_img_url`) VALUES
	(1, 'Doctor Care', 'Doctor Clinic', 'Boropool, Rajbari-7700', '+0123456789', 'admin@demo.com', '#', '$', 'spanish', 'flat', 'jitsi', 'percentage', 'Login Title', 'uploads/logo-nonetext1.png', '', 'PayPal', 'Twilio', '', '', 'Asia/Dhaka', 'Domain Email', '', '', '', '');
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;

-- Volcando estructura para tabla doctor.site_gallery
CREATE TABLE IF NOT EXISTS `site_gallery` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `img` varchar(500) NOT NULL,
  `position` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Volcando datos para la tabla doctor.site_gallery: 6 rows
/*!40000 ALTER TABLE `site_gallery` DISABLE KEYS */;
INSERT INTO `site_gallery` (`id`, `img`, `position`, `status`) VALUES
	(1, 'uploads/gallery-img-1.png', '1', 'Active'),
	(2, 'uploads/gallery-img-2.png', '2', 'Active'),
	(3, 'uploads/gallery-img-3.png', '3', 'Active'),
	(4, 'uploads/gallery-img-4.png', '4', 'Active'),
	(5, 'uploads/gallery-img-5.png', '5', 'Active'),
	(6, 'uploads/gallery-img-6.png', '6', 'Active');
/*!40000 ALTER TABLE `site_gallery` ENABLE KEYS */;

-- Volcando estructura para tabla doctor.site_grid
CREATE TABLE IF NOT EXISTS `site_grid` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `category` varchar(100) NOT NULL,
  `title` varchar(500) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `img` varchar(1000) NOT NULL,
  `position` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Volcando datos para la tabla doctor.site_grid: 2 rows
/*!40000 ALTER TABLE `site_grid` DISABLE KEYS */;
INSERT INTO `site_grid` (`id`, `category`, `title`, `description`, `img`, `position`, `status`) VALUES
	(3, 'FEATURED', 'Professional surgeons', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum tenetur, aut veritatis maxime ducimus modi delectus vero expedita illo ratione, eveniet laboriosam cupiditate reiciendis, repellat minima. Optio consectetur inventore ipsa!', 'uploads/frature-img-1.png', '1', 'Active'),
	(4, 'FEATURED', 'Good Care', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum tenetur, aut veritatis maxime ducimus modi delectus vero expedita illo ratione, eveniet laboriosam cupiditate reiciendis, repellat minima. Optio consectetur inventore ipsa!', 'uploads/frature-img-2.png', '2', 'Active');
/*!40000 ALTER TABLE `site_grid` ENABLE KEYS */;

-- Volcando estructura para tabla doctor.site_review
CREATE TABLE IF NOT EXISTS `site_review` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `designation` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `review` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `img` varchar(1000) NOT NULL,
  `status` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Volcando datos para la tabla doctor.site_review: 5 rows
/*!40000 ALTER TABLE `site_review` DISABLE KEYS */;
INSERT INTO `site_review` (`id`, `name`, `designation`, `review`, `img`, `status`) VALUES
	(1, 'Test Reviewer 1', 'Reviewer, XYZ', '“ Lorem ipsum dolor sit amet consectetur adipisicing elit. Vero expedita cumque assumenda cum neque, atque nesciunt, molestiae architecto doloremque quis, placeat ipsam quidem provident in! Illum voluptas harum animi consequatur! ”', 'uploads/doctor-icon-avatar-white136162-581.jpg', 'Active'),
	(3, 'Test Reviewer 2', 'Reviewer, ABC', '“ Lorem ipsum dolor sit amet consectetur adipisicing elit. Vero expedita cumque assumenda cum neque, atque nesciunt, molestiae architecto doloremque quis, placeat ipsam quidem provident in! Illum voluptas harum animi consequatur! ”', 'uploads/doctor-icon-avatar-white136162-582.jpg', 'Active'),
	(4, 'Test Reviewer 3', 'Reviewer, NMP', '“ Lorem ipsum dolor sit amet consectetur adipisicing elit. Vero expedita cumque assumenda cum neque, atque nesciunt, molestiae architecto doloremque quis, placeat ipsam quidem provident in! Illum voluptas harum animi consequatur! ”', 'uploads/doctor-icon-avatar-white136162-583.jpg', 'Active'),
	(5, 'Test Reviewer 4', 'Reviewer, TRP', '“ Lorem ipsum dolor sit amet consectetur adipisicing elit. Vero expedita cumque assumenda cum neque, atque nesciunt, molestiae architecto doloremque quis, placeat ipsam quidem provident in! Illum voluptas harum animi consequatur! ”', 'uploads/doctor-icon-avatar-white136162-584.jpg', 'Active'),
	(6, 'Test Reviewer 5', 'Reviewer, CVB', '“ Lorem ipsum dolor sit amet consectetur adipisicing elit. Vero expedita cumque assumenda cum neque, atque nesciunt, molestiae architecto doloremque quis, placeat ipsam quidem provident in! Illum voluptas harum animi consequatur! ”', 'uploads/doctor-icon-avatar-white136162-585.jpg', 'Inactive');
/*!40000 ALTER TABLE `site_review` ENABLE KEYS */;

-- Volcando estructura para tabla doctor.slide
CREATE TABLE IF NOT EXISTS `slide` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL,
  `img_url` varchar(1000) DEFAULT NULL,
  `text1` varchar(500) DEFAULT NULL,
  `text2` varchar(500) DEFAULT NULL,
  `text3` varchar(500) DEFAULT NULL,
  `position` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Volcando datos para la tabla doctor.slide: 4 rows
/*!40000 ALTER TABLE `slide` DISABLE KEYS */;
INSERT INTO `slide` (`id`, `title`, `img_url`, `text1`, `text2`, `text3`, `position`, `status`) VALUES
	(1, 'Slider 1', 'uploads/1503411077revised-bhatia-homebanner-03.jpg', 'Welcome To Hospital', 'Hospital Management System', 'Hospital', '2', 'Active'),
	(2, 'Best Hospital management System', 'uploads/1707260345350542.jpg', 'Best Hospital management System', 'Best Hospital management System', 'Best Hospital management System', '1', 'Inactive'),
	(5, 'dbfbfjsbjfjbbsjfb', 'uploads/inlinePreview2.jpg', 'jbfjsbjdf', 'jbfjbjfbjsb', 'jbfjbjsbfj', 'jbfjbjbsjf', 'Inactive'),
	(6, 'Main BG', 'uploads/header-bg.png', 'The best doctors in Medicine!', 'in the world of modern medicine', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation', '1', 'Active');
/*!40000 ALTER TABLE `slide` ENABLE KEYS */;

-- Volcando estructura para tabla doctor.sms
CREATE TABLE IF NOT EXISTS `sms` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `date` varchar(100) DEFAULT NULL,
  `message` varchar(1600) DEFAULT NULL,
  `recipient` varchar(100) DEFAULT NULL,
  `user` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=99 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Volcando datos para la tabla doctor.sms: 0 rows
/*!40000 ALTER TABLE `sms` DISABLE KEYS */;
/*!40000 ALTER TABLE `sms` ENABLE KEYS */;

-- Volcando estructura para tabla doctor.sms_settings
CREATE TABLE IF NOT EXISTS `sms_settings` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `api_id` varchar(100) DEFAULT NULL,
  `sender` varchar(100) DEFAULT NULL,
  `authkey` varchar(100) DEFAULT NULL,
  `user` varchar(100) DEFAULT NULL,
  `sid` varchar(1000) DEFAULT NULL,
  `token` varchar(1000) DEFAULT NULL,
  `sendernumber` varchar(1000) DEFAULT NULL,
  `link` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Volcando datos para la tabla doctor.sms_settings: 5 rows
/*!40000 ALTER TABLE `sms_settings` DISABLE KEYS */;

/*!40000 ALTER TABLE `sms_settings` ENABLE KEYS */;

-- Volcando estructura para tabla doctor.template
CREATE TABLE IF NOT EXISTS `template` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `template` varchar(10000) DEFAULT NULL,
  `user` varchar(100) DEFAULT NULL,
  `x` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Volcando datos para la tabla doctor.template: 0 rows
/*!40000 ALTER TABLE `template` DISABLE KEYS */;
/*!40000 ALTER TABLE `template` ENABLE KEYS */;

-- Volcando estructura para tabla doctor.time_schedule
CREATE TABLE IF NOT EXISTS `time_schedule` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `doctor` varchar(500) DEFAULT NULL,
  `weekday` varchar(100) DEFAULT NULL,
  `s_time` varchar(100) DEFAULT NULL,
  `e_time` varchar(100) DEFAULT NULL,
  `s_time_key` varchar(100) DEFAULT NULL,
  `duration` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=116 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Volcando datos para la tabla doctor.time_schedule: 0 rows
/*!40000 ALTER TABLE `time_schedule` DISABLE KEYS */;
/*!40000 ALTER TABLE `time_schedule` ENABLE KEYS */;

-- Volcando estructura para tabla doctor.time_slot
CREATE TABLE IF NOT EXISTS `time_slot` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `doctor` varchar(100) DEFAULT NULL,
  `s_time` varchar(100) DEFAULT NULL,
  `e_time` varchar(100) DEFAULT NULL,
  `weekday` varchar(100) DEFAULT NULL,
  `s_time_key` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2447 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Volcando datos para la tabla doctor.time_slot: 40 rows
/*!40000 ALTER TABLE `time_slot` DISABLE KEYS */;
INSERT INTO `time_slot` (`id`, `doctor`, `s_time`, `e_time`, `weekday`, `s_time_key`) VALUES
	(2196, NULL, '01:30 PM', '01:45 PM', 'Tuesday', '162'),
	(2197, NULL, '01:45 PM', '02:00 PM', 'Tuesday', '165'),
	(2198, NULL, '02:00 PM', '02:15 PM', 'Tuesday', '168'),
	(2199, NULL, '02:15 PM', '02:30 PM', 'Tuesday', '171'),
	(2200, NULL, '02:30 PM', '02:45 PM', 'Tuesday', '174'),
	(2201, NULL, '02:45 PM', '03:00 PM', 'Tuesday', '177'),
	(2202, NULL, '03:00 PM', '03:15 PM', 'Tuesday', '180'),
	(2203, NULL, '03:15 PM', '03:30 PM', 'Tuesday', '183'),
	(2204, NULL, '03:30 PM', '03:45 PM', 'Tuesday', '186'),
	(2205, NULL, '03:45 PM', '04:00 PM', 'Tuesday', '189'),
	(2206, NULL, '04:00 PM', '04:15 PM', 'Tuesday', '192'),
	(2207, NULL, '04:15 PM', '04:30 PM', 'Tuesday', '195'),
	(2208, NULL, '04:30 PM', '04:45 PM', 'Tuesday', '198'),
	(2209, NULL, '04:45 PM', '05:00 PM', 'Tuesday', '201'),
	(2210, NULL, '05:00 PM', '05:15 PM', 'Tuesday', '204'),
	(2211, NULL, '05:15 PM', '05:30 PM', 'Tuesday', '207'),
	(2212, NULL, '05:30 PM', '05:45 PM', 'Tuesday', '210'),
	(2213, NULL, '05:45 PM', '06:00 PM', 'Tuesday', '213'),
	(2214, NULL, '06:00 PM', '06:15 PM', 'Tuesday', '216'),
	(2215, NULL, '06:15 PM', '06:30 PM', 'Tuesday', '219'),
	(2216, NULL, '06:30 PM', '06:45 PM', 'Tuesday', '222'),
	(2217, NULL, '06:45 PM', '07:00 PM', 'Tuesday', '225'),
	(2218, NULL, '07:00 PM', '07:15 PM', 'Tuesday', '228'),
	(2219, NULL, '07:15 PM', '07:30 PM', 'Tuesday', '231'),
	(2220, NULL, '07:30 PM', '07:45 PM', 'Tuesday', '234'),
	(2221, NULL, '07:45 PM', '08:00 PM', 'Tuesday', '237'),
	(2222, NULL, '08:00 PM', '08:15 PM', 'Tuesday', '240'),
	(2223, NULL, '08:15 PM', '08:30 PM', 'Tuesday', '243'),
	(2224, NULL, '08:30 PM', '08:45 PM', 'Tuesday', '246'),
	(2225, NULL, '08:45 PM', '09:00 PM', 'Tuesday', '249'),
	(2226, NULL, '09:00 PM', '09:15 PM', 'Tuesday', '252'),
	(2227, NULL, '09:15 PM', '09:30 PM', 'Tuesday', '255'),
	(2228, NULL, '09:30 PM', '09:45 PM', 'Tuesday', '258'),
	(2229, NULL, '09:45 PM', '10:00 PM', 'Tuesday', '261'),
	(2230, NULL, '10:00 PM', '10:15 PM', 'Tuesday', '264'),
	(2231, NULL, '10:15 PM', '10:30 PM', 'Tuesday', '267'),
	(2232, NULL, '10:30 PM', '10:45 PM', 'Tuesday', '270'),
	(2233, NULL, '10:45 PM', '11:00 PM', 'Tuesday', '273'),
	(2234, NULL, '11:00 PM', '11:15 PM', 'Tuesday', '276'),
	(2235, NULL, '11:15 PM', '11:30 PM', 'Tuesday', '279');
/*!40000 ALTER TABLE `time_slot` ENABLE KEYS */;

-- Volcando estructura para tabla doctor.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(15) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `salt` varchar(255) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `activation_code` varchar(40) DEFAULT NULL,
  `forgotten_password_code` varchar(40) DEFAULT NULL,
  `forgotten_password_time` int(11) unsigned DEFAULT NULL,
  `remember_code` varchar(40) DEFAULT NULL,
  `created_on` int(11) unsigned NOT NULL,
  `last_login` int(11) unsigned DEFAULT NULL,
  `active` tinyint(1) unsigned DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1584 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Volcando datos para la tabla doctor.users: ~8 rows (aproximadamente)
INSERT INTO `users` (`id`, `ip_address`, `username`, `password`, `salt`, `email`, `activation_code`, `forgotten_password_code`, `forgotten_password_time`, `remember_code`, `created_on`, `last_login`, `active`, `first_name`, `last_name`, `company`, `phone`) VALUES
	(1, '127.0.0.1', 'admin', '$2y$08$dxACPpnFozxfaNdOyKR8x.R4SwJwru2rFwG6BBfOpUnAoVfViQDs.', '', 'admin@dms.com', '', 'g0wt205VJVb4a9819f14ce3d10dffe14f93680e2', 1607595309, 'zCeJpcj78CKqJ4sVxVbxcO', 1268889823, 1742493994, 1, 'Admin', 'istrator', 'ADMIN', '0'),
	(109, '113.11.74.192', 'Mrs Nurse', '$2y$08$CqxsVFewynbZi6UBOe481eJWbkNdOa/ehpmlGXJnrjq5mvpPDdzoO', NULL, 'nurse@dms.com', NULL, NULL, NULL, NULL, 1435082243, 1614599494, 1, NULL, NULL, NULL, NULL),
	(110, '113.11.74.192', 'Mr. Pharmacist', '$2y$08$uy2YnEG6kAADq8QLL2MS7OfvPs.ZLcWmAVJCj5LA4pNQTuuBWNZ4G', NULL, 'pharmacist@dms.com', NULL, NULL, NULL, 'mbeMop6vTuscFYmD2M4Iqu', 1435082359, 1614599460, 1, NULL, NULL, NULL, NULL),
	(111, '113.11.74.192', 'Mr Laboratorist', '$2y$08$hSHiFXnJZE4fusxX2WlfYeIVIYLH2H6ZfyINHRQLbrTAUcnVc572a', NULL, 'laboratorist@dms.com', NULL, NULL, NULL, NULL, 1435082438, 1585114573, 1, NULL, NULL, NULL, NULL),
	(112, '113.11.74.192', 'Mr. Accountant', '$2y$08$MeJQlgRC1AALgtvxfXwhuu5p1QOE9VAhXf7eM7llpt1TRRpNxVAFu', NULL, 'accountant@dms.com', NULL, NULL, NULL, NULL, 1435082637, 1614599331, 1, NULL, NULL, NULL, NULL),
	(614, '103.231.162.58', 'Mr Receptionist', '$2y$08$K2lK8Adt2whlJupWKZuPiuE7GIS.yI0ort8xgOGAERLqdwapGWszq', NULL, 'receptionist@dms.com', NULL, NULL, NULL, NULL, 1505800835, 1599736103, 1, NULL, NULL, NULL, NULL),
	(681, '103.231.161.30', 'Mr Patient', '$2y$08$i/UFBm2dH7YbaGnM8nByO.iO.09m.Fh9pIyn5aTH6XaD8w4CzUrZC', NULL, 'patient@dms.com', NULL, NULL, NULL, NULL, 1548872582, 1615092407, 1, NULL, NULL, NULL, NULL),
	(709, '103.231.160.47', 'Mr Doctor', '$2y$08$OpopE/0j9osR4hnNnyCz3eekXDTQsMRpXgs7VfDvXxmG8vGxFt3.u', NULL, 'doctor@dms.com', NULL, NULL, NULL, NULL, 1558379920, 1613886696, 1, NULL, NULL, NULL, NULL);

-- Volcando estructura para tabla doctor.users_groups
CREATE TABLE IF NOT EXISTS `users_groups` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) unsigned NOT NULL,
  `group_id` mediumint(8) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uc_users_groups` (`user_id`,`group_id`),
  KEY `fk_users_groups_users1_idx` (`user_id`),
  KEY `fk_users_groups_groups1_idx` (`group_id`),
  CONSTRAINT `fk_users_groups_groups1` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `fk_users_groups_users1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=5581 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Volcando datos para la tabla doctor.users_groups: ~8 rows (aproximadamente)
INSERT INTO `users_groups` (`id`, `user_id`, `group_id`) VALUES
	(1, 1, 1),
	(111, 109, 6),
	(112, 110, 7),
	(113, 111, 8),
	(114, 112, 3),
	(616, 614, 10),
	(683, 681, 5),
	(711, 709, 4);

-- Volcando estructura para tabla doctor.website_settings
CREATE TABLE IF NOT EXISTS `website_settings` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL,
  `description` varchar(1000) NOT NULL,
  `logo` varchar(1000) DEFAULT NULL,
  `address` varchar(500) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `emergency` varchar(100) DEFAULT NULL,
  `support` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `currency` varchar(100) DEFAULT NULL,
  `block_1_text_under_title` varchar(500) DEFAULT NULL,
  `service_block__text_under_title` varchar(500) DEFAULT NULL,
  `doctor_block__text_under_title` varchar(500) DEFAULT NULL,
  `facebook_id` varchar(100) DEFAULT NULL,
  `twitter_id` varchar(100) DEFAULT NULL,
  `google_id` varchar(100) DEFAULT NULL,
  `youtube_id` varchar(100) DEFAULT NULL,
  `skype_id` varchar(100) DEFAULT NULL,
  `x` varchar(100) DEFAULT NULL,
  `twitter_username` varchar(1000) DEFAULT NULL,
  `appointment_title` varchar(1000) NOT NULL,
  `appointment_subtitle` varchar(1000) NOT NULL,
  `appointment_description` varchar(1000) NOT NULL,
  `appointment_img_url` varchar(500) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Volcando datos para la tabla doctor.website_settings: 1 rows
/*!40000 ALTER TABLE `website_settings` DISABLE KEYS */;
INSERT INTO `website_settings` (`id`, `title`, `description`, `logo`, `address`, `phone`, `emergency`, `support`, `email`, `currency`, `block_1_text_under_title`, `service_block__text_under_title`, `doctor_block__text_under_title`, `facebook_id`, `twitter_id`, `google_id`, `youtube_id`, `skype_id`, `x`, `twitter_username`, `appointment_title`, `appointment_subtitle`, `appointment_description`, `appointment_img_url`) VALUES
	(1, 'Doctor Care', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Minus deleniti mollitia quibusdam natus dolorum quae id libero rerum ullam maxime molestias exercitationem incidunt, sunt, delectus consequuntur dignissimos ab iste fuga?', 'uploads/logo.png', 'Boropool, Rajbari-7701', '+0123456789', '+0123456789', '+0123456789', 'admin@demo.com', '$', 'Best Hospital In The City', 'Aenean nibh ante, lacinia non tincidunt nec, lobortis ut tellus. Sed in porta diam.', 'We work with forward thinking clients to create beautiful, honest and amazing things that bring positive results.', 'https://www.facebook.com/rizvi.plabon', 'https://www.twitter.com/casoft', 'https://www.google.com/casoft', 'https://www.youtube.com/casoft', 'https://www.skype.com/casoft', NULL, 'codearistos', 'Why you should choose us?', 'WELCOME TO HOSPITAL MANAGEMENT', 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Quisquam nulla quibusdam nam autem, in quasi quae cumque, laborum optio nobis reprehenderit doloremque delectus voluptate. Maxime aliquam vitae adipisci sit numquam?', 'uploads/why-choose-us-doc.png');
/*!40000 ALTER TABLE `website_settings` ENABLE KEYS */;

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
