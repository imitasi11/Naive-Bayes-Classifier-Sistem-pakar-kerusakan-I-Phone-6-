-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 03, 2020 at 12:07 PM
-- Server version: 5.5.27
-- PHP Version: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `db`
--

-- --------------------------------------------------------

--
-- Table structure for table `data`
--

CREATE TABLE IF NOT EXISTS `data` (
  `id_data` int(11) NOT NULL AUTO_INCREMENT,
  `id_datas` int(11) NOT NULL,
  `id_kriteria` int(11) NOT NULL,
  `id_parameter` int(11) NOT NULL,
  PRIMARY KEY (`id_data`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1401 ;

--
-- Dumping data for table `data`
--

INSERT INTO `data` (`id_data`, `id_datas`, `id_kriteria`, `id_parameter`) VALUES
(1, 1, 1, 1),
(2, 1, 2, 0),
(3, 1, 3, 0),
(4, 1, 4, 1),
(5, 1, 5, 1),
(6, 1, 6, 0),
(7, 1, 7, 0),
(8, 1, 8, 0),
(9, 1, 9, 0),
(10, 1, 10, 0),
(11, 1, 11, 0),
(12, 1, 12, 0),
(13, 1, 13, 0),
(14, 1, 14, 0),
(15, 1, 15, 0),
(16, 1, 16, 0),
(17, 1, 17, 0),
(18, 1, 18, 0),
(19, 1, 19, 0),
(20, 1, 20, 0),
(21, 1, 21, 0),
(22, 1, 22, 0),
(23, 1, 23, 0),
(24, 1, 24, 1),
(25, 1, 25, 0),
(26, 1, 26, 0),
(27, 1, 27, 0),
(28, 1, 28, 0),
(29, 1, 29, 0),
(30, 1, 30, 0),
(31, 1, 31, 0),
(32, 1, 32, 0),
(33, 1, 33, 0),
(34, 1, 34, 0),
(35, 1, 35, 0),
(36, 1, 36, 0),
(37, 1, 37, 0),
(38, 1, 38, 0),
(39, 1, 39, 0),
(40, 1, 40, 0),
(41, 2, 1, 1),
(42, 2, 2, 0),
(43, 2, 3, 1),
(44, 2, 4, 1),
(45, 2, 5, 0),
(46, 2, 6, 0),
(47, 2, 7, 0),
(48, 2, 8, 0),
(49, 2, 9, 0),
(50, 2, 10, 0),
(51, 2, 11, 0),
(52, 2, 12, 0),
(53, 2, 13, 0),
(54, 2, 14, 0),
(55, 2, 15, 0),
(56, 2, 16, 0),
(57, 2, 17, 0),
(58, 2, 18, 0),
(59, 2, 19, 0),
(60, 2, 20, 0),
(61, 2, 21, 0),
(62, 2, 22, 0),
(63, 2, 23, 0),
(64, 2, 24, 1),
(65, 2, 25, 1),
(66, 2, 26, 0),
(67, 2, 27, 0),
(68, 2, 28, 0),
(69, 2, 29, 0),
(70, 2, 30, 0),
(71, 2, 31, 0),
(72, 2, 32, 0),
(73, 2, 33, 0),
(74, 2, 34, 0),
(75, 2, 35, 0),
(76, 2, 36, 0),
(77, 2, 37, 0),
(78, 2, 38, 0),
(79, 2, 39, 0),
(80, 2, 40, 0),
(81, 3, 1, 1),
(82, 3, 2, 1),
(83, 3, 3, 0),
(84, 3, 4, 1),
(85, 3, 5, 1),
(86, 3, 6, 0),
(87, 3, 7, 0),
(88, 3, 8, 0),
(89, 3, 9, 0),
(90, 3, 10, 0),
(91, 3, 11, 0),
(92, 3, 12, 0),
(93, 3, 13, 0),
(94, 3, 14, 0),
(95, 3, 15, 0),
(96, 3, 16, 0),
(97, 3, 17, 0),
(98, 3, 18, 0),
(99, 3, 19, 0),
(100, 3, 20, 0),
(101, 3, 21, 0),
(102, 3, 22, 0),
(103, 3, 23, 0),
(104, 3, 24, 0),
(105, 3, 25, 1),
(106, 3, 26, 0),
(107, 3, 27, 0),
(108, 3, 28, 0),
(109, 3, 29, 0),
(110, 3, 30, 0),
(111, 3, 31, 0),
(112, 3, 32, 0),
(113, 3, 33, 0),
(114, 3, 34, 0),
(115, 3, 35, 0),
(116, 3, 36, 0),
(117, 3, 37, 0),
(118, 3, 38, 0),
(119, 3, 39, 0),
(120, 3, 40, 0),
(121, 4, 1, 1),
(122, 4, 2, 0),
(123, 4, 3, 0),
(124, 4, 4, 1),
(125, 4, 5, 0),
(126, 4, 6, 0),
(127, 4, 7, 0),
(128, 4, 8, 0),
(129, 4, 9, 0),
(130, 4, 10, 1),
(131, 4, 11, 0),
(132, 4, 12, 0),
(133, 4, 13, 0),
(134, 4, 14, 0),
(135, 4, 15, 0),
(136, 4, 16, 0),
(137, 4, 17, 0),
(138, 4, 18, 0),
(139, 4, 19, 0),
(140, 4, 20, 0),
(141, 4, 21, 0),
(142, 4, 22, 0),
(143, 4, 23, 0),
(144, 4, 24, 1),
(145, 4, 25, 0),
(146, 4, 26, 0),
(147, 4, 27, 0),
(148, 4, 28, 0),
(149, 4, 29, 0),
(150, 4, 30, 0),
(151, 4, 31, 0),
(152, 4, 32, 0),
(153, 4, 33, 0),
(154, 4, 34, 0),
(155, 4, 35, 0),
(156, 4, 36, 0),
(157, 4, 37, 0),
(158, 4, 38, 0),
(159, 4, 39, 0),
(160, 4, 40, 0),
(161, 5, 1, 2),
(162, 5, 2, 0),
(163, 5, 3, 0),
(164, 5, 4, 0),
(165, 5, 5, 0),
(166, 5, 6, 1),
(167, 5, 7, 1),
(168, 5, 8, 1),
(169, 5, 9, 1),
(170, 5, 10, 0),
(171, 5, 11, 0),
(172, 5, 12, 0),
(173, 5, 13, 0),
(174, 5, 14, 1),
(175, 5, 15, 0),
(176, 5, 16, 0),
(177, 5, 17, 0),
(178, 5, 18, 0),
(179, 5, 19, 0),
(180, 5, 20, 0),
(181, 5, 21, 0),
(182, 5, 22, 0),
(183, 5, 23, 0),
(184, 5, 24, 0),
(185, 5, 25, 0),
(186, 5, 26, 0),
(187, 5, 27, 0),
(188, 5, 28, 0),
(189, 5, 29, 0),
(190, 5, 30, 0),
(191, 5, 31, 0),
(192, 5, 32, 0),
(193, 5, 33, 0),
(194, 5, 34, 0),
(195, 5, 35, 0),
(196, 5, 36, 0),
(197, 5, 37, 0),
(198, 5, 38, 0),
(199, 5, 39, 0),
(200, 5, 40, 0),
(201, 6, 1, 2),
(202, 6, 2, 0),
(203, 6, 3, 0),
(204, 6, 4, 0),
(205, 6, 5, 0),
(206, 6, 6, 1),
(207, 6, 7, 0),
(208, 6, 8, 0),
(209, 6, 9, 1),
(210, 6, 10, 0),
(211, 6, 11, 0),
(212, 6, 12, 0),
(213, 6, 13, 0),
(214, 6, 14, 0),
(215, 6, 15, 0),
(216, 6, 16, 0),
(217, 6, 17, 0),
(218, 6, 18, 0),
(219, 6, 19, 0),
(220, 6, 20, 0),
(221, 6, 21, 0),
(222, 6, 22, 0),
(223, 6, 23, 1),
(224, 6, 24, 0),
(225, 6, 25, 0),
(226, 6, 26, 0),
(227, 6, 27, 0),
(228, 6, 28, 0),
(229, 6, 29, 0),
(230, 6, 30, 0),
(231, 6, 31, 0),
(232, 6, 32, 0),
(233, 6, 33, 0),
(234, 6, 34, 0),
(235, 6, 35, 0),
(236, 6, 36, 0),
(237, 6, 37, 0),
(238, 6, 38, 0),
(239, 6, 39, 0),
(240, 6, 40, 0),
(241, 7, 1, 2),
(242, 7, 2, 0),
(243, 7, 3, 0),
(244, 7, 4, 0),
(245, 7, 5, 0),
(246, 7, 6, 1),
(247, 7, 7, 1),
(248, 7, 8, 0),
(249, 7, 9, 0),
(250, 7, 10, 0),
(251, 7, 11, 0),
(252, 7, 12, 0),
(253, 7, 13, 0),
(254, 7, 14, 0),
(255, 7, 15, 0),
(256, 7, 16, 0),
(257, 7, 17, 0),
(258, 7, 18, 0),
(259, 7, 19, 0),
(260, 7, 20, 0),
(261, 7, 21, 0),
(262, 7, 22, 0),
(263, 7, 23, 0),
(264, 7, 24, 0),
(265, 7, 25, 0),
(266, 7, 26, 0),
(267, 7, 27, 0),
(268, 7, 28, 0),
(269, 7, 29, 0),
(270, 7, 30, 0),
(271, 7, 31, 0),
(272, 7, 32, 0),
(273, 7, 33, 0),
(274, 7, 34, 0),
(275, 7, 35, 0),
(276, 7, 36, 0),
(277, 7, 37, 0),
(278, 7, 38, 0),
(279, 7, 39, 0),
(280, 7, 40, 0),
(281, 8, 1, 2),
(282, 8, 2, 0),
(283, 8, 3, 0),
(284, 8, 4, 0),
(285, 8, 5, 0),
(286, 8, 6, 1),
(287, 8, 7, 1),
(288, 8, 8, 0),
(289, 8, 9, 1),
(290, 8, 10, 0),
(291, 8, 11, 0),
(292, 8, 12, 0),
(293, 8, 13, 0),
(294, 8, 14, 0),
(295, 8, 15, 0),
(296, 8, 16, 0),
(297, 8, 17, 0),
(298, 8, 18, 0),
(299, 8, 19, 0),
(300, 8, 20, 0),
(301, 8, 21, 0),
(302, 8, 22, 0),
(303, 8, 23, 1),
(304, 8, 24, 0),
(305, 8, 25, 0),
(306, 8, 26, 0),
(307, 8, 27, 0),
(308, 8, 28, 0),
(309, 8, 29, 0),
(310, 8, 30, 0),
(311, 8, 31, 0),
(312, 8, 32, 0),
(313, 8, 33, 0),
(314, 8, 34, 0),
(315, 8, 35, 0),
(316, 8, 36, 0),
(317, 8, 37, 0),
(318, 8, 38, 0),
(319, 8, 39, 0),
(320, 8, 40, 0),
(321, 9, 1, 3),
(322, 9, 2, 0),
(323, 9, 3, 0),
(324, 9, 4, 0),
(325, 9, 5, 0),
(326, 9, 6, 0),
(327, 9, 7, 0),
(328, 9, 8, 0),
(329, 9, 9, 0),
(330, 9, 10, 1),
(331, 9, 11, 0),
(332, 9, 12, 1),
(333, 9, 13, 0),
(334, 9, 14, 0),
(335, 9, 15, 1),
(336, 9, 16, 0),
(337, 9, 17, 0),
(338, 9, 18, 0),
(339, 9, 19, 0),
(340, 9, 20, 0),
(341, 9, 21, 0),
(342, 9, 22, 0),
(343, 9, 23, 0),
(344, 9, 24, 0),
(345, 9, 25, 1),
(346, 9, 26, 0),
(347, 9, 27, 0),
(348, 9, 28, 0),
(349, 9, 29, 0),
(350, 9, 30, 0),
(351, 9, 31, 0),
(352, 9, 32, 0),
(353, 9, 33, 0),
(354, 9, 34, 0),
(355, 9, 35, 0),
(356, 9, 36, 0),
(357, 9, 37, 0),
(358, 9, 38, 0),
(359, 9, 39, 0),
(360, 9, 40, 0),
(361, 10, 1, 3),
(362, 10, 2, 0),
(363, 10, 3, 0),
(364, 10, 4, 1),
(365, 10, 5, 0),
(366, 10, 6, 0),
(367, 10, 7, 0),
(368, 10, 8, 0),
(369, 10, 9, 0),
(370, 10, 10, 1),
(371, 10, 11, 0),
(372, 10, 12, 0),
(373, 10, 13, 1),
(374, 10, 14, 1),
(375, 10, 15, 0),
(376, 10, 16, 0),
(377, 10, 17, 0),
(378, 10, 18, 0),
(379, 10, 19, 0),
(380, 10, 20, 0),
(381, 10, 21, 0),
(382, 10, 22, 0),
(383, 10, 23, 0),
(384, 10, 24, 1),
(385, 10, 25, 0),
(386, 10, 26, 0),
(387, 10, 27, 0),
(388, 10, 28, 0),
(389, 10, 29, 0),
(390, 10, 30, 0),
(391, 10, 31, 0),
(392, 10, 32, 0),
(393, 10, 33, 0),
(394, 10, 34, 0),
(395, 10, 35, 0),
(396, 10, 36, 0),
(397, 10, 37, 0),
(398, 10, 38, 0),
(399, 10, 39, 0),
(400, 10, 40, 0),
(401, 11, 1, 3),
(402, 11, 2, 1),
(403, 11, 3, 0),
(404, 11, 4, 0),
(405, 11, 5, 0),
(406, 11, 6, 0),
(407, 11, 7, 0),
(408, 11, 8, 0),
(409, 11, 9, 0),
(410, 11, 10, 0),
(411, 11, 11, 1),
(412, 11, 12, 0),
(413, 11, 13, 0),
(414, 11, 14, 0),
(415, 11, 15, 1),
(416, 11, 16, 0),
(417, 11, 17, 0),
(418, 11, 18, 0),
(419, 11, 19, 0),
(420, 11, 20, 0),
(421, 11, 21, 0),
(422, 11, 22, 0),
(423, 11, 23, 0),
(424, 11, 24, 0),
(425, 11, 25, 0),
(426, 11, 26, 0),
(427, 11, 27, 0),
(428, 11, 28, 0),
(429, 11, 29, 0),
(430, 11, 30, 0),
(431, 11, 31, 0),
(432, 11, 32, 0),
(433, 11, 33, 0),
(434, 11, 34, 0),
(435, 11, 35, 0),
(436, 11, 36, 0),
(437, 11, 37, 0),
(438, 11, 38, 0),
(439, 11, 39, 0),
(440, 11, 40, 0),
(441, 12, 1, 3),
(442, 12, 2, 0),
(443, 12, 3, 0),
(444, 12, 4, 0),
(445, 12, 5, 1),
(446, 12, 6, 0),
(447, 12, 7, 0),
(448, 12, 8, 0),
(449, 12, 9, 0),
(450, 12, 10, 0),
(451, 12, 11, 1),
(452, 12, 12, 0),
(453, 12, 13, 0),
(454, 12, 14, 1),
(455, 12, 15, 0),
(456, 12, 16, 0),
(457, 12, 17, 0),
(458, 12, 18, 0),
(459, 12, 19, 0),
(460, 12, 20, 0),
(461, 12, 21, 0),
(462, 12, 22, 0),
(463, 12, 23, 0),
(464, 12, 24, 0),
(465, 12, 25, 1),
(466, 12, 26, 0),
(467, 12, 27, 0),
(468, 12, 28, 0),
(469, 12, 29, 0),
(470, 12, 30, 0),
(471, 12, 31, 0),
(472, 12, 32, 0),
(473, 12, 33, 0),
(474, 12, 34, 0),
(475, 12, 35, 0),
(476, 12, 36, 0),
(477, 12, 37, 0),
(478, 12, 38, 0),
(479, 12, 39, 0),
(480, 12, 40, 0),
(481, 13, 1, 4),
(482, 13, 2, 0),
(483, 13, 3, 0),
(484, 13, 4, 0),
(485, 13, 5, 0),
(486, 13, 6, 0),
(487, 13, 7, 0),
(488, 13, 8, 0),
(489, 13, 9, 0),
(490, 13, 10, 0),
(491, 13, 11, 0),
(492, 13, 12, 0),
(493, 13, 13, 0),
(494, 13, 14, 1),
(495, 13, 15, 0),
(496, 13, 16, 1),
(497, 13, 17, 1),
(498, 13, 18, 0),
(499, 13, 19, 0),
(500, 13, 20, 0),
(501, 13, 21, 0),
(502, 13, 22, 0),
(503, 13, 23, 0),
(504, 13, 24, 0),
(505, 13, 25, 0),
(506, 13, 26, 0),
(507, 13, 27, 0),
(508, 13, 28, 0),
(509, 13, 29, 0),
(510, 13, 30, 0),
(511, 13, 31, 0),
(512, 13, 32, 0),
(513, 13, 33, 0),
(514, 13, 34, 0),
(515, 13, 35, 0),
(516, 13, 36, 0),
(517, 13, 37, 0),
(518, 13, 38, 0),
(519, 13, 39, 0),
(520, 13, 40, 0),
(521, 14, 1, 4),
(522, 14, 2, 0),
(523, 14, 3, 0),
(524, 14, 4, 0),
(525, 14, 5, 0),
(526, 14, 6, 0),
(527, 14, 7, 0),
(528, 14, 8, 0),
(529, 14, 9, 0),
(530, 14, 10, 1),
(531, 14, 11, 0),
(532, 14, 12, 0),
(533, 14, 13, 0),
(534, 14, 14, 0),
(535, 14, 15, 0),
(536, 14, 16, 0),
(537, 14, 17, 1),
(538, 14, 18, 0),
(539, 14, 19, 0),
(540, 14, 20, 0),
(541, 14, 21, 0),
(542, 14, 22, 0),
(543, 14, 23, 0),
(544, 14, 24, 0),
(545, 14, 25, 0),
(546, 14, 26, 0),
(547, 14, 27, 0),
(548, 14, 28, 0),
(549, 14, 29, 0),
(550, 14, 30, 0),
(551, 14, 31, 0),
(552, 14, 32, 0),
(553, 14, 33, 0),
(554, 14, 34, 0),
(555, 14, 35, 0),
(556, 14, 36, 0),
(557, 14, 37, 0),
(558, 14, 38, 0),
(559, 14, 39, 0),
(560, 14, 40, 0),
(561, 15, 1, 4),
(562, 15, 2, 1),
(563, 15, 3, 0),
(564, 15, 4, 0),
(565, 15, 5, 0),
(566, 15, 6, 0),
(567, 15, 7, 0),
(568, 15, 8, 0),
(569, 15, 9, 0),
(570, 15, 10, 0),
(571, 15, 11, 1),
(572, 15, 12, 0),
(573, 15, 13, 0),
(574, 15, 14, 1),
(575, 15, 15, 0),
(576, 15, 16, 0),
(577, 15, 17, 0),
(578, 15, 18, 0),
(579, 15, 19, 0),
(580, 15, 20, 0),
(581, 15, 21, 0),
(582, 15, 22, 0),
(583, 15, 23, 0),
(584, 15, 24, 0),
(585, 15, 25, 0),
(586, 15, 26, 0),
(587, 15, 27, 0),
(588, 15, 28, 0),
(589, 15, 29, 0),
(590, 15, 30, 0),
(591, 15, 31, 0),
(592, 15, 32, 0),
(593, 15, 33, 0),
(594, 15, 34, 0),
(595, 15, 35, 0),
(596, 15, 36, 0),
(597, 15, 37, 0),
(598, 15, 38, 0),
(599, 15, 39, 0),
(600, 15, 40, 0),
(601, 16, 1, 5),
(602, 16, 2, 0),
(603, 16, 3, 0),
(604, 16, 4, 0),
(605, 16, 5, 0),
(606, 16, 6, 0),
(607, 16, 7, 0),
(608, 16, 8, 0),
(609, 16, 9, 0),
(610, 16, 10, 0),
(611, 16, 11, 0),
(612, 16, 12, 0),
(613, 16, 13, 0),
(614, 16, 14, 0),
(615, 16, 15, 0),
(616, 16, 16, 0),
(617, 16, 17, 0),
(618, 16, 18, 1),
(619, 16, 19, 0),
(620, 16, 20, 1),
(621, 16, 21, 1),
(622, 16, 22, 0),
(623, 16, 23, 0),
(624, 16, 24, 0),
(625, 16, 25, 0),
(626, 16, 26, 0),
(627, 16, 27, 0),
(628, 16, 28, 0),
(629, 16, 29, 0),
(630, 16, 30, 0),
(631, 16, 31, 0),
(632, 16, 32, 0),
(633, 16, 33, 0),
(634, 16, 34, 0),
(635, 16, 35, 0),
(636, 16, 36, 0),
(637, 16, 37, 0),
(638, 16, 38, 0),
(639, 16, 39, 0),
(640, 16, 40, 0),
(641, 17, 1, 5),
(642, 17, 2, 0),
(643, 17, 3, 0),
(644, 17, 4, 0),
(645, 17, 5, 0),
(646, 17, 6, 0),
(647, 17, 7, 0),
(648, 17, 8, 0),
(649, 17, 9, 0),
(650, 17, 10, 0),
(651, 17, 11, 0),
(652, 17, 12, 0),
(653, 17, 13, 0),
(654, 17, 14, 0),
(655, 17, 15, 0),
(656, 17, 16, 0),
(657, 17, 17, 0),
(658, 17, 18, 0),
(659, 17, 19, 1),
(660, 17, 20, 0),
(661, 17, 21, 1),
(662, 17, 22, 0),
(663, 17, 23, 0),
(664, 17, 24, 0),
(665, 17, 25, 0),
(666, 17, 26, 0),
(667, 17, 27, 0),
(668, 17, 28, 0),
(669, 17, 29, 0),
(670, 17, 30, 0),
(671, 17, 31, 0),
(672, 17, 32, 0),
(673, 17, 33, 0),
(674, 17, 34, 0),
(675, 17, 35, 0),
(676, 17, 36, 0),
(677, 17, 37, 0),
(678, 17, 38, 0),
(679, 17, 39, 0),
(680, 17, 40, 0),
(681, 18, 1, 6),
(682, 18, 2, 0),
(683, 18, 3, 0),
(684, 18, 4, 0),
(685, 18, 5, 0),
(686, 18, 6, 0),
(687, 18, 7, 0),
(688, 18, 8, 0),
(689, 18, 9, 0),
(690, 18, 10, 0),
(691, 18, 11, 1),
(692, 18, 12, 0),
(693, 18, 13, 0),
(694, 18, 14, 0),
(695, 18, 15, 0),
(696, 18, 16, 0),
(697, 18, 17, 0),
(698, 18, 18, 0),
(699, 18, 19, 0),
(700, 18, 20, 0),
(701, 18, 21, 0),
(702, 18, 22, 1),
(703, 18, 23, 1),
(704, 18, 24, 0),
(705, 18, 25, 0),
(706, 18, 26, 0),
(707, 18, 27, 0),
(708, 18, 28, 0),
(709, 18, 29, 0),
(710, 18, 30, 0),
(711, 18, 31, 0),
(712, 18, 32, 0),
(713, 18, 33, 0),
(714, 18, 34, 0),
(715, 18, 35, 0),
(716, 18, 36, 0),
(717, 18, 37, 0),
(718, 18, 38, 0),
(719, 18, 39, 0),
(720, 18, 40, 0),
(721, 19, 1, 6),
(722, 19, 2, 0),
(723, 19, 3, 0),
(724, 19, 4, 0),
(725, 19, 5, 0),
(726, 19, 6, 1),
(727, 19, 7, 0),
(728, 19, 8, 0),
(729, 19, 9, 0),
(730, 19, 10, 1),
(731, 19, 11, 1),
(732, 19, 12, 0),
(733, 19, 13, 0),
(734, 19, 14, 0),
(735, 19, 15, 0),
(736, 19, 16, 0),
(737, 19, 17, 0),
(738, 19, 18, 0),
(739, 19, 19, 0),
(740, 19, 20, 0),
(741, 19, 21, 0),
(742, 19, 22, 0),
(743, 19, 23, 0),
(744, 19, 24, 0),
(745, 19, 25, 0),
(746, 19, 26, 0),
(747, 19, 27, 0),
(748, 19, 28, 0),
(749, 19, 29, 0),
(750, 19, 30, 0),
(751, 19, 31, 0),
(752, 19, 32, 0),
(753, 19, 33, 0),
(754, 19, 34, 0),
(755, 19, 35, 0),
(756, 19, 36, 0),
(757, 19, 37, 0),
(758, 19, 38, 0),
(759, 19, 39, 0),
(760, 19, 40, 0),
(761, 20, 1, 6),
(762, 20, 2, 0),
(763, 20, 3, 0),
(764, 20, 4, 0),
(765, 20, 5, 0),
(766, 20, 6, 1),
(767, 20, 7, 1),
(768, 20, 8, 0),
(769, 20, 9, 1),
(770, 20, 10, 0),
(771, 20, 11, 0),
(772, 20, 12, 0),
(773, 20, 13, 0),
(774, 20, 14, 1),
(775, 20, 15, 0),
(776, 20, 16, 0),
(777, 20, 17, 0),
(778, 20, 18, 0),
(779, 20, 19, 0),
(780, 20, 20, 0),
(781, 20, 21, 0),
(782, 20, 22, 1),
(783, 20, 23, 0),
(784, 20, 24, 0),
(785, 20, 25, 0),
(786, 20, 26, 0),
(787, 20, 27, 0),
(788, 20, 28, 0),
(789, 20, 29, 0),
(790, 20, 30, 0),
(791, 20, 31, 0),
(792, 20, 32, 0),
(793, 20, 33, 0),
(794, 20, 34, 0),
(795, 20, 35, 0),
(796, 20, 36, 0),
(797, 20, 37, 0),
(798, 20, 38, 0),
(799, 20, 39, 0),
(800, 20, 40, 0),
(801, 21, 1, 6),
(802, 21, 2, 1),
(803, 21, 3, 0),
(804, 21, 4, 0),
(805, 21, 5, 0),
(806, 21, 6, 0),
(807, 21, 7, 0),
(808, 21, 8, 0),
(809, 21, 9, 0),
(810, 21, 10, 1),
(811, 21, 11, 0),
(812, 21, 12, 0),
(813, 21, 13, 0),
(814, 21, 14, 0),
(815, 21, 15, 0),
(816, 21, 16, 0),
(817, 21, 17, 0),
(818, 21, 18, 0),
(819, 21, 19, 0),
(820, 21, 20, 0),
(821, 21, 21, 1),
(822, 21, 22, 0),
(823, 21, 23, 0),
(824, 21, 24, 0),
(825, 21, 25, 0),
(826, 21, 26, 0),
(827, 21, 27, 0),
(828, 21, 28, 0),
(829, 21, 29, 0),
(830, 21, 30, 0),
(831, 21, 31, 0),
(832, 21, 32, 0),
(833, 21, 33, 0),
(834, 21, 34, 0),
(835, 21, 35, 0),
(836, 21, 36, 0),
(837, 21, 37, 0),
(838, 21, 38, 0),
(839, 21, 39, 0),
(840, 21, 40, 0),
(841, 22, 1, 6),
(842, 22, 2, 0),
(843, 22, 3, 0),
(844, 22, 4, 0),
(845, 22, 5, 0),
(846, 22, 6, 0),
(847, 22, 7, 0),
(848, 22, 8, 0),
(849, 22, 9, 0),
(850, 22, 10, 0),
(851, 22, 11, 1),
(852, 22, 12, 0),
(853, 22, 13, 0),
(854, 22, 14, 1),
(855, 22, 15, 0),
(856, 22, 16, 0),
(857, 22, 17, 0),
(858, 22, 18, 0),
(859, 22, 19, 0),
(860, 22, 20, 0),
(861, 22, 21, 0),
(862, 22, 22, 1),
(863, 22, 23, 1),
(864, 22, 24, 0),
(865, 22, 25, 0),
(866, 22, 26, 0),
(867, 22, 27, 0),
(868, 22, 28, 0),
(869, 22, 29, 0),
(870, 22, 30, 0),
(871, 22, 31, 0),
(872, 22, 32, 0),
(873, 22, 33, 0),
(874, 22, 34, 0),
(875, 22, 35, 0),
(876, 22, 36, 0),
(877, 22, 37, 0),
(878, 22, 38, 0),
(879, 22, 39, 0),
(880, 22, 40, 0),
(881, 23, 1, 7),
(882, 23, 2, 1),
(883, 23, 3, 0),
(884, 23, 4, 0),
(885, 23, 5, 0),
(886, 23, 6, 0),
(887, 23, 7, 0),
(888, 23, 8, 0),
(889, 23, 9, 0),
(890, 23, 10, 0),
(891, 23, 11, 0),
(892, 23, 12, 0),
(893, 23, 13, 0),
(894, 23, 14, 0),
(895, 23, 15, 1),
(896, 23, 16, 0),
(897, 23, 17, 0),
(898, 23, 18, 0),
(899, 23, 19, 0),
(900, 23, 20, 0),
(901, 23, 21, 0),
(902, 23, 22, 0),
(903, 23, 23, 0),
(904, 23, 24, 0),
(905, 23, 25, 0),
(906, 23, 26, 0),
(907, 23, 27, 0),
(908, 23, 28, 0),
(909, 23, 29, 0),
(910, 23, 30, 0),
(911, 23, 31, 0),
(912, 23, 32, 0),
(913, 23, 33, 0),
(914, 23, 34, 0),
(915, 23, 35, 0),
(916, 23, 36, 0),
(917, 23, 37, 0),
(918, 23, 38, 0),
(919, 23, 39, 0),
(920, 23, 40, 0),
(921, 24, 1, 7),
(922, 24, 2, 0),
(923, 24, 3, 0),
(924, 24, 4, 1),
(925, 24, 5, 0),
(926, 24, 6, 0),
(927, 24, 7, 0),
(928, 24, 8, 0),
(929, 24, 9, 0),
(930, 24, 10, 1),
(931, 24, 11, 0),
(932, 24, 12, 0),
(933, 24, 13, 0),
(934, 24, 14, 0),
(935, 24, 15, 0),
(936, 24, 16, 0),
(937, 24, 17, 0),
(938, 24, 18, 0),
(939, 24, 19, 0),
(940, 24, 20, 0),
(941, 24, 21, 0),
(942, 24, 22, 0),
(943, 24, 23, 0),
(944, 24, 24, 0),
(945, 24, 25, 1),
(946, 24, 26, 1),
(947, 24, 27, 0),
(948, 24, 28, 0),
(949, 24, 29, 0),
(950, 24, 30, 0),
(951, 24, 31, 0),
(952, 24, 32, 0),
(953, 24, 33, 0),
(954, 24, 34, 0),
(955, 24, 35, 0),
(956, 24, 36, 0),
(957, 24, 37, 0),
(958, 24, 38, 0),
(959, 24, 39, 0),
(960, 24, 40, 0),
(961, 25, 1, 7),
(962, 25, 2, 0),
(963, 25, 3, 0),
(964, 25, 4, 1),
(965, 25, 5, 1),
(966, 25, 6, 0),
(967, 25, 7, 0),
(968, 25, 8, 0),
(969, 25, 9, 0),
(970, 25, 10, 0),
(971, 25, 11, 0),
(972, 25, 12, 0),
(973, 25, 13, 0),
(974, 25, 14, 0),
(975, 25, 15, 0),
(976, 25, 16, 0),
(977, 25, 17, 0),
(978, 25, 18, 0),
(979, 25, 19, 0),
(980, 25, 20, 0),
(981, 25, 21, 0),
(982, 25, 22, 0),
(983, 25, 23, 0),
(984, 25, 24, 1),
(985, 25, 25, 1),
(986, 25, 26, 0),
(987, 25, 27, 0),
(988, 25, 28, 0),
(989, 25, 29, 0),
(990, 25, 30, 0),
(991, 25, 31, 0),
(992, 25, 32, 0),
(993, 25, 33, 0),
(994, 25, 34, 0),
(995, 25, 35, 0),
(996, 25, 36, 0),
(997, 25, 37, 0),
(998, 25, 38, 0),
(999, 25, 39, 0),
(1000, 25, 40, 0),
(1001, 26, 1, 8),
(1002, 26, 2, 0),
(1003, 26, 3, 0),
(1004, 26, 4, 0),
(1005, 26, 5, 0),
(1006, 26, 6, 0),
(1007, 26, 7, 0),
(1008, 26, 8, 0),
(1009, 26, 9, 0),
(1010, 26, 10, 0),
(1011, 26, 11, 0),
(1012, 26, 12, 0),
(1013, 26, 13, 0),
(1014, 26, 14, 0),
(1015, 26, 15, 0),
(1016, 26, 16, 0),
(1017, 26, 17, 0),
(1018, 26, 18, 0),
(1019, 26, 19, 0),
(1020, 26, 20, 0),
(1021, 26, 21, 0),
(1022, 26, 22, 0),
(1023, 26, 23, 0),
(1024, 26, 24, 0),
(1025, 26, 25, 0),
(1026, 26, 26, 0),
(1027, 26, 27, 1),
(1028, 26, 28, 0),
(1029, 26, 29, 0),
(1030, 26, 30, 1),
(1031, 26, 31, 0),
(1032, 26, 32, 0),
(1033, 26, 33, 0),
(1034, 26, 34, 0),
(1035, 26, 35, 0),
(1036, 26, 36, 0),
(1037, 26, 37, 0),
(1038, 26, 38, 0),
(1039, 26, 39, 0),
(1040, 26, 40, 0),
(1041, 27, 1, 8),
(1042, 27, 2, 0),
(1043, 27, 3, 0),
(1044, 27, 4, 0),
(1045, 27, 5, 0),
(1046, 27, 6, 0),
(1047, 27, 7, 0),
(1048, 27, 8, 0),
(1049, 27, 9, 0),
(1050, 27, 10, 0),
(1051, 27, 11, 0),
(1052, 27, 12, 0),
(1053, 27, 13, 0),
(1054, 27, 14, 0),
(1055, 27, 15, 0),
(1056, 27, 16, 0),
(1057, 27, 17, 0),
(1058, 27, 18, 0),
(1059, 27, 19, 0),
(1060, 27, 20, 0),
(1061, 27, 21, 0),
(1062, 27, 22, 0),
(1063, 27, 23, 0),
(1064, 27, 24, 0),
(1065, 27, 25, 0),
(1066, 27, 26, 0),
(1067, 27, 27, 0),
(1068, 27, 28, 0),
(1069, 27, 29, 1),
(1070, 27, 30, 0),
(1071, 27, 31, 0),
(1072, 27, 32, 0),
(1073, 27, 33, 0),
(1074, 27, 34, 0),
(1075, 27, 35, 0),
(1076, 27, 36, 0),
(1077, 27, 37, 0),
(1078, 27, 38, 0),
(1079, 27, 39, 0),
(1080, 27, 40, 0),
(1081, 28, 1, 9),
(1082, 28, 2, 0),
(1083, 28, 3, 0),
(1084, 28, 4, 0),
(1085, 28, 5, 0),
(1086, 28, 6, 0),
(1087, 28, 7, 0),
(1088, 28, 8, 0),
(1089, 28, 9, 0),
(1090, 28, 10, 0),
(1091, 28, 11, 0),
(1092, 28, 12, 0),
(1093, 28, 13, 0),
(1094, 28, 14, 0),
(1095, 28, 15, 0),
(1096, 28, 16, 0),
(1097, 28, 17, 0),
(1098, 28, 18, 0),
(1099, 28, 19, 0),
(1100, 28, 20, 0),
(1101, 28, 21, 0),
(1102, 28, 22, 0),
(1103, 28, 23, 0),
(1104, 28, 24, 0),
(1105, 28, 25, 0),
(1106, 28, 26, 0),
(1107, 28, 27, 0),
(1108, 28, 28, 0),
(1109, 28, 29, 0),
(1110, 28, 30, 0),
(1111, 28, 31, 0),
(1112, 28, 32, 1),
(1113, 28, 33, 0),
(1114, 28, 34, 0),
(1115, 28, 35, 1),
(1116, 28, 36, 1),
(1117, 28, 37, 0),
(1118, 28, 38, 0),
(1119, 28, 39, 0),
(1120, 28, 40, 0),
(1121, 29, 1, 9),
(1122, 29, 2, 0),
(1123, 29, 3, 0),
(1124, 29, 4, 0),
(1125, 29, 5, 0),
(1126, 29, 6, 0),
(1127, 29, 7, 0),
(1128, 29, 8, 0),
(1129, 29, 9, 0),
(1130, 29, 10, 0),
(1131, 29, 11, 0),
(1132, 29, 12, 0),
(1133, 29, 13, 0),
(1134, 29, 14, 0),
(1135, 29, 15, 0),
(1136, 29, 16, 0),
(1137, 29, 17, 0),
(1138, 29, 18, 0),
(1139, 29, 19, 0),
(1140, 29, 20, 0),
(1141, 29, 21, 0),
(1142, 29, 22, 0),
(1143, 29, 23, 0),
(1144, 29, 24, 0),
(1145, 29, 25, 0),
(1146, 29, 26, 0),
(1147, 29, 27, 0),
(1148, 29, 28, 0),
(1149, 29, 29, 0),
(1150, 29, 30, 0),
(1151, 29, 31, 1),
(1152, 29, 32, 0),
(1153, 29, 33, 1),
(1154, 29, 34, 0),
(1155, 29, 35, 1),
(1156, 29, 36, 0),
(1157, 29, 37, 0),
(1158, 29, 38, 0),
(1159, 29, 39, 0),
(1160, 29, 40, 0),
(1161, 30, 1, 9),
(1162, 30, 2, 0),
(1163, 30, 3, 0),
(1164, 30, 4, 0),
(1165, 30, 5, 0),
(1166, 30, 6, 0),
(1167, 30, 7, 0),
(1168, 30, 8, 0),
(1169, 30, 9, 0),
(1170, 30, 10, 0),
(1171, 30, 11, 0),
(1172, 30, 12, 0),
(1173, 30, 13, 0),
(1174, 30, 14, 0),
(1175, 30, 15, 0),
(1176, 30, 16, 0),
(1177, 30, 17, 0),
(1178, 30, 18, 0),
(1179, 30, 19, 0),
(1180, 30, 20, 0),
(1181, 30, 21, 0),
(1182, 30, 22, 0),
(1183, 30, 23, 0),
(1184, 30, 24, 0),
(1185, 30, 25, 0),
(1186, 30, 26, 0),
(1187, 30, 27, 0),
(1188, 30, 28, 0),
(1189, 30, 29, 0),
(1190, 30, 30, 0),
(1191, 30, 31, 0),
(1192, 30, 32, 0),
(1193, 30, 33, 0),
(1194, 30, 34, 1),
(1195, 30, 35, 1),
(1196, 30, 36, 0),
(1197, 30, 37, 0),
(1198, 30, 38, 0),
(1199, 30, 39, 0),
(1200, 30, 40, 0),
(1201, 31, 1, 10),
(1202, 31, 2, 0),
(1203, 31, 3, 0),
(1204, 31, 4, 0),
(1205, 31, 5, 0),
(1206, 31, 6, 0),
(1207, 31, 7, 0),
(1208, 31, 8, 0),
(1209, 31, 9, 0),
(1210, 31, 10, 0),
(1211, 31, 11, 0),
(1212, 31, 12, 0),
(1213, 31, 13, 0),
(1214, 31, 14, 0),
(1215, 31, 15, 0),
(1216, 31, 16, 0),
(1217, 31, 17, 0),
(1218, 31, 18, 0),
(1219, 31, 19, 0),
(1220, 31, 20, 0),
(1221, 31, 21, 0),
(1222, 31, 22, 0),
(1223, 31, 23, 0),
(1224, 31, 24, 0),
(1225, 31, 25, 0),
(1226, 31, 26, 0),
(1227, 31, 27, 0),
(1228, 31, 28, 0),
(1229, 31, 29, 0),
(1230, 31, 30, 0),
(1231, 31, 31, 0),
(1232, 31, 32, 0),
(1233, 31, 33, 0),
(1234, 31, 34, 0),
(1235, 31, 35, 0),
(1236, 31, 36, 0),
(1237, 31, 37, 1),
(1238, 31, 38, 1),
(1239, 31, 39, 0),
(1240, 31, 40, 0),
(1241, 32, 1, 10),
(1242, 32, 2, 0),
(1243, 32, 3, 0),
(1244, 32, 4, 0),
(1245, 32, 5, 0),
(1246, 32, 6, 0),
(1247, 32, 7, 0),
(1248, 32, 8, 0),
(1249, 32, 9, 0),
(1250, 32, 10, 0),
(1251, 32, 11, 0),
(1252, 32, 12, 0),
(1253, 32, 13, 0),
(1254, 32, 14, 0),
(1255, 32, 15, 0),
(1256, 32, 16, 0),
(1257, 32, 17, 0),
(1258, 32, 18, 0),
(1259, 32, 19, 0),
(1260, 32, 20, 0),
(1261, 32, 21, 0),
(1262, 32, 22, 0),
(1263, 32, 23, 0),
(1264, 32, 24, 0),
(1265, 32, 25, 0),
(1266, 32, 26, 0),
(1267, 32, 27, 0),
(1268, 32, 28, 0),
(1269, 32, 29, 0),
(1270, 32, 30, 0),
(1271, 32, 31, 0),
(1272, 32, 32, 0),
(1273, 32, 33, 0),
(1274, 32, 34, 0),
(1275, 32, 35, 0),
(1276, 32, 36, 0),
(1277, 32, 37, 0),
(1278, 32, 38, 0),
(1279, 32, 39, 1),
(1280, 32, 40, 1),
(1281, 132, 1, 7),
(1282, 132, 2, 0),
(1283, 132, 3, 0),
(1284, 132, 4, 0),
(1285, 132, 5, 0),
(1286, 132, 6, 0),
(1287, 132, 7, 0),
(1288, 132, 8, 0),
(1289, 132, 9, 0),
(1290, 132, 10, 0),
(1291, 132, 11, 0),
(1292, 132, 12, 0),
(1293, 132, 13, 0),
(1294, 132, 14, 0),
(1295, 132, 15, 0),
(1296, 132, 16, 0),
(1297, 132, 17, 0),
(1298, 132, 18, 0),
(1299, 132, 19, 0),
(1300, 132, 20, 0),
(1301, 132, 21, 0),
(1302, 132, 22, 0),
(1303, 132, 23, 0),
(1304, 132, 24, 1),
(1305, 132, 25, 0),
(1306, 132, 26, 1),
(1307, 132, 27, 0),
(1308, 132, 28, 0),
(1309, 132, 29, 0),
(1310, 132, 30, 0),
(1311, 132, 31, 0),
(1312, 132, 32, 0),
(1313, 132, 33, 0),
(1314, 132, 34, 0),
(1315, 132, 35, 0),
(1316, 132, 36, 0),
(1317, 132, 37, 0),
(1318, 132, 38, 0),
(1319, 132, 39, 0),
(1320, 132, 40, 0),
(1321, 103, 1, 7),
(1322, 103, 2, 0),
(1323, 103, 3, 0),
(1324, 103, 4, 0),
(1325, 103, 5, 0),
(1326, 103, 6, 0),
(1327, 103, 7, 0),
(1328, 103, 8, 0),
(1329, 103, 9, 0),
(1330, 103, 10, 0),
(1331, 103, 11, 0),
(1332, 103, 12, 0),
(1333, 103, 13, 0),
(1334, 103, 14, 0),
(1335, 103, 15, 0),
(1336, 103, 16, 0),
(1337, 103, 17, 0),
(1338, 103, 18, 0),
(1339, 103, 19, 0),
(1340, 103, 20, 0),
(1341, 103, 21, 0),
(1342, 103, 22, 0),
(1343, 103, 23, 0),
(1344, 103, 24, 1),
(1345, 103, 25, 0),
(1346, 103, 26, 0),
(1347, 103, 27, 0),
(1348, 103, 28, 0),
(1349, 103, 29, 0),
(1350, 103, 30, 0),
(1351, 103, 31, 0),
(1352, 103, 32, 0),
(1353, 103, 33, 0),
(1354, 103, 34, 0),
(1355, 103, 35, 0),
(1356, 103, 36, 0),
(1357, 103, 37, 0),
(1358, 103, 38, 0),
(1359, 103, 39, 0),
(1360, 103, 40, 0),
(1361, 105, 1, 7),
(1362, 105, 2, 0),
(1363, 105, 3, 0),
(1364, 105, 4, 0),
(1365, 105, 5, 0),
(1366, 105, 6, 0),
(1367, 105, 7, 0),
(1368, 105, 8, 0),
(1369, 105, 9, 0),
(1370, 105, 10, 0),
(1371, 105, 11, 0),
(1372, 105, 12, 0),
(1373, 105, 13, 0),
(1374, 105, 14, 0),
(1375, 105, 15, 0),
(1376, 105, 16, 0),
(1377, 105, 17, 0),
(1378, 105, 18, 0),
(1379, 105, 19, 0),
(1380, 105, 20, 0),
(1381, 105, 21, 0),
(1382, 105, 22, 0),
(1383, 105, 23, 0),
(1384, 105, 24, 0),
(1385, 105, 25, 0),
(1386, 105, 26, 1),
(1387, 105, 27, 0),
(1388, 105, 28, 0),
(1389, 105, 29, 0),
(1390, 105, 30, 0),
(1391, 105, 31, 0),
(1392, 105, 32, 0),
(1393, 105, 33, 0),
(1394, 105, 34, 0),
(1395, 105, 35, 0),
(1396, 105, 36, 0),
(1397, 105, 37, 0),
(1398, 105, 38, 0),
(1399, 105, 39, 0),
(1400, 105, 40, 0);

-- --------------------------------------------------------

--
-- Table structure for table `datas`
--

CREATE TABLE IF NOT EXISTS `datas` (
  `id_datas` int(11) NOT NULL,
  `nama_data` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `datas`
--

INSERT INTO `datas` (`id_datas`, `nama_data`) VALUES
(1, 'data1'),
(2, 'data2'),
(3, 'data3'),
(4, 'data4'),
(5, 'data5'),
(6, 'data6'),
(7, 'data7'),
(8, 'data8'),
(9, 'data9'),
(10, 'data10'),
(11, 'data11'),
(12, 'data12'),
(13, 'data13'),
(14, 'data14'),
(15, 'data15'),
(16, 'data16'),
(17, 'data17'),
(18, 'data18'),
(19, 'data19'),
(20, 'data20'),
(21, 'data21'),
(22, 'data22'),
(23, 'data23'),
(24, 'data24'),
(25, 'data25'),
(26, 'data26'),
(27, 'data27'),
(28, 'data28'),
(29, 'data29'),
(30, 'data30'),
(31, 'data31'),
(32, 'data32'),
(132, 'data132'),
(103, 'data103'),
(105, 'data105');

-- --------------------------------------------------------

--
-- Table structure for table `datas_test`
--

CREATE TABLE IF NOT EXISTS `datas_test` (
  `id_datas` int(11) NOT NULL,
  `nama_data` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `datas_test`
--

INSERT INTO `datas_test` (`id_datas`, `nama_data`) VALUES
(161, 'data161'),
(102, 'data102'),
(265, 'data265'),
(268, 'data268');

-- --------------------------------------------------------

--
-- Table structure for table `data_test`
--

CREATE TABLE IF NOT EXISTS `data_test` (
  `id_data` int(11) NOT NULL AUTO_INCREMENT,
  `id_datas` int(11) NOT NULL,
  `id_kriteria` int(11) NOT NULL,
  `id_parameter` int(11) NOT NULL,
  PRIMARY KEY (`id_data`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2081 ;

--
-- Dumping data for table `data_test`
--

INSERT INTO `data_test` (`id_data`, `id_datas`, `id_kriteria`, `id_parameter`) VALUES
(1921, 161, 1, 1),
(1922, 161, 2, 1),
(1923, 161, 3, 1),
(1924, 161, 4, 1),
(1925, 161, 5, 1),
(1926, 161, 6, 0),
(1927, 161, 7, 0),
(1928, 161, 8, 0),
(1929, 161, 9, 0),
(1930, 161, 10, 0),
(1931, 161, 11, 0),
(1932, 161, 12, 0),
(1933, 161, 13, 0),
(1934, 161, 14, 0),
(1935, 161, 15, 0),
(1936, 161, 16, 0),
(1937, 161, 17, 0),
(1938, 161, 18, 0),
(1939, 161, 19, 0),
(1940, 161, 20, 0),
(1941, 161, 21, 0),
(1942, 161, 22, 0),
(1943, 161, 23, 0),
(1944, 161, 24, 0),
(1945, 161, 25, 0),
(1946, 161, 26, 0),
(1947, 161, 27, 0),
(1948, 161, 28, 0),
(1949, 161, 29, 0),
(1950, 161, 30, 0),
(1951, 161, 31, 0),
(1952, 161, 32, 0),
(1953, 161, 33, 0),
(1954, 161, 34, 0),
(1955, 161, 35, 0),
(1956, 161, 36, 0),
(1957, 161, 37, 0),
(1958, 161, 38, 0),
(1959, 161, 39, 0),
(1960, 161, 40, 0),
(1961, 102, 1, 1),
(1962, 102, 2, 0),
(1963, 102, 3, 1),
(1964, 102, 4, 1),
(1965, 102, 5, 0),
(1966, 102, 6, 0),
(1967, 102, 7, 0),
(1968, 102, 8, 0),
(1969, 102, 9, 0),
(1970, 102, 10, 0),
(1971, 102, 11, 0),
(1972, 102, 12, 0),
(1973, 102, 13, 0),
(1974, 102, 14, 0),
(1975, 102, 15, 0),
(1976, 102, 16, 0),
(1977, 102, 17, 0),
(1978, 102, 18, 0),
(1979, 102, 19, 0),
(1980, 102, 20, 0),
(1981, 102, 21, 0),
(1982, 102, 22, 0),
(1983, 102, 23, 0),
(1984, 102, 24, 1),
(1985, 102, 25, 1),
(1986, 102, 26, 0),
(1987, 102, 27, 0),
(1988, 102, 28, 0),
(1989, 102, 29, 0),
(1990, 102, 30, 0),
(1991, 102, 31, 0),
(1992, 102, 32, 0),
(1993, 102, 33, 0),
(1994, 102, 34, 0),
(1995, 102, 35, 0),
(1996, 102, 36, 0),
(1997, 102, 37, 0),
(1998, 102, 38, 0),
(1999, 102, 39, 0),
(2000, 102, 40, 0),
(2001, 265, 1, 2),
(2002, 265, 2, 0),
(2003, 265, 3, 0),
(2004, 265, 4, 0),
(2005, 265, 5, 0),
(2006, 265, 6, 0),
(2007, 265, 7, 1),
(2008, 265, 8, 1),
(2009, 265, 9, 1),
(2010, 265, 10, 0),
(2011, 265, 11, 0),
(2012, 265, 12, 0),
(2013, 265, 13, 0),
(2014, 265, 14, 1),
(2015, 265, 15, 0),
(2016, 265, 16, 0),
(2017, 265, 17, 0),
(2018, 265, 18, 0),
(2019, 265, 19, 0),
(2020, 265, 20, 0),
(2021, 265, 21, 0),
(2022, 265, 22, 0),
(2023, 265, 23, 0),
(2024, 265, 24, 0),
(2025, 265, 25, 0),
(2026, 265, 26, 0),
(2027, 265, 27, 0),
(2028, 265, 28, 0),
(2029, 265, 29, 0),
(2030, 265, 30, 0),
(2031, 265, 31, 0),
(2032, 265, 32, 0),
(2033, 265, 33, 0),
(2034, 265, 34, 0),
(2035, 265, 35, 0),
(2036, 265, 36, 0),
(2037, 265, 37, 0),
(2038, 265, 38, 0),
(2039, 265, 39, 0),
(2040, 265, 40, 0),
(2041, 268, 1, 3),
(2042, 268, 2, 0),
(2043, 268, 3, 0),
(2044, 268, 4, 0),
(2045, 268, 5, 1),
(2046, 268, 6, 0),
(2047, 268, 7, 0),
(2048, 268, 8, 0),
(2049, 268, 9, 0),
(2050, 268, 10, 0),
(2051, 268, 11, 1),
(2052, 268, 12, 0),
(2053, 268, 13, 0),
(2054, 268, 14, 1),
(2055, 268, 15, 0),
(2056, 268, 16, 0),
(2057, 268, 17, 0),
(2058, 268, 18, 0),
(2059, 268, 19, 0),
(2060, 268, 20, 0),
(2061, 268, 21, 0),
(2062, 268, 22, 0),
(2063, 268, 23, 0),
(2064, 268, 24, 0),
(2065, 268, 25, 1),
(2066, 268, 26, 0),
(2067, 268, 27, 0),
(2068, 268, 28, 0),
(2069, 268, 29, 0),
(2070, 268, 30, 0),
(2071, 268, 31, 0),
(2072, 268, 32, 0),
(2073, 268, 33, 0),
(2074, 268, 34, 0),
(2075, 268, 35, 0),
(2076, 268, 36, 0),
(2077, 268, 37, 0),
(2078, 268, 38, 0),
(2079, 268, 39, 0),
(2080, 268, 40, 0);

-- --------------------------------------------------------

--
-- Table structure for table `kriteria`
--

CREATE TABLE IF NOT EXISTS `kriteria` (
  `id_kriteria` int(11) NOT NULL,
  `kriteria` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kriteria`
--

INSERT INTO `kriteria` (`id_kriteria`, `kriteria`) VALUES
(1, 'Kerusakan'),
(2, 'iPhone tidak dapat mengisi daya'),
(3, 'iPhone Status charger error'),
(4, 'Baterai iPhone cepat habis'),
(5, 'iPhone dicharging tetapi daya berkurang '),
(6, 'Layar iPhone tidak bisa disentuh sama sekali'),
(7, 'Layar iPhone bergerak sendiri'),
(8, 'Layar iPhone kurang sensitive terhadap sentuhan'),
(9, 'Layar sentuh iPhone tidak berfungsi seagian'),
(10, 'iPhone tidak ada tampilan (Layar blank hitam)'),
(11, 'iPhone layar bluescreeen'),
(12, 'iPhone kondisi hidup, tetapi layar blank hitam'),
(13, 'iPhone blank hitam, tetapi disambungkan ke PC masi'),
(14, 'Kualitas warna atau gambar berkurang secara otomat'),
(15, 'iPhone mati total'),
(16, 'iPhone muncul tampilan, tetapi gelap tidak ada cah'),
(17, 'Layar iPhone yang hitam diterangi cahaya, akan ter'),
(18, 'iPhone no service (tidak ada layanan sinyal)'),
(19, 'Sinyal tetap searching terus - menerus'),
(20, 'iPhone tidak tidak bisa menerima telepon dan melak'),
(21, 'iPhone tidak terdeteksi SIM Card'),
(22, 'iPhone layar pecah atau retak'),
(23, 'iPhone terdapat noda, garis, flickering'),
(24, 'Baterai iPhone panas'),
(25, 'iPhone sering restart sendiri'),
(26, 'Baterai iPhone melendung'),
(27, 'Home button keras'),
(28, 'Home button kurang responsive'),
(29, 'Home button tidak berfungsi sama sekali'),
(30, 'Home button tidak terdeteksi sidik jari'),
(31, 'Gambar kamera iPhone tidak sempurna atau pecah'),
(32, 'Kamera iPhone terdapat jamur'),
(33, 'Cahaya kamera tidak terang'),
(34, 'Kamera iPhone goyang â€“ goyang'),
(35, 'Kamera iPhone tidak bisa fokus'),
(36, 'Kamera iPhone blank hitam'),
(37, 'iPhone tidak dapat mengeluarkan suara'),
(38, 'iPhone tidak bisa mendengar suara lawan bicara saa'),
(39, 'iPhone bisa mendengar suara lawan bicara tetapi la'),
(40, 'Suara speaker iPhone terdengar kecil');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE IF NOT EXISTS `login` (
  `id` varchar(30) NOT NULL,
  `pass` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `pass`) VALUES
('admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `parameter`
--

CREATE TABLE IF NOT EXISTS `parameter` (
  `id_parameter` int(11) NOT NULL AUTO_INCREMENT,
  `id_kriteria` int(11) NOT NULL,
  `nilai` int(11) NOT NULL,
  `parameter` varchar(50) NOT NULL,
  PRIMARY KEY (`id_parameter`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=89 ;

--
-- Dumping data for table `parameter`
--

INSERT INTO `parameter` (`id_parameter`, `id_kriteria`, `nilai`, `parameter`) VALUES
(1, 2, 1, 'ya'),
(2, 3, 1, 'ya'),
(3, 4, 1, 'ya'),
(4, 5, 1, 'ya'),
(5, 6, 1, 'ya'),
(6, 7, 1, 'ya'),
(7, 8, 1, 'ya'),
(8, 9, 1, 'ya'),
(9, 10, 1, 'ya'),
(10, 11, 1, 'ya'),
(11, 12, 1, 'ya'),
(12, 13, 1, 'ya'),
(13, 14, 1, 'ya'),
(14, 15, 1, 'ya'),
(15, 16, 1, 'ya'),
(16, 17, 1, 'ya'),
(17, 18, 1, 'ya'),
(18, 19, 1, 'ya'),
(19, 20, 1, 'ya'),
(20, 21, 1, 'ya'),
(21, 22, 1, 'ya'),
(22, 23, 1, 'ya'),
(23, 24, 1, 'ya'),
(24, 25, 1, 'ya'),
(25, 26, 1, 'ya'),
(26, 27, 1, 'ya'),
(27, 28, 1, 'ya'),
(28, 29, 1, 'ya'),
(29, 30, 1, 'ya'),
(30, 31, 1, 'ya'),
(31, 32, 1, 'ya'),
(32, 33, 1, 'ya'),
(33, 34, 1, 'ya'),
(34, 35, 1, 'ya'),
(35, 36, 1, 'ya'),
(36, 37, 1, 'ya'),
(37, 38, 1, 'ya'),
(38, 39, 1, 'ya'),
(39, 40, 1, 'ya'),
(40, 2, 0, 'tidak'),
(41, 3, 0, 'tidak'),
(42, 4, 0, 'tidak'),
(43, 5, 0, 'tidak'),
(44, 6, 0, 'tidak'),
(45, 7, 0, 'tidak'),
(46, 8, 0, 'tidak'),
(47, 9, 0, 'tidak'),
(48, 10, 0, 'tidak'),
(49, 11, 0, 'tidak'),
(50, 12, 0, 'tidak'),
(51, 13, 0, 'tidak'),
(52, 14, 0, 'tidak'),
(53, 15, 0, 'tidak'),
(54, 16, 0, 'tidak'),
(55, 17, 0, 'tidak'),
(56, 18, 0, 'tidak'),
(57, 19, 0, 'tidak'),
(58, 20, 0, 'tidak'),
(59, 21, 0, 'tidak'),
(60, 22, 0, 'tidak'),
(61, 23, 0, 'tidak'),
(62, 24, 0, 'tidak'),
(63, 25, 0, 'tidak'),
(64, 26, 0, 'tidak'),
(65, 27, 0, 'tidak'),
(66, 28, 0, 'tidak'),
(67, 29, 0, 'tidak'),
(68, 30, 0, 'tidak'),
(69, 31, 0, 'tidak'),
(70, 32, 0, 'tidak'),
(71, 33, 0, 'tidak'),
(72, 34, 0, 'tidak'),
(73, 35, 0, 'tidak'),
(74, 36, 0, 'tidak'),
(75, 37, 0, 'tidak'),
(76, 38, 0, 'tidak'),
(77, 39, 0, 'tidak'),
(78, 40, 0, 'tidak'),
(79, 1, 1, 'Kerusakan IC Charger'),
(80, 1, 2, 'Kerusakan IC Touchscreen'),
(81, 1, 3, 'Kerusakan IC Display'),
(82, 1, 4, 'Kerusakan IC Lampu / Backlight'),
(83, 1, 5, 'Kerusakan IC Sinyal / Baseband'),
(84, 1, 6, 'Kerusakan LCD'),
(85, 1, 7, 'Kerusakan Baterai'),
(86, 1, 8, 'Kerusakan Home Button atau Fingerprint'),
(87, 1, 9, 'Kerusakan Kamera'),
(88, 1, 10, 'Kerusakan Speaker');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;