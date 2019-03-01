-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- 主機: 127.0.0.1
-- 產生時間： 2019-03-01 17:55:09
-- 伺服器版本: 10.1.30-MariaDB
-- PHP 版本： 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `goods`
--

-- --------------------------------------------------------

--
-- 資料表結構 `log`
--

CREATE TABLE `log` (
  `rowNo` int(11) NOT NULL,
  `name` varchar(500) COLLATE utf32_unicode_520_ci NOT NULL,
  `price` int(11) NOT NULL,
  `url` varchar(500) COLLATE utf32_unicode_520_ci NOT NULL,
  `imgUrl` varchar(500) COLLATE utf32_unicode_520_ci NOT NULL,
  `logDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_520_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `result`
--

CREATE TABLE `result` (
  `rowNo` int(11) NOT NULL,
  `name` varchar(500) COLLATE utf32_unicode_520_ci NOT NULL,
  `price` varchar(11) COLLATE utf32_unicode_520_ci NOT NULL,
  `url` varchar(500) COLLATE utf32_unicode_520_ci NOT NULL,
  `imgUrl` varchar(500) COLLATE utf32_unicode_520_ci NOT NULL,
  `logDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_520_ci;

--
-- 資料表的匯出資料 `result`
--

INSERT INTO `result` (`rowNo`, `name`, `price`, `url`, `imgUrl`, `logDate`) VALUES
(1115, '【Micron 美光】Crucial MX500 500G SSD 2.5吋固態硬碟', '2249', 'http://m.momoshop.com.tw/goods.momo?i_code=5352819&mdiv=searchEngine', 'None', '2019-03-02 00:53:52'),
(1116, '【ASUS 華碩】ROG HERO GL503VM 15.6吋電競筆電-黑(i7-7700HQ/8G/1TB+256G SSD/GTX1060 6GB/W10)', '49900', 'http://m.momoshop.com.tw/goods.momo?i_code=5140774&mdiv=searchEngine', 'None', '2019-03-02 00:53:52'),
(1117, '【Micron 美光】Crucial BX500 240G SSD 2.5吋固態硬碟', '999', 'http://m.momoshop.com.tw/goods.momo?i_code=5993308&mdiv=searchEngine', 'None', '2019-03-02 00:53:52'),
(1118, '【Intel 英特爾】545s 256G SSD 2.5吋固態硬碟(五年保固)', '1468', 'http://m.momoshop.com.tw/goods.momo?i_code=5924977&mdiv=searchEngine', 'None', '2019-03-02 00:53:52'),
(1119, '【Micron 美光】Crucial MX500 250G SSD 2.5吋固態硬碟', '1499', 'http://m.momoshop.com.tw/goods.momo?i_code=5350709&mdiv=searchEngine', 'None', '2019-03-02 00:53:52'),
(1120, '【Acer 宏碁】SF314-56 14吋八代輕薄筆電(i5-8265U/4G/256G SSD/Win10)', '23900', 'http://m.momoshop.com.tw/goods.momo?i_code=6347308&mdiv=searchEngine', 'None', '2019-03-02 00:53:52'),
(1121, '【贈office 2019超值組】Acer S40-10-53NB 14吋八代雙碟輕薄筆電-紅(i5-8250U/4G/1TB+128G SSD/Win10)', '27900', 'http://m.momoshop.com.tw/goods.momo?i_code=6278032&mdiv=searchEngine', 'None', '2019-03-02 00:53:52'),
(1122, '【贈1TB外接硬碟】Acer SF114-32 14吋SSD輕薄筆電(N4100/4G/128G SSD/Win10)', '15900', 'http://m.momoshop.com.tw/goods.momo?i_code=6413712&mdiv=searchEngine', 'None', '2019-03-02 00:53:52'),
(1123, '【ASUS 華碩】S330UN 13.3吋窄邊框輕薄筆電-閃漾金(i5-8250U/8G/512G SSD/MX150 2G/W10)', '31900', 'http://m.momoshop.com.tw/goods.momo?i_code=6397688&mdiv=searchEngine', 'None', '2019-03-02 00:53:52'),
(1124, '【TCELL 冠元】TT550 480G SSD 2.5吋固態硬碟(英倫紳士風)', '1499', 'http://m.momoshop.com.tw/goods.momo?i_code=6352688&mdiv=searchEngine', 'None', '2019-03-02 00:53:52'),
(1125, '【Microsoft 微軟】Surface Pro 6 12.3吋筆電-白金(Core i5/8G/128G SSD/W10)', '28888', 'http://m.momoshop.com.tw/goods.momo?i_code=6327348&mdiv=searchEngine', 'None', '2019-03-02 00:53:52'),
(1126, '【acer 宏碁】A314-32-C9E0 14吋筆電-黑(N4100/4G/128G SSD/Win10)', '11900', 'http://m.momoshop.com.tw/goods.momo?i_code=6145640&mdiv=searchEngine', 'None', '2019-03-02 00:53:52'),
(1127, '【鍵盤(黑)超值組】Surface Go 10吋平板筆電(4415Y/8G/128G SSD/W10S)', '20978', 'http://m.momoshop.com.tw/goods.momo?i_code=6138800&mdiv=searchEngine', 'None', '2019-03-02 00:53:52'),
(1128, '【CJSCOPE 喜傑獅】SX-750 GX 15.6吋8代旗艦電競筆電(i5-8400/8G/256G PCIe SSD/GTX 1060-6G)', '29900', 'http://m.momoshop.com.tw/goods.momo?i_code=6358256&mdiv=searchEngine', 'None', '2019-03-02 00:53:52'),
(1129, '【HP 惠普】ENVY 13-ah0013TU 13吋輕薄筆電(i5-8250U/8G/256G PCIe SSD/Win10)', '34900', 'http://m.momoshop.com.tw/goods.momo?i_code=6245380&mdiv=searchEngine', 'None', '2019-03-02 00:53:52'),
(1130, '【ASUS 華碩】S406UA 14吋輕薄筆電-星空灰(i5-8250U/8G/256G SSD/W10)', '26900', 'http://m.momoshop.com.tw/goods.momo?i_code=5672233&mdiv=searchEngine', 'None', '2019-03-02 00:53:52'),
(1131, '【ASUS 華碩】S530UN 15.6吋窄邊框輕薄筆電-閃漾金(i7-8550U/8G/512G SSD/MX150 2G/W10)', '35900', 'http://m.momoshop.com.tw/goods.momo?i_code=5916292&mdiv=searchEngine', 'None', '2019-03-02 00:53:52'),
(1132, '【無痛升級8G】Acer S40-10-53NB 14吋八代雙碟輕薄筆電-紅(i5-8250U/4G/1TB+128G SSD/Win10)', '23900', 'http://m.momoshop.com.tw/goods.momo?i_code=6287080&mdiv=searchEngine', 'None', '2019-03-02 00:53:52'),
(1133, '【MSI 微星】PS63 8M-045TW 15吋 窄邊框輕薄筆電(i7-8565U/16G/512GB PCIe SSD/Win10)', '38900', 'http://m.momoshop.com.tw/goods.momo?i_code=6440048&mdiv=searchEngine', 'None', '2019-03-02 00:53:52'),
(1134, '【acer 宏碁】A515-52G 15.6吋雙碟獨顯輕薄筆電(i5-8265U/4G/1TB+128G SSD/MX130/Win10)', '24900', 'http://m.momoshop.com.tw/goods.momo?i_code=6067900&mdiv=searchEngine', 'None', '2019-03-02 00:53:52'),
(1135, 'WD SSD 1TB 2.5吋 3D NAND固態硬碟(藍標)', '4350', 'http://24h.pchome.com.tw/prod/DRAH6C-A9008F563', 'http://ec1img.pchome.com.tw//items/DRAH6CA9008F563/000001_1551262347.jpg', '2019-03-02 00:53:52'),
(1136, 'SanDisk SSD Plus 1TB 2.5吋SATAIII固態硬碟(G26)', '4088', 'http://24h.pchome.com.tw/prod/DRAH7P-A9009EKFR', 'http://ec1img.pchome.com.tw//items/DRAH7PA9009EKFR/000001_1551060528.jpg', '2019-03-02 00:53:52'),
(1137, 'WD SSD 500GB 2.5吋 3D NAND固態硬碟(藍標)', '2150', 'http://24h.pchome.com.tw/prod/DRAH7A-A900959MK', 'http://ec1img.pchome.com.tw//items/DRAH7AA900959MK/000001_1529570380.jpg', '2019-03-02 00:53:52'),
(1138, 'WD SSD 1TB M.2 2280 NVMe PCIe Gen3 固態硬碟(黑標)', '6690', 'http://24h.pchome.com.tw/prod/DRAH6W-A90091025', 'http://ec1img.pchome.com.tw//items/DRAH6WA90091025/000001_1527146306.jpg', '2019-03-02 00:53:52'),
(1139, 'SanDisk Extreme Pro 1TB M.2 NVMe 3D SSD', '6688', 'http://24h.pchome.com.tw/prod/DRAH7P-A9009KY3G', 'http://ec1img.pchome.com.tw//items/DRAH7PA9009KY3G/000001_1542622962.jpg', '2019-03-02 00:53:52'),
(1140, 'WD SSD 500GB M.2 2280 NVMe PCIe Gen3 固態硬碟(黑標)', '3650', 'http://24h.pchome.com.tw/prod/DRAH6W-A9009102I', 'http://ec1img.pchome.com.tw//items/DRAH6WA9009102I/000001_1542798528.jpg', '2019-03-02 00:53:52'),
(1141, 'SanDisk SSD Plus 480GB 2.5吋SATAIII固態硬碟(G26)', '1888', 'http://24h.pchome.com.tw/prod/DRAH5E-A9007CRVC', 'http://ec1img.pchome.com.tw//items/DRAH5EA9007CRVC/000001_1541384950.jpg', '2019-03-02 00:53:52'),
(1142, 'WD SSD 250GB 2.5吋 3D NAND 固態硬碟(藍標)', '1490', 'http://24h.pchome.com.tw/prod/DRAH6C-A9008F54M', 'http://ec1img.pchome.com.tw//items/DRAH6CA9008F54M/000001_1545016483.jpg', '2019-03-02 00:53:52'),
(1143, 'WD SSD 500GB 2.5吋 3D NAND固態硬碟(藍標)', '2150', 'http://24h.pchome.com.tw/prod/DRAH6C-A9008F54N', 'http://ec1img.pchome.com.tw//items/DRAH6CA9008F54N/000001_1520488773.jpg', '2019-03-02 00:53:52'),
(1144, 'WD SSD 1TB M.2 SATA 3D NAND固態硬碟(藍標)', '4450', 'http://24h.pchome.com.tw/prod/DRAH6C-A9008F56O', 'http://ec1img.pchome.com.tw//items/DRAH6CA9008F56O/000001_1542275065.jpg', '2019-03-02 00:53:52'),
(1145, 'SanDisk Extreme Pro 500GB M.2 NVMe 3D SSD', '3588', 'http://24h.pchome.com.tw/prod/DRAH7P-A9009KY3E', 'http://ec1img.pchome.com.tw//items/DRAH7PA9009KY3E/000001_1542622785.jpg', '2019-03-02 00:53:52'),
(1146, 'WD SSD 1TB M.2 2280 NVMe PCIe Gen3 固態硬碟(黑標)', '6690', 'http://24h.pchome.com.tw/prod/DRAH6W-A90095A72', 'http://ec1img.pchome.com.tw//items/DRAH6WA90095A72/000001_1529574904.jpg', '2019-03-02 00:53:53'),
(1147, 'SanDisk SSD Plus 240GB 2.5吋SATAIII固態硬碟(G26)', '1088', 'http://24h.pchome.com.tw/prod/DRAH5E-A9007CRTN', 'http://ec1img.pchome.com.tw//items/DRAH5EA9007CRTN/000001_1522202196.jpg', '2019-03-02 00:53:53'),
(1148, 'HyperX FURY RGB 480GB SSD固態硬碟 (SHFR200/480G)', '2499', 'http://24h.pchome.com.tw/prod/DRAH4E-A9009H9B6', 'http://ec1img.pchome.com.tw//items/DRAH4EA9009H9B6/000001_1539336900.jpg', '2019-03-02 00:53:53'),
(1149, 'WD SSD 500GB M.2 SATA 3D NAND固態硬碟(藍標)', '2150', 'http://24h.pchome.com.tw/prod/DRAH6C-A9008F54R', 'http://ec1img.pchome.com.tw//items/DRAH6CA9008F54R/000001_1505809991.jpg', '2019-03-02 00:53:53'),
(1150, 'SanDisk SSD Plus 120GB 2.5吋SATAIII固態硬碟(G27)', '699', 'http://24h.pchome.com.tw/prod/DRAH5W-A9008I75F', 'http://ec1img.pchome.com.tw//items/DRAH5WA9008I75F/000001_1509343838.jpg', '2019-03-02 00:53:53'),
(1151, 'WD SSD 500GB M.2 2280 NVMe PCIe Gen3 固態硬碟(黑標)', '3650', 'http://24h.pchome.com.tw/prod/DRAH7O-A90099PUH', 'http://ec1img.pchome.com.tw//items/DRAH7OA90099PUH/000001_1533090927.jpg', '2019-03-02 00:53:53'),
(1152, 'WD SSD 250GB M.2 2280 NVMe PCIe Gen3 固態硬碟(黑標)', '2150', 'http://24h.pchome.com.tw/prod/DRAH6W-A90091023', 'http://ec1img.pchome.com.tw//items/DRAH6WA90091023/000001_1527146513.jpg', '2019-03-02 00:53:53'),
(1153, 'WD SSD 2TB 2.5吋 3D NAND固態硬碟(藍標)', '9990', 'http://24h.pchome.com.tw/prod/DRAH6C-A9008F567', 'http://ec1img.pchome.com.tw//items/DRAH6CA9008F567/000001_1506066347.jpg', '2019-03-02 00:53:53'),
(1154, 'WD SSD 480GB M.2 2280 SATA 固態硬碟(綠標)', '1990', 'http://24h.pchome.com.tw/prod/DRAH7O-A9009QY58', 'http://ec1img.pchome.com.tw//items/DRAH7OA9009QY58/000001_1547863954.jpg', '2019-03-02 00:53:53'),
(1155, '【11589元】最新AMD R3-2200G 3.7G內建8核高階獨顯晶片120G SSD極速硬碟模擬器遊戲雙開四秒開機', '11589', 'https://tw.mall.yahoo.com/item/p0308160614278', 'None', '2019-03-02 00:53:53'),
(1156, '金士頓 固態硬碟 【SA400S37/120G】 A400 SSD 120GB SATA3 讀500MB/s 新風尚潮流', '650', 'https://tw.mall.yahoo.com/item/p0776134956827', 'None', '2019-03-02 00:53:53'),
(1157, '創見 固態硬碟 【TS1TSSD370S】 1TB SSD370 讀570M寫470M 75KIOPS 新風尚潮流', '11440', 'https://tw.mall.yahoo.com/item/p0776103885631', 'None', '2019-03-02 00:53:53'),
(1158, '金士頓 固態硬碟 【SUV500/960G】 UV500 SSD SATA 3 介面 960GB 新風尚潮流', '4660', 'https://tw.mall.yahoo.com/item/p0776118415102', 'None', '2019-03-02 00:53:53'),
(1159, '【Transcend 創見】SSD230S 128G SATA3 固態硬碟', '949', 'https://tw.mall.yahoo.com/item/p0731133800051', 'None', '2019-03-02 00:53:53'),
(1160, '【12089元】3D順暢~全新AMD四核3.4G+D5遊戲2G獨顯極速120G SSD正WIN10安裝模擬器雙開主機可刷卡', '12089', 'https://tw.mall.yahoo.com/item/p0308149652122', 'None', '2019-03-02 00:53:53'),
(1161, '【Transcend 創見】TS240GSSD220S 240G 固態硬碟', '1199', 'https://tw.mall.yahoo.com/item/p0731108156944', 'None', '2019-03-02 00:53:53'),
(1162, '創見 固態硬碟 【TS512GMTE110S】 PCIe M.2 SSD 110S 512GB NVMe支援 新風尚潮流', '2380', 'https://tw.mall.yahoo.com/item/p0776169700263', 'None', '2019-03-02 00:53:53'),
(1163, 'SanDisk 2.5吋 進化版 Plus 240G SATA3 SSD 固態硬碟', '1088', 'https://tw.mall.yahoo.com/item/p0031110754778', 'None', '2019-03-02 00:53:53'),
(1164, '【Transcend 創見】SSD230S 256G SATA3 固態硬碟', '1449', 'https://tw.mall.yahoo.com/item/p0731130557733', 'None', '2019-03-02 00:53:53'),
(1165, '【9889元】全新挑戰最低價AMD四核心3.4G內建獨顯晶片主機極速120G SSD極速硬碟正WIN10安卓送常用軟體', '9889', 'https://tw.mall.yahoo.com/item/p0308149640056', 'None', '2019-03-02 00:53:53'),
(1166, 'Transcend 創見 SATA III MTS820 (長度: 80mm) M.2 SSD 120G 固態硬碟', '699', 'https://tw.mall.yahoo.com/item/p0031117278077', 'None', '2019-03-02 00:53:53'),
(1167, '宏碁 acer S40-10 銀 250G SSD特仕升級版【i3 8130U/14吋/Full-HD/IPS/指紋辨識/SSD/Win10 S/Buy3c奇展】37L2 似 SF314', '15900', 'https://tw.mall.yahoo.com/item/p0950179336310', 'None', '2019-03-02 00:53:53'),
(1168, '美光 Crucial MX500 250GB SATAⅢ SSD 固態硬碟 五年保固', '1399', 'https://tw.mall.yahoo.com/item/p0904151398094', 'None', '2019-03-02 00:53:53'),
(1169, '海盜船 固態硬碟 【CSSD-F360GBGS-BK】 360GB SSD固態硬碟 同步 50KIOPs 新風尚潮流', '15570', 'https://tw.mall.yahoo.com/item/p0776103841078', 'None', '2019-03-02 00:53:53'),
(1170, '【6098元】最新AMD A8-9600四核3.4G內建獨顯搭配120G SSD快速硬碟+原廠保固可模擬器雙開可刷卡分期', '6098', 'https://tw.mall.yahoo.com/item/p030868811430', 'None', '2019-03-02 00:53:53'),
(1171, '威剛 固態硬碟 【ASU800SS-256GT-C】 SU800 256GB 智慧型SLC快取演算法 新風尚潮流', '1320', 'https://tw.mall.yahoo.com/item/p0776103880915', 'None', '2019-03-02 00:53:53'),
(1172, 'Transcend 創見 SATA III MTS820 (長度: 80mm) M.2 SSD 240G 固態硬碟', '1099', 'https://tw.mall.yahoo.com/item/p0031117278078', 'None', '2019-03-02 00:53:53'),
(1173, 'WBTUO mSATA USB 3.0 Type-A SSD直插式固態硬碟外接盒轉接盒ASM1153E【MUA-31A】', '310', 'https://tw.mall.yahoo.com/item/p0641148091186', 'None', '2019-03-02 00:53:53'),
(1174, 'WD SSD 500GB M.2 SATA 3D NAND固態硬碟(藍標)', '2150', 'https://tw.mall.yahoo.com/item/p0031146880175', 'None', '2019-03-02 00:53:53'),
(1175, 'WD BLUE 藍標 SSD 500GB 2.5吋 3D NAND 固態硬碟', '2099', 'https://tw.mall.yahoo.com/item/p0904162859266', 'None', '2019-03-02 00:53:53'),
(1176, 'Transcend創見 2.5吋SSD/HDD外接盒', '450', 'https://tw.mall.yahoo.com/item/p003158916475', 'None', '2019-03-02 00:53:53'),
(1177, 'KINGSHARE 金勝 M.2 PCI-E 標準款SSD固態硬碟轉接卡 NGFF PCIE NVMe【KS-7366】', '230', 'https://tw.mall.yahoo.com/item/p0641170566024', 'None', '2019-03-02 00:53:54'),
(1178, 'WD SSD 240GB M.2 2280 SATA 固態硬碟(綠標)', '1190', 'https://tw.mall.yahoo.com/item/p0031158643404', 'None', '2019-03-02 00:53:54'),
(1179, 'WD 威騰 My Passport SSD 512G B USB 3.1 Type-C 外接式 固態硬碟', '3490', 'https://tw.mall.yahoo.com/item/p0904136938188', 'None', '2019-03-02 00:53:54'),
(1180, 'Intel SSD 1TB 1T 545s【SSDSC2KW010T8X1】3D NAND SATA 2.5\" 固態硬碟', '6850', 'https://tw.mall.yahoo.com/item/p0759180557950', 'None', '2019-03-02 00:53:54'),
(1181, 'Sandisk ULTRA 3D SSD 500GB固態硬碟', '2080', 'https://tw.mall.yahoo.com/item/p0031140385518', 'None', '2019-03-02 00:53:54'),
(1182, '【14789元】最新AMD高速四核3.9G R5-2400G內建11核高階獨顯極速SSD碟含系統安卓模擬器多開可刷卡', '14789', 'https://tw.mall.yahoo.com/item/p0308124340275', 'None', '2019-03-02 00:53:54'),
(1183, '美光 Crucial MX500 500GB SATAⅢ SSD 固態硬碟 五年保固', '2249', 'https://tw.mall.yahoo.com/item/p0904151398782', 'None', '2019-03-02 00:53:54'),
(1184, '伽利略 M.2(NGFF) Type-C SSD to USB3.0 (黑)', '720', 'https://tw.mall.yahoo.com/item/p0031112341809', 'None', '2019-03-02 00:53:54'),
(1185, '【台中平價鋪】全新 美光 Micron Crucial BX500 240GB SSD 固態硬碟', '1090', 'https://tw.mall.yahoo.com/item/p0309172274997', 'None', '2019-03-02 00:53:54'),
(1186, '方舟:生存進化 官方需求主機 i5六核心GTX1060 DDR5 SSD固態硬碟', '27100', 'https://tw.mall.yahoo.com/item/p0504110153841', 'None', '2019-03-02 00:53:54'),
(1187, '【9799元】全新INTEL第8代3.1G雙核4G極速SSD硬碟正WIN10防毒送十數套常用軟體店面保固可刷卡分期', '9799', 'https://tw.mall.yahoo.com/item/p0308123743427', 'None', '2019-03-02 00:53:54'),
(1188, 'WBTUO M.2 NGFF USB 3.0 SSD直插式硬碟外接盒轉接盒 2242 ASM1153E【NUA-42A】', '400', 'https://tw.mall.yahoo.com/item/p0641156423711', 'None', '2019-03-02 00:53:54'),
(1189, 'KINGSHARE 金勝 M.2 PCI-E 加長款SSD固態硬碟轉接卡 NGFF PCIE NVMe【KS-7395】', '350', 'https://tw.mall.yahoo.com/item/p0641170566209', 'None', '2019-03-02 00:53:54'),
(1190, 'Kingston 金士頓 UV500 480GB SSD 2.5吋 固態硬碟 SUV500/480G', '1980', 'https://tw.mall.yahoo.com/item/p0904162441720', 'None', '2019-03-02 00:53:54'),
(1191, '金士頓 固態硬碟 【SUV500M8/120G】 UV500 SSD M.2 2280 介面 120GB 新風尚潮流', '880', 'https://tw.mall.yahoo.com/item/p0776160729899', 'None', '2019-03-02 00:53:54'),
(1192, '美光 Crucial MX500 500GB SATAⅢ SSD 固態硬碟 五年保固', '2249', 'https://tw.mall.yahoo.com/item/p0904151398782', 'None', '2019-03-02 00:53:54'),
(1193, '【TCELL 冠元】TT650 240G 固態硬碟 黑色 特仕版', '1199', 'https://tw.mall.yahoo.com/item/p0731152404884', 'None', '2019-03-02 00:53:54'),
(1194, 'Uptech 登昌恆 UTN822 M.2 to SATA 介面轉換器', '690', 'https://tw.mall.yahoo.com/item/p0904137834710', 'None', '2019-03-02 00:53:54'),
(1195, '【台中平價鋪】全新 美光 Micron Crucial MX500 500GB SSD 固態硬碟', '2299', 'https://tw.mall.yahoo.com/item/p0309172267065', 'None', '2019-03-02 00:53:54'),
(1196, '[富廉網] 廣穎 SiliconPower Slim S70 240GB SATA3 7mm SSD固態硬碟', '2415', 'https://tw.mall.yahoo.com/item/p039261806562', 'None', '2019-03-02 00:53:54'),
(1197, 'Digifusion伽利略 SATA to SATA硬碟轉接器 12.7mm', '239', 'https://tw.mall.yahoo.com/item/p0031171309937', 'None', '2019-03-02 00:53:54'),
(1198, 'ADATA威剛 Ultimate SU800 128G M.2 2280 SATA SSD 固態硬碟', '1288', 'https://tw.mall.yahoo.com/item/p0031125118659', 'None', '2019-03-02 00:53:54'),
(1199, '創見 固態硬碟 【TS120GSSD220S】 120GB SSD220 SATA III 7mm 讀550 新風尚潮流', '730', 'https://tw.mall.yahoo.com/item/p0776112774267', 'None', '2019-03-02 00:53:54'),
(1200, '[富廉網] 【SONY】SSD USB 3.0 髮絲紋 128GB 外接固態硬碟 (SL-BG1) 銀/黑', '2490', 'https://tw.mall.yahoo.com/item/p0392164820887', 'None', '2019-03-02 00:53:54');

--
-- 已匯出資料表的索引
--

--
-- 資料表索引 `log`
--
ALTER TABLE `log`
  ADD PRIMARY KEY (`rowNo`);

--
-- 資料表索引 `result`
--
ALTER TABLE `result`
  ADD PRIMARY KEY (`rowNo`);

--
-- 在匯出的資料表使用 AUTO_INCREMENT
--

--
-- 使用資料表 AUTO_INCREMENT `log`
--
ALTER TABLE `log`
  MODIFY `rowNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=162;

--
-- 使用資料表 AUTO_INCREMENT `result`
--
ALTER TABLE `result`
  MODIFY `rowNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1201;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
