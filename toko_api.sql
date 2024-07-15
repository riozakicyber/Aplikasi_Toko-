-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 07, 2024 at 06:54 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `toko_api`
--

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`id`, `nama`, `email`, `password`) VALUES
(1, 'Administrator', 'admin@admin.com', '$2y$10$YetH1G8rC5GrwMCVqK/7I.pGq5ujvcyhuUThtj8TD/jqTBgoK2glC'),
(2, 'Administrator', 'admin@admin.com', '$2y$10$5992B6lQ49Yr5YQkbRB61u4UUWetORYi8kRai08w1gs9jchvy4BKq'),
(3, 'Administrator', 'admin@admin.com', '$2y$10$qx7PH0lVddODM4RPoO7L5ug/ns7A9JTKa/dxioGmN9MDPEy6ALvEG'),
(4, 'Administrator', 'admin@admin.com', '$2y$10$ZGISQhkFJveg3gR03xksduZME/Vc5OJVMcXAHK6NG6oMMlq0ehjIW'),
(5, 'admin', 'admin@admin.com', '$2y$10$mTVuDvWJROIxQymzXWNVDu4msJ4U0pZJg7J4DVlTXNDeVbD3xE9U.'),
(6, 'admin', 'admin@gmail.com', '$2y$10$lisSQCEa50iRvi6tg7uqxeTRSBNRvPE8MVZdGiZcIRXCctqpD4ITK'),
(7, 'admin', 'admin@gmail.com', '$2y$10$zKl1NbQDj5wd1/3T3ZZqZ.tsAlEV.MZs54jgsKvgyx3I1GvWBMHr.'),
(8, 'admin', 'admin@gmail.com', '$2y$10$gjsfakaF7R1vbf5gEvjhdeEOAjIOuYxYoHS56.vWyJV9.FG6TqvbC'),
(9, 'admin', 'admin@gmail.com', '$2y$10$SAU05CZDgzLia0H68irbreSMydLCxtvSfPOxqaRtR03mT93sTB4qq'),
(10, 'admin', 'admin@gmail.com', '$2y$10$CAMP062awrpD.WgY39ab6efIcUj4rddDJDU3Nz699OihTt7z56Axq'),
(11, 'saya', 'saya@gmail.com', '$2y$10$o3NlxvObYHXgWcMVbEvFVeU5gHSErUkN.DweBAhxdhGT6JuoM1oRa'),
(12, 'test', 'test@gmail.com', '$2y$10$XMNXQq.7.rDBnQBb0xHjHuftLRTOgS6IrgHBK62I/QhK.6uI/7mnC'),
(13, 'saya', 'saya@saya.com', '$2y$10$5SWyS60aELFAoVaQjFLv0.1rWbMzJc9CKbYCnvB2UiGrKDIxcw9bu'),
(14, 'coba', 'coba@coba.com', '$2y$10$PxPq/oEVskf2dXPV5fv6.O5L0c9kwq.1ixWf45cJ3hzFZpMhBpaPS'),
(15, 'adi', 'adi@gmail.com', '$2y$10$cfwP3vGhBYmRNCyHrYbrVeyKkCUZ1K8vFsoEyD.VipY3UxUspib3u');

-- --------------------------------------------------------

--
-- Table structure for table `member_token`
--

CREATE TABLE `member_token` (
  `id` int(11) NOT NULL,
  `member_id` int(11) NOT NULL,
  `auth_key` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `member_token`
--

INSERT INTO `member_token` (`id`, `member_id`, `auth_key`) VALUES
(1, 1, 'YXvsTUpI6iaLkYzlsgOsrYHFqNqsb3sEnPUnZdsd72sSscXDgdKHnp2MdsnO5ei57gG4IYIMdxgL9eQzDXJ2d8ttFwcdvBZBdxEG'),
(2, 6, 'EZDiv3vs18sNgK1NSmBnZX1zIpQKFUAVRuJlNSC3ydsFk9hxvDFD79FWoJUqs3mvUNScozCsrPbg3OatBZOrSKFWaYoHQi4gpLNU'),
(3, 6, '40GKT3DCI8BoXxZdNbmSd4TKsH2eYbbISUTLIesH5LuWYzgyZNzVQrsYe4vUp5YshD1dkhdgczsokBb5rK8YlpAJsdhGj7vGaD2t'),
(4, 6, '5sM1Lbs1cdpSibqn7vdvaQDlYhDdAVo2clcYo6WTva4LMv6ecH5rbkaJm3zsZHysHKRIsI9CH7iENpWBYACFmSz3YYzd1Z7iehic'),
(5, 11, 'lwguLxRyepJZft8QtP6CYbrMuIdzmfFAUVZL5Qgc9WY7HZtwc42sg7FPrA3THLrNPodKcLUppW3dh3EZ0oaFvbJu0cw8cdJJyCCk'),
(6, 11, '0vHbtWS5SIudBbqlHdRmq2skJDZUOnoTivYwaRdcpRjYdH9dlsaONTZp9jwI0dxmbfmXd19yuQEA9tMrS84HwI6dRcaWDuxEQFBn'),
(7, 11, 'RV4tqSru5h3rB7Svj8SQwW9OLsibmNQahJMNel5dsjVH1qmdY5iF2vwCus7gNzfsQwZC2ovt3m6yUX4VRsjBibpDjlGsRxsv1pk7'),
(8, 11, 'pOF4jS7PvNEpbRNGjzu7Mx0gspddF10RMw2Zcs3wkMbPnAvuJckRKGrsOv5vbB4zhWadSAkW9lBdPUdcb86BVQCcQTkRvCZu61zH'),
(9, 11, 'RidPf2X0oqyHd5Hbsde9j1DDjlVASMd4EiTFdQxh91KkhAF8HivUS2d1uUJdTqcN9E3T8vKis0QFui8NUPJH2dlBZKKSstpbfv81'),
(10, 11, 'sr8EHGe1xWxJHKe9rHWLWNQLJHkbZCNuufhLt5j9DkQsoeYETPNJn8Qd0oenMR3EyEdfZnO7Z1vemsd5Qvzngjxdh8GsDBl6yhbq'),
(11, 11, 'ZJakpkfxODaWAVUgswdedP3p6kijws9r3XVAK97dkfNEJdpUs9tbSns89LM7Ev91ht2P8seYnkfwSmsssgwDxbKsDdIWcda20SG9'),
(12, 11, 'oL2e2JvsCStB17md5eRImHLr3LIkfRsscUjz2Ugz1dJGssywYJCDDfdgjIgCoIEIFs4Lndo7aB5uZPLGRUdVyaoNUo5TPL2ts6J7'),
(13, 11, 'c2mzJrPVtX3FnJsW9xgAQduJERtKUTVpU5uGp6FhFnkdqHdqWegSdtdA4E6Iaq44YKsoKPc6HM6THF8Q2mdtC72VOjONhWks01lB'),
(14, 11, 'wBhdKrdIDHffHHsGDhZlag8ssLZ9Pn0pXQrusbgZfRHs9iGiUs737IFd64T4YK1YIoWdlaQI8OUPWUUWAUdmRWhn5xNesAiH75J0'),
(15, 12, 'iD2CEre4BvS3I18y1Xmc4hut5FfhpquaggrWMkQKAU6RVeYxeJvBKwfKnrsuDJOoUlDVYBrLW3CjxtdSBimTx0ctDNaPiVGdXOTA'),
(16, 13, 'XDrRS9DVhicvIrnYGu9W9hjsaXRXL0OrJKNOWdDGLrWNsLl95MQW30TGBAfLfe5n9YkDcNH3OfVYvrFwv8dKAMgRd35ApjFj1Sqy'),
(17, 13, 'afyd3dql3d4bK9ngIxw6sMiPd5n2N2Ybsd0B7HH0dOFt0dadVwtbsgeFG9syNCzjqGI1ZbhVEuyiglCFvCKenfRUobFr0dupFI3S'),
(18, 13, 'g9KwQIWeyXL5ids73cAJRw3xsxoBp88Cs02QEjM91fU4Ky551sstVqwYJUTzWo5R9TvudXAcbs0IAv8wg8S51so1XedW6Zdl5qee'),
(19, 11, 'REh6PH5ndbSABsDOn8zMYqfVMsz3sT4MtRW97gzsszEs3dssDxFxhWE3brrjdaOHO8lDgl4dnkWAGsmndmdikpGaoxk2TssbHt6N'),
(20, 11, 'PQZq44dFqEa43U9WmJZdrUdTLa6c9MfajwVn8H45gJPzV0vP5szikOMSQpvxFhzVE1sHJPtoqFoV6GRJHMT5dUsyueBDp3JAS5Jp'),
(21, 11, 'Rzu5juSHE61xA4LyNLSnSohnTqipYfG6XITdaUbiae4K4RvCXrbZTT9wFjsk6tWksVRbe6kMG7LkrdZ8z0cDIv7XndsNU2Tsxasd'),
(22, 14, 'mAbzbo6jiXN5rRSYIhR4gjgVdduoK0X6YfdVZNJqwXq7o7lVJdWvbu7dKWXBO0JAqXiVFLZrrUzJB2L06saaAhepiBzEQ4kwd7dQ'),
(23, 14, 'z7MVjU3dPmb9BbAyakb556rX0srsmjz5fKyoVBQmhHSD5GaPBR8FiwOsFeBSVHPRFxtTdsRmkTfv9cMyUwAOecnE9ioIpfeBagXy'),
(24, 14, 'GVzAnyWVwAOPs7TMhgq4ef61vT0LyJR1MiKvtYgND2SOGQdk44sM3G0D4Ix75H31LBUpvZdAskcMw4UsrDQaCZLzrCrdZhFndMuY'),
(25, 14, 'YfbUBNNRl8WTGM8BicZlUBd2HFu8n0WPcHLgP7N6sj1OvZExWARzmtuclxQ5Xa156NkawSksQpuOd6I0wyD3qMaG2QloCDGJt3Le'),
(26, 14, 'dNgtSWRB75QBf8T6wVeVcw0qfsXphO7BH4l8WrlRxWMkW53XyDB88sds0icGd3HOsAkiYe8eyzHJEBH8EkHrIGkHE8Xwqbu7m9sq'),
(27, 14, 'Fsm7xHTeXRRY02eXtskhsCxdgyxN8IW8TFW9dRQeVtsDH6d3ssegEsKsDCbe9dd8kWYEkXdljlhDjm6FwD4a6cZsQwXXId0Rfvk8'),
(28, 14, 'zGhBYdAPA4cBa0rUSKncOymift22f0CGzAs5AWplO9TxP9Mv69mmiId2LMZoT8veEEGd3c76EizkIBIllsmRAuWCk8d5gmUcZXY5'),
(29, 15, 'GLC8u1BiDudXYdhTHoRsA6Pd3y7vIMBZrd0escBk4W0kLvnmA9KnsWAswWY0MCaa8mEeLtoF5PPdr0170cktxbTFkQRuErsD8w3V'),
(30, 15, 'RidqsxdsHYiMgTP69M247lT2xLfsUe64ZqGngdWPwREJ9hH7qQBBdLbTMFgZCkZsq4yN9deWtABI6QTiQG1VWeKyKFsG0iX8AH2A'),
(31, 15, 'vINUiMxHmyHGHL5o1vm81iC2ECNBdBnMTlPMcnkRFvHn2yiLP3LkjiGDG3SHLHWDwYcMGAYv7aWfSpvpXl2LQAfJTtw3r1AKuLjW'),
(32, 11, 'Bcf5tE53ibDG4Bjd49RErydZ6Hn1L4eR6osgWsYdYdStkrKZnUByMH14WONlYiISqSGVIHkqWN9qih6y8Wp1NSC2gpxSZMjl6drb'),
(33, 11, 'z1Ddk1UJYzhVvWcHYgsjB3gsSWoGxKsPDDFphYPs42RYP51sQXKf2EPxGrbsa2v0bOkvjUycCxsdBWlBQTM0EUF7dOYEYwx0Q6qj'),
(34, 11, 'koq9SV9rnuJWTdxWurmv9zKZVSxpdEUgFtkXBYpnvaDaeGRHDbERdAZGr400mvs7pRdmPYqEVu02ls9c4ZyEunVm827Rs9WTaLzi'),
(35, 11, 'TEhlnQOnykHnmQWdwxdMJHN8xdh3BYCdURTO3iwo08MqJiGFuGObnjssHZLoi4uyrWfbv5LKpnTg2QUvjm3eFXFd8Nqa2Inds9hO');

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `id` int(11) NOT NULL,
  `kode_produk` varchar(255) NOT NULL,
  `nama_produk` varchar(255) NOT NULL,
  `harga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id`, `kode_produk`, `nama_produk`, `harga`) VALUES
(2, 'A001', 'Realme Smart TV 50 Inch', 7000000),
(5, 'B001', 'Samsung Smart TV 50 Inch', 8000000),
(9, '', '', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `member_token`
--
ALTER TABLE `member_token`
  ADD PRIMARY KEY (`id`),
  ADD KEY `member_id` (`member_id`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `member_token`
--
ALTER TABLE `member_token`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `member_token`
--
ALTER TABLE `member_token`
  ADD CONSTRAINT `member_token_ibfk_1` FOREIGN KEY (`member_id`) REFERENCES `member` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
