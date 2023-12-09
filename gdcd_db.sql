-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 09, 2023 at 03:16 PM
-- Server version: 10.5.23-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gdcd_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `about_college_tb`
--

CREATE TABLE `about_college_tb` (
  `id` int(11) NOT NULL,
  `vision` longtext DEFAULT NULL,
  `mission` longtext DEFAULT NULL,
  `college_profile` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `about_college_tb`
--

INSERT INTO `about_college_tb` (`id`, `vision`, `mission`, `college_profile`) VALUES
(1, '<p>Equip the differently privileged rural students with skill of appreciating the socio-economic challenges and with the passion for contributing in the national mission of approaching and overcoming these challenges</p>\r\n', '<p>To ensure and encourage student participation in the functioning of the institution with a view to promote a culture of team work and cooperation to boost their democratic mannerism, leadership qualities, self-confidence and overall personality development. To emphasize the class room centric learning for maintaining a caring teacher-learner partnership with due appreciation for the latest tools and methods of learning and social outreach. To strive for making the institute a centre of learning famous for the values and practices of discipline, moral uprightness, sense of social responsibility, fair-play and honesty.</p>\r\n', '<p>In the contemporary world, an accentuating landmark of any society cannot be accomplished without acceleration and development of higher education. One of the associated attributes of this effort is to make higher education accessible, particularly to the people living in the peripheral areas. Establishment of the Govt. Degree College Dooru is one such landmark in that direction. Govt. Degree College Dooru was established in March 2005, vide J&K State Govt. Order No. 28-HE of 2005, dated:09-03-2005 under the Prime Minister’s Reconstruction Plan. The college is affiliated to the University of Kashmir vide University Order No.F(Affi-govt-Degree College) Acad/KU/06/592 dated 29 April 2006. The college is recognised by the UGC under 2(F) and 12B of UGC Act 1956. Basically the newly opened Colleges have been established with the vision of offering market-oriented, professional and technical courses to the students, so as to equip the young generation with the modern facilities to coup with the unemployment problem. The college started its operation from the academic session 2005-2006 with an enrolment of 27 students. The enrolment of the students witnessed an enormous increase over the years. With a meagre number of 27 students in 2005-2006 sessions, the students enrolment reached to 1145 in 2015-2016. The college offers admission in undergraduate courses in the subjects of sciences, applied science, BCA, B.Com and arts. Though the college is under progression and is equipped with minimal resources, we are committed to their usage at optimal scale for the benefit of student community. The facilities of rich library, state of the art computer Lab with latest computers and other electronic gadgets, science laboratories, University IT centre, UGC network resource centre, gymnasium, smart class room, conference hall and canteen.</p>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `about_us_tb`
--

CREATE TABLE `about_us_tb` (
  `id` int(11) NOT NULL,
  `phone_no` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `description` mediumtext NOT NULL,
  `about` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `admin_tb`
--

CREATE TABLE `admin_tb` (
  `id` int(11) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `salt` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin_tb`
--

INSERT INTO `admin_tb` (`id`, `email`, `password`, `salt`) VALUES
(1, 'admin@gdcdooru.edu.in', '$2y$10$VYe.BM0KWYS/Jp6qjw7TlujmmBkTy0Vyg7VIOZQawEm71LE.tzeq6', '2373667341702015991');

-- --------------------------------------------------------

--
-- Table structure for table `admission_form_link_tb`
--

CREATE TABLE `admission_form_link_tb` (
  `id` int(11) NOT NULL,
  `link_text` varchar(255) DEFAULT NULL,
  `semester` varchar(255) DEFAULT NULL,
  `batch` varchar(255) DEFAULT NULL,
  `starting_date` varchar(255) NOT NULL,
  `last_date` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admission_form_link_tb`
--

INSERT INTO `admission_form_link_tb` (`id`, `link_text`, `semester`, `batch`, `starting_date`, `last_date`) VALUES
(2, 'Admission form for 1st semester batch 2022', '1', '2022', '1655577000', '1656095400');

-- --------------------------------------------------------

--
-- Table structure for table `admission_notification_tb`
--

CREATE TABLE `admission_notification_tb` (
  `id` int(11) NOT NULL,
  `notice_no` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `notice_body` longtext DEFAULT NULL,
  `upload_date` varchar(255) DEFAULT NULL,
  `last_date` varchar(255) NOT NULL,
  `signature` varchar(255) NOT NULL,
  `copy_to` varchar(255) DEFAULT NULL,
  `userfile` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admission_notification_tb`
--

INSERT INTO `admission_notification_tb` (`id`, `notice_no`, `title`, `notice_body`, `upload_date`, `last_date`, `signature`, `copy_to`, `userfile`) VALUES
(1, NULL, 'last date for admissions', NULL, '1638714839', '1636309800', '', NULL, '7287.pdf'),
(2, NULL, 'Admission Notification (Under Choice Based Credit System Semester Scheme) for Under-Graduate\r\n5th& 6thSemester of Batch 2019 (Regular)', NULL, '1649661313', '1649615400', '', NULL, '7598.pdf'),
(3, NULL, 'Extension in admission for UG 5th/6th semester batch 2019 ', NULL, '1650006056', '1650825000', '', NULL, '7650.pdf'),
(4, 'GDCD/First-Sem/22', 'Admission form to be filled in addition to university admission form-2022', '<p><p>Students are requested to mandatorily fill the admission form of GDC Dooru in addition to university admission form. Furthermore, students are required to take the printout of the form from their respective emails and get that signed by college admissions committee.</p> <p>The link for the form is: https://form.jotform.com/221642186298462 </p></p>\r\n', '1655315098', '1656527400', 'admission_sig.jpg', '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admission_profile_tb`
--

CREATE TABLE `admission_profile_tb` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `contact` varchar(255) NOT NULL,
  `userfile` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admission_profile_tb`
--

INSERT INTO `admission_profile_tb` (`id`, `name`, `email`, `contact`, `userfile`) VALUES
(1, 'Prof Tawseef Ahmad Parray', 'admission@gdcdooru.edu.in', '7006063072', 'admission_chairperson1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `admission_tb`
--

CREATE TABLE `admission_tb` (
  `form_no` bigint(20) NOT NULL,
  `application_id` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `parentage` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `mobile_number` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `reg_no` varchar(255) DEFAULT NULL,
  `reg_type` varchar(255) DEFAULT NULL,
  `semester` varchar(255) DEFAULT NULL,
  `stream` varchar(255) DEFAULT NULL,
  `subjects` varchar(255) DEFAULT NULL,
  `roll_no` varchar(255) DEFAULT NULL,
  `in_online_class` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `signature` varchar(255) DEFAULT NULL,
  `batch` varchar(255) NOT NULL,
  `starting_date` varchar(255) NOT NULL,
  `last_date` varchar(255) NOT NULL,
  `personal_details_status` int(11) NOT NULL DEFAULT 0,
  `academic_details_status` int(11) NOT NULL DEFAULT 0,
  `document_upload_status` int(11) NOT NULL DEFAULT 0,
  `submit_status` enum('no','yes') DEFAULT 'no',
  `submit_date` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admission_tb`
--

INSERT INTO `admission_tb` (`form_no`, `application_id`, `name`, `parentage`, `address`, `mobile_number`, `email`, `reg_no`, `reg_type`, `semester`, `stream`, `subjects`, `roll_no`, `in_online_class`, `photo`, `signature`, `batch`, `starting_date`, `last_date`, `personal_details_status`, `academic_details_status`, `document_upload_status`, `submit_status`, `submit_date`) VALUES
(20, 'gdc457920201593674511', NULL, NULL, NULL, NULL, NULL, '4579-DRA-20167', NULL, '5', 'Humanities\r\nScience\r\nBCA\r\nB.Com', 'Biochemistry\r\nBotany\r\nZoology\r\nChemistry\r\nPhysics\r\nMathematics\r\nEnvironmental Sciences', NULL, NULL, NULL, NULL, '2018', '100256561', '326589455', 0, 0, 0, 'no', NULL),
(21, 'gdc457920201604478734', NULL, NULL, NULL, NULL, NULL, '4579-DRA-2016', NULL, '3', NULL, NULL, NULL, NULL, NULL, NULL, '2017', '1604428200', '1606674600', 0, 0, 0, 'no', NULL),
(22, 'gdc568920201606057908', NULL, NULL, NULL, NULL, NULL, '5689-DRA-2016', NULL, '3', NULL, NULL, NULL, NULL, NULL, NULL, '2019', '1606329000', '1607106600', 0, 0, 0, 'no', NULL),
(24, 'gdcDORH20221655744808', 'zahid', 'maqbool', 'Gundipora', '7006579916', 'zahidcomp@gmail.com', 'DORHED-922', NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, '2022', '1655577000', '1656095400', 1, 0, 0, 'no', NULL),
(25, 'gdcDRA120221655781468', NULL, NULL, NULL, NULL, NULL, 'DRA1923 2022', NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, '2022', '1655577000', '1656095400', 0, 0, 0, 'no', NULL),
(26, 'gdcDRB-20221655781804', 'unirh', 'unish', 'Gundipor', '700657996', 'zahidcomp@gmail.com', 'DRB-2344-2022', NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, '2022', '1655577000', '1656095400', 1, 0, 0, 'no', NULL),
(27, 'gdcDRA-20221655782712', 'Aiman', 'MD Gani', 'Utersoo', '2344234234', 'abc@gmail.com', 'DRA-1234-2022', NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, '2022', '1655577000', '1656095400', 1, 0, 0, 'no', NULL),
(28, 'gdc458020221655783804', 'Suhail Ahmad Bhat', 'Bashir Ahmad Bhat', 'Verinag, Anantnag', '07889707193', 'suhailbhat7886@gmail.com', '4580-DRA-2016', NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, '2022', '1655577000', '1656095400', 1, 0, 0, 'no', NULL),
(29, 'gdc458120221655785362', 'Wani Aariz', 'Zakir wani', 'Anantnag\r\nHouse no 211', '09622765774', 'wanizakir073@gmail.com', '4581-DRA-2018', NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, '2022', '1655577000', '1656095400', 1, 0, 0, 'no', NULL),
(30, 'gdc171820221655789359', 'Abc', 'Abc', 'Jhv', '+917006063072', 'PARRAYTAWSEEF.SF@GMAIL.COM', '17182', 'Regular', '1', 'Humanities', 'Select Subject Combination', '24848', 'whatsapp_group', NULL, NULL, '2022', '1655577000', '1656095400', 1, 1, 0, 'no', NULL),
(31, 'gdcC22120221655797891', 'ADEEB UL ISLAM', 'GHULAM QADIR BHAT', '110,CHONTIPORA,VERINAG,ANANTNAG,JAMMU AND KASHMIR', '8825066491', 'adeebulislam1@gmail.com', 'C221/20102/0001', NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, '2022', '1655577000', '1656095400', 1, 0, 0, 'no', NULL),
(32, 'gdc163220221655803704', NULL, NULL, NULL, NULL, NULL, '16328', NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, '2022', '1655577000', '1656095400', 0, 0, 0, 'no', NULL),
(33, 'gdcN18420221655816386', 'Amad gull', 'Ghulam mohd shan', 'Sadiwara verinag', '7889315001', 'amadgull82988@gmail.com', 'N18402960004', NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, '2022', '1655577000', '1656095400', 1, 0, 0, 'no', NULL),
(34, 'gdc183020221655892886', 'MAHROY JAN', 'KAWSAR AHMAD AHANGAR', 'CHOWGUND ,REIN CHWGUND  VERINAG 192212 SHAHABAD BALA ANANTNAG JAMMU AND KASHMIR', '8899410381', 'MAHROYJAN@GMAIL.COM', '18306', NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, '2022', '1655577000', '1656095400', 1, 0, 0, 'no', NULL),
(35, 'gdcDRA-20221655964893', 'sdsfs', 'fsdfs', 'sdfsdf', '7006616880', 'admin@gdcdooru.edu.in', 'DRA-1934-2022', 'Regular', '1', 'Humanities', 'history_polScience_geo', '4534', 'whatsapp_group', 'https://gdcdooru.edu.in/assets/folders/admission/gdcDRA-20221655964893/basit.jpg', NULL, '2022', '1655577000', '1656095400', 1, 1, 1, 'no', NULL),
(36, 'gdc122220231678127199', NULL, NULL, NULL, NULL, NULL, '122222222', NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, '2022', '1655577000', '1656095400', 0, 0, 0, 'no', NULL),
(37, 'gdc233520231691043547', 'SALMAN SHAFI', 'MOHMAD SHAFI WANI ', 'LOWER MUNDAH CHANG00 ANANTNAG JAMMU & KASHMIR - 192212  ', '9103200524', 'RAJAAZUU@GMAIL.COM', '233511140613', NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, '2022', '1655577000', '1656095400', 1, 0, 0, 'no', NULL),
(38, 'gdc776820231694960353', NULL, NULL, NULL, NULL, NULL, '7768DRA20222', NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, '2022', '1655577000', '1656095400', 0, 0, 0, 'no', NULL),
(39, 'gdc776820231694960449', NULL, NULL, NULL, NULL, NULL, '7768DRA2022', NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, '2022', '1655577000', '1656095400', 0, 0, 0, 'no', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `alumni_tb`
--

CREATE TABLE `alumni_tb` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `userfile` varchar(255) DEFAULT NULL,
  `description` mediumtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `aqar_tb`
--

CREATE TABLE `aqar_tb` (
  `id` int(11) NOT NULL,
  `title` mediumtext NOT NULL,
  `userfile` varchar(254) NOT NULL,
  `upload_date` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `aqar_tb`
--

INSERT INTO `aqar_tb` (`id`, `title`, `userfile`, `upload_date`, `link`) VALUES
(2, 'AQAR-2018-2019', '2018-2019.pdf', '1648903568', ''),
(3, 'AQAR 2019-2020', 'AQAR-2019-2020.pdf', '1648903602', ''),
(4, 'AQAR-2020-2021', 'AQAR-2021.pdf', '1652775469', ''),
(5, 'AQAR 2021-2022', '23016.pdf', '1690804225', '');

-- --------------------------------------------------------

--
-- Table structure for table `certificates_tb`
--

CREATE TABLE `certificates_tb` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `userfile` varchar(255) DEFAULT NULL,
  `upload_date` varchar(255) DEFAULT NULL,
  `last_date` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `course_tb`
--

CREATE TABLE `course_tb` (
  `id` int(11) NOT NULL,
  `course_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `course_tb`
--

INSERT INTO `course_tb` (`id`, `course_name`) VALUES
(1, 'Bachelor Of Computer Application (BCA)'),
(2, 'humanities'),
(3, 'Bachelors In Commerce (B. Com)');

-- --------------------------------------------------------

--
-- Table structure for table `credentials_tb`
--

CREATE TABLE `credentials_tb` (
  `id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `credentials_tb`
--

INSERT INTO `credentials_tb` (`id`, `type`, `email`, `password`) VALUES
(1, 'Recovery', 'recovery.gdcdooru@gmail.com', '21dfa2943c3c16f3ee1765567955750ee0cf1bc88284abf7d4fa6efac9f01b31e0ec37b888d85fe03735df5b26e4c2012b1bceabfb0954c3ad84c3c7f8338642S2pfZzz4jgrAMY7ke8O7JRN0/fWoaLvoXKQ='),
(2, 'Admission', 'admission.gdcdooru@gmail.com', '6cc33a8b30a2115c7464d5d3242f1532dbda930b44f7885049675d3859b06e2eaccd71dd4959523f9b4568413897b64303a8b7787f2aec1c0696c68b3879f325UA7t06Bvwj5hgBIzNOsNgV9kllviPVphDkI='),
(3, 'Admin', 'admin@gdcdooru.edu.in', '8b03b4d3b082f3553b99946230e137afc041d2466de611394e2c61940cd82d4cbda7ee5992ec0d8c56dff66994a81ce510a60f7471c96d3c9e0c80a70a931e18HnTaFsb4AO1jydXRI7QywIiIAoAMjTJ6rbvv');

-- --------------------------------------------------------

--
-- Table structure for table `datesheet_tb`
--

CREATE TABLE `datesheet_tb` (
  `id` int(11) NOT NULL,
  `userfile` mediumtext DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `body` mediumtext DEFAULT NULL,
  `copy_to` mediumtext DEFAULT NULL,
  `signature` varchar(255) DEFAULT NULL,
  `upload_date` varchar(255) DEFAULT NULL,
  `last_date` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dept_faculty_tb`
--

CREATE TABLE `dept_faculty_tb` (
  `id` int(11) NOT NULL,
  `employee_id` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `userfile` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `specialization` varchar(255) DEFAULT NULL,
  `description` mediumtext DEFAULT NULL,
  `cv` varchar(255) NOT NULL,
  `create_date` varchar(255) DEFAULT NULL,
  `dept_id` int(11) NOT NULL,
  `faculty` varchar(255) NOT NULL,
  `faculty_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `dept_faculty_tb`
--

INSERT INTO `dept_faculty_tb` (`id`, `employee_id`, `name`, `userfile`, `email`, `phone`, `designation`, `specialization`, `description`, `cv`, `create_date`, `dept_id`, `faculty`, `faculty_id`) VALUES
(19, 'DORHED00010014', 'Prof. Feroze Ahmad Khandy', 'chairperson.jpg', 'commerce.gdcdooru@gmail.com', '7889434581', 'chairperson', 'Corporate Finance', '', '', '1596865293', 0, 'commerce', 10),
(21, 'DORHED00010002', 'Prof. Bilal Ahmad Pandit', 'chairperson.jpg', 'panditbilal@gmail.com', '8491817258', 'chairperson', 'Medieval Indian History , Archeology and Architecture', '<p>The department of History was established with the establishment of College in 2005, the department has progressed in these years as hundreds of pass outs with history back ground are working in various govt. departments, many are doing M.phil and P.hd in renowned universities of Country. The curriculum of department is framed in such a manner that students get knowledge about regional and national history like ancient, mediaeval and modern period. Recently through CBCS skill courses were introduced and students engaged themselves with such courses. The department has almost 330 enrollment during this year in various semesters both in generic elective and skill courses.</p>\r\n\r\n<hr>\r\n<p><strong>Prof. Bilal Ahmad Pandit</strong></p>\r\n\r\n<p>Chairperson</p>\r\n', '', '1597128598', 0, 'social_science', 11),
(25, '123456789', 'Dr. Zahid Maqbool', 'zahid1.png', 'zahidcomp@gmail.com', '7006579916', 'Assistant Professor', 'Game Theory, Reinforcement Learning', NULL, '', '1636351414', 1, 'computer_sciences', 8),
(26, '001', 'Suhail Ahmad Shah (Gold Medalist)', 'IMG_20210215_213320_3771.jpg', 'shahsuhail19@gmail.com', '7006755124', 'Assistant Professor', NULL, NULL, '', '1629707227', 2, 'computer_sciences', 8),
(27, '002', 'Suhail Ahmad Shah (Gold Medalist)', 'IMG_20210215_213320_3772.jpg', 'shahsuhail19@gmail.com', '7006755124', 'Assistant Professor', NULL, NULL, '', '1629707381', 1, 'computer_sciences', 8),
(28, 'DORHED00010003', 'Prof Suhail Ahmad Shah', 'Suhail.jpg', 'shahsuhail19@gmail.com', '7006755124', 'chairperson', 'Computer  Science', '<p><p><p><p><p>Today we find that information technology has become overwhelmingly pervasive, while its parent, computing science, has become correspondingly hard to find. While many CS educational institutions have shifted focus from core CS and become specialty providers for the IT industry, or else please permit me to say these mass producers of vocationally trained personnel, a few institutions continue to emphasis the pristine science underlying the diverse aspects of computing. This is the single most important attribute of the education offered here. Our department has remained true to the vision on which it was founded.</p> <p>There are several ways to present the canonical core of computer science. Over the years we have developed a distinct style and method that bridges the theory - practice divide while remaining grounded in the core. Technology changes rapidly, especially in the field of computing, whereas the science, if it changes at all, does so much more gradually. Our understanding is that persons who are clear and thorough about the fundamentals can adapt to rapid changes in technology relatively easily. We want the education imparted to our students to be the basis of a life time of learning.</p> <p>Our Department has produced hundreds of professionals and has established a name for itself in the country and abroad. They have consistently excelled in the highly competitive industrial environment, Best Employer/ awards in top-ranking companies. I attribute this success to the winning combination of a dedicated faculty that works hard at imparting quality education, a well-planned syllabus and last but not least, our students.</p> <p>Learning is a continuous process and does not end with the acquisition of a degree, especially because steady and rapid advances in computing technologies shorten the life of tools and techniques prevalent today. Therefore we do not aim to make our students walking manuals of any language or package. Instead, they are given a strong foundation in computer science and problem-solving techniques, and are made adaptable to changes.</p> <p>We believe that this approach to teaching-learning, coupled with practical experience gained during Industrial Training in reputed organizations, equips our students to handle the challenges posed by the software industry. I am confident that you will find our students worthy of your organization.</p> <hr> <p><strong>Prof. Suhail Ahmad Shah</strong></p> <p>HOD of Computer Science</p></p></p></p></p>\r\n', '', '1636352368', 0, 'computer_sciences', 8),
(30, '1111222333', 'Prof. Arif Nisar', 'IMG_20210215_213320_377.jpg', 'arifamu4@gmail.com', '9958591475', 'Assistant Professor', 'Poetry, Drama, Theory & Criticism and Kashmiri Folklore', NULL, '', '1652940041', 6, 'humanities', 7),
(31, '234446667', 'Dr. Kaisar Hussain Shah', 'Screenshot_(9).png', 'shahkaiser@gmail.com', '33333333333', 'Lecturar', NULL, NULL, '', '1640873059', 2, 'computer_sciences', 8),
(32, '111221111', 'Ms. Zeeshan', 'Screenshot_(9)1.png', 'zeeshan@gmail.com', '6', 'Lecturar', NULL, NULL, '', '1640873179', 2, 'computer_sciences', 8),
(33, '31641346', 'Dr. Hilal Ahmad Shah', 'hilal1.jpeg', 'shahhilal27@gmail.com', '6005706671', 'chairperson', 'Nazm, Marsiyah', '<p><p><p>Welcome to Government Degree College Dooru, Faculty of Humanities. I am pleased to get connected to you and share my message this way.<br> <br> The Department has a rich curriculum and allied activities to provide a comprehensive education for B.Tech graduates. It prepares them to be technically well-off, to be critical thinkers, productive citizens, and leaders in a wide range of careers: government as well as an array of managerial options in the private sector. During their study, students complete rigorous programs of course work, participate in a variety of co-curricular programs.<br> <br> The Department correlates with six undergraduate programmes, namely Electronic and Communications Engineering, Computer Engineering, Electrical Engineering, Civil Engineering, Mechanical Engineering and Information Technology. The Department has adequate academic and teaching staff. The mission of the Department is to produce the top quality education and to conduct leading-edge programmes. To this end, we strive for excellence in teaching, training and career building.<br> <br> My sincere thanks to all the faculty members and the students who contribute so much to the success of the department.<br> <br> It remains a privilege to be head of the department with highly motivated and dedicated personnel, who are all prepared to go the extra mile.</p> <hr> <p><strong>Dr. Hilal Ahmad Shah</strong><br> Assistant Professor, Head, Department of Urdu</p></p></p>\r\n', '', '1640873860', 0, 'humanities', 7),
(34, '0', 'Prof. Suheel Ahmad Bhat', 'Screenshot_(9).png', 'bhatsuheel@gmail.com', '3', 'Assistant Professor', NULL, NULL, '', '1640874500', 4, 'commerce', 10);

-- --------------------------------------------------------

--
-- Table structure for table `dept_noticeboard_tb`
--

CREATE TABLE `dept_noticeboard_tb` (
  `id` int(11) NOT NULL,
  `notice_no` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `notice_body` mediumtext DEFAULT NULL,
  `faculty_id` int(11) DEFAULT NULL,
  `upload_date` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dept_tb`
--

CREATE TABLE `dept_tb` (
  `dept_id` int(11) NOT NULL,
  `dept_name` varchar(255) DEFAULT NULL,
  `url_name` varchar(255) DEFAULT NULL,
  `faculty_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `dept_tb`
--

INSERT INTO `dept_tb` (`dept_id`, `dept_name`, `url_name`, `faculty_id`) VALUES
(1, 'Bachelor of Computer Application', 'bachelor_of_computer_application', 8),
(2, 'Computer Application', 'computer_application', 8),
(3, 'Physical Education', 'physical_education', 7),
(4, 'Bachelor of Commerce', 'bachelor_of_business_administration', 10),
(5, 'Department of Urdu', 'department_of_urdu', 7),
(6, 'Department of English', 'department_of_english', 7);

-- --------------------------------------------------------

--
-- Table structure for table `developer_tb`
--

CREATE TABLE `developer_tb` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `about` mediumtext DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contact_no` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `developer_tb`
--

INSERT INTO `developer_tb` (`id`, `name`, `about`, `email`, `contact_no`) VALUES
(1, 'Zakir Ahmad Wani', 'Zakir Ahmad Wani is a proficient Web Developer renowned for his exceptional expertise and dedication to crafting innovative solutions. With a Bachelor\'s degree in Computer Applications (BCA) from this esteemed institution, he has amassed over five years of hands-on experience in software development, demonstrating a keen aptitude for problem-solving and a passion for creating efficient, user-centric solutions.\n\nHis contributions as a web developer to this college\'s website reflect his commitment to excellence, where his skills and technical acumen are manifested in the site\'s functionality and design. Wani\'s collaborative approach and knack for staying abreast of industry advancements have consistently led to the successful implementation of cutting-edge technologies.\n\nDriven by a fervent desire to contribute meaningfully to the digital landscape, Wani endeavors to create technological solutions that transcend conventional boundaries, aiming to make the digital realm more streamlined and accessible. His relentless pursuit of excellence and unwavering dedication to his craft make him a valuable asset in any technological endeavor.', 'wanizakir073@gmail.com', '9622765774');

-- --------------------------------------------------------

--
-- Table structure for table `events_tb`
--

CREATE TABLE `events_tb` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  `time` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `year` varchar(255) NOT NULL,
  `month` varchar(255) NOT NULL,
  `day` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `examination_tb`
--

CREATE TABLE `examination_tb` (
  `id` bigint(20) NOT NULL,
  `notice_body` mediumtext DEFAULT NULL,
  `last_date` varchar(255) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `notice_no` varchar(255) DEFAULT NULL,
  `upload_date` varchar(255) NOT NULL,
  `signature` varchar(255) DEFAULT NULL,
  `copy_to` varchar(255) DEFAULT NULL,
  `userfile` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `examination_tb`
--

INSERT INTO `examination_tb` (`id`, `notice_body`, `last_date`, `title`, `notice_no`, `upload_date`, `signature`, `copy_to`, `userfile`) VALUES
(4, '<p>The exam of computer application 1st Semester batch 2020 and backlog 1st semester will be taken online on 12th of Nov, 2020  (Thursday). Those students who haven&#39;t send their admit cards send it in the WhatsApp group of 1st semester examination controller by visiting this link <a href=\"https://chat.whatsapp.com/DbN6RGtGoRzJwvcU9ax38y\">Click Here</a></p>\r\n', '1605139200', 'Notice related to examination of computer application 1st semester (Regular and Backlog) batch 2020 ', 'Not_Defined', '1604833120', 'exam_sig.jpg', '', NULL),
(5, '<p>The evaluation status of BG 6th semester has been declared by university. All the students who have any discrepancy in relation to theory/practical/tutorial may contact the college authorities immediately. the discrepancy in relation to theory exams is related to either NA or * only. College doesn&#39;t have any authority in cases of student securing less marks. In case of Practical/Tutorial awards students are directed to contact their concerned subject teachers immediately [before 5th February 2022]</p>\r\n', '1643826600', 'Regarding Evaluation Status of BG 6th Semester', 'GDC Dooru/Examination/2022/02', '1643871317', 'exam_sig.jpg', '', NULL),
(6, NULL, '0', '', NULL, '', NULL, NULL, NULL),
(7, '<p>The evaluation status of BG Ist semester has been declared by university. All the students who have any discrepancy in relation to theory/practical/tutorial may contact the college authorities immediately. the discrepancy in relation to theory exams is related to either NA or * only. College doesn&#39;t have any authority in cases of student securing less marks. In case of Practical/Tutorial awards students are directed to contact their concerned subject teachers immediately 9th April 2022.</p>\r\n\r\n<p> </p>\r\n\r\n<p>The Link for Checking Evaluation status :-  https://egov.uok.edu.in/Evaluation/EvaluationMarksPractical.aspx</p>\r\n', '1649442600', 'Discrepancy in Evaluation Status of BG 1st Semester (Batch-2021)', 'GDCD/04/2022', '1649235764', 'exam_sig.jpg', '', NULL),
(8, NULL, '1654367400', 'Tutorial Examination-BCom 3rd Semester', NULL, '1652775132', NULL, NULL, 'Assignment_BCOM_-B_2020.pdf'),
(9, NULL, '1654194600', 'Date Sheet for Skill enhancement courses BG 3rd Semester, Batch -2020 and Backlog 2016-2019', NULL, '1653641785', NULL, NULL, '3rd_semester_(1).pdf'),
(10, NULL, '1654194600', 'Date Sheet for Skill enhancement courses BG 3rd Semester, Batch -2020 and Backlog 2016-2019', NULL, '1653647159', NULL, NULL, 'skill_datesheet.pdf'),
(11, NULL, '1654453800', 'Tutorial/Practical Date Sheet BG 3rd Semester (Batch 2020 & Backlog 2016-2019)', NULL, '1654257304', NULL, NULL, 'practical,_tutorial_datesheet_2020_(1).pdf'),
(12, NULL, '1654799400', 'Date Sheet for Skill Enhancement Courses (BG 3rd Semester ) Batch 2020 & Backlog 2016-2019', NULL, '1654257364', NULL, NULL, 'Skill_date_Sheet.pdf'),
(13, NULL, '1655663400', 'Date Sheet of Tutorial Examination UG 2nd Semester Batch-2021', NULL, '1655024452', NULL, NULL, 'date_sheet_2nd_sem_2021_batch.pdf'),
(14, NULL, '1655145000', 'Tutorial Examination B.Com 2nd Semester Batch-2021', NULL, '1655024612', NULL, NULL, 'Tutorial_Examination_2nd_Semester.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `exam_dir_tb`
--

CREATE TABLE `exam_dir_tb` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `number` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `designation` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `exam_dir_tb`
--

INSERT INTO `exam_dir_tb` (`id`, `name`, `number`, `email`, `designation`) VALUES
(1, 'Dr. Hilal Ahmad Wani', '9541876456', 'hilalahmadwani@gmail.com', 'Examination Incharge 1st-2nd Semester'),
(5, 'Mr. Zahid Maqbool', '7006579916', 'zahidcomp@gmail.com', 'Examination Incharge 3rd-4th Semester'),
(6, 'Mr. Suhail Ahmad Shah', '9797896749', 'shahsuhail19@gmail.com', 'Examination Incharge 5th-6th Semester');

-- --------------------------------------------------------

--
-- Table structure for table `faculty_info_tb`
--

CREATE TABLE `faculty_info_tb` (
  `info_id` int(11) NOT NULL,
  `about` mediumtext DEFAULT NULL,
  `c_number` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `faculty` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `faculty_info_tb`
--

INSERT INTO `faculty_info_tb` (`info_id`, `about`, `c_number`, `email`, `faculty`) VALUES
(1, '', '7006755124', 'cs@gdcdooru.edu.in', '8'),
(2, '<p><p>Humanities is a broad academic field under which students study various types of human interactions, using methods that are largely analytical, critical or exploratory. But Humanities Honor’s is an interdisciplinary major drawing from literature, foreign languages, history, philosophy, visual art and music along with a tactic for the study of cultural and intellectual history. Humanities contains something explicit to explore in itself. As it serves several disciplines where human beings and the society focus on different kinds of studies. Humanities is also referred to ‘Integrated Humanities’ which states this stream as the study of these<strong> humanities subjects</strong></p></p>\r\n', '6005706671', 'humanities@gdcdooru.com', '7'),
(3, '<p><p><p>I welcome you all to the Department of Commerce, Government Degree College Dooru.The Department of Commerce was established in 2016 to offer B.Com. Today Department of Commerce has evolved into a gateway to excellence. We convey the best quality Education and Training to students for shaping their careers for a sustainable corporate world. The Department of Commerce aims to provide academically efficient and professionally relevant teaching to the students to make them competant for higher studies and develop in them entrepreneurial and managerial skills to become responsible leaders on all fronts.<br> Our goal is to impart value-based education along with the development of positive attitude, better communication skills and abilities through training programs, Club Activities, Cultural & Sports Activities and proficiency of preparing Business Plan, raising of funds, becoming an entrepreneur to apply knowledge in order to meet the challenges of the future. The students are encouraged to get real life experience of the corporate world through Seminars, Conferences, internship with the reputed organization. They are also encouraged to take-up mini projects to supplement theoretical knowledge with practical experience as a part of their curriculum.<br>  </p> <p>With this brief introduction, I welcome you to be a part of our journey towards being centre of excellence in the field of commerce education.</p></p></p>\r\n', '+91-9797236808', 'commerce@gdcdooru.com', '10'),
(4, '<p>Faculty of Social Sciences</p>\r\n\r\n<p>In 1969, Faculty of Arts was bifurcated and Faculty of Social Science was created, with the Department of Economics, Education, History, Political Science, Sociology, Islamic Studies, West Asian Studies, Library & Information Science and Psychology attached to it. Department of Journalism and Mass Communication, Physical health & Sports Education, women&#39;s Studies and Centre for South African & Brazilian Studies were established later on. At present fourteen Departments/Centres and Interdisciplinary Centre for Development Studies are attached to the Faculty of Social Sciences. Proposal for establishing Department of Anthropology and Department of Population Studies has been forwarded to UGC.</p>\r\n\r\n<p>Many Departments under the Faculty have distinguished themselves nationally and internationally for high standard of teaching and research. Department of History since 1968 has been maintaining the status of Centre of Advanced Study and Research. Departments of Economics, Psychology, Sociology, Physical Health and sports Education have been awarded DRS I-SAP (Special Assistance Programme) by UGC, while Departments of Library & Information Science and Mass Communication have got major projects funded by the Department of Science and Technology, Government of India. Centre for West Asian Studies got UGC funding under the scheme of Innovative programme in Emerging areas. Department of Sociology & Social Work was offered grant by UNICEF. Faculty members are actively engaged in Research, organizing Conferences and Seminars are participating in national and international conferences. Seven Journals are being published by different Departments. An Interdisciplinary Journal of Social Science is going to be published by the Faculty of Social Sciences.</p>\r\n\r\n<p>Faculty of Social Science at present offering 08 undergraduate and 20 post graduate programmes in addition to several Diploma and Certificate Courses. Total number of students enrolled in the faculty are 2719, including under-graduate 1176, Post-graduate 1053 Research Scholars 490. Number of Foreign Students enrolled in different programmes is 96.</p>\r\n\r\n<p>The Faculty has the distinction of establishing \"Social Science Cyber Library\" one of the first of its kind in the world which is visited by thousands of scholars of about 150 countries across the globe.</p>\r\n\r\n<p>The Social Science faculty also has a Conference Hall equipped with latest digital technology, video-conferencing facility is available for seminars and lectures.</p>\r\n\r\n<hr>\r\n<p><strong>Prof. Bilal Ahmad Pandit</strong></p>\r\n\r\n<p>Chairperson</p>\r\n', '8491817258', 'panditbilal@gmail.com', '11');

-- --------------------------------------------------------

--
-- Table structure for table `faculty_tb`
--

CREATE TABLE `faculty_tb` (
  `id` int(11) NOT NULL,
  `faculty_name` varchar(255) DEFAULT NULL,
  `faculty_url` varchar(255) DEFAULT NULL,
  `create_date` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `faculty_tb`
--

INSERT INTO `faculty_tb` (`id`, `faculty_name`, `faculty_url`, `create_date`) VALUES
(7, 'Humanities', 'humanities', '1592761594'),
(8, 'Computer Sciences', 'computer_sciences', '1592761648'),
(9, 'Sciences', 'sciences', '1592761681'),
(10, 'Commerce', 'commerce', '1592761700'),
(11, 'Social Science', 'social_science', '1597127410');

-- --------------------------------------------------------

--
-- Table structure for table `feedback_tb`
--

CREATE TABLE `feedback_tb` (
  `id` int(11) NOT NULL,
  `name` tinytext DEFAULT NULL,
  `email` tinytext DEFAULT NULL,
  `send_date` tinytext NOT NULL,
  `teacher_name` tinytext NOT NULL,
  `subject_taught` tinytext NOT NULL,
  `semester` tinytext NOT NULL,
  `question1` tinytext NOT NULL,
  `answer1` tinytext NOT NULL,
  `question2` tinytext NOT NULL,
  `answer2` tinytext NOT NULL,
  `question3` tinytext NOT NULL,
  `answer3` tinytext NOT NULL,
  `question4` tinytext NOT NULL,
  `answer4` tinytext NOT NULL,
  `question5` tinytext NOT NULL,
  `answer5` tinytext NOT NULL,
  `question6` tinytext NOT NULL,
  `answer6` tinytext NOT NULL,
  `question7` tinytext NOT NULL,
  `answer7` tinytext NOT NULL,
  `question8` tinytext NOT NULL,
  `answer8` tinytext NOT NULL,
  `question9` tinytext NOT NULL,
  `answer9` tinytext NOT NULL,
  `question10` tinytext NOT NULL,
  `answer10` tinytext NOT NULL,
  `question11` tinytext NOT NULL,
  `answer11` tinytext NOT NULL,
  `question12` tinytext NOT NULL,
  `answer12` tinytext NOT NULL,
  `question13` tinytext NOT NULL,
  `answer13` tinytext NOT NULL,
  `question14` tinytext NOT NULL,
  `answer14` tinytext NOT NULL,
  `question15` tinytext NOT NULL,
  `answer15` tinytext NOT NULL,
  `question16` tinytext NOT NULL,
  `answer16` tinytext NOT NULL,
  `question17` tinytext NOT NULL,
  `answer17` tinytext NOT NULL,
  `multiple_choice_q1` tinytext NOT NULL,
  `multiple_choice_11` tinytext NOT NULL,
  `multiple_choice_12` tinytext NOT NULL,
  `multiple_choice_13` tinytext NOT NULL,
  `multiple_choice_14` tinytext NOT NULL,
  `multiple_choice_q2` tinytext NOT NULL,
  `multiple_choice_21` tinytext NOT NULL,
  `multiple_choice_22` tinytext NOT NULL,
  `multiple_choice_23` tinytext NOT NULL,
  `multiple_choice_24` tinytext NOT NULL,
  `multiple_choice_q3` tinytext NOT NULL,
  `multiple_choice_31` tinytext NOT NULL,
  `multiple_choice_32` tinytext NOT NULL,
  `multiple_choice_33` tinytext NOT NULL,
  `multiple_choice_34` tinytext NOT NULL,
  `multiple_choice_35` tinytext NOT NULL,
  `text_ans_1` tinytext NOT NULL,
  `text_ans_2` tinytext NOT NULL,
  `text_ans_3` tinytext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `feedback_tb`
--

INSERT INTO `feedback_tb` (`id`, `name`, `email`, `send_date`, `teacher_name`, `subject_taught`, `semester`, `question1`, `answer1`, `question2`, `answer2`, `question3`, `answer3`, `question4`, `answer4`, `question5`, `answer5`, `question6`, `answer6`, `question7`, `answer7`, `question8`, `answer8`, `question9`, `answer9`, `question10`, `answer10`, `question11`, `answer11`, `question12`, `answer12`, `question13`, `answer13`, `question14`, `answer14`, `question15`, `answer15`, `question16`, `answer16`, `question17`, `answer17`, `multiple_choice_q1`, `multiple_choice_11`, `multiple_choice_12`, `multiple_choice_13`, `multiple_choice_14`, `multiple_choice_q2`, `multiple_choice_21`, `multiple_choice_22`, `multiple_choice_23`, `multiple_choice_24`, `multiple_choice_q3`, `multiple_choice_31`, `multiple_choice_32`, `multiple_choice_33`, `multiple_choice_34`, `multiple_choice_35`, `text_ans_1`, `text_ans_2`, `text_ans_3`) VALUES
(1, 'Zunairah', 'zahidcomp@gmail.com', '1640700966', 'Zahid Maqbool', 'Data Structures', '6', 'Teacher is very knowledgeable', 'Excellent', 'Teacher conducts classes very regularly', 'Excellent', 'Teacher is enlightening', 'Excellent', 'Teacher is smooth and coherent', 'Excellent', 'Content of course is logically transacted/presented', 'Excellent', 'Important points are made clear in classrooms', 'Excellent', 'Teacher pays attention to improve students ability to analyze/solve problems', 'Excellent', 'Teacher uses examples comparing different theories and methods', 'Excellent', 'Teacher tries to make teaching interesting and avoid monotony', 'Excellent', 'Teacher gives references materials to help students grasp content better', 'Excellent', 'Teacher is concentrated and energetic inside the classroom', 'Excellent', 'Teacher has a good sense of responsibility', 'Excellent', 'Teacher is direct and academic, not just trying to be impressive', 'Excellent', 'Teacher is very confident', 'Excellent', 'Teacher is friendly to every student', 'Excellent', 'Teacher respects the student’s opinions', 'Excellent', 'Teacher encourages students to express their point of views', 'Excellent', 'From the teacher’s teaching', 'You have learned some pretty valuable things/concepts', 'You have improved your knowledge and ability in this field/subject', 'You have understood/learned what the teacher taught', 'You have enhanced your interest in this particular subject/area', 'The teacher, in addition to teaching, pays attention to', 'Education the students world outlook', 'Moral education', 'Good academic habits', 'Vocational guidance', 'The teacher, in addition to teaching, also', 'Cares about the students and gives sincere help when students are in trouble', 'Helps students to clarify the purpose of study', 'Strengthen their confidence in study, and help them to overcome difficulties', 'Is considerate and patient with students', 'Often gives students encouragement', 'daddff', 'fgg', 'excellent'),
(2, 'Dr Shah', 'drshah121@gmail.com', '1652768622', 'NA', 'NA', 'Select Semester', 'Teacher is very knowledgeable', '', 'Teacher conducts classes very regularly', '', 'Teacher is enlightening', '', 'Teacher is smooth and coherent', '', 'Content of course is logically transacted/presented', '', 'Important points are made clear in classrooms', '', 'Teacher pays attention to improve students ability to analyze/solve problems', '', 'Teacher uses examples comparing different theories and methods', '', 'Teacher tries to make teaching interesting and avoid monotony', '', 'Teacher gives references materials to help students grasp content better', '', 'Teacher is concentrated and energetic inside the classroom', '', 'Teacher has a good sense of responsibility', '', 'Teacher is direct and academic, not just trying to be impressive', '', 'Teacher is very confident', '', 'Teacher is friendly to every student', '', 'Teacher respects the student’s opinions', '', 'Teacher encourages students to express their point of views', '', 'From the teacher’s teaching', '', '', '', '', 'The teacher, in addition to teaching, pays attention to', '', '', '', '', 'The teacher, in addition to teaching, also', '', '', '', '', '', '', '', 'very poor website... details should have been more explicit..... full name is Dooru Shahabad...mentioning only half name on the official website speaks of your ignorance');

-- --------------------------------------------------------

--
-- Table structure for table `financial_aid_forms_tb`
--

CREATE TABLE `financial_aid_forms_tb` (
  `id` int(11) NOT NULL,
  `submit_date` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `parents_name` varchar(255) DEFAULT NULL,
  `residence` varchar(255) DEFAULT NULL,
  `contact_no` varchar(255) DEFAULT NULL,
  `semester` varchar(255) DEFAULT NULL,
  `roll_no` varchar(255) DEFAULT NULL,
  `reg_no` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `bank_account_number` varchar(255) DEFAULT NULL,
  `branch` varchar(255) DEFAULT NULL,
  `status` enum('not_accepted','accepted','rejected') NOT NULL DEFAULT 'not_accepted',
  `session` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `financial_aid_forms_tb`
--

INSERT INTO `financial_aid_forms_tb` (`id`, `submit_date`, `category`, `name`, `parents_name`, `residence`, `contact_no`, `semester`, `roll_no`, `reg_no`, `email`, `bank_account_number`, `branch`, `status`, `session`) VALUES
(1, '1609211414', 'BPL', 'Malik yasir fayaz', 'Fayaz ahmad malik', 'Baghwanpora verinag', '7006265785', 'semester_6', '1061', '5153-dra-2017', 'fletryasii@gmail.com', '0232041000001636', 'Verinag', 'not_accepted', '2020'),
(2, '1609211684', 'BPL', 'Ishtiaq Ahmed mir', 'Mohd Ashraf mir', 'Lamber Banihal', '9622095032', 'semester_5', '111', '5937-dra-2018', 'ishtiaqmir97@gmail.com', '0750041000000299', 'Jammu and Kashmir Bank', 'not_accepted', '2020'),
(152, '1640684828', 'ORPHAN', 'SHAZI JAN', 'GHULAM MOHI UD DIN SHEROO', 'KAPRAN', '6005530005', 'semester_2', '800', '7002-dra-2021', 'sherooishfaq96@gmail.com', '0232041000000871', 'VERINAG', 'not_accepted', '2021'),
(153, '1640685838', 'AAY', 'ROOMIE JAN', 'NAZEER AHMAD RATHER', 'CHOHAN KAPRAN', '9906612464', 'semester_2', '799', '7001-dra-2021', 'Abidrather29@gmail.com', '0232040800010675', 'VERINAG', 'not_accepted', '2021'),
(154, '1640687260', 'SPECIALLY ABLED(HANDICAPPED)', 'Shahid Ahmad thoker', 'Mohammad Amin Thoker', 'Halsidar', '9697820467', 'semester_2', '666', '7179-dra-2021', 'Sshahidahmadthoker@gmail.com', '0232040100002273', 'Verinag', 'not_accepted', '2021'),
(155, '1640748823', 'PHH', 'Mohammad Idris Malik', 'Mushtaq Ahmad Malik', 'Mataygund', '8492097938', 'semester_3', '2104', '6817_dra_2020', 'malikidrees626@gmail.com', '0455040800004496', 'Toll post Lower munda', 'not_accepted', '2021'),
(156, '1640749019', 'PHH', 'Mohammad Idris Malik', 'Mushtaq Ahmad Malik', 'Mataygund', '8492097938', 'semester_3', '2104', '6817-dra-2020', 'malikidrees626@gmail.com', '0455040800004496', 'Toll post Lower munda', 'not_accepted', '2021'),
(157, '1640755907', 'AAY', 'SHIESTA JAN', 'MOHAMMAD YOUSUF RATHER', 'NOWPORA DOORU', '6005468521', 'semester_3', '2088', '6783-dra-2020', 'shiestayousuf@gmail.com', '0837041000000011', 'SHANKERPORA ', 'not_accepted', '2021'),
(158, '1640765532', 'AAY', 'Nida Fayaz', 'S/O Fayaz Ahmad Bhat', 'Batagund Verinag', '6006651414', 'semester_4', '187', '6426-dra-2019', 'bhatnadeem426@gmail.com', '0232040150002569', 'Verinag', 'not_accepted', '2021'),
(159, '1640768524', 'BPL', 'Rahil Hussain Naik', 'Manzoor Ahmad Naik', 'Batagund verinag', '9149927651', 'semester_4', '186', '6425-dra-2019', 'rahilnaik70@gmail.com', '0232041000000086', 'Verinag', 'not_accepted', '2021'),
(160, '1640768543', 'ORPHAN/AAY', 'Junaid ul islam', 'Late Ab.Gani.Ganie', 'Kreeri shahabad', '6006410580', 'semester_4', '194', '6419-dra-2019', 'Junaidulislam5236@gmail.com', '0044041000000490', 'Doru Shahabad', 'not_accepted', '2021'),
(161, '1641184569', 'AAY', 'Faizaan Ashraf', 'Mohammad Ashraf Beig', 'Hiller Shahabad', '9906088553', 'semester_2', '273', '7324-dra-2021', 'beighfaizaan56@gmail.com', '0455040800004660', 'Tollpost Lowermunda', 'not_accepted', '2022'),
(162, '1641377034', 'Phh', 'UBAID ALI SHAPOO', 'Ali Mohammad shapoo', 'Hiller shahabad', '7006697843', 'semester_2', '673', '7186_dra_2021', 'khawajaubaid93@gmail.com', '0455040150000148', 'Toll post Hiller shahabad', 'not_accepted', '2022'),
(163, '1641404874', 'Orphan', 'Farhan rashid bhat', 'Ab rashid bhat ', 'Hiller shahbaad', '9622809082', 'semester_2', '473', '6923-dra-2021', 'Farhanbhat854@gmail.com', '004404100000304', 'DOOROO', 'not_accepted', '2022'),
(164, '1641993922', 'APL', 'Mohammad Omar Malik', 'Ghulam Mohammad Malik', 'Oui Bamdoora', '7051832980', 'semester_2', '276', '7327-dra-2021', 'omarmalik834@gmail.com', '0158041000002057', 'Peertakiya', 'not_accepted', '2022');

-- --------------------------------------------------------

--
-- Table structure for table `financial_form_status_tb`
--

CREATE TABLE `financial_form_status_tb` (
  `id` int(11) NOT NULL,
  `status` enum('disable','enable') DEFAULT 'disable'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `financial_form_status_tb`
--

INSERT INTO `financial_form_status_tb` (`id`, `status`) VALUES
(1, 'enable');

-- --------------------------------------------------------

--
-- Table structure for table `forms_tb`
--

CREATE TABLE `forms_tb` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `userfile` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `upload_date` varchar(255) DEFAULT NULL,
  `last_date` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `forms_tb`
--

INSERT INTO `forms_tb` (`id`, `title`, `userfile`, `link`, `upload_date`, `last_date`) VALUES
(2, 'Financial Aid Form 2020-2021', 'faf.pdf', '', '1609420949', '1610735400'),
(3, 'Application form for Financial Aid ', 'Financial_AID23.pdf', 'https://gdcdooru.edu.in/', '1678861619', '1679423400');

-- --------------------------------------------------------

--
-- Table structure for table `gallery_tb`
--

CREATE TABLE `gallery_tb` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `userfile` varchar(255) DEFAULT NULL,
  `upload_date` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `gallery_tb`
--

INSERT INTO `gallery_tb` (`id`, `title`, `userfile`, `upload_date`) VALUES
(4, '', 'IMG-20190715-WA0014jpg_0.jpg', '1606058650'),
(5, '', 'IMG-20190715-WA0012jpg_0.jpg', '1606059010'),
(6, '', 'IMG-20190715-WA0011jpg_0.jpg', '1606059112'),
(7, '', 'IMG-20190715-WA0010jpg_0.jpg', '1606059122'),
(8, '', 'IMG-20190715-WA0009jpg_0.jpg', '1606059136'),
(9, '', 'IMG-20190715-WA0008jpg_0.jpg', '1606059167'),
(10, '', 'IMG-20190715-WA0007jpg_0.jpg', '1606059251'),
(11, '', 'IMG-20190715-WA0006jpg_0.jpg', '1606059273'),
(12, '', 'IMG-20190715-WA0005jpg_0.jpg', '1606059296'),
(13, '', 'IMG-20190715-WA0003jpg_0.jpg', '1606059322'),
(14, '', 'IMG-20190715-WA0000jpg_0.jpg', '1606059338'),
(15, '', 'IMG-20190714-WA0013jpg_0.jpg', '1606059348'),
(16, '', 'IMG-20190714-WA0012jpg_0.jpg', '1606059359'),
(17, '', 'IMG-20190714-WA0011jpg_0.jpg', '1606059370'),
(18, '', 'IMG-20190714-WA0008jpg_0.jpg', '1606059386'),
(19, '', 'IMG-20190714-WA0009jpg_0.jpg', '1606059400'),
(20, '', 'IMG-20190714-WA0007jpg_0.jpg', '1606059439'),
(21, '', 'IMG-20190714-WA0005jpg_0.jpg', '1606059456'),
(22, '', 'IMG-20190714-WA0004jpg_0.jpg', '1606059472'),
(24, '', 'dustbin.jpeg', '1640243264'),
(25, 'Organogram of the Institution', 'oraginastional_structure.jpeg', '1648110019');

-- --------------------------------------------------------

--
-- Table structure for table `greivance_tb`
--

CREATE TABLE `greivance_tb` (
  `id` int(11) NOT NULL,
  `f_name` varchar(255) DEFAULT NULL,
  `l_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `date_of_incident` varchar(255) DEFAULT NULL,
  `incident_location` varchar(255) DEFAULT NULL,
  `details` mediumtext DEFAULT NULL,
  `outcome` mediumtext DEFAULT NULL,
  `sent_date` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `greivance_tb`
--

INSERT INTO `greivance_tb` (`id`, `f_name`, `l_name`, `email`, `date_of_incident`, `incident_location`, `details`, `outcome`, `sent_date`) VALUES
(2, 'SUHAIB ', 'HAMID', 'suhaibhamid9@gmail.com', '1648665000', 'Larkipora to Dooru road vehicle Non-availability', 'Subject: Application for availability of bus service in our area. \r\n\r\nRespected Sir/Madam,\r\n\r\nThis is to inform you that we are the students of your esteemed college of Larkipora area. \r\nWe are writing this letter as a request for availing the college bus service/transport facility. We are residents of Larkipora, Shankerpora, Chakpath, area. We used to commute through public transport daily, but somehow that is not possible due to non availability of TATA BUSES in our route (as sumos/teveras are charging us highly fare charges and are being found fully seated at college time so we always get late to attend college). \r\nNow we request your goodself to provide us college bus service. We will fill up all the necessary form required and we will even pay the genuine  fees required. Please issue us the college bus service on our route. \r\nYours Sincerely\r\nSTUDENTS OF GDC DORU', 'Hope our problem will be solved', '1648736148'),
(3, 'Zeenat', 'Ara', 'muzammil9906@gmail.com', '1655663400', 'GDC DOORU', 'Sir, we the students desirous of taking admission in ist sem are facing a lot of difficulties in submitting the registration form... Also, there is mismatching in ABC id card.. Also, your college\'s online link for submitting the online registration form is not working.. We are in a depressed state..... The college authorities behaviour is also not good... Instead of making us aware about the new education policy, they make us to wait for 2 or 3 hrs in queue.. Kindly look into the matter.. ', 'Pre admission counselling', '1655779159');

-- --------------------------------------------------------

--
-- Table structure for table `iqac_activity_tb`
--

CREATE TABLE `iqac_activity_tb` (
  `id` int(11) NOT NULL,
  `title` mediumtext NOT NULL,
  `userfile` varchar(255) NOT NULL,
  `upload_date` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `iqac_activity_tb`
--

INSERT INTO `iqac_activity_tb` (`id`, `title`, `userfile`, `upload_date`, `link`) VALUES
(3, 'Report of Activities during -2021', 'LIST_ACTIVITIES_DURING-2021.pdf', '1649237137', ''),
(4, 'Skill Courses organized  during -2021', 'skill_courses-2021.pdf', '1649316846', '');

-- --------------------------------------------------------

--
-- Table structure for table `iqac_meeting_tb`
--

CREATE TABLE `iqac_meeting_tb` (
  `id` int(11) NOT NULL,
  `title` mediumtext NOT NULL,
  `userfile` varchar(255) NOT NULL,
  `upload_date` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `iqac_meeting_tb`
--

INSERT INTO `iqac_meeting_tb` (`id`, `title`, `userfile`, `upload_date`, `link`) VALUES
(1, 'IQAC-Meetings-2021', 'm-1_merged.pdf', '1648867436', ''),
(2, 'IQAC Meetings-2022', 'iqac-mom-22.pdf', '1690362673', '');

-- --------------------------------------------------------

--
-- Table structure for table `latest_news_tb`
--

CREATE TABLE `latest_news_tb` (
  `id` int(11) NOT NULL,
  `upload_date` varchar(255) DEFAULT NULL,
  `latest_news` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `naac_important_links_tb`
--

CREATE TABLE `naac_important_links_tb` (
  `id` int(11) NOT NULL,
  `title` mediumtext NOT NULL,
  `userfile` varchar(255) NOT NULL,
  `upload_date` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `naac_important_links_tb`
--

INSERT INTO `naac_important_links_tb` (`id`, `title`, `userfile`, `upload_date`, `link`) VALUES
(1, 'Institutional Best Practices', 'Best-Practices-Dooru-18-19.pdf', '1624866035', ''),
(2, 'Institutional Distinctiveness', 'Institutional_Distinctiveness_GDC_Dooru.pdf', '1626253193', ''),
(3, 'Student Satisfaction Survey Report', 'Student-Satisfaction-Survey-Dooru.pdf', '1627113317', ''),
(5, 'AQAR Links-2021 ', 'LINKS_FOR_AQAR_(2).pdf', '1648867799', ''),
(6, 'ICT Learning GDC Dooru 2022', 'ictgdcd2022.pdf', '1684909617', ''),
(7, '3 Tier Feedback GDC Dooru Notice 2022', 'feedback_order_(1).pdf', '1684909747', ''),
(8, 'Mechanism of internal assessment GDC Dooru 2022 ', 'internal_assesment_2022.pdf', '1684909984', ''),
(9, 'Programme Outcomes GDCDooru 2022', 'PO_GDCD2022.pdf', '1684910127', ''),
(10, 'Campus Gender Equity GDC Dooru 2022', 'gender_equity_gdcd2022.pdf', '1684910797', ''),
(11, 'Academic & Support facilities GDC Dooru 2022', 'nn_merged.pdf', '1684912328', ''),
(12, 'Institutional Development Plan GDC Dooru', 'IDp.pdf', '1684922849', ''),
(13, 'Activity Calendar GDC Dooru 2022', 'Ac2022.pdf', '1684990689', ''),
(14, 'Best Practices GDC Dooru 2022', 'bp_gdc_dooru2022.pdf', '1684990804', ''),
(15, 'Mechanism of E-Governance GDC Dooru', 'E-Governance.pdf', '1684993626', ''),
(16, 'Mechanism of Waste Management GDC Dooru 2022', 'waste_management.pdf', '1684993844', ''),
(20, 'Student Satisfaction Survey Report GDC Dooru 2022', 'SSS_Report_2022.pdf', '1684996880', ''),
(21, 'Financial Planning GDC Dooru 2022', 'FP_GDC_Dooru.pdf', '1685004907', ''),
(22, 'College Financial Aid-2022', 'Financial_Aid_22.pdf', '1685006190', ''),
(23, 'NSP-2022', 'NSP_2223.pdf', '1685006228', ''),
(24, 'Feedback Data of 3 tier system of  GDC Dooru', 'Feedback_data_2022_gdc_dooru.pdf', '1690277233', ''),
(25, 'Strategic Plan -2022', 'Stategic_plan.pdf', '1690358046', ''),
(26, 'Gender Sensitization Plan -2022', 'Gen-Plan-22.pdf', '1690359726', ''),
(27, 'NSS-22', 'nss-22.pdf', '1690362630', ''),
(28, 'Debate and Seminar Programmes-2022', 'Prog-2022.pdf', '1690364202', ''),
(29, 'Methodology of Teaching', 'PdfScanner_1904135301_compressed_(1).pdf', '1690509315', ''),
(30, 'Curriculum Delivery -Well Planned Process', '1_1_1.pdf', '1690521911', ''),
(31, 'Mechanism to address Internal Examination related grievances ', '23016_24_1682488157.pdf', '1690531556', '');

-- --------------------------------------------------------

--
-- Table structure for table `naac_members_tb`
--

CREATE TABLE `naac_members_tb` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `designation` varchar(255) NOT NULL,
  `email` varchar(254) NOT NULL,
  `phone` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nirf_tb`
--

CREATE TABLE `nirf_tb` (
  `id` bigint(20) NOT NULL,
  `report_no` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `report_body` longtext DEFAULT NULL,
  `upload_date` varchar(255) DEFAULT NULL,
  `last_date` varchar(255) NOT NULL,
  `signature` varchar(255) DEFAULT NULL,
  `faculty_id` int(11) DEFAULT NULL,
  `copy_to` varchar(255) DEFAULT NULL,
  `userfile` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `noticeboard_tb`
--

CREATE TABLE `noticeboard_tb` (
  `id` bigint(20) NOT NULL,
  `notice_no` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `notice_body` longtext DEFAULT NULL,
  `upload_date` varchar(255) DEFAULT NULL,
  `last_date` varchar(255) NOT NULL,
  `signature` varchar(255) DEFAULT NULL,
  `faculty_id` int(11) DEFAULT NULL,
  `copy_to` varchar(255) DEFAULT NULL,
  `userfile` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `noticeboard_tb`
--

INSERT INTO `noticeboard_tb` (`id`, `notice_no`, `title`, `notice_body`, `upload_date`, `last_date`, `signature`, `faculty_id`, `copy_to`, `userfile`) VALUES
(7, '', 'Academic Calendar 2018-19', NULL, '1604815185', '1606694400', NULL, NULL, NULL, 'Academic_Calander.pdf'),
(8, '', 'Datesheet for viva-voice of 1st semester, dept of education, batch 2020 & backlog 2016, 2017, 2018, 2019.', NULL, '1605092511', '1605657600', NULL, NULL, NULL, 'Department_Of_Education.pdf'),
(9, '', 'Google classroom codes, department of history, nov-2020 onwards.', NULL, '1609415591', '1610130600', NULL, NULL, NULL, 'his_classroom.pdf'),
(11, '', 'College financial aid application is available here...', NULL, '1609415506', '1610735400', NULL, NULL, NULL, 'FINANCIAL_AID_APPLICATION_GDC_DOORU.pdf'),
(12, '', 'Notice related to college financial aid', NULL, '1614099765', '1610735400', NULL, NULL, NULL, 'FIN__AID_NOTICE.pdf'),
(13, '', 'List of students shortlisted for the first round of certificate based industrial skill training on Web Designing to be held in GDC Dooru Starting 24/02/2021', NULL, '1615529103', '1615660200', NULL, NULL, NULL, 'NIELIT.pdf'),
(14, '', 'Program outcomes, program specific outcomes and course outcomes for all programs offered by the institution', NULL, '1623314694', '1529346600', NULL, NULL, NULL, 'ProgramcourseOutcomes.pdf'),
(15, '', 'Notice Regarding re-opening of the college library', NULL, '1623662884', '1623609000', NULL, NULL, NULL, 'Library.pdf'),
(18, '', 'Notification for Online Examination of 3rd Semester Sociology(Regular, Fresh Private & Backlog Batches) July 2021', NULL, '1625152162', '1625077800', NULL, NULL, NULL, 'Exm_Not_2021.pdf'),
(19, '', 'Department of Commerce, Govt Degree College Dooru, Anantnag, J&K is Organizing a webinar in collaboration with Securities and Exchange Board of India (SEBI). For registration click the link below:\r\n\r\nhttps://forms.gle/Ev65M85T8htTVDU2A\r\n', NULL, '1625410819', '1625337000', NULL, NULL, NULL, 'wb.pdf'),
(20, '', 'One Day Webinar on National Helpline for Senior Citizens on 17-07-2021', NULL, '1626369297', '1626460200', NULL, NULL, NULL, 'Webinar_on_Elderly.pdf'),
(21, '', 'Re-Examination of 3rd Sem (Sociology) papers Backlog & Regular(batches 2016-2019)', NULL, '1626441565', '1626719400', NULL, NULL, NULL, 'Re-Exm_Not_2021.pdf'),
(23, '', 'Notice regarding  applications under Post- Matric Scholarship Schemes belonging to Schedule Caste (SC), Backward Classes, (OBCs), Economically Backward Classes (EBCs), Physically Challenged students, (PCPs), De-Notified Nomadic &amp; Semi Nomadic tribes', NULL, '1627117122', '1627237800', NULL, NULL, NULL, 'schalorship_gdc_dooru.pdf'),
(24, '', 'Notice For Webinar on BASICS OF CAPITAL MARKET (07-08-2021)', NULL, '1627805577', '1628274600', NULL, NULL, NULL, 'CDSL_IPFFF.pdf'),
(25, '', 'Celebrating Cyber Jagrookta diwas \"Mass Awareness Program on Cyber-security\"', NULL, '1638718987', '1636914600', NULL, NULL, NULL, 'cyberJagrookta.pdf'),
(26, '', 'Workshop on food processing', NULL, '1638719925', '1633545000', NULL, NULL, NULL, 'REPORT-KVK_WORKSHOP-PDF.pdf'),
(27, '', 'Report on workshop on life skill held at GDC Dooru', NULL, '1638720536', '1636655400', NULL, NULL, NULL, 'LIFE_SKIILS_WORKSHOP_REPORT(getlua_com).pdf'),
(28, '', 'Career Counselling and Guidance cell organizes workshop on \"How to crack UPSC PCS exams\" in collaboration with Chanakya Academy', NULL, '1638721224', '1632681000', NULL, NULL, NULL, 'IAS.pdf'),
(29, '', 'Talk on Cyber-warfare: Anatomy of some famous Cyber-Attacks', NULL, '1639155847', '1639074600', NULL, NULL, NULL, 'CyberJag2.pdf'),
(30, '', 'One day intra college seminar on \" Women Empowerment and Gender Inequality in kashmir\"', NULL, '1639500729', '0', NULL, NULL, NULL, 'Gender.pdf'),
(31, '', 'Notification for Tutorials 4th Sem SEC Course Sociology 2021', NULL, '1639582795', '1639938600', NULL, NULL, NULL, 'Tutorial_Notice_4th_sem_2021.pdf'),
(33, '', 'Feedback Form for GDC Dooru for the year 2020-2021 For Students, Teachers, Parents,  and Alumni.', '<p>kindly fill college feedback using this link: https://forms.gle/2PkYLpXDFUSwBnrf9</p>\r\n', '1639992695', '1640889000', '', NULL, '', NULL),
(34, 'DCD/123', 'Submission of Project Report/dessertation 6th Sem 2021 (Dept of Computer Applications)', '<p><p>This is to inform the students of BCA 6th Semester (Batch 2018)  that the last day for submission of their project reports/dessertation is 25th of December, 2021</p></p>\r\n', '1639993210', '1639938600', '', NULL, '', NULL),
(35, '', 'Student Satisfaction Survey Report for the year 2021-22', NULL, '1640153457', '1640111400', NULL, NULL, NULL, 'Government_Degree_College_Dooru,_Student_Satisfaction_Survey_for_academic_year_2021-22.pdf'),
(36, '', 'Report on Gender Sensitization ', NULL, '1640238784', '1640197800', NULL, NULL, NULL, 'gender.pdf'),
(37, '', 'Facilities for women in the college', NULL, '1640241009', '1640197800', NULL, NULL, NULL, 'Specific_facility_for_women.pdf'),
(38, '1234', 'Use of color coded dustbin', '<p>Students as well as faculty are advised to use color coded dustbin for segregation of waste materials</p>\r\n', '1640243144', '1640197800', 'principal_sig.jpg', NULL, '', NULL),
(39, '7888', 'Ban on use of polythene', '<p>The  Collge advisory committee has recommended for a blanket ban on the use of polythene inside the campus. Hence it is impressed on all the stake holders of this institution to adhere to the recommendation and prohibit from using polythene products inside the campus</p>\r\n', '1640244689', '1615573800', 'principal_sig.jpg', NULL, '', NULL),
(40, '', 'Report on Cyber-Jagrookta Diwas', NULL, '1640270340', '1637605800', NULL, NULL, NULL, 'GDC_Dooru_Organizes_CyberJgrookta_diwas.pdf'),
(41, '', 'Code of conduct for students and teachers ', NULL, '1640586779', '1640543400', NULL, NULL, NULL, '7_1_10-WPS_Office(1).pdf'),
(42, '', 'Applications are invited for College Financial Aid 2021-22', NULL, '1640590010', '1640543400', NULL, NULL, NULL, 'financialAid.pdf'),
(43, '', 'Staff Position as on 2021', NULL, '1640845290', '1640802600', NULL, NULL, NULL, 'Staff-Position_as_-2021.pdf'),
(44, '', 'Last date for submission of project reports by BCA 6th Semester is 27th December 2021', NULL, '1640873259', '1640111400', 'computer_sciences.jpg', 8, NULL, 'BCAProject.pdf'),
(45, 'BCA/2/2021', 'Re-examination of internals', '<p>This  is for the information of BCA4th Semester students who failed the internal exams of Algorithms course in first attemp they can reappear in the said examination on 3rd of January 2022</p>\r\n', '1640873423', '1640629800', 'computer_sciences.jpg', 8, '', NULL),
(46, '', 'Placement Drive for Graduate/Graduating Students', '<p><p>Goventment Degree College Dooru is affiliated with BFSI. BFSI is providing placement services to GDC Dooru. In this regard all the graduating/graduate students are informed to apply for the following post.</p> <p><strong>Designation: Customer Relationship Executive</strong></p> <p><strong>Educational Qualification:Any  Bachelors or Masters</strong></p> <p><strong>Register here: </strong><a href=\"https://forms.gle/1gux5v5BA3PUtwu18\">https://forms.gle/1gux5v5BA3PUtwu18</a></p></p>\r\n', '1641871671', '1641839400', 'principal_sig.jpg', NULL, '', NULL),
(47, '', 'Online Quiz on Cyber-Security as part of \"Cyber Jagrookta Diwas\"', NULL, '1641920898', '1641839400', NULL, NULL, NULL, 'Cyber_Quiz.pdf'),
(49, 'Computer-Sciences/01/22', 'Report on Cyber-security Quiz', '<p><strong>                     GDC Dooru Organizes online Quiz on Cyber-security as part of “Cyber Jaagrookta Diwas”</strong></p>\r\n\r\n<p>Under patronage of the worthy Principal Dr Mehnaz Sheikh, Department of Computer Sciences organized an online quiz on “Cyber-security” to mark the celebrations of Cyber Jaagrookta Diwas on 13th January, 2022. Students from prominent colleges of south Kashmir participated in this quiz. The theme of the quiz was based on four areas of security viz web-security, physical-security, phishing and ransomware. Seventy four per cent of the participants were undergrads while 26% participants were graduate students with varied educational backgrounds.  First three positions were secured by students of Government Degree College Dooru, with Mohammad Umar Malik securing 95%, Tashifa Hassan of BCA 4th Semester securing 90% and Majid Manzoor Thoker securing 90%. Performance certificates were emailed to the toppers.</p>\r\n\r\n<p> </p>\r\n\r\n<p>Dr. Zahid Maqbool </p>\r\n\r\n<p>Assistant Professor, Computer Sciences</p>\r\n', '1642070305', '1642012200', '', NULL, '', NULL),
(50, '', 'Articles are invited for college magzine', '<p>Articles in Urdu English and kashmiri are invited for college magzine. Last date for the same is 25-01-2022</p>\r\n', '1642427512', '1643049000', '', 7, '', NULL),
(51, '', 'Program and course outcomes', NULL, '1642677486', '1642617000', NULL, NULL, NULL, 'PO-CO-converted.pdf'),
(52, '', 'Data submitted to National Institutional Ranking Framework 2022 (NIRF-2022) Overall category  ', NULL, '1643791886', '1643740200', NULL, NULL, NULL, 'Govt__Degree_College20220202-NIRF.pdf'),
(53, '', 'Data Submitted to NIRF-2022 College Category', NULL, '1643792032', '1643740200', NULL, NULL, NULL, 'Govt__Degree_College20220202-NIRF_College.pdf'),
(54, 'examination/2022', 'Regarding Evaluation Status of BG 6th Semester', '<p>The evaluation status of BG 6th semester has been declared by university. All the students who have any discrepancy in relation to theory/practical/tutorial may contact the college authorities immediately. the discrepancy in relation to theory exams is related to either NA or * only. College doesn&#39;t have any authority in cases of student securing less marks. In case of Practical/Tutorial awards students are directed to contact their concerned subject teachers immediately [before 5th February 2022]</p>\r\n', '1643871255', '1643826600', 'exam_sig.jpg', NULL, '', NULL),
(55, 'CyberJagrukta/2022/02', 'Press release: Security of Mobile and Web Applications as part of Cyber Jagrukta', '<p><p><strong>     GDC Dooru Organizes Online Inter-College Quiz Competition on “Security of Mobile and Web Applications”</strong></p> <p>Under the banner of <strong>Azadi ka Amrit Mahotsav</strong> and patronage of the worthy Principal, <strong>Prof. (Dr.) Mehnaz Sheikh, </strong>the Department of <strong>Computer Science, GDC Dooru Anantnag </strong>organized <strong>Online Inter-College Quiz Competition</strong> on “<strong>Security of Mobile and Web Applications</strong>” for college students as on today 10-02-2022 to commemorate <strong>Cyber Jaagrookta Program</strong>. Out of eighty two (82) registered participants from various colleges of the UT of Jammu and Kashmir, only thirty nine (39) participants were able to submit their responses on time. There were many participants who secured same scores making it difficult to declare the first three positions and it was the criteria of <strong>‘time of submission’</strong> that was used to declare the position holder among the competitors. The first position was secured by Ms. Mehnoor Manzoor, student of BG 3rd Semester, Government College for Women, Nawakadal Srinagar, Kashmir whereas Ms. Falak Jan, 4th Semester student of Government College for Women, Nawakadal Srinagar, Kashmir secured the second position. Mr. Umais Bashir, 4th Semester student of Government Degree College Kokernag, Anantnag secured the third position. The top three position holders were rewarded with Certificate of Merit. The organizers of the event congratulate all the position holders as well as other competitors who showed their keen interest to participate in the competition.</p> <p><strong> Sd/- </strong></p> <p><strong> Dr. Zahid Maqbool</strong></p> <p><strong>(Coordinator, Cyber-Jagrukta Program)</strong></p></p>\r\n', '1644637591', '1644604200', '', NULL, '', NULL),
(56, '', 'Time table for 2nd and 3rd semesters with effect from 15th of February 2022', NULL, '1644993682', '1644863400', NULL, NULL, NULL, 'Timetable_w_e_f_15th_February_2022.pdf'),
(57, '', 'Instructions regarding commencement of offline classes ', NULL, '1644994587', '1644949800', NULL, NULL, NULL, 'instructions.pdf'),
(58, '', ' Activity calendar for the year 2021', NULL, '1645089927', '1645036200', NULL, NULL, NULL, 'Activity_calendar-2021.pdf'),
(59, '', 'Special coaching for PG entrance exams ', NULL, '1645518155', '1645468200', NULL, NULL, NULL, 'CCC-PG_Coaching-2022.pdf'),
(60, '', 'Circular regarding Golden Cards', NULL, '1646212986', '1646159400', NULL, NULL, NULL, 'Golden_Card_circular.pdf'),
(62, 'DCD/22/pressnote/925', 'Report on National Science Day 2022', '<p><strong>Faculty of Sciences</strong>, Government Degree College Dooru, Anantnag organized a  seminar on <strong>National Science Day 2022</strong> with the theme <strong>\"Integrated Approach in Science and technology for a Sustainable Future\"</strong>. A total of 50 participants  participated in this seminar.The  event started with a welcome note presented by Prof. G H Bhat, in his welcome note Prof Bhat discussed the role of science and technology in the current academic scenarios. Next, Prof M A Najar delibrated on the importance and history of National Science Day. Futhermore, Prof. Tauseef Ah Parray stressed on the need to develop a proper scientific temper among the students. Dr. Latief Ah Dar Discussed the relevance of science in the areas of social sciences. Dr. Zahid Maqbool elaborated on the technology aspects and how technology helps in making the day to day life easy. In addition to this Dr. Zahid emphasized that  technology is crucial in meeting the goals of sustainable development especially in the areas of social, economic, or environmental development. At the end Prof. Abdul Basit Reshi who anchored the event aslo presented the vote of thanks. </p>\r\n', '1646460680', '1645986600', 'principal_sig.jpg', NULL, '', NULL),
(63, '', 'Counselling and coaching schedule for PG entrance exams ', NULL, '1646569555', '1646505000', NULL, NULL, NULL, 'TT_PG_Ent(2).pdf'),
(64, '', 'Seminar on \"Data  Security Mechanisms\" as part of Cyber Jagrookta Program', NULL, '1646843839', '1646591400', NULL, NULL, NULL, 'Cyber_march2022.pdf'),
(65, '', 'Report on Cyber Jagrookta event for the month of March 2022 ', NULL, '1646844035', '1646764200', NULL, NULL, NULL, 'Press_Release_Data-Security-Mechanisms.pdf'),
(66, '', 'Strategic Plan -2021', NULL, '1648109807', '0', NULL, NULL, NULL, 'INSTITUTIONAL_DEVELOPMENT_PLAN_(1)_(1).pdf'),
(67, '', 'College News Letter-2021', NULL, '1649235177', '1649183400', NULL, NULL, NULL, 'nl_2021_(1).pdf'),
(68, 'GDCD-05-2022', 'Admission Notification (Under Choice Based Credit System Semester Scheme) for Under-Graduate 5th& 6thSemester of Batch 2019 (Regular)', '<p><br>\r\nAll the concerned students  are informed that the College has Initiated the Admission process in UG 5th and 6th Semester, w.e.f 18-03-2022 are informed to cantact the admission committee for completion of Admission formulaties.</p>\r\n\r\n<p><strong>The College Admission Commitee will facilitate and counsell the students for admission formulaties from 18-03-2022 to 11-04-2022 on the following terms and conditions</strong>:<br>\r\ni. All the candidates of B.A/B.Sc/B.Com/BCA/BBA/BMMC/OCMIL/FAZILA (3rd and 4th Sem) Batch 2019 shall be eligible for<br>\r\nadmission.The candidates of Batch 2018 & previous batches including erstwhile Annual scheme students of (2nd year), who have notsought admission in 5th& 6th Semester scheme yet are also eligible for admission.<br>\r\nii. The candidates of Batch 2019 (only) seeking admission in 5th& 6th Semester shall visit the Information Cell of the College<br>\r\nconcerned for Enrolment Sheet and do not need to download any Admission form.However, the candidates of Batch 2018 & previous batches including Annual Scheme, seeking admission in 5th& 6th Semester, shall have to submit the Online Admission Form available on the University Website. In case of any discrepancy related to online form submission, the candidate shall visit the Information Cell of the College (with all Original documents) in which he/she intends to seek admission. The said form will be available on the University website (www.kashmiruniversity.net).<br>\r\niii. The candidates have to submit the Enrolment Sheet (Batch 2019)/downloaded Admission form (Batch 2018 & previous<br>\r\nbatches) for 5th& 6th semesters in the college concerned with a specific subject combination as per syllabus in vogue.<br>\r\niv. The College, making use of the unique Form No.s printed on the Form shall accept the new form on the University on-line<br>\r\nportal.<br>\r\nv. The College shall assign the subjects online as mentioned by the candidate in Enrolment Sheet/ Admission form.<br>\r\nvi. For (a) Confirmation of subjects (assigned online by the College) and<br>\r\n(b) Submission of requisite fee. The candidate is required to check MyFormStatus page (available on University Website www.kashmiruniversity.net) by entering his/her University Registration No.<br>\r\nvii. The candidate needs to confirm the subjects (assigned online by the College) on MyFormStatus page, strictly prior to the<br>\r\npayment of fee.<br>\r\nviii. If the subjects shown on the MyFormStatus page are not as per the choice of candidate, he/she shall immediately visit<br>\r\nCollege Information Cell for subject correction within stipulated time (before Fee Receipt generation).<br>\r\nix. After online Subject confirmation & Fee payment (online through payment gateway) by the candidate on MyFormStatus<br>\r\nPage, no subject changes whatsoever shall be allowed.<br>\r\nx. Afterwards, the candidate shall opt the mode of Fee Payment as available.<br>\r\nxi. The fee payment through Receipt Mode can be deposited at any Finacle Branch of J&K Bank.<br>\r\nxii. The candidates have to submit requisite admission and examination fee for 5th& 6thSemester as per fee structure in vogue.<br>\r\nxiii. It shall be incumbent upon all the candidates admitted to the course, to attend classes regularly as their attendance shall<br>\r\nbe counted with effect from the date of start of class work.<br>\r\n </p>\r\n\r\n<p>Admission Convenor<br>\r\n </p>\r\n', '1649661529', '1649615400', 'admission_sig.jpg', NULL, '', NULL),
(70, '', 'Academic Monitoring ', NULL, '1649749398', '1670783400', NULL, NULL, NULL, 'New_Doc_2022-04-12_12_16_22.pdf'),
(71, 'Cyber/4/22', 'Cyber-Jagrookta Diwas April 2022', '<p><p><p><p><p><strong>                                                                     PRESS RELEASE</strong><strong>         </strong></p> <p><strong>GDC Dooru Organizes Inter-College Quiz Competition on “Security of Online Financial Transactions”</strong></p> <p>Under the banner of <strong>Azadi ka Amrit Mahotsav</strong>, the Cyber Jaagrookta Cell Government Degree College Dooru Anatnag in collaboration with, Cyber Jaagrookta Cell GDC Kokernag Anantnag organized <strong>Online Inter-College Quiz Competition on “Security of Online Financial Transactions”</strong> from 1:00 p.m. to 1:15 p.m. to mark the celebrations of <strong>Cyber Jaagrookta Diwas </strong>on 13th April, 2022. Out of four hundred twenty two (422) registered participants, only seventy three (73) appeared in the quiz competition and submitted the responses on time. </p> <p>The quiz competition was topped by Ms. Tabinda Zaffar Rahman, student of Islamia College of Science and Commerce Srinagar. It was difficult to declare the 2nd and 3rd positions as there were 3 students who obtained the same scores. However,  highest score and time of submission was used as a criteria to decide the rank of position holders. Thus, Mr. Majid Manzoor Thoker and Seerat Nissar from GDC Dooru Anantnag secured 2nd and 3rd position respectively. The organizers of the event congratulate all the position holders as well as other participants who participated in the competition.</p> <p> </p> Dr. Zahid Maqbool<hr>Nodal Officer (CJC)</p></p></p></p>\r\n', '1650096199', '1650047400', '', NULL, '', NULL),
(72, '', 'Commencement of class work -UG 5th Semester', '<p> Since the admission process of UG 5th and 6th Semester Batch-2020 is culminated. The classes for 5th Semester are commencing from 25th April 2022. As such all the concerned students are informed to attend classes regularly w.e.f 25th of April 2022. Students with less the 75% attendance in due course will not be allowed to appear in the examination.</p>\r\n\r\n<p> </p>\r\n\r\n<p> </p>\r\n\r\n<p>                  Convener</p>\r\n\r\n<p>Academic Monitoring Committee                                         </p>\r\n', '1650698174', '1650825000', '', NULL, '', NULL),
(73, '', 'Commencement of Classwork UG 5th Semester', NULL, '1650698254', '1650825000', NULL, NULL, NULL, 'class_work.pdf'),
(74, '', 'Academic Calender-2022', NULL, '1653141249', '1672425000', NULL, NULL, NULL, 'Academic_calendar.pdf'),
(76, '', 'Date Sheet for Skill enhancement courses BG 3rd Semester, Batch -2020 and Backlog 2016-2019', NULL, '1653647127', '1654194600', NULL, NULL, NULL, 'skill_datesheet.pdf'),
(77, '05/22', 'CyberJagrookta May 2022', '<p><strong>Department of Computer Sciences GDC Dooru Anantnag organized Awareness Programme on “Data Breach/Security” in Collaboration with Debates and Seminars Committee GDC Kokernag</strong></p>\r\n\r\n<p> </p>\r\n\r\n<p><strong>PRESS RELEASE</strong></p>\r\n\r\n<p> </p>\r\n\r\n<p>            Department of Computer Sciences GDC Dooru Collaborated with Debates and Seminars Commite GDC Kokernag and  organized an <strong>Awareness Programme on “Data Breach/Security” </strong>to mark the celebrations of Cyber Jaagrookta Diwas on<strong> 26th May, 2022</strong>. The purpose of the event was to sensitize the volunteers and other participants regarding how to protect themselves from internet related cyber crimes especially issues related to data breach and data security.</p>\r\n\r\n<p> </p>\r\n\r\n<p><img xss=removed> <img k=\" style=\"> <img xss=removed></p>\r\n\r\n<p> </p>\r\n\r\n<p>The event was moderated by Programme Officer of GC Kokernag Dr. Fayaz Ahmad Bhat. The event began with welcome address presented by Prof. Gulzar Ahmad Mir (Associate Professor, Department of Chemistry) followed by Key Note Address by Prof. Nazir Ahmad Wani (Associate Professor and Head, Department of Chemistry). Prof. Nazir highlighted the theme of the event and set the platform for further deliberations. He also introduced the invited resource person to the audience.</p>\r\n\r\n<p>The invited resource person Dr. Zahid Maqbool (Assistant Professor, GDC Dooru Anantnag) started his presentation with concept of data security and data breach. He enlightened the audience with the magnitude of this cyber crime with the help of example of Pegasus, Aadhar and tech companies such as Adobe etc. He also sensitized the audience how to protect themselves from such cyber crimes by making use of encryption algorithms, backing up the data, password protection, and authentication mechanisms such as biometric detection. He answered the queries raised by faculty and students to their level of satisfaction.</p>\r\n\r\n<p>The event concluded with vote of thanks present by Staff Secretary Dr. Sabzar Ahmad in which he thanked the resource person and participants for their cooperation to make the event a success.</p>\r\n\r\n<p> </p>\r\n\r\n<p>Sd/</p>\r\n\r\n<p>Prof Suhail Ah. Shah</p>\r\n\r\n<p>Head, Department of Computer Sciences</p>\r\n', '1654332173', '1654281000', '', NULL, '', NULL),
(78, '', 'Department of Psychology: Notice Regarding Practical/Tutorial Work BG 2nd Semester (Batch-2021)', NULL, '1654757333', '1655145000', NULL, NULL, NULL, 'Department_of_Psychology.pdf'),
(80, '', 'webinar on \"Investment Awareness Programme\" on 13/06/2022', NULL, '1655195835', '1655058600', NULL, NULL, NULL, 'webinar_com2022.pdf'),
(81, '', 'Commencement of Class work BG 3rd Semester Batch-2021', NULL, '1655197221', '1655317800', NULL, NULL, NULL, '3rd_sem_class_work.pdf'),
(82, '', 'Noice for Field visits etc', NULL, '1655361622', '1655317800', NULL, NULL, NULL, 'Academic_Monitoring_Committee_docx-teaching_Learning.pdf'),
(83, '', 'Commencement of BG 4th Semester Class work -(Batch-2020)', NULL, '1655540695', '1655490600', NULL, NULL, NULL, 'New_Doc_2022-06-18_10_51_14.pdf'),
(86, '', 'Science and Innovation Fair ', NULL, '1655712887', '1655663400', NULL, NULL, NULL, 'INNOVATION_(2).pdf'),
(87, '', 'Campus Recruitment at  GDC Dooru  by SBI Life 2022', NULL, '1656319739', '1656527400', NULL, NULL, NULL, 'R1.pdf'),
(88, '', 'Intra college painting competition', NULL, '1659175518', '0', NULL, NULL, NULL, 'Default_Folder.pdf'),
(89, '', 'Report on intra-college painting competition', NULL, '1659458650', '0', NULL, NULL, NULL, 'Painting_competition_report-1.pdf'),
(90, '', 'Notice regarding ban on cell phones within campus', NULL, '1659519416', '0', NULL, NULL, NULL, 'CamScanner_08-03-2022_15_02.pdf'),
(91, '', 'Report on Essay Competition', NULL, '1663582406', '1663525800', NULL, NULL, NULL, 'Essay_Report_CA.pdf'),
(92, '', 'Report on collage making competition', NULL, '1663582440', '1663525800', NULL, NULL, NULL, 'Default_Folder_(1).pdf'),
(93, '', 'Attendance shortage list (Psychology 6th sem session 2022)_', NULL, '1664446207', '1664476200', NULL, NULL, NULL, 'New_Doc_2022-09-29_14_19_35.pdf'),
(94, '', 'Report on Nasha Mukht Bharat Abhiyaan on the theme \"Selection of trained peer volunteers/ Brand Ambassadors\" for spreading the message. ', NULL, '1664530077', '0', NULL, NULL, NULL, 'Report_on_Nasha_Mukht_Bharat_Abhiyaan.pdf'),
(95, '', 'Shortage of Attendance BG- 1st Semester (Department of Psychology)', NULL, '1664633549', '1664562600', NULL, NULL, NULL, 'New_Doc_2022-10-01_19_39_16.pdf'),
(96, '', 'Notice regarding financial aid', NULL, '1678867104', '1679509800', NULL, NULL, NULL, 'financialAid1.pdf'),
(97, '', 'Application form for Financial Aid', NULL, '1678866983', '1679423400', NULL, NULL, NULL, 'Financial_AID23.pdf'),
(98, '', 'National De-Addiction Helpline Number', NULL, '1682674196', '0', NULL, NULL, NULL, 'Helpline_number.pdf'),
(99, '', 'Instructions regarding 3 Tier Feedback System', NULL, '1683883494', '0', NULL, NULL, NULL, 'Three_Tier_Feedback.pdf'),
(100, '', ' NIRCF Data-2022', NULL, '1684305602', '1684261800', NULL, NULL, NULL, 'ilovepdf_merged_(1).pdf'),
(101, '', 'Notification regarding BCA&CA 5th, 6th semester students', NULL, '1687165509', '0', NULL, NULL, NULL, 'BCA_CA_2023.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `notification_alert_tb`
--

CREATE TABLE `notification_alert_tb` (
  `id` int(11) NOT NULL,
  `notification` varchar(255) NOT NULL,
  `status` enum('unchecked','checked') NOT NULL DEFAULT 'unchecked',
  `upload_date` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `notification_alert_tb`
--

INSERT INTO `notification_alert_tb` (`id`, `notification`, `status`, `upload_date`) VALUES
(60, 'Humanities department has logged in.', 'checked', '1640871268'),
(61, 'Humanities has added  Department of Urdu department on 30th December,2021 at 07:06 pm', 'checked', '1640871393'),
(62, 'Humanities has added  Department of English department on 30th December,2021 at 07:27 pm', 'checked', '1640872648'),
(63, 'Computer Sciences department has logged in.', 'checked', '1640873004'),
(64, 'Computer Sciences has uploaded a notice on 30th December,2021 at 07:43 pm', 'checked', '1640873620'),
(65, 'Humanities department has logged in.', 'checked', '1640873820'),
(66, 'Commerce department has logged in.', 'checked', '1640874469'),
(67, 'Humanities department has logged in.', 'checked', '1640874687'),
(68, 'Humanities department has logged in.', 'checked', '1640876884'),
(69, 'Humanities department has logged in.', 'checked', '1640884555'),
(70, 'Humanities department has logged in.', 'checked', '1642426567'),
(71, 'Humanities has uploaded a notice on 17th January,2022 at 07:25 pm', 'checked', '1642427726'),
(72, 'You have a new complaint from suhaibhamid9@gmail.com. Check out full details in grievance section.', 'checked', '1648736344'),
(73, 'You have a new feedback from drshah121@gmail.com. Check out full details in feedback section.', 'checked', '1652768857'),
(74, 'Humanities department has logged in.', 'checked', '1652940012'),
(75, 'Debates And Seminars Committee account holder  has logged in.', 'checked', '1652941138'),
(76, 'You have a new complaint from muzammil9906@gmail.com. Check out full details in grievance section.', 'checked', '1655779629');

-- --------------------------------------------------------

--
-- Table structure for table `principal_tb`
--

CREATE TABLE `principal_tb` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `userfile` varchar(255) DEFAULT NULL,
  `message` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `principal_tb`
--

INSERT INTO `principal_tb` (`id`, `name`, `email`, `phone_number`, `userfile`, `message`) VALUES
(5, 'Dr. Gh Hassan Thakur', 'principal@gdcdooru.edu.in', '01932 214 873', 'IMG-20220519-WA00001.jpg', '<p><p><p><p><p><p><strong>Dear Parents and Students,</strong></p> <p>It is with great pleasure that I welcome you to our college website.</p> <p>As Principal I am hugely impressed by the commitment of the college faculty and the staff to the provision of an excellent all-round education for our students in our state of the art facilities. As a team working together, we strongly promote academic achievement among our students. The cultural, sporting and other successes of all of our students and staff are also proudly celebrated together.</p> <p>GDC Dooru is an emerging innovative college drawing on the talents and skills of staff, students and parents to provide a host of educational programmes and projects. Wholesome participation is encouraged in the extensive range of extra-curricular activities on offer and care is also taken to ensure the well-being and happiness of each and every student in the college.</p> <p>With a rewarding history of achievement in education behind us, our college community continues to move forward together with confidence, pride and enthusiasm.</p> <p>I hope you enjoy your visit to the website and should you wish to contact us, please find details at the contact page.</p> <p>Yours in Education,</p> <hr> <p><strong>Dr Gh Hassan Thakur</strong></p></p></p></p></p></p>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `results_tb`
--

CREATE TABLE `results_tb` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `link` mediumtext DEFAULT NULL,
  `upload_date` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `scholarship_latest_update_tb`
--

CREATE TABLE `scholarship_latest_update_tb` (
  `id` int(11) NOT NULL,
  `latest_update` mediumtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `scholarship_latest_update_tb`
--

INSERT INTO `scholarship_latest_update_tb` (`id`, `latest_update`) VALUES
(2, 'Applications are invited for College Financial Aid 2021-22');

-- --------------------------------------------------------

--
-- Table structure for table `scholarship_notice_tb`
--

CREATE TABLE `scholarship_notice_tb` (
  `id` int(11) NOT NULL,
  `notice_no` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `notice_body` mediumtext DEFAULT NULL,
  `upload_date` varchar(255) DEFAULT NULL,
  `last_date` varchar(255) DEFAULT NULL,
  `signature` varchar(255) DEFAULT NULL,
  `copy_to` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `scholarship_notice_tb`
--

INSERT INTO `scholarship_notice_tb` (`id`, `notice_no`, `title`, `notice_body`, `upload_date`, `last_date`, `signature`, `copy_to`) VALUES
(7, 'Scholarship/1/2021', 'College Financial Aid Form', '<p><p>College Financial Aid Committee is inviting applications for financial aid 2021-22. kindly click the link below to fill the forms  https://gdcdooru.edu.in/p/scholarship_form</p></p>\r\n', '1640670707', '1642271400', 'scholarship.jpg', '');

-- --------------------------------------------------------

--
-- Table structure for table `scholarship_profile_tb`
--

CREATE TABLE `scholarship_profile_tb` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contact` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `scholarship_profile_tb`
--

INSERT INTO `scholarship_profile_tb` (`id`, `name`, `email`, `contact`) VALUES
(2, 'Prof. Bilal Ahmad Pandit', 'scholarship@gdcdooru.edu.in', '7687687687');

-- --------------------------------------------------------

--
-- Table structure for table `services_tb`
--

CREATE TABLE `services_tb` (
  `id` int(11) NOT NULL,
  `service_name` varchar(255) NOT NULL,
  `service_url` varchar(255) NOT NULL,
  `create_date` varchar(255) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `c_number` varchar(255) NOT NULL,
  `userfile` varchar(255) DEFAULT NULL,
  `signature` varchar(255) NOT NULL,
  `about` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `services_tb`
--

INSERT INTO `services_tb` (`id`, `service_name`, `service_url`, `create_date`, `user_name`, `email`, `c_number`, `userfile`, `signature`, `about`) VALUES
(2, 'National Service Scheme', 'national_service_scheme', '1593949527', 'Dr. Fayaz Ahmad Bhat', 'nss@gdcdooru.com', '9622765774', 'chairperson3.png', 'national_service_scheme_sig.jpg', '<p>National Service Scheme is basically an educational extension scheme from campus to community implemented by the students utilising their leisure time while they are studying in educational institutions. That means, education through community service and community service through education. The students of college and +2 both from village and slum constitute the majority of the population of the country and there is a general belief that these students may easily be misguided by the anti- social elements and as a result a tendency of separatism or alienation grows in their minds. To guide the students in a right way, to instill the idea of selfless social or community service in particular and the nation in general, NSS was introduced in the educational institutions of the country. In implementing the scheme NSS student volunteers have to make an attempt to break the barriers between education institutions and the villages. Or we may say that today’s students are the future of the country, the real policy makers and that is why an attempt has been made through NSS to introduce the real situation faced by the country in which we are living so that in future the student days’ experience will help them to formulate a concrete useful practical policy for the country.</p>\r\n\r\n<p>The broad objectives of National Service Scheme are 1. To understand the community in which they live, 2. To understand themselves in relation to their community 3. To identify the needs and problems in the solution of which they can be involved 4. To develop among themselves a sense of social and civic responsibilities 5. To apply their education in finding practical solutions to individual and community problems 6. To develop competence required for group living and sharing responsibilities, 7. To gain skills in mobilizing community participation 8. To acquire leadership qualities and democratic attitude 9. To develop capacity to meet emergencies and natural disasters 10. To practice national integration. The Motto of National Service Scheme : ‘NOT ME BUT YOU&#39; is the Motto or watch word of NSS. ‘NOT ME BUT YOU &#39; expresses the essence of democratic living and upholds the need for selfless service and appreciation of the other man&#39;s point of view and also to show consideration for fellow human beings. In a society the welfare of an individual is ultimately dependent on the welfare of the society as a whole. Therefore, the NSS volunteers should always be prepared to demonstrate this motto in their day-to-day activities.</p>\r\n'),
(4, 'College Transport and Excursion', 'college_transport_and_excursion', '1594041686', 'Prof. Bilal Ahmad Pandit', 'panditbilal@gmail.com', '8491817258', 'chairperson.jpg', 'transport_sig.jpg', '<p>Transport committee plays an important role in college as our college has a 42 seater bus, the same is utilised for ferrying students to various institutions to take part in sports events/ quiz programs etc. </p>\r\n\r\n<p>As Subject Tours are part of curriculum, the designated departments organize tours for their students to various places pertaining to their field of interest. The committee plays important role in making arrangements and also communication between heads of various institutes where students desire to visit.</p>\r\n'),
(8, 'College Canteen and Protocol Committee', 'college_canteen_and_protocol_committee', '1596702291', 'Prof. Bilal Ahmad Pandit', 'panditbilal@gmail.com', '8491817258', 'chairperson.jpg', 'college_canteen_and_protocol_committee_sig.jpg', '<p>The protocol committee is most vibrant committee of any educational institutional. Arrangements for participants during Seminars/ conferences/ debates are made by protocol committee.</p>\r\n'),
(10, 'Career Counselling and Guidance Cell', 'career_counselling_and_guidance_cell', '1596707528', 'Dr. Muzafar Jan', 'muzijan@gmail.com', '8725025222', 'chairperson1.jpg', 'career_counselling_and_guidance_cell_sig.jpg', '<p>One of the policy decisions in the UGC XIth Plan provides for establishing Career Counseling and Guidance Cell (CCGC) in Colleges/Universities. The main objective is to provide the students with latest information and updates about future directions. The CCGC is also aimed at to expose students in the development of marketable skills, communication ability to challenge the rigors of competitive exams or vocational courses.</p>\r\n\r\n<p>The CCGC GDC-D is set up with an objective to provide educational counselling and guidance to undergraduate students in their career planning and provides information that helps students to give directions to give their aspirations and interests. CCGC consists of counselling committee and functions with the coordination of all faculty members as guides and alumni student coordination.</p>\r\n\r\n<p>Students are guided by an efficient team of counsellors, who help students in choosing subjects among various streams at the entry level. The students are exposed to various national international competitive exams, scholarships and level of job placement in various career options. The CCGC will also focus on areas of communication skills, personality development.</p>\r\n'),
(11, 'College Research and Innovation Cell', 'college_research_and_innovation_cell', '1596708232', 'Dr. Muzafar Jan', 'muzijan@gmail.com', '8725025222', 'chairperson1.jpg', 'college_research_and_innovation_cell_sig.jpg', '<p><strong><strong>Year of establishment 2020.</strong></strong></p>\r\n\r\n<p>The College Research and Innovation Cell (CRIC) has been opened with an objective to cultivate research and innovation culture. The RIC also aims at to help interdisplinary research among faculties within GDC-D as well as help in the establishment of collaborations within intra-colleges, college-Universities within J & K and other national universities and Institutions both government and corporates, to meet the immediate needs of students and faculties. RIC in further is committed towards ensuring a creative atmosphere for our students and faculty to take up such activities in emerging areas of Research and Development. This nurtures an environment that promotes creativity and scholarship. The core lies in innovation and that comes from new ideas that very often emanate from proper guidance and collaborative initiatives. In addition, RIC is planning to involve the Institute faculty at GDC-D and enrolled students to undertake research projects in the thriving areas modern research.</p>\r\n\r\n<p>Students are encouraged to share their creative and innovative ideas with RIC for further support and guidance.</p>\r\n'),
(12, 'College Financial Aid Cell', 'college_financial_aid_cell', '1596708649', 'Dr. Zahid Maqbool', 'muzijan@gmail.com', '8725025222', 'chairperson.jpg', 'college_financial_aid_cell_sig.jpg', '<p>Many of our students belong to weaker sections of the society who face various kinds of hinderances to smoothly pursue their education. The Student Financial Aid Cell (SFAC) at GDC-D works closely in coordination with various national and state government initiatives to help such students to complete their studies. It is an incentive as well as encouragement for students who are talented but do not have the means to study further. The SFAC assists guides students in various types of scholarship offered to students both at national and state level. Of the various types of scholarships such as merit-based, need-based, student-specific, career-specific and college-specific, the SFAC at GDC-D notifies, prepares guidelines, helps in the submission of applications and keeps in track the outcomes. SFAC ensures maximum participation. In addition to various government initiatives the SFAC itself provides college financial aid to shortlisted students every year.</p>\r\n\r\n<p><strong>The list of various national and state level fellowships includes:</strong></p>\r\n\r\n<ol>\r\n <li>National Scholarship Scheme</li>\r\n <li>Post Matric Scholarship</li>\r\n <li>Scholarship for meritorious students</li>\r\n <li>Scholarship to SC candidates</li>\r\n <li>Scholarship to ST candidates</li>\r\n <li>Scholarship for OBC students</li>\r\n <li>Scheme for Minority Religion Candidates (Muslim, Jain, Sikh, Parsi, Christian)</li>\r\n <li>Special Scholarship Scheme for J and K students</li>\r\n <li>GDC-D financial aid</li>\r\n</ol>\r\n'),
(19, 'Debates and Seminars Committee', 'debates_and_seminars_committee', '1652938990', 'Prof. Arif Nisar', '', '', NULL, 'debates_and_seminars_committee_sig.jpg', '');

-- --------------------------------------------------------

--
-- Table structure for table `service_events_tb`
--

CREATE TABLE `service_events_tb` (
  `id` int(11) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `event_date` varchar(255) DEFAULT NULL,
  `event_time` varchar(255) DEFAULT NULL,
  `service_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `service_events_tb`
--

INSERT INTO `service_events_tb` (`id`, `description`, `event_date`, `event_time`, `service_id`) VALUES
(4, 'Psychological cum career counselling cell Government Degree College Dooru Anantnag is going to organize national level webinar on 27th of Nov, 2020 on \" Adverse effects of Covid-19 Pandemic on Education Sector\".', '1606415400', '1606037400', 10);

-- --------------------------------------------------------

--
-- Table structure for table `service_members_tb`
--

CREATE TABLE `service_members_tb` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `designation` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `service_notice_tb`
--

CREATE TABLE `service_notice_tb` (
  `id` int(11) NOT NULL,
  `service_url` varchar(255) DEFAULT NULL,
  `notice_no` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `notice_body` mediumtext DEFAULT NULL,
  `upload_date` varchar(255) DEFAULT NULL,
  `last_date` varchar(255) DEFAULT NULL,
  `signature` varchar(255) DEFAULT NULL,
  `copy_to` mediumtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `service_notice_tb`
--

INSERT INTO `service_notice_tb` (`id`, `service_url`, `notice_no`, `title`, `notice_body`, `upload_date`, `last_date`, `signature`, `copy_to`) VALUES
(5, 'national_service_scheme', 'BKGKB/1646', 'Important notice regarding all the volunteers for Clean College Save College.', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n', '1593975103', '1595356200', 'national_service_scheme_sig.jpg', '<ol>\r\n <li>Principal of GDC Dooru</li>\r\n <li>Admission Incharge</li>\r\n</ol>\r\n'),
(6, 'national_service_scheme', 'JVJYU/3546', 'Notice for volunteers who participated in last week cleaning drive ', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt& mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et&dolore magna aliqua. Ut enim ad minim veniam,quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n', '1596182302', '1596911400', 'national_service_scheme_sig.jpg', '<ol>\r\n <li>Principal of government degree college dooru</li>\r\n <li>NSS chairperson</li>\r\n <li>Admission Incharge</li>\r\n</ol>\r\n'),
(8, 'college_canteen_and_protocol_committee', '3164', 'Notice related to canteen', '<p>Alzvb bvjhg yser xcbmbdfxb m fbvh fvm vmcvb  m cv b</p>\r\n', '1596703099', '1597948200', 'college_canteen_and_protocol_committee_sig.jpg', '<ol>\r\n <li>Canteen Incharge</li>\r\n <li>Principal of GDC Dooru</li>\r\n</ol>\r\n'),
(10, 'college_research_and_innovation_cell', '684313', 'Notice related to research and innovation', '<p>svks v bfhb kudgh ncvb nbiuhgnvb nb ghb mnvb ncvb ghbu mv nvbkj bg mcvnv  kb kbk jhb ncvb n</p>\r\n', '1596708362', '1597861800', 'college_research_and_innovation_cell_sig.jpg', '<ol>\r\n <li>Admission Incharge</li>\r\n <li>Service Incharge</li>\r\n</ol>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `site_status_tb`
--

CREATE TABLE `site_status_tb` (
  `id` int(11) NOT NULL,
  `status` enum('false','true') DEFAULT 'false'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `site_status_tb`
--

INSERT INTO `site_status_tb` (`id`, `status`) VALUES
(1, '');

-- --------------------------------------------------------

--
-- Table structure for table `slider_tb`
--

CREATE TABLE `slider_tb` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `button_title` varchar(255) DEFAULT NULL,
  `upload_date` varchar(255) DEFAULT NULL,
  `userfile` varchar(255) NOT NULL,
  `faculty_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `slider_tb`
--

INSERT INTO `slider_tb` (`id`, `title`, `description`, `link`, `button_title`, `upload_date`, `userfile`, `faculty_id`) VALUES
(5, '', '', '', '', '1596976312', 'snow_img1.jpg', NULL),
(0, '', '', '', '', '1681881622', 'Meripehchaan11.jpg', NULL),
(0, '', '', '', '', '1681881638', 'image001CHJU1.jpg', NULL),
(0, '', '', '', '', '1683789967', 'Tech_Day.jpg', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `students_enrolled_tb`
--

CREATE TABLE `students_enrolled_tb` (
  `id` int(11) NOT NULL,
  `faculty_id` int(11) DEFAULT NULL,
  `dept_id` int(11) DEFAULT NULL,
  `semester_1` varchar(255) DEFAULT NULL,
  `semester_2` varchar(255) DEFAULT NULL,
  `semester_3` varchar(255) DEFAULT NULL,
  `semester_4` varchar(255) DEFAULT NULL,
  `semester_5` varchar(255) DEFAULT NULL,
  `semester_6` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `students_enrolled_tb`
--

INSERT INTO `students_enrolled_tb` (`id`, `faculty_id`, `dept_id`, `semester_1`, `semester_2`, `semester_3`, `semester_4`, `semester_5`, `semester_6`) VALUES
(1, 8, 2, '0', '0', '0', '0', '0', '0'),
(2, 8, 1, '0', '17', '6', '17', '0', '18');

-- --------------------------------------------------------

--
-- Table structure for table `study_material_tb`
--

CREATE TABLE `study_material_tb` (
  `id` int(11) NOT NULL,
  `file_title` varchar(255) DEFAULT NULL,
  `userfile` varchar(255) DEFAULT NULL,
  `faculty_id` int(11) DEFAULT NULL,
  `upload_date` varchar(255) DEFAULT NULL,
  `course_name` varchar(255) NOT NULL,
  `semester` varchar(255) NOT NULL,
  `batch` varchar(255) NOT NULL,
  `subject_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `study_material_tb`
--

INSERT INTO `study_material_tb` (`id`, `file_title`, `userfile`, `faculty_id`, `upload_date`, `course_name`, `semester`, `batch`, `subject_name`) VALUES
(1, 'Introduction to Data Structures', 'lec1.pdf', NULL, '1640854027', 'Bachelor Of Computer Application', '3', '2019', 'android_programming'),
(2, 'companies act', 'lec11.pdf', NULL, '1640855372', 'Bachelors In Commerce (B. Com)', '1', '2021', 'company_law'),
(3, 'Introduction to Algorithms', 'lec12.pdf', NULL, '1640855720', 'Bachelor Of Computer Application (BCA)', '4', '2020', 'algorithms');

-- --------------------------------------------------------

--
-- Table structure for table `subject_comb_tb`
--

CREATE TABLE `subject_comb_tb` (
  `id` int(11) NOT NULL,
  `semester` varchar(255) DEFAULT NULL,
  `stream` varchar(255) DEFAULT NULL,
  `subject_combination` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `subject_comb_tb`
--

INSERT INTO `subject_comb_tb` (`id`, `semester`, `stream`, `subject_combination`) VALUES
(1, '1', 'science', 'Biochemistry_Botany_Chemistry_EVS_Mathematics_Physics_Zoology'),
(2, '1', 'humanities', 'history_polScience_geo');

-- --------------------------------------------------------

--
-- Table structure for table `subject_tb`
--

CREATE TABLE `subject_tb` (
  `id` int(11) NOT NULL,
  `subject_name` varchar(255) NOT NULL,
  `course_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `subject_tb`
--

INSERT INTO `subject_tb` (`id`, `subject_name`, `course_name`) VALUES
(1, 'android_programming', 'Bachelor Of Computer Application (BCA)'),
(2, 'education', 'humanities'),
(4, 'company_law', 'Bachelors In Commerce (B. Com)'),
(5, 'algorithms', 'Bachelor Of Computer Application (BCA)');

-- --------------------------------------------------------

--
-- Table structure for table `tele_dir_tb`
--

CREATE TABLE `tele_dir_tb` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `number` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users_tb`
--

CREATE TABLE `users_tb` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `signature` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `salt` varchar(255) DEFAULT NULL,
  `type` varchar(255) NOT NULL,
  `lock_status` enum('1','2') DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users_tb`
--

INSERT INTO `users_tb` (`id`, `name`, `signature`, `email`, `password`, `salt`, `type`, `lock_status`) VALUES
(1, 'Prof. Tawseef Ahmad parray', '', 'admission@gdcdooru.edu.in', '3ffdbqryOFMjEiqgBTcNOhxJtKr+mKcku80UygIXjZ5P4uE4F9a70UdgTAte3oW0F2zJz1rs0pUyIZRtCjd8bw==', NULL, 'admission', '2'),
(4, 'Prof. Suhail Ahmad Shah', 'computer_sciences.jpg', 'cs@gdcdooru.edu.in', 'g2gSbjVfeGYLemlkkxrHYy+SAvTk8tWKifeoGJDmLVcNvXjRF6u+Fem4Fl/BMoI9d+OwF8GZolKqNwzoXl8SQg==', NULL, 'computer_sciences', '2'),
(5, 'Humanities', '', 'humanities@gdcdooru.edu.in', 'PxPdvvho+ETXCfBuZ2zn5XHXbo/le5nW5iNT18NU0eaGP5qJPzfrGD7WSsQguvKgcHVYv+xD5YzW+2cSCnAKZQ==', NULL, 'humanities', '2'),
(6, 'Wani', '', 'science@gdcdooru.com', 'zLwOkLB+3Uaw9OIjrg2M6EG10YOBIG3VdqVhUQfhe9/oKcR/SyaZs0jxR1uG6Ff+/l9l1aCqClEE9hpGzM81gg==', NULL, 'sciences', '1'),
(14, 'Prof. Suhail Ahmad Shah', '', 'nss@gdcdooru.com', 'We2hRe+p12mcqdBbfzfderfPSyNi/2ny79E5hAjWvcuiI0tOu3ya2iD8nlxG4CUMqbsp6l9DNJbD2Hku70R5TQ==', NULL, 'national_service_scheme', '2'),
(18, 'Prof. Feroze Ahmad Khandy', 'commerce.jpg', 'commerce@gdcdooru.com', 'V5A/mnmrheh5RRAOxGj2s0tqz6S/59p0pJJiwdq9k9wlN3VL1p+C6VXtV2NnfZlFz15Vfbyq8zBeenoTRdWm7w==', NULL, 'commerce', '2'),
(19, 'Dr. Hilal Ahmad Wani', 'examination.jpg', 'examination@gdcdooru.edu.in', '9VwnO2FTDl4rGlquNIYMnJ5YQOGnlRE1otH6g1l3pJI2WH87WXizSMEVhoE8iY0Ja7ufz25TN7bSE9gNyqLpmw==', NULL, 'examination', '2'),
(23, 'Prof. Bilal Ahmad Pandit', '', 'ccpc@gdcdooru.com', 'jvLAn7k3YIuWr+CMGmBFfR9k+6hhHoW6gS+CwO1Qo72j9+fEygSjUbyBidRvJq3u+DtE5RdYIo7XTR7JdqlrRQ==', NULL, 'college_canteen_and_protocol_committee', '2'),
(25, 'Dr. Muzafar Jan', 'career_counselling_and_guidance_cell_sig.jpg.jpg', 'ccgc@gdcdooru.edu.in', 'HwWT/uEIo7eUZuKWv7K/ACd2OdBSh+ti98ms2jUYHo5lmXhYnhVdMQyM15bd4jKtOoy/62yDtYWEq4CiGkgvgw==', NULL, 'career_counselling_and_guidance_cell', '2'),
(26, 'Dr. Muzafar Jan', 'college_research_and_innovation_cell_sig.jpg', 'cric@gdcdooru.com', 'VV30Mq4oO8OqserFrLC9xSIQ1EWDs+VRwmn4+NGIPBmJNinlFNvOP9zem00h4GLbPOSQ/kRRfSVUL2hlK/zT5A==', NULL, 'college_research_and_innovation_cell', '2'),
(27, 'Prof. Feroze Ahmad Khandy', 'college_financial_aid_cell_sig.jpg', 'cfac@gdcdooru.com', 'W23xj49opawihjiW/oSAvx1nfY1uEV5cIwhu05FLMiTI1fgJswTR/9qQ28TVzmAeX/H/bMrP8gV5MJGfIjxDyg==', NULL, 'college_financial_aid_cell', '2'),
(28, 'Prof. Bilal Ahmad Pandit', 'social_science.jpg', 'socialscience@gdcdooru.jk.gov.in', 'L7MoC47fQMs0RBMnP9bGqWV97UrlAKABcny0Kek2wg1bSaNXjiOZvAzXFt3hTTguzMgTOzgZAaDQhv6DTzwnlg==', NULL, 'social_science', '2'),
(29, 'Prof. Feroze Ahmad Khandy', 'scholarship.jpg', 'scholarship@gdcdooru.edu.in', 'qyShdYJd+e9Q2OJoyHeVTxaviTtxxOHfUulzH0b85SIGy8a8ZpUWB20WjRbCLVToMSUMOl76JQdq1ZRwuKvyWQ==', NULL, 'scholarship', '2'),
(30, 'Prof. Zahid Mir', 'NULL', 'naac@gdcdooru.edu.in', '+BkJu42QYlEOFj2CJAOfaiVHNDqVfkqi9Wsu3TFDxT7CokgKDr3irWMXqRSNBsgqoRM8eeFTYf6KdgSUrVuNMg==', NULL, 'naac', '2'),
(31, 'Computer Sciences', 'computer_sciences.png', 'cs@gdcdooru.edu.in', 'RTJXZa/jllZ7ncWNXrmN/3Ekn4eAAndBHwl9UHN6UYefUZT2GipdzAbjVdpwnacLvrteO2d/5jqZjqty2OiSNA==', NULL, 'computer_sciences', '2'),
(32, 'Bilal Ahmad Pandit', 'scholarship1.jpg', 'scholarship@gdcdooru.edu.in', '5gQ8GX4osGg9yYfsUdcAAv+DF77V5UVaWnXCw90DG8h5Xt4gHUgda+jnsVF9Wp5arhSoXqh1TZdHNVlT/b6xNg==', NULL, 'scholarship', '2'),
(33, 'Prof. Arif Nisar', 'debates_and_seminars_committee_sig.jpg', 'seminar@gdcdooru.edu.in', 'SPxzWYvEf3jJhnGSOhKFdyviSElp6d3W2wSm2jq/ZDluBvkjeNL42//Vk48kGlWZAgjSko/A/AWFQy8SuEQ+/A==', NULL, 'debates_and_seminars_committee', '2'),
(34, 'TimeTable', 'social_science1.jpg', 'tt@gdcdooru.edu.in', '3O9mQIGsltqXB7JdrY9zAzklo25DEWHI4WxrCqeyzu+3y029Ppvbrwqs6M9cGvi47aHyc6DkyMpOKjNqraPQig==', NULL, 'social_science', '2');

-- --------------------------------------------------------

--
-- Table structure for table `videos_tb`
--

CREATE TABLE `videos_tb` (
  `id` int(11) NOT NULL,
  `userfile` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `upload_date` varchar(255) NOT NULL,
  `description` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `workshop_tb`
--

CREATE TABLE `workshop_tb` (
  `id` int(11) NOT NULL,
  `userfile` varchar(255) DEFAULT NULL,
  `title` mediumtext DEFAULT NULL,
  `body` mediumtext DEFAULT NULL,
  `hosting_date` varchar(255) DEFAULT NULL,
  `hosting_time` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about_college_tb`
--
ALTER TABLE `about_college_tb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `about_us_tb`
--
ALTER TABLE `about_us_tb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_tb`
--
ALTER TABLE `admin_tb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admission_form_link_tb`
--
ALTER TABLE `admission_form_link_tb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admission_notification_tb`
--
ALTER TABLE `admission_notification_tb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admission_profile_tb`
--
ALTER TABLE `admission_profile_tb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admission_tb`
--
ALTER TABLE `admission_tb`
  ADD PRIMARY KEY (`form_no`);

--
-- Indexes for table `alumni_tb`
--
ALTER TABLE `alumni_tb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aqar_tb`
--
ALTER TABLE `aqar_tb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `certificates_tb`
--
ALTER TABLE `certificates_tb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course_tb`
--
ALTER TABLE `course_tb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `credentials_tb`
--
ALTER TABLE `credentials_tb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `datesheet_tb`
--
ALTER TABLE `datesheet_tb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dept_faculty_tb`
--
ALTER TABLE `dept_faculty_tb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dept_tb`
--
ALTER TABLE `dept_tb`
  ADD PRIMARY KEY (`dept_id`),
  ADD KEY `faculty_id` (`faculty_id`);

--
-- Indexes for table `developer_tb`
--
ALTER TABLE `developer_tb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events_tb`
--
ALTER TABLE `events_tb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `examination_tb`
--
ALTER TABLE `examination_tb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exam_dir_tb`
--
ALTER TABLE `exam_dir_tb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faculty_info_tb`
--
ALTER TABLE `faculty_info_tb`
  ADD PRIMARY KEY (`info_id`);

--
-- Indexes for table `faculty_tb`
--
ALTER TABLE `faculty_tb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feedback_tb`
--
ALTER TABLE `feedback_tb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `financial_aid_forms_tb`
--
ALTER TABLE `financial_aid_forms_tb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `financial_form_status_tb`
--
ALTER TABLE `financial_form_status_tb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `forms_tb`
--
ALTER TABLE `forms_tb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gallery_tb`
--
ALTER TABLE `gallery_tb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `greivance_tb`
--
ALTER TABLE `greivance_tb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `iqac_activity_tb`
--
ALTER TABLE `iqac_activity_tb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `iqac_meeting_tb`
--
ALTER TABLE `iqac_meeting_tb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `naac_important_links_tb`
--
ALTER TABLE `naac_important_links_tb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `naac_members_tb`
--
ALTER TABLE `naac_members_tb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `noticeboard_tb`
--
ALTER TABLE `noticeboard_tb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notification_alert_tb`
--
ALTER TABLE `notification_alert_tb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `results_tb`
--
ALTER TABLE `results_tb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `scholarship_latest_update_tb`
--
ALTER TABLE `scholarship_latest_update_tb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `scholarship_notice_tb`
--
ALTER TABLE `scholarship_notice_tb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `scholarship_profile_tb`
--
ALTER TABLE `scholarship_profile_tb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services_tb`
--
ALTER TABLE `services_tb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service_events_tb`
--
ALTER TABLE `service_events_tb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service_members_tb`
--
ALTER TABLE `service_members_tb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service_notice_tb`
--
ALTER TABLE `service_notice_tb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students_enrolled_tb`
--
ALTER TABLE `students_enrolled_tb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `study_material_tb`
--
ALTER TABLE `study_material_tb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subject_comb_tb`
--
ALTER TABLE `subject_comb_tb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subject_tb`
--
ALTER TABLE `subject_tb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tele_dir_tb`
--
ALTER TABLE `tele_dir_tb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_tb`
--
ALTER TABLE `users_tb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `videos_tb`
--
ALTER TABLE `videos_tb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `workshop_tb`
--
ALTER TABLE `workshop_tb`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about_college_tb`
--
ALTER TABLE `about_college_tb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `about_us_tb`
--
ALTER TABLE `about_us_tb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `admin_tb`
--
ALTER TABLE `admin_tb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admission_form_link_tb`
--
ALTER TABLE `admission_form_link_tb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `admission_notification_tb`
--
ALTER TABLE `admission_notification_tb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `admission_profile_tb`
--
ALTER TABLE `admission_profile_tb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admission_tb`
--
ALTER TABLE `admission_tb`
  MODIFY `form_no` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `alumni_tb`
--
ALTER TABLE `alumni_tb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `aqar_tb`
--
ALTER TABLE `aqar_tb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `certificates_tb`
--
ALTER TABLE `certificates_tb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `course_tb`
--
ALTER TABLE `course_tb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `credentials_tb`
--
ALTER TABLE `credentials_tb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `datesheet_tb`
--
ALTER TABLE `datesheet_tb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dept_faculty_tb`
--
ALTER TABLE `dept_faculty_tb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `dept_tb`
--
ALTER TABLE `dept_tb`
  MODIFY `dept_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `developer_tb`
--
ALTER TABLE `developer_tb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `events_tb`
--
ALTER TABLE `events_tb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `examination_tb`
--
ALTER TABLE `examination_tb`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `exam_dir_tb`
--
ALTER TABLE `exam_dir_tb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `faculty_info_tb`
--
ALTER TABLE `faculty_info_tb`
  MODIFY `info_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `faculty_tb`
--
ALTER TABLE `faculty_tb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `feedback_tb`
--
ALTER TABLE `feedback_tb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `financial_aid_forms_tb`
--
ALTER TABLE `financial_aid_forms_tb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=165;

--
-- AUTO_INCREMENT for table `financial_form_status_tb`
--
ALTER TABLE `financial_form_status_tb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `forms_tb`
--
ALTER TABLE `forms_tb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `gallery_tb`
--
ALTER TABLE `gallery_tb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `greivance_tb`
--
ALTER TABLE `greivance_tb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `iqac_activity_tb`
--
ALTER TABLE `iqac_activity_tb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `iqac_meeting_tb`
--
ALTER TABLE `iqac_meeting_tb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `naac_important_links_tb`
--
ALTER TABLE `naac_important_links_tb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `naac_members_tb`
--
ALTER TABLE `naac_members_tb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `noticeboard_tb`
--
ALTER TABLE `noticeboard_tb`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT for table `notification_alert_tb`
--
ALTER TABLE `notification_alert_tb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `results_tb`
--
ALTER TABLE `results_tb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `scholarship_latest_update_tb`
--
ALTER TABLE `scholarship_latest_update_tb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `scholarship_notice_tb`
--
ALTER TABLE `scholarship_notice_tb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `scholarship_profile_tb`
--
ALTER TABLE `scholarship_profile_tb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `services_tb`
--
ALTER TABLE `services_tb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `service_events_tb`
--
ALTER TABLE `service_events_tb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `service_members_tb`
--
ALTER TABLE `service_members_tb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `service_notice_tb`
--
ALTER TABLE `service_notice_tb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `students_enrolled_tb`
--
ALTER TABLE `students_enrolled_tb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `study_material_tb`
--
ALTER TABLE `study_material_tb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `subject_comb_tb`
--
ALTER TABLE `subject_comb_tb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `subject_tb`
--
ALTER TABLE `subject_tb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tele_dir_tb`
--
ALTER TABLE `tele_dir_tb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users_tb`
--
ALTER TABLE `users_tb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `workshop_tb`
--
ALTER TABLE `workshop_tb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `dept_tb`
--
ALTER TABLE `dept_tb`
  ADD CONSTRAINT `dept_tb_ibfk_1` FOREIGN KEY (`faculty_id`) REFERENCES `faculty_tb` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
