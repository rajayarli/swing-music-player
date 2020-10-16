-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 14, 2020 at 06:36 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `songs`
--

-- --------------------------------------------------------

--
-- Table structure for table `list_of_songs`
--

CREATE TABLE `list_of_songs` (
  `id` int(11) NOT NULL,
  `song_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `song_link` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `weather` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `mood` varchar(15) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `list_of_songs`
--

INSERT INTO `list_of_songs` (`id`, `song_name`, `song_link`, `weather`, `mood`) VALUES
(2, 'Maroon 5', '09R8_2nJtjg', 'sunny', 'happy'),
(3, 'Taylor Swift', '-CmadmM5cOk', 'sunny', 'happy'),
(4, 'I Want You To Know', 'X46t8ZFqUB4', 'sunny', 'happy'),
(5, 'Time of Our Lives', 'bTXJQ5ql5Fw', 'sunny', 'happy'),
(6, 'Love Me Like You Do', 'AJtDXIazrMo', 'sunny', 'happy'),
(7, 'I Really Like You', 'qV5lzRHrGeg', 'sunny', 'happy'),
(8, 'One Last Time', 'BPgEgaPk62M', 'sunny', 'happy'),
(9, 'Chains', 'U8UX2bbCHJw', 'sunny', 'happy'),
(10, 'Shut Up and Dance', '6JCLY0Rlx6Q', 'sunny', 'happy'),
(11, 'Jane XO Lies', 'AcoI8Zr5l3Q', 'sunny', 'sad'),
(12, 'Fort Romeau Say Something', '17-o2vhGXSs', 'sunny', 'sad'),
(13, ' MS MR Hurricane', 'm2LFI6abQI4', 'sunny', 'sad'),
(14, ' Porter Robinson Goodbye to a World', 'L1h9xxCU20g', 'sunny', 'sad'),
(15, 'The Chainsmokers New York City', 'jkVPPPpKOHE', 'sunny', 'sad'),
(16, 'Mark Johns Molino', 'bek1y2uiQGA', 'sunny', 'sad'),
(17, 'Nicolas Jaar Time For Us', '8kY4QZb1NmQ', 'sunny', 'sad'),
(18, 'Gorillaz El Manana', 'yVDuJBBr-Oc', 'sunny', 'sad'),
(21, 'I Hate You So Much Right Now', 'ETNRfcNIl2w', 'sunny', 'Angry'),
(22, ' Eminem The Way I Am', 'mQvteoFiMlg', 'sunny', 'Angry'),
(23, 'Kanye West Black Skinhead', 'YLx11xq6X7Q', 'sunny', 'Angry'),
(24, 'Pink So What', 'FJfFZqTlWrQ', 'sunny', 'Angry'),
(25, '30 Seconds To Mars The Kill', '8yvGCAvOAfM', 'sunny', 'Angry'),
(26, 'Skrillex First Of The Year', 'TYYyMu3pzL4', 'sunny', 'Angry'),
(27, 'Nuvvasthanante', 'eUrC0jWdu-M', 'rainy', 'happy'),
(28, 'Vana Vana', 'LLk7q_zF4V4', 'rainy', 'happy'),
(29, 'Vaana Vaana Velluvaye', '-3Hq5gMsmTQ', 'rainy', 'happy'),
(30, 'Barso Re', 'asw-wTDzGUQ', 'rainy', 'happy'),
(31, 'Tip Tip Barsa Paani ', 'oB_vLYH0a9A', 'rainy', 'happy'),
(32, 'Sun Raha Hai Na Tu', 'eHRrZ5DQCV4', 'rainy', 'sad'),
(33, ' Teri Yaad Adnan Sami', 'NgXrJH-9Syc', 'rainy', 'sad'),
(34, 'Peniviti', '4oMO8IYwOos', 'rainy', 'sad'),
(35, 'Gelupuleni Samaram', 'GT9boN2ncpc', 'rainy', 'sad'),
(36, 'Bole Chudiyan', 'k8Yn6c7k7Qw', 'sunny', 'happy'),
(37, 'Ek Niranjan ', 'HEYD5fKFIhw', 'sunny', 'lonely'),
(38, 'Luckkanna Mate Nillu', 'Mm1Zp80gj1Q', 'cold', 'lonely'),
(39, 'Oke Oka Jeevitham', 'wlWtJrCscyE', 'cold', 'lonely'),
(40, 'The Life Of Ram', '2a34XyiZO14', 'rainy', 'lonely'),
(41, 'Neekem Kaavaalo Cheppu', '3_rMnglt5Vk', 'sunny', 'happy'),
(42, 'Chali Chali Ga', 'ekAYewieHKA', 'cold', 'happy'),
(43, 'Karige Loga Video', '3M377ycIwDA', 'windy', 'sad'),
(44, 'Arere Vaanaa', 'twA4pHMJrFs', 'rainy', 'happy'),
(45, 'ButtaBomma', '2mDCVzruYzQ', 'cold', 'happy'),
(46, 'SinglesAnthem', 'gWI6SH4pqLc', 'sunny', 'lonely'),
(47, 'ManasaManasa', 'NtTGqvD67pE', 'cold', 'happy'),
(48, 'EmaiPoyave', 'Eyx0Hvi1_Ng', 'rainy', 'sad'),
(49, 'Evare', 'WQk5CI4NZII', 'cold', 'happy'),
(50, 'My Love Is Gone', 'GdN9qdDnE5U', 'sunny', 'sad'),
(51, 'Ringa Ringa', '2OhhFkF3MqQ', 'sunny', 'happy'),
(52, 'Don’u Don’u Don’u', 'A_z5g0_hJN8', 'sunny', 'happy'),
(53, 'Selfie Pulla', 'xZ92nnR1Pt8', 'sunny', 'happy'),
(54, 'Rowdy Baby', 'x6Q7c9RyMzk', 'sunny', 'happy'),
(55, ' Nee Kannu Neeli Samudram', 'mrqgz4_a4PU', 'windy', 'happy'),
(56, 'Singilu Singilu', 'Ab4nSs3zRLs', 'sunny', 'lonely'),
(57, 'Veede Adugadugo', '8iln_hwRXyg', 'sunny', 'Angry'),
(58, 'Kodiyavanin Kathaya', 'NnrQfaq8bYU', 'cold', 'Angry'),
(59, 'iSmart Shankar', 'Ox4ih-vJu7E', 'sunny', 'Angry'),
(60, 'OMG Daddy', 'gdt-yIgm2zc', 'sunny', 'lonely'),
(61, 'Arjun Reddy ', 'jOst7Trpj7o', 'cold', 'Angry'),
(62, 'Asha Pasham', 'mJPEf7vWb6Q', 'cold', 'sad'),
(63, 'DilBaro', 'WqUXVw0WlXc', 'cold', 'sad'),
(64, 'Breakup Song', 'kd5KqlmcHNo', 'cold', 'happy'),
(65, 'Rangamma Mangamma', 'GWWHI7SE0KQ', 'sunny', 'happy'),
(66, 'Yentha Sakkagunnave', 'eABViudPBFE', 'cold', 'happy'),
(67, 'Cheppukoleney', 'NJkc5WymIq4', 'cold', 'sad'),
(68, 'Cheppukoleney', 'NJkc5WymIq4', 'cold', 'Angry'),
(69, 'Yellipoke Syamala', 'R7w5_6u3Nys', 'windy', 'sad'),
(70, 'Cheppave Balamani', 'w6gDtO-4vYU', 'cold', 'Angry'),
(71, 'Amma Amma ', 'UI85-vBj1ag', 'sunny', 'sad'),
(72, 'Nee Selavadigi', 'EhzJ1c0d53s', 'sunny', 'sad'),
(73, 'Nenu Thaanani', 'HbtcfWGGt_8', 'windy', 'sad'),
(74, 'Yemainado', 't8oOYuFd-zw', 'rainy', 'sad'),
(75, 'Tholi Prema', 'TQ-B5df2Le8', 'rainy', 'sad'),
(76, 'Adhento Gaani', '-t5b7MrWENk', 'windy', 'happy'),
(77, 'Bella Ciao', 'Xm-hdblSa9E', 'windy', 'Angry'),
(78, 'Aakasam Lona', 'Khk4AoZCaIo', 'rainy', 'sad'),
(79, 'Aakasam Lona', 'Khk4AoZCaIo', 'rainy', 'lonely'),
(80, 'Gira Gira Gira', 'DQYGVnVm-DI', 'windy', 'happy'),
(81, 'Kadalalle', '2ySr4lR0XFg', 'rainy', 'happy'),
(82, 'Yetu Pone', 'TfeXDgNXsTs', 'windy', 'Angry'),
(83, 'Laalijo Laalijo', 'tc3QqhSY2-A', 'rainy', 'lonely'),
(84, 'Nuvvunte Naa Jathagaa', 'Zc7SeDL-0uE', 'windy', 'Angry'),
(85, 'Ye Manishike', 'bOJqTkeW5lA', 'windy', 'happy'),
(86, 'Manasu Maree', 'Pal0uollc4E', 'cold', 'happy'),
(87, 'Be Free', 'eiGdsH1g20k', 'sunny', 'lonely'),
(88, 'Oh Baby', 'WwohxV-B7FE', 'sunny', 'lonely'),
(89, 'suvvi suvvalama', 'wpUNahqsZaQ', 'windy', 'Angry'),
(90, 'FRIENDS', 'jzD_yyEcp0M', 'cold', 'Angry'),
(91, 'Pretty Girl', 'WEFJnYMz0Ec', 'rainy', 'Angry'),
(92, 'Vaaste', 'BBAyRBTfsOU', 'windy', 'happy'),
(93, 'Kidwaste Manila Killa - Tonight', 'SC62CPDb4nk', 'rainy', 'happy'),
(94, 'San Holo - show me', '7j-mAAaNzkw', 'rainy', 'sad'),
(95, ' Attom - Always', 'LiCJXoA6Z_U', 'rainy', 'Angry'),
(96, 'Imad Royal - Losing It All', 'kevIATpU-Rs', 'rainy', 'lonely'),
(97, 'A R I Z O N A - Oceans Away', 'Bh7kKBcUlE4', 'rainy', 'lonely'),
(98, 'SYRE - Next to Me', 'QYSCaG5h0Ao', 'rainy', 'Angry'),
(99, 'Shlohmo - Wen Uuu', 'fBhl8KZM8Jg', 'rainy', 'sad'),
(100, 'Kiso, Loe', 'Hzox8YSOdKg', 'rainy', 'happy'),
(101, 'Shallou - Begin ', 'iVTqxdEXFkA', 'rainy', 'sad'),
(102, 'Petit Biscuit - Sunset Lover', '4fQeaM62mOY', 'rainy', 'Angry'),
(103, 'ODESZA - Sun Models ', 'cnwiaErSuKc', 'rainy', 'lonely'),
(104, 'CRAY - 4never', 'VvB-bm85Aqw', 'rainy', 'Angry'),
(105, 'Ninajirachi - Pure Luck', 'ceJyAsk6Rvs', 'rainy', 'Angry'),
(106, 'Portugal. The Man - Feel It Still', 'V0o3vT49QVw', 'rainy', 'happy'),
(107, 'Emmit Fenn - Lost in Space', 'P99GToEfG04', 'rainy', 'happy'),
(108, 'NONONO - Pumpin Blood', 'Z4ClrFos7sc', 'rainy', 'Angry'),
(109, 'love you again', 'CfihYWRWRTQ', 'rainy', 'happy'),
(110, 'summertime', 'mshYP5KgzOY', 'rainy', 'Angry'),
(111, 'summertime', 'mshYP5KgzOY', 'rainy', 'Angry'),
(112, 'summertime', 'mshYP5KgzOY', 'cold', 'happy'),
(113, 'Girls Like You', 'aJOTlE1K90k', 'cold', 'lonely'),
(114, 'The Chainsmokers - Closer ', 'PT2_F-1esPk', 'cold', 'happy'),
(115, 'Charlie Puth - Attention', 'nfs8NYg7yQM', 'cold', 'lonely'),
(116, 'I Don’t Wanna Live Forever', 'AY9blLYMKnI', 'cold', 'lonely'),
(117, 'ZAYN - Let Me', 'J-dv_DcDD_A', 'windy', 'happy'),
(118, 'ZAYN - Entertainer', 'voG07pt-KYI', 'cold', 'happy'),
(119, 'ZAYN - PILLOWTALK', 'C_3d6GntKbk', 'cold', 'lonely'),
(120, 'Louis Tomlinson - Back to You', '-HjpL-Ns6_A', 'cold', 'happy'),
(121, 'Liam Payne - Strip That Down', 'vSW2M-BB1NE', 'cold', 'happy'),
(122, 'Post Malone - Congratulations', 'SC4xMk98Pdc', 'cold', 'sad'),
(123, 'Future - Life Is Good', 'l0U7SxXHkPY', 'cold', 'Angry'),
(124, 'Travis Scott - HIGHEST IN THE ROOM ', 'tfSS1e3kYeo', 'cold', 'happy'),
(125, 'Travis Scott - SICKO MODE', '6ONRf7h3Mdk', 'windy', 'sad'),
(126, 'Roddy Ricch - The Box', 'UNZqm3dxd2w', 'windy', 'Angry'),
(127, 'DaBaby - ROCKSTAR', '4PDpVNKZgKg', 'sunny', 'Angry'),
(128, 'DaBaby - ROCKSTAR ', '4PDpVNKZgKg', 'rainy', 'Angry'),
(129, 'Jack Harlow - WHATS POPPIN', 'HIwAI05Y1fU', 'cold', 'lonely'),
(130, 'Andhamaina Premarani', 'RD_ohr3MSS0', 'cold', 'happy'),
(131, 'MEL x Navaro - the 1', 'LL3KjHMvuhE', 'windy', 'lonely'),
(132, 'Bluckther x Ardo - Trying', 'I23DgeQ9UzA', 'cold', 'sad'),
(133, 'Erjona Sylejmani - Heathens', 'wzPOryo5rlM', 'windy', 'sad'),
(134, 'Unknown Brain x Rival - Control', 'bLZHcnuqscU', 'windy', 'sad'),
(135, 'Unknown Brain x Rival - Control', 'bLZHcnuqscU', 'windy', 'sad'),
(136, 'Post Malone  Swae Lee - Sunflower', 'ApXoWvfEYVU', 'windy', 'happy'),
(137, 'coldplay - Hymn For The Weekend ', 'YykjpeuMNEk', 'windy', 'lonely'),
(138, 'Coldplay - Paradise', '1G4isv_Fylg', 'windy', 'lonely'),
(139, 'Marshmello - Alone', 'ALZHF5UqnU4', 'windy', 'lonely'),
(140, 'Bastille - Happier', 'm7Bc3pLyij0', 'windy', 'happy'),
(141, 'Marshmello & Anne-Marie - FRIENDS', 'jzD_yyEcp0M', 'windy', 'lonely'),
(142, 'Clean Bandit - Rockabye', 'papuvlVeZg8', 'windy', 'lonely'),
(143, 'you broke me first', 'AG-erEMhumc', 'windy', 'lonely'),
(144, 'if this is the last time', 'GPbG4mIgKAw', 'windy', 'lonely'),
(145, 'are you happy?', 'wPfznZ_QT08', 'windy', 'lonely'),
(146, 'hard for me', 'bqO3Y5e4Dow', 'sunny', 'lonely'),
(147, 'idk you yet', 'LoY6nmmjnHM', 'windy', 'sad'),
(148, 'go solo', 'VePaI3jX4Sk', 'windy', 'Angry'),
(149, 'before you go', 'Jtauh8GcxBY', 'cold', 'sad'),
(150, 'happiest year', 'i-qT5n_5Mys', 'rainy', 'lonely'),
(151, 'falling', 'olGSAVOkkTI', 'windy', 'Angry'),
(152, 'easy', 'bCHqIhiFmEY', 'windy', 'sad'),
(153, 'first man', 'grmAmQimQZk', 'cold', 'sad'),
(156, 'feelings', 'qkwPmJ9hIDk', 'cold', 'Angry'),
(157, 'if they only knew', 'b3etRNavQVM', 'rainy', 'lonely'),
(158, 'if you want love', 'LfxY1sg5_rw', 'sunny', 'lonely'),
(159, 'to die for', 'POIK1H3L86k', 'cold', 'lonely'),
(160, 'you were good to me', '06k5XN78OP0', 'cold', 'lonely'),
(161, 'the greatest', '0ggg_iCrE6I', 'windy', 'lonely'),
(162, 'act up', 'JhAqiQjduMo', 'cold', 'sad'),
(163, ' murder on my mind', 'lkaB46ZP3do', 'cold', 'lonely'),
(164, 'con calma', 'DiItGE3eAyQ', 'cold', 'Angry'),
(165, 'the london', '9CYQxsN3SfI', 'cold', 'sad'),
(166, 'beer never broke my heart', 'eKrJ6hb5Poo', 'cold', 'sad'),
(167, 'beer never broke my heart', 'eKrJ6hb5Poo', 'cold', 'sad'),
(168, 'circles', '0sca9FP6zl8', 'cold', 'sad'),
(169, 'hey look ma ,i made it', 'I5VtJwuNWGY', 'cold', 'Angry'),
(170, 'you say', 'oZvKJl1kK8g', 'cold', 'lonely'),
(171, 'robbery', '4GuqB1BQVr4', 'windy', 'happy'),
(172, ' all to myself', '9EV0H4-e-DE', 'windy', 'sad'),
(173, 'eyes on you', 'I8uztB31eUw', 'windy', 'Angry'),
(174, 'eyes on you', 'I8uztB31eUw', 'windy', 'Angry'),
(175, 'beautiful', 'Uk1hv6h7O1Y', 'windy', 'Angry'),
(176, 'beautiful', 'Uk1hv6h7O1Y', 'windy', 'Angry'),
(177, 'talk you out of it', '8Ls6QyWu63s', 'windy', 'sad'),
(178, 'hot girl summer', '_ej1HU-W0GM', 'windy', 'sad'),
(179, 'shotta flow', '2KDlDuS6r6I', 'windy', 'Angry'),
(180, 'tequila', 'c4qgqNS_20s', 'windy', 'Angry'),
(181, 'tequila', 'c4qgqNS_20s', 'windy', 'Angry'),
(182, 'cash shit', '2Xe7OAFljOA', 'windy', 'lonely'),
(183, 'loves lies', 'xYtsL9znopI', 'windy', 'sad'),
(184, 'loves lies', 'xYtsL9znopI', 'windy', 'sad'),
(185, 'clout', 'KFBOxV1SwBo', 'windy', 'sad'),
(186, 'good as you', '5PaJ-BHmWiE', 'windy', 'Angry'),
(187, 'look what god gave her', 'AbXahmBSLTk', 'sunny', 'Angry'),
(188, 'baby lil', 'Cn3zeRl_f6c', 'sunny', 'lonely'),
(189, 'how do you sleep?', 'PmYypVozQb4', 'sunny', 'lonely'),
(190, 'swervin', 'v-rxFHRTrJc', 'rainy', 'lonely'),
(191, 'rumor', 'uTcZ3IizpLE', 'rainy', 'lonely'),
(192, 'trip ', 'JfGD75vHWrU', 'rainy', 'lonely');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `list_of_songs`
--
ALTER TABLE `list_of_songs`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `list_of_songs`
--
ALTER TABLE `list_of_songs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=193;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
