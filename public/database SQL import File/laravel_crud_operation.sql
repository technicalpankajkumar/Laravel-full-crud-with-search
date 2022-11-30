-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 30, 2022 at 07:31 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_crud_operation`
--

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `iso` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nicename` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `iso3` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `numcode` bigint(20) NOT NULL,
  `phonecode` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`, `created_at`, `updated_at`) VALUES
(1, 'AF', 'AFGHANISTAN', 'Afghanistan', 'AFG', 4, 93, NULL, NULL),
(2, 'AL', 'ALBANIA', 'Albania', 'ALB', 8, 355, NULL, NULL),
(3, 'DZ', 'ALGERIA', 'Algeria', 'DZA', 12, 213, NULL, NULL),
(4, 'AS', 'AMERICAN SAMOA', 'American Samoa', 'ASM', 16, 1684, NULL, NULL),
(5, 'AD', 'ANDORRA', 'Andorra', 'AND', 20, 376, NULL, NULL),
(6, 'AO', 'ANGOLA', 'Angola', 'AGO', 24, 244, NULL, NULL),
(7, 'AI', 'ANGUILLA', 'Anguilla', 'AIA', 660, 1264, NULL, NULL),
(8, 'AQ', 'ANTARCTICA', 'Antarctica', '', 0, 0, NULL, NULL),
(9, 'AG', 'ANTIGUA AND BARBUDA', 'Antigua and Barbuda', 'ATG', 28, 1268, NULL, NULL),
(10, 'AR', 'ARGENTINA', 'Argentina', 'ARG', 32, 54, NULL, NULL),
(11, 'AM', 'ARMENIA', 'Armenia', 'ARM', 51, 374, NULL, NULL),
(12, 'AW', 'ARUBA', 'Aruba', 'ABW', 533, 297, NULL, NULL),
(13, 'AU', 'AUSTRALIA', 'Australia', 'AUS', 36, 61, NULL, NULL),
(14, 'AT', 'AUSTRIA', 'Austria', 'AUT', 40, 43, NULL, NULL),
(15, 'AZ', 'AZERBAIJAN', 'Azerbaijan', 'AZE', 31, 994, NULL, NULL),
(16, 'BS', 'BAHAMAS', 'Bahamas', 'BHS', 44, 1242, NULL, NULL),
(17, 'BH', 'BAHRAIN', 'Bahrain', 'BHR', 48, 973, NULL, NULL),
(18, 'BD', 'BANGLADESH', 'Bangladesh', 'BGD', 50, 880, NULL, NULL),
(19, 'BB', 'BARBADOS', 'Barbados', 'BRB', 52, 1246, NULL, NULL),
(20, 'BY', 'BELARUS', 'Belarus', 'BLR', 112, 375, NULL, NULL),
(21, 'BE', 'BELGIUM', 'Belgium', 'BEL', 56, 32, NULL, NULL),
(22, 'BZ', 'BELIZE', 'Belize', 'BLZ', 84, 501, NULL, NULL),
(23, 'BJ', 'BENIN', 'Benin', 'BEN', 204, 229, NULL, NULL),
(24, 'BM', 'BERMUDA', 'Bermuda', 'BMU', 60, 1441, NULL, NULL),
(25, 'BT', 'BHUTAN', 'Bhutan', 'BTN', 64, 975, NULL, NULL),
(26, 'BO', 'BOLIVIA', 'Bolivia', 'BOL', 68, 591, NULL, NULL),
(27, 'BA', 'BOSNIA AND HERZEGOVINA', 'Bosnia and Herzegovina', 'BIH', 70, 387, NULL, NULL),
(28, 'BW', 'BOTSWANA', 'Botswana', 'BWA', 72, 267, NULL, NULL),
(29, 'BV', 'BOUVET ISLAND', 'Bouvet Island', '', 0, 0, NULL, NULL),
(30, 'BR', 'BRAZIL', 'Brazil', 'BRA', 76, 55, NULL, NULL),
(31, 'IO', 'BRITISH INDIAN OCEAN TERRITORY', 'British Indian Ocean Territory', '', 0, 246, NULL, NULL),
(32, 'BN', 'BRUNEI DARUSSALAM', 'Brunei Darussalam', 'BRN', 96, 673, NULL, NULL),
(33, 'BG', 'BULGARIA', 'Bulgaria', 'BGR', 100, 359, NULL, NULL),
(34, 'BF', 'BURKINA FASO', 'Burkina Faso', 'BFA', 854, 226, NULL, NULL),
(35, 'BI', 'BURUNDI', 'Burundi', 'BDI', 108, 257, NULL, NULL),
(36, 'KH', 'CAMBODIA', 'Cambodia', 'KHM', 116, 855, NULL, NULL),
(37, 'CM', 'CAMEROON', 'Cameroon', 'CMR', 120, 237, NULL, NULL),
(38, 'CA', 'CANADA', 'Canada', 'CAN', 124, 1, NULL, NULL),
(39, 'CV', 'CAPE VERDE', 'Cape Verde', 'CPV', 132, 238, NULL, NULL),
(40, 'KY', 'CAYMAN ISLANDS', 'Cayman Islands', 'CYM', 136, 1345, NULL, NULL),
(41, 'CF', 'CENTRAL AFRICAN REPUBLIC', 'Central African Republic', 'CAF', 140, 236, NULL, NULL),
(42, 'TD', 'CHAD', 'Chad', 'TCD', 148, 235, NULL, NULL),
(43, 'CL', 'CHILE', 'Chile', 'CHL', 152, 56, NULL, NULL),
(44, 'CN', 'CHINA', 'China', 'CHN', 156, 86, NULL, NULL),
(45, 'CX', 'CHRISTMAS ISLAND', 'Christmas Island', '', 0, 61, NULL, NULL),
(46, 'CC', 'COCOS (KEELING) ISLANDS', 'Cocos (Keeling) Islands', '', 0, 672, NULL, NULL),
(47, 'CO', 'COLOMBIA', 'Colombia', 'COL', 170, 57, NULL, NULL),
(48, 'KM', 'COMOROS', 'Comoros', 'COM', 174, 269, NULL, NULL),
(49, 'CG', 'CONGO', 'Congo', 'COG', 178, 242, NULL, NULL),
(50, 'CD', 'CONGO, THE DEMOCRATIC REPUBLIC OF THE', 'Congo, the Democratic Republic of the', 'COD', 180, 242, NULL, NULL),
(51, 'CK', 'COOK ISLANDS', 'Cook Islands', 'COK', 184, 682, NULL, NULL),
(52, 'CR', 'COSTA RICA', 'Costa Rica', 'CRI', 188, 506, NULL, NULL),
(53, 'CI', 'COTE D\'IVOIRE', 'Cote D\'Ivoire', 'CIV', 384, 225, NULL, NULL),
(54, 'HR', 'CROATIA', 'Croatia', 'HRV', 191, 385, NULL, NULL),
(55, 'CU', 'CUBA', 'Cuba', 'CUB', 192, 53, NULL, NULL),
(56, 'CY', 'CYPRUS', 'Cyprus', 'CYP', 196, 357, NULL, NULL),
(57, 'CZ', 'CZECH REPUBLIC', 'Czech Republic', 'CZE', 203, 420, NULL, NULL),
(58, 'DK', 'DENMARK', 'Denmark', 'DNK', 208, 45, NULL, NULL),
(59, 'DJ', 'DJIBOUTI', 'Djibouti', 'DJI', 262, 253, NULL, NULL),
(60, 'DM', 'DOMINICA', 'Dominica', 'DMA', 212, 1767, NULL, NULL),
(61, 'DO', 'DOMINICAN REPUBLIC', 'Dominican Republic', 'DOM', 214, 1809, NULL, NULL),
(62, 'EC', 'ECUADOR', 'Ecuador', 'ECU', 218, 593, NULL, NULL),
(63, 'EG', 'EGYPT', 'Egypt', 'EGY', 818, 20, NULL, NULL),
(64, 'SV', 'EL SALVADOR', 'El Salvador', 'SLV', 222, 503, NULL, NULL),
(65, 'GQ', 'EQUATORIAL GUINEA', 'Equatorial Guinea', 'GNQ', 226, 240, NULL, NULL),
(66, 'ER', 'ERITREA', 'Eritrea', 'ERI', 232, 291, NULL, NULL),
(67, 'EE', 'ESTONIA', 'Estonia', 'EST', 233, 372, NULL, NULL),
(68, 'ET', 'ETHIOPIA', 'Ethiopia', 'ETH', 231, 251, NULL, NULL),
(69, 'FK', 'FALKLAND ISLANDS (MALVINAS)', 'Falkland Islands (Malvinas)', 'FLK', 238, 500, NULL, NULL),
(70, 'FO', 'FAROE ISLANDS', 'Faroe Islands', 'FRO', 234, 298, NULL, NULL),
(71, 'FJ', 'FIJI', 'Fiji', 'FJI', 242, 679, NULL, NULL),
(72, 'FI', 'FINLAND', 'Finland', 'FIN', 246, 358, NULL, NULL),
(73, 'FR', 'FRANCE', 'France', 'FRA', 250, 33, NULL, NULL),
(74, 'GF', 'FRENCH GUIANA', 'French Guiana', 'GUF', 254, 594, NULL, NULL),
(75, 'PF', 'FRENCH POLYNESIA', 'French Polynesia', 'PYF', 258, 689, NULL, NULL),
(76, 'TF', 'FRENCH SOUTHERN TERRITORIES', 'French Southern Territories', '', 0, 0, NULL, NULL),
(77, 'GA', 'GABON', 'Gabon', 'GAB', 266, 241, NULL, NULL),
(78, 'GM', 'GAMBIA', 'Gambia', 'GMB', 270, 220, NULL, NULL),
(79, 'GE', 'GEORGIA', 'Georgia', 'GEO', 268, 995, NULL, NULL),
(80, 'DE', 'GERMANY', 'Germany', 'DEU', 276, 49, NULL, NULL),
(81, 'GH', 'GHANA', 'Ghana', 'GHA', 288, 233, NULL, NULL),
(82, 'GI', 'GIBRALTAR', 'Gibraltar', 'GIB', 292, 350, NULL, NULL),
(83, 'GR', 'GREECE', 'Greece', 'GRC', 300, 30, NULL, NULL),
(84, 'GL', 'GREENLAND', 'Greenland', 'GRL', 304, 299, NULL, NULL),
(85, 'GD', 'GRENADA', 'Grenada', 'GRD', 308, 1473, NULL, NULL),
(86, 'GP', 'GUADELOUPE', 'Guadeloupe', 'GLP', 312, 590, NULL, NULL),
(87, 'GU', 'GUAM', 'Guam', 'GUM', 316, 1671, NULL, NULL),
(88, 'GT', 'GUATEMALA', 'Guatemala', 'GTM', 320, 502, NULL, NULL),
(89, 'GN', 'GUINEA', 'Guinea', 'GIN', 324, 224, NULL, NULL),
(90, 'GW', 'GUINEA-BISSAU', 'Guinea-Bissau', 'GNB', 624, 245, NULL, NULL),
(91, 'GY', 'GUYANA', 'Guyana', 'GUY', 328, 592, NULL, NULL),
(92, 'HT', 'HAITI', 'Haiti', 'HTI', 332, 509, NULL, NULL),
(93, 'HM', 'HEARD ISLAND AND MCDONALD ISLANDS', 'Heard Island and Mcdonald Islands', '', 0, 0, NULL, NULL),
(94, 'VA', 'HOLY SEE (VATICAN CITY STATE)', 'Holy See (Vatican City State)', 'VAT', 336, 39, NULL, NULL),
(95, 'HN', 'HONDURAS', 'Honduras', 'HND', 340, 504, NULL, NULL),
(96, 'HK', 'HONG KONG', 'Hong Kong', 'HKG', 344, 852, NULL, NULL),
(97, 'HU', 'HUNGARY', 'Hungary', 'HUN', 348, 36, NULL, NULL),
(98, 'IS', 'ICELAND', 'Iceland', 'ISL', 352, 354, NULL, NULL),
(99, 'IN', 'INDIA', 'India', 'IND', 356, 91, NULL, NULL),
(100, 'ID', 'INDONESIA', 'Indonesia', 'IDN', 360, 62, NULL, NULL),
(101, 'IR', 'IRAN, ISLAMIC REPUBLIC OF', 'Iran, Islamic Republic of', 'IRN', 364, 98, NULL, NULL),
(102, 'IQ', 'IRAQ', 'Iraq', 'IRQ', 368, 964, NULL, NULL),
(103, 'IE', 'IRELAND', 'Ireland', 'IRL', 372, 353, NULL, NULL),
(104, 'IL', 'ISRAEL', 'Israel', 'ISR', 376, 972, NULL, NULL),
(105, 'IT', 'ITALY', 'Italy', 'ITA', 380, 39, NULL, NULL),
(106, 'JM', 'JAMAICA', 'Jamaica', 'JAM', 388, 1876, NULL, NULL),
(107, 'JP', 'JAPAN', 'Japan', 'JPN', 392, 81, NULL, NULL),
(108, 'JO', 'JORDAN', 'Jordan', 'JOR', 400, 962, NULL, NULL),
(109, 'KZ', 'KAZAKHSTAN', 'Kazakhstan', 'KAZ', 398, 7, NULL, NULL),
(110, 'KE', 'KENYA', 'Kenya', 'KEN', 404, 254, NULL, NULL),
(111, 'KI', 'KIRIBATI', 'Kiribati', 'KIR', 296, 686, NULL, NULL),
(112, 'KP', 'KOREA, DEMOCRATIC PEOPLE\'S REPUBLIC OF', 'Korea, Democratic People\'s Republic of', 'PRK', 408, 850, NULL, NULL),
(113, 'KR', 'KOREA, REPUBLIC OF', 'Korea, Republic of', 'KOR', 410, 82, NULL, NULL),
(114, 'KW', 'KUWAIT', 'Kuwait', 'KWT', 414, 965, NULL, NULL),
(115, 'KG', 'KYRGYZSTAN', 'Kyrgyzstan', 'KGZ', 417, 996, NULL, NULL),
(116, 'LA', 'LAO PEOPLE\'S DEMOCRATIC REPUBLIC', 'Lao People\'s Democratic Republic', 'LAO', 418, 856, NULL, NULL),
(117, 'LV', 'LATVIA', 'Latvia', 'LVA', 428, 371, NULL, NULL),
(118, 'LB', 'LEBANON', 'Lebanon', 'LBN', 422, 961, NULL, NULL),
(119, 'LS', 'LESOTHO', 'Lesotho', 'LSO', 426, 266, NULL, NULL),
(120, 'LR', 'LIBERIA', 'Liberia', 'LBR', 430, 231, NULL, NULL),
(121, 'LY', 'LIBYAN ARAB JAMAHIRIYA', 'Libyan Arab Jamahiriya', 'LBY', 434, 218, NULL, NULL),
(122, 'LI', 'LIECHTENSTEIN', 'Liechtenstein', 'LIE', 438, 423, NULL, NULL),
(123, 'LT', 'LITHUANIA', 'Lithuania', 'LTU', 440, 370, NULL, NULL),
(124, 'LU', 'LUXEMBOURG', 'Luxembourg', 'LUX', 442, 352, NULL, NULL),
(125, 'MO', 'MACAO', 'Macao', 'MAC', 446, 853, NULL, NULL),
(126, 'MK', 'MACEDONIA, THE FORMER YUGOSLAV REPUBLIC OF', 'Macedonia, the Former Yugoslav Republic of', 'MKD', 807, 389, NULL, NULL),
(127, 'MG', 'MADAGASCAR', 'Madagascar', 'MDG', 450, 261, NULL, NULL),
(128, 'MW', 'MALAWI', 'Malawi', 'MWI', 454, 265, NULL, NULL),
(129, 'MY', 'MALAYSIA', 'Malaysia', 'MYS', 458, 60, NULL, NULL),
(130, 'MV', 'MALDIVES', 'Maldives', 'MDV', 462, 960, NULL, NULL),
(131, 'ML', 'MALI', 'Mali', 'MLI', 466, 223, NULL, NULL),
(132, 'MT', 'MALTA', 'Malta', 'MLT', 470, 356, NULL, NULL),
(133, 'MH', 'MARSHALL ISLANDS', 'Marshall Islands', 'MHL', 584, 692, NULL, NULL),
(134, 'MQ', 'MARTINIQUE', 'Martinique', 'MTQ', 474, 596, NULL, NULL),
(135, 'MR', 'MAURITANIA', 'Mauritania', 'MRT', 478, 222, NULL, NULL),
(136, 'MU', 'MAURITIUS', 'Mauritius', 'MUS', 480, 230, NULL, NULL),
(137, 'YT', 'MAYOTTE', 'Mayotte', '', 0, 269, NULL, NULL),
(138, 'MX', 'MEXICO', 'Mexico', 'MEX', 484, 52, NULL, NULL),
(139, 'FM', 'MICRONESIA, FEDERATED STATES OF', 'Micronesia, Federated States of', 'FSM', 583, 691, NULL, NULL),
(140, 'MD', 'MOLDOVA, REPUBLIC OF', 'Moldova, Republic of', 'MDA', 498, 373, NULL, NULL),
(141, 'MC', 'MONACO', 'Monaco', 'MCO', 492, 377, NULL, NULL),
(142, 'MN', 'MONGOLIA', 'Mongolia', 'MNG', 496, 976, NULL, NULL),
(143, 'MS', 'MONTSERRAT', 'Montserrat', 'MSR', 500, 1664, NULL, NULL),
(144, 'MA', 'MOROCCO', 'Morocco', 'MAR', 504, 212, NULL, NULL),
(145, 'MZ', 'MOZAMBIQUE', 'Mozambique', 'MOZ', 508, 258, NULL, NULL),
(146, 'MM', 'MYANMAR', 'Myanmar', 'MMR', 104, 95, NULL, NULL),
(147, 'NA', 'NAMIBIA', 'Namibia', 'NAM', 516, 264, NULL, NULL),
(148, 'NR', 'NAURU', 'Nauru', 'NRU', 520, 674, NULL, NULL),
(149, 'NP', 'NEPAL', 'Nepal', 'NPL', 524, 977, NULL, NULL),
(150, 'NL', 'NETHERLANDS', 'Netherlands', 'NLD', 528, 31, NULL, NULL),
(151, 'AN', 'NETHERLANDS ANTILLES', 'Netherlands Antilles', 'ANT', 530, 599, NULL, NULL),
(152, 'NC', 'NEW CALEDONIA', 'New Caledonia', 'NCL', 540, 687, NULL, NULL),
(153, 'NZ', 'NEW ZEALAND', 'New Zealand', 'NZL', 554, 64, NULL, NULL),
(154, 'NI', 'NICARAGUA', 'Nicaragua', 'NIC', 558, 505, NULL, NULL),
(155, 'NE', 'NIGER', 'Niger', 'NER', 562, 227, NULL, NULL),
(156, 'NG', 'NIGERIA', 'Nigeria', 'NGA', 566, 234, NULL, NULL),
(157, 'NU', 'NIUE', 'Niue', 'NIU', 570, 683, NULL, NULL),
(158, 'NF', 'NORFOLK ISLAND', 'Norfolk Island', 'NFK', 574, 672, NULL, NULL),
(159, 'MP', 'NORTHERN MARIANA ISLANDS', 'Northern Mariana Islands', 'MNP', 580, 1670, NULL, NULL),
(160, 'NO', 'NORWAY', 'Norway', 'NOR', 578, 47, NULL, NULL),
(161, 'OM', 'OMAN', 'Oman', 'OMN', 512, 968, NULL, NULL),
(162, 'PK', 'PAKISTAN', 'Pakistan', 'PAK', 586, 92, NULL, NULL),
(163, 'PW', 'PALAU', 'Palau', 'PLW', 585, 680, NULL, NULL),
(164, 'PS', 'PALESTINIAN TERRITORY, OCCUPIED', 'Palestinian Territory, Occupied', '', 0, 970, NULL, NULL),
(165, 'PA', 'PANAMA', 'Panama', 'PAN', 591, 507, NULL, NULL),
(166, 'PG', 'PAPUA NEW GUINEA', 'Papua New Guinea', 'PNG', 598, 675, NULL, NULL),
(167, 'PY', 'PARAGUAY', 'Paraguay', 'PRY', 600, 595, NULL, NULL),
(168, 'PE', 'PERU', 'Peru', 'PER', 604, 51, NULL, NULL),
(169, 'PH', 'PHILIPPINES', 'Philippines', 'PHL', 608, 63, NULL, NULL),
(170, 'PN', 'PITCAIRN', 'Pitcairn', 'PCN', 612, 0, NULL, NULL),
(171, 'PL', 'POLAND', 'Poland', 'POL', 616, 48, NULL, NULL),
(172, 'PT', 'PORTUGAL', 'Portugal', 'PRT', 620, 351, NULL, NULL),
(173, 'PR', 'PUERTO RICO', 'Puerto Rico', 'PRI', 630, 1787, NULL, NULL),
(174, 'QA', 'QATAR', 'Qatar', 'QAT', 634, 974, NULL, NULL),
(175, 'RE', 'REUNION', 'Reunion', 'REU', 638, 262, NULL, NULL),
(176, 'RO', 'ROMANIA', 'Romania', 'ROM', 642, 40, NULL, NULL),
(177, 'RU', 'RUSSIAN FEDERATION', 'Russian Federation', 'RUS', 643, 70, NULL, NULL),
(178, 'RW', 'RWANDA', 'Rwanda', 'RWA', 646, 250, NULL, NULL),
(179, 'SH', 'SAINT HELENA', 'Saint Helena', 'SHN', 654, 290, NULL, NULL),
(180, 'KN', 'SAINT KITTS AND NEVIS', 'Saint Kitts and Nevis', 'KNA', 659, 1869, NULL, NULL),
(181, 'LC', 'SAINT LUCIA', 'Saint Lucia', 'LCA', 662, 1758, NULL, NULL),
(182, 'PM', 'SAINT PIERRE AND MIQUELON', 'Saint Pierre and Miquelon', 'SPM', 666, 508, NULL, NULL),
(183, 'VC', 'SAINT VINCENT AND THE GRENADINES', 'Saint Vincent and the Grenadines', 'VCT', 670, 1784, NULL, NULL),
(184, 'WS', 'SAMOA', 'Samoa', 'WSM', 882, 684, NULL, NULL),
(185, 'SM', 'SAN MARINO', 'San Marino', 'SMR', 674, 378, NULL, NULL),
(186, 'ST', 'SAO TOME AND PRINCIPE', 'Sao Tome and Principe', 'STP', 678, 239, NULL, NULL),
(187, 'SA', 'SAUDI ARABIA', 'Saudi Arabia', 'SAU', 682, 966, NULL, NULL),
(188, 'SN', 'SENEGAL', 'Senegal', 'SEN', 686, 221, NULL, NULL),
(189, 'CS', 'SERBIA AND MONTENEGRO', 'Serbia and Montenegro', '', 0, 381, NULL, NULL),
(190, 'SC', 'SEYCHELLES', 'Seychelles', 'SYC', 690, 248, NULL, NULL),
(191, 'SL', 'SIERRA LEONE', 'Sierra Leone', 'SLE', 694, 232, NULL, NULL),
(192, 'SG', 'SINGAPORE', 'Singapore', 'SGP', 702, 65, NULL, NULL),
(193, 'SK', 'SLOVAKIA', 'Slovakia', 'SVK', 703, 421, NULL, NULL),
(194, 'SI', 'SLOVENIA', 'Slovenia', 'SVN', 705, 386, NULL, NULL),
(195, 'SB', 'SOLOMON ISLANDS', 'Solomon Islands', 'SLB', 90, 677, NULL, NULL),
(196, 'SO', 'SOMALIA', 'Somalia', 'SOM', 706, 252, NULL, NULL),
(197, 'ZA', 'SOUTH AFRICA', 'South Africa', 'ZAF', 710, 27, NULL, NULL),
(198, 'GS', 'SOUTH GEORGIA AND THE SOUTH SANDWICH ISLANDS', 'South Georgia and the South Sandwich Islands', '', 0, 0, NULL, NULL),
(199, 'ES', 'SPAIN', 'Spain', 'ESP', 724, 34, NULL, NULL),
(200, 'LK', 'SRI LANKA', 'Sri Lanka', 'LKA', 144, 94, NULL, NULL),
(201, 'SD', 'SUDAN', 'Sudan', 'SDN', 736, 249, NULL, NULL),
(202, 'SR', 'SURINAME', 'Suriname', 'SUR', 740, 597, NULL, NULL),
(203, 'SJ', 'SVALBARD AND JAN MAYEN', 'Svalbard and Jan Mayen', 'SJM', 744, 47, NULL, NULL),
(204, 'SZ', 'SWAZILAND', 'Swaziland', 'SWZ', 748, 268, NULL, NULL),
(205, 'SE', 'SWEDEN', 'Sweden', 'SWE', 752, 46, NULL, NULL),
(206, 'CH', 'SWITZERLAND', 'Switzerland', 'CHE', 756, 41, NULL, NULL),
(207, 'SY', 'SYRIAN ARAB REPUBLIC', 'Syrian Arab Republic', 'SYR', 760, 963, NULL, NULL),
(208, 'TW', 'TAIWAN, PROVINCE OF CHINA', 'Taiwan, Province of China', 'TWN', 158, 886, NULL, NULL),
(209, 'TJ', 'TAJIKISTAN', 'Tajikistan', 'TJK', 762, 992, NULL, NULL),
(210, 'TZ', 'TANZANIA, UNITED REPUBLIC OF', 'Tanzania, United Republic of', 'TZA', 834, 255, NULL, NULL),
(211, 'TH', 'THAILAND', 'Thailand', 'THA', 764, 66, NULL, NULL),
(212, 'TL', 'TIMOR-LESTE', 'Timor-Leste', '', 0, 670, NULL, NULL),
(213, 'TG', 'TOGO', 'Togo', 'TGO', 768, 228, NULL, NULL),
(214, 'TK', 'TOKELAU', 'Tokelau', 'TKL', 772, 690, NULL, NULL),
(215, 'TO', 'TONGA', 'Tonga', 'TON', 776, 676, NULL, NULL),
(216, 'TT', 'TRINIDAD AND TOBAGO', 'Trinidad and Tobago', 'TTO', 780, 1868, NULL, NULL),
(217, 'TN', 'TUNISIA', 'Tunisia', 'TUN', 788, 216, NULL, NULL),
(218, 'TR', 'TURKEY', 'Turkey', 'TUR', 792, 90, NULL, NULL),
(219, 'TM', 'TURKMENISTAN', 'Turkmenistan', 'TKM', 795, 7370, NULL, NULL),
(220, 'TC', 'TURKS AND CAICOS ISLANDS', 'Turks and Caicos Islands', 'TCA', 796, 1649, NULL, NULL),
(221, 'TV', 'TUVALU', 'Tuvalu', 'TUV', 798, 688, NULL, NULL),
(222, 'UG', 'UGANDA', 'Uganda', 'UGA', 800, 256, NULL, NULL),
(223, 'UA', 'UKRAINE', 'Ukraine', 'UKR', 804, 380, NULL, NULL),
(224, 'AE', 'UNITED ARAB EMIRATES', 'United Arab Emirates', 'ARE', 784, 971, NULL, NULL),
(225, 'GB', 'UNITED KINGDOM', 'United Kingdom', 'GBR', 826, 44, NULL, NULL),
(226, 'US', 'UNITED STATES', 'United States', 'USA', 840, 1, NULL, NULL),
(227, 'UM', 'UNITED STATES MINOR OUTLYING ISLANDS', 'United States Minor Outlying Islands', '', 0, 1, NULL, NULL),
(228, 'UY', 'URUGUAY', 'Uruguay', 'URY', 858, 598, NULL, NULL),
(229, 'UZ', 'UZBEKISTAN', 'Uzbekistan', 'UZB', 860, 998, NULL, NULL),
(230, 'VU', 'VANUATU', 'Vanuatu', 'VUT', 548, 678, NULL, NULL),
(231, 'VE', 'VENEZUELA', 'Venezuela', 'VEN', 862, 58, NULL, NULL),
(232, 'VN', 'VIET NAM', 'Viet Nam', 'VNM', 704, 84, NULL, NULL),
(233, 'VG', 'VIRGIN ISLANDS, BRITISH', 'Virgin Islands, British', 'VGB', 92, 1284, NULL, NULL),
(234, 'VI', 'VIRGIN ISLANDS, U.S.', 'Virgin Islands, U.s.', 'VIR', 850, 1340, NULL, NULL),
(235, 'WF', 'WALLIS AND FUTUNA', 'Wallis and Futuna', 'WLF', 876, 681, NULL, NULL),
(236, 'EH', 'WESTERN SAHARA', 'Western Sahara', 'ESH', 732, 212, NULL, NULL),
(237, 'YE', 'YEMEN', 'Yemen', 'YEM', 887, 967, NULL, NULL),
(238, 'ZM', 'ZAMBIA', 'Zambia', 'ZMB', 894, 260, NULL, NULL),
(239, 'ZW', 'ZIMBABWE', 'Zimbabwe', 'ZWE', 716, 263, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `crud_operations`
--

CREATE TABLE `crud_operations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hobbies` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` bigint(20) UNSIGNED DEFAULT NULL,
  `profile` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `crud_operations`
--

INSERT INTO `crud_operations` (`id`, `first_name`, `last_name`, `email`, `contact`, `gender`, `hobbies`, `address`, `country`, `profile`, `created_at`, `updated_at`) VALUES
(30, 'Vivek', 'yadav', 'vivekyadav@gmail.com', '945678995', 'Male', 'Coding', 'Azamgarh Uttar Pradesh India', 99, 'lv_1785087950.jpg', '2022-09-07 02:30:21', '2022-09-22 13:38:25'),
(31, 'Sunil', 'Maurya', 'sunilmaurya@gmail.com', '908788432', 'Male', 'Coding', 'Jaunpur Uttar Pradesh', 99, 'lv_1264345358.jpg', '2022-09-07 02:35:04', '2022-09-07 02:35:04'),
(32, 'Gopal', 'Maurya', 'gopalmaurya@gmail.com', '688686848', 'Male', 'Coding', 'Badlapur Uttar Pradesh', 99, 'lv_1463712430.jpg', '2022-09-07 02:35:40', '2022-09-07 02:35:40'),
(34, 'Vishu', 'jaswant', 'vishu@gmail.com', '4378579009', 'Female', 'Travelling', 'jaunpur', 99, 'lv_343944157.jpg', '2022-09-07 14:44:33', '2022-09-07 14:44:33'),
(35, 'Ramya', 'Sahu', 'ramyasahu@gmail.com', '877893587', 'Female', 'Travelling', 'jharkhand', 99, 'lv_920528931.jpg', '2022-09-07 15:16:30', '2022-09-07 15:16:30'),
(36, 'Harendra', 'Kumar', 'harendra@gmail.com', '576878778', 'Male', 'Travelling,Music', 'AZAMGARH', 99, 'lv_768660003.jpg', '2022-09-08 11:00:45', '2022-09-22 14:34:12'),
(38, 'pankaj', 'kumar gautam', 'pankajkumargautam@gmail.com', '75478034', 'MALE', 'DD,DD,DD', 'JAJ', 99, 'lv_593668678.jpg', '2022-09-10 11:12:37', '2022-09-22 14:33:29'),
(39, 'API', 'APIS', 'api@gmail.com', '475784', 'MALE', 'DD,DD,DD', 'JAJ', 101, 'lv_2097993752.jpg', '2022-09-21 15:41:01', '2022-09-21 15:41:01'),
(40, 'API UPDATED', 'APIS UPDATED', 'api@gmail.com', '475784', 'MALE', 'DD,DD,DD', 'JAJ', 99, 'lv_436790965.jpg', '2022-09-21 15:42:18', '2022-09-22 13:48:23');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_09_04_215307_create_crud_operations_table', 1),
(6, '2022_09_04_221212_create_countries_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crud_operations`
--
ALTER TABLE `crud_operations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=240;

--
-- AUTO_INCREMENT for table `crud_operations`
--
ALTER TABLE `crud_operations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
