-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 13 Jun 2021 pada 18.08
-- Versi server: 10.3.16-MariaDB
-- Versi PHP: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `projekulya`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `log_spk`
--

CREATE TABLE `log_spk` (
  `id` int(11) NOT NULL,
  `nis` varchar(20) NOT NULL,
  `nama_siswa` varchar(50) NOT NULL,
  `rapor_ind` int(5) NOT NULL,
  `usbn_ind` int(5) NOT NULL,
  `rapor_ing` int(5) NOT NULL,
  `usbn_ing` int(5) NOT NULL,
  `rapor_mtk` int(5) NOT NULL,
  `usbn_mtk` int(5) NOT NULL,
  `rapor_ipa` int(5) NOT NULL,
  `usbn_ipa` int(5) NOT NULL,
  `rapor_ips` int(3) NOT NULL,
  `usbn_ips` int(3) NOT NULL,
  `minat` enum('MIPA','IPS') NOT NULL,
  `nilai_iq` int(5) NOT NULL,
  `kelas` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `log_spk`
--

INSERT INTO `log_spk` (`id`, `nis`, `nama_siswa`, `rapor_ind`, `usbn_ind`, `rapor_ing`, `usbn_ing`, `rapor_mtk`, `usbn_mtk`, `rapor_ipa`, `usbn_ipa`, `rapor_ips`, `usbn_ips`, `minat`, `nilai_iq`, `kelas`) VALUES
(1, '1234567890', 'Anos vilgead', 95, 90, 90, 80, 90, 85, 90, 90, 80, 90, 'IPS', 120, 'IPS'),
(2, '1234567890', 'sdfsdfsdf', 90, 90, 98, 95, 90, 85, 90, 90, 80, 90, 'IPS', 120, 'IPS'),
(3, '1234567888', 'pos ', 90, 90, 70, 90, 90, 85, 90, 90, 80, 90, 'MIPA', 120, 'MIPA'),
(4, '1234567890', 'iasdig', 90, 90, 90, 90, 90, 90, 90, 90, 90, 90, 'MIPA', 105, 'MIPA'),
(5, '1234567890', 'Anos vilgead', 90, 90, 90, 90, 90, 90, 90, 0, 90, 90, 'MIPA', 105, 'MIPA');

-- --------------------------------------------------------

--
-- Struktur dari tabel `testing`
--

CREATE TABLE `testing` (
  `id_test` int(11) NOT NULL,
  `nis` varchar(20) NOT NULL,
  `nama_siswa` varchar(50) NOT NULL,
  `rapor_ind` float NOT NULL,
  `usbn_ind` float NOT NULL,
  `rapor_ing` float NOT NULL,
  `usbn_ing` float NOT NULL,
  `rapor_mtk` float NOT NULL,
  `usbn_mtk` float NOT NULL,
  `rapor_ipa` float NOT NULL,
  `usbn_ipa` float NOT NULL,
  `rapor_ips` float NOT NULL,
  `usbn_ips` float NOT NULL,
  `minat` enum('MIPA','IPS') NOT NULL,
  `nilai_iq` int(5) NOT NULL,
  `kelas` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `testing`
--

INSERT INTO `testing` (`id_test`, `nis`, `nama_siswa`, `rapor_ind`, `usbn_ind`, `rapor_ing`, `usbn_ing`, `rapor_mtk`, `usbn_mtk`, `rapor_ipa`, `usbn_ipa`, `rapor_ips`, `usbn_ips`, `minat`, `nilai_iq`, `kelas`) VALUES
(1, '1234', 'ADITYA ZAINAL SAPUTRA ', 79, 82, 81.25, 86, 76.25, 75, 78.5, 81, 84, 85, 'IPS', 89, 'IPS'),
(2, '1235', 'AUDI LIYANA ', 90.9, 98, 93.6, 94, 87.6, 93, 93.2, 95, 93.2, 94, 'IPS', 101, 'IPS'),
(3, '1236', 'AYU LESTARI PANJAITAN ', 82.25, 78, 82, 78, 81.75, 75, 84.75, 75, 79.5, 80, 'IPS', 87, 'IPS'),
(4, '1237', 'DEARNI YULIANA', 89.33, 88.83, 86.33, 87.33, 83, 84.8, 82.33, 86.33, 84, 86.4, 'IPS', 94, 'IPS'),
(5, '1238', 'DEWI WULAN SARI ', 80.25, 88, 81.25, 85, 78.5, 80, 80.75, 89, 80.25, 87, 'IPS', 79, 'IPS'),
(6, '1239', 'DHIMAS WIRABIMA', 85, 85, 81, 83, 78.75, 79, 79, 80, 79.25, 85, 'IPS', 99, 'IPS'),
(7, '1240', 'DIMAS ORY FIRMANSYACH ', 79, 82, 81.25, 86, 76.25, 75, 78.5, 81, 84, 85, 'IPS', 101, 'IPS'),
(8, '1241', 'DIVA QINAYA ZAHRA ', 81.75, 86.6, 86, 81.05, 82.05, 77.35, 80.75, 81, 85.25, 83.15, 'IPS', 94, 'IPS'),
(9, '1242', 'FATIHA FAWWAZ NUR ', 88, 81.5, 86.5, 81.2, 82.5, 77.2, 81.25, 76.3, 86.25, 78, 'IPS', 94, 'IPS'),
(10, '1243', 'FITRIA YOLANDA SOFNI ', 86, 87, 80.25, 79, 81.5, 82, 84, 83, 80.5, 80, 'IPS', 87, 'IPS'),
(11, '1244', 'INAYAH TASYA PUTRI', 87.25, 89, 84.75, 87, 80.25, 88, 84.75, 93, 87, 93, 'IPS', 87, 'IPS'),
(12, '1245', 'JULIANA ROMAULI GULTOM', 82.75, 80, 81.5, 79, 84.75, 79, 83.25, 85, 81.25, 84, 'IPS', 77, 'IPS'),
(13, '1246', 'MAZMUR DAMAI AKUR ITA LAILA ', 85.67, 86, 82, 84.5, 84.25, 80, 84.59, 86, 87, 84, 'IPS', 97, 'IPS'),
(14, '1247', 'NOUVAL AL ZIKRI ', 79.25, 83, 79.5, 88, 76.25, 78, 84.75, 86, 85.25, 89, 'IPS', 68, 'IPS'),
(15, '1248', 'PUTI JASMINE ', 89.5, 96, 92.5, 92, 83.75, 85, 92.75, 89, 90.25, 92, 'IPS', 101, 'IPS'),
(16, '1249', 'RENDI PRATAMA ', 80.25, 83, 84, 86, 75.5, 75, 80, 85, 82.5, 86, 'IPS', 83, 'IPS'),
(17, '1250', 'SALSA NABILA ', 87.25, 87.25, 82, 82.75, 83.5, 77.95, 85.5, 81.15, 90, 84.45, 'IPS', 99, 'IPS'),
(18, '1251', 'SANDI PRATAMA ', 77.5, 77, 81.25, 77, 75.75, 77, 76.5, 82, 78, 80, 'IPS', 87, 'IPS'),
(19, '1252', 'TIARA MURNI ANIFIANA ', 86.25, 85, 80.25, 82, 75.5, 79, 80.5, 81, 82, 83, 'IPS', 84, 'IPS'),
(20, '1253', 'VERI APRENO SIAGIAN ', 83, 84.5, 82.6, 80, 79.2, 79, 80.2, 82.5, 81.6, 82, 'IPS', 99, 'IPS'),
(21, '1254', 'WAHID SALIM', 82.75, 77, 83.5, 78, 82.5, 77, 83.75, 79, 83.5, 78, 'IPS', 99, 'IPS'),
(22, '1255', 'WIWI', 84, 86, 87, 89, 91, 92, 84, 87, 91, 88, 'IPS', 104, 'IPS'),
(23, '1256', 'YOLANDA AFRIONA RIZKY . N.P', 85.25, 85, 83.75, 85, 80.25, 83, 84.75, 84, 84.25, 84, 'IPS', 94, 'IPS'),
(24, '1257', 'YULIANA ', 85.75, 93, 85.25, 86, 83.25, 78, 83, 75, 84, 75, 'IPS', 87, 'IPS'),
(25, '1258', 'ZAFIRA FATONI', 88.25, 92, 79, 85, 85.5, 84, 81.75, 87, 85, 86, 'IPS', 94, 'IPS'),
(26, '1259', 'ZAHRA DZAKIRA ', 83, 90, 83.25, 81, 79.5, 87, 82.75, 88, 81.75, 90, 'IPS', 94, 'IPS'),
(27, '1260', 'ZHORIF TRIANO PUTRA ', 80.25, 83, 84, 86, 75.5, 75, 80, 85, 82.5, 86, 'IPS', 82, 'IPS'),
(28, '1261', 'ZIKRI PARSA SATRIA ', 80.5, 77, 78, 79, 75.7, 77, 77, 83, 78.5, 79, 'IPS', 87, 'IPS'),
(29, '1262', 'RAJ KHABIB FADHILLAH ', 83, 80, 81.5, 78, 76.5, 75, 79.25, 79, 84.25, 83, 'IPS', 94, 'MIPA'),
(30, '1263', 'ROBY ANDREY SIHOTANG ', 83, 92, 85, 86, 85, 75, 85, 86, 90, 81, 'IPS', 96, 'MIPA'),
(31, '1264', 'ROSMELINDA FITRI ', 84.25, 86, 79.75, 83, 76, 82, 79.75, 81, 79.75, 82, 'IPS', 86, 'MIPA'),
(32, '1265', 'RAMADHANI RIZKI ', 78.5, 86, 77.75, 86, 78.25, 78, 83.5, 87, 81, 89, 'IPS', 87, 'MIPA'),
(33, '1266', 'SALMAN AL RASYD ', 81.75, 82, 82.5, 86, 77.5, 80, 83.25, 87, 85.25, 84, 'IPS', 87, 'MIPA'),
(34, '1267', 'ANGGIE PRATAMA ', 84, 79, 81, 79, 80.75, 78, 84.25, 83, 82.5, 80, 'IPS', 72, 'MIPA'),
(35, '1268', 'KANAYA ANANTA SALSABILAH ZEN ', 82.25, 83, 82, 83, 82.25, 76, 79, 82, 82.5, 83, 'IPS', 91, 'MIPA'),
(36, '1269', 'DWI SEPRINA WULANDARI ', 87, 90.03, 83.5, 85.3, 91.5, 90.13, 84, 85.77, 84.5, 86.65, 'MIPA', 104, 'MIPA'),
(37, '1270', 'FAIZ AHMAD ', 86.75, 95, 91.5, 92, 83.25, 86, 85, 88, 84.75, 87, 'MIPA', 104, 'MIPA'),
(38, '1271', 'GERRY ALMIDI ', 82.75, 85, 84.25, 82, 81, 82, 81.25, 80, 82, 85, 'MIPA', 90, 'MIPA'),
(39, '1272', 'HALIMA SUMARNI MARINTAN Br. SIHOMBING ', 90, 90, 92, 94, 92, 90, 89, 82, 91, 88, 'MIPA', 104, 'MIPA'),
(40, '1273', 'HANIFA KHAIRUNNISA NASRY ', 85, 81, 85, 80, 83.5, 81, 86.5, 87, 86.75, 91, 'MIPA', 99, 'MIPA'),
(41, '1274', 'JEREMIA OKTAVIANUS SITUMORANG ', 81.2, 85, 81, 80, 82, 82, 82.2, 87, 81.7, 82, 'MIPA', 104, 'MIPA'),
(42, '1275', 'KHANAYA ALIFA', 87.37, 93, 94.5, 93, 85.37, 86, 86.77, 87, 86, 92, 'MIPA', 96, 'MIPA'),
(43, '1276', 'M. NAUFAL PUTRA FIJAI ', 83, 80, 81.5, 78, 76.5, 75, 79.25, 79, 84.25, 83, 'IPS', 91, 'MIPA'),
(44, '1277', 'MARTINA JULIANTI Br. MANURUNG ', 83, 92, 85, 86, 85, 75, 85, 86, 90, 81, 'IPS', 96, 'MIPA'),
(45, '1278', 'MAYDIANA SAFITRI ', 84.25, 86, 79.75, 83, 76, 82, 79.75, 81, 79.75, 82, 'IPS', 84, 'MIPA'),
(46, '1279', 'MELATI DWI RAHMA ', 85, 89.35, 85.5, 80.6, 86.75, 80.85, 83.25, 79.8, 87, 81.78, 'MIPA', 104, 'MIPA'),
(47, '1280', 'MUHAMMAD FIRDAUS ', 86.5, 87, 90.75, 88, 82.75, 82, 84, 87, 90.5, 87, 'MIPA', 91, 'MIPA'),
(48, '1281', 'MUHAMMAD HAFIZH ', 85.75, 90.5, 85.09, 84.5, 84.33, 80, 86.75, 92.5, 86.25, 80, 'MIPA', 94, 'MIPA'),
(49, '1282', 'NABILA KHAIRUNNISA ', 86.5, 87, 86.75, 89.5, 88.25, 90, 88, 87, 85, 89, 'MIPA', 99, 'MIPA'),
(50, '1283', 'NAUFAL RAFIF PRIATNO ', 82, 79, 81, 81, 79, 71, 81, 82, 81, 80, 'MIPA', 87, 'MIPA'),
(51, '1284', 'NAZETTA JOHAN ', 87, 88.23, 82.75, 85.8, 81.75, 83.13, 83.75, 85.9, 87.25, 86.53, 'MIPA', 94, 'MIPA'),
(52, '1285', 'RAISYA HANDALANI ', 83.5, 86, 82.75, 84, 79.75, 74, 77.75, 83, 80.25, 84, 'MIPA', 99, 'MIPA'),
(53, '1286', 'RIHAN THOPANI AKBAR ', 81.17, 76.9, 78.92, 76.55, 78, 74.8, 83.42, 73.45, 79.75, 78.05, 'MIPA', 89, 'MIPA'),
(54, '1287', 'ROSIDAH DARMAN', 87, 88.23, 82.75, 85.8, 81.75, 83.13, 83.75, 85.9, 87.25, 86.53, 'MIPA', 94, 'MIPA'),
(55, '1288', 'STELLA ANDRIANI RIZKA ', 87, 83.92, 84.5, 82.48, 81.75, 80.15, 87.75, 84.43, 88.75, 88.45, 'MIPA', 99, 'MIPA'),
(56, '1289', 'VINA APRILIA ', 81, 89, 84.75, 89, 82.75, 78, 85.75, 89, 85.75, 88, 'MIPA', 99, 'MIPA'),
(57, '1290', 'WAHYU RAMADHAN ', 83.75, 86, 84.5, 88, 85.5, 90, 85, 91.5, 88.75, 89, 'MIPA', 94, 'MIPA'),
(58, '1291', 'WILLY DWI ANDIKA ', 89, 91, 83, 88, 81.75, 87, 83.5, 84, 84.5, 87, 'MIPA', 94, 'MIPA'),
(59, '1292', 'YOEL TANTO ', 80.5, 80, 87.5, 81, 81.5, 77, 84, 82, 82.5, 76, 'MIPA', 94, 'MIPA'),
(60, '1293', 'YUNIAMAN ZEGA ', 80.75, 81, 77.5, 77, 74, 71, 84.25, 81, 88.5, 76, 'MIPA', 85, 'MIPA'),
(61, '1294', 'ABDUL HARIST AS-SHABRI', 80.5, 82, 80, 86, 78.75, 75, 82.25, 70, 80.75, 80, 'MIPA', 101, 'MIPA'),
(62, '1295', 'ABDURRAHMAN FAIZ ', 85, 86.73, 82.5, 85.03, 80.75, 87.47, 81.25, 85.4, 82.73, 86.61, 'MIPA', 94, 'MIPA'),
(63, '1296', 'ABMI SUKMA EDRI', 85, 88, 85, 84, 80, 75, 87, 87, 80, 81, 'MIPA', 109, 'MIPA'),
(64, '1297', 'ADITYA ', 80.5, 82, 80, 86, 78.75, 75, 82.25, 70, 80.75, 80, 'MIPA', 94, 'MIPA'),
(65, '1298', 'AHMAD HIMKA ZUNAIDI ', 84.17, 85.8, 79.83, 80, 88.33, 80, 82.83, 77, 88.17, 80, 'MIPA', 96, 'MIPA'),
(66, '1299', 'AIKO NASHITA JOHARA ', 84.5, 89, 83.25, 80, 81, 83, 82.75, 88, 82.75, 87, 'IPS', 96, 'MIPA'),
(67, '1300', 'BERTIAN SAMSON W. SIREGAR ', 85.3, 88, 82.74, 86, 80.44, 88, 82.05, 88, 85, 82, 'MIPA', 99, 'MIPA'),
(68, '1301', 'BINTANG TA ENJELITA Br. MANURUNG ', 83.5, 89, 83.5, 86, 86.75, 85, 86, 88, 83.5, 90, 'MIPA', 94, 'MIPA'),
(69, '1302', 'CHERYN KANIA ', 89.5, 87, 90.25, 85, 86, 80, 87.5, 85, 88.5, 90, 'MIPA', 94, 'MIPA'),
(70, '1303', 'CRISTIE ANGELY ZEBUA ', 77, 81, 75, 87, 75, 80, 76, 85, 78, 86, 'MIPA', 87, 'MIPA'),
(71, '1304', 'DEA KRISTIE SIHOMBING ', 87.5, 91, 91, 96, 82, 86, 85.5, 86, 82.75, 93, 'MIPA', 104, 'MIPA'),
(72, '1305', 'DIFIA FARADINA ', 84, 82, 83, 82, 79, 76, 83, 82, 80, 82, 'MIPA', 94, 'MIPA'),
(73, '1306', 'FAKHRUL ISYRAQ RAMADHAN ', 84.25, 94, 85.25, 91, 83, 86, 84.25, 88, 82.25, 86, 'MIPA', 94, 'MIPA'),
(74, '1307', 'FITRIA NOFRIANI EFENDI ', 84, 82, 83, 82, 79, 76, 83, 82, 80, 82, 'MIPA', 87, 'MIPA'),
(75, '1308', 'IMELDA TRIANA SITUMEANG ', 85.5, 89, 85, 90, 82.25, 81, 88.25, 93, 91.25, 92, 'MIPA', 99, 'MIPA'),
(76, '1309', 'INAYAH DWI KHAIRA ', 89, 90, 89, 92, 86, 85, 90, 88, 88, 90, 'MIPA', 94, 'MIPA'),
(77, '1310', 'JULIANA ZALUKHU ', 82.5, 89, 84.25, 89, 81.5, 82, 85.75, 90, 91, 92, 'IPS', 87, 'MIPA'),
(78, '1311', 'KAKA FEBRIAN ', 78.5, 86, 79.25, 87, 76.5, 79, 78.75, 85, 84, 88, 'MIPA', 89, 'MIPA'),
(79, '1312', 'KEVIN MELKISEDEK SILABAN ', 85.5, 87, 84.25, 85, 76, 77, 82.5, 82, 82, 81, 'MIPA', 99, 'MIPA'),
(80, '1313', 'LIKKAS HAGIOIS PRATAMA GULTOM ', 91, 82, 88, 90, 86, 69, 85, 77, 91, 76, 'MIPA', 99, 'MIPA'),
(81, '1314', 'M. AZMI RAMADHAN ', 86.5, 88, 80.75, 81.67, 86.5, 88, 83.25, 78, 89, 83, 'MIPA', 91, 'MIPA'),
(82, '1315', 'M. RIZKY ALDRIAN NASUTION ', 83.25, 87, 84.25, 91, 83.5, 85, 82, 89, 77.75, 85, 'MIPA', 99, 'MIPA'),
(83, '1316', 'MUHAMMAD FIKRI MAULANA ', 83.75, 85, 86.62, 88, 86.87, 85, 86, 80, 86.37, 72, 'MIPA', 109, 'MIPA'),
(84, '1317', 'MUHAMMAD REZA DUMARA ', 85.25, 72.5, 79.75, 60, 79.75, 60, 81.75, 62.86, 77.5, 60, 'MIPA', 94, 'MIPA'),
(85, '1318', 'MUTHIA SHAHIDA ', 87.5, 89, 82.75, 73, 83, 86, 82.75, 89, 84, 76, 'MIPA', 94, 'MIPA'),
(86, '1319', 'MUTHI\'AH NABILA ', 80.25, 87, 82.25, 87, 78.5, 79, 82.75, 88, 81.25, 85, 'MIPA', 84, 'MIPA'),
(87, '1320', 'NURZIATUL NISYA', 83.75, 85, 86.62, 88, 86.87, 85, 86, 80, 86.37, 72, 'MIPA', 94, 'MIPA'),
(88, '1321', 'PUTRI FEBRIANTI', 82.5, 91, 84.5, 84, 85, 93, 88.75, 89, 85.25, 87, 'MIPA', 99, 'MIPA'),
(89, '1322', 'PUTRI HAFIFAH', 87.5, 89, 82.75, 73, 83, 86, 82.75, 89, 84, 76, 'MIPA', 99, 'MIPA'),
(90, '1323', 'RIO PATANDA ', 82.75, 90, 87, 88, 81.25, 82, 89.75, 92, 87.5, 93, 'MIPA', 101, 'MIPA'),
(91, '1324', 'RISVA MUKAROMAH ', 83.25, 87, 84.25, 91, 83.5, 85, 82, 89, 77.75, 85, 'MIPA', 91, 'MIPA'),
(92, '1325', 'SASKIA ZAHRA ', 86, 91, 86, 89, 84, 80, 89, 90, 92, 90, 'MIPA', 94, 'MIPA'),
(93, '1326', 'SHANDY PUTRA FAHRIZAL ', 89, 90, 85, 86, 84, 84, 81, 83, 85, 86, 'MIPA', 109, 'MIPA'),
(94, '1327', 'SHARLY ', 85, 86, 76.25, 82, 79.5, 70, 82.75, 75, 80.75, 73, 'IPS', 89, 'MIPA'),
(95, '1328', 'SOFIA QORY', 87.5, 91, 82, 88, 81.25, 83, 88.5, 87, 82, 60, 'MIPA', 96, 'MIPA'),
(96, '1329', 'THERESA GLORIA DEBORA PANGGABEAN ', 89, 90, 85, 86, 84, 84, 81, 83, 85, 86, 'MIPA', 84, 'MIPA');

-- --------------------------------------------------------

--
-- Struktur dari tabel `training`
--

CREATE TABLE `training` (
  `id_train` int(11) NOT NULL,
  `nis` varchar(20) NOT NULL,
  `nama_siswa` varchar(50) NOT NULL,
  `rapor_ind` float NOT NULL,
  `usbn_ind` float NOT NULL,
  `rapor_ing` float NOT NULL,
  `usbn_ing` float NOT NULL,
  `rapor_mtk` float NOT NULL,
  `usbn_mtk` float NOT NULL,
  `rapor_ipa` float NOT NULL,
  `usbn_ipa` float NOT NULL,
  `rapor_ips` float NOT NULL,
  `usbn_ips` float NOT NULL,
  `minat` enum('MIPA','IPS') NOT NULL,
  `nilai_iq` int(5) NOT NULL,
  `kelas` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `training`
--

INSERT INTO `training` (`id_train`, `nis`, `nama_siswa`, `rapor_ind`, `usbn_ind`, `rapor_ing`, `usbn_ing`, `rapor_mtk`, `usbn_mtk`, `rapor_ipa`, `usbn_ipa`, `rapor_ips`, `usbn_ips`, `minat`, `nilai_iq`, `kelas`) VALUES
(1, '1334', 'DINDA ALFENTRI', 92.5, 87.5, 87.5, 82.8, 83.75, 80.4, 79.75, 75.1, 86, 78.7, 'IPS', 101, 'IPS'),
(2, '1335', 'KEISYA ARYADITA MAHARANI ', 76.25, 72, 76.25, 78, 77.5, 69, 78, 71, 79.5, 75, 'IPS', 72, 'IPS'),
(3, '1336', 'NANDA SAPUTRA ', 82.25, 81, 85, 84, 82, 81, 82.75, 82, 82.75, 83, 'IPS', 87, 'IPS'),
(4, '1337', 'DIVA NURKHOLISA', 81.5, 85, 80, 87, 76.25, 77, 84, 89, 86.5, 87, 'IPS', 99, 'IPS'),
(5, '1338', 'RAPITA SADRI ', 80, 81, 83, 86, 76, 78, 85, 83, 82, 87, 'IPS', 82, 'IPS'),
(6, '1339', 'ROSY OKTAVIANI ', 89, 86, 79, 70, 81, 70, 82, 87, 80, 69, 'MIPA', 94, 'IPS'),
(7, '1340', 'DESDINDA SARI ', 77, 76, 76.5, 80, 75.25, 76, 75.75, 79, 76.25, 79, 'IPS', 72, 'IPS'),
(8, '1341', 'MUHAMMAD IQHWAL FAJRI ', 81, 84, 82, 85, 79, 79, 81, 85, 83, 81, 'IPS', 90, 'IPS'),
(9, '1342', 'NANDA RIA LESTARI ', 83, 83, 85.25, 84, 81, 80, 83.25, 84, 87.45, 85, 'IPS', 96, 'IPS'),
(10, '1343', 'RINI ROHANI OPPUSUNGGU', 77, 76, 76.5, 80, 75.25, 76, 75.75, 79, 76.25, 79, 'IPS', 82, 'IPS'),
(11, '1344', 'CHRISTELLA NATHASYA ', 89, 97, 84.5, 93, 84, 85, 85, 86, 88, 85, 'IPS', 99, 'IPS'),
(12, '1345', 'DEWI ANGELINA SILITONGA ', 82.75, 70, 82.75, 80, 81.5, 85, 82.25, 85, 85, 80, 'IPS', 87, 'IPS'),
(13, '1346', 'DIO PRATAMA ', 78.25, 78, 81.25, 80, 77.5, 78, 78, 77, 79.5, 81, 'IPS', 90, 'IPS'),
(14, '1347', 'FERNANDO MORIENTES', 83.75, 88, 81.25, 88, 78.75, 75, 79, 80, 87.25, 88, 'IPS', 94, 'IPS'),
(15, '1348', 'M. ANDRIAN ', 80, 80, 79.5, 80, 75, 78, 76.5, 84, 76.25, 78, 'IPS', 89, 'IPS'),
(16, '1349', 'MARSSHEILLA AGUSTINA ', 87.25, 87, 85, 84, 76, 77, 82, 81, 82.75, 82, 'MIPA', 87, 'IPS'),
(17, '1350', 'MHD. REVALDO ', 82.75, 89, 80.25, 82, 79.75, 92, 78.5, 89, 81.5, 84, 'IPS', 91, 'IPS'),
(18, '1351', 'RENDI HANAFI', 79.75, 85, 77.75, 81, 77, 81, 79, 81, 78.75, 80, 'IPS', 94, 'IPS'),
(19, '1352', 'ABEL ZEBADA HEPHZIBAH ', 85, 83, 87, 84, 82.5, 82, 85, 82, 86.75, 90, 'IPS', 109, 'IPS'),
(20, '1353', 'AFANDI ALSYAR ', 83.5, 86.27, 80.75, 83.75, 82.75, 88.87, 84, 87.93, 83, 86.67, 'IPS', 94, 'IPS'),
(21, '1354', 'AHMAD FAISAL ', 83.75, 81, 83, 89, 79.5, 72, 79, 90, 79.75, 78, 'MIPA', 94, 'IPS'),
(22, '1355', 'AKBAR ROBBANI ', 81, 83, 81, 85, 80, 75, 82, 81, 85, 88, 'IPS', 77, 'IPS'),
(23, '1356', 'AMANDA PUTRI SALSABILA ', 87, 87, 81.5, 82, 77, 82, 85, 84, 83, 86, 'IPS', 91, 'IPS'),
(24, '1357', 'AMELIA LUSIANA RISKA MASY\'URI ', 83.5, 88, 84.75, 88, 75.25, 78, 79.5, 85, 83.25, 87, 'IPS', 84, 'IPS'),
(25, '1358', 'ARIN ZAHRAH PUTRI ', 86, 90, 80.5, 90, 81.75, 70, 81.75, 84, 88.25, 86, 'IPS', 94, 'IPS'),
(26, '1359', 'BELLA JULIANI ', 78.25, 80, 78.75, 80, 78.25, 79, 77.5, 79, 80.75, 83, 'IPS', 94, 'IPS'),
(27, '1360', 'DAVIN ZUHDI DERMAWAN SANDI ', 83.5, 86, 87.5, 88, 85.75, 79, 90.25, 85, 85.25, 86, 'IPS', 94, 'IPS'),
(28, '1361', 'DIAN PUSPITA NABILA ', 82.5, 86, 83.5, 89, 83.5, 76, 82.5, 88, 82, 83, 'IPS', 94, 'IPS'),
(29, '1362', 'DIKKY WAHYUDI ', 82.25, 88, 85, 85, 81.25, 80, 83, 83, 85.25, 82, 'IPS', 96, 'IPS'),
(30, '1363', 'EGA SABRINA ', 83.75, 88, 81.25, 88, 78.75, 75, 79, 80, 87.25, 88, 'IPS', 94, 'IPS'),
(31, '1364', 'ELSA NADHIA ', 78.25, 76, 76.5, 78, 75.25, 77, 75.25, 82, 75.25, 79, 'IPS', 77, 'IPS'),
(32, '1365', 'FAJAR BERLIANDO ', 90, 90, 93.75, 97, 85, 89, 88.5, 89, 82.5, 82, 'IPS', 99, 'IPS'),
(33, '1366', 'FALAH FITRAH NASUTION ', 88, 90, 90, 85, 84.75, 60, 87.75, 82, 80.5, 82, 'IPS', 104, 'IPS'),
(34, '1367', 'FERNANDUS SURYADINATA ', 92, 90, 85.3, 82, 83.5, 81, 84.5, 84, 85.5, 86, 'IPS', 99, 'IPS'),
(35, '1368', 'FITRA RAMADHAN. S ', 84.25, 86.5, 82.5, 81.5, 84, 78, 82.17, 83, 84.84, 94, 'IPS', 87, 'IPS'),
(36, '1369', 'FRANSISKA ZEBUA ', 82.5, 86, 83.5, 89, 83.5, 76, 82.5, 88, 82, 83, 'IPS', 94, 'IPS'),
(37, '1370', 'HANS YOHANES SITOMPUL ', 79.75, 85, 77.75, 81, 77, 81, 79, 81, 78.75, 80, 'IPS', 84, 'IPS'),
(38, '1371', 'HANY OCTAVIA ', 85, 83, 87, 84, 82.5, 82, 85, 82, 86.75, 90, 'IPS', 99, 'IPS'),
(39, '1372', 'IBNU RAMADHAN ', 83.5, 86.27, 80.75, 83.75, 82.75, 88.87, 84, 87.93, 83, 86.67, 'IPS', 77, 'IPS'),
(40, '1373', 'JAHRA ZEVA ACHILIA ', 83.75, 81, 83, 89, 79.5, 72, 79, 90, 79.75, 78, 'MIPA', 89, 'IPS'),
(41, '1374', 'M. FARHAN ZILDJIAN ', 81, 83, 81, 85, 80, 75, 82, 81, 85, 88, 'IPS', 94, 'IPS'),
(42, '1375', 'MUHAMMAD KAFIN KIBRAH ', 87, 87, 81.5, 82, 77, 82, 85, 84, 83, 86, 'IPS', 99, 'IPS'),
(43, '1376', 'MUHAMMAD REZA ANDIANSYAH', 83.5, 88, 84.75, 88, 75.25, 78, 79.5, 85, 83.25, 87, 'IPS', 91, 'IPS'),
(44, '1377', 'NASYWATA SALSABILA ', 86, 90, 80.5, 90, 81.75, 70, 81.75, 84, 88.25, 86, 'IPS', 89, 'IPS'),
(45, '1378', 'NIKITA PUTRI', 78.25, 80, 78.75, 80, 78.25, 79, 77.5, 79, 80.75, 83, 'IPS', 81, 'IPS'),
(46, '1379', 'NURHALIZA ADRIYENI ', 83.5, 86, 87.5, 88, 85.75, 79, 90.25, 85, 85.25, 86, 'IPS', 94, 'IPS'),
(47, '1380', 'SHADDAM RIFA\'I', 82.5, 86, 83.5, 89, 83.5, 76, 82.5, 88, 82, 83, 'IPS', 104, 'IPS'),
(48, '1381', 'SYAHLU LUTHFIYYAH ALBARI ', 82.25, 88, 85, 85, 81.25, 80, 83, 83, 85.25, 82, 'IPS', 79, 'IPS'),
(49, '1382', 'VIVIE SABRINA ', 83.75, 88, 81.25, 88, 78.75, 75, 79, 80, 87.25, 88, 'IPS', 87, 'IPS'),
(50, '1383', 'WINDY APRILIA ', 78.25, 76, 76.5, 78, 75.25, 77, 75.25, 82, 75.25, 79, 'IPS', 94, 'IPS'),
(51, '1384', 'WIRA ANASTASYA DACHI', 90, 90, 93.75, 97, 85, 89, 88.5, 89, 82.5, 82, 'IPS', 74, 'IPS'),
(52, '1385', 'ABDURRAHMAN DZAKWAN AZDAR', 88, 90, 90, 85, 84.75, 60, 87.75, 82, 80.5, 82, 'IPS', 84, 'IPS'),
(53, '1386', 'ADISYA RAHMA SURYANI ', 92, 90, 85.3, 82, 83.5, 81, 84.5, 84, 85.5, 86, 'IPS', 77, 'IPS'),
(54, '1387', 'AFIFAH FAUZIAH ', 84.25, 86.5, 82.5, 81.5, 84, 78, 82.17, 83, 84.84, 94, 'IPS', 94, 'IPS'),
(55, '1388', 'ALIVIA PUTRI RAMADHANI ', 82.5, 86, 83.5, 89, 83.5, 76, 82.5, 88, 82, 83, 'IPS', 79, 'IPS'),
(56, '1389', 'AMANDA ASTRIATI ', 82, 85, 83, 82, 83, 80, 85.25, 84, 84, 80, 'IPS', 86, 'IPS'),
(57, '1390', 'AMANDA MUHARANI ', 83, 83.75, 79.75, 77.12, 77.25, 72.8, 81, 77.41, 81.4, 84.1, 'IPS', 87, 'IPS'),
(58, '1391', 'ANANDA MAHARANI FADLI', 87.75, 87, 81, 76, 80.25, 75, 82, 84, 82, 74, 'IPS', 84, 'IPS'),
(59, '1392', 'ANNISAWULAN SEPTIANI', 76, 75, 78.25, 78, 75, 76, 75, 84, 76, 79, 'IPS', 104, 'IPS'),
(60, '1393', 'ATHA MUHAMMAD ', 78, 70, 77.75, 70, 78.5, 70, 78.5, 71, 80.25, 71, 'IPS', 94, 'IPS'),
(61, '1394', 'BAGAS PUTRA PAMUNGKAS ', 80.25, 86, 79.75, 86, 77.75, 77, 76.75, 81, 83.75, 90, 'IPS', 89, 'IPS'),
(62, '1395', 'DAFFA SENIA', 84.4, 79.5, 90, 79, 82.6, 75, 83.9, 82, 92, 81, 'IPS', 89, 'IPS'),
(63, '1396', 'G. MENDELEYEEF MANURUNG ', 81.75, 80, 81.4, 82, 77.5, 79, 78.75, 85, 77.25, 79, 'MIPA', 86, 'IPS'),
(64, '1397', 'GAVIN AJI RIZQULLAH ', 80.25, 86, 82, 87.5, 78.75, 76, 78.5, 85, 82.25, 78, 'IPS', 91, 'IPS'),
(65, '1398', 'GRACIA PUTRI THOMAS ', 81, 84, 84.75, 80, 79.25, 78, 79.25, 80, 82, 83, 'MIPA', 94, 'IPS'),
(66, '1399', 'IRVAN HENDRAWAN LUMBANTORUAN ', 86, 92, 88, 89, 78, 60, 88, 85, 85, 74, 'IPS', 72, 'IPS'),
(67, '1400', 'KHAIRANI ANIZA S', 80, 86, 83.25, 88, 77.5, 78, 85.75, 85, 79.5, 93, 'IPS', 96, 'IPS'),
(68, '1401', 'M. FAUZAN HASBI ', 82, 85, 82, 87, 78, 79, 86, 88, 88, 84, 'IPS', 94, 'IPS'),
(69, '1402', 'M. ZAKI SAPUTRA ', 84, 84, 82, 84, 80, 80, 82, 83, 87, 86, 'IPS', 94, 'IPS'),
(70, '1403', 'MARIA STEVANI OMPUSUNGGU ', 83, 83, 82, 82, 75, 75, 80, 80, 87, 87, 'IPS', 96, 'IPS'),
(71, '1404', 'MEYSHA PUSPITA SARI', 79.75, 86, 82.25, 77, 79.25, 81, 78.75, 84, 83, 86, 'IPS', 87, 'IPS'),
(72, '1405', 'MHD. RIZKI ADWIL NASUTION ', 83.75, 83, 88.5, 86, 85, 81, 88.25, 87, 86, 80, 'IPS', 89, 'IPS'),
(73, '1406', 'MUHAMMAD ILHAM ', 89.25, 94, 88, 85, 89, 85, 88.5, 87, 94.5, 94, 'IPS', 96, 'IPS'),
(74, '1407', 'NAIMAH ANNAS ', 82, 76.5, 82, 71, 79, 69.5, 80, 70, 82, 71, 'IPS', 87, 'IPS'),
(75, '1408', 'NALA TANIA NAZIRA ', 80.5, 80, 80.75, 81, 76.75, 77, 77.5, 85, 77.75, 85, 'MIPA', 91, 'IPS'),
(76, '1409', 'NURFAHRANI ALISHA SIGIT ', 87.5, 97, 86.25, 85, 84.25, 84, 88, 92, 85.25, 85, 'IPS', 94, 'IPS'),
(77, '1410', 'PANDORA AURALIA RINANDA ', 78.75, 89, 82, 91, 76.75, 78, 82.25, 83, 82.5, 91, 'IPS', 91, 'IPS'),
(78, '1411', 'PUJA TRIAN SAPUTRA ', 81, 84, 84.75, 80, 79.25, 78, 79.25, 80, 82, 83, 'IPS', 87, 'IPS'),
(79, '1412', 'REGINA MARVE OLIVE JANUARI ', 87.5, 97, 86.25, 85, 84.25, 84, 88, 92, 85.25, 85, 'IPS', 84, 'IPS'),
(80, '1413', 'RIZKA KHAIRUNNISA ', 81, 81, 81, 81, 78, 79, 80, 82, 81, 83, 'IPS', 91, 'IPS'),
(81, '1414', 'RYANSYAH HASYIM PAENG SASA ', 84.4, 79.5, 90, 79, 82.6, 75, 83.9, 82, 92, 81, 'IPS', 101, 'IPS'),
(82, '1415', 'TINA DAME PEFNANTI ', 83.25, 85, 86, 85, 82.75, 78, 85.75, 85, 83.75, 82, 'IPS', 103, 'IPS'),
(83, '1416', 'VANIA DARA ZALIKA ', 82, 85, 83, 82, 83, 80, 85.25, 84, 84, 80, 'IPS', 87, 'IPS'),
(84, '1417', 'WILLY ANDRY ', 83, 83.75, 79.75, 77.12, 77.25, 72.8, 81, 77.41, 81.4, 84.1, 'IPS', 89, 'IPS'),
(85, '1418', 'YESSY AULIA YANTI ', 87.75, 87, 81, 76, 80.25, 75, 82, 84, 82, 74, 'IPS', 99, 'IPS'),
(86, '1419', 'ADILLA FAMELA KHAIRINISYA ', 76, 75, 78.25, 78, 75, 76, 75, 84, 76, 79, 'IPS', 68, 'IPS'),
(87, '1420', 'APRILLIA ', 78, 70, 77.75, 70, 78.5, 70, 78.5, 71, 80.25, 71, 'IPS', 90, 'IPS'),
(88, '1421', 'AQIL FAUZI ', 80.25, 86, 79.75, 86, 77.75, 77, 76.75, 81, 83.75, 90, 'IPS', 81, 'IPS'),
(89, '1422', 'AYESHA ZAKIYA SAMMYD ', 84.4, 79.5, 90, 79, 82.6, 75, 83.9, 82, 92, 81, 'IPS', 104, 'IPS'),
(90, '1423', 'DEANDA RAMADHANI ', 81.75, 80, 81.4, 82, 77.5, 79, 78.75, 85, 77.25, 79, 'MIPA', 89, 'IPS'),
(91, '1424', 'DEWI ASARI', 80.25, 86, 82, 87.5, 78.75, 76, 78.5, 85, 82.25, 78, 'IPS', 99, 'IPS'),
(92, '1425', 'DHEA PRATIWI INDY ', 81, 84, 84.75, 80, 79.25, 78, 79.25, 80, 82, 83, 'MIPA', 96, 'IPS'),
(93, '1426', 'ELOK LITA PRADANI ', 86, 92, 88, 89, 78, 60, 88, 85, 85, 74, 'IPS', 99, 'IPS'),
(94, '1427', 'FEBY ERIKAWATI', 80, 86, 83.25, 88, 77.5, 78, 85.75, 85, 79.5, 93, 'IPS', 82, 'IPS'),
(95, '1428', 'HALIM BAYU KESUMA ', 82, 85, 82, 87, 78, 79, 86, 88, 88, 84, 'IPS', 86, 'IPS'),
(96, '1429', 'ICHA TESALONIKA SILAEN ', 84, 84, 82, 84, 80, 80, 82, 83, 87, 86, 'IPS', 99, 'IPS'),
(97, '1430', 'KENJI OTTO WIJAYA ', 83, 83, 82, 82, 75, 75, 80, 80, 87, 87, 'IPS', 86, 'IPS'),
(98, '1431', 'KEVIN ANANDA PUTRA', 79.75, 83, 85, 87, 75.5, 71, 73.5, 78, 79.75, 76, 'IPS', 79, 'IPS'),
(99, '1432', 'KEVIN LEE', 75.75, 77, 78.75, 82, 75.75, 77, 76, 77, 75, 78, 'IPS', 87, 'IPS'),
(100, '1433', 'LIONNY FIOLA ', 84, 89, 85, 88, 81, 93, 88, 92, 89, 88, 'MIPA', 104, 'IPS'),
(101, '1434', 'MARTIN EKA IMANUEL ', 79.75, 83, 85, 87, 75.5, 71, 73.5, 78, 79.75, 76, 'IPS', 114, 'IPS'),
(102, '1435', 'MEILIA DWI ASTUTI', 79.25, 86, 83.5, 85, 76.5, 78, 83, 86, 80, 87, 'IPS', 87, 'IPS'),
(103, '1436', 'MUHAMMAD FAHMI SALEH ', 88.25, 88.2, 87.75, 86.3, 85.25, 78.9, 84.5, 83.6, 85.75, 82.3, 'IPS', 87, 'IPS'),
(104, '1437', 'NADIA PUTRI ANNANTASYA  DAELI ', 86, 84.4, 79.75, 84.03, 79.25, 86.27, 81.5, 84.8, 81.5, 83.73, 'IPS', 91, 'IPS'),
(105, '1438', 'NAJWA PUTRI AQNI ', 79.75, 83, 85, 87, 75.5, 71, 73.5, 78, 79.75, 76, 'IPS', 91, 'IPS'),
(106, '1439', 'PATRIOT JHONSON ', 86, 92, 88, 89, 78, 60, 88, 85, 85, 74, 'IPS', 82, 'IPS'),
(107, '1440', 'PUAN MAHARANI SYAFITRI ', 81.8, 84.6, 81.2, 65, 85, 60, 79.8, 60, 79.5, 61, 'MIPA', 89, 'IPS'),
(108, '1441', 'RAEHAN SEBASTIAN LUMBAN GAOL ', 84, 80, 84, 89, 87, 87, 86, 89, 86, 87, 'MIPA', 84, 'IPS'),
(109, '1442', 'RAIHANI ALYA ', 79.5, 80, 80, 79, 76.75, 78, 79, 84, 78.5, 85, 'MIPA', 109, 'IPS'),
(110, '1443', 'RISWANDA RIYANI BASUKI ', 79.25, 85, 80.5, 86, 76.25, 77, 83.75, 83, 81.25, 84, 'MIPA', 94, 'IPS'),
(111, '1444', 'RIZKY HIDAYAT PUTRA ', 76, 66.29, 79.5, 81.32, 76.5, 61.54, 83.75, 81.44, 79.5, 89.86, 'MIPA', 87, 'IPS'),
(112, '1445', 'SAYYIDUL AZZUMAR LUBIS ', 83, 84, 85, 84, 79, 76, 83, 83, 81, 83, 'MIPA', 82, 'IPS'),
(113, '1446', 'SOLEH SYAHPUTRA ', 82.75, 78, 82.25, 78, 78.25, 76, 82, 78, 84, 72, 'MIPA', 94, 'IPS'),
(114, '1447', 'SYIFA MUHARANI SHAHIBAH ', 79.25, 82, 79.5, 86, 77.75, 70, 77, 85, 80, 75, 'MIPA', 94, 'IPS'),
(115, '1448', 'THASYA AMANDA ', 89, 89, 81.8, 83, 75.5, 77, 80.8, 81, 82.3, 82, 'MIPA', 89, 'MIPA'),
(116, '1449', 'TRIEGI AZMI ADHITYA ', 84.75, 88, 84.75, 89, 79, 80, 90, 88, 89.5, 92, 'MIPA', 96, 'MIPA'),
(117, '1450', 'VANISA AZZUHRA ', 82.5, 80.5, 85.25, 77, 80, 77.5, 81.75, 80, 86.75, 84.5, 'MIPA', 99, 'MIPA'),
(118, '1451', 'YENNI AFNI YELSI', 90, 87, 89, 86, 79.75, 60, 89.75, 89, 89.25, 77, 'MIPA', 82, 'MIPA'),
(119, '1452', 'ADISTY FRERY L', 82, 86, 79.25, 86, 76, 80, 79.5, 79, 80.25, 88, 'MIPA', 94, 'MIPA'),
(120, '1453', 'ADYATMA MELGIDE ', 89.75, 88, 91, 88, 88, 87, 88.75, 89, 91.5, 90, 'MIPA', 94, 'MIPA'),
(121, '1454', 'AFRILIA ', 89.25, 96, 90.25, 95, 88.25, 93, 89.75, 94, 93.5, 94, 'MIPA', 104, 'MIPA'),
(122, '1455', 'AISYA MAHARANI', 82, 83, 81, 81, 82.5, 75, 81.7, 75, 86.5, 73, 'MIPA', 104, 'MIPA'),
(123, '1456', 'ARMALIA PUTRI GEMILANG ', 83, 89, 83.25, 89, 82.5, 88, 85, 90, 87.5, 88, 'MIPA', 89, 'MIPA'),
(124, '1457', 'ARYA KIRANA ', 83.5, 86, 81.5, 87, 81.75, 82, 84.75, 88, 84.25, 91, 'MIPA', 84, 'MIPA'),
(125, '1458', 'AULIA RAHMAN RAMLI ', 83.25, 88, 80.5, 83, 79.25, 92, 79.75, 92, 83.5, 92, 'MIPA', 84, 'MIPA'),
(126, '1459', 'AUZHACY INTANA ', 84.75, 89, 88, 91, 82.5, 85, 83.5, 89, 83, 87, 'MIPA', 87, 'MIPA'),
(127, '1460', 'AZI FADHLUR ROHMAN ', 82.75, 89, 80, 89, 82.5, 78, 84.5, 88, 90, 89, 'MIPA', 87, 'MIPA'),
(128, '1461', 'DEAZ SALSABILLAH SYAFITRI', 84.25, 90, 85.5, 87, 79.5, 75, 83.75, 83, 86, 91, 'MIPA', 94, 'MIPA'),
(129, '1462', 'DWI OLIVIA ', 85.5, 87, 84.75, 81, 83, 82, 86.75, 84, 84, 82, 'MIPA', 87, 'MIPA'),
(130, '1463', 'ANDIEN NABILLA ELFIRA ', 86.5, 88, 89.75, 89, 85.25, 85, 90, 90, 81.25, 87, 'MIPA', 94, 'MIPA'),
(131, '1464', 'ANIZA PUTRI SANI ', 82.5, 85, 83, 84, 78.75, 72, 77.75, 78, 83, 81, 'MIPA', 94, 'MIPA'),
(132, '1465', 'ATTA SYAHPUTRA ', 76, 87, 74.75, 85, 70.5, 75, 73.25, 78, 75, 76, 'MIPA', 77, 'MIPA'),
(133, '1466', 'DEVIRA AZZAHRA ', 89.25, 83, 82.75, 90, 83.75, 81, 86, 89, 86.5, 88, 'MIPA', 94, 'MIPA'),
(134, '1467', 'DIMAS NOVENDRA RAMADHAN ', 87.25, 90.33, 83.75, 88.63, 81.25, 85.13, 81.5, 84.97, 84.75, 87.73, 'MIPA', 89, 'MIPA'),
(135, '1468', 'DUTA PRADANA TANG ', 85.25, 90, 84.5, 84, 79.75, 81, 85.75, 93, 87.5, 90, 'MIPA', 87, 'MIPA'),
(136, '1469', 'ERIK ARSINGAL SIDABUTAR ', 85.75, 86, 86.25, 85, 81, 83, 85.5, 84, 82.75, 84, 'MIPA', 89, 'MIPA'),
(137, '1470', 'FARHAN FEBRYAN ', 80, 85, 78.5, 84, 76, 88, 81.5, 86, 84.5, 88, 'MIPA', 96, 'MIPA'),
(138, '1471', 'FHARHANS AUDRYAN ', 89.25, 91.4, 84.75, 88.47, 89.25, 87.33, 86.5, 90, 88.75, 90.33, 'MIPA', 91, 'MIPA'),
(139, '1472', 'FLORENTINA ', 86.5, 97, 85.25, 91, 82.75, 85, 90.75, 88, 87, 93, 'MIPA', 89, 'MIPA'),
(140, '1473', 'HANNYVA NISA', 85.25, 90, 84.5, 84, 79.75, 81, 85.75, 93, 87.5, 90, 'MIPA', 84, 'MIPA'),
(141, '1474', 'IMAM WAHYUDIN ', 84, 87, 82.5, 85, 80, 74, 75.5, 84, 81.75, 82, 'MIPA', 84, 'MIPA'),
(142, '1475', 'INDRI VERINA UTAMI ', 85.75, 86, 86.25, 85, 81, 83, 85.5, 84, 82.75, 84, 'MIPA', 94, 'MIPA'),
(143, '1476', 'IVAN MULDIYANTO ', 85, 89.35, 85.5, 80.6, 86.75, 80.85, 83.25, 79.8, 87, 81.78, 'MIPA', 94, 'MIPA'),
(144, '1477', 'LESTARI PURBA ', 86.5, 87, 90.75, 88, 82.75, 82, 84, 87, 90.5, 87, 'MIPA', 96, 'MIPA'),
(145, '1478', 'MOHD. RAHUL ', 85.75, 90.5, 85.09, 84.5, 84.33, 80, 86.75, 92.5, 86.25, 80, 'MIPA', 89, 'MIPA'),
(146, '1479', 'MUTIA LEYRA PUTRI SATI', 86.5, 87, 86.75, 89.5, 88.25, 90, 88, 87, 85, 89, 'MIPA', 94, 'MIPA'),
(147, '1480', 'NAJWA SHEFA AZZAHRA ', 82, 79, 81, 81, 79, 71, 81, 82, 81, 80, 'MIPA', 94, 'MIPA'),
(148, '1481', 'NUR ILHAM ', 89, 89, 81.8, 83, 75.5, 77, 80.8, 81, 82.3, 82, 'MIPA', 79, 'MIPA'),
(149, '1482', 'NURHALIZA ', 82, 86, 83, 88, 78, 81, 82, 86, 83, 89, 'MIPA', 87, 'MIPA'),
(150, '1483', 'NURUL FADILA DWI TANIA ', 91.7, 88.5, 93.9, 78, 88.2, 78, 89.1, 91, 94, 86, 'MIPA', 101, 'MIPA'),
(151, '1484', 'PUTRI RAHAYU', 90, 85, 90, 85, 88, 88, 90, 88, 90, 90, 'MIPA', 99, 'MIPA'),
(152, '1485', 'RAMANATHAN ANANDLATUL FREDLYND', 90, 96, 87.25, 90.5, 93, 91, 91.75, 93, 93.25, 94, 'MIPA', 104, 'MIPA'),
(153, '1486', 'SALSABILLA HARDIYANTI', 83.5, 89, 84.5, 89, 81.25, 80, 86.25, 83, 86.25, 91, 'MIPA', 99, 'MIPA'),
(154, '1487', 'SEKAR WANGI ', 84.75, 88, 84.75, 89, 79, 80, 90, 88, 89.5, 92, 'MIPA', 99, 'MIPA'),
(155, '1488', 'SHABILLA YOVANDA LUKMAN ', 85, 87, 84, 80, 86, 70, 80, 84, 86, 84, 'MIPA', 99, 'MIPA'),
(156, '1489', 'SOFIA NAQIYA', 86.25, 86, 89, 83, 82, 77, 87, 85, 83.5, 83, 'MIPA', 104, 'MIPA'),
(157, '1490', 'SURYO UTOMO ', 79.5, 87, 78.5, 87, 75.25, 80, 80.75, 90, 81.75, 87, 'MIPA', 99, 'MIPA'),
(158, '1491', 'SYAFIRA KHAIRUN NAZHIFAH', 89, 89, 81.8, 83, 75.5, 77, 80.8, 81, 82.3, 82, 'MIPA', 94, 'MIPA'),
(159, '1492', 'THEOGIVANNY ', 84.75, 88, 84.75, 89, 79, 80, 90, 88, 89.5, 92, 'MIPA', 94, 'MIPA'),
(160, '1493', 'TIARA HENDRIANA PUTRI ', 82.5, 80.5, 85.25, 77, 80, 77.5, 81.75, 80, 86.75, 84.5, 'MIPA', 89, 'MIPA'),
(161, '1494', 'YASINTHA PUTRI RIFANI APRILIA ', 90, 87, 89, 86, 79.75, 60, 89.75, 89, 89.25, 77, 'MIPA', 99, 'MIPA'),
(162, '1495', 'YOGA PUTRA PRATAMA ', 82, 86, 79.25, 86, 76, 80, 79.5, 79, 80.25, 88, 'MIPA', 87, 'MIPA'),
(163, '1496', 'ADITYA SYAHPUTRA ', 89.75, 88, 91, 88, 88, 87, 88.75, 89, 91.5, 90, 'MIPA', 99, 'MIPA'),
(164, '1497', 'ALVIN KESUMA WIJAYA ', 89.25, 96, 90.25, 95, 88.25, 93, 89.75, 94, 93.5, 94, 'MIPA', 91, 'MIPA'),
(165, '1498', 'CANDRA RICARDO GULTOM', 82, 83, 81, 81, 82.5, 75, 81.7, 75, 86.5, 73, 'MIPA', 87, 'MIPA'),
(166, '1499', 'NATASYA RATU AMANDA ', 83, 89, 83.25, 89, 82.5, 88, 85, 90, 87.5, 88, 'MIPA', 99, 'MIPA'),
(167, '1500', 'FILIPI TARIGAN ', 83.5, 86, 81.5, 87, 81.75, 82, 84.75, 88, 84.25, 91, 'MIPA', 94, 'MIPA'),
(168, '1501', 'FRION RAFAEL RYCO SINURAT ', 83.25, 88, 80.5, 83, 79.25, 92, 79.75, 92, 83.5, 92, 'MIPA', 89, 'MIPA'),
(169, '1502', 'GILANG JUSTICIO ', 84.75, 89, 88, 91, 82.5, 85, 83.5, 89, 83, 87, 'MIPA', 89, 'MIPA'),
(170, '1503', 'GOVAL ANERTA SALAM ', 82.75, 89, 80, 89, 82.5, 78, 84.5, 88, 90, 89, 'MIPA', 91, 'MIPA'),
(171, '1504', 'HAFIFAH', 84.25, 90, 85.5, 87, 79.5, 75, 83.75, 83, 86, 91, 'MIPA', 99, 'MIPA'),
(172, '1505', 'HANIFAH NABILLAH ', 82.25, 84, 82.75, 82, 84.25, 81, 83.75, 84, 85, 80, 'MIPA', 89, 'MIPA'),
(173, '1506', 'HANS JENNY HALALAS ', 85, 87, 84, 80, 86, 70, 80, 84, 86, 84, 'MIPA', 104, 'MIPA'),
(174, '1507', 'HILDARIA S.', 82.55, 89, 85.03, 85, 78.12, 84, 84.34, 82, 85.5, 84, 'MIPA', 99, 'MIPA'),
(175, '1508', 'KHALISHA SHAFA NABILA ', 86.25, 88, 81.5, 84, 78.5, 73, 77, 85, 81.75, 82, 'MIPA', 96, 'MIPA'),
(176, '1509', 'LIA HARYANI ', 82.55, 89, 85.03, 85, 78.12, 84, 84.34, 82, 85.5, 84, 'MIPA', 97, 'MIPA'),
(177, '1510', 'LIDIA SINAGA ', 82, 83, 81, 81, 82.5, 75, 81.7, 75, 86.5, 73, 'MIPA', 90, 'MIPA'),
(178, '1511', 'M. ALFARIZI ', 88.25, 91, 85, 84, 80.75, 82, 88.25, 86, 86, 86, 'MIPA', 104, 'MIPA'),
(179, '1512', 'M. RAIHAN ', 85, 89, 85.75, 86.7, 82.5, 80, 84.25, 89.3, 87, 85.6, 'MIPA', 104, 'MIPA'),
(180, '1513', 'MAHADI NUR ', 78.75, 82, 79.25, 81, 77.75, 72, 78.5, 78, 78, 73, 'MIPA', 84, 'MIPA'),
(181, '1514', 'MARUDUT OCTAVIA SINAGA ', 83.5, 86, 81.5, 87, 81.75, 82, 84.75, 88, 84.25, 91, 'MIPA', 88, 'MIPA'),
(182, '1515', 'MUHAMMAD IQBAL HANAFI ', 87.25, 88, 89, 91, 91, 92, 84.75, 88, 89.75, 88, 'MIPA', 94, 'MIPA'),
(183, '1516', 'NABILA SYAFITRIANI ', 86.5, 88, 89.75, 89, 85.25, 85, 90, 90, 81.25, 87, 'MIPA', 94, 'MIPA'),
(184, '1517', 'NAJWA KAMEELA ANDJANI ', 84.9, 86, 81.4, 82, 84.8, 79, 80.8, 84, 82.9, 82, 'MIPA', 91, 'MIPA'),
(185, '1518', 'NURUL HIDAYATI', 85.5, 87, 84.75, 81, 83, 82, 86.75, 84, 84, 82, 'MIPA', 82, 'MIPA'),
(186, '1519', 'PUTRI ANISA', 84, 84, 85.75, 85, 83, 82, 80.75, 84, 83.25, 84, 'MIPA', 99, 'MIPA'),
(187, '1520', 'PUTRI IDA YANTI SIHOMBING ', 88.5, 88, 81, 84, 81.5, 82, 86.25, 87, 83.25, 86, 'MIPA', 91, 'MIPA'),
(188, '1521', 'REYHAN HERMANTO ', 84, 90, 81, 83, 79, 85, 79, 89, 84, 80, 'MIPA', 91, 'MIPA'),
(189, '1522', 'RUDI KURNIAWAN ', 89.25, 83, 82.75, 90, 83.75, 81, 86, 89, 86.5, 88, 'MIPA', 99, 'MIPA'),
(190, '1523', 'SOFYAN ', 89, 90, 85.3, 85, 77, 77, 84, 82, 85, 84, 'MIPA', 94, 'MIPA'),
(191, '1524', 'TENGKU FIMA FARADILA ', 85.25, 85, 89.5, 86.5, 83.75, 79, 85.25, 85, 85.25, 86, 'MIPA', 106, 'MIPA'),
(192, '1525', 'VIRGIAWAN LISTIANTA', 88.5, 88, 81, 84, 81.5, 82, 86.25, 87, 83.25, 86, 'MIPA', 87, 'MIPA'),
(193, '1526', 'YOHANNA JULIANI SITANJAK ', 87.25, 86.5, 84.25, 84.5, 83.5, 70, 85, 84.5, 83.5, 80, 'MIPA', 84, 'MIPA'),
(194, '1527', 'ANISA AZHARA ', 80.5, 86, 82.75, 83, 80, 76, 81.25, 83, 82.25, 77, 'MIPA', 99, 'MIPA'),
(195, '1528', 'ANNANDA SALSA BILLA ', 81.25, 89, 80.5, 88, 81.25, 88, 84, 88, 83.5, 90, 'MIPA', 99, 'MIPA'),
(196, '1529', 'ANNISA NUR ZANNAH ', 84, 84, 85.75, 85, 83, 82, 80.75, 84, 83.25, 84, 'MIPA', 91, 'MIPA'),
(197, '1530', 'AULYA FIQRY NAGASABANDI ', 84.75, 86, 89.5, 89, 88.5, 80, 88.95, 87, 88.75, 74, 'MIPA', 114, 'MIPA'),
(198, '1531', 'DHEA ARDINA', 89.25, 83, 82.75, 90, 83.75, 81, 86, 89, 86.5, 88, 'MIPA', 94, 'MIPA'),
(199, '1532', 'DINI ANGGRAINI ', 85.23, 85.73, 83.25, 89.27, 87.75, 89.67, 84, 88.97, 82.75, 86.4, 'MIPA', 104, 'MIPA'),
(200, '1533', 'DIO FAJRI', 86, 91, 85, 81, 83, 88, 86, 89, 85, 88, 'MIPA', 87, 'MIPA'),
(201, '1534', 'EDU ARMAN WATUHU ', 85.5, 87, 84.75, 81, 83, 82, 86.75, 84, 84, 82, 'MIPA', 94, 'MIPA'),
(202, '1535', 'FAJRIN PUTRA MUSAF ', 86.5, 88, 89.75, 89, 85.25, 85, 90, 90, 81.25, 87, 'MIPA', 106, 'MIPA'),
(203, '1536', 'FARHAN BINTANG MUZAKI NASUTION ', 82.5, 85, 83, 84, 78.75, 72, 77.75, 78, 83, 81, 'MIPA', 94, 'MIPA'),
(204, '1537', 'IMFALA MUTIARA ADHA ', 76, 87, 74.75, 85, 70.5, 75, 73.25, 78, 75, 76, 'MIPA', 94, 'MIPA'),
(205, '1538', 'KEVIN KURNIAWAN ', 89.25, 83, 82.75, 90, 83.75, 81, 86, 89, 86.5, 88, 'MIPA', 103, 'MIPA'),
(206, '1539', 'M. HARYA VIQRI ', 87.25, 90.33, 83.75, 88.63, 81.25, 85.13, 81.5, 84.97, 84.75, 87.73, 'MIPA', 104, 'MIPA'),
(207, '1540', 'M. IHCSAN ', 85.25, 90, 84.5, 84, 79.75, 81, 85.75, 93, 87.5, 90, 'MIPA', 94, 'MIPA'),
(208, '1541', 'M. SAH RAHUL ', 85.75, 86, 86.25, 85, 81, 83, 85.5, 84, 82.75, 84, 'MIPA', 96, 'MIPA'),
(209, '1542', 'M. SHOLEH ', 80, 85, 78.5, 84, 76, 88, 81.5, 86, 84.5, 88, 'MIPA', 89, 'MIPA'),
(210, '1543', 'MARDIAN PUTRA ', 89.25, 91.4, 84.75, 88.47, 89.25, 87.33, 86.5, 90, 88.75, 90.33, 'MIPA', 99, 'MIPA'),
(211, '1544', 'MUHAMMAD AZMIY RIZAL ', 86.5, 97, 85.25, 91, 82.75, 85, 90.75, 88, 87, 93, 'MIPA', 96, 'MIPA'),
(212, '1545', 'NADYA ZAHARA PUTRI', 85.25, 90, 84.5, 84, 79.75, 81, 85.75, 93, 87.5, 90, 'MIPA', 99, 'MIPA'),
(213, '1546', 'NAOMY OKTAVIA SILABAN ', 84, 87, 82.5, 85, 80, 74, 75.5, 84, 81.75, 82, 'MIPA', 104, 'MIPA'),
(214, '1547', 'NINDI RAHMADIA ', 85.75, 86, 86.25, 85, 81, 83, 85.5, 84, 82.75, 84, 'MIPA', 84, 'MIPA'),
(215, '1548', 'NUR\'AINI ', 88.5, 91, 89.5, 89, 86.25, 88, 87.5, 88, 89, 90, 'MIPA', 99, 'MIPA'),
(216, '1549', 'PUTRI NATALIA SIMAJUNTAK', 85.75, 89, 81, 75, 81.25, 77, 84, 85, 80, 69, 'MIPA', 104, 'MIPA'),
(217, '1550', 'RANIA ERWA', 90, 90, 92, 94, 92, 90, 89, 82, 91, 88, 'MIPA', 77, 'MIPA'),
(218, '1551', 'RIAN AJI PUTRA ', 91, 87, 88.5, 87, 82.5, 82, 88, 87, 85, 83, 'MIPA', 99, 'MIPA'),
(219, '1552', 'RIAND SANJAYA ', 89.75, 95, 91, 88, 87.5, 90, 87.5, 88, 85, 91, 'MIPA', 99, 'MIPA'),
(220, '1553', 'RIVO MAHARDIKA ', 87.75, 87, 79, 85, 80.25, 80, 78.75, 80, 83.75, 84, 'MIPA', 91, 'MIPA'),
(221, '1554', 'RIZQI ALDARYSYAH ', 79.75, 87, 79.5, 86, 79, 85, 82, 86, 85.25, 87, 'MIPA', 89, 'MIPA'),
(222, '1555', 'SHADIQ HASSAN AL-RASYIQ', 90.75, 93, 92, 91, 89.5, 88, 89.75, 91, 92, 90, 'MIPA', 94, 'MIPA'),
(223, '1556', 'TRISNUGRAHA ', 84.75, 89.2, 82.75, 76.4, 78.12, 68, 79.5, 84.4, 83, 86, 'MIPA', 99, 'MIPA'),
(224, '1557', 'WINDA PRASETIA NINGSIH ', 85.25, 86, 91.75, 92, 86.75, 85, 87.5, 88, 83.75, 82, 'MIPA', 104, 'MIPA'),
(225, '1558', 'WIRA FATHURAHMAN ', 86.75, 93, 86.5, 85, 87.25, 80, 87, 86, 86.25, 88, 'MIPA', 91, 'MIPA');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id_u` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(254) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `devisi` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_u`, `username`, `password`, `nama`, `devisi`) VALUES
(2, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'Ulya Rahmadhani', 'Staff Administrasi');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `log_spk`
--
ALTER TABLE `log_spk`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indeks untuk tabel `testing`
--
ALTER TABLE `testing`
  ADD PRIMARY KEY (`id_test`);

--
-- Indeks untuk tabel `training`
--
ALTER TABLE `training`
  ADD PRIMARY KEY (`id_train`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_u`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `log_spk`
--
ALTER TABLE `log_spk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `testing`
--
ALTER TABLE `testing`
  MODIFY `id_test` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT untuk tabel `training`
--
ALTER TABLE `training`
  MODIFY `id_train` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=226;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id_u` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
