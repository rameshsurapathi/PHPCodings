-- phpMyAdmin SQL Dump
-- version 4.0.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 06, 2013 at 01:28 AM
-- Server version: 5.1.70-cll
-- PHP Version: 5.3.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `eshopale_eshopalert`
--

-- --------------------------------------------------------

--
-- Table structure for table `adexmart`
--

CREATE TABLE IF NOT EXISTS `adexmart` (
  `WebsiteID` int(10) NOT NULL,
  `ProductId` int(10) NOT NULL,
  `Price` int(10) NOT NULL,
  `Link` text COLLATE utf8_unicode_ci NOT NULL,
  `DeliveryTime` text COLLATE utf8_unicode_ci NOT NULL,
  `EMI` int(1) NOT NULL DEFAULT '0',
  `Title` text COLLATE utf8_unicode_ci NOT NULL,
  `Time` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `adexmart`
--

INSERT INTO `adexmart` (`WebsiteID`, `ProductId`, `Price`, `Link`, `DeliveryTime`, `EMI`, `Title`, `Time`) VALUES
(70, 1, 5990, 'http://adexmart.com/samsung-mobile-phones/5805-samsung-primo-duos-w279-cdma-gsm-mobile-phone.html', '2-4 Working days.', 0, 'Samsung Primo Duos W279 (CDMA & GSM) Metallic Silver', '2013-01-18 16:54:09'),
(70, 8, 11790, 'http://adexmart.com/samsung-mobile-phones/5787-samsung-galaxy-s-duos-s7562.html', '2-4 Working days.', 0, 'Samsung Galaxy S Duos S7562  Black', '2013-01-18 20:48:59'),
(70, 10, 3990, 'http://adexmart.com/nokia/4481-nokia-asha-305.html', '2-4 Working days.', 0, 'Nokia Asha 305 Dual Sim', '2013-01-19 01:05:51'),
(70, 12, 790, 'http://adexmart.com/tablets-ipad-s-accessories/5665-samsung-galaxy-tab-book-cover-case-89-black.html', '2-4 Working days.', 0, 'Samsung Galaxy Tab Book Cover Case 8.9  Black- Samsung Original Case', '2013-01-19 15:34:19'),
(70, 13, 28890, 'http://adexmart.com/mobile-phones/7588-samsung-galaxy-s3-i9300-16gb-marble-white.html', '2-4 Working days.', 0, 'Samsung Galaxy S3 i9300 16GB (Marble White)', '2013-01-23 19:23:01'),
(70, 15, 25475, 'http://adexmart.com/nokia/9288-nokia-lumia-820-yellow.html', '2-4 Working days.', 0, 'Nokia Lumia 820 (Yellow)', '2013-01-23 19:27:50'),
(70, 18, 1925, 'http://adexmart.com/usb-modem/4110-huawei-e303c-datacard.html', '2-4 Working days.', 0, 'Huawei E303C Datacard', '2013-01-23 19:33:17'),
(70, 19, 18790, 'http://adexmart.com/samsung-mobile-phones/4300-samsung-galaxy-tab-2-70-p3100-16gb.html', '2-4 Working days.', 0, 'Samsung Galaxy Tab 2 7.0 P3100 16GB Android Tablet -White', '2013-01-23 19:36:47'),
(70, 20, 21990, 'http://adexmart.com/sony-mobile-phones/1581-sony-ericsson-xperia-arc.html', '2-4 Working days.', 0, 'Sony Ericsson Xperia ARC', '2013-01-23 19:38:11'),
(70, 24, 31919, 'http://adexmart.com/nikon-slr-cameras/3460-nikon-d5100-digital-slr-cameras-with-af-s-18-55mm-vr-kit-lens.html', '2-4 Working days.', 0, 'Nikon D5100 Digital SLR Cameras (with AF-S 18-55mm VR Kit Lens)', '2013-01-23 19:45:11'),
(70, 25, 4690, 'http://adexmart.com/micromax-mobile-phones/5110-micromax-a57-dual-sim.html', '2-4 Working days.', 0, 'Micromax A57 Dual SIM', '2013-01-23 20:12:08'),
(70, 26, 230, 'http://adexmart.com/sandisk-pendrives/125-sandisk-2gb-pendrive.html', '2-4 Working days.', 0, 'Sandisk 4GB Pendrive', '2013-01-23 21:46:08'),
(70, 31, 2399, 'http://adexmart.com/skin/5517-capdase-proskin-classic-for-apple-macbook-air-11-inch.html', '2-4 Working days.', 0, 'Capdase Proskin Classic for Apple MacBook Air -13 inch', '2013-01-23 22:36:46'),
(70, 32, 199, 'http://adexmart.com/transcend-pendrives-and-externalharddisk/445-transcend-2gb-jet-flash-500-pendrive.html', '2-4 Working days.', 0, 'Transcend 2GB Jet Flash Pendrive', '2013-01-28 19:32:57'),
(70, 34, 25475, 'http://adexmart.com/nokia/9288-nokia-lumia-820-yellow.html', '2-4 Working days.', 0, 'Nokia Lumia 820 (Yellow)', '2013-01-30 13:49:43'),
(70, 35, 6145, 'http://adexmart.com/nokia/4381-nokia-asha-302.html', '2-4 Working days.', 0, 'Nokia Asha 302 Mobile Phone -  Grey', '2013-01-30 13:52:08'),
(70, 36, 3890, 'http://adexmart.com/nokia/4319-nokia-asha-202-dual-sim.html', '2-4 Working days.', 0, 'Nokia Asha 202  Dual Sim Mobile Phone ', '2013-01-30 13:53:12'),
(70, 40, 2490, 'http://adexmart.com/bluetooth/197-nokia-bluetooth-bh103-for-mobile-6m-nokia-warranty.html', '2-4 Working days.', 0, 'NOKIA BLUETOOTH BH103 FOR MOBILE 6M WARRANTY', '2013-02-19 17:34:13'),
(70, 42, 4860, 'http://adexmart.com/nokia/5832-nokia-asha-308-dual-sim-black.html', '2-4 Working days.', 0, 'Nokia Asha 308 Dual Sim (Black)', '2013-02-19 17:35:22'),
(70, 93, 5190, 'http://adexmart.com/nokia/5832-nokia-asha-308-dual-sim-black.html', '2-4 Working days.', 0, 'Nokia Asha 308 Dual Sim (Black)', '2013-07-04 05:25:32'),
(70, 92, 299, 'http://adexmart.com/mobile-phone-accessories/7851-10-in-1-usb-cable-nc40-.html', '2-4 Working days.', 0, '10 in 1 USB Cable  NC40 ', '2013-07-04 02:48:50'),
(70, 43, 31990, 'http://adexmart.com/mobile-phones/2695-samsung-galaxy-tab-750-wi-fi-3g-16-gb.html', '2-4 Working days.', 0, 'Samsung Galaxy Tab 750 Wi-Fi, 3G, 16 GB Tablet', '2013-02-21 16:35:17'),
(70, 46, 11990, 'http://adexmart.com/mobile-phones/4452-nokia-lumia-610.html', '2-4 Working days.', 0, 'Nokia Lumia 610 Mobile Phone - Black', '2013-02-22 16:36:51'),
(70, 47, 33490, 'http://adexmart.com/mobile-phones/7055-nokia-lumia-920-windows-8-black.html', '2-4 Working days.', 0, 'Nokia Lumia 920  Windows  8  (Black)', '2013-02-22 16:43:49'),
(70, 48, 31990, 'http://adexmart.com/mobile-phones/2695-samsung-galaxy-tab-750-wi-fi-3g-16-gb.html', '2-4 Working days.', 0, 'Samsung Galaxy Tab 750 Wi-Fi, 3G, 16 GB Tablet', '2013-02-24 10:53:24'),
(70, 49, 3555, 'http://adexmart.com/apple/9200-apple-ipod-shuffle-4th-generation-2-gb-silver.html', '2-4 Working days.', 0, 'Apple iPod shuffle 4th Generation 2 GB (Silver)', '2013-02-24 10:57:26'),
(70, 50, 99900, 'http://adexmart.com/laptops/8797-apple-mac-book-pro-md102hna-13-intel-i7-29-ghz8gb750gb.html', '2-4 Working days.', 0, 'Apple Mac Book Pro MD102HN/A 13"/ Intel i7 2.9 GHz/8GB/750GB', '2013-02-24 10:58:31'),
(70, 51, 4690, 'http://adexmart.com/keyboards/2103-apple-bluetooth-wireless-keyboard-for-iphone-4g-mac-os.html', '2-4 Working days.', 0, 'Apple Bluetooth Wireless Keyboard for iPhone 4G Mac OS', '2013-02-24 13:13:24'),
(70, 52, 31990, 'http://adexmart.com/mobile-phones/2695-samsung-galaxy-tab-750-wi-fi-3g-16-gb.html', '2-4 Working days.', 0, 'Samsung Galaxy Tab 750 Wi-Fi, 3G, 16 GB Tablet', '2013-02-24 16:35:51'),
(70, 53, 30990, 'http://adexmart.com/mobile-phones/3109-samsung-galaxy-note-n7000.html', '2-4 Working days.', 0, 'Samsung Galaxy Note N7000', '2013-02-24 16:38:45'),
(70, 55, 12875, 'http://adexmart.com/nokia/4391-nokia-lumia-710.html', '2-4 Working days.', 0, 'Nokia Lumia 710 Mobile Phone - Black', '2013-02-28 02:05:21'),
(70, 56, 42475, 'http://adexmart.com/blackberry-mobile-phones/7885-blackberry-z10-black.html', '2-4 Working days.', 0, 'BlackBerry Z10 (Black)', '2013-02-28 18:09:37'),
(70, 39, 2699, 'http://adexmart.com/sennheiser/9191-sennheiser-hd-203-headphone.html', '2-4 Working days.', 0, 'Sennheiser HD 203 Headphone', '2013-02-28 18:29:58'),
(70, 59, 530, 'http://adexmart.com/sandisk-pendrives/449-sandisk-16gb-pendrive.html', '2-4 Working days.', 0, 'Sandisk 16GB Pendrive', '2013-02-28 19:26:13'),
(70, 60, 399, 'http://adexmart.com/sony-pendrives/1487-sony-8gb-usb-micro-vault-tiny-pendrive.html', '2-4 Working days.', 0, 'Sony 8GB USB Micro Vault TINY Pendrive', '2013-02-28 19:27:13'),
(70, 61, 399, 'http://adexmart.com/sony-pendrives/1487-sony-8gb-usb-micro-vault-tiny-pendrive.html', '2-4 Working days.', 0, 'Sony 8GB USB Micro Vault TINY Pendrive', '2013-02-28 19:28:22'),
(70, 71, 1189, 'http://adexmart.com/home-and-kitchen/6749-birla-century-disney-bed-sheet-bc-22021a.html', '2-4 Working days.', 0, 'Birla Century  Disney Bed Sheet (BC-22021A)', '2013-03-07 11:01:19'),
(70, 73, 30990, 'http://adexmart.com/mobile-phones/3109-samsung-galaxy-note-n7000.html', '2-4 Working days.', 0, 'Samsung Galaxy Note N7000', '2013-03-19 15:00:05'),
(70, 74, 8290, 'http://adexmart.com/mobile-phones/49-blackberry-8520-.html', '2-4 Working days.', 0, 'BlackBerry Curve 8520 , Bill & 18 Months Manufacturer Warranty', '2013-03-19 15:06:09'),
(70, 77, 630, 'http://adexmart.com/mobile-phone-accessories/4491-nokia-battery-bl-5f.html', '2-4 Working days.', 0, 'Nokia Battery BL-5F', '2013-03-19 15:13:01'),
(70, 78, 20690, 'http://adexmart.com/mobile-phones/7389-samsung-galaxy-grand-duos-i9082-dual-sim.html', '2-4 Working days.', 0, 'Samsung Galaxy Grand Duos I9082 Dual Sim', '2013-03-19 19:06:34'),
(70, 79, 595, 'http://adexmart.com/memory-cards/4337-transcend-16gb-microsd-card.html', '2-4 Working days.', 0, 'Transcend 16GB MicroSD Card', '2013-03-19 19:15:34'),
(70, 80, 21990, 'http://adexmart.com/sony-mobile-phones/1581-sony-ericsson-xperia-arc.html', '2-4 Working days.', 0, 'Sony Ericsson Xperia ARC', '2013-03-21 16:45:04'),
(70, 81, 7250, 'http://adexmart.com/sony-mobile-phones/82-sony-ericsson-elm.html', '2-4 Working days.', 0, 'Sony Ericsson Elm ', '2013-03-21 16:51:15'),
(70, 90, 54990, 'http://adexmart.com/sony-projectors/3431-sony-vpl-ew-130-projector-with-hdmi.html', '2-4 Working days.', 0, 'Sony  VPL  EW 130  Projector with HDMI', '2013-04-05 19:26:23'),
(70, 94, 2240, 'http://adexmart.com/mobile-phones/6973-nokia-114-dual-sim-cyan.html', '2-4 Working days.', 0, 'Nokia 114 Dual Sim', '2013-07-04 05:28:12'),
(70, 96, 4599, 'http://adexmart.com/tablets-ipad-s-accessories/9104-capdase-bluetooth-keyboard-black.html', '2-4 Working days.', 0, 'Capdase Bluetooth Keyboard black', '2013-07-04 16:06:18'),
(70, 86, 12990, 'http://adexmart.com/micromax-mobile-phones/8550-micromax-canvas-hd-a116-white.html', '2-4 Working days.', 0, 'Micromax Canvas HD A116 (White)', '2013-07-04 19:13:22');

-- --------------------------------------------------------

--
-- Table structure for table `babyoye`
--

CREATE TABLE IF NOT EXISTS `babyoye` (
  `WebsiteID` int(10) NOT NULL,
  `ProductId` int(10) NOT NULL,
  `Price` int(10) NOT NULL,
  `Link` text COLLATE utf8_unicode_ci NOT NULL,
  `DeliveryTime` text COLLATE utf8_unicode_ci NOT NULL,
  `EMI` int(1) NOT NULL DEFAULT '0',
  `Title` text COLLATE utf8_unicode_ci NOT NULL,
  `Time` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `babyoye`
--

INSERT INTO `babyoye` (`WebsiteID`, `ProductId`, `Price`, `Link`, `DeliveryTime`, `EMI`, `Title`, `Time`) VALUES
(59, 37, 319, 'http://www.babyoye.com/disney-princess-sunglasses-gold.html', '3-7 Working days.', 0, 'Disney Princess Sunglasses Gold', '2013-02-10 23:58:17'),
(59, 3, 18899, 'http://www.babyoye.com/hauck-sun-duo-11-esprit-multi-black-stroller.html', '3-7 Working days.', 0, 'Hauck Sun Duo 11 Esprit Multi Black Stroller', '2013-02-10 23:59:25'),
(59, 38, 449, 'http://www.babyoye.com/crayola-9-colors-bold-washable-glitter-glue.html', '3-7 Working days.', 0, 'Crayola 9 Colors Bold Washable Glitter Glue', '2013-02-12 22:56:14'),
(59, 8, 18899, 'http://www.babyoye.com/hauck-sun-duo-11-esprit-multi-black-stroller.html', '3-7 Working days.', 0, '', '2013-02-21 17:37:29'),
(59, 1, 699, 'http://www.babyoye.com/catalog/product/view/id/59408/', '3-7 Working days.', 0, '', '2013-07-04 01:58:36'),
(59, 46, 171, 'http://www.babyoye.com/garfield-baby-diapers-medium-12-pack.html', '3-7 Working days.', 0, 'Garfield Baby Diapers Medium 12 Pack(6-10kg)', '2013-02-22 16:36:49'),
(59, 50, 79, 'http://www.babyoye.com/nuby-hygiene-diaper-pins-4s.html', '3-7 Working days.', 0, 'Nuby HYGIENE DIAPER PINS 4s  ', '2013-02-24 10:58:32'),
(59, 52, 749, 'http://www.babyoye.com/smoby-cotoons-musical-tv.html', '3-7 Working days.', 0, 'Smoby Cotoons musical TV', '2013-02-24 16:35:50'),
(59, 53, 749, 'http://www.babyoye.com/smoby-cotoons-musical-tv.html', '3-7 Working days.', 0, 'Smoby Cotoons musical TV', '2013-02-24 16:38:43'),
(59, 20, 134, 'http://www.babyoye.com/baby-genius-favourite-classical-tunes.html', '3-7 Working days.', 0, 'Baby Genius Favourite Classical Tunes   ', '2013-02-24 16:40:28'),
(59, 35, 600, 'http://www.babyoye.com/benetton-full-sleeves-velour-hooded-sweatshirt-pink-0-12-months.html', '3-7 Working days.', 0, 'Benetton Full Sleeves Velour Hooded Sweatshirt - Pink (0 - 12 months) ', '2013-02-28 04:25:34'),
(59, 36, 9999, 'http://www.babyoye.com/sunbaby-joy-land-steel-bed-green.html', '3-7 Working days.', 0, 'Sunbaby Joy Land Steel Bed - Green', '2013-02-28 04:49:42'),
(59, 24, 95, 'http://www.babyoye.com/zero-baby-boy-call-me-pirate-slr-sleeveless-vest-grey-3-18-months.html', '3-7 Working days.', 0, 'Zero Baby Boy Call Me Pirate SLR Sleeveless Vest - Grey (3 - 18 Months)', '2013-02-28 04:54:01'),
(59, 55, 40, 'http://www.babyoye.com/the-fearless-boy-710.html', '3-7 Working days.', 0, 'The Fearless Boy (710)', '2013-02-28 16:40:13'),
(59, 61, 1169, 'http://www.babyoye.com/bkids-tiny-tunes-activity-band.html', '3-7 Working days.', 0, 'Bkids Tiny Tunes Activity Band', '2013-02-28 19:28:20'),
(59, 70, 319, 'http://www.babyoye.com/your-practical-pregnancy-planner.html', '3-7 Working days.', 0, 'YOUR PRACTICAL PREGNANCY PLANNER                  ', '2013-03-04 23:09:06'),
(59, 82, 350, 'http://www.babyoye.com/benetton-floral-print-top-multicolour-1-12-months.html', '3-7 Working days.', 0, 'Benetton Floral Print Top - Multicolour (1 - 12 Months)', '2013-03-21 17:00:54'),
(59, 83, 239, 'http://www.babyoye.com/fairytale-collection-puss-in-boots-dvd.html', '3-7 Working days.', 0, 'Fairytale Collection - Puss In Boots (Dvd)', '2013-03-21 17:03:47'),
(59, 84, 175, 'http://www.babyoye.com/hi-fly-school-canvas-shoes-white-2-4-years.html', '3-7 Working days.', 0, 'Hi Fly School Canvas Shoes - White (2 - 4 years)', '2013-03-21 17:06:49'),
(59, 87, 899, 'http://www.babyoye.com/cars-2-action-agents-spring-tv-driver.html', '3-7 Working days.', 0, 'Cars 2 Action Agents Spring Tv Driver', '2013-03-29 10:22:03'),
(59, 89, 899, 'http://www.babyoye.com/cars-2-action-agents-spring-tv-driver.html', '3-7 Working days.', 0, 'Cars 2 Action Agents Spring Tv Driver', '2013-03-29 10:24:09'),
(59, 2, 1199, 'http://www.babyoye.com/angry-birds-project-a-lite.html', '3-7 Working days.', 0, '', '2013-04-05 18:26:20'),
(59, 91, 1290, 'http://www.babyoye.com/kittens-girls-casual-shoes-black-5-10-yrs.html', '3-7 Working days.', 0, '', '2013-07-03 15:54:32'),
(59, 25, 719, 'http://www.babyoye.com/catalog/product/view/id/66038/', '3-7 Working days.', 0, '', '2013-07-04 02:46:47'),
(59, 15, 218, 'http://www.babyoye.com/art-fun-800pcs-ironing-beads-set.html', '3-7 Working days.', 0, '', '2013-07-04 04:39:50'),
(59, 93, 1799, 'http://www.babyoye.com/meccano-helicopter.html', '3-7 Working days.', 0, '', '2013-07-04 05:25:29'),
(59, 95, 899, 'http://www.babyoye.com/spiderman-casual-shoes-grey-34996.html', '3-7 Working days.', 0, '', '2013-07-04 05:32:40');

-- --------------------------------------------------------

--
-- Table structure for table `bagskart`
--

CREATE TABLE IF NOT EXISTS `bagskart` (
  `WebsiteID` int(10) NOT NULL,
  `ProductId` int(10) NOT NULL,
  `Price` int(10) NOT NULL,
  `Link` text COLLATE utf8_unicode_ci NOT NULL,
  `DeliveryTime` text COLLATE utf8_unicode_ci NOT NULL,
  `EMI` int(1) NOT NULL DEFAULT '0',
  `Title` text COLLATE utf8_unicode_ci NOT NULL,
  `Time` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `bagskart`
--

INSERT INTO `bagskart` (`WebsiteID`, `ProductId`, `Price`, `Link`, `DeliveryTime`, `EMI`, `Title`, `Time`) VALUES
(56, 2, 1199, 'http://www.bagskart.com/capdase-sjsgi9100-3f00-soft-jacket-fuze-for-samsung-galaxy-sii-clear-mobile-case.html', '2-5 Working days.', 0, 'Capdase SJSGI9100-3F00 Soft Jacket Fuze for Samsung Galaxy SII Clear Mobile Case ', '2013-01-18 17:35:11'),
(56, 3, 520, 'http://www.bagskart.com/capdase-sjsgi9100-3f00-soft-jacket-fuze-for-samsung-galaxy-sii-clear-mobile-case.html', '2-5 Working days.', 0, 'Capdase SJSGI9100-3F00 Soft Jacket Fuze for Samsung Galaxy SII Clear Mobile Case ', '2013-01-18 17:36:20'),
(56, 4, 617, 'http://www.bagskart.com/vincent-chase-631-j-lemon-chifon-ladies-handbag.html', '2-5 Working days.', 0, 'Vincent Chase 631 J Lemon Chifon Womens Handbag', '2013-01-18 20:25:02'),
(56, 0, 1895, 'http://www.bagskart.com/homme-36-b-black-men-s-wallet-and-belt-waist-34-to-38-inches-gift-set.html', '2-5 Working days.', 0, 'Homme 36-B Black Mens Wallet and Belt(Waist 34 to 38 Inches) Gift Set', '2013-01-18 20:29:12'),
(56, 6, 1395, 'http://www.bagskart.com/homme-36-b-black-men-s-wallet-and-belt-waist-34-to-38-inches-gift-set.html', '2-5 Working days.', 0, 'Homme 36-B Black Mens Wallet and Belt(Waist 34 to 38 Inches) Gift Set', '2013-01-18 20:29:36'),
(56, 8, 1495, 'http://www.bagskart.com/capdase-sjsgi9100-3f00-soft-jacket-fuze-for-samsung-galaxy-sii-clear-mobile-case.html', '2-5 Working days.', 0, 'Capdase SJSGI9100-3F00 Soft Jacket Fuze for Samsung Galaxy SII Clear Mobile Case ', '2013-01-18 20:49:08'),
(56, 9, 600, 'http://www.bagskart.com/capdase-sjih4s-p2y5-soft-jacket-2-xpose-for-iphone-4-4s-purple-mobile-case.html', '2-5 Working days.', 0, 'Capdase SJIH4S-P2Y5 Soft Jacket 2 Xpose for iPhone 4, 4s Purple Mobile Case ', '2013-01-18 21:16:10'),
(56, 18, 299, 'http://www.bagskart.com/vincent-chase-personalised-01-black-card-holder.html', '2-5 Working days.', 0, 'Vincent Chase 01 Black Card Holder', '2013-01-23 19:33:14'),
(56, 21, 1271, 'http://www.bagskart.com/fastrack-a0317cpk01am-red-ladies-handbag.html', '2-5 Working days.', 0, 'Fastrack A0317CPK01AM Pink Womens Tote Bag', '2013-01-23 19:40:31'),
(56, 22, 971, 'http://www.bagskart.com/fastrack-c0324lgy01-black-women-s-wallet.html', '2-5 Working days.', 0, 'Fastrack C0324LGY01 Black Womens Wallet', '2013-01-23 19:43:01'),
(56, 26, 2350, 'http://www.bagskart.com/kara-overnighter-trolley-model-lg-7192-16-inches.html', '2-5 Working days.', 0, 'Kara Overnighter Trolley Model:  LG-7192 (16 inches)  ', '2013-01-23 21:46:04'),
(56, 27, 2796, 'http://www.bagskart.com/timex-t49778-watches.html', '2-5 Working days.', 0, 'Timex Expedition T49778 Unisex Watch', '2013-01-23 22:16:07'),
(56, 28, 2796, 'http://www.bagskart.com/timex-t49778-watches.html', '2-5 Working days.', 0, 'Timex Expedition T49778 Unisex Watch', '2013-01-23 22:17:22'),
(56, 31, 18275, 'http://www.bagskart.com/deuter-33847-aircontact-pro-70-10-cranberry-black-rucksack.html', '2-5 Working days.', 0, 'Deuter 33847 Aircontact Pro 70+10 Cranberry Black Rucksack', '2013-01-23 22:36:42'),
(56, 37, 1299, 'http://www.bagskart.com/baolulai-bll008-matte-black-unisex-sunglasses.html', '2-5 Working days.', 0, 'Baolulai BLL008 Matte Black Unisex Sunglasses', '2013-02-10 23:58:18'),
(56, 13, 520, 'http://www.bagskart.com/capdase-sjsgi9100-3f00-soft-jacket-fuze-for-samsung-galaxy-sii-clear-mobile-case.html', '2-5 Working days.', 0, 'Capdase SJSGI9100-3F00 Soft Jacket Fuze for Samsung Galaxy SII Clear Mobile Case ', '2013-02-11 00:05:10');

-- --------------------------------------------------------

--
-- Table structure for table `bestprice`
--

CREATE TABLE IF NOT EXISTS `bestprice` (
  `ProductId` int(10) NOT NULL,
  `BestPrice` int(10) NOT NULL,
  `Stores` int(10) NOT NULL,
  `Sequence` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `bestprice`
--

INSERT INTO `bestprice` (`ProductId`, `BestPrice`, `Stores`, `Sequence`) VALUES
(1, 5990, 17, '70,17,61,19,66,20,4,65,22,69,7,16,2,27,8,34,9,'),
(2, 5849, 7, '27,6,34,20,1,17,22,'),
(3, 5990, 10, '34,1,20,6,22,9,27,3,35,69,'),
(4, 0, 0, ''),
(5, 0, 0, ''),
(6, 336, 5, '22,40,2,3,37,'),
(7, 0, 0, ''),
(8, 11075, 15, '9,4,70,22,69,61,66,20,17,2,6,8,1,34,27,'),
(9, 0, 0, ''),
(10, 3990, 16, '70,69,7,6,1,66,22,2,4,17,34,13,27,20,61,65,'),
(11, 0, 0, ''),
(12, 31888, 8, '22,1,34,20,66,27,28,3,'),
(13, 28890, 12, '70,66,22,20,8,34,17,1,6,27,7,19,'),
(15, 18764, 6, '6,67,61,34,22,27,'),
(16, 410, 6, '66,2,3,6,22,4,'),
(17, 1410, 3, '2,4,3,'),
(18, 1650, 4, '1,22,3,70,'),
(19, 18300, 11, '20,70,4,9,35,61,28,1,13,3,27,'),
(20, 15200, 11, '28,66,2,4,27,34,69,20,6,7,13,'),
(21, 1641, 1, '3,'),
(22, 1641, 1, '3,'),
(23, 0, 0, ''),
(24, 28288, 12, '9,4,70,22,28,13,3,6,27,1,20,17,'),
(25, 4749, 6, '28,66,1,4,3,27,'),
(26, 390, 3, '22,66,6,'),
(27, 5555, 1, '27,'),
(28, 950, 1, '3,'),
(29, 9300, 1, '3,'),
(30, 0, 0, ''),
(286, 5290, 2, '6,3,'),
(32, 0, 0, ''),
(33, 0, 0, ''),
(34, 18581, 7, '22,6,66,1,34,8,27,'),
(35, 6118, 12, '9,70,66,6,1,7,34,17,27,61,22,3,'),
(36, 3790, 12, '9,4,70,1,6,66,17,34,61,27,20,22,'),
(37, 4361, 1, '37,'),
(38, 0, 0, ''),
(39, 19500, 15, '22,9,67,17,27,6,4,16,34,7,63,35,61,1,28,'),
(40, 545, 2, '37,35,'),
(41, 0, 0, ''),
(43, 6290, 12, '7,8,32,4,9,69,28,27,17,22,70,19,'),
(44, 2150, 1, '2,'),
(45, 14999, 5, '27,17,8,22,28,'),
(46, 11400, 10, '22,70,4,6,7,20,66,34,61,27,'),
(47, 27000, 12, '20,22,69,66,7,4,70,6,61,1,34,27,'),
(48, 10098, 14, '28,61,4,69,1,9,13,27,34,8,22,6,70,20,'),
(49, 21900, 11, '1,4,8,69,17,32,6,67,16,9,34,'),
(50, 33000, 10, '22,9,4,61,67,20,6,28,17,16,'),
(51, 44444, 8, '22,6,20,17,27,66,28,7,'),
(52, 26999, 3, '4,22,8,'),
(53, 65899, 3, '2,4,22,'),
(54, 2290, 4, '8,6,22,66,'),
(285, 1272, 2, '5,3,'),
(284, 16433, 1, '3,'),
(57, 0, 0, ''),
(58, 453, 3, '2,37,1,'),
(59, 530, 4, '70,6,17,4,'),
(60, 361, 3, '6,70,4,'),
(61, 390, 2, '6,70,'),
(62, 0, 0, ''),
(63, 0, 0, ''),
(64, 0, 0, ''),
(65, 0, 0, ''),
(287, 32799, 7, '8,3,5,9,6,1,2,'),
(67, 8855, 1, '37,'),
(68, 8855, 1, '37,'),
(69, 0, 0, ''),
(70, 0, 0, ''),
(71, 30510, 1, '28,'),
(72, 0, 0, ''),
(73, 25990, 10, '27,9,22,4,8,69,20,1,28,34,'),
(74, 39999, 11, '22,63,9,69,34,66,27,7,20,1,28,'),
(75, 0, 0, ''),
(76, 0, 0, ''),
(77, 15990, 1, '22,'),
(78, 20432, 15, '4,70,13,1,66,7,69,16,61,34,20,2,17,28,27,'),
(79, 625, 2, '22,4,'),
(80, 36799, 11, '66,2,1,13,4,34,69,20,28,17,27,'),
(81, 9230, 11, '35,22,69,1,17,8,7,20,4,32,61,'),
(82, 0, 0, ''),
(83, 0, 0, ''),
(84, 0, 0, ''),
(85, 3511, 9, '4,13,34,27,69,66,2,17,22,'),
(86, 12790, 10, '17,70,69,9,66,4,22,28,20,7,'),
(87, 45199, 1, '4,'),
(88, 45199, 1, '4,'),
(89, 0, 0, ''),
(90, 0, 0, ''),
(283, 225, 3, '9,2,1,'),
(92, 673, 1, '37,'),
(93, 1998, 1, '22,'),
(94, 2190, 6, '9,70,69,17,66,22,'),
(95, 0, 0, ''),
(96, 0, 0, ''),
(97, 0, 0, ''),
(98, 5985, 8, '7,4,3,6,2,9,1,5,'),
(99, 2290, 4, '5,2,9,6,'),
(100, 7394, 7, '7,2,4,6,3,1,5,'),
(101, 39869, 4, '2,5,4,9,'),
(102, 35100, 7, '9,4,6,3,7,5,2,'),
(103, 1159, 5, '4,6,9,2,3,'),
(104, 8951, 8, '5,9,2,4,1,6,7,3,'),
(105, 28744, 5, '4,7,6,9,3,'),
(106, 4500, 4, '3,4,6,5,'),
(107, 10999, 8, '4,2,6,1,9,7,5,3,'),
(108, 2813, 2, '5,3,'),
(109, 14979, 3, '4,3,5,'),
(110, 6249, 3, '9,2,6,'),
(111, 42919, 1, '3,'),
(112, 8743, 1, '5,'),
(114, 20890, 3, '1,9,3,'),
(115, 19999, 6, '9,1,5,4,6,3,'),
(116, 38999, 4, '9,3,2,4,'),
(117, 33417, 1, '9,'),
(118, 39216, 1, '3,'),
(119, 20299, 2, '9,4,'),
(120, 39869, 4, '2,6,5,3,'),
(121, 39869, 1, '2,'),
(282, 91, 5, '5,4,9,2,3,'),
(281, 21890, 1, '2,'),
(124, 19948, 4, '5,1,9,6,'),
(125, 535, 4, '1,2,5,3,'),
(126, 25340, 3, '3,1,4,'),
(127, 14350, 7, '3,9,4,2,6,5,7,'),
(128, 4691, 3, '4,5,3,'),
(129, 9999, 1, '5,'),
(130, 18450, 4, '9,4,7,6,'),
(131, 35500, 1, '5,'),
(280, 0, 0, ''),
(133, 8999, 4, '2,3,9,1,'),
(134, 18450, 4, '9,5,1,3,'),
(135, 0, 0, ''),
(136, 11400, 2, '7,3,'),
(138, 13532, 5, '2,1,3,4,5,'),
(139, 4599, 4, '2,5,9,1,'),
(140, 5286, 6, '9,3,5,6,2,1,'),
(141, 7711, 4, '9,2,1,5,'),
(142, 8900, 5, '3,2,5,9,1,'),
(143, 15000, 3, '3,9,1,'),
(144, 13000, 6, '3,5,6,9,2,1,'),
(145, 9949, 4, '2,5,1,9,'),
(146, 13531, 7, '9,3,8,5,2,1,6,'),
(147, 5949, 4, '8,2,9,3,'),
(148, 4599, 7, '8,5,1,9,2,3,4,'),
(149, 4845, 6, '9,1,3,5,4,2,'),
(279, 39869, 4, '2,7,4,3,'),
(150, 16285, 8, '4,7,9,6,5,2,1,3,'),
(151, 3894, 2, '3,7,'),
(152, 1344, 2, '3,5,'),
(154, 1352, 1, '5,'),
(155, 255, 2, '2,9,'),
(278, 1490, 3, '9,2,3,'),
(158, 1347, 2, '3,4,'),
(159, 93, 4, '5,2,4,3,'),
(160, 92, 7, '22,5,2,4,37,35,3,'),
(277, 3040, 2, '5,2,'),
(162, 1337, 1, '5,'),
(163, 700, 3, '9,5,3,'),
(165, 108, 3, '2,3,5,'),
(166, 95, 4, '1,2,3,4,'),
(276, 26499, 2, '1,9,'),
(168, 4850, 7, '3,8,5,9,2,1,6,'),
(170, 4990, 6, '5,3,9,2,1,6,'),
(275, 535, 3, '6,2,9,'),
(172, 4949, 3, '2,3,9,'),
(173, 14999, 1, '3,'),
(175, 4909, 6, '5,9,3,2,1,6,'),
(274, 516, 4, '9,1,6,3,'),
(177, 3999, 4, '1,2,9,5,'),
(273, 0, 0, ''),
(179, 5949, 5, '8,1,2,9,3,'),
(180, 12999, 2, '3,2,'),
(359, 0, 0, ''),
(182, 4050, 3, '2,9,5,'),
(183, 4396, 3, '1,2,9,'),
(184, 1395, 3, '6,1,2,'),
(185, 2820, 1, '1,'),
(186, 1728, 6, '5,1,2,8,4,6,'),
(187, 1395, 5, '5,2,9,1,6,'),
(188, 0, 0, ''),
(189, 17249, 1, '9,'),
(191, 4887, 1, '1,'),
(272, 19649, 3, '2,1,9,'),
(193, 773, 4, '4,2,9,1,'),
(194, 214, 3, '2,5,1,'),
(195, 2120, 2, '1,3,'),
(196, 1436, 5, '2,1,5,3,9,'),
(197, 1699, 8, '8,5,2,4,6,9,1,3,'),
(198, 3854, 4, '1,6,4,2,'),
(199, 1414, 6, '1,5,9,4,2,6,'),
(200, 2149, 5, '2,1,4,3,9,'),
(201, 1811, 1, '2,'),
(202, 479, 4, '2,1,9,6,'),
(203, 5349, 6, '8,3,5,6,9,2,'),
(204, 33599, 7, '8,6,1,2,5,3,9,'),
(205, 33552, 6, '5,6,9,1,4,3,'),
(271, 0, 0, ''),
(207, 9652, 5, '5,3,2,9,4,'),
(270, 0, 0, ''),
(209, 22190, 1, '3,'),
(210, 12410, 2, '7,3,'),
(211, 90, 5, '1,9,2,5,4,'),
(212, 6599, 5, '9,1,7,6,2,'),
(214, 6249, 5, '9,2,1,6,5,'),
(215, 4250, 1, '2,'),
(216, 1180, 4, '9,1,4,3,'),
(217, 39869, 3, '2,3,9,'),
(218, 269, 4, '2,1,9,6,'),
(219, 18953, 1, '9,'),
(220, 389, 5, '1,9,2,5,3,'),
(221, 6040, 2, '5,4,'),
(222, 4576, 5, '9,6,2,5,3,'),
(223, 9299, 8, '2,4,7,9,6,5,1,3,'),
(224, 61199, 2, '4,3,'),
(225, 0, 0, ''),
(226, 24700, 6, '9,4,6,2,7,3,'),
(227, 236, 3, '3,5,4,'),
(228, 999, 3, '2,1,9,'),
(269, 31500, 6, '22,2,4,6,5,13,'),
(230, 34500, 8, '9,4,6,5,1,7,8,3,'),
(231, 6990, 7, '5,35,4,7,9,6,19,'),
(232, 926, 4, '1,3,9,4,'),
(233, 495, 1, '9,'),
(234, 98099, 1, '3,'),
(235, 25235, 3, '5,'),
(236, 0, 0, ''),
(267, 0, 0, ''),
(237, 12450, 2, '1,2,9,'),
(239, 337, 4, '9,2,5,4,'),
(240, 2997, 1, '5,'),
(241, 207, 2, '2,1,'),
(242, 12290, 3, '8,1,3,'),
(244, 34699, 4, '4,6,9,8,'),
(245, 7799, 8, '4,7,8,6,9,5,1,2,'),
(246, 4553, 7, '4,9,7,6,2,5,3,'),
(248, 4099, 2, '2,1,'),
(249, 13700, 2, '1,3,'),
(250, 1275, 1, '1,'),
(251, 14807, 1, '6,'),
(266, 0, 0, ''),
(265, 0, 0, ''),
(313, 0, 0, ''),
(255, 29990, 5, '6,4,9,8,5,'),
(256, 5500, 2, '4,3,'),
(257, 17825, 1, '3,'),
(264, 2345, 1, '2,'),
(293, 41698, 1, '3,'),
(263, 990, 4, '2,9,1,4,'),
(268, 7828, 7, '5,4,1,2,6,9,3,'),
(288, 449, 1, '4,'),
(289, 8199, 2, '9,2,'),
(290, 9658, 1, '2,'),
(291, 0, 0, ''),
(292, 21045, 1, '1,'),
(294, 312, 2, '6,2,'),
(295, 1199, 4, '2,9,3,5,'),
(296, 10949, 1, '2,'),
(297, 1529, 1, '2,'),
(298, 0, 0, ''),
(299, 6390, 3, '2,6,9,'),
(300, 37500, 1, '2,'),
(301, 549, 5, '4,9,2,3,5,'),
(302, 0, 0, ''),
(303, 168, 4, '1,9,2,3,'),
(304, 559, 1, '9,'),
(305, 1699, 1, '9,'),
(306, 1492, 1, '5,'),
(307, 0, 0, ''),
(308, 0, 0, ''),
(309, 0, 0, ''),
(310, 20276, 3, '5,2,6,'),
(311, 5458, 2, '2,6,'),
(312, 33329, 6, '4,2,6,7,3,5,'),
(314, 511, 1, '2,'),
(315, 22199, 6, '2,4,6,9,5,7,'),
(316, 29599, 6, '2,4,1,5,6,3,'),
(317, 23796, 5, '2,5,1,6,3,'),
(318, 26585, 8, '19,2,6,12,5,13,3,8,'),
(319, 25199, 5, '4,2,9,3,5,'),
(320, 3599, 5, '5,2,9,6,3,'),
(321, 5662, 3, '2,6,3,'),
(322, 0, 0, ''),
(323, 8395, 1, '3,'),
(324, 2045, 7, '6,5,2,1,3,4,9,'),
(325, 2045, 7, '6,9,5,1,3,2,4,'),
(326, 3699, 6, '9,5,1,3,2,4,'),
(327, 5433, 6, '1,2,9,5,4,3,'),
(328, 6783, 2, '1,2,'),
(329, 8999, 6, '2,3,9,4,1,6,'),
(330, 7719, 2, '2,4,'),
(331, 6599, 5, '2,9,1,3,4,'),
(332, 5549, 6, '2,9,1,4,5,3,'),
(333, 5380, 3, '6,9,2,'),
(334, 3849, 6, '4,5,2,1,8,3,'),
(335, 4057, 1, '2,'),
(336, 4057, 1, '2,'),
(337, 3395, 2, '1,3,'),
(338, 1500, 7, '3,9,2,5,1,4,6,'),
(339, 356, 6, '5,2,9,4,3,6,'),
(340, 1199, 5, '9,2,5,6,4,'),
(341, 745, 6, '9,5,2,6,4,3,'),
(342, 340, 5, '6,2,9,4,3,'),
(343, 54900, 5, '6,4,2,5,9,'),
(344, 95299, 4, '2,5,9,4,'),
(345, 244, 6, '5,6,2,3,4,9,'),
(346, 240, 6, '6,5,2,4,9,3,'),
(347, 3498, 2, '3,4,'),
(348, 535, 4, '6,4,9,3,'),
(350, 16220, 6, '4,22,9,20,2,27,'),
(349, 0, 0, ''),
(351, 2600, 1, '4,'),
(352, 24500, 1, '4,'),
(353, 14993, 10, '12,4,22,2,6,20,34,9,5,13,'),
(354, 34990, 6, '22,6,3,2,4,27,'),
(355, 9799, 1, '4,'),
(356, 11599, 10, '9,22,6,19,4,2,7,16,5,1,'),
(357, 0, 0, ''),
(358, 34300, 1, '3,'),
(360, 1149, 2, '1,27,'),
(361, 4186, 2, '9,28,'),
(362, 1535, 4, '2,8,20,3,'),
(363, 6399, 3, '66,22,4,'),
(364, 0, 0, ''),
(365, 955, 2, '37,35,'),
(366, 1650, 1, '22,'),
(14, 0, 0, ''),
(31, 80671, 7, '8,34,61,66,4,16,3,'),
(42, 13287, 1, '1,'),
(55, 11970, 9, '66,70,7,6,22,61,34,35,27,'),
(56, 39999, 16, '22,63,70,9,61,34,69,28,66,27,7,17,20,1,13,6,'),
(66, 0, 0, ''),
(91, 7099, 4, '22,7,17,66,');

-- --------------------------------------------------------

--
-- Table structure for table `bestylish`
--

CREATE TABLE IF NOT EXISTS `bestylish` (
  `WebsiteID` int(10) NOT NULL,
  `ProductId` int(10) NOT NULL,
  `Price` int(10) NOT NULL,
  `Link` text NOT NULL,
  `DeliveryTime` text NOT NULL,
  `EMI` int(1) NOT NULL DEFAULT '0',
  `Title` text NOT NULL,
  `Time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bestylish`
--

INSERT INTO `bestylish` (`WebsiteID`, `ProductId`, `Price`, `Link`, `DeliveryTime`, `EMI`, `Title`, `Time`) VALUES
(11, 13, 3099, 'http://www.bestylish.com/adidas-kids-galaxy-elite-2-k-102035', 'Delivered in 2-3 business days.', 0, 'Adidas Kids GALAXY ELITE 2 K from Adidas', '2013-01-23 19:22:47'),
(11, 21, 6440, 'http://www.bestylish.com/lovetobag-women-fly-away-tote', 'Delivered in 2-3 business days.', 0, 'LOVETOBAG WOMEN FLY AWAY TOTE from LOVETOBAG', '2013-01-23 19:40:09'),
(11, 26, 860, 'http://www.bestylish.com/vector-x-men-drive-80962', 'Delivered in 2-3 business days.', 0, 'Vector X Men Drive from Vector X', '2013-01-23 21:45:56'),
(11, 30, 135, 'http://www.bestylish.com/trendz-men-meks-99913', 'Delivered in 2-3 business days.', 0, 'TRENDZ MEN MEKS 3 Pair Pack from TRENDZ', '2013-01-23 22:31:50'),
(11, 31, 135, 'http://www.bestylish.com/trendz-men-meks-99913', 'Delivered in 2-3 business days.', 0, 'TRENDZ MEN MEKS 3 Pair Pack from TRENDZ', '2013-01-23 22:36:35'),
(11, 35, 449, 'http://www.bestylish.com/mosscat-women-m302-112793', 'Delivered in 2-3 business days.', 0, 'Mosscat Women M302 from Mosscat', '2013-01-30 13:52:00'),
(11, 36, 1747, 'http://www.bestylish.com/hitz-men-202-67168', 'Delivered in 2-3 business days.', 0, 'Hitz Men 202 from Hitz', '2013-01-30 13:53:02'),
(11, 37, 1399, 'http://www.bestylish.com/adidas-unisex-bp-classic-gra5', 'Delivered in 2-3 business days.', 0, 'Adidas Unisex BP CLASSIC GRA5 from Adidas', '2013-02-10 23:58:09'),
(11, 38, 349, 'http://www.bestylish.com/platy-pvc-cfb-black-black-44610', 'Delivered in 2-3 business days.', 0, 'PLATY PVC CFB BLACK-Black from Coolers', '2013-02-12 22:56:06'),
(11, 39, 349, 'http://www.bestylish.com/platy-pvc-cfb-black-black-44610', 'Delivered in 2-3 business days.', 0, 'PLATY PVC CFB BLACK-Black from Coolers', '2013-02-12 22:56:49'),
(11, 40, 1500, 'http://www.bestylish.com/reebok-men-mobile-runner-63551', 'Delivered in 2-3 business days.', 0, 'Reebok Men MOBILE RUNNER from Reebok', '2013-02-19 17:34:03');

-- --------------------------------------------------------

--
-- Table structure for table `bigadda`
--

CREATE TABLE IF NOT EXISTS `bigadda` (
  `WebsiteID` int(10) NOT NULL,
  `ProductId` int(10) NOT NULL,
  `Price` int(10) NOT NULL,
  `Link` text NOT NULL,
  `DeliveryTime` text NOT NULL,
  `EMI` int(1) NOT NULL DEFAULT '0',
  `Title` text NOT NULL,
  `Time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bigadda`
--

INSERT INTO `bigadda` (`WebsiteID`, `ProductId`, `Price`, `Link`, `DeliveryTime`, `EMI`, `Title`, `Time`) VALUES
(19, 1, 11399, 'http://www.bigadda.com/samsung-smart-phone-gt-s6802-chic-white-galaxy-ace-duos-mobile-phone.html', 'Delivery In 7 - 10 Days.', 0, 'Samsung Ace Duos GT-S6802 Chic White', '2013-01-18 16:54:01'),
(19, 13, 34900, 'http://www.bigadda.com/catalog/product/view/id/19899/s/samsung-smart-phone-gt-i9300-metallic-blue-galaxy-s3-16gb-mobile-phone/', 'Delivery In 7 - 10 Days.', 0, 'Samsung Galaxy S3 GT-I9300 Metallic Blue (16GB)', '2013-02-11 00:05:06'),
(19, 40, 17599, 'http://www.bigadda.com/catalog/product/view/id/20090/s/htc-s720e-one-x-endeavour-white-mobile-phone/', 'Delivery In 7 - 10 Days.', 0, 'HTC S720E ONE X Endeavour White', '2013-02-19 17:34:09'),
(19, 43, 34900, 'http://www.bigadda.com/catalog/product/view/id/20084/s/samsung-cdma-i589-metallic-grey-mobile-phone/', 'Delivery In 7 - 10 Days.', 0, 'Samsung CDMA-I589- Metallic Grey', '2013-02-21 16:35:12'),
(19, 48, 34900, 'http://www.bigadda.com/catalog/product/view/id/20083/s/samsung-smart-phone-gt-s6802-chic-white-galaxy-ace-duos-mobile-phone/', 'Delivery In 7 - 10 Days.', 0, 'Samsung Ace Duos GT-S6802 Chic White', '2013-02-24 10:53:17'),
(19, 73, 29399, 'http://www.bigadda.com/samsung-smart-phone-gt-s6802-chic-white-galaxy-ace-duos-mobile-phone.html', 'Delivery In 7 - 10 Days.', 0, 'Samsung Ace Duos GT-S6802 Chic White', '2013-03-19 14:59:58'),
(19, 74, 17599, 'http://www.bigadda.com/blackberry-curve-9320-black-mobile-phone.html', 'Delivery In 7 - 10 Days.', 0, 'Blackberry Curve 9320 Black', '2013-03-19 15:06:05'),
(19, 81, 949, 'http://www.bigadda.com/sony-earphone-xba-3-black.html', 'Delivery In 7 - 10 Days.', 0, 'Sony Earphone XBA-3 (Black)', '2013-03-21 16:51:05');

-- --------------------------------------------------------

--
-- Table structure for table `bitfang`
--

CREATE TABLE IF NOT EXISTS `bitfang` (
  `WebsiteID` int(10) NOT NULL,
  `ProductId` int(10) NOT NULL,
  `Price` int(10) NOT NULL,
  `Link` text NOT NULL,
  `DeliveryTime` text NOT NULL,
  `EMI` int(1) NOT NULL DEFAULT '0',
  `Title` text NOT NULL,
  `Time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `buytheprice`
--

CREATE TABLE IF NOT EXISTS `buytheprice` (
  `WebsiteID` int(10) NOT NULL,
  `ProductId` int(10) NOT NULL,
  `Price` int(10) NOT NULL,
  `Link` text NOT NULL,
  `DeliveryTime` text NOT NULL,
  `EMI` int(1) NOT NULL DEFAULT '0',
  `Title` text NOT NULL,
  `Time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `caratlane`
--

CREATE TABLE IF NOT EXISTS `caratlane` (
  `WebsiteID` int(10) NOT NULL,
  `ProductId` int(10) NOT NULL,
  `Price` int(10) NOT NULL,
  `Link` text NOT NULL,
  `DeliveryTime` text NOT NULL,
  `EMI` int(1) NOT NULL DEFAULT '0',
  `Title` text NOT NULL,
  `Time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `caratlane`
--

INSERT INTO `caratlane` (`WebsiteID`, `ProductId`, `Price`, `Link`, `DeliveryTime`, `EMI`, `Title`, `Time`) VALUES
(48, 2, 29350, 'http://www.caratlane.com/2-row-diamond-tanmaniya-18k-white-gold-0-33-ct-total-diamond-weight-jm00034-wgp400.html', '-', 0, '2-Row Tanmaniya Pendat', '2013-01-18 17:35:28'),
(48, 3, 23450, 'http://www.caratlane.com/aureola-pendant-jp00706-wgp900.html', '-', 0, 'Aureola Pendant', '2013-01-18 17:36:11'),
(48, 4, 93600, 'http://www.caratlane.com/contemporary-nine-stone-round-marquise-diamond-studs-18k-yellow-gold-1-02-ct-diamond-weight-je00340-ygp400.html', '-', 0, 'Modern Nine-Stone Diamond Studs', '2013-01-18 20:24:48'),
(48, 0, 4300, 'http://www.caratlane.com/forever-round-solitaire-pendant-mount-18k-white-gold-mp00040-wg0000.html', '-', 0, 'Forever Round Solitaire Pendant Mount', '2013-01-18 20:28:58'),
(48, 6, 16750, 'http://www.caratlane.com/je00939-ptp900-je00939-ptp900.html', '-', 0, 'Svelte Stud Earrings ', '2013-01-18 20:29:26'),
(48, 8, 22300, 'http://www.caratlane.com/aureola-pendant-jp00706-wgp900.html', '-', 0, 'Aureola Pendant', '2013-01-18 20:49:00'),
(48, 9, 2657, 'http://www.caratlane.com/cherry-pendant-18k-yellow-gold-jp00568-yg0000-jp00573-yg0000.html', '-', 0, 'Cherry Pendant, 18K Yellow Gold', '2013-01-18 21:16:14'),
(48, 11, 207350, 'http://www.caratlane.com/traditions-diamond-1-73-ct-ruby-5-68-ct-bangle-18k-yellow-gold-20-61-gms-total-weight-jb00025-ygp4ru.html', '-', 0, 'Traditional Diamond Bangle', '2013-01-19 15:32:44'),
(48, 12, 29000, 'http://www.caratlane.com/galaxy-bracelet-jt00084-wgp900.html', '-', 0, 'Galaxy Bracelet', '2013-01-19 15:34:21'),
(48, 13, 28700, 'http://www.caratlane.com/galaxy-bracelet-jt00084-wgp900.html', '-', 0, 'Galaxy Bracelet', '2013-01-23 19:23:01'),
(48, 14, 2657, 'http://www.caratlane.com/cherry-pendant-18k-yellow-gold-jp00568-yg0000-jp00573-yg0000.html', '-', 0, 'Cherry Pendant', '2013-01-23 19:24:53'),
(48, 19, 28700, 'http://www.caratlane.com/galaxy-bracelet-jt00084-wgp900.html', '-', 0, 'Galaxy Bracelet', '2013-01-23 19:36:50'),
(48, 21, 99850, 'http://www.caratlane.com/pinnacle-solitaire-studs-18k-yellow-gold-0-80-ct-total-diamond-weight-se00077-ygp400.html', '-', 0, 'Pinnacle Solitaire Studs(0.60ct).', '2013-01-23 19:40:18'),
(48, 22, 15100, 'http://www.caratlane.com/affection-gold-band-18k-rose-gold-6-96-gms-ur00002-rg0000.html', '-', 0, 'Affection Mens Ring', '2013-01-23 19:42:51'),
(48, 23, 44100, 'http://www.caratlane.com/jubilance-diamond-ring-18k-yellow-gold-0-64-ct-total-diamond-weight-jr00234-ygp900.html', '-', 0, 'Jubilance Single-Swirl Ring', '2013-01-23 19:44:24'),
(48, 28, 11650, 'http://www.caratlane.com/tapered-diamond-cross-18k-white-gold-0-02-ct-diamond-weight-jp00311-wgp900.html', '-', 0, 'Tapered Cross Pendant ', '2013-01-23 22:17:21'),
(48, 29, 14800, 'http://www.caratlane.com/cherished-clover-diamond-0-17-ct-ring-18k-yellow-gold-jr00316-ygp800.html', '-', 0, 'Cherished Clover Ring', '2013-01-23 22:27:35'),
(48, 31, 2657, 'http://www.caratlane.com/cherry-pendant-18k-yellow-gold-jp00568-yg0000-jp00573-yg0000.html', '-', 0, 'Cherry Pendant', '2013-01-23 22:36:47'),
(48, 38, 26700, 'http://www.caratlane.com/bold-beautiful-duo-tone-band-18k-white-rose-gold-7-20-gms-ur00009-wr0000.html', '-', 0, 'Bold & Beautiful Ring', '2013-02-12 22:56:18'),
(48, 39, 17000, 'http://www.caratlane.com/bold-beautiful-duo-tone-band-18k-white-rose-gold-7-20-gms-ur00009-wr0000.html', '-', 0, 'Bold & Beautiful Ring', '2013-02-12 22:56:57'),
(48, 48, 28700, 'http://www.caratlane.com/galaxy-bracelet-jt00084-wgp900.html', '-', 0, 'Galaxy Bracelet', '2013-02-24 10:53:23'),
(48, 72, 28700, 'http://www.caratlane.com/galaxy-bracelet-jt00084-wgp900.html', '-', 0, 'Galaxy Bracelet', '2013-03-17 20:37:28'),
(48, 73, 28700, 'http://www.caratlane.com/galaxy-bracelet-jt00084-wgp900.html', '-', 0, 'Galaxy Bracelet', '2013-03-19 15:00:06'),
(48, 75, 7900, 'http://www.caratlane.com/amethyst-butterfly-pendant-18k-yellow-gold-2-ct-total-amethyst-weight-jp00319-yg00at.html', '-', 0, 'Amethyst Butterfly Pendant', '2013-03-19 15:09:15'),
(48, 76, 7900, 'http://www.caratlane.com/amethyst-butterfly-pendant-18k-yellow-gold-2-ct-total-amethyst-weight-jp00319-yg00at.html', '-', 0, 'Amethyst Butterfly Pendant', '2013-03-19 15:10:27'),
(48, 78, 28700, 'http://www.caratlane.com/galaxy-bracelet-jt00084-wgp900.html', '-', 0, 'Galaxy Bracelet', '2013-03-19 19:06:38');

-- --------------------------------------------------------

--
-- Table structure for table `cbazaar`
--

CREATE TABLE IF NOT EXISTS `cbazaar` (
  `WebsiteID` int(10) NOT NULL,
  `ProductId` int(10) NOT NULL,
  `Price` int(10) NOT NULL,
  `Link` text COLLATE utf8_unicode_ci NOT NULL,
  `DeliveryTime` text COLLATE utf8_unicode_ci NOT NULL,
  `EMI` int(1) NOT NULL DEFAULT '0',
  `Title` text COLLATE utf8_unicode_ci NOT NULL,
  `Time` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cbazaar`
--

INSERT INTO `cbazaar` (`WebsiteID`, `ProductId`, `Price`, `Link`, `DeliveryTime`, `EMI`, `Title`, `Time`) VALUES
(62, 1, 2790, 'http://www.cbazaar.in/party-wear-saree/simple-elegance/embroidered-dual-tone-chiffon-saree-p-sashtx4015.html', '-', 0, 'Embroidered Dual Tone Chiffon Saree', '2013-01-18 16:54:08'),
(62, 2, 1845, '/casual-saree/casual-charm/pleasing-cream-bengal-cotton-saree-p-sakswe1217.html', '-', 0, 'Pleasing Cream Bengal Cotton Saree', '2013-01-18 17:35:12'),
(62, 3, 810, 'http://www.cbazaar.in/earrings/polki-earrings/dazzling-black-jhumka-earrings-p-ermsa28.html', '-', 0, 'Dazzling Black Jhumka Earrings', '2013-01-18 17:36:12'),
(62, 0, 1350, '/salwar-kameez/casual-salwars/modern-creation-salwar-suit-p-slshc214.html', '-', 0, '', '2013-01-18 20:28:55'),
(62, 6, 4590, '/necklace-sets/signity-necklace-sets/modern-signity-necklace-set-p-jypn71.html', '-', 0, '', '2013-01-18 20:29:19'),
(62, 8, 5805, 'http://www.cbazaar.in/party-wear-saree/embroidery-collections/mesmerizing-reddish-maroon-embroidered-georgette-s-p-samssw9117b.html', '-', 0, 'Mesmerizing Reddish maroon Embroidered Georgette S', '2013-01-18 20:48:59'),
(62, 9, 1215, '/casual-saree/casual-drapes/green-georgette-jacquard-saree-p-sasdvf7086a.html', '-', 0, '', '2013-01-18 21:16:13'),
(62, 10, 4860, '/party-wear-saree/exotic-jacquard-weave/maroon-magic-jacquard-saree-p-sastf305.html', '-', 0, '', '2013-01-19 01:05:49'),
(62, 11, 9450, '/party-wear-saree/double-blouse-sarees/charming-saree-p-saky223.html', '-', 0, '', '2013-01-19 15:32:43'),
(62, 12, 1890, 'http://www.cbazaar.in/party-wear-saree/simplistic-charm/beautiful-magenta-georgette-saree-p-sacvp7606.html', '-', 0, 'Beautiful Magenta Georgette Saree', '2013-01-19 15:34:18'),
(62, 13, 7515, '/bridegrooms/designer-mens-suit/uniquely-designed-fana-color-suit-p-shcm2127.html', '-', 0, 'Uniquely Designed Fana Color Suit', '2013-01-23 19:22:59'),
(62, 15, 8100, '/party-wear-saree/neeta-lulla-collection/angelic-embroidered-net-saree-p-sacaaa227.html', '-', 0, '', '2013-01-23 19:27:50'),
(62, 16, 1395, '/party-wear-saree/simple-elegance/elegant-maroon-viscose-saree-p-sasncs390.html', '-', 0, '', '2013-01-23 19:30:13'),
(62, 18, 9675, '/bridegrooms/readymade-sherwanis/subtle-blackish-teal-flock-printed-sherwani-p-shmdc4858r.html', '-', 0, '', '2013-01-23 19:33:17'),
(62, 19, 1170, '/bangles-and-bracelets/bangles-n-kadas/magnificent-stones-studded-polki-bangles-p-brmsa1202.html', '-', 0, '', '2013-01-23 19:36:46'),
(62, 20, 18855, '/bridesmaid-and-family/lehenga-choli/elegant-fish-cut-net-lehenga-choli-p-ghdhm5931j.html', '-', 0, 'Elegant Fish Cut Net lehenga Choli', '2013-01-23 19:38:10'),
(62, 21, 1800, '/kids-clothing/fusion-wear-for-girls/stylish-off-white-lycra-fusion-wear-for-girls-p-kdmdio778.html', '-', 0, '', '2013-01-23 19:40:19'),
(62, 22, 3915, '/party-wear-saree/simplistic-charm/enduring-pink-georgette-saree-p-sasod15008b.html', '-', 0, '', '2013-01-23 19:42:47'),
(62, 23, 7038, '/necklace-sets/silver-necklace-sets/single-stone-studded-necklace-set-p-jykvrm1251.html', '-', 0, '', '2013-01-23 19:44:25'),
(62, 24, 14805, 'http://www.cbazaar.in/brides/in-vogue-saree/stunning-pink-lehenga-saree-p-samkal442.html', '-', 0, 'Stunning Pink Lehenga Saree', '2013-01-23 19:45:13'),
(62, 26, 5265, 'http://www.cbazaar.in/necklace-sets/silver-pendant-sets/scintillating-blue-floral-and-dew-drop-pattern-pen-p-jykvrm889.html', '-', 0, 'Scintillating Blue Floral And Dew Drop Pattern Pen', '2013-01-23 21:46:32'),
(62, 27, 1305, '/mens-bottom/silk-and-cotton-dhotis/classic-white-cotton-dhoti-p-dh43d181301.html', '-', 0, '', '2013-01-23 22:15:54'),
(62, 28, 3780, '/kids-clothing/kids-churidars-n-salwar-suits/classy-green-and-red-anarkali-suit-p-kdmom413.html', '-', 0, '', '2013-01-23 22:17:16'),
(62, 29, 8865, 'http://www.cbazaar.in/party-wear-saree/bollywood-vogue/pink-katrina-saree-p-sabv0901.html', '-', 0, 'Pink Katrina Saree', '2013-01-23 22:27:32'),
(62, 31, 1215, '/casual-saree/casual-drapes/green-georgette-jacquard-saree-p-sasdvf7086a.html', '-', 0, '', '2013-01-23 22:36:46'),
(62, 34, 5130, 'http://www.cbazaar.in/party-wear-saree/lehenga-style-drapes/beige-net-embroidered-lehenga-saree-p-sasatf900.html', '-', 0, 'Beige Net Embroidered Lehenga Saree', '2013-01-30 13:49:42'),
(62, 35, 2025, '/party-wear-saree/georgette-combo/turquoise-block-printed-half-and-half-saree-p-sashtx302.html', '-', 0, 'Turquoise Block Printed Half and Half Saree', '2013-01-30 13:52:09'),
(62, 36, 10665, 'http://www.cbazaar.in/party-wear-saree/party-trendsetters/gorgeous-saree-p-saksa202.html', '-', 0, 'Gorgeous Saree', '2013-01-30 13:53:11'),
(62, 38, 12555, '/party-wear-saree/georgette-combo/bandhini-glam-half-and-half-saree-p-saksen10.html', '-', 0, 'Bandhini Glam Half And Half Saree', '2013-02-12 22:56:18'),
(62, 39, 1395, 'http://www.cbazaar.in/party-wear-saree/stylish-expression/multi-shade-pallu-saree-p-saspatp1327.html', '-', 0, 'Multi Shade Pallu Saree', '2013-02-12 22:56:58'),
(62, 40, 1260, '/hand-bags/designer-hand-bags/royal-maroon-silk-handbag-p-hboaer3.html', '-', 0, 'Royal Maroon Silk Handbag', '2013-02-19 17:34:13'),
(62, 41, 450, '/readymade-kurti/trendy-readymade-tunics/charismatic-black-cotton-tunic-p-krjmkt1239e.html', '-', 0, 'Charismatic Black Cotton Tunic', '2013-02-19 17:34:52'),
(62, 42, 450, '/readymade-kurti/trendy-readymade-tunics/charismatic-black-cotton-tunic-p-krjmkt1239e.html', '-', 0, 'Charismatic Black Cotton Tunic', '2013-02-19 17:35:22'),
(62, 45, 13950, '/party-wear-saree/embroidered-net-sarees/machine-embroidered-fab-net-saree-p-sakac9007.html', '-', 0, 'Machine Embroidered Fab Net Saree', '2013-02-22 08:14:03'),
(62, 46, 2385, '/casual-saree/dazzling-casuals/resham-embroidered-green-saree-p-sastf610a.html', '-', 0, 'Resham Embroidered Green Saree', '2013-02-22 16:36:51'),
(62, 47, 3150, 'http://www.cbazaar.in/kids-clothing/kurta-pyjamas-for-boys/ornate-dual-tone-dupion-kurta-pyjama-p-kdmjt920.html', '-', 0, 'Ornate Dual Tone Dupion Kurta Pyjama', '2013-02-22 16:43:49'),
(62, 51, 720, '/readymade-kurti/casual-readymade-kurtis/elegant-off-white-cotton-kurti-p-krcmc9001a.html', '-', 0, 'Elegant Off White Cotton Kurti', '2013-02-24 13:13:24'),
(62, 52, 6255, '/party-wear-saree/contemporary-collection/enchanting-ready-to-wear-saree-p-samv1463.html', '-', 0, 'Enchanting Ready To Wear Saree', '2013-02-24 16:35:56'),
(62, 53, 4680, '/salwar-kameez/party-wear-salwars/multi-layered-red-net-salwar-suit-p-slavsa3603b.html', '-', 0, 'Multi Layered Red Net Salwar Suit', '2013-02-24 16:38:46'),
(62, 55, 7335, 'http://www.cbazaar.in/bridesmaid-and-family/lehenga-choli/floral-embroidered-pink-lehenga-choli-p-saspatp710.html', '-', 0, 'Floral Embroidered pink Lehenga Choli', '2013-02-28 02:05:21'),
(62, 73, 5805, 'http://www.cbazaar.in/party-wear-saree/embroidery-collections/mesmerizing-reddish-maroon-embroidered-georgette-s-p-samssw9117b.html', '-', 0, 'Mesmerizing Reddish maroon Embroidered Georgette S', '2013-03-19 15:00:04'),
(62, 61, 4455, 'http://www.cbazaar.in/party-wear-saree/fancy-party-wear/urban-saree-p-savt43.html', '-', 0, 'Urban Saree', '2013-02-28 19:28:24'),
(62, 64, 10980, 'http://www.cbazaar.in/party-wear-saree/enamored-with-georgettes/captivating-shimmer-georgette-saree-p-sa11b591242.html', '-', 0, 'Captivating Shimmer Georgette Saree', '2013-03-04 20:09:20'),
(62, 70, 8775, 'http://www.cbazaar.in/bridegrooms/jodhpuri-suits/deep-grey-brocade-jodhpuri-suit-p-sumdc2450.html', '-', 0, 'Deep Grey Brocade Jodhpuri Suit', '2013-03-04 23:09:09'),
(62, 71, 13950, 'http://www.cbazaar.in/party-wear-saree/embroidered-net-sarees/machine-embroidered-fab-net-saree-p-sakac9007.html', '-', 0, 'Machine Embroidered Fab Net Saree', '2013-03-07 11:01:19'),
(62, 81, 35550, 'http://www.cbazaar.in/brides/in-vogue-saree/enthralling-stones-studded-sharara-saree-p-samrac517.html', '-', 0, 'Enthralling Stones Studded Sharara Saree', '2013-03-21 16:51:33'),
(62, 82, 7470, 'http://www.cbazaar.in/party-wear-saree/lehenga-style-drapes/multi-colored-half-and-half-lehenga-style-saree-p-sacvp4511.html', '-', 0, 'Multi Colored Half And Half Lehenga Style Saree', '2013-03-21 17:01:08'),
(62, 83, 6075, 'http://www.cbazaar.in/party-wear-saree/lavish-splendour/black-party-wear-saree-p-sarr0757.html', '-', 0, 'Black Party Wear Saree', '2013-03-21 17:03:54'),
(62, 85, 1260, 'http://www.cbazaar.in/casual-saree/casual-prints/enticing-red-georgette-saree-p-sasdvf9073a.html', '-', 0, 'Enticing Red Georgette Saree', '2013-03-21 17:12:34'),
(62, 87, 1215, 'http://www.cbazaar.in/salwar-kameez/classy-casual-salwars/pretty-silk-cotton-churidar-suit-p-sljskr1246d.html', '-', 0, 'Pretty Silk Cotton Churidar Suit', '2013-03-29 10:22:09'),
(62, 89, 1215, 'http://www.cbazaar.in/salwar-kameez/classy-casual-salwars/pretty-silk-cotton-churidar-suit-p-sljskr1246d.html', '-', 0, 'Pretty Silk Cotton Churidar Suit', '2013-03-29 10:24:12');

-- --------------------------------------------------------

--
-- Table structure for table `costprize`
--

CREATE TABLE IF NOT EXISTS `costprize` (
  `WebsiteID` int(10) NOT NULL,
  `ProductId` int(10) NOT NULL,
  `Price` int(10) NOT NULL,
  `Link` text COLLATE utf8_unicode_ci NOT NULL,
  `DeliveryTime` text COLLATE utf8_unicode_ci NOT NULL,
  `EMI` int(1) NOT NULL DEFAULT '0',
  `Title` text COLLATE utf8_unicode_ci NOT NULL,
  `Time` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `costprize`
--

INSERT INTO `costprize` (`WebsiteID`, `ProductId`, `Price`, `Link`, `DeliveryTime`, `EMI`, `Title`, `Time`) VALUES
(67, 1, 2306, 'http://www.costprize.com/best-price-Samsung-SamsungE2202-E2202', '3-5 Working days.', 0, 'Samsung   Samsung E2202', '2013-01-18 16:54:15'),
(67, 2, 8580, 'http://www.costprize.com/best-price-Samsung-GALAXYPOPS5570-S5570', '3-5 Working days.', 0, 'Samsung   GALAXY POP S5570', '2013-01-18 17:35:14'),
(67, 3, 8580, 'http://www.costprize.com/best-price-Samsung-GALAXYPOPS5570-S5570', '3-5 Working days.', 0, 'Samsung   GALAXY POP S5570', '2013-01-18 17:36:11'),
(67, 4, 8455, 'http://www.costprize.com/best-price-Philips-HD4690', '3-5 Working days.', 0, 'Philips   Aluminium Juicer HD 4690', '2013-01-18 20:24:47'),
(67, 0, 8455, 'http://www.costprize.com/best-price-Philips-HD4690', '3-5 Working days.', 0, 'Philips   Aluminium Juicer HD 4690', '2013-01-18 20:28:54'),
(67, 6, 9088, 'http://www.costprize.com/best-price-Karbonn-A21Black-A21', '3-5 Working days.', 0, 'Karbonn   A21 Black', '2013-01-18 20:29:21'),
(67, 8, 8580, 'http://www.costprize.com/best-price-Samsung-GALAXYPOPS5570-S5570', '3-5 Working days.', 0, 'Samsung   GALAXY POP S5570', '2013-01-18 20:48:59'),
(67, 9, 36980, 'http://www.costprize.com/best-price-Apple-IPhone4S-16GB-4S-16GB', '3-5 Working days.', 0, 'Apple   Mobile iPhone 4S - 16GB', '2013-01-18 21:16:12'),
(67, 10, 3935, 'http://www.costprize.com/best-price-Nokia-ASHA200-ASHA200', '3-5 Working days.', 0, 'Nokia   ASHA 200', '2013-01-19 01:05:49'),
(67, 12, 8580, 'http://www.costprize.com/best-price-Samsung-GALAXYPOPS5570-S5570', '3-5 Working days.', 0, 'Samsung   GALAXY POP S5570', '2013-01-19 15:34:23'),
(67, 13, 8580, 'http://www.costprize.com/best-price-Samsung-GALAXYPOPS5570-S5570', '3-5 Working days.', 0, 'Samsung   GALAXY POP S5570', '2013-01-23 19:22:59'),
(67, 14, 36980, 'http://www.costprize.com/best-price-Apple-IPhone4S-16GB-4S-16GB', '3-5 Working days.', 0, 'Apple   Mobile iPhone 4S - 16GB', '2013-01-23 19:24:52'),
(67, 15, 18837, 'http://www.costprize.com/best-price-Nokia-Lumia800-Lumia800', '3-5 Working days.', 0, 'Nokia   lumia 800', '2013-01-23 19:27:49'),
(67, 16, 13687, 'http://www.costprize.com/best-price-Philips-LCDTV24PFL5306-24PFL5306', '3-5 Working days.', 0, 'Philips   LCD TV 24PFL5306', '2013-01-23 19:30:09'),
(67, 20, 17156, 'http://www.costprize.com/best-price-Sony-XperiaGo-Go', '3-5 Working days.', 0, 'Sony   Xperia Go', '2013-01-23 19:38:10'),
(67, 23, 20891, 'http://www.costprize.com/best-price-Electrolux-EF55VCWH', '3-5 Working days.', 0, 'Electrolux   Washing Machine EF55VCWH', '2013-01-23 19:44:23'),
(67, 24, 4355, 'http://www.costprize.com/best-price-Nikon-COOLPIX-L23-L23', '3-5 Working days.', 0, 'Nikon   COOLPIX - L23', '2013-01-23 19:45:10'),
(67, 25, 9750, 'http://www.costprize.com/best-price-Micromax-MicromaxA100-A100', '3-5 Working days.', 0, 'Micromax   Micromax A100', '2013-01-23 20:12:08'),
(67, 29, 5275, 'http://www.costprize.com/best-price-Canon-POWERSHOTA2200', '3-5 Working days.', 0, 'Canon   POWER SHOT A2200', '2013-01-23 22:27:30'),
(67, 34, 18837, 'http://www.costprize.com/best-price-Nokia-Lumia800-Lumia800', '3-5 Working days.', 0, 'Nokia   lumia 800', '2013-01-30 13:49:44'),
(67, 35, 3935, 'http://www.costprize.com/best-price-Nokia-ASHA200-ASHA200', '3-5 Working days.', 0, 'Nokia   ASHA 200', '2013-01-30 13:52:08'),
(67, 36, 3935, 'http://www.costprize.com/best-price-Nokia-ASHA200-ASHA200', '3-5 Working days.', 0, 'Nokia   ASHA 200', '2013-01-30 13:53:13'),
(67, 38, 20524, 'http://www.costprize.com/best-price-Blackberry-Bold39780-9780', '3-5 Working days.', 0, 'Blackberry   Bold 3 9780', '2013-02-12 22:56:17'),
(67, 39, 20524, 'http://www.costprize.com/best-price-Blackberry-Bold39780-9780', '3-5 Working days.', 0, 'Blackberry   Bold 3 9780', '2013-02-12 22:56:53'),
(67, 41, 71245, 'http://www.costprize.com/best-price-HD-8753/83-EXPRESSO-COFFEE-MAKER', '3-5 Working days.', 0, 'Philips   EXPRESSO COFFEE MAKER ', '2013-02-19 17:34:53'),
(67, 42, 1159, 'http://www.costprize.com/best-price-Nokia-BH-112', '3-5 Working days.', 0, 'Nokia   Earphone BH-112', '2013-02-19 17:35:26'),
(67, 45, 9700, 'http://www.costprize.com/best-price-Samsung-WT9201EG', '3-5 Working days.', 0, 'Samsung   Washing Machine WT9201EG', '2013-02-22 08:14:02'),
(67, 46, 18837, 'http://www.costprize.com/best-price-Nokia-Lumia800-Lumia800', '3-5 Working days.', 0, 'Nokia   lumia 800', '2013-02-22 16:36:50'),
(67, 47, 18837, 'http://www.costprize.com/best-price-Nokia-Lumia800-Lumia800', '3-5 Working days.', 0, 'Nokia   lumia 800', '2013-02-22 16:43:49'),
(67, 48, 8580, 'http://www.costprize.com/best-price-Samsung-GALAXYPOPS5570-S5570', '3-5 Working days.', 0, 'Samsung   GALAXY POP S5570', '2013-02-24 10:53:26'),
(67, 49, 36980, 'http://www.costprize.com/best-price-Apple-IPhone4S-16GB-4S-16GB', '3-5 Working days.', 0, 'Apple   iPhone 4S - 16GB', '2013-02-24 10:57:25'),
(67, 50, 36980, 'http://www.costprize.com/best-price-Apple-IPhone4S-16GB-4S-16GB', '3-5 Working days.', 0, 'Apple   iPhone 4S - 16GB', '2013-02-24 10:58:31'),
(67, 51, 36980, 'http://www.costprize.com/best-price-Apple-IPhone4S-16GB-4S-16GB', '3-5 Working days.', 0, 'Apple   iPhone 4S - 16GB', '2013-02-24 13:13:22'),
(67, 52, 12128, 'http://www.costprize.com/best-price-Samsung-LED19ES4000-19ES4000', '3-5 Working days.', 0, 'Samsung   LED TV 19ES4000', '2013-02-24 16:35:52'),
(67, 53, 62076, 'http://www.costprize.com/best-price-Samsung-46InchesFULLHDLCD-LA46D550', '3-5 Working days.', 0, 'Samsung   46 Inches FULL HD LCD TV', '2013-02-24 16:38:47'),
(67, 55, 18837, 'http://www.costprize.com/best-price-Nokia-Lumia800-Lumia800', '3-5 Working days.', 0, 'Nokia   lumia 800', '2013-02-28 02:05:20'),
(67, 56, 8991, 'http://www.costprize.com/best-price-Blackberry-Curve-8520', '3-5 Working days.', 0, 'Blackberry   Curve', '2013-02-28 02:32:55'),
(67, 60, 8399, 'http://www.costprize.com/best-price-Sony-ST21I/TIPO/SS-Black-ST21I/TIPO/SS', '3-5 Working days.', 0, 'Sony   Sony  ST21I/TIPO/SS Black', '2013-02-28 19:27:14'),
(67, 61, 8399, 'http://www.costprize.com/best-price-Sony-ST21I/TIPO/SS-Black-ST21I/TIPO/SS', '3-5 Working days.', 0, 'Sony   Sony  ST21I/TIPO/SS Black', '2013-02-28 19:28:23'),
(67, 71, 32000, 'http://www.costprize.com/best-price-IFB-ADMIRAL-ADMIRAL', '3-5 Working days.', 0, 'IFB   Washing Machine ADMIRAL', '2013-03-07 11:01:19'),
(67, 72, 8580, 'http://www.costprize.com/best-price-Samsung-GALAXYPOPS5570-S5570', '3-5 Working days.', 0, 'Samsung   GALAXY POP S5570', '2013-03-17 20:37:29'),
(67, 73, 8580, 'http://www.costprize.com/best-price-Samsung-GALAXYPOPS5570-S5570', '3-5 Working days.', 0, 'Samsung   GALAXY POP S5570', '2013-03-19 15:00:08'),
(67, 74, 8991, 'http://www.costprize.com/best-price-Blackberry-Curve-8520', '3-5 Working days.', 0, 'Blackberry   Curve', '2013-03-19 15:06:12'),
(67, 77, 1461, 'http://www.costprize.com/best-price-Nokia-101-101', '3-5 Working days.', 0, 'Nokia   101', '2013-03-19 15:13:04'),
(67, 78, 8580, 'http://www.costprize.com/best-price-Samsung-GALAXYPOPS5570-S5570', '3-5 Working days.', 0, 'Samsung   GALAXY POP S5570', '2013-03-19 19:06:36'),
(67, 80, 17156, 'http://www.costprize.com/best-price-Sony-XperiaGo-Go', '3-5 Working days.', 0, 'Sony   Xperia Go', '2013-03-21 16:45:06'),
(67, 81, 8399, 'http://www.costprize.com/best-price-Sony-ST21I/TIPO/SS-Black-ST21I/TIPO/SS', '3-5 Working days.', 0, 'Sony   Sony  ST21I/TIPO/SS Black', '2013-03-21 16:51:11'),
(67, 84, 2606, 'http://www.costprize.com/best-price-Quechua-BPFORCLAZ60brownblack-BPFORCLAZ60brownblack', '3-5 Working days.', 0, 'Quechua   HIKING BP FORCLAZ 60 brown/black', '2013-03-21 17:06:50'),
(67, 85, 2306, 'http://www.costprize.com/best-price-Samsung-SamsungE2202-E2202', '3-5 Working days.', 0, 'Samsung   Samsung E2202', '2013-03-21 17:12:13'),
(67, 86, 9750, 'http://www.costprize.com/best-price-Micromax-MicromaxA100-A100', '3-5 Working days.', 0, 'Micromax   Micromax A100', '2013-03-28 22:47:01'),
(67, 87, 12128, 'http://www.costprize.com/best-price-Samsung-LED19ES4000-19ES4000', '3-5 Working days.', 0, 'Samsung   LED TV 19ES4000', '2013-03-29 10:22:05'),
(67, 88, 12128, 'http://www.costprize.com/best-price-Samsung-LED19ES4000-19ES4000', '3-5 Working days.', 0, 'Samsung   LED TV 19ES4000', '2013-03-29 10:23:04'),
(67, 89, 12128, 'http://www.costprize.com/best-price-Samsung-LED19ES4000-19ES4000', '3-5 Working days.', 0, 'Samsung   LED TV 19ES4000', '2013-03-29 10:24:12');

-- --------------------------------------------------------

--
-- Table structure for table `cromaretail`
--

CREATE TABLE IF NOT EXISTS `cromaretail` (
  `WebsiteID` int(10) NOT NULL,
  `ProductId` int(10) NOT NULL,
  `Price` int(10) NOT NULL,
  `Link` text NOT NULL,
  `DeliveryTime` text NOT NULL,
  `EMI` int(1) NOT NULL DEFAULT '1',
  `Title` text NOT NULL,
  `Time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cromaretail`
--

INSERT INTO `cromaretail` (`WebsiteID`, `ProductId`, `Price`, `Link`, `DeliveryTime`, `EMI`, `Title`, `Time`) VALUES
(17, 0, 10499, 'http://www.cromaretail.com/HP-M1136-Laserjet-Multi--function-Printer-pc-896-239.aspx', 'Delivery within 7 working days.', 1, 'HP M1136 Laserjet Multi- function Printer', '2013-01-18 16:53:59'),
(17, 30, 67900, 'http://www.cromaretail.com/Apple-MacBook-Air-MD223-116"-Notebook-pc-12570-191.aspx', 'Delivery within 7 working days.', 1, 'Apple MacBook Air MD223 11.6" Notebook', '2013-01-23 22:31:51'),
(17, 37, 88950, 'http://www.cromaretail.com/Hitachi-601-Litres-R-W660EN9-GBK(Glass-Black)-Side-By-Side-Refrigerator-pc-122-398.aspx', 'Delivery within 7 working days.', 1, 'Hitachi 601 Litres R-W660EN9-GBK(Glass Black) Side By Side Refrigerator', '2013-02-10 23:58:13'),
(17, 40, 20490, 'http://www.cromaretail.com/BlackBerry-9860-GSM-Mobile-Phone-pc-4888-96.aspx', 'Delivery within 7 working days.', 1, 'BlackBerry 9860 GSM Mobile Phone', '2013-02-19 17:34:05'),
(17, 43, 25999, 'http://www.cromaretail.com/Samsung-Galaxy-S2-I9100-GSM-Mobile-Phone-pc-2135-95.aspx', 'Delivery within 7 working days.', 1, 'Samsung Galaxy S2 I9100 GSM Mobile Phone', '2013-02-21 16:35:08'),
(17, 44, 25999, 'http://www.cromaretail.com/Samsung-Galaxy-S2-I9100-GSM-Mobile-Phone-pc-2135-95.aspx', 'Delivery within 7 working days.', 1, 'Samsung Galaxy S2 I9100 GSM Mobile Phone', '2013-02-21 17:29:28'),
(17, 49, 26500, 'http://www.cromaretail.com/Apple-iPhone-4-8GB-Unlocked-Mobile-Phone-(White)-pc-15917-97.aspx', 'Delivery within 7 working days.', 1, 'Apple iPhone 4 8GB Unlocked Mobile Phone (White)', '2013-02-24 10:57:18'),
(17, 47, 350, 'http://www.cromaretail.com/Nokia-Lumia-920-Scratchgard-pc-17100-536.aspx', 'Delivery within 7 working days.', 1, 'Nokia Lumia 920 Scratchgard', '2013-02-28 01:47:56'),
(17, 55, 350, 'http://www.cromaretail.com/Nokia-Lumia-710-Scratchguard-pc-9104-536.aspx', 'Delivery within 7 working days.', 1, 'Nokia Lumia 710 Scratchguard', '2013-02-28 02:05:14'),
(17, 56, 43490, 'http://www.cromaretail.com/BlackBerry-Z10-GSM-Mobile-Phone-(Black)-pc-17420-96.aspx', 'Delivery within 7 working days.', 1, 'BlackBerry Z10 GSM Mobile Phone (Black)', '2013-02-28 02:32:48'),
(17, 57, 6990, 'http://www.cromaretail.com/PlayStation-2-Console-(Black)-pc-1443-503.aspx', 'Delivery within 7 working days.', 1, 'PlayStation 2 Console (Black)', '2013-02-28 03:53:56'),
(17, 58, 6990, 'http://www.cromaretail.com/PlayStation-2-Console-(Black)-pc-1443-503.aspx', 'Delivery within 7 working days.', 1, 'PlayStation 2 Console (Black)', '2013-02-28 03:55:24'),
(17, 29, 8725, 'http://www.cromaretail.com/Canon-141MP-Powershot-SX150-Digital-Camera-pc-2605-132.aspx', 'Delivery within 7 working days.', 1, 'Canon 14.1MP Powershot SX150 Digital Camera', '2013-02-28 03:58:43'),
(17, 15, 385, 'http://www.cromaretail.com/Nokia-Lumia-800-Scratchguard-pc-9105-536.aspx', 'Delivery within 7 working days.', 1, 'Nokia Lumia 800 Scratchguard', '2013-02-28 04:23:43'),
(17, 35, 6429, 'http://www.cromaretail.com/Nokia-Asha-302-GSM-Mobile-Phone-(Grey)-pc-11301-98.aspx', 'Delivery within 7 working days.', 1, 'Nokia Asha 302 GSM Mobile Phone (Grey)', '2013-02-28 04:25:26'),
(17, 10, 4229, 'http://www.cromaretail.com/Nokia-Asha-305-GSM-Mobile-Phone-(Dual-Sim)-(Grey)-pc-12994-99.aspx', 'Delivery within 7 working days.', 1, 'Nokia Asha 305 GSM Mobile Phone (Dual Sim) (Grey)', '2013-02-28 04:48:19'),
(17, 36, 3929, 'http://www.cromaretail.com/Nokia-Asha-202-GSM-Mobile-Phone-(Dual-SIM)-(Black)-pc-12091-99.aspx', 'Delivery within 7 working days.', 1, 'Nokia Asha 202 GSM Mobile Phone (Dual SIM) (Black)', '2013-02-28 04:49:37'),
(17, 24, 33902, 'http://www.cromaretail.com/Nikon-D5100-162-MP-DSLR-Camera-pc-1959-133.aspx', 'Delivery within 7 working days.', 1, 'Nikon D5100 16.2 MP DSLR Camera', '2013-02-28 04:53:52'),
(17, 13, 29499, 'http://www.cromaretail.com/Samsung-I9300-Galaxy-S3-GSM-Mobile-Phone-(White)-pc-12320-95.aspx', 'Delivery within 7 working days.', 1, 'Samsung I9300 Galaxy S3 GSM Mobile Phone (White)', '2013-02-28 05:00:33'),
(17, 1, 7659, 'http://www.cromaretail.com/Samsung-Galaxy-Y-Duos-GSM--GSM-Mobile-Phone-(Dual-Sim)-(Black)-pc-10544-95.aspx', 'Delivery within 7 working days.', 1, 'Samsung Galaxy Y Duos GSM + GSM Mobile Phone (Dual Sim) (Black) ', '2013-02-28 16:41:37'),
(17, 12, 499, 'http://www.cromaretail.com/Samsung-Galaxy-Note-2-Scratchgard-pc-15688-536.aspx', 'Delivery within 7 working days.', 1, 'Samsung Galaxy Note 2 Scratchgard', '2013-02-28 16:42:51'),
(17, 8, 12399, 'http://www.cromaretail.com/Samsung-Galaxy-S-Duos-S7562-GSM-Mobile-Phone-(Dual-SIM)-(Black)-pc-15727-95.aspx', 'Delivery within 7 working days.', 1, 'Samsung Galaxy S Duos S7562 GSM Mobile Phone (Dual SIM) (Black)', '2013-02-28 17:45:01'),
(17, 39, 21994, 'http://www.cromaretail.com/BlackBerry-Bold-9790-GSM-Mobile-Phone-(White)-pc-15133-96.aspx', 'Delivery within 7 working days.', 1, 'BlackBerry Bold 9790 GSM Mobile Phone (White)', '2013-02-28 18:29:52'),
(17, 59, 599, 'http://www.cromaretail.com/Sandisk-Cruzer-Blade-16GB-Pendrive-pc-819-231.aspx', 'Delivery within 7 working days.', 1, 'Sandisk Cruzer Blade 16GB Pendrive', '2013-02-28 19:26:07'),
(17, 60, 499, 'http://www.cromaretail.com/Sony-USM8GUBC-IN-8GB-USB-Flash-Drive-(Black)-pc-17071-231.aspx', 'Delivery within 7 working days.', 1, 'Sony USM8GU/BC IN 8GB USB Flash Drive (Black)', '2013-02-28 19:27:01'),
(17, 70, 2994, 'http://www.cromaretail.com/Mobo-Pocket-Media-Player-pc-13002-168.aspx', 'Delivery within 7 working days.', 1, 'Mobo Pocket Media Player', '2013-03-04 23:08:58'),
(17, 71, 23400, 'http://www.cromaretail.com/Samsung-55-Kg-WF8558QMW8-Front-Loading-Washing-Machine-pc-12961-404.aspx', 'Delivery within 7 working days.', 1, 'Samsung 5.5 Kg WF8558QMW8 Front Loading Washing Machine', '2013-03-07 11:01:10'),
(17, 78, 21500, 'http://www.cromaretail.com/Samsung-Galaxy-Grand-Duos-GSM-Mobile-Phone-(Dual-SIM)-(Blue)-pc-17233-95.aspx', 'Delivery within 7 working days.', 1, 'Samsung Galaxy Grand Duos GSM Mobile Phone (Dual SIM) (Blue)', '2013-03-19 19:06:25'),
(17, 80, 38990, 'http://www.cromaretail.com/Sony-Xperia-Z-GSM-Mobile-Phone-(White)-pc-17634-95.aspx', 'Delivery within 7 working days.', 1, 'Sony Xperia Z GSM Mobile Phone (White)', '2013-03-21 16:44:53'),
(17, 81, 12999, 'http://www.cromaretail.com/Sony-Xperia-U-GSM-Mobile-Phone-pc-12074-95.aspx', 'Delivery within 7 working days.', 1, 'Sony Xperia U GSM Mobile Phone', '2013-03-21 16:51:01'),
(17, 85, 5049, 'http://www.cromaretail.com/Samsung-Rex-80-S5222R-GSM-Mobile-Phone-(Dual-SIM)-(White)-pc-17499-99.aspx', 'Delivery within 7 working days.', 1, 'Samsung Rex 80 S5222R GSM Mobile Phone (Dual SIM) (White)', '2013-03-21 17:12:06'),
(17, 87, 43000, 'http://www.cromaretail.com/Samsung-UA32EH6030R-32"-LED-TV-pc-12781-739.aspx', 'Delivery within 7 working days.', 1, 'Samsung UA32EH6030R 32" LED TV', '2013-03-29 10:21:56'),
(17, 88, 43000, 'http://www.cromaretail.com/Samsung-UA32EH6030R-32"-LED-TV-pc-12781-739.aspx', 'Delivery within 7 working days.', 1, 'Samsung UA32EH6030R 32" LED TV', '2013-03-29 10:22:55'),
(17, 89, 43000, 'http://www.cromaretail.com/Samsung-UA32EH6030R-32"-LED-TV-pc-12781-739.aspx', 'Delivery within 7 working days.', 1, 'Samsung UA32EH6030R 32" LED TV', '2013-03-29 10:24:04'),
(17, 2, 5999, 'http://www.cromaretail.com/Samsung-Galaxy-Y-DUOS-Lite-S5302-GSM-Mobile-Phone-(Dual-SIM)-(White)-pc-15266-95.aspx', 'Delivery within 7 working days.', 1, 'Samsung Galaxy Y DUOS Lite S5302 GSM Mobile Phone (Dual SIM) (White)', '2013-04-05 18:26:15'),
(17, 90, 2999, 'http://www.cromaretail.com/Belkin-F9S623VZB2M-6-Outlet-Surge-Protector-pc-507-432.aspx', 'Delivery within 7 working days.', 1, 'Belkin F9S623VZB2M 6 Outlet Surge Protector', '2013-04-05 19:26:14'),
(17, 91, 8999, 'http://www.cromaretail.com/Nokia-Lumia-510-GSM-Mobile-Phone-(Black)-pc-16037-853.aspx', 'Delivery within 7 working days.', 1, 'Nokia Lumia 510 GSM Mobile Phone (Black)', '2013-07-03 15:54:27'),
(17, 92, 15190, 'http://www.cromaretail.com/BlackBerry-Curve-9320-GSM-Mobile-Phone-(Black)-pc-12330-96.aspx', 'Delivery within 7 working days.', 1, 'BlackBerry Curve 9320 GSM Mobile Phone (Black)', '2013-07-04 02:48:43'),
(17, 46, 350, 'http://www.cromaretail.com/Nokia-Lumia-610-Scratchgard-pc-15187-536.aspx', 'Delivery within 7 working days.', 1, 'Nokia Lumia 610 Scratchgard', '2013-07-04 02:51:31'),
(17, 51, 45500, 'http://www.cromaretail.com/Apple-iPhone-5-16-GB-Unlocked-Mobile-Phone-(Black)-pc-16000-97.aspx', 'Delivery within 7 working days.', 1, 'Apple iPhone 5 16 GB Unlocked Mobile Phone (Black)', '2013-07-04 02:56:58'),
(17, 50, 38500, 'http://www.cromaretail.com/Apple-iPhone-4S-16-GB-Unlocked-Mobile-Phone-(White)-pc-15919-97.aspx', 'Delivery within 7 working days.', 1, 'Apple iPhone 4S 16 GB Unlocked Mobile Phone (White)', '2013-07-04 02:58:58'),
(17, 45, 22500, 'http://www.cromaretail.com/Samsung-55-Kg-WF550B0BKWQTL-Front-Loading-Washing-Machine-pc-15746-404.aspx', 'Delivery within 7 working days.', 1, 'Samsung 5.5 Kg WF550B0BKWQ/TL Front Loading Washing Machine', '2013-07-04 05:17:16'),
(17, 94, 2299, 'http://www.cromaretail.com/Nokia-114-GSM-Mobile-Phone-(Dual-SIM)-(Black)-pc-16760-100.aspx', 'Delivery within 7 working days.', 1, 'Nokia 114 GSM Mobile Phone (Dual SIM) (Black)', '2013-07-04 05:28:04'),
(17, 96, 24500, 'http://www.cromaretail.com/Apple-iPad-2-With-Wi-Fi-(16Gb,-Black)-pc-1996-193.aspx', 'Delivery within 7 working days.', 1, 'Apple iPad 2 With Wi-Fi (16Gb, Black)', '2013-07-04 16:06:11'),
(17, 86, 12790, 'http://www.cromaretail.com/Micromax-Canvas-HD-A116-GSM-Mobile-Phone-(Dual-SIM)-pc-17812-100.aspx', 'Delivery within 7 working days.', 1, 'Micromax Canvas HD A116 GSM Mobile Phone (Dual SIM)', '2013-07-04 19:13:14'),
(17, 20, 13699, 'http://www.cromaretail.com/Sony-Xperia-J-GSM-Mobile-Phone-(Black)-pc-15998-95.aspx', 'Delivery within 7 working days.', 1, 'Sony Xperia J GSM Mobile Phone (Black)', '2013-07-11 02:43:07'),
(17, 31, 81900, 'http://www.cromaretail.com/Apple-MacBook-Pro-MD101-133"-Notebook-pc-12574-191.aspx', 'Delivery within 7 working days.', 1, 'Apple MacBook Pro MD101 13.3" Notebook', '2013-07-26 20:29:20');

-- --------------------------------------------------------

--
-- Table structure for table `crossword`
--

CREATE TABLE IF NOT EXISTS `crossword` (
  `WebsiteID` int(10) NOT NULL,
  `ProductId` int(10) NOT NULL,
  `Price` int(10) NOT NULL,
  `Link` text NOT NULL,
  `DeliveryTime` text NOT NULL,
  `EMI` int(1) NOT NULL DEFAULT '0',
  `Title` text NOT NULL,
  `Time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `crossword`
--

INSERT INTO `crossword` (`WebsiteID`, `ProductId`, `Price`, `Link`, `DeliveryTime`, `EMI`, `Title`, `Time`) VALUES
(37, 1, 299, 'http://www.crossword.in/books/duos-david-baldacci-saving-fai-baldacci-david/p-books-9780330517485.html', 'Delivery in 3 - 5 days.', 0, 'Duos: david baldacci: saving fai', '2013-01-18 16:54:03'),
(37, 4, 675, 'http://www.crossword.in/books/modern-app-verbal-non-verbal-reasoning-agarwal/p-books-8121905516.html', 'Delivery in 3 - 5 days.', 0, 'A Modern App. To Verbal & Non Verbal Reasoning', '2013-01-18 20:24:42'),
(37, 0, 4229, 'http://www.crossword.in/books/next-laser-printer/p-books-6133677082.html', 'Delivery in 3 - 5 days.', 0, 'Next Laser Printer', '2013-01-18 20:28:50'),
(37, 6, 675, 'http://www.crossword.in/books/modern-approach-verbal/p-books-9788121905510.html', 'Delivery in 3 - 5 days.', 0, 'A modern approach to verbal &', '2013-01-18 20:29:17'),
(37, 8, 1121, 'http://www.crossword.in/books/samsung-galaxy-s-dummies-bill-hughes/p-books-1118024478.html', 'Delivery in 3 - 5 days.', 0, 'Samsung Galaxy S for Dummies', '2013-01-18 20:48:55'),
(37, 9, 335, 'http://www.crossword.in/books/newbies-guide-iphone-4s-minute-help-guides/p-books-1467903159.html', 'Delivery in 3 - 5 days.', 0, 'A Newbies Guide to Iphone 4s', '2013-01-18 21:16:09'),
(37, 11, 895, 'http://www.crossword.in/books/baby-desmond-morris/p-books-0600609014.html', 'Delivery in 3 - 5 days.', 0, 'Baby', '2013-01-19 15:32:40'),
(37, 12, 1150, 'http://www.crossword.in/books/samsung-galaxy-note-dummies-dan-gookin/p-books-1118388461.html', 'Delivery in 3 - 5 days.', 0, 'Samsung Galaxy Note for Dummies', '2013-01-19 15:34:16'),
(37, 13, 1150, 'http://www.crossword.in/books/my-samsung-galaxy-tab-eric-butow/p-books-0789747979.html', 'Delivery in 3 - 5 days.', 0, 'My Samsung Galaxy Tab', '2013-01-23 19:22:55'),
(37, 14, 350, 'http://www.crossword.in/books/fr-inside-apple/p-books-9781848547247.html', 'Delivery in 3 - 5 days.', 0, 'Inside Apple', '2013-01-23 19:24:49'),
(37, 15, 2974, 'http://www.crossword.in/books/nokia-french/p-books-6134166510.html', 'Delivery in 3 - 5 days.', 0, 'Nokia (French)', '2013-01-23 19:27:46'),
(37, 17, 863, 'http://www.crossword.in/books/routers-including-router-cisco-ios-pe-router-netgear/p-books-1242981942.html', 'Delivery in 3 - 5 days.', 0, 'Routers, Including: Router, Cisco IOS, Pe Router, Netgear, Gateway (Telecommunications) , Wireless Router Application Platform, Cellular Ro', '2013-01-23 19:31:19'),
(37, 18, 3106, 'http://www.crossword.in/books/payment-card-industry-data-security-standard-lambert-m/p-books-6135075144.html', 'Delivery in 3 - 5 days.', 0, 'Payment Card Industry Data Security Standard', '2013-01-23 19:33:13'),
(37, 19, 1111, 'http://www.crossword.in/books/my-samsung-galaxy-tab-eric-butow/p-books-0789747979.html', 'Delivery in 3 - 5 days.', 0, 'My Samsung Galaxy Tab', '2013-01-23 19:36:43'),
(37, 20, 2974, 'http://www.crossword.in/books/sony-ericsson-xperia-x8/p-books-6133692944.html', 'Delivery in 3 - 5 days.', 0, 'Sony Ericsson Xperia X8', '2013-01-23 19:38:07'),
(37, 21, 1590, 'http://www.crossword.in/books/lionel-fastrack-book-robert-h-schleicher/p-books-0760323526.html', 'Delivery in 3 - 5 days.', 0, 'The Lionel Fastrack Book', '2013-01-23 19:40:15'),
(37, 27, 1998, 'http://www.crossword.in/books/clocks-pendulum-clock-sundial-doomsday-clock-game-clock/p-books-1156768810.html', 'Delivery in 3 - 5 days.', 0, 'Clocks: Pendulum Clock, Sundial, Doomsday Clock, Game Clock, Allan Variance, Watch, Gnomon, Analog Clock with Digital Display,', '2013-01-23 22:15:50'),
(37, 28, 1321, 'http://www.crossword.in/books/comic-strip-introduction-venerdi-12-mammila-working-daze/p-books-1157235018.html', 'Delivery in 3 - 5 days.', 0, 'Comic Strip Introduction: Venerdi 12, Mammila, Working Daze, Watch Your Head, Dogpatch, Wee Pals, on the Fastrack, Bad Reporter', '2013-01-23 22:17:07'),
(37, 29, 1380, 'http://www.crossword.in/books/canon-powershot-g10-g11-guide-digital-photography-david/p-books-1435455355.html', 'Delivery in 3 - 5 days.', 0, 'Canon Powershot G10/G11: Guide to Digital Photography', '2013-01-23 22:27:25'),
(37, 31, 3304, 'http://www.crossword.in/books/macbook-pro-frederic-p-miller/p-books-6130787979.html', 'Delivery in 3 - 5 days.', 0, 'Macbook Pro', '2013-01-23 22:36:39'),
(37, 32, 935, 'http://www.crossword.in/books/radio-stations-sydney-2day-fm-2mmm-2mcr-2gb/p-books-1155259165.html', 'Delivery in 3 - 5 days.', 0, 'Radio Stations in Sydney: 2day FM, 2mmm, 2mcr, 2gb, Mix 106.5, 2ser, 2ky, Swr FM, 2rdj, Nova 96.9, 702 ABC Sydney, Koori Radio, 2ch, 2nbc', '2013-01-28 19:32:51'),
(37, 33, 920, 'http://www.crossword.in/books/kingston-betty-j-cotter/p-books-0738563641.html', 'Delivery in 3 - 5 days.', 0, 'Kingston', '2013-01-28 19:39:55'),
(37, 34, 2974, 'http://www.crossword.in/books/nokia-french/p-books-6134166510.html', 'Delivery in 3 - 5 days.', 0, 'Nokia (French)', '2013-01-30 13:49:39'),
(37, 37, 4361, 'http://www.crossword.in/books/sunglasses-frederic-p-miller/p-books-6130088965.html', 'Delivery in 3 - 5 days.', 0, 'Sunglasses', '2013-02-10 23:58:15'),
(37, 38, 1345, 'http://www.crossword.in/books/blackberry-bold-made-simple-blackberry-bold-9700-9650/p-books-1430231173.html', 'Delivery in 3 - 5 days.', 0, 'BlackBerry Bold Made Simple: For the BlackBerry Bold 9700 and 9650 Series', '2013-02-12 22:56:11'),
(37, 39, 1380, 'http://www.crossword.in/books/blackberry-bold-made-simple-blackberry-bold-9700-9650/p-books-1430231173.html', 'Delivery in 3 - 5 days.', 0, 'BlackBerry Bold Made Simple: For the BlackBerry Bold 9700 and 9650 Series', '2013-02-12 22:56:51'),
(37, 40, 545, 'http://www.crossword.in/books/mobile-communications/p-books-9788131724262.html', 'Delivery in 3 - 5 days.', 0, 'Mobile Communications', '2013-02-19 17:34:08'),
(37, 41, 1322, 'http://www.crossword.in/books/geology-country-around-nottingham-quarter-sheet-71-n/p-books-1152739557.html', 'Delivery in 3 - 5 days.', 0, 'The Geology of the Country Around Nottingham. Quarter Sheet 71 N. E. , with Small Portions of 71 S. E.', '2013-02-19 17:34:46'),
(37, 42, 2974, 'http://www.crossword.in/books/nokia-french/p-books-6134166510.html', 'Delivery in 3 - 5 days.', 0, 'Nokia (French)', '2013-02-19 17:35:19'),
(37, 43, 5088, 'http://www.crossword.in/books/samsung-b7300/p-books-6133639539.html', 'Delivery in 3 - 5 days.', 0, 'Samsung B7300', '2013-02-21 16:35:11'),
(37, 45, 2908, 'http://www.crossword.in/books/washing-machine/p-books-6134754269.html', 'Delivery in 3 - 5 days.', 0, 'Washing Machine', '2013-02-22 08:14:00'),
(37, 46, 2974, 'http://www.crossword.in/books/nokia-french/p-books-6134166510.html', 'Delivery in 3 - 5 days.', 0, 'Nokia (French)', '2013-02-22 16:36:48'),
(37, 47, 2974, 'http://www.crossword.in/books/nokia-french/p-books-6134166510.html', 'Delivery in 3 - 5 days.', 0, 'Nokia (French)', '2013-02-22 16:43:44'),
(37, 48, 1150, 'http://www.crossword.in/books/my-samsung-galaxy-tab-eric-butow/p-books-0789747979.html', 'Delivery in 3 - 5 days.', 0, 'My Samsung Galaxy Tab', '2013-02-24 10:53:19'),
(37, 49, 350, 'http://www.crossword.in/books/fr-inside-apple/p-books-9781848547247.html', 'Delivery in 3 - 5 days.', 0, 'Inside Apple', '2013-02-24 10:57:24'),
(37, 50, 335, 'http://www.crossword.in/books/newbies-guide-iphone-4s-minute-help-guides/p-books-1467903159.html', 'Delivery in 3 - 5 days.', 0, 'A Newbies Guide to Iphone 4s', '2013-02-24 10:58:27'),
(37, 51, 1121, 'http://www.crossword.in/books/iphone-5-lynn-beighley/p-books-0321902572.html', 'Delivery in 3 - 5 days.', 0, 'iPhone 5', '2013-02-24 13:13:21'),
(37, 52, 795, 'http://www.crossword.in/books/led-zeppelin-gareth-thomas/p-books-0955829860.html', 'Delivery in 3 - 5 days.', 0, 'Led Zeppelin', '2013-02-24 16:35:46'),
(37, 53, 935, 'http://www.crossword.in/books/channel-46-tv-stations-united-states-wgcl-tv/p-books-1156010861.html', 'Delivery in 3 - 5 days.', 0, 'Channel 46 TV Stations in the United States: Wgcl  TV, Wjzy, Wbsf, Kftr  Dt, Wskg  TV, Wvfx, Kocm, Knct, Wpct, Widp, Wkle, Ktcw,', '2013-02-24 16:38:39'),
(37, 54, 3304, 'http://www.crossword.in/books/netgear/p-books-6131237883.html', 'Delivery in 3 - 5 days.', 0, 'Netgear', '2013-02-25 19:03:00'),
(37, 55, 2974, 'http://www.crossword.in/books/nokia-french/p-books-6134166510.html', 'Delivery in 3 - 5 days.', 0, 'Nokia (French)', '2013-02-28 02:05:17'),
(37, 56, 450, 'http://www.crossword.in/books/blackberry-wine-p4-75-harris-joanne/p-books-0552998001.html', 'Delivery in 3 - 5 days.', 0, 'Blackberry Wine', '2013-02-28 02:32:50'),
(37, 58, 478, 'http://www.crossword.in/books/condom-paul-allen/p-books-1904456766.html', 'Delivery in 3 - 5 days.', 0, 'Condom', '2013-02-28 03:55:26'),
(37, 59, 4163, 'http://www.crossword.in/books/sandisk-cruzer/p-books-6133541199.html', 'Delivery in 3 - 5 days.', 0, 'Sandisk Cruzer', '2013-02-28 19:26:10'),
(37, 60, 325, 'http://www.crossword.in/books/made-japan-akio-morita-sony-signet-akio-morita/p-books-0451151712.html', 'Delivery in 3 - 5 days.', 0, 'Made in Japan: Akio Morita and Sony (Signet)', '2013-02-28 19:27:08'),
(37, 64, 21142, 'http://www.crossword.in/books/structural-dynamics-h-m-irvine/p-books-0046240071.html', 'Delivery in 3 - 5 days.', 0, 'Structural Dynamics', '2013-03-04 20:09:11'),
(37, 65, 8855, 'http://www.crossword.in/books/structural-dynamics-theory-computation-mario-paz/p-books-1402076673.html', 'Delivery in 3 - 5 days.', 0, 'Structural Dynamics: Theory and Computation', '2013-03-04 20:18:36'),
(37, 66, 8855, 'http://www.crossword.in/books/structural-dynamics-theory-computation-mario-paz/p-books-1402076673.html', 'Delivery in 3 - 5 days.', 0, 'Structural Dynamics: Theory and Computation', '2013-03-04 20:18:58'),
(37, 67, 8855, 'http://www.crossword.in/books/structural-dynamics-theory-computation-mario-paz/p-books-1402076673.html', 'Delivery in 3 - 5 days.', 0, 'Structural Dynamics: Theory and Computation', '2013-03-04 20:20:07'),
(37, 68, 8855, 'http://www.crossword.in/books/structural-dynamics-theory-computation-mario-paz/p-books-1402076673.html', 'Delivery in 3 - 5 days.', 0, 'Structural Dynamics: Theory and Computation', '2013-03-04 21:34:53'),
(37, 69, 8855, 'http://www.crossword.in/books/structural-dynamics-theory-computation-mario-paz/p-books-1402076673.html', 'Delivery in 3 - 5 days.', 0, 'Structural Dynamics: Theory and Computation', '2013-03-04 21:36:08'),
(37, 70, 150, 'http://www.crossword.in/books/civil-services-success-planner/p-books-9780070702806.html', 'Delivery in 3 - 5 days.', 0, 'Civil Services Success Planner', '2013-03-04 23:09:04'),
(37, 71, 2908, 'http://www.crossword.in/books/washing-machine/p-books-6134754269.html', 'Delivery in 3 - 5 days.', 0, 'Washing Machine', '2013-03-07 11:01:18'),
(37, 72, 1150, 'http://www.crossword.in/books/my-samsung-galaxy-tab-eric-butow/p-books-0789747979.html', 'Delivery in 3 - 5 days.', 0, 'My Samsung Galaxy Tab', '2013-03-17 20:37:22'),
(37, 73, 1250, 'http://www.crossword.in/books/samsung-galaxy-s-dummies-bill-hughes/p-books-1118024478.html', 'Delivery in 3 - 5 days.', 0, 'Samsung Galaxy S for Dummies', '2013-03-19 15:00:01'),
(37, 74, 4295, 'http://www.crossword.in/books/blackberry-frederic-p-miller/p-books-6130287399.html', 'Delivery in 3 - 5 days.', 0, 'Blackberry', '2013-03-19 15:06:06'),
(37, 76, 555, 'http://www.crossword.in/books/butterfly-sonya-hartnett/p-books-014104084x.html', 'Delivery in 3 - 5 days.', 0, 'Butterfly', '2013-03-19 15:10:23'),
(37, 77, 2974, 'http://www.crossword.in/books/nokia-french/p-books-6134166510.html', 'Delivery in 3 - 5 days.', 0, 'Nokia (French)', '2013-03-19 15:12:57'),
(37, 78, 1150, 'http://www.crossword.in/books/my-samsung-galaxy-tab-eric-butow/p-books-0789747979.html', 'Delivery in 3 - 5 days.', 0, 'My Samsung Galaxy Tab', '2013-03-19 19:06:31'),
(37, 80, 2974, 'http://www.crossword.in/books/sony-ericsson-xperia-x8/p-books-6133692944.html', 'Delivery in 3 - 5 days.', 0, 'Sony Ericsson Xperia X8', '2013-03-21 16:44:58'),
(37, 81, 325, 'http://www.crossword.in/books/made-japan-akio-morita-sony-signet-akio-morita/p-books-0451151712.html', 'Delivery in 3 - 5 days.', 0, 'Made in Japan: Akio Morita and Sony (Signet)', '2013-03-21 16:51:04'),
(37, 82, 99, 'http://www.crossword.in/books/my-book-colors/p-books-9789381409619.html', 'Delivery in 3 - 5 days.', 0, 'My book of colors', '2013-03-21 17:00:52'),
(37, 83, 208, 'http://www.crossword.in/books/red-boots-yellow/p-books-1844223116.html', 'Delivery in 3 - 5 days.', 0, 'Red Boots, Yellow Boots', '2013-03-21 17:03:45'),
(37, 85, 149, 'http://www.crossword.in/books/talking-t-rex-roy-ron/p-books-0375813691.html', 'Delivery in 3 - 5 days.', 0, 'The Talking T. Rex', '2013-03-21 17:12:09'),
(37, 87, 765, 'http://www.crossword.in/books/led-wolves-exposing-heresies-tv-evangelism/p-books-1603833641.html', 'Delivery in 3 - 5 days.', 0, 'Led by Wolves: Exposing the Heresies of TV Evangelism', '2013-03-29 10:22:00'),
(37, 88, 795, 'http://www.crossword.in/books/led-zeppelin-gareth-thomas/p-books-0955829860.html', 'Delivery in 3 - 5 days.', 0, 'Led Zeppelin', '2013-03-29 10:23:02'),
(37, 89, 765, 'http://www.crossword.in/books/led-wolves-exposing-heresies-tv-evangelism/p-books-1603833641.html', 'Delivery in 3 - 5 days.', 0, 'Led by Wolves: Exposing the Heresies of TV Evangelism', '2013-03-29 10:24:05'),
(37, 90, 3370, 'http://www.crossword.in/books/movie-projector-frederic-p-miller/p-books-613007560x.html', 'Delivery in 3 - 5 days.', 0, 'Movie Projector', '2013-04-05 19:26:19'),
(37, 91, 2974, 'http://www.crossword.in/books/nokia-french/p-books-6134166510.html', 'Delivery in 3 - 5 days.', 0, 'Nokia (French)', '2013-07-03 15:54:31'),
(37, 92, 673, 'http://www.crossword.in/books/making-mobiles-bruce-cana-fox/p-books-0764324748.html', 'Delivery in 3 - 5 days.', 0, 'Making Mobiles', '2013-07-04 02:48:47'),
(37, 93, 2974, 'http://www.crossword.in/books/nokia-french/p-books-6134166510.html', 'Delivery in 3 - 5 days.', 0, 'Nokia (French)', '2013-07-04 05:25:27'),
(37, 94, 2974, 'http://www.crossword.in/books/nokia-french/p-books-6134166510.html', 'Delivery in 3 - 5 days.', 0, 'Nokia (French)', '2013-07-04 05:28:08'),
(37, 95, 150, 'http://www.crossword.in/books/agnes-grey-anne-bront/p-books-0007449453.html', 'Delivery in 3 - 5 days.', 0, 'Agnes Grey', '2013-07-04 05:32:38'),
(37, 96, 350, 'http://www.crossword.in/books/fr-inside-apple/p-books-9781848547247.html', 'Delivery in 3 - 5 days.', 0, 'Inside Apple', '2013-07-04 16:06:12'),
(37, 97, 299, 'http://www.crossword.in/books/bolt-pb/p-books-9780330301381.html', 'Delivery in 3 - 5 days.', 0, 'Bolt', '2013-07-04 18:21:03');

-- --------------------------------------------------------

--
-- Table structure for table `dealsandyou`
--

CREATE TABLE IF NOT EXISTS `dealsandyou` (
  `WebsiteID` int(10) NOT NULL,
  `ProductId` int(10) NOT NULL,
  `Price` int(10) NOT NULL,
  `Link` text NOT NULL,
  `DeliveryTime` text NOT NULL,
  `EMI` int(1) NOT NULL DEFAULT '0',
  `Title` text NOT NULL,
  `Time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dealssulekha`
--

CREATE TABLE IF NOT EXISTS `dealssulekha` (
  `WebsiteID` int(10) NOT NULL,
  `ProductId` int(10) NOT NULL,
  `Price` int(10) NOT NULL,
  `Link` text COLLATE utf8_unicode_ci NOT NULL,
  `DeliveryTime` text COLLATE utf8_unicode_ci NOT NULL,
  `EMI` int(1) NOT NULL DEFAULT '0',
  `Title` text COLLATE utf8_unicode_ci NOT NULL,
  `Time` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `dealssulekha`
--

INSERT INTO `dealssulekha` (`WebsiteID`, `ProductId`, `Price`, `Link`, `DeliveryTime`, `EMI`, `Title`, `Time`) VALUES
(63, 1, 20900, 'http://deals.sulekha.com/samsung-galaxy-grand-duos-i9082-white-30110', '-', 0, 'Buy Samsung Galaxy Grand Duos I9082 - White', '2013-01-18 16:54:07'),
(63, 4, 695, 'http://deals.sulekha.com/a-modern-approach-to-verbal-and-non-verbal-reasoning-10371', '-', 0, 'Buy A Modern Approach To Verbal And Non Verbal Reasoning (Paperback)', '2013-01-18 20:24:46'),
(63, 0, 695, 'http://deals.sulekha.com/a-modern-approach-to-verbal-and-non-verbal-reasoning-10371', '-', 0, 'Buy A Modern Approach To Verbal And Non Verbal Reasoning (Paperback)', '2013-01-18 20:28:53'),
(63, 6, 695, 'http://deals.sulekha.com/a-modern-approach-to-verbal-and-non-verbal-reasoning-10371', '-', 0, 'Buy A Modern Approach To Verbal And Non Verbal Reasoning (Paperback)', '2013-01-18 20:29:22'),
(63, 10, 4599, 'http://deals.sulekha.com/nokia-asha-305-dark-grey-23379', '-', 0, 'Buy Nokia Asha 305 - Dark Grey', '2013-01-19 01:05:50'),
(63, 13, 436, 'http://deals.sulekha.com/amzer-soft-gel-tpu-gloss-skin-case-for-samsung-galaxy-s-iii-gt-i9300-galaxy-s3-black-26001', '-', 0, 'Buy Amzer Soft Gel TPU Gloss Skin Case for Samsung Galaxy S III GT-I9300/Galaxy S3 - Black', '2013-01-23 19:23:00'),
(63, 19, 17800, 'http://deals.sulekha.com/samsung-galaxy-tab2-310-white-16471', '-', 0, 'Buy Samsung Galaxy Tab2 310 Modelâ€“P3100 - White', '2013-01-23 19:36:46'),
(63, 20, 14999, 'http://deals.sulekha.com/sony-xperia-j-black-29528', '-', 0, 'Buy Sony Xperia J - Black', '2013-01-23 19:38:09'),
(63, 25, 4550, 'http://deals.sulekha.com/micromax-ninja-3-a57-black-26076', '-', 0, 'Buy Micromax Ninja 3 A57 - Black', '2013-01-23 20:12:09'),
(63, 35, 6285, 'http://deals.sulekha.com/nokia-asha-302-dark-grey-16294', '-', 0, 'Buy Nokia Asha 302 - Dark Grey', '2013-01-30 13:52:05'),
(63, 36, 3999, 'http://deals.sulekha.com/nokia-asha-202-black-21759', '-', 0, 'Buy Nokia Asha 202 - Black', '2013-01-30 13:53:11'),
(63, 37, 2498, 'http://deals.sulekha.com/yepme-linen-red-shirt-and-free-sunglasses-cover-size-16208', '-', 0, 'Buy Yepme Linen Red Shirt And Free Sunglasses Cover: Size - 40', '2013-02-10 23:58:21'),
(63, 49, 26500, 'http://deals.sulekha.com/apple-iphone-4-8gb-8535', '-', 0, 'Buy Apple iPhone 4 8GB', '2013-02-24 10:57:24'),
(63, 39, 25900, 'http://deals.sulekha.com/blackberry-bold-9790-black-9188', '-', 0, 'Buy Blackberry Bold 9790 - Black', '2013-02-12 22:56:54'),
(63, 40, 499, 'http://deals.sulekha.com/hp-headphone-compatible-with-mobile-and-laptop-black-30096', '-', 0, 'Buy HP Headphone Compatible with Mobile and Laptop - Black', '2013-02-19 17:34:13'),
(63, 43, 3150, 'http://deals.sulekha.com/samsung-champ-neo-duos-c3262-black-28495', '-', 0, 'Buy Samsung Champ Neo Duos C3262 - Black', '2013-02-21 16:35:18'),
(63, 46, 12380, 'http://deals.sulekha.com/nokia-lumia-610-black-25825', '-', 0, 'Buy Nokia Lumia 610 - Black', '2013-02-22 16:36:50'),
(63, 47, 35799, 'http://deals.sulekha.com/nokia-lumia-920-black-30037', '-', 0, 'Buy Nokia Lumia 920 - Black', '2013-02-22 16:43:49'),
(63, 48, 7599, 'http://deals.sulekha.com/samsung-galaxy-y-duos-s6102-black-13662', '-', 0, 'Buy Samsung Galaxy Y DUOS S6102 - Black', '2013-02-24 10:53:23'),
(63, 51, 45500, 'http://deals.sulekha.com/apple-iphone-5-16gb-black-29643', '-', 0, 'Buy Apple iPhone 5 16GB - Black', '2013-02-24 13:13:24'),
(63, 52, 45900, 'http://deals.sulekha.com/samsung-32-inch-full-hd-led-tv-for-rs-8570', '-', 0, 'Buy Samsung 32 Inch Full HD LED TV ', '2013-02-24 16:35:50'),
(63, 55, 15236, 'http://deals.sulekha.com/nokia-lumia-710-white-17540', '-', 0, 'Buy Nokia Lumia 710 - White', '2013-02-28 02:05:20'),
(63, 58, 360, 'http://deals.sulekha.com/manforce-aloe-vera-condoms-pack-of-3-18-packets-24650', '-', 0, 'Buy Manforce Aloe Vera Condoms (Pack of 3) - 18 Packets', '2013-02-28 03:55:30'),
(63, 71, 12550, 'http://deals.sulekha.com/ifb-washing-machine-aw-60-8061-12114', '-', 0, 'Buy IFB Washing Machine AW 60 8061', '2013-03-07 11:01:17'),
(63, 56, 40999, 'http://deals.sulekha.com/blackberry-redington-z10-black-30246', '-', 0, 'Buy BlackBerry Redington Z10 - Black', '2013-03-07 12:25:14'),
(63, 73, 9900, 'http://deals.sulekha.com/samsung-galaxy-ace-s5830-onyk-black-3648', '-', 0, 'Buy Samsung Galaxy Ace S5830 - Onyk Black', '2013-03-19 15:00:02'),
(63, 74, 40999, 'http://deals.sulekha.com/blackberry-redington-z10-black-30246', '-', 0, 'Buy BlackBerry Redington Z10 - Black', '2013-03-19 15:06:11'),
(63, 78, 21499, 'http://deals.sulekha.com/samsung-galaxy-grand-duos-i9082-blue-30247', '-', 0, 'Buy Samsung Galaxy Grand Duos i9082 - Blue', '2013-03-19 19:06:34'),
(63, 80, 37299, 'http://deals.sulekha.com/sony-xperia-z-black-premium-case-worth-rs-1-990-free-30277', '-', 0, 'Buy Sony Xperia Z - Black + Premium Case worth Rs. 1,990 Free', '2013-03-21 16:45:03'),
(63, 81, 37299, 'http://deals.sulekha.com/sony-xperia-z-black-premium-case-worth-rs-1-990-free-30277', '-', 0, 'Buy Sony Xperia Z - Black + Premium Case worth Rs. 1,990 Free', '2013-03-21 16:51:10'),
(63, 85, 3675, 'http://deals.sulekha.com/samsung-rex-c3312r-silver-30267', '-', 0, 'Buy Samsung Rex C3312R - Silver', '2013-03-21 17:12:13'),
(63, 90, 1999, 'http://deals.sulekha.com/chicco-goodnight-stars-projector-15295', '-', 0, 'Buy Chicco Goodnight Stars Projector - Blue', '2013-04-05 19:26:22');

-- --------------------------------------------------------

--
-- Table structure for table `ebay`
--

CREATE TABLE IF NOT EXISTS `ebay` (
  `WebsiteID` int(10) NOT NULL,
  `ProductId` int(10) NOT NULL,
  `Price` int(10) NOT NULL,
  `Link` text NOT NULL,
  `DeliveryTime` text NOT NULL,
  `EMI` int(1) NOT NULL DEFAULT '1',
  `Title` text NOT NULL,
  `Time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ebay`
--

INSERT INTO `ebay` (`WebsiteID`, `ProductId`, `Price`, `Link`, `DeliveryTime`, `EMI`, `Title`, `Time`) VALUES
(3, 1, 16999, 'http://www.ebay.in/itm/Brand-New-Samsung-Galaxy-S-Duos-S7562-Android-v4-0-OS-1-GHz-Processor-/181049624468?pt=LH_DefaultDomain_203&hash=item2a27660794', 'Will usually ship within 5 business days of receiving cleared payment.', 1, 'Brand New Samsung  Galaxy S Duos S7562, Android v4.0 OS, 1 GHz Processor', '2013-01-18 16:53:53'),
(3, 3, 8190, 'http://www.ebay.in/itm/Samsung-Galaxy-Y-DUOS-GT-S6102-Strong-black-Smartphone-/160954523803?pt=LH_DefaultDomain_203&hash=item2579a3209b', 'Will usually ship within 5 business days of receiving cleared payment.', 1, 'Samsung Galaxy Y DUOS GT-S6102 - Strong black Smartphone', '2013-01-18 17:36:02'),
(3, 0, 650, 'http://www.ebay.in/itm/Modern-Approach-Verbal-Non-Verbal-Reasoning-/360563840264?pt=IN_Books_Magazines&hash=item53f3479508', 'Will usually ship within 5 business days of receiving cleared payment.', 1, 'A Modern Approach to Verbal & Non-Verbal Reasoning', '2013-01-18 20:28:44'),
(3, 6, 650, 'http://www.ebay.in/itm/Modern-Approach-Verbal-Non-Verbal-Reasoning-/360569746345?pt=IN_Books_Magazines&hash=item53f3a1b3a9', 'Will usually ship within 5 business days of receiving cleared payment.', 1, 'A Modern Approach to Verbal & Non-Verbal Reasoning', '2013-01-18 20:29:16'),
(3, 8, 16190, 'http://www.ebay.in/itm/BRAND-NEW-SAMSUNG-GALAXY-S-DUOS-S7562-black-DUAL-SIM-ANDROID-ICS-4-5-MP-1-GHZ-/181036909222?pt=IN_Mobile_Phones&hash=item2a26a402a6', 'Will usually ship within 5 business days of receiving cleared payment.', 1, 'BRAND NEW SAMSUNG GALAXY S DUOS S7562 (black) DUAL SIM ANDROID ICS 4" 5 MP 1 GHZ', '2013-01-18 20:48:45'),
(3, 9, 32000, 'http://www.ebay.in/itm/Apple-iPhone-4S-16GB-Black-Smartphone-/111000175298?pt=IN_Mobile_Phones&hash=item19d82042c2', 'Will usually ship within 5 business days of receiving cleared payment.', 1, 'Apple iPhone 4S - 16GB - Black Smartphone', '2013-01-18 21:16:03'),
(3, 10, 12999, 'http://www.ebay.in/itm/Asha-305-dark-silver-/221177531675?pt=IN_Mobile_Phones&hash=item337f354d1b', 'Will usually ship within 5 business days of receiving cleared payment.', 1, 'Asha 305 dark silver ', '2013-01-19 01:05:40'),
(3, 12, 39990, 'http://www.ebay.in/itm/SAMSUNG-GALAXY-NOTE-2-N7100-WHITE-5-5-S-AMOLED-QUAD-CORE-1-6-GHZ-/110972714996?pt=IN_Mobile_Phones&hash=item19d67d3ff4', 'Will usually ship within 5 business days of receiving cleared payment.', 1, 'SAMSUNG GALAXY NOTE 2 N7100 (WHITE) 5.5" S.AMOLED QUAD CORE 1.6 GHZ', '2013-01-19 15:34:11'),
(3, 13, 39500, 'http://www.ebay.in/itm/Brand-New-Original-Sealed-Samsung-Galaxy-S3-I9300-Blue-Color-/271068397170?pt=IN_Mobile_Phones&hash=item3f1cef7e72', 'Will usually ship within 5 business days of receiving cleared payment.', 1, 'Brand New Original & Sealed Samsung Galaxy S3 I9300 - Blue Color', '2013-01-23 19:22:46'),
(3, 14, 82990, 'http://www.ebay.in/itm/Apple-iPhone-5-64-GB-Factory-Unlocked-/190734346282?pt=IN_Mobile_Phones&hash=item2c68a7282a', 'Will usually ship within 5 business days of receiving cleared payment.', 1, 'Apple iPhone 5 64 GB,Factory Unlocked', '2013-01-23 19:24:44'),
(3, 15, 9999, 'http://www.ebay.in/itm/Brand-New-Nokia-Lumia-510-Windows-Phone-7-5-OS-800-MHz-Processor-/190781077838?pt=IN_Mobile_Phones&hash=item2c6b70394e', 'Will usually ship within 5 business days of receiving cleared payment.', 1, 'Brand New  Nokia Lumia 510 Windows Phone 7.5 OS,800 MHz Processor', '2013-01-23 19:27:38'),
(3, 16, 439, 'http://www.ebay.in/itm/Philips-Neckband-Headphones-SHS390-98-Vat-Bill-2-Year-Warranty-/130775140330?pt=LH_DefaultDomain_203&hash=item1e72ce47ea', 'Will usually ship within 5 business days of receiving cleared payment.', 1, 'Philips Neckband Headphones  SHS390/98 with Vat Bill + 2 Year Warranty', '2013-01-23 19:29:59'),
(3, 17, 1499, 'http://www.ebay.in/itm/Netgear-JNR1010-N150-Wireless-Router-/130794678509?pt=LH_DefaultDomain_203&hash=item1e73f868ed', 'Will usually ship within 5 business days of receiving cleared payment.', 1, 'Netgear JNR1010 N150 Wireless Router', '2013-01-23 19:31:14'),
(3, 18, 1739, 'http://www.ebay.in/itm/Huawei-E303C-3G-USB-Data-Card-video-calling-support-all-sim-FreeShip-/261146624752?pt=LH_DefaultDomain_203&hash=item3ccd8d42f0', 'Will usually ship within 5 business days of receiving cleared payment.', 1, 'Huawei E303C 3G USB Data Card video calling support all sim FreeShip', '2013-01-23 19:33:10'),
(3, 19, 19999, 'http://www.ebay.in/itm/Samsung-Galaxy-Tab-2-GT-P3100-SEALED-16GB-Silver-Tablet-Wi-Fi-3G-Voice-Calling-/181043624722?pt=IN_iPads_Tablets&hash=item2a270a7b12', 'Will usually ship within 5 business days of receiving cleared payment.', 1, 'Samsung Galaxy Tab 2 GT-P3100 SEALED 16GB Silver Tablet. Wi-Fi+3G+Voice Calling', '2013-01-23 19:36:37'),
(3, 20, 19500, 'http://www.ebay.in/itm/Brand-New-Original-Sealed-Sony-Xperia-J-ST26i-Gold-Color-/140882391346?pt=IN_Mobile_Phones&hash=item20cd3eb132', 'Will usually ship within 5 business days of receiving cleared payment.', 1, 'Brand New Original & Sealed Sony Xperia J - ST26i - Gold Color', '2013-01-23 19:38:04'),
(3, 21, 1641, 'http://www.ebay.in/itm/Fastrack-Tote-Women-ladies-girls-Pink-bag-summer-collection-A0317CPK01AM-/200770048218?pt=LH_DefaultDomain_203&hash=item2ebed3d0da', 'Will usually ship within 5 business days of receiving cleared payment.', 1, 'Fastrack Tote For Women ladies girls ( Pink ) bag summer collection A0317CPK01AM', '2013-01-23 19:40:08'),
(3, 22, 1641, 'http://www.ebay.in/itm/Fastrack-Tote-Women-ladies-girls-Pink-bag-summer-collection-A0317CPK01AM-/200770048218?pt=LH_DefaultDomain_203&hash=item2ebed3d0da', 'Will usually ship within 5 business days of receiving cleared payment.', 1, 'Fastrack Tote For Women ladies girls ( Pink ) bag summer collection A0317CPK01AM', '2013-01-23 19:42:38'),
(3, 24, 33261, 'http://www.ebay.in/itm/NIKON-D5100-DIGITAL-SLR-CAMERA-AF-S-18-55MM-VR-KIT-LENS-16-2MP-FULL-HD-BILL-/261087470453?pt=IN_Digital_SLR_Cameras&hash=item3cca06a375', 'Will usually ship within 5 business days of receiving cleared payment.', 1, 'NIKON D5100 DIGITAL SLR CAMERA WITH AF-S 18-55MM VR KIT LENS+16.2MP+FULL HD+BILL', '2013-01-23 19:45:02'),
(3, 25, 5554, 'http://www.ebay.in/itm/Micromax-Ninja-3-5-A57-ANDROID-GPS-DUAL-SIM-WARRANTY-BILL-UNLOCKED-/261109832969?pt=LH_DefaultDomain_203&hash=item3ccb5bdd09', 'Will usually ship within 5 business days of receiving cleared payment.', 1, 'Micromax Ninja 3.5 A57  ANDROID GPS DUAL SIM WARRANTY BILL UNLOCKED', '2013-01-23 20:11:57'),
(3, 26, 1325, 'http://www.ebay.in/itm/5-Sandisk-16GB-Pen-Drive-Cruzer-Blade-Pendrive-5-Years-Warranty-/281052133504?pt=LH_DefaultDomain_203&hash=item4170033880', 'Will usually ship within 5 business days of receiving cleared payment.', 1, ' 5 Sandisk 16GB Pen Drive Cruzer Blade Pendrive + 5 Years Warranty', '2013-01-23 21:45:54'),
(3, 28, 950, 'http://www.ebay.in/itm/Fastrack-Tees-Analog-Watch-Unisex-Yellow-tees-collection-9911pp05-/170852730269?pt=IN_Watches&hash=item27c79dc59d', 'Will usually ship within 5 business days of receiving cleared payment.', 1, 'Fastrack Tees Analog Watch - Unisex ( Yellow ) tees collection 9911pp05', '2013-01-23 22:17:03'),
(3, 29, 9300, 'http://www.ebay.in/itm/Canon-PowerShot-SX150-Point-Shoot-14-1-Megapixels-Manufacturer-Warranty-/271096240891?pt=IN_Compact_Digital_Cameras&hash=item3f1e985afb', 'Will usually ship within 5 business days of receiving cleared payment.', 1, 'Canon PowerShot SX150 IS Point & Shoot,14.1 Megapixels - Manufacturer Warranty', '2013-01-23 22:27:14'),
(3, 30, 154900, 'http://www.ebay.in/itm/APPLE-MACBOOK-PRO-15-i7-2-3GHZ-RETINA-DISPLAY-8GB-RAM-256-GB-FLASH-MC-975-/110943510243?pt=IN_PC_Laptops&hash=item19d4bf9ee3', 'Will usually ship within 5 business days of receiving cleared payment.', 1, 'APPLE MACBOOK PRO 15â€,i7,2.3GHZ WITH RETINA DISPLAY 8GB RAM 256 GB FLASH MC 975 ', '2013-01-23 22:31:51'),
(3, 31, 154900, 'http://www.ebay.in/itm/APPLE-MACBOOK-PRO-15-i7-2-3GHZ-RETINA-DISPLAY-8GB-RAM-256-GB-FLASH-MC-975-/110943510243?pt=IN_PC_Laptops&hash=item19d4bf9ee3', 'Will usually ship within 5 business days of receiving cleared payment.', 1, 'APPLE MACBOOK PRO 15â€,i7,2.3GHZ WITH RETINA DISPLAY 8GB RAM 256 GB FLASH MC 975 ', '2013-01-23 22:36:32'),
(3, 32, 1999, 'http://www.ebay.in/itm/Latest-Philips-GoGear-2-GB-MP3-PLAYER-w-pendrive-FM-/221017399253?pt=IN_MP3_Players&hash=item3375a9dfd5', 'Will usually ship within 5 business days of receiving cleared payment.', 1, 'Latest Philips GoGear 2 GB MP3 PLAYER w pendrive & FM ', '2013-01-28 19:32:43'),
(3, 34, 20999, 'http://www.ebay.in/itm/Brand-New-Nokia-Lumia-900-White-Color-/261151774696?pt=IN_Mobile_Phones&hash=item3ccddbd7e8', 'Will usually ship within 5 business days of receiving cleared payment.', 1, 'Brand New Nokia Lumia 900  - White Color', '2013-01-30 13:49:27'),
(3, 35, 13500, 'http://www.ebay.in/itm/NEW-NOKIA-ASHA-302-GRAY-2GB-WIFI-KEYBOARD-UNLOCKED-GSM-QUADBAND-3G-AT-T-BAR-/290809638800?pt=IN_Mobile_Phones&hash=item43b59aef90', 'Will usually ship within 5 business days of receiving cleared payment.', 1, 'NEW NOKIA ASHA 302 GRAY 2GB WIFI KEYBOARD UNLOCKED GSM QUADBAND 3G AT&T BAR', '2013-01-30 13:51:56'),
(3, 36, 4039, 'http://www.ebay.in/itm/Brand-New-Nokia-Asha-202-Dual-SIM-GSM-GSM-Mobile-Phone-/190779773678?pt=LH_DefaultDomain_203&hash=item2c6b5c52ee', 'Will usually ship within 5 business days of receiving cleared payment.', 1, 'Brand New  Nokia Asha 202 Dual SIM (GSM+GSM) Mobile Phone', '2013-01-30 13:53:00');

-- --------------------------------------------------------

--
-- Table structure for table `error`
--

CREATE TABLE IF NOT EXISTS `error` (
  `Id` int(10) NOT NULL AUTO_INCREMENT,
  `Email` varchar(255) NOT NULL,
  `Error` text NOT NULL,
  `Time` datetime NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ezeekart`
--

CREATE TABLE IF NOT EXISTS `ezeekart` (
  `WebsiteID` int(10) NOT NULL,
  `ProductId` int(10) NOT NULL,
  `Price` int(10) NOT NULL,
  `Link` text NOT NULL,
  `DeliveryTime` text NOT NULL,
  `EMI` int(1) NOT NULL DEFAULT '0',
  `Title` text NOT NULL,
  `Time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ezeekart`
--

INSERT INTO `ezeekart` (`WebsiteID`, `ProductId`, `Price`, `Link`, `DeliveryTime`, `EMI`, `Title`, `Time`) VALUES
(28, 1, 4560, 'http://www.ezeekart.com/p-223/samsung-w169-duos(black).html', 'Delivery in 3-5 Business Days .', 0, 'Samsung W169 Duos(Black)', '2013-01-18 16:54:02'),
(28, 2, 3699, 'http://www.ezeekart.com/p-293/samsung-c3530-(chrome-silver).html', 'Delivery in 3-5 Business Days .', 0, 'Samsung C3530 (Chrome Silver)', '2013-01-18 17:35:07'),
(28, 3, 9514, 'http://www.ezeekart.com/p-135/blackberry-curve-8520-(black).html', 'Delivery in 3-5 Business Days .', 0, 'Blackberry Curve 8520 (Black)', '2013-01-18 17:36:03'),
(28, 4, 3699, 'http://www.ezeekart.com/p-293/samsung-c3530-(chrome-silver).html', 'Delivery in 3-5 Business Days .', 0, 'Samsung C3530 (Chrome Silver)', '2013-01-18 20:24:40'),
(28, 0, 3999, 'http://www.ezeekart.com/p-25961/steelseries-62001-ikari-laser-mouse.html', 'Delivery in 3-5 Business Days .', 0, 'SteelSeries 62001 Ikari Laser Mouse', '2013-01-18 20:28:48'),
(28, 6, 18866, 'http://www.ezeekart.com/p-351/nokia-n8-00-(white-silver).html', 'Delivery in 3-5 Business Days .', 0, 'Nokia N8-00 (White Silver)', '2013-01-18 20:29:15'),
(28, 8, 3699, 'http://www.ezeekart.com/p-293/samsung-c3530-(chrome-silver).html', 'Delivery in 3-5 Business Days .', 0, 'Samsung C3530 (Chrome Silver)', '2013-01-18 20:48:53'),
(28, 9, 1234, 'http://www.ezeekart.com/p-3466/capdase-prokeeper-case-for-apple-macbook-13(red-black).html', 'Delivery in 3-5 Business Days .', 0, 'Capdase Prokeeper Case For Apple macbook 13(Red/Black)', '2013-01-18 21:16:08'),
(28, 10, 1600, 'http://www.ezeekart.com/p-513/nokia-bluetooth-headset-bh-109(ice).html', 'Delivery in 3-5 Business Days .', 0, 'Nokia Bluetooth Headset BH-109(Ice)', '2013-01-19 01:05:45'),
(28, 12, 37495, 'http://www.ezeekart.com/p-27913/samsung-galaxy-note-2-n7100-(grey).html', 'Delivery in 3-5 Business Days .', 0, 'Samsung Galaxy Note 2 N7100 (Grey)', '2013-01-19 15:34:14'),
(28, 13, 29478, 'http://www.ezeekart.com/p-26580/samsung-i9300-galaxy-s-iii-16gb-(pebble-blue).html', 'Delivery in 3-5 Business Days .', 0, 'Samsung I9300 Galaxy S III 16GB (Pebble Blue)', '2013-01-23 19:22:51'),
(28, 14, 1234, 'http://www.ezeekart.com/p-3466/capdase-prokeeper-case-for-apple-macbook-13(red-black).html', 'Delivery in 3-5 Business Days .', 0, 'Capdase Prokeeper Case For Apple macbook 13(Red/Black)', '2013-01-23 19:24:49'),
(28, 15, 7985, 'http://www.ezeekart.com/p-87/sony-ericsson-elm-(black).html', 'Delivery in 3-5 Business Days .', 0, 'Sony Ericsson Elm (Black)', '2013-01-23 19:27:43'),
(28, 16, 1490, 'http://www.ezeekart.com/p-3314/sony-mdr-zx300-headphone(black).html', 'Delivery in 3-5 Business Days .', 0, 'Sony MDR-ZX300 Headphone(Black)', '2013-01-23 19:30:03'),
(28, 17, 3999, 'http://www.ezeekart.com/p-2636/xbox-360-wireless-headset.html', 'Delivery in 3-5 Business Days .', 0, 'XBox 360 Wireless Headset', '2013-01-23 19:31:18'),
(28, 18, 2609, 'http://www.ezeekart.com/p-845/capdase-dock-connector-card-reader-2slots-(black).html', 'Delivery in 3-5 Business Days .', 0, 'Capdase Dock Connector Card Reader 2Slots (Black)', '2013-01-23 19:33:11'),
(28, 19, 19300, 'http://www.ezeekart.com/p-26582/samsung-galaxy-tab-2-p3100-(silver).html', 'Delivery in 3-5 Business Days .', 0, 'Samsung Galaxy Tab 2 P3100 (Silver)', '2013-01-23 19:36:41'),
(28, 20, 13685, 'http://www.ezeekart.com/p-28342/sony-xperia-j-(black).html', 'Delivery in 3-5 Business Days .', 0, 'Sony Xperia J (Black)', '2013-01-23 19:38:04'),
(28, 21, 18866, 'http://www.ezeekart.com/p-351/nokia-n8-00-(white-silver).html', 'Delivery in 3-5 Business Days .', 0, 'Nokia N8-00 (White Silver)', '2013-01-23 19:40:12'),
(28, 22, 18866, 'http://www.ezeekart.com/p-351/nokia-n8-00-(white-silver).html', 'Delivery in 3-5 Business Days .', 0, 'Nokia N8-00 (White Silver)', '2013-01-23 19:42:43'),
(28, 23, 2069, 'http://www.ezeekart.com/p-539/samsung-bluetooth-headset-bhm1700idecinu.html', 'Delivery in 3-5 Business Days .', 0, 'Samsung Bluetooth Headset BHM1700IDECINU', '2013-01-23 19:44:17'),
(28, 24, 32500, 'http://www.ezeekart.com/p-2482/nikon-dslr-d5100(with-18-55mm-vr-kit)-digital-camera(black).html', 'Delivery in 3-5 Business Days .', 0, 'Nikon DSLR D5100(with 18-55mm VR Kit) Digital Camera(Black)', '2013-01-23 19:45:05'),
(28, 25, 4749, 'http://www.ezeekart.com/p-28365/micromax-ninja-3-a57-(black).html', 'Delivery in 3-5 Business Days .', 0, 'Micromax Ninja 3 A57 (Black)', '2013-01-23 20:12:01'),
(28, 26, 749, 'http://www.ezeekart.com/p-3291/sony-micro-vault-16gb-tiny-pen-drive(white).html', 'Delivery in 3-5 Business Days .', 0, 'Sony Micro Vault 16GB Tiny Pen Drive(White)', '2013-01-23 21:46:01'),
(28, 27, 18866, 'http://www.ezeekart.com/p-351/nokia-n8-00-(white-silver).html', 'Delivery in 3-5 Business Days .', 0, 'Nokia N8-00 (White Silver)', '2013-01-23 22:15:47'),
(28, 28, 18866, 'http://www.ezeekart.com/p-351/nokia-n8-00-(white-silver).html', 'Delivery in 3-5 Business Days .', 0, 'Nokia N8-00 (White Silver)', '2013-01-23 22:17:09'),
(28, 29, 2374, 'http://www.ezeekart.com/p-1361/capdase-mini-display-port-to-hdmi-cable-mb13u-mbp13-15-17.html', 'Delivery in 3-5 Business Days .', 0, 'Capdase Mini Display Port To Hdmi Cable MB13U/MBP13/15/17', '2013-01-23 22:27:22'),
(28, 31, 77805, 'http://www.ezeekart.com/p-27875/apple-macbook-pro-13-inch-dual-core-i5-2.5ghz.html', 'Delivery in 3-5 Business Days .', 0, 'Apple MacBook Pro 13 inch Dual Core i5 2.5GHz', '2013-01-23 22:36:38'),
(28, 32, 3602, 'http://www.ezeekart.com/p-397/micromax-x505-psych-with-2gb-(black).html', 'Delivery in 3-5 Business Days .', 0, 'Micromax X505 Psych with 2GB (Black)', '2013-01-28 19:32:52'),
(28, 33, 3602, 'http://www.ezeekart.com/p-397/micromax-x505-psych-with-2gb-(black).html', 'Delivery in 3-5 Business Days .', 0, 'Micromax X505 Psych with 2GB (Black)', '2013-01-28 19:39:54'),
(28, 34, 7985, 'http://www.ezeekart.com/p-87/sony-ericsson-elm-(black).html', 'Delivery in 3-5 Business Days .', 0, 'Sony Ericsson Elm (Black)', '2013-01-30 13:49:35'),
(28, 35, 7985, 'http://www.ezeekart.com/p-87/sony-ericsson-elm-(black).html', 'Delivery in 3-5 Business Days .', 0, 'Sony Ericsson Elm (Black)', '2013-01-30 13:52:01'),
(28, 36, 7985, 'http://www.ezeekart.com/p-87/sony-ericsson-elm-(black).html', 'Delivery in 3-5 Business Days .', 0, 'Sony Ericsson Elm (Black)', '2013-01-30 13:53:05'),
(28, 38, 9514, 'http://www.ezeekart.com/p-135/blackberry-curve-8520-(black).html', 'Delivery in 3-5 Business Days .', 0, 'Blackberry Curve 8520 (Black)', '2013-02-12 22:56:10'),
(28, 39, 33670, 'http://www.ezeekart.com/p-403/blackberry-bold-touch-9900-(black).html', 'Delivery in 3-5 Business Days .', 0, 'BlackBerry Bold Touch 9900 (Black)', '2013-02-12 22:56:50'),
(28, 40, 1989, 'http://www.ezeekart.com/p-330/micromax-x265-(black,green).html', 'Delivery in 3-5 Business Days .', 0, 'Micromax X265 (Black,Green)', '2013-02-19 17:34:07'),
(28, 41, 854, 'http://www.ezeekart.com/p-1359/capdase-dual-usb-power-adapter-ipod.html', 'Delivery in 3-5 Business Days .', 0, 'Capdase Dual USB Power Adapter IPOD', '2013-02-19 17:34:47'),
(28, 43, 23900, 'http://www.ezeekart.com/p-370/samsung-i9100-galaxy-s-ii-(black).html', 'Delivery in 3-5 Business Days .', 0, 'Samsung I9100 Galaxy S II (Black)', '2013-02-21 16:35:10'),
(28, 45, 43399, 'http://www.ezeekart.com/p-26357/samsung-wd0654rec-xtl-automatic-6.5-kg-washing-machine.html', 'Delivery in 3-5 Business Days .', 0, 'Samsung WD0654REC/XTL Automatic 6.5 Kg Washing Machine', '2013-02-22 08:13:56'),
(28, 46, 7985, 'http://www.ezeekart.com/p-87/sony-ericsson-elm-(black).html', 'Delivery in 3-5 Business Days .', 0, 'Sony Ericsson Elm (Black)', '2013-02-22 16:36:43'),
(28, 47, 7985, 'http://www.ezeekart.com/p-87/sony-ericsson-elm-(black).html', 'Delivery in 3-5 Business Days .', 0, 'Sony Ericsson Elm (Black)', '2013-02-22 16:43:42'),
(28, 48, 10098, 'http://www.ezeekart.com/p-176/samsung-galaxy-ace-s5830-(black).html', 'Delivery in 3-5 Business Days .', 0, 'Samsung Galaxy Ace S5830 (Black)', '2013-02-24 10:53:16'),
(28, 49, 674, 'http://www.ezeekart.com/p-711/fonokase-screen-guard-apple-i-pad.html', 'Delivery in 3-5 Business Days .', 0, 'Fonokase Screen Guard Apple I PAD', '2013-02-24 10:57:20'),
(28, 50, 38200, 'http://www.ezeekart.com/p-1686/apple-iphone-4s-16-gb-(black).html', 'Delivery in 3-5 Business Days .', 0, 'Apple iPhone 4S 16 GB (Black)', '2013-02-24 10:58:24'),
(28, 51, 58310, 'http://www.ezeekart.com/p-28090/apple-iphone-5-64-gb-(black-and-slate).html', 'Delivery in 3-5 Business Days .', 0, 'Apple iPhone 5 64 GB (Black and Slate)', '2013-02-24 13:13:20'),
(28, 52, 10098, 'http://www.ezeekart.com/p-176/samsung-galaxy-ace-s5830-(black).html', 'Delivery in 3-5 Business Days .', 0, 'Samsung Galaxy Ace S5830 (Black)', '2013-02-24 16:35:45'),
(28, 53, 10098, 'http://www.ezeekart.com/p-176/samsung-galaxy-ace-s5830-(black).html', 'Delivery in 3-5 Business Days .', 0, 'Samsung Galaxy Ace S5830 (Black)', '2013-02-24 16:38:40'),
(28, 55, 7985, 'http://www.ezeekart.com/p-87/sony-ericsson-elm-(black).html', 'Delivery in 3-5 Business Days .', 0, 'Sony Ericsson Elm (Black)', '2013-02-28 02:05:15'),
(28, 56, 43490, 'http://www.ezeekart.com/p-29018/blackberry-z10-(black).html', 'Delivery in 3-5 Business Days .', 0, 'BlackBerry Z10 (Black)', '2013-02-28 02:32:49'),
(28, 59, 749, 'http://www.ezeekart.com/p-3291/sony-micro-vault-16gb-tiny-pen-drive(white).html', 'Delivery in 3-5 Business Days .', 0, 'Sony Micro Vault 16GB Tiny Pen Drive(White)', '2013-02-28 19:26:07'),
(28, 60, 749, 'http://www.ezeekart.com/p-3291/sony-micro-vault-16gb-tiny-pen-drive(white).html', 'Delivery in 3-5 Business Days .', 0, 'Sony Micro Vault 16GB Tiny Pen Drive(White)', '2013-02-28 19:27:04'),
(28, 61, 749, 'http://www.ezeekart.com/p-3291/sony-micro-vault-16gb-tiny-pen-drive(white).html', 'Delivery in 3-5 Business Days .', 0, 'Sony Micro Vault 16GB Tiny Pen Drive(White)', '2013-02-28 19:28:24'),
(28, 64, 3059, 'http://www.ezeekart.com/p-280/samsung-b3210-corbytxt-(chrome-yellow).html', 'Delivery in 3-5 Business Days .', 0, 'Samsung B3210 CorbyTXT (Chrome Yellow)', '2013-03-04 20:09:08'),
(28, 65, 100000, 'http://www.ezeekart.com/p-1519/canon-eos-7d-18-mp-cmos-digital-slr-camera-with-3-inch-lcd-and-18-135mm-f-3.5-5.6-is-ud-standard-zoom-lens.html', 'Delivery in 3-5 Business Days .', 0, 'Canon EOS 7D 18 MP CMOS Digital SLR Camera with 3-Inch LCD and 18-135mm f/3.5-5.6 IS UD Standard Zoom Lens', '2013-03-04 20:18:32'),
(28, 66, 3059, 'http://www.ezeekart.com/p-280/samsung-b3210-corbytxt-(chrome-yellow).html', 'Delivery in 3-5 Business Days .', 0, 'Samsung B3210 CorbyTXT (Chrome Yellow)', '2013-03-04 20:18:58'),
(28, 67, 3059, 'http://www.ezeekart.com/p-280/samsung-b3210-corbytxt-(chrome-yellow).html', 'Delivery in 3-5 Business Days .', 0, 'Samsung B3210 CorbyTXT (Chrome Yellow)', '2013-03-04 20:20:07'),
(28, 68, 100000, 'http://www.ezeekart.com/p-1519/canon-eos-7d-18-mp-cmos-digital-slr-camera-with-3-inch-lcd-and-18-135mm-f-3.5-5.6-is-ud-standard-zoom-lens.html', 'Delivery in 3-5 Business Days .', 0, 'Canon EOS 7D 18 MP CMOS Digital SLR Camera with 3-Inch LCD and 18-135mm f/3.5-5.6 IS UD Standard Zoom Lens', '2013-03-04 21:34:50'),
(28, 69, 3059, 'http://www.ezeekart.com/p-280/samsung-b3210-corbytxt-(chrome-yellow).html', 'Delivery in 3-5 Business Days .', 0, 'Samsung B3210 CorbyTXT (Chrome Yellow)', '2013-03-04 21:36:06'),
(28, 70, 808, 'http://www.ezeekart.com/p-1257/capdase-leather-case-smart-pocket-callid-for-htc-desire-z,-t-mobile-g2-(black).html', 'Delivery in 3-5 Business Days .', 0, 'Capdase Leather Case Smart Pocket Callid For HTC Desire Z, T-Mobile G2 (Black)', '2013-03-04 23:09:02'),
(28, 71, 30510, 'http://www.ezeekart.com/p-22951/whirlpool-sports-7kg--fully-automatic-washing-machine-(white).html', 'Delivery in 3-5 Business Days .', 0, 'Whirlpool Sports 7Kg  Fully Automatic Washing Machine (White)', '2013-03-07 11:01:11'),
(28, 72, 3699, 'http://www.ezeekart.com/p-293/samsung-c3530-(chrome-silver).html', 'Delivery in 3-5 Business Days .', 0, 'Samsung C3530 (Chrome Silver)', '2013-03-17 20:37:24'),
(28, 73, 30955, 'http://www.ezeekart.com/p-26580/samsung-i9300-galaxy-s-iii-16gb-(pebble-blue).html', 'Delivery in 3-5 Business Days .', 0, 'Samsung I9300 Galaxy S III 16GB (Pebble Blue)', '2013-03-19 15:00:00'),
(28, 74, 43490, 'http://www.ezeekart.com/p-29018/blackberry-z10-(black).html', 'Delivery in 3-5 Business Days .', 0, 'BlackBerry Z10 (Black)', '2013-03-19 15:06:05'),
(28, 75, 199, 'http://www.ezeekart.com/p-8294/born-to-be-a-butterfly.html', 'Delivery in 3-5 Business Days .', 0, 'Born to be a Butterfly', '2013-03-19 15:09:08'),
(28, 76, 3602, 'http://www.ezeekart.com/p-397/micromax-x505-psych-with-2gb-(black).html', 'Delivery in 3-5 Business Days .', 0, 'Micromax X505 Psych with 2GB (Black)', '2013-03-19 15:10:21'),
(28, 77, 269, 'http://www.ezeekart.com/p-781/fonokase-screen-guard-nokia-n97-mini.html', 'Delivery in 3-5 Business Days .', 0, 'Fonokase Screen Guard Nokia N97 MINI', '2013-03-19 15:12:56'),
(28, 78, 21930, 'http://www.ezeekart.com/p-28875/samsung-galaxy-grand-duos-i9082-(white).html', 'Delivery in 3-5 Business Days .', 0, 'Samsung Galaxy Grand Duos I9082 (White)', '2013-03-19 19:06:29'),
(28, 79, 17900, 'http://www.ezeekart.com/p-321/samsung-i9003-galaxy-s-4gb.html', 'Delivery in 3-5 Business Days .', 0, 'Samsung I9003 Galaxy S 4GB', '2013-03-19 19:15:31'),
(28, 80, 38990, 'http://www.ezeekart.com/p-29148/sony-xperia-z-(white).html', 'Delivery in 3-5 Business Days .', 0, 'Sony Xperia Z (White)', '2013-03-21 16:44:56'),
(28, 81, 1490, 'http://www.ezeekart.com/p-3313/sony-mdr-ex80lp-earphone(pink).html', 'Delivery in 3-5 Business Days .', 0, 'Sony MDR-EX80LP Earphone(Pink)', '2013-03-21 16:51:03'),
(28, 82, 584, 'http://www.ezeekart.com/p-677/fonokase-soft-jacket-series-i-phone-4-(gray).html', 'Delivery in 3-5 Business Days .', 0, 'Fonokase Soft Jacket Series I Phone 4 (Gray)', '2013-03-21 17:00:51'),
(28, 83, 75, 'http://www.ezeekart.com/p-6179/ladybird-tales-:-puss-in-boots.html', 'Delivery in 3-5 Business Days .', 0, 'Ladybird Tales : Puss in Boots', '2013-03-21 17:03:45'),
(28, 84, 12484, 'http://www.ezeekart.com/p-168/htc-chacha-(white-silver).html', 'Delivery in 3-5 Business Days .', 0, 'HTC ChaCha (White Silver)', '2013-03-21 17:06:45'),
(28, 85, 3699, 'http://www.ezeekart.com/p-293/samsung-c3530-(chrome-silver).html', 'Delivery in 3-5 Business Days .', 0, 'Samsung C3530 (Chrome Silver)', '2013-03-21 17:12:09'),
(28, 86, 15250, 'http://www.ezeekart.com/p-29496/micromax-canvas-hd-a116-(white-and-black).html', 'Delivery in 3-5 Business Days .', 0, 'Micromax Canvas HD A116 (White and Black)', '2013-03-28 22:46:56'),
(28, 87, 3699, 'http://www.ezeekart.com/p-293/samsung-c3530-(chrome-silver).html', 'Delivery in 3-5 Business Days .', 0, 'Samsung C3530 (Chrome Silver)', '2013-03-29 10:21:59'),
(28, 88, 3699, 'http://www.ezeekart.com/p-293/samsung-c3530-(chrome-silver).html', 'Delivery in 3-5 Business Days .', 0, 'Samsung C3530 (Chrome Silver)', '2013-03-29 10:22:57'),
(28, 89, 3699, 'http://www.ezeekart.com/p-293/samsung-c3530-(chrome-silver).html', 'Delivery in 3-5 Business Days .', 0, 'Samsung C3530 (Chrome Silver)', '2013-03-29 10:24:05'),
(28, 91, 7985, 'http://www.ezeekart.com/p-87/sony-ericsson-elm-(black).html', 'Delivery in 3-5 Business Days .', 0, 'Sony Ericsson Elm (Black)', '2013-07-03 15:54:29'),
(28, 92, 3499, 'http://www.ezeekart.com/p-294/samsung-c3560-(metallic-black).html', 'Delivery in 3-5 Business Days .', 0, 'Samsung C3560 (Metallic Black)', '2013-07-04 02:48:44'),
(28, 95, 3089, 'http://www.ezeekart.com/p-312/micromax-q6.html', 'Delivery in 3-5 Business Days .', 0, 'Micromax Q6', '2013-07-04 05:32:36'),
(28, 96, 1875, 'http://www.ezeekart.com/p-26997/krusell-gaia-tablet-case-for-appleipad-(black).html', 'Delivery in 3-5 Business Days .', 0, 'Krusell Gaia Tablet Case for AppleiPad (Black)', '2013-07-04 16:06:11'),
(28, 97, 3089, 'http://www.ezeekart.com/p-312/micromax-q6.html', 'Delivery in 3-5 Business Days .', 0, 'Micromax Q6', '2013-07-04 18:21:04');

-- --------------------------------------------------------

--
-- Table structure for table `fashionandyou`
--

CREATE TABLE IF NOT EXISTS `fashionandyou` (
  `WebsiteID` int(10) NOT NULL,
  `ProductId` int(10) NOT NULL,
  `Price` int(10) NOT NULL,
  `Link` text NOT NULL,
  `DeliveryTime` text NOT NULL,
  `EMI` int(1) NOT NULL DEFAULT '0',
  `Title` text NOT NULL,
  `Time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE IF NOT EXISTS `feedback` (
  `Id` int(10) NOT NULL AUTO_INCREMENT,
  `Email` varchar(255) NOT NULL,
  `Feedback` text NOT NULL,
  `Time` datetime NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `firstcry`
--

CREATE TABLE IF NOT EXISTS `firstcry` (
  `WebsiteID` int(10) NOT NULL,
  `ProductId` int(10) NOT NULL,
  `Price` int(10) NOT NULL,
  `Link` text COLLATE utf8_unicode_ci NOT NULL,
  `DeliveryTime` text COLLATE utf8_unicode_ci NOT NULL,
  `EMI` int(1) NOT NULL DEFAULT '0',
  `Title` text COLLATE utf8_unicode_ci NOT NULL,
  `Time` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `firstcry`
--

INSERT INTO `firstcry` (`WebsiteID`, `ProductId`, `Price`, `Link`, `DeliveryTime`, `EMI`, `Title`, `Time`) VALUES
(58, 1, 1200, 'http://www.firstcry.com/skap/skap-angel-single-bed-sheet-teddy-duo/155140/product-detail', '3-4 Working days.', 0, 'Skap Angel Single Bed Sheet - Teddy Duo', '2013-01-18 16:54:08'),
(58, 73, 949, 'http://www.firstcry.com/combopack.aspx?proid=737', '3-4 Working days.', 0, 'Huggies - Dry L (8 - 14 Kg) 30 Pieces (Combo Pack of 3)', '2013-03-19 15:00:06'),
(58, 2, 99, 'http://www.firstcry.com/snow-white/disney-snow-white-and-the-seven-dwarfs-cone-hat/2196/product-detail', '3-4 Working days.', 0, 'Disney Snow White And The Seven Dwarfs -...', '2013-01-18 17:35:11'),
(58, 3, 164, 'http://www.firstcry.com/unlisted-plus/casual-black-shorts/94487/product-detail', '3-4 Working days.', 0, 'Casual Black Shorts', '2013-01-18 17:36:11'),
(58, 4, 90, 'http://www.firstcry.com/pegasus/pegasus-book-on-modern-history/146113/product-detail', '3-4 Working days.', 0, 'Pegasus - Book On Modern History', '2013-01-18 20:24:48'),
(58, 0, 2174, 'http://www.firstcry.com/airhog/air-hog-vectron-wave-battle/90000506/product-detail', '3-4 Working days.', 0, 'Air Hog- Vectron Wave Battle', '2013-01-18 20:28:55'),
(58, 6, 40, 'http://www.firstcry.com/dreamland/modern-english-writing-book-1/80818/product-detail', '3-4 Working days.', 0, 'Modern English Writing - Book 1', '2013-01-18 20:29:21'),
(58, 8, 129, 'http://www.firstcry.com/fab-n-funky/baby-sunglasses-dotted-design-red-black/91447/product-detail', '3-4 Working days.', 0, 'Baby Sunglasses - Dotted Design Red Black', '2013-01-18 20:48:59'),
(58, 9, 35, 'http://www.firstcry.com/disney/disney-princess-and-garden-flamingo-pink-soapcase/109462/product-detail', '3-4 Working days.', 0, 'Disney - Princess & Garden Flamingo Pink...', '2013-01-18 21:16:15'),
(58, 10, 276, 'http://www.firstcry.com/fab-n-funky/clothes-hanger-with-clips-flower/91592/product-detail', '3-4 Working days.', 0, 'Clothes Hanger With Clips - Flower', '2013-01-19 01:05:50'),
(58, 11, 85, 'http://www.firstcry.com/tolly-joy/tollyjoy-soap-case/16761/product-detail', '3-4 Working days.', 0, 'Tollyjoy Soap Case', '2013-01-19 15:32:44'),
(58, 12, 50, 'http://www.firstcry.com/pegasus/pegasus-board-book-on-vehicles/146278/product-detail', '3-4 Working days.', 0, 'Pegasus - Board Book On Vehicles', '2013-01-19 15:34:29'),
(58, 72, 349, 'http://www.firstcry.com/funskool/funskool-beyblade-metal-masters-galaxy-pegasus/1022/product-detail', '3-4 Working days.', 0, 'Funskool - Beyblade Metal Masters - Galaxy...', '2013-03-17 20:37:25'),
(58, 13, 349, 'http://www.firstcry.com/funskool/funskool-beyblade-metal-masters-galaxy-pegasus/1022/product-detail', '3-4 Working days.', 0, 'Funskool - Beyblade Metal Masters - Galaxy...', '2013-01-23 19:23:07'),
(58, 14, 81, 'http://www.firstcry.com/stoln/stoln-belt/63553/product-detail', '3-4 Working days.', 0, 'Stoln - Belt', '2013-01-23 19:24:53'),
(58, 15, 795, 'http://www.firstcry.com/hermes-house/the-complete-guide-to-pregnancy-and-baby-care-and-baby-food/14308/product-detail', '3-4 Working days.', 0, 'The Complete Guide to Pregnancy and Baby...', '2013-01-23 19:27:52'),
(58, 16, 851, 'http://www.firstcry.com/avent/avent-feeding-on-the-go/90003991/product-detail', '3-4 Working days.', 0, 'Avent - Feeding on-the-go', '2013-01-23 19:30:12'),
(58, 18, 125, 'http://www.firstcry.com/bpi/flash-cards-shapes-and-colours/79661/product-detail', '3-4 Working days.', 0, 'Flash Cards - Shapes & Colours', '2013-01-23 19:33:16'),
(58, 20, 69, 'http://www.firstcry.com/morisons-baby-dreams/jlmorison-baby-dream-premium-powder-puffs-pink/58047/product-detail', '3-4 Working days.', 0, 'J.L.Morison - Baby Dream Premium Powder...', '2013-01-23 19:38:11'),
(58, 21, 160, 'http://www.firstcry.com/shree-book-centre/quick-reference-biographies-great-women-of-india/83385/product-detail', '3-4 Working days.', 0, 'Quick Reference Biographies Great Women Of...', '2013-01-23 19:40:20'),
(58, 22, 136, 'http://www.firstcry.com/pink-rabbit/pink-rabbit-casual-bottoms/130751/product-detail', '3-4 Working days.', 0, 'Pink Rabbit - Casual Bottoms', '2013-01-23 19:42:49'),
(58, 23, 112, 'http://www.firstcry.com/vividha/vividha-door-stopper/11299/product-detail', '3-4 Working days.', 0, 'Vividha Door Stopper', '2013-01-23 19:44:29'),
(58, 27, 499, 'http://www.firstcry.com/disney/disney-pooh-analog-watch/31660/product-detail', '3-4 Working days.', 0, 'Disney Pooh Analog Watch', '2013-01-23 22:15:56'),
(58, 28, 499, 'http://www.firstcry.com/disney/disney-pooh-analog-watch/31660/product-detail', '3-4 Working days.', 0, 'Disney Pooh Analog Watch', '2013-01-23 22:17:23'),
(58, 29, 40, 'http://www.firstcry.com/amar-chitra-katha/amar-chitra-katha-jallianwala-bagh/46977/product-detail', '3-4 Working days.', 0, 'Amar Chitra Katha - Jallianwala Bagh', '2013-01-23 22:27:45'),
(58, 31, 230, 'http://www.firstcry.com/megaps/the-froobles-apps-apple-and-the-tooth-fairy/94639/product-detail', '3-4 Working days.', 0, 'The Froobles - Apps Apple And The Tooth...', '2013-01-23 22:36:48'),
(58, 32, 3419, 'http://www.firstcry.com/hcl/hcl-me-x15-handheld-game-console/48929/product-detail', '3-4 Working days.', 0, 'HCL ME - X15 Handheld Game Console', '2013-01-28 19:32:59'),
(58, 33, 3419, 'http://www.firstcry.com/hcl/hcl-me-x15-handheld-game-console/48929/product-detail', '3-4 Working days.', 0, 'HCL ME - X15 Handheld Game Console', '2013-01-28 19:39:59'),
(58, 34, 225, 'http://www.firstcry.com/chhota-bheem/chhota-bheem-sipper-bottle-with-ice-cool-rod/175857/product-detail', '3-4 Working days.', 0, 'Chhota Bheem - Sipper Bottle With Ice Cool...', '2013-01-30 13:49:43'),
(58, 35, 225, 'http://www.firstcry.com/zephyr/zephyr-alpha-numero-set-1/41342/product-detail', '3-4 Working days.', 0, 'Zephyr - Alpha Numero Set 1', '2013-01-30 13:52:08'),
(58, 36, 7411019, 'http://www.firstcry.com/combopack.aspx?proid=1161', '3-4 Working days.', 0, 'Pampers Active Baby Pants Medium, 7-12 kg, 60 pcs with 2 Baby Hug - Premium Baby Wipes 40 Pieces e...', '2013-01-30 13:53:10'),
(58, 37, 55, 'http://www.firstcry.com/kids-studioz/kids-sunglasses/44428/product-detail', '3-4 Working days.', 0, 'Kids Sunglasses', '2013-02-10 23:58:19'),
(58, 38, 468, 'http://www.firstcry.com/combopack.aspx?proid=620', '3-4 Working days.', 0, 'Ben 10 Activity Books Combo (Set of 3)', '2013-02-12 22:56:18'),
(58, 39, 10, 'http://www.firstcry.com/natraj/natraj-30-cms-scale/55319/product-detail', '3-4 Working days.', 0, 'Natraj - 30 cms Scale', '2013-02-12 22:56:53'),
(58, 45, 75, 'http://www.firstcry.com/pegasus/pegasus-time-machine/146340/product-detail', '3-4 Working days.', 0, 'Pegasus - Time Machine', '2013-02-22 08:14:03'),
(58, 40, 368, 'http://www.firstcry.com/fab-n-funky/baby-pillow-black-mobile-design/87359/product-detail', '3-4 Working days.', 0, 'Baby Pillow - Black Mobile Design', '2013-02-19 17:34:10'),
(58, 41, 38, 'http://www.firstcry.com/bpi/bpi-e-(t)-mail/79931/product-detail', '3-4 Working days.', 0, 'BPI - e-(t) mail', '2013-02-19 17:34:50'),
(58, 42, 38, 'http://www.firstcry.com/bpi/bpi-e-(t)-mail/79931/product-detail', '3-4 Working days.', 0, 'BPI - e-(t) mail', '2013-02-19 17:35:23'),
(58, 46, 1435, 'http://www.firstcry.com/combopack.aspx?proid=610', '3-4 Working days.', 0, 'Disney Pixar Cars Bag with Disney - High School Musical Speakers (Set of 2)', '2013-02-22 16:36:50'),
(58, 47, 325, 'http://www.firstcry.com/dream-baby/dreambaby-angel-locks/52880/product-detail', '3-4 Working days.', 0, 'Dreambaby - Angel Locks', '2013-02-22 16:43:55'),
(58, 48, 150, 'http://www.firstcry.com/hardy-boys/hardy-boys-30-the-x-factor/52174/product-detail', '3-4 Working days.', 0, 'Hardy Boys - 30 The X-Factor', '2013-02-24 10:53:23'),
(58, 49, 230, 'http://www.firstcry.com/megaps/the-froobles-apps-apple-and-the-tooth-fairy/94639/product-detail', '3-4 Working days.', 0, 'The Froobles - Apps Apple And The Tooth...', '2013-02-24 10:57:26'),
(58, 50, 230, 'http://www.firstcry.com/megaps/the-froobles-apps-apple-and-the-tooth-fairy/94639/product-detail', '3-4 Working days.', 0, 'The Froobles - Apps Apple And The Tooth...', '2013-02-24 10:58:38'),
(58, 51, 50, 'http://www.firstcry.com/pegasus/pegasus-zebo-and-the-dinosaurs/146323/product-detail', '3-4 Working days.', 0, 'Pegasus - Zebo and the Dinosaurs', '2013-02-24 13:13:28'),
(58, 52, 224, 'http://www.firstcry.com/fab-n-funky/led-colorful-teddy-bear-night-lamp/138830/product-detail', '3-4 Working days.', 0, 'Led Colorful Teddy Bear Night Lamp', '2013-02-24 16:35:53'),
(58, 53, 1188, 'http://www.firstcry.com/combopack.aspx?proid=753', '3-4 Working days.', 0, 'Mamy Poko Pants Pant Style Diapers Size XL (12 - 17 kg), 46 (Combo pack of 2)', '2013-02-24 16:38:44'),
(58, 55, 6321159, 'http://www.firstcry.com/combopack.aspx?proid=1156', '3-4 Working days.', 0, 'Pampers - Active Baby Pants M (7-10 kg), 42 Pant diapers with 2 Baby Hug - Premium Baby Wipes 40 P...', '2013-02-28 02:05:20'),
(58, 56, 4741, 'http://www.firstcry.com/hcl/hcl-me-z15-handheld-game-console/48931/product-detail', '3-4 Working days.', 0, 'HCL ME - Z15 Handheld Game Console', '2013-02-28 02:32:53'),
(58, 26, 40, 'http://www.firstcry.com/winnie-the-pooh/disney-winnie-the-pooh-paper-napkins/2261/product-detail', '3-4 Working days.', 0, 'Disney Winnie the Pooh - Paper Napkins', '2013-02-28 19:24:13'),
(58, 60, 3799, 'http://www.firstcry.com/hcl/hcl-me-x15-handheld-game-console/48929/product-detail', '3-4 Working days.', 0, 'HCL ME - X15 Handheld Game Console', '2013-02-28 19:27:11'),
(58, 61, 3799, 'http://www.firstcry.com/hcl/hcl-me-x15-handheld-game-console/48929/product-detail', '3-4 Working days.', 0, 'HCL ME - X15 Handheld Game Console', '2013-02-28 19:28:22'),
(58, 64, 40, 'http://www.firstcry.com/amar-chitra-katha/amar-chitra-katha-subhas-chandra-bose/47265/product-detail', '3-4 Working days.', 0, 'Amar Chitra Katha - Subhas Chandra Bose', '2013-03-04 20:09:13'),
(58, 65, 40, 'http://www.firstcry.com/amar-chitra-katha/amar-chitra-katha-subhas-chandra-bose/47265/product-detail', '3-4 Working days.', 0, 'Amar Chitra Katha - Subhas Chandra Bose', '2013-03-04 20:18:40'),
(58, 66, 420, 'http://www.firstcry.com/dreamland/dreamland-cursive-writing-book/148153/product-detail', '3-4 Working days.', 0, 'Dreamland - Cursive Writing Book', '2013-03-04 20:19:00'),
(58, 67, 40, 'http://www.firstcry.com/amar-chitra-katha/amar-chitra-katha-subhas-chandra-bose/47265/product-detail', '3-4 Working days.', 0, 'Amar Chitra Katha - Subhas Chandra Bose', '2013-03-04 20:20:10'),
(58, 68, 40, 'http://www.firstcry.com/amar-chitra-katha/amar-chitra-katha-subhas-chandra-bose/47265/product-detail', '3-4 Working days.', 0, 'Amar Chitra Katha - Subhas Chandra Bose', '2013-03-04 21:34:56'),
(58, 69, 40, 'http://www.firstcry.com/amar-chitra-katha/amar-chitra-katha-subhas-chandra-bose/47265/product-detail', '3-4 Working days.', 0, 'Amar Chitra Katha - Subhas Chandra Bose', '2013-03-04 21:36:10'),
(58, 70, 149, 'http://www.firstcry.com/simba/simba-pick-a-trick-mini-series-kit-1/61686/product-detail', '3-4 Working days.', 0, 'Simba - Pick A Trick - Mini Series Kit 1', '2013-03-04 23:09:06'),
(58, 71, 1497, 'http://www.firstcry.com/fab-n-funky/family-washing-machine/97236/product-detail', '3-4 Working days.', 0, 'Family Washing Machine', '2013-03-07 11:01:15'),
(58, 74, 404, 'http://www.firstcry.com/game/game-a-to-z-pop-up-flash-card/90296/product-detail', '3-4 Working days.', 0, 'Game - A to Z Pop Up Flash Card', '2013-03-19 15:06:07'),
(58, 75, 86, 'http://www.firstcry.com/fab-n-funky/hair-clip-heart-print/106798/product-detail', '3-4 Working days.', 0, 'Hair Clip - Heart Print', '2013-03-19 15:09:15'),
(58, 76, 30, 'http://www.firstcry.com/fab-n-funky/folder-file-flower-and-butterfly-print/87176/product-detail', '3-4 Working days.', 0, 'Folder File - Flower & Butterfly Print', '2013-03-19 15:10:29'),
(58, 78, 349, 'http://www.firstcry.com/funskool/funskool-beyblade-metal-masters-galaxy-pegasus/1022/product-detail', '3-4 Working days.', 0, 'Funskool - Beyblade Metal Masters - Galaxy...', '2013-03-19 19:06:36'),
(58, 79, 84, 'http://www.firstcry.com/mom-italy/mom-italy-eco-collapsible-bottle-pink/110877/product-detail', '3-4 Working days.', 0, 'Mom Italy Eco Collapsible Bottle - Pink', '2013-03-19 19:15:34'),
(58, 80, 404, 'http://www.firstcry.com/game/game-a-to-z-pop-up-flash-card/90296/product-detail', '3-4 Working days.', 0, 'Game - A to Z Pop Up Flash Card', '2013-03-21 16:45:06'),
(58, 82, 300, 'http://www.firstcry.com/megaps/shapes-with-penny-the-penguin/39150/product-detail', '3-4 Working days.', 0, 'Shapes With Penny The Penguin', '2013-03-21 17:01:03'),
(58, 83, 170, 'http://www.firstcry.com/dreamland/pop-up-fairy-tales-puss-in-boots/80835/product-detail', '3-4 Working days.', 0, 'Pop Up Fairy Tales - Puss In Boots', '2013-03-21 17:03:50'),
(58, 84, 204, 'http://www.firstcry.com/fab-n-funky/kids-bag-hi-welcome-print-yellow/88496/product-detail', '3-4 Working days.', 0, 'Kids Bag - Hi Welcome Print Yellow', '2013-03-21 17:06:47'),
(58, 85, 158, 'http://www.firstcry.com/wild-republic/wrist-pets-t-rex/98459/product-detail', '3-4 Working days.', 0, 'Wrist Pets - T-Rex', '2013-03-21 17:12:20'),
(58, 86, 729828, 'http://www.firstcry.com/combopack.aspx?proid=819', '3-4 Working days.', 0, 'Huggies Pants M (5-11kg), 44 Pants (Combo Pack of 2)', '2013-03-28 22:47:04'),
(58, 89, 224, 'http://www.firstcry.com/fab-n-funky/led-colorful-teddy-bear-night-lamp/138830/product-detail', '3-4 Working days.', 0, 'Led Colorful Teddy Bear Night Lamp', '2013-03-29 10:24:09'),
(58, 90, 1999, 'http://www.firstcry.com/chicco/chicco-goodnight-stars-projector/54462/product-detail', '3-4 Working days.', 0, 'Chicco Goodnight Stars Projector', '2013-04-05 19:26:22'),
(58, 25, 55, 'http://www.firstcry.com/pegasus/pegasus-words-cursive/146017/product-detail', '3-4 Working days.', 0, 'Pegasus - Words Cursive', '2013-07-04 02:46:52'),
(58, 92, 1299, 'http://www.firstcry.com/winfun/winfun-baby-dreamland-soothing-projector/174757/product-detail', '3-4 Working days.', 0, 'Winfun - Baby Dreamland Soothing Projector', '2013-07-04 02:48:54'),
(58, 24, 1449, 'http://www.firstcry.com/dickie/dickie-rc-mercedes-slr-mclaren-1-24/193013/product-detail', '3-4 Working days.', 0, 'Dickie - RC Mercedes SLR MCLaren 1:24', '2013-07-04 02:55:33'),
(58, 93, 270, 'http://www.firstcry.com/lock-and-lock/lock-and-lock-sports-water-bottle/6520/product-detail', '3-4 Working days.', 0, 'Lock & Lock - Sports Water Bottle', '2013-07-04 05:25:36'),
(58, 94, 120, 'http://www.firstcry.com/centy/centy-toys-swift-car-ct-114/202409/product-detail', '3-4 Working days.', 0, 'Centy Toys - Swift Car CT 114', '2013-07-04 05:28:14'),
(58, 95, 2696, 'http://www.firstcry.com/swayam/swayam-11-piece-baby-crib-bedding-set-grey/198400/product-detail', '3-4 Working days.', 0, 'Swayam - 11 Piece Baby Crib Bedding Set Grey', '2013-07-04 05:32:45'),
(58, 96, 595, 'http://www.firstcry.com/angry-birds/angry-bird-neoprene-sleeve/173518/product-detail', '3-4 Working days.', 0, 'Angry Bird - Neoprene Sleeve', '2013-07-04 16:06:18'),
(58, 97, 699, 'http://www.firstcry.com/alex-toys/alex-toys-build-and-roll-car/200188/product-detail', '3-4 Working days.', 0, 'Alex Toys - Build And Roll Car', '2013-07-04 18:21:09');

-- --------------------------------------------------------

--
-- Table structure for table `flipkart`
--

CREATE TABLE IF NOT EXISTS `flipkart` (
  `WebsiteID` int(10) NOT NULL,
  `ProductId` int(10) NOT NULL,
  `Price` int(10) NOT NULL,
  `Link` text NOT NULL,
  `DeliveryTime` text NOT NULL,
  `EMI` int(1) NOT NULL DEFAULT '1',
  `Title` text NOT NULL,
  `Time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `flipkart`
--

INSERT INTO `flipkart` (`WebsiteID`, `ProductId`, `Price`, `Link`, `DeliveryTime`, `EMI`, `Title`, `Time`) VALUES
(1, 1, 3299, 'http://www.flipkart.com/samsung-metro-duos-c3322/p/itmczcz6tfhjtw8t?pid=MOBD2MGGPAGSHJG3&query=samsung+duos&srno=m_1_1&ref=d8307efc-3077-452f-87d0-4b1b4b31e588&otracker=from-search&ref=d8307efc-3077-452f-87d0-4b1b4b31e588', 'Delivered in 2-4 business days.', 1, 'Samsung Metro DUOS C3322', '2013-01-18 16:53:49'),
(1, 3, 5990, 'http://www.flipkart.com/samsung-galaxy-y-duos-lite-s5302/p/itmdcwudmwdpnwgs?pid=MOBDCWP9FQ5GCSEE&query=Samsung+Galaxy+Y+Duos+GT-S6102+%28Black%29&srno=m_1_1&ref=84c72d93-54b8-4632-97e0-282bb140a6f4&otracker=from-search&ref=84c72d93-54b8-4632-97e0-282bb140a6f4', 'Delivered in 2-4 business days.', 1, 'Samsung Galaxy Y Duos Lite S5302', '2013-01-18 17:36:03'),
(1, 8, 13545, 'http://www.flipkart.com/samsung-galaxy-s-duos-s7562/p/itmdddbup6fn8mmy?pid=MOBDDX4RXJZAFYGH&query=Samsung+Galaxy+S+Duos+S7562+%28Black%29&srno=m_1_1&ref=63513d89-537b-439a-acbd-ccf33ff79d12&otracker=from-search&ref=63513d89-537b-439a-acbd-ccf33ff79d12', 'Delivered in 2-4 business days.', 1, 'Samsung Galaxy S Duos S7562', '2013-01-18 20:48:43'),
(1, 10, 4149, 'http://www.flipkart.com/nokia-asha-305/p/itmdbgayrxepjykc?pid=MOBDBGAUHZKUTT7B&query=nokia+asha+305&srno=m_1_1&ref=45677cdd-03ba-4bc2-8ab0-b7b411bde5c3&otracker=from-search&ref=45677cdd-03ba-4bc2-8ab0-b7b411bde5c3', 'Delivered in 2-4 business days.', 1, 'Nokia Asha 305', '2013-01-19 01:05:38'),
(1, 11, 35, 'http://www.flipkart.com/johnsons-baby-milk-soap/p/itmdahhudskwd9jc?pid=SOPDAHGFRUF4PFAE&query=baby+soaps&srno=m_1_1&ref=ce3aa006-0f9c-4487-bc6a-928a4d4a604b&otracker=from-search&ref=ce3aa006-0f9c-4487-bc6a-928a4d4a604b', 'Delivered in 2-4 business days.', 1, 'Johnsons Baby Milk Soap', '2013-01-19 15:32:30'),
(1, 12, 35500, 'http://www.flipkart.com/samsung-galaxy-note-2-n7100/p/itmddphwnj667yqk?pid=MOBDDSSTQJBZUFGT&query=samsung+galaxy+note+2&srno=m_2_1&ref=811f6a4c-1574-4db5-8319-e98b9b8ce0ee&otracker=from-search&ref=811f6a4c-1574-4db5-8319-e98b9b8ce0ee', 'Delivered in 2-4 business days.', 1, 'Samsung Galaxy Note 2 N7100', '2013-01-19 15:34:09'),
(1, 13, 29500, 'http://www.flipkart.com/samsung-galaxy-s3/p/itmdbwuthfdz85cc?pid=MOBD9TPHTT8FHJTP&query=samsung+galaxy+s3&srno=m_2_1&ref=e9a023bd-358b-4115-8fa0-feb44b635be0&otracker=from-search&ref=e9a023bd-358b-4115-8fa0-feb44b635be0', 'Delivered in 2-4 business days.', 1, 'Samsung Galaxy S3', '2013-01-23 19:22:42'),
(1, 15, 80, 'http://www.flipkart.com/nokia-lumia-800/p/itmd4z3z8kbmjtcz?pid=MOBD5DZ7VG2ZDTDT&query=Nokia+Lumia+800&srno=m_1_1&ref=1b928072-0c0b-4496-b305-745de68b278b&otracker=from-search&ref=1b928072-0c0b-4496-b305-745de68b278b', 'Delivered in 2-4 business days.', 1, 'Nokia Lumia 800', '2013-01-23 19:27:35'),
(1, 18, 1650, 'http://www.flipkart.com/huawei-e303c-data-card/p/itmd7g4damu7gtez?pid=DATD7G4DXMPW8M7U&query=Huawei+E303C+Data+Card&srno=m_1_1&ref=213fca39-d1ca-4a08-920b-a0ba9fb706e6&otracker=from-search&ref=213fca39-d1ca-4a08-920b-a0ba9fb706e6', 'Delivered in 2-4 business days.', 1, 'Huawei E303C Data Card', '2013-01-23 19:33:05'),
(1, 19, 19300, 'http://www.flipkart.com/samsung-galaxy-tab-2-p3100/p/itmdg42uz9psxzyh?pid=TABD9TNVZH2FNUW9&query=Samsung+Galaxy+Tab+2+P3100&srno=m_1_1&ref=4f64d3d0-597b-42ac-af43-cc1dde7f0d19&otracker=from-search&ref=4f64d3d0-597b-42ac-af43-cc1dde7f0d19', 'Delivered in 2-4 business days.', 1, 'Samsung Galaxy Tab 2 P3100', '2013-01-23 19:36:31'),
(1, 20, 145, 'http://www.flipkart.com/rainbow-screen-guard-sony-xperia-j/p/itmdhug47hvjcrde?pid=ACCDHUFGSRXBHYDU&query=Sony+Xperia+J&srno=m_1_1&ref=d461218d-73ed-462f-bd49-1e97c78df2f3&otracker=from-search&ref=d461218d-73ed-462f-bd49-1e97c78df2f3', 'Delivered in 2-4 business days.', 1, 'Rainbow Screen Guard for Sony Xperia J', '2013-01-23 19:37:57'),
(1, 25, 4999, 'http://www.flipkart.com/micromax-ninja-3-a57/p/itmdcwudnevbfwpp?pid=MOBDCWP9SUYWCF32&query=Micromax+Ninja+3+A57&srno=m_1_1&ref=6721d6b9-f9e9-4646-93a7-46f1f95ee01d&otracker=from-search&ref=6721d6b9-f9e9-4646-93a7-46f1f95ee01d', 'Delivered in 2-4 business days.', 1, 'Micromax Ninja 3 A57', '2013-01-23 20:12:04'),
(1, 26, 1495, 'http://www.flipkart.com/combo-philips-shp1900-headphone/p/itmdy6fgsvkt7utt?pid=BUNDH98M4CST4NFT&query=Sandisk+Cruzer+Blade+16+GB+Pen+Drive&srno=m_2_1&ref=6ccc6dab-60d9-495f-8ab1-52ba8cb8efec&otracker=from-search&ref=6ccc6dab-60d9-495f-8ab1-52ba8cb8efec', 'Delivered in 2-4 business days.', 1, 'Combo of Philips SHP1900 Headphone', '2013-01-23 21:45:54'),
(1, 30, 1504, 'http://www.flipkart.com/macbook-pro-portable-genius-3rd/p/itmczz9knjfmpgjp?pid=9780470642047&query=macbookpro&srno=m_1_1&ref=5d43f298-4a0b-4bb1-b69a-41f1d149e06d&otracker=from-search&ref=5d43f298-4a0b-4bb1-b69a-41f1d149e06d', 'Delivered in 2-4 business days.', 1, 'MacBook Pro Portable Genius 3rd  Edition', '2013-01-23 22:31:47'),
(1, 31, 1079, 'http://www.flipkart.com/contour-design-re-versible-sleeve-13-3-apple-macbook-pro/p/itmczcrgkygacbez?pid=ACCCW54BYHWYS9P3&query=apple+macbook+pro&srno=m_1_1&ref=3c27b38e-8e00-4aa4-a391-ac39f062063f&otracker=from-search&ref=3c27b38e-8e00-4aa4-a391-ac39f062063f', 'Delivered in 2-4 business days.', 1, 'Contour Design rE-versible Sleeve for 13.3 Apple Macbook Pro', '2013-01-23 22:36:28'),
(1, 32, 369, 'http://www.flipkart.com/tempest-2-gb/p/itmd4sfjbvugqtju?pid=ACCD4SFGHCYP7HXF&query=2GB+Pendrive&srno=m_1_1&ref=aac6bda9-834b-4e5f-9d5f-821c6d878470&otracker=from-search&ref=aac6bda9-834b-4e5f-9d5f-821c6d878470', 'Delivered in 2-4 business days.', 1, 'TEMPEST 2 GB', '2013-01-28 19:32:45'),
(1, 35, 6285, 'http://www.flipkart.com/nokia-asha-302/p/itmd8yermzxgvets?pid=MOBD8ZERPNG74FMZ&query=Nokia+asha+302&srno=m_1_1&ref=c17d9a1f-04f3-4672-affc-4b6293ad2634&otracker=from-search&ref=c17d9a1f-04f3-4672-affc-4b6293ad2634', 'Delivered in 2-4 business days.', 1, 'Nokia Asha 302', '2013-01-30 13:52:00'),
(1, 36, 3899, 'http://www.flipkart.com/nokia-asha-202/p/itmd96cy9enw3cb2?pid=MOBD96CUHCYNMZH8&query=Nokia+asha+202&srno=m_1_1&ref=0e331937-a073-4430-8738-c742c06ca8d2&otracker=from-search&ref=0e331937-a073-4430-8738-c742c06ca8d2', 'Delivered in 2-4 business days.', 1, 'Nokia Asha 202', '2013-01-30 13:52:59'),
(1, 37, 691, 'http://www.flipkart.com/meaning-sunglasses-guide-almost-all-things-fashionable-reprint/p/itmczyrg8jp82q8y?pid=9780143114994&query=sunglasses&srno=m_1_1&ref=5eb79177-617e-4fdc-8944-814d99f8de4e&otracker=from-search&ref=5eb79177-617e-4fdc-8944-814d99f8de4e', 'Delivered in 2-4 business days.', 1, 'The Meaning of Sunglasses: And a Guide to Almost All Things Fashionable Reprint Edition', '2013-02-10 23:58:06'),
(1, 38, 1629, 'http://www.flipkart.com/blackberry-bold-made-simple-9700-series-1st/p/itmdyggz8tvmcnwz?pid=9781430231172&query=blackberry+bold+10&srno=m_1_1&ref=7716e7df-2363-4dd5-b997-5d3be361c867&otracker=from-search&ref=7716e7df-2363-4dd5-b997-5d3be361c867', 'Delivered in 2-4 business days.', 1, 'BlackBerry Bold Made Simple: For the BlackBerry Bold 9700 Series 1st Edition', '2013-02-12 22:56:02'),
(1, 39, 32999, 'http://www.flipkart.com/blackberry-bold-9790/p/itmd4459h2bahhnd?pid=MOBD444TC2FZFA4H&query=blackberry+bold&srno=m_1_1&ref=8886b93c-e6a2-41b6-aeb1-5aca7aca2690&otracker=from-search&ref=8886b93c-e6a2-41b6-aeb1-5aca7aca2690', 'Delivered in 2-4 business days.', 1, 'BlackBerry Bold 9790', '2013-02-12 22:56:48'),
(1, 40, 1219, 'http://www.flipkart.com/krusell-95152-avenyn-mobile-pouch-large/p/itmd7j38fjhuqcba?pid=ACCD7J37AJH9FD3A&query=mobile&srno=m_1_1&ref=bdb2c051-1dd1-409b-b721-30c0d1f25923&otracker=from-search&ref=bdb2c051-1dd1-409b-b721-30c0d1f25923', 'Delivered in 2-4 business days.', 1, 'Krusell 95152 Avenyn Mobile Pouch Large', '2013-02-19 17:33:58'),
(1, 41, 13287, 'http://www.flipkart.com/nokia-e71/p/itmcz3xsyvydwmfd?pid=MOBCQ5ZZGSCHJZNY&query=Nokias+e+71&srno=m_1_1&ref=6b70b87c-aa78-4045-89ae-8b64bfd46be2&otracker=from-search&ref=6b70b87c-aa78-4045-89ae-8b64bfd46be2', 'Delivered in 2-4 business days.', 1, 'Nokia E71', '2013-02-19 17:34:41'),
(1, 42, 13287, 'http://www.flipkart.com/nokia-e71/p/itmcz3xsyvydwmfd?pid=MOBCQ5ZZGSCHJZNY&query=Nokia+e+71&srno=m_1_1&ref=331d7359-2f7b-4fd8-ba38-f5ed8419199c&otracker=from-search&ref=331d7359-2f7b-4fd8-ba38-f5ed8419199c', 'Delivered in 2-4 business days.', 1, 'Nokia E71', '2013-02-19 17:35:16'),
(1, 34, 31131, 'http://www.flipkart.com/nokia-lumia-900/p/itmdddeq4jeqbqnn?pid=MOBDDDE3XQH7MHDU&query=Nokia+lumia+900&srno=m_2_1&ref=9c2e07de-723b-4547-a29c-9df3dd5549ac&otracker=from-search&ref=9c2e07de-723b-4547-a29c-9df3dd5549ac', 'Delivered in 2-4 business days.', 1, 'Nokia Lumia 900', '2013-02-19 17:36:16'),
(1, 43, 1699, 'http://www.flipkart.com/samsung-epl-3fhubeginu-data-cable/p/itmda6zb4r5xgjpm?pid=ACCDA6ZBJHFRPQ8A&query=samsung&srno=m_1_1&ref=85150ed2-b8fa-46d9-bdd2-61f64ad50f16&otracker=from-search&ref=85150ed2-b8fa-46d9-bdd2-61f64ad50f16', 'Delivered in 2-4 business days.', 1, 'Samsung EPL-3FHUBEGINU Data Cable', '2013-02-21 16:35:02'),
(1, 44, 240, 'http://www.flipkart.com/iaccy-ss9027-soft-case-samung-galaxy-y-duos/p/itmdezfvrkgyhank?pid=ACCDENVMRY6RPFFT&query=samung&srno=m_1_1&ref=ac2de674-a06e-47da-aca4-0313c288a14f&otracker=from-search&ref=ac2de674-a06e-47da-aca4-0313c288a14f', 'Delivered in 2-4 business days.', 1, 'iAccy SS9027 Soft Case for Samung Galaxy Y Duos', '2013-02-21 17:29:19'),
(1, 46, 145, 'http://www.flipkart.com/nokia-lumia-610/p/itmdb8yr78cbah8f?pid=MOBDB8UFNWZHHHKX&query=nokia+lumia+610&srno=m_1_1&ref=c13ad8d4-f44f-4246-a70c-d175149ae127&otracker=from-search&ref=c13ad8d4-f44f-4246-a70c-d175149ae127', 'Delivered in 2-4 business days.', 1, 'Nokia Lumia 610', '2013-02-22 16:36:34'),
(1, 47, 37512, 'http://www.flipkart.com/nokia-lumia-920/p/itmdgzhhdvrz5rgm?pid=MOBDHYKTYKZZDAFP&query=nokia+lumia+920&srno=m_2_1&ref=62f61c60-8343-4b5c-866f-883c05a17db7&otracker=from-search&ref=62f61c60-8343-4b5c-866f-883c05a17db7', 'Delivered in 2-4 business days.', 1, 'Nokia Lumia 920', '2013-02-22 16:43:33'),
(1, 48, 13100, 'http://www.flipkart.com/samsung-galaxy-s-duos-s7562/p/itmdddbup6fn8mmy?pid=MOBDDX4RXJZAFYGH&query=Samsung+galaxy&srno=m_1_1&ref=03cb1ac5-de53-42ec-8046-ddd8199a741d&otracker=from-search&ref=03cb1ac5-de53-42ec-8046-ddd8199a741d', 'Delivered in 2-4 business days.', 1, 'Samsung Galaxy S Duos S7562', '2013-02-24 10:53:15'),
(1, 49, 21900, 'http://www.flipkart.com/apple-16gb-ipad-2-wi-fi/p/itmdfyjgphytdyfe?pid=TABDEXYMREXZYRVZ&query=Apple&srno=m_1_1&ref=a3913e33-299a-4a0f-bdab-acbaad813f8f&otracker=from-search&ref=a3913e33-299a-4a0f-bdab-acbaad813f8f', 'Delivered in 2-4 business days.', 1, 'Apple 16GB iPad 2 with Wi-Fi', '2013-02-24 10:57:13'),
(1, 51, 899, 'http://www.flipkart.com/malbro-platinum-series-ultra-clear-screen-protector-apple-iphone-5/p/itmdfptead4yuhyz?pid=ACCDFPTD6EYVNGMT&query=Apple+iPhone+5&srno=m_1_1&ref=ff437f46-4cfe-4250-b632-489f3c16da5d&otracker=from-search&ref=ff437f46-4cfe-4250-b632-489f3c16da5d', 'Delivered in 2-4 business days.', 1, 'Malbro Platinum Series Ultra Clear Screen Protector for Apple iPhone 5', '2013-02-24 13:13:19'),
(1, 55, 225, 'http://www.flipkart.com/malbro-ultra-screen-guard-nokia-lumia-710/p/itmd8gwacndg7dxd?pid=ACCD8GW6SW2A8F73&query=nokia+lumia+710&srno=m_1_1&ref=ab46db75-944b-4b28-a171-a2723ffaa843&otracker=from-search&ref=ab46db75-944b-4b28-a171-a2723ffaa843', 'Delivered in 2-4 business days.', 1, 'Malbro Ultra Screen Guard for Nokia Lumia 710', '2013-02-28 02:05:10'),
(1, 56, 43490, 'http://www.flipkart.com/blackberry-z10/p/itmdgjxyzuny4z2h?pid=MOBDGD8NMG5HJGXM&query=blackberry+z10&srno=m_1_1&ref=8fdecc2b-1bae-4c8b-9aba-aeab5089e3fc&otracker=from-search&ref=8fdecc2b-1bae-4c8b-9aba-aeab5089e3fc', 'Delivered in 2-4 business days.', 1, 'BlackBerry Z10', '2013-02-28 02:32:43'),
(1, 57, 3083, 'http://www.flipkart.com/condoms/p/itmczzzuueyzndum?pid=9780727912671&query=condomns&srno=m_1_1&ref=a2654f05-c971-4f3e-9dce-d5a0a4d2c570&otracker=from-search&ref=a2654f05-c971-4f3e-9dce-d5a0a4d2c570', 'Delivered in 2-4 business days.', 1, 'Condoms', '2013-02-28 03:53:52'),
(1, 58, 515, 'http://www.flipkart.com/condom/p/itmdymvb2qzaxkck?pid=9781904456766&query=condom&srno=m_1_1&ref=4c8f920b-0d44-4751-9363-23fcd24027b5&otracker=from-search&ref=4c8f920b-0d44-4751-9363-23fcd24027b5', 'Delivered in 2-4 business days.', 1, 'Condom', '2013-02-28 03:55:20'),
(1, 24, 33902, 'http://www.flipkart.com/nikon-d5100-slr/p/itmczcqzxuws7bgn?pid=CAMCXH4FFUDGAMHS&query=Nikon+D5100+SLR&srno=m_1_1&ref=027d1d28-2225-486b-beff-8a29f9fe8130&otracker=from-search&ref=027d1d28-2225-486b-beff-8a29f9fe8130', 'Delivered in 2-4 business days.', 1, 'Nikon D5100 SLR', '2013-02-28 04:53:50'),
(1, 59, 1495, 'http://www.flipkart.com/combo-philips-shp1900-headphone/p/itmdy6fgsvkt7utt?pid=BUNDH98M4CST4NFT&query=sandisk+16gb+pendrive&srno=m_2_1&ref=69e31fc2-eaef-484b-a74c-78c3a9523c41&otracker=from-search&ref=69e31fc2-eaef-484b-a74c-78c3a9523c41', 'Delivered in 2-4 business days.', 1, 'Combo of Philips SHP1900 Headphone', '2013-02-28 19:25:59'),
(1, 64, 266, 'http://www.flipkart.com/structural-dynamics-theory-computation-2/p/itmczz5gyhm8vrqt?pid=9788123909783&query=Structural+dynamics+by+Mario+poaz&srno=m_1_1&ref=5032629f-e141-469e-aa76-4582b758e29a&otracker=from-search&ref=5032629f-e141-469e-aa76-4582b758e29a', 'Delivered in 2-4 business days.', 1, 'Structural Dynamics: Theory & Computation : Theory and Computation 2 Edition', '2013-03-04 20:08:59'),
(1, 70, 95, 'http://www.flipkart.com/vaunt-pocket-planner-journal/p/itmd43apgzhzprcv?pid=DIAD43AZHUWGGFHM&query=Pocket+planner&srno=m_1_1&ref=0684352f-9d5d-4d9d-9f7a-19e12cd81e2f&otracker=from-search&ref=0684352f-9d5d-4d9d-9f7a-19e12cd81e2f', 'Delivered in 2-4 business days.', 1, 'Vaunt Pocket Planner Journal', '2013-03-04 23:08:51'),
(1, 71, 1499, 'http://www.flipkart.com/whirlpool-360h-gra-automatic-8-kg-washing-machine/p/itmdg3bbfbgmbgcz?pid=WMCDG39GQBTHMVZX&query=washing+machine&srno=m_1_1&ref=8b023a4f-569f-4cab-afa3-8ee8457ab3ac&otracker=from-search&ref=8b023a4f-569f-4cab-afa3-8ee8457ab3ac', 'Delivered in 2-4 business days.', 1, 'Whirlpool 360H-GRA Automatic 8 kg Washing Machine', '2013-03-07 11:01:06'),
(1, 73, 30345, 'http://www.flipkart.com/samsung-galaxy-s3/p/itmdbwuthfdz85cc?pid=MOBD9TPHTT8FHJTP&query=samsung+galaxy+s+3&srno=m_1_1&ref=beb4db07-e71e-4968-abd3-0e09eb76074d&otracker=from-search&ref=beb4db07-e71e-4968-abd3-0e09eb76074d', 'Delivered in 2-4 business days.', 1, 'Samsung Galaxy S3', '2013-03-19 14:59:49'),
(1, 74, 43490, 'http://www.flipkart.com/blackberry-z10/p/itmdgjxyzuny4z2h?pid=MOBDGD8NMG5HJGXM&query=blackberry+z&srno=m_1_1&ref=5b313639-9023-432e-87b4-c873d401ec2d&otracker=from-search&ref=5b313639-9023-432e-87b4-c873d401ec2d', 'Delivered in 2-4 business days.', 1, 'BlackBerry Z10', '2013-03-19 15:05:54'),
(1, 76, 2526, 'http://www.flipkart.com/butterfly-jonyer-h-ii-table-tennis-blade/p/itmdfs4vubwmypnq?pid=RAQDCNWQWGSFJQGH&query=Butterfly+Tenergy+05&srno=m_1_1&ref=f10417c7-dcb4-44cc-915d-a5c907c82795&otracker=from-search&ref=f10417c7-dcb4-44cc-915d-a5c907c82795', 'Delivered in 2-4 business days.', 1, 'Butterfly Jonyer H-II Table Tennis Blade', '2013-03-19 15:10:16'),
(1, 77, 445, 'http://www.flipkart.com/nokia-n9/p/itmcz3xtqa38eb3p?pid=MOBCZQ5BQ8FMRMXP&query=nokia+n9&srno=m_1_1&ref=ec9e6bda-e447-4b11-9153-5ded15a1e9d8&otracker=from-search&ref=ec9e6bda-e447-4b11-9153-5ded15a1e9d8', 'Delivered in 2-4 business days.', 1, 'Nokia N9', '2013-03-19 15:12:48'),
(1, 78, 20900, 'http://www.flipkart.com/samsung-galaxy-grand-duos-i9082/p/itmdhdvtaf5uqaaf?pid=MOBDHDVRPR8V85KS&query=samsung+galaxy+grand&srno=m_1_1&ref=122ff008-2620-4c1d-947d-5c43610573bc&otracker=from-search&ref=122ff008-2620-4c1d-947d-5c43610573bc', 'Delivered in 2-4 business days.', 1, 'Samsung Galaxy Grand Duos I9082', '2013-03-19 19:06:18'),
(1, 79, 21000, 'http://www.flipkart.com/combo-samsung-galaxy-grand-duos-i9082/p/itmdhdvtaf5uqaaf?pid=BUNDGPJZQ4WAB5G6&query=Transcend+Memory+Card+MicroSD+16GB+Class+4&srno=m_2_1&ref=1f341292-7aff-4b90-9bc2-86181eb88196&otracker=from-search&ref=1f341292-7aff-4b90-9bc2-86181eb88196', 'Delivered in 2-4 business days.', 1, 'Combo of Samsung Galaxy Grand Duos I9082', '2013-03-19 19:15:20'),
(1, 80, 37990, 'http://www.flipkart.com/sony-xperia-z/p/itmdgpeerfuxamrz?pid=MOBDGPK4YSBAGYJH&query=sony+xperia+z&srno=m_1_1&ref=9062e99e-cfed-4dee-b6e3-f8c2184d7c04&otracker=from-search&ref=9062e99e-cfed-4dee-b6e3-f8c2184d7c04', 'Delivered in 2-4 business days.', 1, 'Sony Xperia Z', '2013-03-21 16:44:48'),
(1, 81, 12990, 'http://www.flipkart.com/sony-xperia-miro/p/itmdda7crgzwqzhp?pid=MOBDDA5Y6BKX6VHR&query=sony&srno=m_1_1&ref=54161378-5699-40b7-8876-e9a97c0b0e3a&otracker=from-search&ref=54161378-5699-40b7-8876-e9a97c0b0e3a', 'Delivered in 2-4 business days.', 1, 'Sony Xperia Miro', '2013-03-21 16:50:55'),
(1, 82, 1150, 'http://www.flipkart.com/united-colors-benetton-clutch-women/p/itmdcf2g79ax7ywb?pid=CLTDCFFQUK6JFJQB&query=united+colors+of+bennoton&srno=m_1_1&ref=5437681a-260b-4590-be6d-90f3887f21c5&otracker=from-search&ref=5437681a-260b-4590-be6d-90f3887f21c5', 'Delivered in 2-4 business days.', 1, 'United Colors of Benetton  Clutch   - For Women', '2013-03-21 17:00:44'),
(1, 87, 28899, 'http://www.flipkart.com/samsung-ua32eh4000-led-32-inches-hd-television/p/itmdddmvaptyuhrk?pid=TVSD8YHY7FKVUZZX&query=Samsung+led+tv+UA32ES6200R&srno=m_1_1&ref=a54828f3-cc61-43da-b478-4a5668ac0aaf&otracker=from-search&ref=a54828f3-cc61-43da-b478-4a5668ac0aaf', 'Delivered in 2-4 business days.', 1, 'Samsung UA32EH4000 LED 32 inches HD Television', '2013-03-29 10:21:51'),
(1, 88, 149999, 'http://www.flipkart.com/samsung-ua55es6200e-led-55-inches-full-hd-3d-television/p/itmdbgggstysgzfk?pid=TVSDBGH6E4GGVNPK&query=Samsung+UA32ES6200R+led&srno=m_1_1&ref=87bcbcbb-aa19-4334-9b58-86c882765133&otracker=from-search&ref=87bcbcbb-aa19-4334-9b58-86c882765133', 'Delivered in 2-4 business days.', 1, 'Samsung UA55ES6200E LED 55 inches Full HD 3D Television', '2013-03-29 10:22:54'),
(1, 2, 5990, 'http://www.flipkart.com/samsung-galaxy-y-duos-lite-s5302/p/itmdcwudmwdpnwgs?pid=MOBDCWP9PQBDEC7K&query=Samsung+Galaxy+Y+Duos+Lite+GT-S5302+%28White%29&srno=m_1_1&ref=69aa2f61-37da-4e38-8856-700d05bdfa03&otracker=from-search&ref=69aa2f61-37da-4e38-8856-700d05bdfa03', 'Delivered in 2-4 business days.', 1, 'Samsung Galaxy Y Duos Lite S5302', '2013-04-05 18:26:14'),
(1, 90, 22999, 'http://www.flipkart.com/benq-ms-502p-projector/p/itmdfhyxhxb8stgb?pid=PRODCUHTVKC8DJJX&query=projector&srno=m_1_1&ref=6fe56c6c-07aa-44a4-9fc8-7c25160210bb&otracker=from-search&ref=6fe56c6c-07aa-44a4-9fc8-7c25160210bb', 'Delivered in 2-4 business days.', 1, 'BenQ MS 502P Projector', '2013-04-05 19:26:06');

-- --------------------------------------------------------

--
-- Table structure for table `fosila`
--

CREATE TABLE IF NOT EXISTS `fosila` (
  `WebsiteID` int(10) NOT NULL,
  `ProductId` int(10) NOT NULL,
  `Price` int(10) NOT NULL,
  `Link` text COLLATE utf8_unicode_ci NOT NULL,
  `DeliveryTime` text COLLATE utf8_unicode_ci NOT NULL,
  `EMI` int(1) NOT NULL DEFAULT '0',
  `Title` text COLLATE utf8_unicode_ci NOT NULL,
  `Time` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `fosila`
--

INSERT INTO `fosila` (`WebsiteID`, `ProductId`, `Price`, `Link`, `DeliveryTime`, `EMI`, `Title`, `Time`) VALUES
(65, 1, 11619, 'http://www.fosila.com/samsung-galaxy-ace-duos-s6802-black-p-6749', '7-9 Working days.', 0, 'Samsung Galaxy Ace Duos S6802 (Black)', '2013-01-18 16:54:06'),
(65, 10, 4703, 'http://www.fosila.com/nokia-asha-305-dark-grey-p-6581', '7-9 Working days.', 0, 'Nokia Asha 305 (Dark Grey)', '2013-01-19 01:05:49');

-- --------------------------------------------------------

--
-- Table structure for table `freecultr`
--

CREATE TABLE IF NOT EXISTS `freecultr` (
  `WebsiteID` int(10) NOT NULL,
  `ProductId` int(10) NOT NULL,
  `Price` int(10) NOT NULL,
  `Link` text COLLATE utf8_unicode_ci NOT NULL,
  `DeliveryTime` text COLLATE utf8_unicode_ci NOT NULL,
  `EMI` int(1) NOT NULL DEFAULT '0',
  `Title` text COLLATE utf8_unicode_ci NOT NULL,
  `Time` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `freecultr`
--

INSERT INTO `freecultr` (`WebsiteID`, `ProductId`, `Price`, `Link`, `DeliveryTime`, `EMI`, `Title`, `Time`) VALUES
(57, 2, 499, 'http://www.freecultr.com/alan-core-crew-t-shirt-regular-1.html', '2-5 Working days.', 0, 'Alan - Core Crew T-Shirt - Regular Fit', '2013-01-18 17:35:12'),
(57, 3, 499, 'http://www.freecultr.com/alan-core-crew-t-shirt-regular-15.html?top_color=Jet+Black', '2-5 Working days.', 0, 'Alan - Core Crew T-Shirt - Regular Fit', '2013-01-18 17:36:12'),
(57, 4, 1299, 'http://www.freecultr.com/tom-yarn-dyed-stripe-slim-fit-100-mercerized-cotton-shirt.html', '2-5 Working days.', 0, 'Tom - Yarn Dyed Stripe, Slim Fit, 100% Mercerized Cotton Shirt', '2013-01-18 20:24:48'),
(57, 0, 899, 'http://www.freecultr.com/tom-yarn-dyed-stripe-slim-fit-100-mercerized-cotton-shirt.html?top_color=Navy%2C+White', '2-5 Working days.', 0, 'Tom - Yarn Dyed Stripe, Slim Fit, 100% Mercerized Cotton Shirt', '2013-01-18 20:28:56'),
(57, 6, 899, 'http://www.freecultr.com/tom-yarn-dyed-stripe-slim-fit-100-mercerized-cotton-shirt.html?top_color=Navy%2C+White', '2-5 Working days.', 0, 'Tom - Yarn Dyed Stripe, Slim Fit, 100% Mercerized Cotton Shirt', '2013-01-18 20:29:20'),
(57, 8, 499, 'http://www.freecultr.com/alan-core-crew-t-shirt-regular-3.html?top_color=Jet+Black', '2-5 Working days.', 0, 'Alan - Core Crew T-Shirt - Regular Fit', '2013-01-18 20:49:04'),
(57, 9, 1249, 'http://www.freecultr.com/online-shop-by-look-men-sweatshirt-shorts.html', '2-5 Working days.', 0, 'Color me up!', '2013-01-18 21:16:15'),
(57, 10, 749, 'http://www.freecultr.com/chiara-color-block-viscose-top-4.html?top_color=Blushing+Pink', '2-5 Working days.', 0, 'Chiara - Color Block Viscose Top', '2013-01-19 01:05:56'),
(57, 11, 749, 'http://www.freecultr.com/carla-solid-cotton-spandex-shirt-15.html', '2-5 Working days.', 0, 'Carla - Solid Cotton Stretch Shirt', '2013-01-19 15:32:41'),
(57, 12, 999, 'http://www.freecultr.com/brighton-leather-lace-up-shoe-28.html', '2-5 Working days.', 0, 'Brighton - Leather lace up shoe', '2013-01-19 15:34:23'),
(57, 16, 449, 'http://www.freecultr.com/the-dj-slider-printed-rubber-flip-flop.html?shoes_color=Grey%2C+Green', '2-5 Working days.', 0, 'The DJ Slider - Printed Rubber Flip Flop', '2013-01-23 19:30:06'),
(57, 18, 799, 'http://www.freecultr.com/belfort-unisex-leather-wallet-1.html?accessories_color=Tangy+Orange', '2-5 Working days.', 0, 'Belfort - Unisex Leather Wallet', '2013-01-23 19:33:14'),
(57, 19, 499, 'http://www.freecultr.com/austin-core-crew-t-shirt-slim.html?top_color=Hunter+Green', '2-5 Working days.', 0, 'Austin - Core Crew T-Shirt - Slim Fit', '2013-01-23 19:36:48'),
(57, 20, 2499, 'http://www.freecultr.com/online-shop-by-look-women-camisole-skinny-pants-belt-tablet-cover.html', '2-5 Working days.', 0, 'Uptown Girl', '2013-01-23 19:38:10'),
(57, 21, 299, 'http://www.freecultr.com/online-shop-by-look-women-tank-top-shorts-shoes-bag-sunglasses.html', '2-5 Working days.', 0, 'Miss Diva', '2013-01-23 19:40:20'),
(57, 22, 649, 'http://www.freecultr.com/radcliffe-core-cotton-stretch-henley.html?top_color=Hot+Pink', '2-5 Working days.', 0, 'Radcliffe - Core Cotton Stretch Henley', '2013-01-23 19:42:48'),
(57, 23, 849, 'http://www.freecultr.com/online-shop-by-look-men-polo-check-shorts-flip-flop-blue.html', '2-5 Working days.', 0, 'Mr. Easy Casuals', '2013-01-23 19:44:23'),
(57, 25, 499, 'http://www.freecultr.com/rob-combed-cotton-vintage-plaid-check-shirt-slim-fit.html', '2-5 Working days.', 0, 'Rob - Combed Cotton Vintage Plaid Check Shirt - Slim Fit', '2013-01-23 20:12:12'),
(57, 26, 1299, 'http://www.freecultr.com/belfort-unisex-leather-wallet-2.html?accessories_color=Charcoal+Grey', '2-5 Working days.', 0, 'Belfort - Unisex Leather Wallet', '2013-01-23 21:46:08'),
(57, 27, 999, 'http://www.freecultr.com/rob-combed-cotton-vintage-plaid-check-shirt-slim-fit.html', '2-5 Working days.', 0, 'Rob - Combed Cotton Vintage Plaid Check Shirt - Slim Fit', '2013-01-23 22:15:53'),
(57, 28, 199, 'http://www.freecultr.com/online-shop-by-look-men-pants-casual-shirt-shoes-belt.html', '2-5 Working days.', 0, 'Peek a Blue', '2013-01-23 22:17:14'),
(57, 29, 499, 'http://www.freecultr.com/austin-core-crew-t-shirt-slim.html?top_color=Hunter+Green', '2-5 Working days.', 0, 'Austin - Core Crew T-Shirt - Slim Fit', '2013-01-23 22:27:28'),
(57, 31, 1699, 'http://www.freecultr.com/accessories-pack-of-5.html', '2-5 Working days.', 0, 'Accessories', '2013-01-23 22:36:46'),
(57, 34, 549, 'http://www.freecultr.com/potomac-stripe-canvas-belt-27.html', '2-5 Working days.', 0, 'Potomac - Stripe Canvas Belt', '2013-01-30 13:49:41'),
(57, 35, 1299, 'http://www.freecultr.com/austin-core-crew-t-shirt-slim.html', '2-5 Working days.', 0, 'Austin - Core Crew T-Shirt - Slim Fit', '2013-01-30 13:52:05'),
(57, 36, 599, 'http://www.freecultr.com/surf-school-graphic-core-crew-t-shirt-regular-1.html', '2-5 Working days.', 0, 'Surf School - Graphic, Core Crew T-Shirt - Regular', '2013-01-30 13:53:10'),
(57, 38, 379, 'http://www.freecultr.com/online-shop-by-look-men-sweater-chinos-loafers-cotton-shirt.html', '2-5 Working days.', 0, 'Bold yet Refined !', '2013-02-12 22:56:18'),
(57, 39, 2299, 'http://www.freecultr.com/jena-bold-print-100-cotton-scarf.html', '2-5 Working days.', 0, 'Jena - Bold Print, 100% Cotton Scarf', '2013-02-12 22:56:52'),
(57, 41, 899, 'http://www.freecultr.com/rob-combed-cotton-vintage-plaid-check-shirt-slim-fit.html', '2-5 Working days.', 0, 'Rob - Combed Cotton Vintage Plaid Check Shirt - Slim Fit', '2013-02-19 17:34:51'),
(57, 42, 899, 'http://www.freecultr.com/rob-combed-cotton-vintage-plaid-check-shirt-slim-fit.html', '2-5 Working days.', 0, 'Rob - Combed Cotton Vintage Plaid Check Shirt - Slim Fit', '2013-02-19 17:35:24'),
(57, 15, 359, 'http://www.freecultr.com/melissa-glass-and-metal-necklace-3.html', '2-5 Working days.', 0, 'Melissa - Glass and metal necklace', '2013-02-19 17:35:49'),
(57, 46, 1699, 'http://www.freecultr.com/prague-solid-tassel-leather-moccasin.html', '2-5 Working days.', 0, 'Prague - Solid, Tassel Leather Moccasin', '2013-02-22 16:36:49'),
(57, 47, 399, 'http://www.freecultr.com/katy-contrast-piping-top-11.html', '2-5 Working days.', 0, 'Katy - Contrast Piping Top', '2013-02-22 16:43:46'),
(57, 93, 299, 'http://www.freecultr.com/verona-core-cotton-v-neck-t-shirt-4.html', '2-5 Working days.', 0, 'Verona - Core Cotton V Neck T-Shirt', '2013-07-04 05:25:29'),
(57, 51, 499, 'http://www.freecultr.com/rob-combed-cotton-vintage-plaid-check-shirt-slim-fit.html', '2-5 Working days.', 0, 'Rob - Combed Cotton Vintage Plaid Check Shirt - Slim Fit', '2013-02-24 13:13:25'),
(57, 52, 899, 'http://www.freecultr.com/eddie-low-ankle-canvas-sneaker.html?shoes_color=Dark+Slate%2C+Persian+Blue', '2-5 Working days.', 0, 'Eddie - Low Ankle Canvas Sneaker', '2013-02-24 16:35:51'),
(57, 53, 1699, 'http://www.freecultr.com/donna-long-sleeves-high-and-low-hem-poly-georgette-shirt-18.html', '2-5 Working days.', 0, 'Donna - Long Sleeves, High and Low Hem, Poly Georgette Shirt', '2013-02-24 16:38:46'),
(57, 64, 999, 'http://www.freecultr.com/salford-leather-gladiator-sandal-14.html', '2-5 Working days.', 0, 'Salford - Leather Gladiator Sandal', '2013-03-04 20:09:19'),
(57, 65, 899, 'http://www.freecultr.com/rob-combed-cotton-vintage-plaid-check-shirt-slim-fit.html', '2-5 Working days.', 0, 'Rob - Combed Cotton Vintage Plaid Check Shirt - Slim Fit', '2013-03-04 20:18:43'),
(57, 66, 899, 'http://www.freecultr.com/rob-combed-cotton-vintage-plaid-check-shirt-slim-fit.html', '2-5 Working days.', 0, 'Rob - Combed Cotton Vintage Plaid Check Shirt - Slim Fit', '2013-03-04 20:19:16'),
(57, 67, 899, 'http://www.freecultr.com/rob-combed-cotton-vintage-plaid-check-shirt-slim-fit.html', '2-5 Working days.', 0, 'Rob - Combed Cotton Vintage Plaid Check Shirt - Slim Fit', '2013-03-04 20:20:19'),
(57, 68, 899, 'http://www.freecultr.com/rob-combed-cotton-vintage-plaid-check-shirt-slim-fit.html', '2-5 Working days.', 0, 'Rob - Combed Cotton Vintage Plaid Check Shirt - Slim Fit', '2013-03-04 21:34:58'),
(57, 69, 899, 'http://www.freecultr.com/rob-combed-cotton-vintage-plaid-check-shirt-slim-fit.html', '2-5 Working days.', 0, 'Rob - Combed Cotton Vintage Plaid Check Shirt - Slim Fit', '2013-03-04 21:36:14'),
(57, 70, 799, 'http://www.freecultr.com/churchill-black-leather-wallet.html', '2-5 Working days.', 0, 'Churchill - Black Leather Wallet', '2013-03-04 23:09:11'),
(57, 73, 899, 'http://www.freecultr.com/rob-combed-cotton-vintage-plaid-check-shirt-slim-fit.html', '2-5 Working days.', 0, 'Rob - Combed Cotton Vintage Plaid Check Shirt - Slim Fit', '2013-03-19 15:00:08'),
(57, 74, 1699, 'http://www.freecultr.com/genoa-quilted-leather-cross-body-bag-2.html?accessories_color=Crackle+Brown', '2-5 Working days.', 0, 'Genoa - Quilted Leather Cross Body Bag', '2013-03-19 15:06:08'),
(57, 75, 849, 'http://www.freecultr.com/eddie-low-ankle-canvas-sneaker-12.html', '2-5 Working days.', 0, 'Eddie - Low Ankle Canvas Sneaker', '2013-03-19 15:09:10'),
(57, 76, 999, 'http://www.freecultr.com/audrey-contrast-high-and-low-hem-poly-georgette-skirt-4.html?top_color=Powder+Blue', '2-5 Working days.', 0, 'Audrey - Contrast, High and Low Hem, Poly Georgette Shirt', '2013-03-19 15:10:25'),
(57, 78, 389, 'http://www.freecultr.com/new-york-graphic-cotton-stretch-u-neck-t-shirt.html?top_color=Blushing+Pink', '2-5 Working days.', 0, 'New York - Graphic, Cotton Stretch, U Neck T-Shirt', '2013-03-19 19:06:33'),
(57, 79, 899, 'http://www.freecultr.com/louis-brown-leather-wallet.html', '2-5 Working days.', 0, 'Louis - Brown Leather Wallet', '2013-03-19 19:15:34'),
(57, 80, 1699, 'http://www.freecultr.com/genoa-quilted-leather-cross-body-bag-2.html', '2-5 Working days.', 0, 'Genoa - Quilted Leather Cross Body Bag', '2013-03-21 16:45:02'),
(57, 82, 299, 'http://www.freecultr.com/online-shop-by-look-women-camisole-skinny-pants-belt-tablet-cover.html', '2-5 Working days.', 0, 'Uptown Girl', '2013-03-21 17:00:57'),
(57, 83, 899, 'http://www.freecultr.com/cayenne-polka-dot-rubber-rain-boots.html', '2-5 Working days.', 0, 'Cayenne - Polka Dot Rubber Rain Boots', '2013-03-21 17:03:49'),
(57, 84, 1299, 'http://www.freecultr.com/beck-high-ankle-canvas-sneaker.html', '2-5 Working days.', 0, 'Beck - High Ankle Canvas Sneaker', '2013-03-21 17:06:49'),
(57, 87, 1899, 'http://www.freecultr.com/mystique-leather-zipper-tall-boot.html?shoes_color=Dark+Green', '2-5 Working days.', 0, 'Mystique - Leather, Zipper Tall Boot', '2013-03-29 10:22:05'),
(57, 88, 1899, 'http://www.freecultr.com/mystique-leather-zipper-tall-boot.html?shoes_color=Dark+Green', '2-5 Working days.', 0, 'Mystique - Leather, Zipper Tall Boot', '2013-03-29 10:23:05'),
(57, 89, 1899, 'http://www.freecultr.com/mystique-leather-zipper-tall-boot.html?shoes_color=Dark+Green', '2-5 Working days.', 0, 'Mystique - Leather, Zipper Tall Boot', '2013-03-29 10:24:09'),
(57, 55, 2400, 'http://www.freecultr.com/marshall-solid-100-cotton-casual-shirt-regular-fit-8.html', '2-5 Working days.', 0, 'Marshall - Solid, 100% Cotton Casual Shirt - Regular Fit', '2013-07-03 15:58:02'),
(57, 94, 799, 'http://www.freecultr.com/nicholas-solid-100-cotton-casual-shirt-regular-fit.html', '2-5 Working days.', 0, 'Nicholas - Solid, 100% Cotton Casual Shirt - Regular Fit', '2013-07-04 05:28:09'),
(57, 95, 679, 'http://www.freecultr.com/lyra-contrast-v-neck-sleep-shirt-4.html', '2-5 Working days.', 0, 'Lyra - Contrast V Neck Sleep Shirt', '2013-07-04 05:32:42'),
(57, 91, 499, 'http://www.freecultr.com/gisele-full-length-polyamide-spandex-seamless-legging-8.html?pants_color=Dark+Navy', '2-5 Working days.', 0, 'Gisele - Full Length, Solid, Seamless Legging', '2013-07-04 19:00:20');

-- --------------------------------------------------------

--
-- Table structure for table `friendsofbooks`
--

CREATE TABLE IF NOT EXISTS `friendsofbooks` (
  `WebsiteID` int(10) NOT NULL,
  `ProductId` int(10) NOT NULL,
  `Price` int(10) NOT NULL,
  `Link` text NOT NULL,
  `DeliveryTime` text NOT NULL,
  `EMI` int(1) NOT NULL DEFAULT '0',
  `Title` text NOT NULL,
  `Time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `futurebazaar`
--

CREATE TABLE IF NOT EXISTS `futurebazaar` (
  `WebsiteID` int(10) NOT NULL,
  `ProductId` int(10) NOT NULL,
  `Price` int(10) NOT NULL,
  `Link` text NOT NULL,
  `DeliveryTime` text NOT NULL,
  `EMI` int(1) NOT NULL DEFAULT '1',
  `Title` text NOT NULL,
  `Time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `futurebazaar`
--

INSERT INTO `futurebazaar` (`WebsiteID`, `ProductId`, `Price`, `Link`, `DeliveryTime`, `EMI`, `Title`, `Time`) VALUES
(8, 11, 377, 'http://www.futurebazaar.com/soulflower-soap-baby-your-skin-pack-of-2/pd/71149/?ref=search', 'Delivered in 2-4 business days.', 1, 'Soulflower Soap, Baby Your Skin, Pack of 2', '2013-01-19 15:32:34'),
(8, 37, 1249, 'http://www.futurebazaar.com/reebok-core-watch-reebok-golden-aviator-sunglassed/pd/159372/?ref=search', 'Delivered in 2-4 business days.', 1, 'Reebok Core Watch & Reebok Golden Aviator Sunglassed ', '2013-02-10 23:58:10'),
(8, 39, 555, 'http://www.futurebazaar.com/case-mate-barely-there-bb9000bt-blk-cell-phone-cases-black/pd/47888/?ref=search', 'Delivered in 2-4 business days.', 1, 'Case-mate Barely There BB9000BT-BLK Cell Phone Cases - Black', '2013-02-12 22:56:48'),
(8, 1, 13518, 'http://www.futurebazaar.com/samsung-galaxy-s-duos-s7562-white/pd/171210/?ref=search', 'Delivered in 2-4 business days.', 1, 'Samsung Galaxy S Duos S7562 - White', '2013-02-14 19:05:11'),
(8, 40, 9899, 'http://www.futurebazaar.com/samsung-galaxy-ace-s5830-onky-black-gsm-handet/pd/131620/?ref=search', 'Delivered in 2-4 business days.', 1, 'SAMSUNG Galaxy Ace S5830 Onky Black Gsm Handet', '2013-02-19 17:34:03'),
(8, 41, 439, 'http://www.futurebazaar.com/case-mate-barely-there-nke71bt-rslv-cell-phone-cases-royal-silver/pd/47892/?ref=search', 'Delivered in 2-4 business days.', 1, 'Case-mate Barely There NKE71BT-RSLV Cell Phone Cases - Royal Silver', '2013-02-19 17:34:47'),
(8, 42, 439, 'http://www.futurebazaar.com/case-mate-barely-there-nke71bt-rslv-cell-phone-cases-royal-silver/pd/47892/?ref=search', 'Delivered in 2-4 business days.', 1, 'Case-mate Barely There NKE71BT-RSLV Cell Phone Cases - Royal Silver', '2013-02-19 17:35:17'),
(8, 43, 9899, 'http://www.futurebazaar.com/samsung-galaxy-ace-s5830-onky-black-gsm-handet/pd/131620/?ref=search', 'Delivered in 2-4 business days.', 1, 'SAMSUNG Galaxy Ace S5830 Onky Black Gsm Handet', '2013-02-21 16:35:07'),
(8, 45, 23390, 'http://www.futurebazaar.com/samsung-wf-8558qmw8/pd/156771/?ref=search', 'Delivered in 2-4 business days.', 1, 'Samsung WF-8558QMW8 5.5 kg Front Loading Fully Automatic Washing Machine', '2013-02-22 08:13:54'),
(8, 48, 29490, 'http://www.futurebazaar.com/samsung-galaxy-s-iii-i9300-blue-gsm-handset/pd/131614/?ref=search', 'Delivered in 2-4 business days.', 1, 'Samsung Galaxy S3 I9300 - Blue', '2013-02-24 10:53:16'),
(8, 13, 29490, 'http://www.futurebazaar.com/samsung-galaxy-s-iii-i9300-blue-gsm-handset/pd/131614/?ref=search', 'Delivered in 2-4 business days.', 1, 'Samsung Galaxy S3 I9300 - Blue', '2013-02-24 10:54:32'),
(8, 49, 24500, 'http://www.futurebazaar.com/apple-ipad-2-16gb-wifi-white/pd/77854/?ref=search', 'Delivered in 2-4 business days.', 1, 'Apple Ipad 2 16GB wifi White', '2013-02-24 10:57:19'),
(8, 31, 80671, 'http://www.futurebazaar.com/apple-macbook-pro-md101hna/pd/169957/?ref=search', 'Delivered in 2-4 business days.', 1, 'Apple MacBook Pro - (MD101HN/A)', '2013-02-24 16:33:06'),
(8, 52, 79990, 'http://www.futurebazaar.com/samsung-40d6000-3d-led-tv/pd/169189/?ref=search', 'Delivered in 2-4 business days.', 1, 'SAMSUNG 40D6000 3D LED TV', '2013-02-24 16:35:39'),
(8, 54, 2290, 'http://www.futurebazaar.com/netgear-jwnr2000-n300-wireless-router/pd/134573/?ref=search', 'Delivered in 2-4 business days.', 1, 'Netgear JWNR2000 N300 Wireless Router', '2013-02-25 19:02:54'),
(8, 34, 31599, 'http://www.futurebazaar.com/nokia-lumia-900-black/pd/171185/?ref=search', 'Delivered in 2-4 business days.', 1, 'Nokia Lumia 900 - Black', '2013-02-28 16:36:23'),
(8, 12, 35789, 'http://www.futurebazaar.com/samsung-n7100-galaxy-note-ii-grey/pd/171203/?ref=search', 'Delivered in 2-4 business days.', 1, 'Samsung N7100 Galaxy Note II - Grey', '2013-02-28 16:42:49'),
(8, 8, 13249, 'http://www.futurebazaar.com/samsung-galaxy-s-duos-s7562-black/pd/171211/?ref=search', 'Delivered in 2-4 business days.', 1, 'Samsung Galaxy S Duos S7562 - Black', '2013-02-28 17:44:58'),
(8, 71, 7490, 'http://www.futurebazaar.com/electrolux-carina-semi-automatic-6-kg-top-loader-washing-machine-es60cagl/pd/150550/?ref=search', 'Delivered in 2-4 business days.', 1, 'Electrolux Carina Semi-Automatic 6 Kg Top Loader Washing Machine (ES60CAGL)', '2013-03-07 11:01:12'),
(8, 73, 30293, 'http://www.futurebazaar.com/samsung-galaxy-s-iii-i9300-blue-gsm-handset/pd/131614/?ref=search', 'Delivered in 2-4 business days.', 1, 'Samsung Galaxy S3 I9300 - Blue', '2013-03-19 14:59:53'),
(8, 81, 14049, 'http://www.futurebazaar.com/sony-xperia-j-pink/pd/171097/?ref=search', 'Delivered in 2-4 business days.', 1, 'Sony Xperia J - Black', '2013-03-21 16:51:02');

-- --------------------------------------------------------

--
-- Table structure for table `giftcart`
--

CREATE TABLE IF NOT EXISTS `giftcart` (
  `WebsiteID` int(10) NOT NULL,
  `ProductId` int(10) NOT NULL,
  `Price` int(10) NOT NULL,
  `Link` text COLLATE utf8_unicode_ci NOT NULL,
  `DeliveryTime` text COLLATE utf8_unicode_ci NOT NULL,
  `EMI` int(1) NOT NULL DEFAULT '0',
  `Title` text COLLATE utf8_unicode_ci NOT NULL,
  `Time` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `giftcart`
--

INSERT INTO `giftcart` (`WebsiteID`, `ProductId`, `Price`, `Link`, `DeliveryTime`, `EMI`, `Title`, `Time`) VALUES
(61, 1, 9545, 'http://www.giftcart.com/samsung-galaxy-ace-duos-s6802.html', '4-6 Working days.', 0, 'Samsung Galaxy Ace Duos S6802', '2013-01-18 16:54:11'),
(61, 10, 4699, 'http://www.giftcart.com/nokia-asha-305.html', '4-6 Working days.', 0, 'Nokia Asha 305', '2013-01-19 01:05:51'),
(61, 12, 38250, 'http://www.giftcart.com/samsung-galaxy-note-n-7000.html', '4-6 Working days.', 0, 'Samsung Galaxy Note N-7000', '2013-01-19 15:34:20'),
(61, 15, 18999, 'http://www.giftcart.com/nokia-lumia-800.html', '4-6 Working days.', 0, 'Nokia Lumia 800', '2013-01-23 19:27:50'),
(61, 19, 19300, 'http://www.giftcart.com/samsung-galaxy-tab2-p3100-titanium-silver-1.html', '4-6 Working days.', 0, 'Samsung Galaxy TAB2 P3100', '2013-01-23 19:36:52'),
(61, 31, 67900, 'http://www.giftcart.com/apple-macbook-air-md223hn-a-dual-core-i5-4-gb-64-gb-x-lion.html', '4-6 Working days.', 0, 'Apple MacBook Air MD223HN,A Dual Core i5, 4 GB,  64 GB, X LION', '2013-01-23 22:36:48'),
(61, 35, 6649, 'http://www.giftcart.com/nokia-asha-302.html', '4-6 Working days.', 0, 'Nokia Asha 302', '2013-01-30 13:52:16'),
(61, 36, 3999, 'http://www.giftcart.com/nokia-asha-202.html', '4-6 Working days.', 0, 'Nokia Asha 202', '2013-01-30 13:53:12'),
(61, 39, 32799, 'http://www.giftcart.com/blackberry-bold-9900.html', '4-6 Working days.', 0, 'BlackBerry Bold 9900', '2013-02-12 22:57:00'),
(61, 40, 599, 'http://www.giftcart.com/just-4-fun-turtle-mobile.html', '4-6 Working days.', 0, 'B-Kids Just 4 Fun Turtle Mobile', '2013-02-19 17:34:19'),
(61, 42, 15229, 'http://www.giftcart.com/nokia-lumia-710.html', '4-6 Working days.', 0, 'Nokia Lumia 710', '2013-02-19 17:35:25'),
(61, 46, 12499, 'http://www.giftcart.com/nokia-lumia-610.html', '4-6 Working days.', 0, 'Nokia Lumia 610', '2013-02-22 16:36:58'),
(61, 47, 37499, 'http://www.giftcart.com/nokia-lumia-920.html', '4-6 Working days.', 0, 'Nokia Lumia 920', '2013-02-22 16:43:51'),
(61, 48, 11090, 'http://www.giftcart.com/samsung-galaxy-y-pro-duos-b5512.html', '4-6 Working days.', 0, 'Samsung Galaxy Y Pro Duos B5512 (Metallic Black)', '2013-02-24 10:53:42'),
(61, 49, 1099, 'http://www.giftcart.com/pineapple-cake-1kg.html', '4-6 Working days.', 0, 'Pineapple Cake 1 kg', '2013-02-24 10:57:40'),
(61, 50, 36500, 'http://www.giftcart.com/apple-iphone-4s-16-gb.html', '4-6 Working days.', 0, 'Apple iPhone 4S 16 GB ', '2013-02-24 10:58:32'),
(61, 51, 36500, 'http://www.giftcart.com/apple-iphone-4s-16-gb.html', '4-6 Working days.', 0, 'Apple iPhone 4S 16 GB ', '2013-02-24 13:13:25'),
(61, 55, 13099, 'http://www.giftcart.com/nokia-lumia-710.html', '4-6 Working days.', 0, 'Nokia Lumia 710', '2013-02-28 02:05:45'),
(61, 56, 43490, 'http://www.giftcart.com/blackberry-z10-black.html', '4-6 Working days.', 0, 'Blackberry Z10 (Black)', '2013-02-28 02:33:06'),
(61, 8, 11990, 'http://www.giftcart.com/samsung-galaxy-s-duos-s7562.html', '4-6 Working days.', 0, 'Samsung Galaxy S Duos S7562', '2013-02-28 17:45:09'),
(61, 71, 1499, 'http://www.giftcart.com/chicco-sweetheart-bear.html', '4-6 Working days.', 0, 'Chicco Sweetheart Bear', '2013-03-07 11:01:33'),
(61, 73, 31990, 'http://www.giftcart.com/samsung-galaxy-tab2-p5100.html', '4-6 Working days.', 0, 'Samsung Galaxy TAB2 P5100', '2013-03-19 15:00:22'),
(61, 74, 16500, 'http://www.giftcart.com/blackberry-curve-9380.html', '4-6 Working days.', 0, 'BlackBerry Curve 9380 (Black)', '2013-03-19 15:06:08'),
(61, 78, 21500, 'http://www.giftcart.com/samsung-galaxy-grand-duos-i9082.html', '4-6 Working days.', 0, 'Samsung Galaxy Grand Duos I9082', '2013-03-19 19:06:39'),
(61, 80, 8499, 'http://www.giftcart.com/sony-xperia-tipo.html', '4-6 Working days.', 0, 'Sony Xperia Tipo', '2013-03-21 16:45:16'),
(61, 81, 75500, 'http://www.giftcart.com/sony-vaio-svs13118gn-laptop-3rd-generation-core-i7-4-gb-750-gb-windows-7-pro-silver.html', '4-6 Working days.', 0, 'Sony VAIO SVS13118GN Laptop  3rd Generation Core I7Â  , 4 GB Â  ,750 GBÂ  ,  Windows 7 Pro (Silver)', '2013-03-21 16:51:26'),
(61, 92, 4001, 'http://www.giftcart.com/micromax-a30-2.html', '4-6 Working days.', 0, 'Micromax A30', '2013-07-04 02:49:03'),
(61, 94, 4249, 'http://www.giftcart.com/nokia-asha-200.html', '4-6 Working days.', 0, 'Nokia Asha 200', '2013-07-04 05:28:11');

-- --------------------------------------------------------

--
-- Table structure for table `gud2buy`
--

CREATE TABLE IF NOT EXISTS `gud2buy` (
  `WebsiteID` int(10) NOT NULL,
  `ProductId` int(10) NOT NULL,
  `Price` int(10) NOT NULL,
  `Link` text NOT NULL,
  `DeliveryTime` text NOT NULL,
  `EMI` int(1) NOT NULL DEFAULT '0',
  `Title` text NOT NULL,
  `Time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gud2buy`
--

INSERT INTO `gud2buy` (`WebsiteID`, `ProductId`, `Price`, `Link`, `DeliveryTime`, `EMI`, `Title`, `Time`) VALUES
(33, 1, 10999, 'http://gud2buy.com/mobiles-and-accessories/mobiles/samsung-gt-s6802-galaxy-ace-duos', 'Delivery in 2-8 business days.', 0, ' Samsung Galaxy Ace Duos S6802 (Chic White)\n', '2013-01-18 16:54:04'),
(33, 2, 6780, 'http://gud2buy.com/mobiles-and-accessories/mobiles/samsung-galaxy-y-duos-lite-s5302-white', 'Delivery in 2-8 business days.', 0, ' Samsung Galaxy Y Duos Lite S5302 (White)\n', '2013-01-18 17:35:07'),
(33, 3, 8480, 'http://gud2buy.com/mobiles-and-accessories/mobiles/samsung-galaxy-y-duos-s6102-mobile-phone', 'Delivery in 2-8 business days.', 0, ' Samsung Galaxy Y Duos S6102 - Strong Black\n', '2013-01-18 17:36:06'),
(33, 8, 14850, 'http://gud2buy.com/mobiles-and-accessories/mobiles/samsung-galaxy-s-duos-gt-s7562-black', 'Delivery in 2-8 business days.', 0, ' Samsung Galaxy S Duos GT - S7562 (Black)\n', '2013-01-18 20:48:54'),
(33, 12, 37175, 'http://gud2buy.com/mobiles-and-accessories/mobiles/samsung-galaxy-note-2-n7100-white', 'Delivery in 2-8 business days.', 0, ' Samsung Galaxy Note 2 N7100 (White)\n', '2013-01-19 15:34:15'),
(33, 13, 31880, 'http://gud2buy.com/mobiles-and-accessories/mobiles/samsung-galaxy-s3', 'Delivery in 2-8 business days.', 0, ' Samsung Galaxy S3 GT-I9300 WHITE\n', '2013-01-23 19:22:53'),
(33, 15, 199, 'http://gud2buy.com/mobiles-and-accessories/accessories/nokia-n-lumia-800-rainbow-screen-guard', 'Delivery in 2-8 business days.', 0, ' Nokia N - Lumia 800 (Rainbow Screen Guard)\n', '2013-01-23 19:27:46'),
(33, 19, 18999, 'http://gud2buy.com/mobiles-and-accessories/tablets/samsung-galaxy-tab-2-p3100', 'Delivery in 2-8 business days.', 0, ' Samsung Galaxy Tab 2 P3100 Wi-Fi, 3G, 16 GB (Titanium Silver)\n', '2013-01-23 19:36:44'),
(33, 31, 15230, 'http://gud2buy.com/mp3-players-and-ipods/protection-plans/macbook-air-mac-book-pro-apple-care-protect', 'Delivery in 2-8 business days.', 0, ' MacBook Air / 13" MacBook Pro - AppleCare Protection Plan\n', '2013-01-23 22:36:41'),
(33, 35, 149, 'http://gud2buy.com/mobiles-and-accessories/accessories/nokia-n-asha-302-rainbow-screen-guard', 'Delivery in 2-8 business days.', 0, ' Nokia N - Asha 302 (Rainbow Screen Guard)\n', '2013-01-30 13:52:03'),
(33, 36, 125, 'http://gud2buy.com/mobiles-and-accessories/accessories/nokia-n-asha-202-rainbow-screen-guard', 'Delivery in 2-8 business days.', 0, ' Nokia N - Asha 202 (Rainbow Screen Guard)\n', '2013-01-30 13:53:08'),
(33, 39, 149, 'http://gud2buy.com/mobiles-and-accessories/accessories/blackberry-9000-bold-rainbow-screen-guard', 'Delivery in 2-8 business days.', 0, ' BlackBerry - 9000 Bold (Rainbow Screen Guard)\n', '2013-02-12 22:56:51'),
(33, 40, 250, 'http://gud2buy.com/computers/computer-accessories/memorycards/sandisk-micro-sdhc-card-4GB', 'Delivery in 2-8 business days.', 0, ' SanDisk microSD Card 4GB Mobile RTL PR\n', '2013-02-19 17:34:11'),
(33, 43, 31880, 'http://gud2buy.com/mobiles-and-accessories/mobiles/samsung-galaxy-s3', 'Delivery in 2-8 business days.', 0, ' Samsung Galaxy S3 GT-I9300 WHITE\n', '2013-02-21 16:35:13'),
(33, 48, 31880, 'http://gud2buy.com/mobiles-and-accessories/mobiles/samsung-galaxy-s3', 'Delivery in 2-8 business days.', 0, ' Samsung Galaxy S3 GT-I9300 WHITE\n', '2013-02-24 10:53:19'),
(33, 49, 1500, 'http://gud2buy.com/mp3-players-and-ipods/ipod-accessories/apple usb-power-adapter', 'Delivery in 2-8 business days.', 0, ' Apple USB Power Adapter (MB707ZM/B)\n', '2013-02-24 10:57:22'),
(33, 50, 149, 'http://gud2buy.com/mobiles-and-accessories/accessories/apple-iphone-4-4s-rainbow-screen-guard', 'Delivery in 2-8 business days.', 0, ' Apple iPHONE 4 / 4s (Rainbow Screen Guard)\n', '2013-02-24 10:58:27'),
(33, 51, 45500, 'http://gud2buy.com/mobiles-and-accessories/mobiles/apple-iphone5-16gb', 'Delivery in 2-8 business days.', 0, ' Apple iPhone 5 16GB\n', '2013-02-24 13:13:23'),
(33, 20, 16465, 'http://gud2buy.com/mobiles-and-accessories/mobiles/sony-xperia-j-black-mobile', 'Delivery in 2-8 business days.', 0, ' Sony Xperia J (Black)\n', '2013-02-24 16:40:26'),
(33, 55, 149, 'http://gud2buy.com/mobiles-and-accessories/accessories/nokia-n-lumia-710-rainbow-screen-guard', 'Delivery in 2-8 business days.', 0, ' Nokia N - Lumia 710 (Rainbow Screen Guard)\n', '2013-02-28 02:05:18'),
(33, 56, 43480, 'http://gud2buy.com/mobiles-and-accessories/mobiles/blackberry-z10', 'Delivery in 2-8 business days.', 0, ' BlackBerry Z10(Black)\n', '2013-02-28 02:32:50'),
(33, 59, 530, 'http://gud2buy.com/computers/computer-accessories/pendrives/sandisk-cz53-cruzer-pop-16gb-pendrive-tribal', 'Delivery in 2-8 business days.', 0, ' Sandisk CZ53 Cruzer Pop 16GB Pendrive - Tribal\n', '2013-02-28 19:26:09'),
(33, 73, 149, 'http://gud2buy.com/mobiles-and-accessories/accessories/samsung-i9300-galaxy-s-3-rainbow-screen-guard', 'Delivery in 2-8 business days.', 0, ' Samsung i9300 Galaxy S 3 (Rainbow Screen Guard)\n', '2013-03-19 14:59:59'),
(33, 78, 21500, 'http://gud2buy.com/mobiles-and-accessories/mobiles/samsung-galaxy-grand-duos-i9082-Elegant-white', 'Delivery in 2-8 business days.', 0, ' Samsung Galaxy Grand Duos I9082 (Elegant White)\n', '2013-03-19 19:06:30'),
(33, 79, 699, 'http://gud2buy.com/computers/computer-accessories/memorycards/transcend-memory-card-microsd-16gb-class-4-1', 'Delivery in 2-8 business days.', 0, ' Transcend Memory Card MicroSD 16GB Class 4\n', '2013-03-19 19:15:29'),
(33, 81, 19970, 'http://gud2buy.com/gaming/gaming-consoles/sony-ps-vita-wi-fi', 'Delivery in 2-8 business days.', 0, ' Sony PS Vita (Wi-Fi)\n', '2013-03-21 16:51:04'),
(33, 86, 249, 'http://gud2buy.com/mobiles-and-accessories/accessories/micromax-canvas-hd-a116-rainbow-screen-guard', 'Delivery in 2-8 business days.', 0, ' Micromax Canvas HD A116 (Rainbow Screen Guard)\n', '2013-03-28 22:46:57');

-- --------------------------------------------------------

--
-- Table structure for table `healthkart`
--

CREATE TABLE IF NOT EXISTS `healthkart` (
  `WebsiteID` int(10) NOT NULL,
  `ProductId` int(10) NOT NULL,
  `Price` int(10) NOT NULL,
  `Link` text NOT NULL,
  `DeliveryTime` text NOT NULL,
  `EMI` int(1) NOT NULL DEFAULT '0',
  `Title` text NOT NULL,
  `Time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `healthkart`
--

INSERT INTO `healthkart` (`WebsiteID`, `ProductId`, `Price`, `Link`, `DeliveryTime`, `EMI`, `Title`, `Time`) VALUES
(47, 2, 175, 'http://www.healthkart.comhttp://www.healthkart.com/product/vaseline-healthy-white-triple-lightening-body-lotion-spf-24/BTY210?productReferrerId=1&productPosition=1/1', '1-3 Working days.', 0, 'Vaseline Healthy White Triple Lightening Body Lotion SPF 24', '2013-01-18 17:35:09'),
(47, 3, 4333, 'http://www.healthkart.com/product/muscle-infusion-black/NUT593?productReferrerId=1', '1-3 Working days.', 0, 'Muscle Infusion Black', '2013-01-18 17:36:07'),
(47, 8, 4641, 'http://www.healthkart.comhttp://www.healthkart.com/product/muscle-infusion-black/NUT593?productReferrerId=1&productPosition=1/1', '1-3 Working days.', 0, 'Muscle Infusion Black', '2013-01-18 20:48:56'),
(47, 11, 34, 'http://www.healthkart.com/product/johnson-s-baby-soap/BAB099?productReferrerId=1', '1-3 Working days.', 0, 'Johnsons Baby Soap', '2013-01-19 15:32:40'),
(47, 14, 179, 'http://www.healthkart.com/product/chicco-apple-banana-flavored-toothpaste/BAB356?productReferrerId=1', '1-3 Working days.', 0, 'Chicco Apple & Banana Flavored Toothpaste', '2013-01-23 19:24:49'),
(47, 21, 970, 'http://www.healthkart.com/product/p161br1f-fastrack/EYE407?productReferrerId=1', '1-3 Working days.', 0, 'P161BR1F,Fastrack', '2013-01-23 19:40:14'),
(47, 28, 750, 'http://www.healthkart.com/product/skin-care-unisex-salon-beauty-service-packages-for-women/SER153?productReferrerId=1', '1-3 Working days.', 0, 'Skin Care Unisex Salon Beauty Service Packages for Women', '2013-01-23 22:17:09'),
(47, 30, 356, 'http://www.healthkart.com/product/herbal-hills-wheat-o-power-lemon-flavour/NUT2490?productReferrerId=1', '1-3 Working days.', 0, 'Herbal Hills Wheat-O-Power Lemon Flavour', '2013-01-23 22:31:54'),
(47, 37, 1499, 'http://www.healthkart.com/product/reebok-sunglass/EYE583?productReferrerId=1', '1-3 Working days.', 0, 'Reebok Sunglass', '2013-02-10 23:58:15'),
(47, 40, 1230, 'http://www.healthkart.com/product/braun-mobile-shaver-m60b/BTY779?productReferrerId=1', '1-3 Working days.', 0, 'Braun Mobile Shaver M60B', '2013-02-19 17:34:09'),
(47, 41, 140, 'http://www.healthkart.com/product/tynor-knee-cap-comfeel-single-d-23/TYNOR005?productReferrerId=1', '1-3 Working days.', 0, 'Tynor Knee Cap Comfeel (Single) (D 23)', '2013-02-19 17:34:49'),
(47, 42, 347, 'http://www.healthkart.com/product/flamingo-below-knee-stockings/MED055?productReferrerId=1', '1-3 Working days.', 0, 'Flamingo Below Knee Stockings', '2013-02-19 17:35:19'),
(47, 43, 1680, 'http://www.healthkart.com/product/makari-beauty-whitening-milk-*free-makari-sample-bag*/MKRI01?productReferrerId=1', '1-3 Working days.', 0, 'Makari Beauty Whitening Milk (*Free Makari Sample Bag*)', '2013-02-21 16:35:13'),
(47, 49, 50, 'http://www.healthkart.comhttp://www.healthkart.com/product/durex-apple-condom/PS001?productReferrerId=1&productPosition=1/1', '1-3 Working days.', 0, 'Durex Apple Condom', '2013-02-24 10:57:22'),
(47, 57, 20, 'http://www.healthkart.com/product/kohinoor-rose-condom/KOH001?productReferrerId=1', '1-3 Working days.', 0, 'Kohinoor Rose Condom', '2013-02-28 03:54:01'),
(47, 58, 100, 'http://www.healthkart.comhttp://www.healthkart.com/product/durex-flavours-condom/PS002?productReferrerId=1&productPosition=1/1', '1-3 Working days.', 0, 'Durex Flavours Condom', '2013-02-28 03:55:26'),
(47, 71, 1064, 'http://www.healthkart.com/product/harbinger-pro-wash-and-dry-gloves/SPT216?productReferrerId=1', '1-3 Working days.', 0, 'Harbinger Pro Wash and Dry Gloves', '2013-03-07 11:01:15'),
(47, 81, 2635, 'http://www.healthkart.com/product/philips-hp4997-hair-dryer-*free-sony-head-phones*/PHILI20?productReferrerId=1', '1-3 Working days.', 0, 'Philips HP4997 Hair Dryer (*Free Sony Head Phones*)', '2013-03-21 16:51:05'),
(47, 90, 550, 'http://www.healthkart.com/product/m.d.-eye-care-laser-centre:eye-treatments/SER141?productReferrerId=1', '1-3 Working days.', 0, 'M.D. Eye Care & Laser Centre:Eye Treatments', '2013-04-05 19:26:19'),
(47, 92, 1230, 'http://www.healthkart.comhttp://www.healthkart.com/product/braun-mobile-shaver-m60b/BTY779?productReferrerId=1&productPosition=1/1', '1-3 Working days.', 0, 'Braun Mobile Shaver M60B', '2013-07-04 02:48:46'),
(47, 96, 1350, 'http://www.healthkart.comhttp://www.healthkart.com/product/nature-s-bounty-original-apple-cider-vinegar/NUT2971?productReferrerId=1&productPosition=1/1', '1-3 Working days.', 0, 'Natures Bounty Original Apple Cider Vinegar', '2013-07-04 16:06:12');

-- --------------------------------------------------------

--
-- Table structure for table `homeshop18`
--

CREATE TABLE IF NOT EXISTS `homeshop18` (
  `WebsiteID` int(10) NOT NULL,
  `ProductId` int(10) NOT NULL,
  `Price` int(10) NOT NULL,
  `Link` text NOT NULL,
  `DeliveryTime` text NOT NULL,
  `EMI` int(1) NOT NULL DEFAULT '1',
  `Title` text NOT NULL,
  `Time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `homeshop18`
--

INSERT INTO `homeshop18` (`WebsiteID`, `ProductId`, `Price`, `Link`, `DeliveryTime`, `EMI`, `Title`, `Time`) VALUES
(6, 1, 3150, 'http://www.homeshop18.com/samsung-metro-duos-c3322-mobile-phone/mobiles-accessories/mobiles/product:28138101/cid:3027/?pos=1\n', 'Delivered in 10-11 Working Days.', 1, 'Samsung Metro Duos C3322 Mobile Phone', '2013-01-18 16:53:54'),
(6, 2, 5989, 'http://www.homeshop18.com/samsung-galaxy-y-duos-lite-s5302-mobile-phone-white/mobiles-accessories/mobiles/product:30258862/cid:3027/?pos=1\n', 'Delivered in 10-11 Working Days.', 1, 'Samsung Galaxy Y Duos Lite S5302 Mobile Phone - White', '2013-01-18 17:35:01'),
(6, 3, 5990, 'http://www.homeshop18.com/samsung-galaxy-y-duos-lite-s5302-mobile-phone-black/mobiles-accessories/mobiles/product:30450918/cid:3027/?pos=1\n', 'Delivered in 10-11 Working Days.', 1, 'Samsung Galaxy Y Duos Lite S5302 Mobile Phone - Black', '2013-01-18 17:36:03'),
(6, 8, 13190, 'http://www.homeshop18.com/samsung-galaxy-duos-s7562-mobile-phone-white/mobiles-accessories/mobiles/product:30306986/cid:3027/?pos=1\n', 'Delivered in 10-11 Working Days.', 1, 'Samsung Galaxy S Duos S7562 Mobile Phone - White', '2013-01-18 20:48:46'),
(6, 9, 37989, 'http://www.homeshop18.com/apple-iphone-4s-mobile-phone-16gb-white/mobiles-accessories/mobiles/product:30375078/cid:3027/\n', 'Delivered in 10-11 Working Days.', 1, 'Apple iPhone 4S Mobile Phone 16GB - White', '2013-01-18 21:16:03'),
(6, 10, 4149, 'http://www.homeshop18.com/nokia-asha-305-mobile-phone-dark-grey/mobiles-accessories/mobiles/product:30481618/cid:3027/?pos=1\n', 'Delivered in 10-11 Working Days.', 1, 'Nokia Asha 305 Mobile Phone - Dark Grey', '2013-01-19 01:05:42'),
(6, 11, 185, 'http://www.homeshop18.com/liquid-soap-200ml-pigeon/kids-baby/baby/product:30148928/cid:3469/\n', 'Delivered in 10-11 Working Days.', 1, 'Liquid Soap 200ml by Pigeon', '2013-01-19 15:32:32'),
(6, 12, 35500, 'http://www.homeshop18.com/samsung-galaxy-note-ii-n7100-mobile-phone-white-bhm1100/mobiles-accessories/mobiles/product:30325056/cid:3027/\n', 'Delivered in 10-11 Working Days.', 1, 'Samsung Galaxy Note II N7100 Mobile Phone - White + BHM1100', '2013-01-19 15:34:08'),
(6, 13, 29500, 'http://www.homeshop18.com/samsung-galaxy-s3-i9300-mobile-phone-16gb-16gb-card/mobiles-accessories/mobiles/product:29512059/cid:3027/?pos=1\n', 'Delivered in 10-11 Working Days.', 1, 'Samsung Galaxy S3 i9300 Mobile Phone - 16GB + 16GB Card', '2013-01-23 19:22:46'),
(6, 14, 45500, 'http://www.homeshop18.com/apple-iphone-5-mobile-phone-16gb-black/mobiles-accessories/mobiles/product:30453600/cid:3027/?pos=1\n', 'Delivered in 10-11 Working Days.', 1, 'Apple iPhone 5 Mobile Phone 16GB - Black', '2013-01-23 19:24:43'),
(6, 15, 18764, 'http://www.homeshop18.com/nokia-lumia-800-mobile-phone-black/mobiles-accessories/mobiles/product:28679879/cid:3027/?pos=1\n', 'Delivered in 10-11 Working Days.', 1, 'Nokia Lumia 800 Mobile Phone - Black', '2013-01-23 19:27:39'),
(6, 16, 449, 'http://www.homeshop18.com/philips-shs390-backneck-headphone-shs-390/electronics/audio-video-players/product:27738873/cid:3230/?pos=1\n', 'Delivered in 10-11 Working Days.', 1, 'Philips SHS390 Backneck Headphone SHS 390', '2013-01-23 19:29:58'),
(6, 17, 1675, 'http://www.homeshop18.com/netgear-wgr614-n150-wireless-router/computer-peripherals/networking-equipment/product:27915765/cid:3299/?pos=1\n', 'Delivered in 10-11 Working Days.', 1, 'Netgear WGR614 N150 Wireless Router', '2013-01-23 19:31:14'),
(6, 18, 1729, 'http://www.homeshop18.com/huawei-e303-data-card/mobiles-accessories/data-cards/product:30479770/cid:8923/?pos=1\n', 'Delivered in 10-11 Working Days.', 1, 'Huawei E303 Data Card', '2013-01-23 19:33:06'),
(6, 19, 347, 'http://www.homeshop18.com/iaccy-ssgt006-screenguard-samsung-galaxy-tab-2-p3100/computer-peripherals/tablet-accessories/product:30125208/cid:14895/?pos=1\n', 'Delivered in 10-11 Working Days.', 1, 'iAccy SSGT006 Screenguard for Samsung Galaxy Tab 2 P3100', '2013-01-23 19:36:36'),
(6, 20, 16490, 'http://www.homeshop18.com/sony-xperia-j-st26i-mobile-phone-black/mobiles-accessories/mobiles/product:30354994/cid:3027/?pos=1\n', 'Delivered in 10-11 Working Days.', 1, 'Sony Xperia J ST26i Mobile Phone - Black', '2013-01-23 19:38:00'),
(6, 21, 399, 'http://www.homeshop18.com/bags-b4b-sp7ib-sp25p-tote-bags-indigo-blue-pink/accessories/women/product:30371226/cid:15119/?pos=1\n', 'Delivered in 10-11 Working Days.', 1, 'Be for bags B4B-SP7IB-SP25P -Tote Bags Indigo-blue-pink', '2013-01-23 19:40:07'),
(6, 22, 399, 'http://www.homeshop18.com/bags-b4b-sp7ib-sp25p-tote-bags-indigo-blue-pink/accessories/women/product:30371226/cid:15119/?pos=1\n', 'Delivered in 10-11 Working Days.', 1, 'Be for bags B4B-SP7IB-SP25P -Tote Bags Indigo-blue-pink', '2013-01-23 19:42:37'),
(6, 24, 33900, 'http://www.homeshop18.com/nikon-d5100-18-55mm-vr-dslr-camera/camera-camcorders/digital-slrs/product:16513675/cid:3188/\n', 'Delivered in 10-11 Working Days.', 1, 'Nikon D5100 with 18-55mm VR DSLR Camera', '2013-01-23 19:45:00'),
(6, 25, 5799, 'http://www.homeshop18.com/micromax-superfone-a87-ninja-4-mobile-phone/mobiles-accessories/mobiles/product:30269830/cid:3027/?pos=1\n', 'Delivered in 10-11 Working Days.', 1, 'Micromax Superfone A87 Ninja 4 Mobile Phone', '2013-01-23 20:11:57'),
(6, 26, 1247, 'http://www.homeshop18.com/sandisk-16gb-cruzer-blade-pen-drive-16gb-microsd-card/computer-peripherals/storage-devices/product:30502829/cid:8907/?pos=1\n', 'Delivered in 10-11 Working Days.', 1, 'Sandisk 16GB Cruzer Blade Pen Drive + 16GB MicroSD Card', '2013-01-23 21:45:52'),
(6, 27, 1025, 'http://www.homeshop18.com/combo-nypc-watch-foce-sunglasses-men-6/watches/combos/product:30379430/cid:15409/?pos=1\n', 'Delivered in 10-11 Working Days.', 1, 'Combo of NYPC Watch & Foce Sunglasses for Men   - 6', '2013-01-23 22:15:42'),
(6, 32, 1006, 'http://www.homeshop18.com/aigo-2gb-usb-flash-drive-model-p659/computer-peripherals/storage-devices/product:36080/cid:8907/?pos=1\n', 'Delivered in 10-11 Working Days.', 1, 'Aigo 2GB USB Flash Drive Model No: P659', '2013-01-28 19:32:41'),
(6, 34, 31129, 'http://www.homeshop18.com/nokia-lumia-900-mobile-phone-black/mobiles-accessories/mobiles/product:30284060/cid:3027/?pos=1\n', 'Delivered in 10-11 Working Days.', 1, 'Nokia Lumia 900 Mobile Phone - Black', '2013-01-30 13:49:27'),
(6, 36, 3899, 'http://www.homeshop18.com/nokia-asha-202-mobile-phone-black/mobiles-accessories/mobiles/product:30129486/cid:3027/?pos=1\n', 'Delivered in 10-11 Working Days.', 1, 'Nokia Asha 202 Mobile Phone - Black', '2013-01-30 13:52:59'),
(6, 37, 3500, 'http://www.homeshop18.com/van-heusen-unisex-sunglasses-vh204-c1-gun-metal/accessories/men/product:30311666/cid:15111/\n', 'Delivered in 10-11 Working Days.', 1, 'Van Heusen Unisex Sunglasses - VH204-C1-Gun-Metal', '2013-02-10 23:58:07'),
(6, 39, 23499, 'http://www.homeshop18.com/blackberry-bold-9790-mobile-phone-black/mobiles-accessories/mobiles/product:30168158/cid:3027/\n', 'Delivered in 10-11 Working Days.', 1, 'Blackberry Bold 9790 Mobile Phone - Black', '2013-02-12 22:56:49'),
(6, 40, 9690, 'http://www.homeshop18.com/intex-aqua-5-android-mobile-phone-white/mobiles-accessories/mobiles/product:30410622/cid:3027/\n', 'Delivered in 10-11 Working Days.', 1, 'Intex Aqua 5 Android Mobile Phone - White', '2013-02-19 17:34:00'),
(6, 41, 385, 'http://www.homeshop18.com/scratchgard-antifingerprint-nokia-e71-screen-protector/mobiles-accessories/accessories/product:29657497/cid:3042/\n', 'Delivered in 10-11 Working Days.', 1, 'Scratchgard Antifingerprint Nokia E71 Screen Protector', '2013-02-19 17:34:45'),
(6, 42, 385, 'http://www.homeshop18.com/scratchgard-antifingerprint-nokia-e71-screen-protector/mobiles-accessories/accessories/product:29657497/cid:3042/\n', 'Delivered in 10-11 Working Days.', 1, 'Scratchgard Antifingerprint Nokia E71 Screen Protector', '2013-02-19 17:35:16'),
(6, 43, 3150, 'http://www.homeshop18.com/samsung-metro-duos-c3322-mobile-phone/mobiles-accessories/mobiles/product:28138101/cid:3027/\n', 'Delivered in 10-11 Working Days.', 1, 'Samsung Metro Duos C3322 Mobile Phone', '2013-02-21 16:35:04'),
(6, 44, 449, 'http://www.homeshop18.com/molife-mobile-back-cover-m-mlp9132bk-samung-galaxy-plus-9001-black/mobiles-accessories/accessories/product:30143448/cid:3036/?pos=1\n', 'Delivered in 10-11 Working Days.', 1, 'Molife Mobile Back Cover M-MLP9132BK for Samung Galaxy S Plus 9001 - Black', '2013-02-21 17:29:24'),
(6, 46, 12379, 'http://www.homeshop18.com/nokia-lumia-610-mobile-phone/mobiles-accessories/mobiles/product:30103292/cid:3027/?pos=1\n', 'Delivered in 10-11 Working Days.', 1, 'Nokia Lumia 610 Mobile Phone', '2013-02-22 16:36:37'),
(6, 47, 34999, 'http://www.homeshop18.com/nokia-lumia-920-mobile-phone-white/mobiles-accessories/mobiles/product:30496867/cid:3027/?pos=1\n', 'Delivered in 10-11 Working Days.', 1, 'Nokia Lumia 920 Mobile Phone - White', '2013-02-22 16:43:39'),
(6, 48, 29500, 'http://www.homeshop18.com/samsung-galaxy-s3-i9300-mobile-phone-16gb-16gb-card/mobiles-accessories/mobiles/product:29512059/cid:3027/\n', 'Delivered in 10-11 Working Days.', 1, 'Samsung Galaxy S3 i9300 Mobile Phone - 16GB + 16GB Card', '2013-02-24 10:53:16'),
(6, 49, 29900, 'http://www.homeshop18.com/apple-ipad-mini-16gb-wifi-cellular/computer-peripherals/ipads-tablets/product:30409546/cid:8937/\n', 'Delivered in 10-11 Working Days.', 1, 'Apple iPad Mini 16GB WiFi + Cellular', '2013-02-24 10:57:15'),
(6, 50, 37989, 'http://www.homeshop18.com/apple-iphone-4s-mobile-phone-16gb-black/mobiles-accessories/mobiles/product:30375076/cid:3027/?pos=1\n', 'Delivered in 10-11 Working Days.', 1, 'Apple iPhone 4S Mobile Phone 16GB - Black', '2013-02-24 10:58:20'),
(6, 51, 45500, 'http://www.homeshop18.com/apple-iphone-5-mobile-phone-16gb-black/mobiles-accessories/mobiles/product:30493319/cid:3027/\n', 'Delivered in 10-11 Working Days.', 1, 'Apple iPhone 5 Mobile Phone 16GB - Black', '2013-02-24 13:13:21'),
(6, 53, 65627, 'http://www.homeshop18.com/sony-bravia-klv-46cx520-46-full-hd-lcd-tv/electronics/tv-accessories/product:29959729/cid:3240/?pos=1\n', 'Delivered in 10-11 Working Days.', 1, 'Sony Bravia KLV-46CX520 46'' Full HD LCD TV', '2013-02-24 16:38:35'),
(6, 54, 2450, 'http://www.homeshop18.com/netgear-jwnr2000-n300-wifi-wireless-range-max-router/computer-peripherals/networking-equipment/product:27915759/cid:3299/?pos=1\n', 'Delivered in 10-11 Working Days.', 1, 'Netgear JWNR2000 N300 WiFi Wireless Range Max Router', '2013-02-25 19:02:57'),
(6, 55, 12999, 'http://www.homeshop18.com/nokia-lumia-710-mobile-phone/mobiles-accessories/mobiles/product:28679871/cid:3027/?pos=1\n', 'Delivered in 10-11 Working Days.', 1, 'Nokia Lumia 710 Mobile Phone', '2013-02-28 02:05:11'),
(6, 56, 45000, 'http://www.homeshop18.com/blackberry-z10-mobile-phone-white-pre-booking/mobiles-accessories/mobiles/product:30504705/cid:3027/?pos=1\n', 'Delivered in 10-11 Working Days.', 1, 'BlackBerry Z10 Mobile Phone - White (Pre Booking)', '2013-02-28 02:32:45'),
(6, 58, 255, 'http://www.homeshop18.com/moods-pleasure-packs/health-beauty/contraceptives/product:27738653/cid:3473/\n', 'Delivered in 10-11 Working Days.', 1, 'Moods Pleasure Packs', '2013-02-28 03:55:19'),
(6, 35, 6284, 'http://www.homeshop18.com/nokia-asha-302-mobile-phone/mobiles-accessories/mobiles/product:28981027/cid:3027/?pos=1\n', 'Delivered in 10-11 Working Days.', 1, 'Nokia Asha 302 Mobile Phone', '2013-02-28 04:25:22'),
(6, 59, 560, 'http://www.homeshop18.com/sandisk-sdcz-52-16gb-pendrive/computer-peripherals/storage-devices/product:29922271/cid:8907/?pos=1\n', 'Delivered in 10-11 Working Days.', 1, 'Sandisk SDCZ 52 16GB Pendrive', '2013-02-28 19:26:03'),
(6, 60, 361, 'http://www.homeshop18.com/sony-8gb-pendrive/computer-peripherals/storage-devices/product:219761/cid:8905/?pos=1\n', 'Delivered in 10-11 Working Days.', 1, 'Sony 8GB Pendrive', '2013-02-28 19:27:00'),
(6, 61, 390, 'http://www.homeshop18.com/sony-usb-micro-vault-tiny-8gb-pendrive/computer-peripherals/storage-devices/product:27744637/cid:8905/?pos=1\n', 'Delivered in 10-11 Working Days.', 1, 'Sony USB Micro Vault TINY 8GB Pendrive', '2013-02-28 19:28:12');

-- --------------------------------------------------------

--
-- Table structure for table `indiaplaza`
--

CREATE TABLE IF NOT EXISTS `indiaplaza` (
  `WebsiteID` int(10) NOT NULL,
  `ProductId` int(10) NOT NULL,
  `Price` int(10) NOT NULL,
  `Link` text NOT NULL,
  `DeliveryTime` text NOT NULL,
  `EMI` int(1) NOT NULL DEFAULT '1',
  `Title` text NOT NULL,
  `Time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `indiatimes`
--

CREATE TABLE IF NOT EXISTS `indiatimes` (
  `WebsiteID` int(10) NOT NULL,
  `ProductId` int(10) NOT NULL,
  `Price` int(10) NOT NULL,
  `Link` text NOT NULL,
  `DeliveryTime` text NOT NULL,
  `EMI` int(1) NOT NULL DEFAULT '1',
  `Title` text NOT NULL,
  `Time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `infibeam`
--

CREATE TABLE IF NOT EXISTS `infibeam` (
  `WebsiteID` int(10) NOT NULL,
  `ProductId` int(10) NOT NULL,
  `Price` int(10) NOT NULL,
  `Link` text NOT NULL,
  `DeliveryTime` text NOT NULL,
  `EMI` int(1) NOT NULL DEFAULT '0',
  `Title` text NOT NULL,
  `Time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `infibeam`
--

INSERT INTO `infibeam` (`WebsiteID`, `ProductId`, `Price`, `Link`, `DeliveryTime`, `EMI`, `Title`, `Time`) VALUES
(2, 1, 12590, 'http://www.infibeam.com/Mobiles/i-Samsung-Galaxy-S-Duos-Smartphone/P-E-M-Samsung-Galxy-S-Duos.html?id=White#variantId=P-E-M-Samsung-Galxy-S-Duos-White', 'Delivered in 2-3 business days.', 0, 'Samsung Galaxy S Duos S7562 (White)', '2013-01-18 16:53:51'),
(2, 2, 12590, 'http://www.infibeam.com/Mobiles/i-Samsung-Galaxy-S-Duos-Smartphone/P-E-M-Samsung-Galxy-S-Duos.html?id=White#variantId=P-E-M-Samsung-Galxy-S-Duos-White', 'Delivered in 2-3 business days.', 0, 'Samsung Galaxy S Duos S7562 (White)', '2013-01-18 17:34:57'),
(2, 3, 449, 'http://www.infibeam.com/Mobile_Accessories/i-Amzer-Shellster-Polycarbonate-Samsung-Case/P-E-MA-Amzer-94852.html?id=BlackWhite', 'Delivered in 2-3 business days.', 0, 'Amzer Silicone-Perforated PolyCarbonate Hybrid Case - Black/White - Samsung Galaxy Y Duos GT-S6102 (Black White)', '2013-01-18 17:36:00'),
(2, 4, 680, 'http://www.infibeam.com/Books/modern-approach-verbal-non-verbal-reasoning-aggarwal/9788121905510.html#variantId=P-M-B-9788121905510', 'Delivered in 2-3 business days.', 0, 'A Modern Approach To Verbal & Non Verbal Reasoning [Paperback]', '2013-01-18 20:24:31'),
(2, 0, 9567, 'http://www.infibeam.com/Books/next-laser-printer-lambert-m-surhone/9786133677081.html#variantId=P-M-B-9786133677081', 'Delivered in 2-3 business days.', 0, 'Next Laser Printer [Paperback]', '2013-01-18 20:28:42'),
(2, 6, 573, 'http://www.infibeam.com/Books/modern-approach-verbal-non-verbal-reasoning-aggarwal/9788121905510.html', 'Delivered in 2-3 business days.', 0, 'A Modern Approach To Verbal & Non Verbal Reasoning [Paperback]', '2013-01-18 20:29:14'),
(2, 8, 12590, 'http://www.infibeam.com/Mobiles/i-Samsung-Galaxy-S-Duos-Smartphone/P-E-M-Samsung-Galxy-S-Duos.html?id=Black#variantId=P-E-M-Samsung-Galxy-S-Duos-Black', 'Delivered in 2-3 business days.', 0, 'Samsung Galaxy S Duos S7562 (Black)', '2013-01-18 20:48:43'),
(2, 9, 37299, 'http://www.infibeam.com/Mobiles/i-Apple-iPhone-4S-16GB-SmartPhone/P-E-M-Apple-iPhone-4S-16GB.html?id=Black', 'Delivered in 2-3 business days.', 0, 'Apple iPhone 4S-16GB (Black)', '2013-01-18 21:16:01'),
(2, 10, 4209, 'http://www.infibeam.com/Mobiles/i-Nokia-Asha-305-Android-Phone/P-E-M-Nokia-Asha-305.html?id=Grey', 'Delivered in 2-3 business days.', 0, 'Nokia Asha 305 Dual SIM (Grey)', '2013-01-19 01:05:39'),
(2, 11, 236, 'http://www.infibeam.com/Books/info/Gracey-Sweedy/Soap-Box-Babies/059531421X.html', 'Delivered in 2-3 business days.', 0, 'Soap Box Babies [Paperback]', '2013-01-19 15:32:30'),
(2, 12, 12590, 'http://www.infibeam.com/Mobiles/i-Samsung-Galaxy-S-Duos-Smartphone/P-E-M-Samsung-Galxy-S-Duos.html?id=White#variantId=P-E-M-Samsung-Galxy-S-Duos-White', 'Delivered in 2-3 business days.', 0, 'Samsung Galaxy S Duos S7562 (White)', '2013-01-19 15:34:07'),
(2, 13, 1339, 'http://www.infibeam.com/Mobile_Accessories/i-Samsung-Capacitive-Pen-Galaxy-S3/P-E-MA-Samsung-ETC-S10CSEGINU.html?id=Silver', 'Delivered in 2-3 business days.', 0, 'Samsung Capacitive Pen for Galaxy S3 (Silver)', '2013-01-23 19:22:42'),
(2, 14, 44500, 'http://www.infibeam.com/Mobiles/i-Apple-iPhone-5-16GB-Smartphone/P-E-M-Apple-iPhone-5-16GB.html?id=White', 'Delivered in 2-3 business days.', 0, 'Apple iPhone 5 - 16GB (White)', '2013-01-23 19:24:40'),
(2, 15, 4409, 'http://www.infibeam.com/Mobiles/i-Nokia-Asha-305-Android-Phone/P-E-M-Nokia-Asha-305.html?id=Red#variantId=P-E-M-Nokia-Asha-305-Red', 'Delivered in 2-3 business days.', 0, 'Nokia Asha 305 Dual SIM (Blue)', '2013-01-23 19:27:35'),
(2, 16, 429, 'http://www.infibeam.com/Headphone/i-Philips-Neckband-Headphone-SHS390-98/P-E-H-Philips-SHS390-98.html?id=0-Black', 'Delivered in 2-3 business days.', 0, 'Philips Headphone SHS390-98', '2013-01-23 19:29:56'),
(2, 17, 1410, 'http://www.infibeam.com/Networking/i-Netgear-N150-Wireless-Router/P-CA-NW-Netgear-JNR1010.html?id=White', 'Delivered in 2-3 business days.', 0, 'Netgear N150 Wireless Router-JNR1010 (White)', '2013-01-23 19:31:09'),
(2, 18, 1625, 'http://www.infibeam.com/Accessories/i-Huawei-3G-E-303C-Dongle/P-CA-A-Huawei-E-303C.html?id=White', 'Delivered in 2-3 business days.', 0, 'Huawei E 303C 3G DataCard (White)', '2013-01-23 19:33:04'),
(2, 19, 236, 'http://www.infibeam.com/Portable_Accessories/i-Samsung-Tab2-310-Screen-Protector/P-E-PA-3G-Galaxy-Tab-2-P3100-7-inch.html?id=0-White', 'Delivered in 2-3 business days.', 0, '3G Samsung Galaxy Tab 2 (P3100) Screen Protector', '2013-01-23 19:36:36'),
(2, 20, 6749, 'http://www.infibeam.com/Mobiles/i-Sony-Xperia-Tipo-Android-SmartPhone/P-E-M-Sony-Xperia-Tipo.html?id=White#variantId=P-E-M-Sony-Xperia-Tipo-White', 'Delivered in 2-3 business days.', 0, 'Sony Xperia Tipo (White)', '2013-01-23 19:37:57'),
(2, 21, 1706, 'http://www.infibeam.com/Eyewear/i-Plastic-Black-Sunglasses-Women/P-A-EW-Fastrack-P177BK1FP.html?id=Black', 'Delivered in 2-3 business days.', 0, 'Fastrack Women Black Sunglasses (Black)', '2013-01-23 19:40:05'),
(2, 22, 1706, 'http://www.infibeam.com/Eyewear/i-Women-Pink-Sunglasses/P-A-EW-Fastrack-C048PK3F.html?id=Pink', 'Delivered in 2-3 business days.', 0, 'Fastrack Women Pink Sunglasses (Pink)', '2013-01-23 19:42:35'),
(2, 23, 16309, 'http://www.infibeam.com/Refrigerator/i-Samsung-210-Litres-Refrigerator/P-E-HA-Samsung-RR2115TABSU.html?id=Silver', 'Delivered in 2-3 business days.', 0, 'Samsung RR2115TABSU Single Door 210 Litres Refrigerator (Silver)', '2013-01-23 19:44:09'),
(2, 24, 1438, 'http://www.infibeam.com/Books/david-buschs-nikon-d5100-guide-digital-slr-photography-david-d-busch/9781435460850.html#variantId=P-M-B-9781435460850', 'Delivered in 2-3 business days.', 0, 'David Buschs Nikon D5100 Guide to Digital SLR Photography [Paperback]', '2013-01-23 19:45:00'),
(2, 25, 154, 'http://www.infibeam.com/Books/one-liner-approach-general-knowledge-marathi-kiran-institute-career/C0CD3A57C1A0F.html#variantId=P-M-B-C0CD3A57C1A0F', 'Delivered in 2-3 business days.', 0, 'One Liner Approach General Knowledge [Paperback]', '2013-01-23 20:11:52'),
(2, 26, 522, 'http://www.infibeam.com/Pen_Drives/i-SanDisk-Cruzer-Switch-Pen-Drive/P-CA-PD-SanDisk-SDCZ52-016G-A11.html?id=Multicolor-Set-1', 'Delivered in 2-3 business days.', 0, 'SanDisk Cruzer Switch Pen Drive(16 GB) (Multicolor,16 GB)', '2013-01-23 21:45:52'),
(2, 27, 799, 'http://www.infibeam.com/Watches/i-Men-Analog-Fashion-Golden-Watch/P-A-W-NYPC-FPTT004.html', 'Delivered in 2-3 business days.', 0, 'Men Analog Fashion Golden Watch (FPTT004)', '2013-01-23 22:15:41'),
(2, 28, 1706, 'http://www.infibeam.com/Watches/i-Ladies-Special-Dial-Fashion-Watch/P-A-W-Fastrack-N2262SL02.html', 'Delivered in 2-3 business days.', 0, 'Fastrack Girls Analog Fashion Watch', '2013-01-23 22:17:02'),
(2, 29, 5999, 'http://www.infibeam.com/Cameras/i-Canon-Powershot-A2300-Digital-Camera/P-E-C-Canon-A2300.html?id=Black', 'Delivered in 2-3 business days.', 0, 'Canon PowerShot A2300 (Black)', '2013-01-23 22:27:12'),
(2, 31, 717, 'http://www.infibeam.com/Books/apple-macbook-pro-string-publishing/9786139070602.html#variantId=P-M-B-9786139070602', 'Delivered in 2-3 business days.', 0, 'Apple Macbook Pro [Paperback]', '2013-01-23 22:36:28'),
(2, 32, 1639, 'http://www.infibeam.com/Portable_Electronics/i-Philips-Mix-2GB-MP3-Player/P-E-PE-Philips-SA3MXX02K-97.html?id=2-Blue', 'Delivered in 2-3 business days.', 0, 'Philips Mix 2GB MP3 Player (2 GB,Blue)', '2013-01-28 19:32:42'),
(2, 33, 540, 'http://www.infibeam.com/Pen_Drives/i-Kingston-DataTraveler-Generation-3-32GB/P-CA-PD-Kingston-G3.html?id=White-Set-4', 'Delivered in 2-3 business days.', 0, 'Kingston G3 Pendrive (White,16 GB)', '2013-01-28 19:39:44'),
(2, 34, 4409, 'http://www.infibeam.com/Mobiles/i-Nokia-Asha-305-Android-Phone/P-E-M-Nokia-Asha-305.html?id=Red#variantId=P-E-M-Nokia-Asha-305-Red', 'Delivered in 2-3 business days.', 0, 'Nokia Asha 305 Dual SIM (Blue)', '2013-01-30 13:49:25'),
(2, 35, 4409, 'http://www.infibeam.com/Mobiles/i-Nokia-Asha-305-Android-Phone/P-E-M-Nokia-Asha-305.html?id=Red#variantId=P-E-M-Nokia-Asha-305-Red', 'Delivered in 2-3 business days.', 0, 'Nokia Asha 305 Dual SIM (Blue)', '2013-01-30 13:51:56'),
(2, 36, 4409, 'http://www.infibeam.com/Mobiles/i-Nokia-Asha-305-Android-Phone/P-E-M-Nokia-Asha-305.html?id=Red#variantId=P-E-M-Nokia-Asha-305-Red', 'Delivered in 2-3 business days.', 0, 'Nokia Asha 305 Dual SIM (Blue)', '2013-01-30 13:52:58'),
(2, 38, 25029, 'http://www.infibeam.com/Mobiles/i-BlackBerry-Bold-9790-SmartPhone/P-E-M-BlackBerry-Bold-9790.html?id=Black', 'Delivered in 2-3 business days.', 0, 'BlackBerry Bold 9790 (Black)', '2013-02-12 22:56:02'),
(2, 39, 1016, 'http://www.infibeam.com/eBooks/blackberry-bold-dummies-dante-sarigumba-pdf-ebook-download/9780470579848-BEPDF.html#variantId=P-M-B-9780470579848-BEPDF', 'Delivered in 2-3 business days.', 0, 'BlackBerry Bold For Dummies [eBook]', '2013-02-12 22:56:48'),
(2, 41, 213, 'http://www.infibeam.com/Mobile_Accessories/i-Screen-Guard-Nokia-E71/P-E-MA-Fonokase-Nokia-E-71.html?id=White', 'Delivered in 2-3 business days.', 0, 'Fonokase Screen Guard for Nokia E71 (White)', '2013-02-19 17:34:45'),
(2, 42, 213, 'http://www.infibeam.com/Mobile_Accessories/i-Screen-Guard-Nokia-E71/P-E-MA-Fonokase-Nokia-E-71.html?id=White', 'Delivered in 2-3 business days.', 0, 'Fonokase Screen Guard for Nokia E71 (White)', '2013-02-19 17:35:16'),
(2, 44, 2150, 'http://www.infibeam.com/Mobiles/i-Samsung-Hero-E2232-Dual-SIM/P-E-M-Samsung-E2232.html?id=White', 'Delivered in 2-3 business days.', 0, 'Samung E2232 Hero (White)', '2013-02-21 17:29:19'),
(2, 45, 16375, 'http://www.infibeam.com/Mobiles/i-Samsung-Galaxy-Win-Android-Smartphone/P-E-M-Samsung-Galaxy-Win.html?id=White#variantId=P-E-M-Samsung-Galaxy-Win-White', 'Delivered in 2-3 business days.', 0, 'Samsung Galaxy Win Duos I8552 (Grand Quattro) (White)', '2013-02-22 08:13:48'),
(2, 46, 4409, 'http://www.infibeam.com/Mobiles/i-Nokia-Asha-305-Android-Phone/P-E-M-Nokia-Asha-305.html?id=Red#variantId=P-E-M-Nokia-Asha-305-Red', 'Delivered in 2-3 business days.', 0, 'Nokia Asha 305 Dual SIM (Blue)', '2013-02-22 16:36:35'),
(2, 47, 4409, 'http://www.infibeam.com/Mobiles/i-Nokia-Asha-305-Android-Phone/P-E-M-Nokia-Asha-305.html?id=Red#variantId=P-E-M-Nokia-Asha-305-Red', 'Delivered in 2-3 business days.', 0, 'Nokia Asha 305 Dual SIM (Blue)', '2013-02-22 16:43:33'),
(2, 50, 408, 'http://www.infibeam.com/eBooks/iphone-4s-dummies-edward-c-baig-epub-ebook-download/9781118317020-BEEPB.html#variantId=P-M-B-9781118317020-BEEPB', 'Delivered in 2-3 business days.', 0, 'iPhone 4S For Dummies [eBook]', '2013-02-24 10:58:18'),
(2, 51, 394, 'http://www.infibeam.com/Books/rough-guide-iphone-peter-buckley/9781409331131.html#variantId=P-M-B-9781409331131', 'Delivered in 2-3 business days.', 0, 'The Rough Guide to the iPhone (5) [Paperback]', '2013-02-24 13:13:19'),
(2, 52, 15499, 'http://www.infibeam.com/TVs/i-Samsung-22-Inch-LED-TVs/P-E-HE-Samsung-22ES5000.html?id=Black-22', 'Delivered in 2-3 business days.', 0, 'Samsung LED TVs 22ES5000 (Black,22)', '2013-02-24 16:35:33'),
(2, 53, 65899, 'http://www.infibeam.com/TVs/i-Samsung-46Inch-LED-TV-46EH5000/P-E-HE-Samsung-46EH5000.html?id=Black-46', 'Delivered in 2-3 business days.', 0, 'Samsung 46 Inch LED TV 46EH5000 (Black,46)', '2013-02-24 16:38:30'),
(2, 54, 1167, 'http://www.infibeam.com/Networking/i-Usb-Wireless-Adapter-Netgear/P-CA-NW-Netgear-WNA3100.html?id=Black#variantId=P-CA-NW-Netgear-WNA3100-Black', 'Delivered in 2-3 business days.', 0, 'N300 Wireless Usb Adapter WNA3100 (Black)', '2013-02-25 19:02:50'),
(2, 55, 4409, 'http://www.infibeam.com/Mobiles/i-Nokia-Asha-305-Android-Phone/P-E-M-Nokia-Asha-305.html?id=Red#variantId=P-E-M-Nokia-Asha-305-Red', 'Delivered in 2-3 business days.', 0, 'Nokia Asha 305 Dual SIM (Blue)', '2013-02-28 02:05:09'),
(2, 56, 14489, 'http://www.infibeam.com/Mobiles/i-BlackBerry-Z10-Touchscreen-Smartphone/P-E-M-BlackBerry-Z10.html?id=Black', 'Delivered in 2-3 business days.', 0, 'BlackBerry Z10 (Black)', '2013-02-28 02:32:43'),
(2, 58, 453, 'http://www.infibeam.com/Books/condoms-adrian-mindel/9780727912671.html#variantId=P-M-B-9780727912671', 'Delivered in 2-3 business days.', 0, 'Condoms [Paperback]', '2013-02-28 03:55:18'),
(2, 59, 526, 'http://www.infibeam.com/Pen_Drives/i-SanDisk-USB-Drive-4GB-Pen/P-CA-PD-SanDisk-CZ50.html?id=Black-Set-4', 'Delivered in 2-3 business days.', 0, 'SanDisk CZ50 Blade Pendrive (Black,16 GB)', '2013-02-28 19:25:59'),
(2, 60, 353, 'http://www.infibeam.com/Pen_Drives/i-Sony-Classic-4GB-Pen-Drive/P-CA-PD-Sony-USM4GN.html?id=Black-Set-2', 'Delivered in 2-3 business days.', 0, 'Sony Micro Vault Classic (Black,8 GB)', '2013-02-28 19:27:00'),
(2, 61, 379, 'http://www.infibeam.com/Pen_Drives/i-USM8GM-8GB-Sony-Pendrive/P-CA-PD-Sony-USM8GM.html?id=Black-Set-1', 'Delivered in 2-3 business days.', 0, 'Sony 8GB Micro Vault Tiny (Black,8 GB)', '2013-02-28 19:28:07'),
(2, 64, 471, 'http://www.infibeam.com/Books/info/Mario-Paz/Structural-Dynamics-Theory-and-Computation/1402076673.html', 'Delivered in 2-3 business days.', 0, 'Structural Dynamics: Theory and Computation [Hardcover]', '2013-03-04 20:08:59'),
(2, 65, 241, 'http://www.infibeam.com/Books/info/Mario-Paz/Structural-Dynamics-Theory-and-Computation/1402076673.html', 'Delivered in 2-3 business days.', 0, 'Structural Dynamics: Theory and Computation [Hardcover]', '2013-03-04 20:18:23'),
(2, 66, 259, 'http://www.infibeam.com/Books/info/Mario-Paz/Structural-Dynamics-Theory-and-Computation/1402076673.html', 'Delivered in 2-3 business days.', 0, 'Structural Dynamics: Theory and Computation [Hardcover]', '2013-03-04 20:18:58'),
(2, 67, 241, 'http://www.infibeam.com/Books/info/Mario-Paz/Structural-Dynamics-Theory-and-Computation/1402076673.html', 'Delivered in 2-3 business days.', 0, 'Structural Dynamics: Theory and Computation [Hardcover]', '2013-03-04 20:19:57'),
(2, 68, 241, 'http://www.infibeam.com/Books/info/paz-mario/structural-dynamics-theory-computation-2e/9788123909783.html', 'Delivered in 2-3 business days.', 0, 'Structural Dynamics Theory And Computation []', '2013-03-04 21:34:45'),
(2, 69, 241, 'http://www.infibeam.com/Books/info/Mario-Paz/Structural-Dynamics-Theory-and-Computation/1402076673.html', 'Delivered in 2-3 business days.', 0, 'Structural Dynamics: Theory and Computation [Hardcover]', '2013-03-04 21:35:59'),
(2, 70, 2392, 'http://www.infibeam.com/Office_Supplies/i-Leather-Cover-Pocket-Planner/P-OF-D-Unnati-Succes-Academy-FNP039.html?id=Black', 'Delivered in 2-3 business days.', 0, 'Leather Cover Pocket Planner', '2013-03-04 23:08:51'),
(2, 72, 26500, 'http://www.infibeam.com/Cameras/i-Samsung-Galaxy-Camera-Android-3G/P-E-C-Samsung-GALAXY-Combo.html?id=White', 'Delivered in 2-3 business days.', 0, 'Samsung GALAXY Camera (White)', '2013-03-17 20:37:13'),
(2, 73, 25900, 'http://www.infibeam.com/Mobiles/i-Samsung-Galaxy-S2-I9100-Android/P-E-M-Samsung-Galaxy-S2-I9100.html?id=Black', 'Delivered in 2-3 business days.', 0, 'Samsung Galaxy S2 I9100 (Black)', '2013-03-19 14:59:47'),
(2, 74, 9859, 'http://www.infibeam.com/Mobiles/i-BlackBerry-Z10-Touchscreen-Smartphone/P-E-M-BlackBerry-Z10.html?id=Black', 'Delivered in 2-3 business days.', 0, 'BlackBerry Z10 (Black)', '2013-03-19 15:05:54'),
(2, 75, 43490, 'http://www.infibeam.com/Books/motorola-a955-droid-2-graphic-rubberized-shield-hard-generic/0846814035568.html', 'Delivered in 2-3 business days.', 0, 'Motorola A955 Droid 2 Graphic Rubberized Shield Hard Case- White Flower with Butterfly []', '2013-03-19 15:08:58'),
(2, 78, 21500, 'http://www.infibeam.com/Mobiles/i-Samsung-Galaxy-Grand-Duos-Phone/P-E-M-Samsung-GT-I9082.html?id=Blue', 'Delivered in 2-3 business days.', 0, 'Samsung Galaxy Grand Duos i9082 (Blue)', '2013-03-19 19:06:19'),
(2, 79, 1099, 'http://www.infibeam.com/Mobile_Accessories/i-Transcend-32GB-Micro-SD-Card/P-E-MA-Transcend-Microsd-32GB-Class4.html?id=Black', 'Delivered in 2-3 business days.', 0, 'Transcend 32GB Micro SD Card - Class 4 (Black)', '2013-03-19 19:15:19'),
(2, 80, 37990, 'http://www.infibeam.com/Mobiles/i-Sony-Xperia-Z-Android-Smartphone/P-E-M-Sony-Xperia-Z.html?id=White', 'Delivered in 2-3 business days.', 0, 'Sony Xperia Z (White)', '2013-03-21 16:44:48'),
(2, 82, 2801, 'http://www.infibeam.com/Gifts/i-Gift-Certificates-United-Colors-Benetton-Gift-Voucher/P-EX-GC-United-Colors-Of-Benetton-Voucher.html?id=10000', 'Delivered in 2-3 business days.', 0, 'United Colors Of Benetton Gift Voucher', '2013-03-21 17:00:45'),
(2, 83, 815, 'http://www.infibeam.com/Books/info/bradley-quinn/boot/9781856696630.html', 'Delivered in 2-3 business days.', 0, 'The Boot [Hardcover]', '2013-03-21 17:03:38'),
(2, 85, 5030, 'http://www.infibeam.com/Mobiles/i-Samsung-Rex-80-Smartphone-Mobile/P-E-M-Samsung-Rex-80.html?id=White', 'Delivered in 2-3 business days.', 0, 'Samsung Rex 80 (White)', '2013-03-21 17:12:02'),
(2, 86, 4099, 'http://www.infibeam.com/Portable_Electronics/i-Micromax-Funbook-4GB-Wifi-Tablet/P-E-PE-Micromax-3G-WIFI-Tablet.html#variantId=P-E-PE-Micromax-3G-WIFI-Tablet-4-Grey', 'Delivered in 2-3 business days.', 0, 'Micromax Funbook P 300 Tablet (4 GB,Grey)', '2013-03-28 22:46:46'),
(2, 87, 28199, 'http://www.infibeam.com/TVs/i-Samsung-32-Inch-LED-TVs/P-E-HE-Samsung-32EH4000.html?id=Black-32', 'Delivered in 2-3 business days.', 0, 'Samsung LED TVs 32EH4000 (Black,32)', '2013-03-29 10:21:49'),
(2, 88, 18790, 'http://www.infibeam.com/Monitor/i-Samsung-27-Inch-LED-Monitor/P-CA-MO-Samsung-S27B350H.html?id=Black', 'Delivered in 2-3 business days.', 0, 'Samsung Series 27 Inch LED Monitor (Black)', '2013-03-29 10:22:53'),
(2, 89, 28199, 'http://www.infibeam.com/TVs/i-Samsung-32-Inch-LED-TVs/P-E-HE-Samsung-32EH4000.html?id=Black-32', 'Delivered in 2-3 business days.', 0, 'Samsung LED TVs 32EH4000 (Black,32)', '2013-03-29 10:23:56'),
(2, 91, 4409, 'http://www.infibeam.com/Mobiles/i-Nokia-Asha-305-Android-Phone/P-E-M-Nokia-Asha-305.html?id=Red#variantId=P-E-M-Nokia-Asha-305-Red', 'Delivered in 2-3 business days.', 0, 'Nokia Asha 305 Dual SIM (Blue)', '2013-07-03 15:54:19'),
(2, 77, 4409, 'http://www.infibeam.com/Mobiles/i-Nokia-Asha-305-Android-Phone/P-E-M-Nokia-Asha-305.html?id=Red#variantId=P-E-M-Nokia-Asha-305-Red', 'Delivered in 2-3 business days.', 0, 'Nokia Asha 305 Dual SIM (Blue)', '2013-07-03 19:11:39'),
(2, 93, 4409, 'http://www.infibeam.com/Mobiles/i-Nokia-Asha-305-Android-Phone/P-E-M-Nokia-Asha-305.html?id=Red#variantId=P-E-M-Nokia-Asha-305-Red', 'Delivered in 2-3 business days.', 0, 'Nokia Asha 305 Dual SIM (Blue)', '2013-07-04 05:25:18'),
(2, 94, 4409, 'http://www.infibeam.com/Mobiles/i-Nokia-Asha-305-Android-Phone/P-E-M-Nokia-Asha-305.html?id=Red#variantId=P-E-M-Nokia-Asha-305-Red', 'Delivered in 2-3 business days.', 0, 'Nokia Asha 305 Dual SIM (Blue)', '2013-07-04 05:28:01'),
(2, 95, 287, 'http://www.infibeam.com/Books/grey-king-susan-cooper/9780689829888.html#variantId=P-M-B-9780689829888', 'Delivered in 2-3 business days.', 0, 'The Grey King []', '2013-07-04 05:32:31'),
(2, 96, 4099, 'http://www.infibeam.com/Smart_Tv_Box/i-Apple-TV-Smart-Tv-Box/P-E-HE-Apple-A1469.html?id=Black#variantId=P-E-HE-Apple-A1469-Black', 'Delivered in 2-3 business days.', 0, 'Apple TV (Black)', '2013-07-04 16:06:10'),
(2, 97, 4099, 'http://www.infibeam.com/Portable_Electronics/i-Micromax-Funbook-4GB-Wifi-Tablet/P-E-PE-Micromax-3G-WIFI-Tablet.html#variantId=P-E-PE-Micromax-3G-WIFI-Tablet-4-Grey', 'Delivered in 2-3 business days.', 0, 'Micromax Funbook P 300 Tablet (4 GB,Grey)', '2013-07-04 18:20:54');

-- --------------------------------------------------------

--
-- Table structure for table `inkfruit`
--

CREATE TABLE IF NOT EXISTS `inkfruit` (
  `WebsiteID` int(10) NOT NULL,
  `ProductId` int(10) NOT NULL,
  `Price` int(10) NOT NULL,
  `Link` text NOT NULL,
  `DeliveryTime` text NOT NULL,
  `EMI` int(1) NOT NULL DEFAULT '0',
  `Title` text NOT NULL,
  `Time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `jabong`
--

CREATE TABLE IF NOT EXISTS `jabong` (
  `WebsiteID` int(10) NOT NULL,
  `ProductId` int(10) NOT NULL,
  `Price` int(10) NOT NULL,
  `Link` text NOT NULL,
  `DeliveryTime` text NOT NULL,
  `EMI` int(1) NOT NULL DEFAULT '1',
  `Title` text NOT NULL,
  `Time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jabong`
--

INSERT INTO `jabong` (`WebsiteID`, `ProductId`, `Price`, `Link`, `DeliveryTime`, `EMI`, `Title`, `Time`) VALUES
(25, 27, 5596, 'http://www.jabong.com/fcuk-FC1091SSGN-Silver-Analog-Watch-99559.html', 'Delivery in 2-5 business days.', 1, 'FCUK\r\n                            FC1091SSGN Silver Analog Watch                        ', '2013-01-23 22:15:46');

-- --------------------------------------------------------

--
-- Table structure for table `jewelskart`
--

CREATE TABLE IF NOT EXISTS `jewelskart` (
  `WebsiteID` int(10) NOT NULL,
  `ProductId` int(10) NOT NULL,
  `Price` int(10) NOT NULL,
  `Link` text COLLATE utf8_unicode_ci NOT NULL,
  `DeliveryTime` text COLLATE utf8_unicode_ci NOT NULL,
  `EMI` int(1) NOT NULL DEFAULT '0',
  `Title` text COLLATE utf8_unicode_ci NOT NULL,
  `Time` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `jewelskart`
--

INSERT INTO `jewelskart` (`WebsiteID`, `ProductId`, `Price`, `Link`, `DeliveryTime`, `EMI`, `Title`, `Time`) VALUES
(55, 2, 7380, 'http://www.jewelskart.com/feel-good-lip-002-pendant-18-khallmark-yellow-gold-0-015-ct-total-diamond-weight.html', '2-5 Working days.', 0, 'Myra LIP 002 Pendant 18K Hallmark Yellow White Gold 0.015 ct total diamond weight', '2013-01-18 17:35:09'),
(55, 3, 1818, 'http://www.jewelskart.com/maple-mw4054-black-gents-wallet.html', '2-5 Working days.', 0, '47 Maple MW4054 Black Mens Wallet ', '2013-01-18 17:36:08'),
(55, 4, 6000, 'http://www.jewelskart.com/feelgood-rv-5-24k-premium-gold-plated-cutlery-24-pcs-set-with-lazer-etching-and-wooden-box.html', '2-5 Working days.', 0, 'Feelgood RV-5, 24K Premium Gold Plated Cutlery - 24 pcs Set with Lazer Etching and Wooden Box', '2013-01-18 20:25:01'),
(55, 0, 895, 'http://www.jewelskart.com/kara-8027-brown-ladies-wallet.html', '2-5 Working days.', 0, 'KARA 8027 Brown Womens Wallet', '2013-01-18 20:29:08'),
(55, 6, 895, 'http://www.jewelskart.com/kara-8027-brown-ladies-wallet.html', '2-5 Working days.', 0, 'KARA 8027 Brown Womens Wallet', '2013-01-18 20:29:36'),
(55, 8, 435, 'http://www.jewelskart.com/maple-mw4054-black-gents-wallet.html', '2-5 Working days.', 0, '47 Maple MW4054 Black Mens Wallet ', '2013-01-18 20:48:58'),
(55, 11, 2020, 'http://www.jewelskart.com/mmtc-gold-coin-1-gram.html', '2-5 Working days.', 0, 'MMTC Gold Coin- 1 gram ', '2013-01-19 15:32:41'),
(55, 12, 4850, 'http://www.jewelskart.com/mmtc-silver-rupee-note-100-gram.html', '2-5 Working days.', 0, 'MMTC Silver Rupee Note-100 gram ', '2013-01-19 15:34:16'),
(55, 15, 12266, 'http://www.jewelskart.com/myra-mmy-pd-2-14k-gold-5-800-gm-ladies-pendant.html', '2-5 Working days.', 0, 'Myra MMY/PD/2, 14K Gold, 5.800 gm, Womens, Pendant', '2013-01-23 19:27:46'),
(55, 16, 5388, 'http://www.jewelskart.com/myra-jpd-390-18-k-gold-women-s-pendant.html', '2-5 Working days.', 0, 'Myra JPD-390, 18 K Gold, Womens, Pendant', '2013-01-23 19:30:05'),
(55, 18, 999, 'http://www.jewelskart.com/feelgood-24-k-gold-playing-cards-130-gm-approx-24-k-gold-plated-unisex-accessories.html', '2-5 Working days.', 0, 'Feelgood FPC-1 24 K Gold Playing Cards, 130 gm approx, 24 K Gold Plated, Unisex, Accessories', '2013-01-23 19:33:13'),
(55, 21, 671, 'http://www.jewelskart.com/fastrack-c0322lrd01-ladies-red-wallet.html', '2-5 Working days.', 0, 'Fastrack C0322LRD01 Red Womens Wallet', '2013-01-23 19:40:29'),
(55, 22, 671, 'http://www.jewelskart.com/fastrack-c0322lrd01-ladies-red-wallet.html', '2-5 Working days.', 0, 'Fastrack C0322LRD01 Red Womens Wallet', '2013-01-23 19:42:59'),
(55, 23, 2273, 'http://www.jewelskart.com/silitalia-sa-nk-170-925-silver-9-55-gm-necklace.html', '2-5 Working days.', 0, 'Silitalia SA/NK/170, 925 Silver, 9.55 gm, Necklace', '2013-01-23 19:44:20'),
(55, 26, 11040, 'http://www.jewelskart.com/feelgood-bd-pd-16-19-88-grams-14-k-gold-pendant.html', '2-5 Working days.', 0, 'Myraa BD/PD/16 19.88 Grams 14 K Gold Pendant ', '2013-01-23 21:46:04'),
(55, 27, 2796, 'http://www.jewelskart.com/timex-t49778-watches.html', '2-5 Working days.', 0, 'Timex Expedition T49778 Unisex Watch', '2013-01-23 22:16:07'),
(55, 28, 2796, 'http://www.jewelskart.com/timex-t49778-watches.html', '2-5 Working days.', 0, 'Timex Expedition T49778 Unisex Watch', '2013-01-23 22:17:15'),
(55, 34, 2499, 'http://www.jewelskart.com/silitalia-sa-nk-166-925-silver-9-00-gm-necklace.html', '2-5 Working days.', 0, 'Silitalia SA/NK/166, 925 Silver, 9.00 gm, Necklace', '2013-01-30 13:49:39'),
(55, 37, 1299, 'http://www.jewelskart.com/baolulai-bll008-matte-black-unisex-sunglasses.html', '2-5 Working days.', 0, 'Baolulai BLL008 Matte Black Unisex Sunglasses', '2013-02-10 23:58:18');

-- --------------------------------------------------------

--
-- Table structure for table `jjmehta`
--

CREATE TABLE IF NOT EXISTS `jjmehta` (
  `WebsiteID` int(10) NOT NULL,
  `ProductId` int(10) NOT NULL,
  `Price` int(10) NOT NULL,
  `Link` text NOT NULL,
  `DeliveryTime` text NOT NULL,
  `EMI` int(1) NOT NULL DEFAULT '0',
  `Title` text NOT NULL,
  `Time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `justbooks`
--

CREATE TABLE IF NOT EXISTS `justbooks` (
  `WebsiteID` int(10) NOT NULL,
  `ProductId` int(10) NOT NULL,
  `Price` int(10) NOT NULL,
  `Link` text NOT NULL,
  `DeliveryTime` text NOT NULL,
  `EMI` int(1) NOT NULL DEFAULT '0',
  `Title` text NOT NULL,
  `Time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Keywords`
--

CREATE TABLE IF NOT EXISTS `Keywords` (
  `Id` int(10) NOT NULL AUTO_INCREMENT,
  `Keyword` varchar(255) NOT NULL,
  `Status` enum('0','1') NOT NULL,
  `Time` datetime NOT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `Keyword` (`Keyword`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `Keywords`
--

INSERT INTO `Keywords` (`Id`, `Keyword`, `Status`, `Time`) VALUES
(1, 'samsung', '1', '2013-02-21 16:29:21'),
(2, 'nokia', '1', '2013-02-21 16:29:21');

-- --------------------------------------------------------

--
-- Table structure for table `koovs`
--

CREATE TABLE IF NOT EXISTS `koovs` (
  `WebsiteID` int(10) NOT NULL,
  `ProductId` int(10) NOT NULL,
  `Price` int(10) NOT NULL,
  `Link` text NOT NULL,
  `DeliveryTime` text NOT NULL,
  `EMI` int(1) NOT NULL DEFAULT '0',
  `Title` text NOT NULL,
  `Time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `koovs`
--

INSERT INTO `koovs` (`WebsiteID`, `ProductId`, `Price`, `Link`, `DeliveryTime`, `EMI`, `Title`, `Time`) VALUES
(45, 0, 350, 'http://www.koovs.com/women/Beauty/Colorbar/Colorbar-Pro-Nail-Lacquer-15ml?from=search-apple macbook pro&skuid=169248', '-', 0, 'Colorbar Pro Nail Lacquer ', '2013-01-18 16:54:04'),
(45, 37, 3350, 'http://www.koovs.com/women/Accessories/Lacoste/Lacoste-Womens-Sunglass?from=search-sunglasses&', '-', 0, 'Lacoste Cannes Blue & White Sunglasses', '2013-02-10 23:58:15'),
(45, 40, 900, 'http://www.koovs.com/women/Bags---Purses/Claires/Claires-Non-child-Snap-Al-i-Cover-Bling-Pink-Cell-Phone-Holders?from=search-mobile&', '-', 0, 'Claires Bling Snap -on  Mobile Case Cover ', '2013-02-19 17:34:08'),
(45, 49, 2510, 'http://www.koovs.com/women/Fragrances/DKNY/Be-Delicious-Edp-Spray-100ml-For-Women-By-Donna-Karan?from=search-apple', '-', 0, 'DKNY Be Delicious EDP Spray  ', '2013-02-24 10:57:22');

-- --------------------------------------------------------

--
-- Table structure for table `landmarkonthenet`
--

CREATE TABLE IF NOT EXISTS `landmarkonthenet` (
  `WebsiteID` int(10) NOT NULL,
  `ProductId` int(10) NOT NULL,
  `Price` int(10) NOT NULL,
  `Link` text NOT NULL,
  `DeliveryTime` text NOT NULL,
  `EMI` int(1) NOT NULL DEFAULT '0',
  `Title` text NOT NULL,
  `Time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `landmarkonthenet`
--

INSERT INTO `landmarkonthenet` (`WebsiteID`, `ProductId`, `Price`, `Link`, `DeliveryTime`, `EMI`, `Title`, `Time`) VALUES
(26, 1, 12225, 'http://www.landmarkonthenet.com/samsung-galaxy-duos-s7562-pure-white-mobiles-8806085211803-23699836/', 'Delivery in 3-4 Working Days.', 0, '\n        \n            \n                Samsung Galaxy S Duos S7562  (Pure White)\n            \n        \n        ', '2013-01-18 16:54:01'),
(26, 2, 5989, 'http://www.landmarkonthenet.com/samsung-galaxy-y-duos-lite-s5302-pure-white-mobiles-8806085188358-23699839/', 'Delivery in 3-4 Working Days.', 0, '\n        \n            \n                Samsung Galaxy Y Duos Lite S5302 (Pure White)\n            \n        \n        ', '2013-01-18 17:35:05'),
(26, 3, 7759, 'http://www.landmarkonthenet.com/samsung-galaxy-y-duos-s6102-sblack-mobiles-8806085018754-20649382/', 'Delivery in 3-4 Working Days.', 0, '\n        \n            \n                Samsung Galaxy Y Duos S6102 (S.Black)\n            \n        \n        ', '2013-01-18 17:36:03'),
(26, 4, 225, 'http://www.landmarkonthenet.com/modern-approach-non-verbal-reasoning-by-r-s-aggarwal-books-9788121905534-3676711/', 'Delivery in 3-4 Working Days.', 0, '\n        \n            \n                A Modern Approach to Non Verbal Reasoning\n            \n        \n        ', '2013-01-18 20:24:46'),
(26, 0, 856, 'http://www.landmarkonthenet.com/fix-your-laser-printer-save-bundle-by-paul-lapsansky-books-9780595343058-11518270/', 'Delivery in 3-4 Working Days.', 0, '\n        \n            \n                Fix Your Laser Printer and Save a Bundle\n            \n        \n        ', '2013-01-18 20:28:49'),
(26, 6, 225, 'http://www.landmarkonthenet.com/modern-approach-non-verbal-reasoning-by-r-s-aggarwal-books-9788121905534-3676711/', 'Delivery in 3-4 Working Days.', 0, '\n        \n            \n                A Modern Approach to Non Verbal Reasoning\n            \n        \n        ', '2013-01-18 20:29:14'),
(26, 8, 12225, 'http://www.landmarkonthenet.com/samsung-galaxy-duos-s7562-black-mobiles-8806085262935-24444559/', 'Delivery in 3-4 Working Days.', 0, '\n        \n            \n                Samsung Galaxy S Duos S7562  (Black)\n            \n        \n        ', '2013-01-18 20:48:53'),
(26, 9, 38500, 'http://www.landmarkonthenet.com/apple-iphone-4s-16gb-black-mobiles-885909525461-19533853/', 'Delivery in 3-4 Working Days.', 0, '\n        \n            \n                Apple iPhone 4S -16GB (Black)\n            \n        \n        ', '2013-01-18 21:16:08'),
(26, 10, 4139, 'http://www.landmarkonthenet.com/nokia-asha-305-dark-grey-mobiles-6438158492073-22550964/', 'Delivery in 3-4 Working Days.', 0, '\n        \n            \n                Nokia Asha 305 (Dark Grey)\n            \n        \n        ', '2013-01-19 01:05:44'),
(26, 11, 521, 'http://www.landmarkonthenet.com/soap-box-babies-by-gracey-sweedy-books-9780595314218-970297/', 'Delivery in 3-4 Working Days.', 0, '\n        \n            \n                Soap Box Babies\n            \n        \n        ', '2013-01-19 15:32:37'),
(26, 12, 41700, 'http://www.landmarkonthenet.com/samsung-galaxy-note-2-n7100-white-mobiles-7000000870823-25299052/', 'Delivery in 3-4 Working Days.', 0, '\n        \n            \n                Samsung Galaxy Note 2 N7100 White\n            \n        \n        ', '2013-01-19 15:34:13'),
(26, 13, 28900, 'http://www.landmarkonthenet.com/samsung-galaxy-s3-i9300-16gb-pebble-blue-mobiles-8806085060586-22181295/', 'Delivery in 3-4 Working Days.', 0, '\n        \n            \n                Samsung Galaxy S3 i9300 - 16GB (Pebble Blue)\n            \n        \n        ', '2013-01-23 19:22:50'),
(26, 14, 2503, 'http://www.landmarkonthenet.com/apple-iphone-books-9786139081677-19859610/', 'Delivery in 3-4 Working Days.', 0, '\n        \n            \n                Apple Iphone\n            \n        \n        ', '2013-01-23 19:24:47'),
(26, 15, 299, 'http://www.landmarkonthenet.com/iaccy-nsg008-screen-protector-nokia-lumia-800-8906046969313-22282593/', 'Delivery in 3-4 Working Days.', 0, '\n        \n            \n                iAccy NSG008 Screen Protector for Nokia Lumia 800\n            \n        \n        ', '2013-01-23 19:27:44'),
(26, 18, 2965, 'http://www.landmarkonthenet.com/how-to-chart-timestudy-data-by-phil-carroll-books-9781258233051-21038009/', 'Delivery in 3-4 Working Days.', 0, '\n        \n            \n                How to Chart Timestudy Data\n            \n        \n        ', '2013-01-23 19:33:11'),
(26, 19, 18799, 'http://www.landmarkonthenet.com/samsung-galaxy-tab-2-70-p3100-silver-mobiles-8806085016484-22550968/', 'Delivery in 3-4 Working Days.', 0, '\n        \n            \n                Samsung Galaxy Tab 2 7.0 P3100 (Silver)\n            \n        \n        ', '2013-01-23 19:36:42'),
(26, 20, 1266, 'http://www.landmarkonthenet.com/sober-appeal-turk-indian-concerning-plain-sense-by-martin-tomkins-books-9781171026181-7047298/', 'Delivery in 3-4 Working Days.', 0, '\n        \n            \n                A Sober Appeal to a Turk or an Indian, Concerning the Plain Sense of Scripture, Relating to the Trinity....\n            \n        \n        ', '2013-01-23 19:38:04'),
(26, 24, 33900, 'http://www.landmarkonthenet.com/nikon-d5100-slr-black-18-55mm-vr-kit-cameras-20524922/', 'Delivery in 3-4 Working Days.', 0, '\n        \n            \n                Nikon D5100 SLR (Black) With 18-55mm VR Kit\n            \n        \n        ', '2013-01-23 19:45:05'),
(26, 25, 1163, 'http://www.landmarkonthenet.com/teenage-mutant-ninja-turtles-classics-volume-3-books-9781613775387-22523833/', 'Delivery in 3-4 Working Days.', 0, '\n        \n            \n                Teenage Mutant Ninja Turtles Classics: Volume 3\n            \n        \n        ', '2013-01-23 20:12:02'),
(26, 29, 8725, 'http://www.landmarkonthenet.com/canon-powershot-a3400-silver-point-shoot-cameras-7000000780301-21531141/', 'Delivery in 3-4 Working Days.', 0, '\n        \n            \n                Canon PowerShot A3400 (Silver) Point & Shoot\n            \n        \n        ', '2013-01-23 22:27:21'),
(26, 30, 53, 'http://www.landmarkonthenet.com/the-fourth-science-fiction-megapack-by-isaac-asimov-ebooks-22778527/', 'Delivery in 3-4 Working Days.', 0, '\n        \n            \n                The Fourth Science Fiction Megapack\n            \n        \n        ', '2013-01-23 22:31:53'),
(26, 31, 2153, 'http://www.landmarkonthenet.com/apple-macbook-pro-books-9786139070602-19868614/', 'Delivery in 3-4 Working Days.', 0, '\n        \n            \n                Apple Macbook Pro\n            \n        \n        ', '2013-01-23 22:36:38'),
(26, 35, 6299, 'http://www.landmarkonthenet.com/nokia-asha-302-dark-gray-mobiles-6438158465619-21564196/', 'Delivery in 3-4 Working Days.', 0, '\n        \n            \n                Nokia Asha 302 (Dark Gray)\n            \n        \n        ', '2013-01-30 13:52:01'),
(26, 36, 3829, 'http://www.landmarkonthenet.com/nokia-asha-202-silver-white-mobiles-6438158466012-21563108/', 'Delivery in 3-4 Working Days.', 0, '\n        \n            \n                Nokia Asha 202 (Silver White)\n            \n        \n        ', '2013-01-30 13:53:05'),
(26, 37, 359, 'http://www.landmarkonthenet.com/dora-kids-sunglasses-toys-23445566771-4033899/', 'Delivery in 3-4 Working Days.', 0, '\n        \n            \n                Dora Kids Sunglasses\n            \n        \n        ', '2013-02-10 23:58:13'),
(26, 39, 1716, 'http://www.landmarkonthenet.com/blackberry-bold-made-simple-blackberry-bold-9700-by-gary-mazo-books-9781430231172-1819655/', 'Delivery in 3-4 Working Days.', 0, '\n        \n            \n                BlackBerry Bold Made Simple: For the BlackBerry Bold 9700 Series\n            \n        \n        ', '2013-02-12 22:56:49'),
(26, 40, 1480, 'http://www.landmarkonthenet.com/nokia-101-black-mobiles-6438158365704-16170149/', 'Delivery in 3-4 Working Days.', 0, '\n        \n            \n                Nokia 101 (Black)\n            \n        \n        ', '2013-02-19 17:34:07'),
(26, 43, 28900, 'http://www.landmarkonthenet.com/samsung-galaxy-s3-i9300-16gb-pebble-blue-mobiles-8806085060586-22181295/', 'Delivery in 3-4 Working Days.', 0, '\n        \n            \n                Samsung Galaxy S3 i9300 - 16GB (Pebble Blue)\n            \n        \n        ', '2013-02-21 16:35:10'),
(26, 44, 121, 'http://www.landmarkonthenet.com/vocal-vol-4-semmangudi-r-srinivasa-iyer-by-semmangudi-r-sriniva-music-3855409/', 'Delivery in 3-4 Working Days.', 0, '\n        \n            \n                Vocal Vol 4 Semmangudi R Srinivasa Iyer\n            \n        \n        ', '2013-02-21 17:29:28'),
(26, 46, 12299, 'http://www.landmarkonthenet.com/nokia-lumia-610-white-mobiles-6438158476912-22550965/', 'Delivery in 3-4 Working Days.', 0, '\n        \n            \n                Nokia Lumia 610 (White)\n            \n        \n        ', '2013-02-22 16:36:43'),
(26, 48, 28900, 'http://www.landmarkonthenet.com/samsung-galaxy-s3-i9300-16gb-pebble-blue-mobiles-8806085060586-22181295/', 'Delivery in 3-4 Working Days.', 0, '\n        \n            \n                Samsung Galaxy S3 i9300 - 16GB (Pebble Blue)\n            \n        \n        ', '2013-02-24 10:53:16'),
(26, 49, 45500, 'http://www.landmarkonthenet.com/apple-iphone-5-16gb-black-mobiles-885909636150-24094655/', 'Delivery in 3-4 Working Days.', 0, '\n        \n            \n                Apple iPhone 5 - 16GB (Black)\n            \n        \n        ', '2013-02-24 10:57:20'),
(26, 50, 38500, 'http://www.landmarkonthenet.com/apple-iphone-4s-16gb-white-mobiles-885909525911-19533854/', 'Delivery in 3-4 Working Days.', 0, '\n        \n            \n                Apple iPhone 4S - 16GB (White)\n            \n        \n        ', '2013-02-24 10:58:25'),
(26, 47, 37099, 'http://www.landmarkonthenet.com/nokia-lumia-920-white-mobiles-6438158546844-24799241/', 'Delivery in 3-4 Working Days.', 0, '\n        \n            \n                Nokia Lumia 920 White\n            \n        \n        ', '2013-02-26 23:13:12'),
(26, 55, 14799, 'http://www.landmarkonthenet.com/nokia-lumia-710-black-mobiles-6438158414051-19754193/', 'Delivery in 3-4 Working Days.', 0, '\n        \n            \n                Nokia  Lumia 710 (Black)\n            \n        \n        ', '2013-02-28 02:05:15'),
(26, 57, 986, 'http://www.landmarkonthenet.com/meditation-and-spiritual-contemplation-by-terence-mccarthy-books-9781462609710-34659/', 'Delivery in 3-4 Working Days.', 0, '\n        \n            \n                Meditation and Spiritual Contemplation\n            \n        \n        ', '2013-02-28 03:53:58'),
(26, 58, 1142, 'http://www.landmarkonthenet.com/the-petrified-condom-by-elaine-eliah-books-9781410709127-8522024/', 'Delivery in 3-4 Working Days.', 0, '\n        \n            \n                The Petrified Condom\n            \n        \n        ', '2013-02-28 03:55:24'),
(26, 61, 872, 'http://www.landmarkonthenet.com/u-publishcom-50-by-dan-poynter-books-9781588322005-5081709/', 'Delivery in 3-4 Working Days.', 0, '\n        \n            \n                U-Publish.com 5.0\n            \n        \n        ', '2013-02-28 19:28:15'),
(26, 64, 7799, 'http://www.landmarkonthenet.com/structural-dynamics-theory-and-computation-by-mario-paz-books-9781402076671-18522443/', 'Delivery in 3-4 Working Days.', 0, '\n        \n            \n                Structural Dynamics: Theory and Computation\n            \n        \n        ', '2013-03-04 20:09:08'),
(26, 67, 7799, 'http://www.landmarkonthenet.com/structural-dynamics-theory-and-computation-by-mario-paz-books-9781402076671-18522443/', 'Delivery in 3-4 Working Days.', 0, '\n        \n            \n                Structural Dynamics: Theory and Computation\n            \n        \n        ', '2013-03-04 20:20:05'),
(26, 68, 7799, 'http://www.landmarkonthenet.com/structural-dynamics-theory-and-computation-by-mario-paz-books-9781402076671-18522443/', 'Delivery in 3-4 Working Days.', 0, '\n        \n            \n                Structural Dynamics: Theory and Computation\n            \n        \n        ', '2013-03-04 21:34:49'),
(26, 69, 7799, 'http://www.landmarkonthenet.com/structural-dynamics-theory-and-computation-by-mario-paz-books-9781402076671-18522443/', 'Delivery in 3-4 Working Days.', 0, '\n        \n            \n                Structural Dynamics: Theory and Computation\n            \n        \n        ', '2013-03-04 21:36:06'),
(26, 70, 801, 'http://www.landmarkonthenet.com/cherry-blossom-garden-pocket-planner-by-galison-books-9780735333772-21064103/', 'Delivery in 3-4 Working Days.', 0, '\n        \n            \n                Cherry Blossom Garden Pocket Planner\n            \n        \n        ', '2013-03-04 23:09:00'),
(26, 71, 856, 'http://www.landmarkonthenet.com/bullets-in-the-washing-machine-by-melissa-littles-books-9780615541044-19570327/', 'Delivery in 3-4 Working Days.', 0, '\n        \n            \n                Bullets in the Washing Machine\n            \n        \n        ', '2013-03-07 11:01:12'),
(26, 73, 29649, 'http://www.landmarkonthenet.com/samsung-galaxy-s3-i9300-16gb-pebble-blue-mobiles-8806085060586-22181295/', 'Delivery in 3-4 Working Days.', 0, '\n        \n            \n                Samsung Galaxy S3 i9300 - 16GB (Pebble Blue)\n            \n        \n        ', '2013-03-19 14:59:58'),
(26, 74, 4016, 'http://www.landmarkonthenet.com/blackberry-blackberry-blackberry-melancholic-by-irene-chiayun-hsiao-books-9781243509314-13967901/', 'Delivery in 3-4 Working Days.', 0, '\n        \n            \n                Blackberry, Blackberry, Blackberry: Melancholic Repetition and the Romantic Lyric.\n            \n        \n        ', '2013-03-19 15:06:02'),
(26, 78, 21500, 'http://www.landmarkonthenet.com/samsung-galaxy-grand-duos-i9082-white-mobiles-8806085402942-24616103/', 'Delivery in 3-4 Working Days.', 0, '\n        \n            \n                Samsung Galaxy Grand Duos I9082 (White)\n            \n        \n        ', '2013-03-19 19:06:27'),
(26, 80, 22799, 'http://www.landmarkonthenet.com/sony-xperia-s-lt26i-white-mobiles-7311271384793-21565879/', 'Delivery in 3-4 Working Days.', 0, '\n        \n            \n                Sony Xperia S LT26i (White)\n            \n        \n        ', '2013-03-21 16:44:57'),
(26, 81, 29500, 'http://www.landmarkonthenet.com/sony-camcorder-pj200-cameras-22668511/', 'Delivery in 3-4 Working Days.', 0, '\n        \n            \n                Sony Camcorder PJ200\n            \n        \n        ', '2013-03-21 16:51:03'),
(26, 83, 870, 'http://www.landmarkonthenet.com/road-life-other-poems-by-barbara-may-boot-books-9781847488084-10160929/', 'Delivery in 3-4 Working Days.', 0, '\n        \n            \n                The Road of Life and Other Poems\n            \n        \n        ', '2013-03-21 17:03:43'),
(26, 85, 5030, 'http://www.landmarkonthenet.com/samsung-rex-80-s5222r-white-mobiles-8806085512849-24920709/', 'Delivery in 3-4 Working Days.', 0, '\n        \n            \n                Samsung Rex 80 S5222R (White)\n            \n        \n        ', '2013-03-21 17:12:08'),
(26, 90, 2739, 'http://www.landmarkonthenet.com/sociology-through-the-projector-ebooks-9780203934395-22976251/', 'Delivery in 3-4 Working Days.', 0, '\n        \n            \n                Sociology Through the Projector\n            \n        \n        ', '2013-04-05 19:26:16'),
(26, 91, 9899, 'http://www.landmarkonthenet.com/nokia-lumia-510-black-mobiles-6438158513174-24109672/', 'Delivery in 3-4 Working Days.', 0, '\n        \n            \n                Nokia Lumia 510 Black\n            \n        \n        ', '2013-07-03 15:54:29'),
(26, 92, 1480, 'http://www.landmarkonthenet.com/nokia-101-black-mobiles-6438158365704-16170149/', 'Delivery in 3-4 Working Days.', 0, '\n        \n            \n                Nokia 101 (Black)\n            \n        \n        ', '2013-07-04 02:48:44'),
(26, 51, 45500, 'http://www.landmarkonthenet.com/apple-iphone-5-16gb-black-mobiles-885909636150-24094655/', 'Delivery in 3-4 Working Days.', 0, '\n        \n            \n                Apple iPhone 5 - 16GB (Black)\n            \n        \n        ', '2013-07-04 02:56:58'),
(26, 93, 1600, 'http://www.landmarkonthenet.com/nokia-bh-109-bluetooth-headsets-6438158268500-22255816/', 'Delivery in 3-4 Working Days.', 0, '\n        \n            \n                Nokia BH-109 Bluetooth Headsets\n            \n        \n        ', '2013-07-04 05:25:25'),
(26, 94, 16539, 'http://www.landmarkonthenet.com/phaenomenologica-elemente-einer-by-dieter-lohmar-books-9780792301875-17718226/', 'Delivery in 3-4 Working Days.', 0, '\n        \n            \n                Phaenomenologica: Elemente Einer Phanomenologischen Aufklarung Der Mathematischen Erkenntnis Nach Husserl:...\n            \n        \n        ', '2013-07-04 05:28:06'),
(26, 96, 1717, 'http://www.landmarkonthenet.com/ipad-geekery-50-insanely-cool-hacks-mods-your-by-guy-hart-davis-books-9780071807555-22606167/', 'Delivery in 3-4 Working Days.', 0, '\n        \n            \n                IPad Geekery: 50 Insanely Cool Hacks and Mods for Your Apple Tablet\n            \n        \n        ', '2013-07-04 16:06:11');

-- --------------------------------------------------------

--
-- Table structure for table `lenskart`
--

CREATE TABLE IF NOT EXISTS `lenskart` (
  `WebsiteID` int(10) NOT NULL,
  `ProductId` int(10) NOT NULL,
  `Price` int(10) NOT NULL,
  `Link` text NOT NULL,
  `DeliveryTime` text NOT NULL,
  `EMI` int(1) NOT NULL DEFAULT '0',
  `Title` text NOT NULL,
  `Time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `letskart`
--

CREATE TABLE IF NOT EXISTS `letskart` (
  `WebsiteID` int(10) NOT NULL,
  `ProductId` int(10) NOT NULL,
  `Price` int(10) NOT NULL,
  `Link` text NOT NULL,
  `DeliveryTime` text NOT NULL,
  `EMI` int(1) NOT NULL DEFAULT '0',
  `Title` text NOT NULL,
  `Time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `letskart`
--

INSERT INTO `letskart` (`WebsiteID`, `ProductId`, `Price`, `Link`, `DeliveryTime`, `EMI`, `Title`, `Time`) VALUES
(35, 1, 4560, 'http://www.letskart.com/index.php?route=product/product&product_id=662402', 'Delivery in 4-6 working days.', 0, 'Samsung Duos W169', '2013-01-18 16:54:04'),
(35, 2, 8750, 'http://www.letskart.com/samsung-galaxy-y-duos-s6102', 'Delivery in 4-6 working days.', 0, 'Samsung Galaxy Y Duos S6102', '2013-01-18 17:35:07'),
(35, 3, 8750, 'http://www.letskart.com/index.php?route=product/product&product_id=662433', 'Delivery in 4-6 working days.', 0, 'Samsung Galaxy Y Duos S6102', '2013-01-18 17:36:06'),
(35, 4, 199, 'http://www.letskart.com/The-Power-of-Verbal-Intelligence:-10-Ways-to-Tap-into-Your-Verbal-Genius', 'Delivery in 4-6 working days.', 0, 'The Power of Verbal Intelligence: 10 Ways to Tap into Your Verbal Genius', '2013-01-18 20:24:56'),
(35, 0, 591, 'http://www.letskart.com/A-Modern-Approach-To-Verbal---Non-Verbal-Reasoning', 'Delivery in 4-6 working days.', 0, 'A Modern Approach To Verbal & Non-Verbal Reasoning', '2013-01-18 20:28:54'),
(35, 6, 445, 'http://www.letskart.com/Organizational-Behaviour---A-Modern-Approach', 'Delivery in 4-6 working days.', 0, 'Organizational Behaviour - A Modern Approach', '2013-01-18 20:29:15'),
(35, 8, 8500, 'http://www.letskart.com/index.php?route=product/product&product_id=662434', 'Delivery in 4-6 working days.', 0, 'Samsung Galaxy Y Pro Duos B5512', '2013-01-18 20:48:55'),
(35, 9, 3229, 'http://www.letskart.com/Battery-Boost-Case-for-iPhone-4', 'Delivery in 4-6 working days.', 0, 'Battery Boost Case for iPhone 4', '2013-01-18 21:16:13'),
(35, 10, 4149, 'http://www.letskart.com/index.php?route=product/product&product_id=713733', 'Delivery in 4-6 working days.', 0, 'Nokia Asha 202', '2013-01-19 01:05:47'),
(35, 11, 750, 'http://www.letskart.com/Manufacture-Of-House-Hold-Soaps-Toilet-Soaps-And-Other-Soaps-With-Formulations', 'Delivery in 4-6 working days.', 0, 'Manufacture Of House Hold Soaps, Toilet Soaps And Other Soaps With Formulations', '2013-01-19 15:32:45'),
(35, 12, 32700, 'http://www.letskart.com/samsung-galaxy-note-n7000', 'Delivery in 4-6 working days.', 0, 'Samsung Galaxy Note N7000', '2013-01-19 15:34:15'),
(35, 13, 7090, 'http://www.letskart.com/index.php?route=product/product&product_id=662209', 'Delivery in 4-6 working days.', 0, 'Samsung Galaxy Y S5360 ', '2013-01-23 19:22:54'),
(35, 14, 499, 'http://www.letskart.com/Inside-Apple', 'Delivery in 4-6 working days.', 0, 'Inside Apple', '2013-01-23 19:24:48'),
(35, 15, 14999, 'http://www.letskart.com/index.php?route=product/product&product_id=662365', 'Delivery in 4-6 working days.', 0, 'Nokia Lumia 710', '2013-01-23 19:27:45'),
(35, 16, 120, 'http://www.letskart.com/index.php?route=product/product&product_id=662815', 'Delivery in 4-6 working days.', 0, 'Philips SHE1360 Headphone', '2013-01-23 19:30:04'),
(35, 17, 1390, 'http://www.letskart.com/index.php?route=product/product&product_id=662831', 'Delivery in 4-6 working days.', 0, 'Netgear WGR614 Wireless-N 150 Router (White)', '2013-01-23 19:31:20'),
(35, 18, 1709, 'http://www.letskart.com/index.php?route=product/product&product_id=662376', 'Delivery in 4-6 working days.', 0, 'Aircel Data Card- Prepaid', '2013-01-23 19:33:11'),
(35, 19, 19300, 'http://www.letskart.com/index.php?route=product/product&product_id=662840', 'Delivery in 4-6 working days.', 0, 'Samsung Galaxy Tab 2 P3100 (Titanium Silver)', '2013-01-23 19:36:42'),
(35, 20, 15399, 'http://www.letskart.com/index.php?route=product/product&product_id=713761', 'Delivery in 4-6 working days.', 0, 'Sony Xperia U', '2013-01-23 19:38:06'),
(35, 21, 175, 'http://www.letskart.com/Fit-for-50+-for-Women', 'Delivery in 4-6 working days.', 0, 'Fit for 50+ for Women', '2013-01-23 19:40:14'),
(35, 22, 150, 'http://www.letskart.com/Great-Stories-for-Children---Pink-Book', 'Delivery in 4-6 working days.', 0, 'Great Stories for Children - Pink Book', '2013-01-23 19:42:44'),
(35, 23, 350, 'http://www.letskart.com/Single-and-Single', 'Delivery in 4-6 working days.', 0, 'Single and Single', '2013-01-23 19:44:19'),
(35, 24, 29090, 'http://www.letskart.com/index.php?route=product/product&product_id=662810', 'Delivery in 4-6 working days.', 0, 'Canon EOS 1100D Digital SLR Camera', '2013-01-23 19:45:05'),
(35, 25, 5999, 'http://www.letskart.com/index.php?route=product/product&product_id=662439', 'Delivery in 4-6 working days.', 0, 'Micromax M2', '2013-01-23 20:12:02'),
(35, 26, 250, 'http://www.letskart.com/index.php?route=product/product&product_id=662835', 'Delivery in 4-6 working days.', 0, 'Sandisk 4GB Cruzer Blade Pendrive', '2013-01-23 21:46:02'),
(35, 27, 599, 'http://www.letskart.com/Arnolds-Bodybuilding-for-Men', 'Delivery in 4-6 working days.', 0, 'Arnolds Bodybuilding for Men', '2013-01-23 22:15:50'),
(35, 28, 395, 'http://www.letskart.com/Nature-Watch', 'Delivery in 4-6 working days.', 0, 'Nature Watch', '2013-01-23 22:17:07'),
(35, 29, 15515, 'http://www.letskart.com/index.php?route=product/product&product_id=662809', 'Delivery in 4-6 working days.', 0, 'Canon Powershot SX220HS Digital Camera', '2013-01-23 22:27:23'),
(35, 31, 499, 'http://www.letskart.com/Inside-Apple', 'Delivery in 4-6 working days.', 0, 'Inside Apple', '2013-01-23 22:36:40'),
(35, 32, 250, 'http://www.letskart.com/index.php?route=product/product&product_id=662835', 'Delivery in 4-6 working days.', 0, 'Sandisk 4GB Cruzer Blade Pendrive', '2013-01-28 19:32:52'),
(35, 33, 250, 'http://www.letskart.com/index.php?route=product/product&product_id=662835', 'Delivery in 4-6 working days.', 0, 'Sandisk 4GB Cruzer Blade Pendrive', '2013-01-28 19:39:54'),
(35, 34, 14999, 'http://www.letskart.com/index.php?route=product/product&product_id=662365', 'Delivery in 4-6 working days.', 0, 'Nokia Lumia 710', '2013-01-30 13:49:37'),
(35, 35, 4050, 'http://www.letskart.com/index.php?route=product/product&product_id=662360', 'Delivery in 4-6 working days.', 0, 'Nokia Asha 200', '2013-01-30 13:52:02'),
(35, 36, 4050, 'http://www.letskart.com/index.php?route=product/product&product_id=662360', 'Delivery in 4-6 working days.', 0, 'Nokia Asha 200', '2013-01-30 13:53:08'),
(35, 38, 26330, 'http://www.letskart.com/index.php?route=product/product&product_id=662318', 'Delivery in 4-6 working days.', 0, 'BlackBerry Bold 9790', '2013-02-12 22:56:13'),
(35, 39, 26330, 'http://www.letskart.com/index.php?route=product/product&product_id=662318', 'Delivery in 4-6 working days.', 0, 'BlackBerry Bold 9790', '2013-02-12 22:56:49'),
(35, 40, 575, 'http://www.letskart.com/Mobile-Communication-(Adap)', 'Delivery in 4-6 working days.', 0, 'Mobile Communication (Adap)', '2013-02-19 17:34:09'),
(35, 41, 3168, 'http://www.letskart.com/Work-Goes-Mobile:-Nokias-Lessons-from-the-Leading-Edge', 'Delivery in 4-6 working days.', 0, 'Work Goes Mobile: Nokias Lessons from the Leading Edge', '2013-02-19 17:34:48'),
(35, 42, 1845, 'http://www.letskart.com/index.php?route=product/product&product_id=662125', 'Delivery in 4-6 working days.', 0, 'Nokia X1-01', '2013-02-19 17:35:18'),
(35, 43, 2299, 'http://www.letskart.com/index.php?route=product/product&product_id=662384', 'Delivery in 4-6 working days.', 0, 'Samsung Hero E2232', '2013-02-21 16:35:11'),
(35, 45, 195, 'http://www.letskart.com/The-Time-Machine', 'Delivery in 4-6 working days.', 0, 'The Time Machine', '2013-02-22 08:13:57'),
(35, 46, 14999, 'http://www.letskart.com/index.php?route=product/product&product_id=662365', 'Delivery in 4-6 working days.', 0, 'Nokia Lumia 710', '2013-02-22 16:36:46'),
(35, 47, 14999, 'http://www.letskart.com/index.php?route=product/product&product_id=662365', 'Delivery in 4-6 working days.', 0, 'Nokia Lumia 710', '2013-02-22 16:43:45'),
(35, 48, 7090, 'http://www.letskart.com/index.php?route=product/product&product_id=662209', 'Delivery in 4-6 working days.', 0, 'Samsung Galaxy Y S5360 ', '2013-02-24 10:53:17'),
(35, 49, 499, 'http://www.letskart.com/Inside-Apple', 'Delivery in 4-6 working days.', 0, 'Inside Apple', '2013-02-24 10:57:21'),
(35, 50, 287, 'http://www.letskart.com/The-Apple-Bandit', 'Delivery in 4-6 working days.', 0, 'The Apple Bandit', '2013-02-24 10:58:27'),
(35, 51, 287, 'http://www.letskart.com/The-Apple-Bandit', 'Delivery in 4-6 working days.', 0, 'The Apple Bandit', '2013-02-24 13:13:21'),
(35, 52, 1250, 'http://www.letskart.com/Why-Should-Anyone-be-Led-by-You?', 'Delivery in 4-6 working days.', 0, 'Why Should Anyone be Led by You?', '2013-02-24 16:35:46'),
(35, 53, 1250, 'http://www.letskart.com/Why-Should-Anyone-be-Led-by-You?', 'Delivery in 4-6 working days.', 0, 'Why Should Anyone be Led by You?', '2013-02-24 16:38:41'),
(35, 54, 1390, 'http://www.letskart.com/Netgear-WGR614-Wireless-N-150', 'Delivery in 4-6 working days.', 0, 'Netgear WGR614 Wireless-N 150 Router (White)', '2013-02-25 19:03:01'),
(35, 55, 14999, 'http://www.letskart.com/index.php?route=product/product&product_id=662365', 'Delivery in 4-6 working days.', 0, 'Nokia Lumia 710', '2013-02-28 02:05:17'),
(35, 56, 16050, 'http://www.letskart.com/index.php?route=product/product&product_id=662319', 'Delivery in 4-6 working days.', 0, 'BlackBerry Curve 9380', '2013-02-28 02:32:52'),
(35, 59, 250, 'http://www.letskart.com/index.php?route=product/product&product_id=662835', 'Delivery in 4-6 working days.', 0, 'Sandisk 4GB Cruzer Blade Pendrive', '2013-02-28 19:26:08'),
(35, 60, 250, 'http://www.letskart.com/index.php?route=product/product&product_id=662835', 'Delivery in 4-6 working days.', 0, 'Sandisk 4GB Cruzer Blade Pendrive', '2013-02-28 19:27:14'),
(35, 61, 250, 'http://www.letskart.com/index.php?route=product/product&product_id=662835', 'Delivery in 4-6 working days.', 0, 'Sandisk 4GB Cruzer Blade Pendrive', '2013-02-28 19:28:17'),
(35, 64, 350, 'http://www.letskart.com/Structural-Analysis---I', 'Delivery in 4-6 working days.', 0, 'Structural Analysis - I', '2013-03-04 20:09:09'),
(35, 65, 195, 'http://www.letskart.com/Ã‚Â Mechanics-Of-Machines-Elemantary-Theory-And-Examples-(Elementary-Theory-And-Examples)', 'Delivery in 4-6 working days.', 0, 'Ã‚Â Mechanics Of Machines Elemantary Theory And Examples (Elementary Theory And Examples)', '2013-03-04 20:18:36'),
(35, 66, 175, 'http://www.letskart.com/Management:-Theory-and-Practice', 'Delivery in 4-6 working days.', 0, 'Management: Theory and Practice', '2013-03-04 20:19:01'),
(35, 67, 290, 'http://www.letskart.com/Introduction-To-Automata-Theory-Languages-And-Computation', 'Delivery in 4-6 working days.', 0, 'Introduction To Automata Theory Languages And Computation', '2013-03-04 20:20:05'),
(35, 68, 290, 'http://www.letskart.com/Introduction-To-Automata-Theory-Languages-And-Computation', 'Delivery in 4-6 working days.', 0, 'Introduction To Automata Theory Languages And Computation', '2013-03-04 21:34:52'),
(35, 69, 290, 'http://www.letskart.com/Introduction-To-Automata-Theory-Languages-And-Computation', 'Delivery in 4-6 working days.', 0, 'Introduction To Automata Theory Languages And Computation', '2013-03-04 21:36:07'),
(35, 70, 115, 'http://www.letskart.com/Civil-Services-Planner', 'Delivery in 4-6 working days.', 0, 'Civil Services Planner', '2013-03-04 23:09:03'),
(35, 71, 110, 'http://www.letskart.com/Machine-Drawing', 'Delivery in 4-6 working days.', 0, 'Machine Drawing', '2013-03-07 11:01:15'),
(35, 72, 7090, 'http://www.letskart.com/index.php?route=product/product&product_id=662209', 'Delivery in 4-6 working days.', 0, 'Samsung Galaxy Y S5360 ', '2013-03-17 20:37:21'),
(35, 73, 7090, 'http://www.letskart.com/index.php?route=product/product&product_id=662209', 'Delivery in 4-6 working days.', 0, 'Samsung Galaxy Y S5360 ', '2013-03-19 14:59:59'),
(35, 74, 16050, 'http://www.letskart.com/index.php?route=product/product&product_id=662319', 'Delivery in 4-6 working days.', 0, 'BlackBerry Curve 9380', '2013-03-19 15:06:04'),
(35, 75, 199, 'http://www.letskart.com/The-Diary-of-a-Social-Butterfly', 'Delivery in 4-6 working days.', 0, 'The Diary of a Social Butterfly', '2013-03-19 15:09:08'),
(35, 76, 199, 'http://www.letskart.com/The-Diary-of-a-Social-Butterfly', 'Delivery in 4-6 working days.', 0, 'The Diary of a Social Butterfly', '2013-03-19 15:10:21'),
(35, 77, 1470, 'http://www.letskart.com/index.php?route=product/product&product_id=662098', 'Delivery in 4-6 working days.', 0, 'Nokia 101', '2013-03-19 15:12:57'),
(35, 78, 7090, 'http://www.letskart.com/index.php?route=product/product&product_id=662209', 'Delivery in 4-6 working days.', 0, 'Samsung Galaxy Y S5360 ', '2013-03-19 19:06:29'),
(35, 79, 178, 'http://www.letskart.com/index.php?route=product/product&product_id=662814', 'Delivery in 4-6 working days.', 0, 'Strontium 4GB Class 4 MicroSD Memory Card', '2013-03-19 19:15:29'),
(35, 80, 15399, 'http://www.letskart.com/index.php?route=product/product&product_id=713761', 'Delivery in 4-6 working days.', 0, 'Sony Xperia U', '2013-03-21 16:44:57'),
(35, 81, 9230, 'http://www.letskart.com/index.php?route=product/product&product_id=662261', 'Delivery in 4-6 working days.', 0, 'Sony Ericsson W8 (E16i)', '2013-03-21 16:51:05'),
(35, 82, 199, 'http://www.letskart.com/Colors', 'Delivery in 4-6 working days.', 0, 'Colors', '2013-03-21 17:00:50'),
(35, 83, 120, 'http://www.letskart.com/Puss-in-Boots', 'Delivery in 4-6 working days.', 0, 'Puss in Boots', '2013-03-21 17:03:45'),
(35, 84, 175, 'http://www.letskart.com/Grace-Unlimited', 'Delivery in 4-6 working days.', 0, 'Grace Unlimited', '2013-03-21 17:06:45'),
(35, 85, 3040, 'http://www.letskart.com/Will-Solvit-Novels:-Bk.-1:-Will-Solvit-and-the-T-Rex-Terror', 'Delivery in 4-6 working days.', 0, 'Will Solvit Novels: Bk. 1: Will Solvit and the T-Rex Terror', '2013-03-21 17:12:09'),
(35, 86, 5999, 'http://www.letskart.com/index.php?route=product/product&product_id=662439', 'Delivery in 4-6 working days.', 0, 'Micromax M2', '2013-03-28 22:46:59'),
(35, 91, 14999, 'http://www.letskart.com/index.php?route=product/product&product_id=662365', 'Delivery in 4-6 working days.', 0, 'Nokia Lumia 710', '2013-07-03 15:54:31'),
(35, 93, 1470, 'http://www.letskart.com/index.php?route=product/product&product_id=662098', 'Delivery in 4-6 working days.', 0, 'Nokia 101', '2013-07-04 05:25:27'),
(35, 94, 1470, 'http://www.letskart.com/index.php?route=product/product&product_id=662098', 'Delivery in 4-6 working days.', 0, 'Nokia 101', '2013-07-04 05:28:07'),
(35, 95, 13466, 'http://www.letskart.com/index.php?route=product/product&product_id=662833', 'Delivery in 4-6 working days.', 0, 'HTC Wildfire S (Dark Grey)', '2013-07-04 05:32:38'),
(35, 96, 10550, 'http://www.letskart.com/index.php?route=product/product&product_id=662368', 'Delivery in 4-6 working days.', 0, 'HCL ME Tablet X1', '2013-07-04 16:06:12'),
(35, 97, 932, 'http://www.letskart.com/Book-of-Answers', 'Delivery in 4-6 working days.', 0, 'Book of Answers', '2013-07-04 18:21:04');

-- --------------------------------------------------------

--
-- Table structure for table `letsshop`
--

CREATE TABLE IF NOT EXISTS `letsshop` (
  `WebsiteID` int(10) NOT NULL,
  `ProductId` int(10) NOT NULL,
  `Price` int(10) NOT NULL,
  `Link` text NOT NULL,
  `DeliveryTime` text NOT NULL,
  `EMI` int(1) NOT NULL DEFAULT '0',
  `Title` text NOT NULL,
  `Time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `letsshop`
--

INSERT INTO `letsshop` (`WebsiteID`, `ProductId`, `Price`, `Link`, `DeliveryTime`, `EMI`, `Title`, `Time`) VALUES
(30, 1, 6390, 'http://letsshop.in/samsung-galaxy-music-duos-s6012-splash-blue-1.html', 'Delivery in 5-7 days.', 0, '\n				Samsung Galaxy Music Duos S6012 (Ye...                \n                ', '2013-01-18 16:54:02'),
(30, 2, 5990, 'http://letsshop.in/samsung-galaxy-y-duos-lite-s5302-white.html', 'Delivery in 5-7 days.', 0, '\n				Samsung Galaxy Y Duos Lite S5302 (W...                \n                ', '2013-01-18 17:35:07'),
(30, 3, 7290, 'http://letsshop.in/samsung-galaxy-y-duos-s6102.html', 'Delivery in 5-7 days.', 0, '\n				Samsung Galaxy Y Duos S6102 (Strong...                \n                ', '2013-01-18 17:36:06'),
(30, 4, 4450, 'http://letsshop.in/samsung-champ-duos-e2652-modern-black.html', 'Delivery in 5-7 days.', 0, '\n				Samsung Champ DUOS E2652 (Modern Bl...                \n                ', '2013-01-18 20:24:42'),
(30, 0, 17000, 'http://letsshop.in/netgear-r6300-wifi-router.html', 'Delivery in 5-7 days.', 0, '\n				Netgear R6300 WiFi Router                \n                ', '2013-01-18 20:28:52'),
(30, 6, 4450, 'http://letsshop.in/samsung-champ-duos-e2652-modern-black.html', 'Delivery in 5-7 days.', 0, '\n				Samsung Champ DUOS E2652 (Modern Bl...                \n                ', '2013-01-18 20:29:15'),
(30, 8, 11890, 'http://letsshop.in/samsung-galaxy-s-duos-s7562-black.html', 'Delivery in 5-7 days.', 0, '\n				Samsung Galaxy S Duos S7562 (Black)                \n                ', '2013-01-18 20:48:56'),
(30, 9, 7950, 'http://letsshop.in/nikon-coolpix-s4300-point-shoot-purple.html', 'Delivery in 5-7 days.', 0, '\n				Nikon Coolpix S4300 Point & Sho...                \n                ', '2013-01-18 21:16:09'),
(30, 10, 3749, 'http://letsshop.in/nokia-asha-306-red.html', 'Delivery in 5-7 days.', 0, '\n				Nokia Asha 306 (Red)                \n                ', '2013-01-19 01:05:47'),
(30, 11, 1870, 'http://letsshop.in/natraj-baby-highchair-white.html', 'Delivery in 5-7 days.', 0, '\n				 Natraj Baby Highchair (White)                \n                ', '2013-01-19 15:32:39'),
(30, 12, 27500, 'http://letsshop.in/samsung-galaxy-note-n-7000-blue.html', 'Delivery in 5-7 days.', 0, '\n				Samsung Galaxy Note N-7000 (Blue)                 \n                ', '2013-01-19 15:34:16'),
(30, 13, 7990, 'http://letsshop.in/samsung-galaxy-chat-b5330-white.html', 'Delivery in 5-7 days.', 0, '\n				Samsung Galaxy Chat B5330 (White)                \n                ', '2013-01-23 19:22:53'),
(30, 14, 2043, 'http://letsshop.in/d-link-dir-615-wireless-n-300-router-black.html', 'Delivery in 5-7 days.', 0, '\n				D-Link DIR-615 Wireless-N 300 Route...                \n                ', '2013-01-23 19:24:49'),
(30, 15, 9999, 'http://letsshop.in/nokia-lumia-523.html', 'Delivery in 5-7 days.', 0, '\n				Nokia Lumia 520  (Cyan)                 \n                ', '2013-01-23 19:27:46'),
(30, 16, 2000, 'http://letsshop.in/philips-gogear-mix-2-gb-mp3-player-black.html', 'Delivery in 5-7 days.', 0, '\n				Philips GoGear Mix 2 GB MP3 Player ...                \n                ', '2013-01-23 19:30:04'),
(30, 17, 1579, 'http://letsshop.in/netgear-wgr614-wireless-n-150-router-white.html', 'Delivery in 5-7 days.', 0, '\n				Netgear WGR614 Wireless-N 150 Route...                \n                ', '2013-01-23 19:31:19'),
(30, 18, 10290, 'http://letsshop.in/karbonn-cosmic-smart-tab10-tablet-wi-fi.html', 'Delivery in 5-7 days.', 0, '\n				Karbonn Cosmic Smart Tab10 Tablet (...                \n                ', '2013-01-23 19:33:13'),
(30, 19, 19300, 'http://letsshop.in/samsung-galaxy-tab-2-p3100-pure-white-wi-fi-3g-16-gb.html', 'Delivery in 5-7 days.', 0, '\n				Samsung Galaxy Tab 2 P3100 (Pure wh...                \n                ', '2013-01-23 19:36:44'),
(30, 20, 12610, 'http://letsshop.in/sony-ericsson-xperia-x10-mini-pro-black.html', 'Delivery in 5-7 days.', 0, '\n				Sony Ericsson XPERIA X10 Mini Pro (...                \n                ', '2013-01-23 19:38:07'),
(30, 21, 116, 'http://letsshop.in/garnier-wrinkle-lift-anti-ageing-cream-18-ml.html', 'Delivery in 5-7 days.', 0, '\n				Garnier Wrinkle Lift Anti-Ageing Cr...                \n                ', '2013-01-23 19:40:16'),
(30, 22, 3295, 'http://letsshop.in/casio-standard-analog-watch-a532-for-women-pink.html', 'Delivery in 5-7 days.', 0, '\n				Casio Standard Analog Watch,A532 - ...                \n                ', '2013-01-23 19:42:45'),
(30, 23, 37199, 'http://letsshop.in/nokia-lumia-920-white.html', 'Delivery in 5-7 days.', 0, '\n				Nokia Lumia 920 (White)                \n                ', '2013-01-23 19:44:20'),
(30, 24, 34100, 'http://letsshop.in/nikon-d5100-slr-black-with-af-s-18-55mm-vr-kit-lens.html', 'Delivery in 5-7 days.', 0, '\n				Nikon D5100 SLR (Black) with AF-S 1...                \n                ', '2013-01-23 19:45:06'),
(30, 25, 4750, 'http://letsshop.in/micromax-superfone-ninja-a50-white.html', 'Delivery in 5-7 days.', 0, '\n				Micromax Superfone Ninja A50 (White...                \n                ', '2013-01-23 20:12:05'),
(30, 26, 580, 'http://letsshop.in/sandisk-cruzer-blade-16-gb-pen-drive-black-red.html', 'Delivery in 5-7 days.', 0, '\n				Sandisk Cruzer Blade 16 GB Pen Driv...                \n                ', '2013-01-23 21:46:05'),
(30, 27, 3411, 'http://letsshop.in/nokia-2700-classic-black.html', 'Delivery in 5-7 days.', 0, '\n				Nokia  2700 Classic (Black)                \n                ', '2013-01-23 22:15:51'),
(30, 28, 6795, 'http://letsshop.in/timex-analog-watch-unisex-brown-t2m422.html', 'Delivery in 5-7 days.', 0, '\n				Timex Analog Watch - Unisex (Brown)...                \n                ', '2013-01-23 22:17:11'),
(30, 29, 9995, 'http://letsshop.in/canon-powershot-sx150-is-point-shoot-silver.html', 'Delivery in 5-7 days.', 0, '\n				Canon PowerShot SX150 IS Point &amp...                \n                ', '2013-01-23 22:27:25'),
(30, 31, 1980, 'http://letsshop.in/d-link-dir-615-wireless-n-300-router-black.html', 'Delivery in 5-7 days.', 0, '\n				D-Link DIR-615 Wireless-N 300 Route...                \n                ', '2013-01-23 22:36:41'),
(30, 32, 375, 'http://letsshop.in/transcend-jet-flash-350-8gb-pen-drive-black.html', 'Delivery in 5-7 days.', 0, '\n				Transcend Jet Flash 350 8GB Pen Dri...                \n                ', '2013-01-28 19:32:51'),
(30, 33, 550, 'http://letsshop.in/kingston-datatraveler-109-16gb-pen-drive-black-white.html', 'Delivery in 5-7 days.', 0, '\n				Kingston DataTraveler 109 16GB Pen ...                \n                ', '2013-01-28 19:39:55'),
(30, 34, 9999, 'http://letsshop.in/nokia-lumia-523.html', 'Delivery in 5-7 days.', 0, '\n				Nokia Lumia 520  (Cyan)                 \n                ', '2013-01-30 13:49:37'),
(30, 35, 5491, 'http://letsshop.in/nokia-asha-310-black-1.html', 'Delivery in 5-7 days.', 0, '\n				Nokia Asha 310 (Gold)                \n                ', '2013-01-30 13:52:03'),
(30, 36, 5491, 'http://letsshop.in/nokia-asha-310-black-1.html', 'Delivery in 5-7 days.', 0, '\n				Nokia Asha 310 (Gold)                \n                ', '2013-01-30 13:53:08'),
(30, 38, 22950, 'http://letsshop.in/blackberry-bold-3-9780-black.html', 'Delivery in 5-7 days.', 0, '\n				BlackBerry Bold 3 9780 (Black)                \n                ', '2013-02-12 22:56:14'),
(30, 39, 21999, 'http://letsshop.in/blackberry-bold-9790-white.html', 'Delivery in 5-7 days.', 0, '\n				BlackBerry Bold 9790 (White)                \n                ', '2013-02-12 22:56:51'),
(30, 40, 11900, 'http://letsshop.in/karbonn-a30-black.html', 'Delivery in 5-7 days.', 0, '\n				Karbonn A30 (Black)                \n                ', '2013-02-19 17:34:09'),
(30, 41, 3499, 'http://letsshop.in/micromax-ninja-a27-black.html', 'Delivery in 5-7 days.', 0, '\n				Micromax Ninja A27 (Black)                \n                ', '2013-02-19 17:34:45'),
(30, 42, 26799, 'http://letsshop.in/nokia-lumia-820-yellow.html', 'Delivery in 5-7 days.', 0, '\n				Nokia Lumia 820 (Yellow)                \n                ', '2013-02-19 17:35:19'),
(30, 43, 2190, 'http://letsshop.in/samsung-metro-e2202-white.html', 'Delivery in 5-7 days.', 0, '\n				Samsung Metro E2202 (White)                \n                ', '2013-02-21 16:35:14'),
(30, 45, 38900, 'http://letsshop.in/samsung-np300e5c-a08in-laptop-3rd-gen-ci5-4gb-750gb-win8.html', 'Delivery in 5-7 days.', 0, '\n				Samsung NP300E5C-A08IN Laptop (3rd ...                \n                ', '2013-02-22 08:13:59'),
(30, 46, 9999, 'http://letsshop.in/nokia-lumia-523.html', 'Delivery in 5-7 days.', 0, '\n				Nokia Lumia 520  (Cyan)                 \n                ', '2013-02-22 16:36:48'),
(30, 47, 9999, 'http://letsshop.in/nokia-lumia-523.html', 'Delivery in 5-7 days.', 0, '\n				Nokia Lumia 520  (Cyan)                 \n                ', '2013-02-22 16:43:44'),
(30, 48, 21500, 'http://letsshop.in/samsung-galaxy-grand-duos-i9082-metallic-blue.html', 'Delivery in 5-7 days.', 0, '\n				Samsung Galaxy Grand Duos I9082 (Me...                \n                ', '2013-02-24 10:53:17'),
(30, 49, 1980, 'http://letsshop.in/d-link-dir-615-wireless-n-300-router-black.html', 'Delivery in 5-7 days.', 0, '\n				D-Link DIR-615 Wireless-N 300 Route...                \n                ', '2013-02-24 10:57:22'),
(30, 50, 349, 'http://letsshop.in/callmate-car-charger-3-in-1-iphone-car-and-wall-charger.html', 'Delivery in 5-7 days.', 0, '\n				Callmate Car Charger 3-in-1 iPhone ...                \n                ', '2013-02-24 10:58:27'),
(30, 51, 3700, 'http://letsshop.in/apple-ipod-shuffle.html', 'Delivery in 5-7 days.', 0, '\n				Apple iPod shuffle 2GB (Silver)                \n                ', '2013-02-24 13:13:24'),
(30, 52, 19999, 'http://letsshop.in/samsung-google-nexus-black.html', 'Delivery in 5-7 days.', 0, '\n				Samsung Google Nexus (Black)                \n                ', '2013-02-24 16:35:50'),
(30, 53, 19999, 'http://letsshop.in/samsung-google-nexus-black.html', 'Delivery in 5-7 days.', 0, '\n				Samsung Google Nexus (Black)                \n                ', '2013-02-24 16:38:42'),
(30, 54, 3450, 'http://letsshop.in/netgear-dgn2200-adsl2-wireless-n300-router-with-modem-black.html', 'Delivery in 5-7 days.', 0, '\n				Netgear DGN2200 ADSL2+ Wireless N30...                \n                ', '2013-02-25 19:03:01'),
(30, 55, 9999, 'http://letsshop.in/nokia-lumia-523.html', 'Delivery in 5-7 days.', 0, '\n				Nokia Lumia 520  (Cyan)                 \n                ', '2013-02-28 02:05:19'),
(30, 56, 43490, 'http://letsshop.in/blackberry-z10-charcoal-black.html', 'Delivery in 5-7 days.', 0, '\n				BlackBerry Z10 (Charcoal Black)                \n                ', '2013-02-28 02:32:52'),
(30, 59, 560, 'http://letsshop.in/sandisk-cruzer-blade-16gb-pen-drive-black-red.html', 'Delivery in 5-7 days.', 0, '\n				Sandisk Cruzer Blade 16GB Pen Drive...                \n                ', '2013-02-28 19:26:09'),
(30, 60, 16600, 'http://letsshop.in/sony-cyber-shot-dsc-hx10v-point-shoot-black.html', 'Delivery in 5-7 days.', 0, '\n				Sony Cyber-shot DSC-HX10V Point &am...                \n                ', '2013-02-28 19:27:08'),
(30, 61, 16600, 'http://letsshop.in/sony-cyber-shot-dsc-hx10v-point-shoot-black.html', 'Delivery in 5-7 days.', 0, '\n				Sony Cyber-shot DSC-HX10V Point &am...                \n                ', '2013-02-28 19:28:18'),
(30, 64, 3299, 'http://letsshop.in/karbonn-k770i.html', 'Delivery in 5-7 days.', 0, '\n				Karbonn K770i                 \n                ', '2013-03-04 20:09:12'),
(30, 65, 3299, 'http://letsshop.in/karbonn-k770i.html', 'Delivery in 5-7 days.', 0, '\n				Karbonn K770i                 \n                ', '2013-03-04 20:18:38'),
(30, 66, 3299, 'http://letsshop.in/karbonn-k770i.html', 'Delivery in 5-7 days.', 0, '\n				Karbonn K770i                 \n                ', '2013-03-04 20:19:04'),
(30, 67, 3299, 'http://letsshop.in/karbonn-k770i.html', 'Delivery in 5-7 days.', 0, '\n				Karbonn K770i                 \n                ', '2013-03-04 20:20:11'),
(30, 68, 3299, 'http://letsshop.in/karbonn-k770i.html', 'Delivery in 5-7 days.', 0, '\n				Karbonn K770i                 \n                ', '2013-03-04 21:34:56'),
(30, 69, 3299, 'http://letsshop.in/karbonn-k770i.html', 'Delivery in 5-7 days.', 0, '\n				Karbonn K770i                 \n                ', '2013-03-04 21:36:12'),
(30, 70, 22000, 'http://letsshop.in/hp-pavilion-1000-1b02au-laptop-apu-dual-core-2gb-320gb-dos-black.html', 'Delivery in 5-7 days.', 0, '\n				HP Pavilion 1000-1B02AU Laptop (APU...                \n                ', '2013-03-04 23:09:05'),
(30, 71, 2589, 'http://letsshop.in/lava-kkt-22-black.html', 'Delivery in 5-7 days.', 0, '\n				Lava Kkt 22 (Black)                \n                ', '2013-03-07 11:01:17'),
(30, 72, 7990, 'http://letsshop.in/samsung-galaxy-chat-b5330-white.html', 'Delivery in 5-7 days.', 0, '\n				Samsung Galaxy Chat B5330 (White)                \n                ', '2013-03-17 20:37:24'),
(30, 73, 10000, 'http://letsshop.in/samsung-samsung-galaxy-pro-b7510-platinum-silver.html', 'Delivery in 5-7 days.', 0, '\n				Samsung Galaxy Pro B7510 (Platinum ...                \n                ', '2013-03-19 15:00:03'),
(30, 74, 43490, 'http://letsshop.in/blackberry-z10-charcoal-black.html', 'Delivery in 5-7 days.', 0, '\n				BlackBerry Z10 (Charcoal Black)                \n                ', '2013-03-19 15:06:07'),
(30, 75, 35365, 'http://letsshop.in/nikon-d3200-slr-red-with-18-55-mm-vr-kit-lens.html', 'Delivery in 5-7 days.', 0, '\n				Nikon D3200 SLR (Red) with 18-55 mm...                \n                ', '2013-03-19 15:09:08'),
(30, 76, 10900, 'http://letsshop.in/citizen-classic-analog-watch-for-men-silver-ao3000-50b.html', 'Delivery in 5-7 days.', 0, '\n				Citizen Classic Analog Watch - For ...                \n                ', '2013-03-19 15:10:25'),
(30, 77, 1200, 'http://letsshop.in/nokia-105-black.html', 'Delivery in 5-7 days.', 0, '\n				Nokia 105 (Black)                \n                ', '2013-03-19 15:12:58'),
(30, 78, 21299, 'http://letsshop.in/samsung-galaxy-grand-duos-i9082-metallic-blue.html', 'Delivery in 5-7 days.', 0, '\n				Samsung Galaxy Grand Duos I9082 (Me...                \n                ', '2013-03-19 19:06:32'),
(30, 79, 670, 'http://letsshop.in/transcend-memory-card-microsd-16gb-class-4.html', 'Delivery in 5-7 days.', 0, '\n				Transcend Memory Card MicroSD 16GB ...                \n                ', '2013-03-19 19:15:33'),
(30, 80, 12610, 'http://letsshop.in/sony-ericsson-xperia-x10-mini-pro-black.html', 'Delivery in 5-7 days.', 0, '\n				Sony Ericsson XPERIA X10 Mini Pro (...                \n                ', '2013-03-21 16:45:02'),
(30, 81, 35990, 'http://letsshop.in/sony-xperia-zl-white.html', 'Delivery in 5-7 days.', 0, '\n				Sony Xperia ZL (White)                \n                ', '2013-03-21 16:51:07'),
(30, 82, 3299, 'http://letsshop.in/karbonn-k770i.html', 'Delivery in 5-7 days.', 0, '\n				Karbonn K770i                 \n                ', '2013-03-21 17:00:55'),
(30, 84, 12999, 'http://letsshop.in/nokia-lumia-710-cyan.html', 'Delivery in 5-7 days.', 0, '\n				Nokia Lumia 710 (Cyan)                \n                ', '2013-03-21 17:06:51'),
(30, 85, 4385, 'http://letsshop.in/samsung-rex-70-s3802-silver-6385.html', 'Delivery in 5-7 days.', 0, '\n				Samsung Rex 70 S3802 (Chic White)                \n                ', '2013-03-21 17:12:11'),
(30, 86, 14499, 'http://letsshop.in/micromax-canvas-hd-a116-black-1.html', 'Delivery in 5-7 days.', 0, '\n				 Micromax Canvas HD A116 (White)                \n                ', '2013-03-28 22:46:58'),
(30, 87, 19999, 'http://letsshop.in/samsung-google-nexus-black.html', 'Delivery in 5-7 days.', 0, '\n				Samsung Google Nexus (Black)                \n                ', '2013-03-29 10:22:05'),
(30, 88, 19999, 'http://letsshop.in/samsung-google-nexus-black.html', 'Delivery in 5-7 days.', 0, '\n				Samsung Google Nexus (Black)                \n                ', '2013-03-29 10:23:04'),
(30, 89, 19999, 'http://letsshop.in/samsung-google-nexus-black.html', 'Delivery in 5-7 days.', 0, '\n				Samsung Google Nexus (Black)                \n                ', '2013-03-29 10:24:11'),
(30, 91, 9999, 'http://letsshop.in/nokia-lumia-523.html', 'Delivery in 5-7 days.', 0, '\n				Nokia Lumia 520  (Cyan)                 \n                ', '2013-07-03 15:54:31'),
(30, 93, 1200, 'http://letsshop.in/nokia-105-black.html', 'Delivery in 5-7 days.', 0, '\n				Nokia 105 (Black)                \n                ', '2013-07-04 05:25:40'),
(30, 94, 1200, 'http://letsshop.in/nokia-105-black.html', 'Delivery in 5-7 days.', 0, '\n				Nokia 105 (Black)                \n                ', '2013-07-04 05:28:07'),
(30, 95, 4599, 'http://letsshop.in/micromax-bolt-a51-1.html', 'Delivery in 5-7 days.', 0, '\n				Micromax Bolt A51 (Grey)                \n                ', '2013-07-04 05:32:39'),
(30, 96, 61500, 'http://letsshop.in/hp-envy-x2-11-g004tu-laptop-2nd-gen-adc-2gb-64gb-emmc-win8-aluminium-finish-in-natura-silver-colour.html', 'Delivery in 5-7 days.', 0, '\n				HP Envy X2 11-G004TU Laptop (2nd Ge...                \n                ', '2013-07-04 16:06:13'),
(30, 97, 4599, 'http://letsshop.in/micromax-bolt-a51-1.html', 'Delivery in 5-7 days.', 0, '\n				Micromax Bolt A51 (Grey)                \n                ', '2013-07-04 18:21:05');

-- --------------------------------------------------------

--
-- Table structure for table `maniacstore`
--

CREATE TABLE IF NOT EXISTS `maniacstore` (
  `WebsiteID` int(10) NOT NULL,
  `ProductId` int(10) NOT NULL,
  `Price` int(10) NOT NULL,
  `Link` text NOT NULL,
  `DeliveryTime` text NOT NULL,
  `EMI` int(1) NOT NULL DEFAULT '1',
  `Title` text NOT NULL,
  `Time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mirchimart`
--

CREATE TABLE IF NOT EXISTS `mirchimart` (
  `WebsiteID` int(10) NOT NULL,
  `ProductId` int(10) NOT NULL,
  `Price` int(10) NOT NULL,
  `Link` text COLLATE utf8_unicode_ci NOT NULL,
  `DeliveryTime` text COLLATE utf8_unicode_ci NOT NULL,
  `EMI` int(1) NOT NULL DEFAULT '0',
  `Title` text COLLATE utf8_unicode_ci NOT NULL,
  `Time` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `mirchimart`
--

INSERT INTO `mirchimart` (`WebsiteID`, `ProductId`, `Price`, `Link`, `DeliveryTime`, `EMI`, `Title`, `Time`) VALUES
(66, 1, 11445, 'http://www.mirchimart.com/Samsung-Galaxy-Ace-Duos-S6802-Black/Mobiles/p/OGSSBC29OETC;jsessionid=BE56B669BD18BBE26E16608AF5FB6EC6.jvm1', '2-4 Working Days.', 0, 'Samsung Galaxy Ace Duos S6802 (Black)', '2013-01-18 16:54:06'),
(66, 8, 11990, 'http://www.mirchimart.com/Samsung-Galaxy-S-Duos-S7562--Black/Mobiles/p/P8CS1O0E07WGYH;jsessionid=FE623D258AF18E68069AF505CE330178.jvm1', '2-4 Working Days.', 0, 'Samsung Galaxy S Duos S7562 - Black', '2013-01-18 20:48:57'),
(66, 9, 999, 'http://www.mirchimart.com/Capdase-id-Pocket-Posh-DPIH4SH057-PURPLEORANGE----/iPhoneCases/p/6AK7SX7VSL8GQ9F;jsessionid=11D113427E4672EE45C44D24BBE829E7.jvm1', '2-4 Working Days.', 0, 'Capdase id Pocket Posh (DPIH4S-H057) PURPLE/ORANGE    ', '2013-01-18 21:16:10'),
(66, 10, 4149, 'http://www.mirchimart.com/Nokia-Asha-305-Dark-Grey/Mobiles/p/XA1K19KLONI8SU;jsessionid=CCE0BB322F28FD7DC7D528273CAB66BF.jvm1', '2-4 Working Days.', 0, 'Nokia Asha 305 (Dark Grey)', '2013-01-19 01:05:47'),
(66, 12, 36645, 'http://www.mirchimart.com/Samsung-Galaxy-Note-2-N7100--Grey/Mobiles/p/NS44P5SEY1HCN8S;jsessionid=EB1A47381DEB3F736B11967E860DD6C8.jvm1', '2-4 Working Days.', 0, 'Samsung Galaxy Note 2 N7100 - Grey', '2013-01-19 15:34:17'),
(66, 13, 28900, 'http://www.mirchimart.com/Samsung-Galaxy-S3--Pebble-Blue/Mobiles/p/I4NME6AI0F0GA;jsessionid=2C8FBFB14B72B9496F70B9CA69EFA94E.jvm1', '2-4 Working Days.', 0, 'Samsung Galaxy S3 - Pebble Blue', '2013-01-23 19:22:55'),
(66, 15, 12381, 'http://www.mirchimart.com/Nokia-Lumia-610--Black/Mobiles/p/2EJ7USZR7XFKN;jsessionid=1D359C04CFF235AAA4609BC1E71E1C50.jvm1', '2-4 Working Days.', 0, 'Nokia Lumia 610 - Black', '2013-01-23 19:27:46'),
(66, 16, 410, 'http://www.mirchimart.com/Philips-SHS39098-Sports-Style-Headphones/AudioHeadphones/p/542B3ABH8YKGSBP1;jsessionid=E578E5AD7571C69E5782979974202794.jvm1', '2-4 Working Days.', 0, 'Philips SHS390/98 Sports Style Headphones', '2013-01-23 19:30:06'),
(66, 19, 4499, 'http://www.mirchimart.com/Samsung-Galaxy-Tab-2-P3100-Keyboard-Dock/Docks/p/TWZ35XQX9GQOY;jsessionid=05AF9A58D447DD7A849AC390757A2D6C.jvm1', '2-4 Working Days.', 0, 'Samsung Galaxy Tab 2 P3100 Keyboard Dock', '2013-01-23 19:36:44'),
(66, 20, 15289, 'http://www.mirchimart.com/Sony-Xperia-J-White/Mobiles/p/AGR5VNOZ7280T1;jsessionid=99CE3A301CDD72D6D288C9A3445C09CC.jvm1', '2-4 Working Days.', 0, 'Sony Xperia J (White)', '2013-01-23 19:38:09'),
(66, 55, 11970, 'http://www.mirchimart.com/Nokia-Lumia-710-Black/Mobiles/p/1YM3TUS8BDHCNHP;jsessionid=5BBD604636B33E93CB2029849E32FB44.jvm1', '2-4 Working Days.', 0, 'Nokia Lumia 710 (Black)', '2013-02-28 02:05:19'),
(66, 25, 4949, 'http://www.mirchimart.com/Micromax-Ninja-3-A57--Black/Mobiles/p/TF451I5VBAPS46;jsessionid=4B4C80D5DB50D10C5F21F982434052C5.jvm1', '2-4 Working Days.', 0, 'Micromax Ninja 3 A57 - Black', '2013-01-23 20:12:05'),
(66, 26, 520, 'http://www.mirchimart.com/SanDisk-Cruzer-Blade-16GB-PenDrive/ExDStPenDrive/p/IF6FE27V8C1S0YES;jsessionid=E5D3905CB44DEA752BC24607F476812A.jvm1', '2-4 Working Days.', 0, 'SanDisk Cruzer Blade 16GB PenDrive', '2013-01-23 21:46:04'),
(66, 31, 1590, 'http://www.mirchimart.com/Targus-13-inch-Tar-Apple-Slip-Case-For-Macbook-TBS020AP10/MbookCases/p/QDCXNAIDET4W;jsessionid=5D7F41675066AA9FFFA511F5A8ED94C9.jvm1', '2-4 Working Days.', 0, 'Targus 13 inch Tar Apple Slip Case For Macbook (TB...', '2013-01-23 22:36:41'),
(66, 32, 210, 'http://www.mirchimart.com/Sandisk-Cruzer-Blade-2GB-Pendrive/ExDStPenDrive/p/9XD1RP538LQ8VMI9D;jsessionid=5815C66A54951E7EC8BBDB356CD8ADEE.jvm1', '2-4 Working Days.', 0, 'Sandisk Cruzer Blade 2GB Pendrive', '2013-01-28 19:32:53'),
(66, 34, 31131, 'http://www.mirchimart.com/Nokia-Lumia-900--Black/Mobiles/p/0T6BGOINB6TC6J;jsessionid=5714980E2BEE6A3FBEDA97A1560AF812.jvm1', '2-4 Working Days.', 0, 'Nokia Lumia 900 - Black', '2013-01-30 13:49:39'),
(66, 35, 6159, 'http://www.mirchimart.com/Nokia-Asha-302-White-/Mobiles/p/0XGE0WWVKV1CT4;jsessionid=806DE659995D364398BC89E2F9D03BE6.jvm1', '2-4 Working Days.', 0, 'Nokia Asha 302 (White) ', '2013-01-30 13:52:04'),
(66, 36, 3899, 'http://www.mirchimart.com/Nokia-Asha-202-Black/Mobiles/p/A1OIVQEV7NCWR7WU;jsessionid=13ED4F6DB29FF8F7365D5BFA7F8039B6.jvm1', '2-4 Working Days.', 0, 'Nokia Asha 202 (Black)', '2013-01-30 13:53:10'),
(66, 38, 395, 'http://www.mirchimart.com/Molife-Screen-Guard-MSLBB9700-For-BlackberryBold-9700-/BBScreenGaurd/p/W79MAPD6G7I89WA12;jsessionid=066B754A23DC10D8FC29283F415612AB.jvm1', '2-4 Working Days.', 0, 'Molife Screen Guard M-SL-BB9700 For Blackberry-Bol...', '2013-02-12 22:56:14'),
(66, 39, 395, 'http://www.mirchimart.com/Molife-Screen-Guard-MSLBB9700-For-BlackberryBold-9700-/BBScreenGaurd/p/W79MAPD6G7I89WA12;jsessionid=F24D546AF6DBE00C7F48DF3B03C69F20.jvm1', '2-4 Working Days.', 0, 'Molife Screen Guard M-SL-BB9700 For Blackberry-Bol...', '2013-02-12 22:56:52'),
(66, 40, 30499, 'http://www.mirchimart.com/Nokia-Lumia-900--Black/Mobiles/p/0T6BGOINB6TC6J;jsessionid=E3F3DC939D36324464037B2F03872AB2.jvm1', '2-4 Working Days.', 0, 'Nokia Lumia 900 - Black', '2013-02-19 17:34:13'),
(66, 41, 14599, 'http://www.mirchimart.com/Nokia-Lumia-710-Black/Mobiles/p/1YM3TUS8BDHCNHP;jsessionid=0536F552B71C6762F74E3FDC17229CB3.jvm1', '2-4 Working Days.', 0, 'Nokia Lumia 710 (Black)', '2013-02-19 17:34:49'),
(66, 42, 14599, 'http://www.mirchimart.com/Nokia-Lumia-710-Black/Mobiles/p/1YM3TUS8BDHCNHP;jsessionid=78027CFD9823F4B413338DC801F68535.jvm1', '2-4 Working Days.', 0, 'Nokia Lumia 710 (Black)', '2013-02-19 17:35:21'),
(66, 43, 4499, 'http://www.mirchimart.com/Samsung-Galaxy-EKDK11AWEGINU-Tab-2-P3100-Keyboard-Dock/Docks/p/TWZ35XQX9GQOY;jsessionid=41821B7FE408B5F5C2A594095AC8106A.jvm1', '2-4 Working Days.', 0, 'Samsung Galaxy EKD-K11AWEGINU Tab 2 P3100 Keyboard...', '2013-02-21 16:35:14'),
(66, 46, 12381, 'http://www.mirchimart.com/Nokia-Lumia-610--Black/Mobiles/p/2EJ7USZR7XFKN;jsessionid=CB78E9D087DE42B4EEADB0BC97133BCF.jvm1', '2-4 Working Days.', 0, 'Nokia Lumia 610 - Black', '2013-02-22 16:36:48'),
(66, 47, 31999, 'http://www.mirchimart.com/Nokia-Lumia-920-Black/Mobiles/p/9EVSZTX8P14W;jsessionid=780A8EE661D424C105BFAB774E280CFC.jvm1', '2-4 Working Days.', 0, 'Nokia Lumia 920 (Black)', '2013-02-22 16:43:46'),
(66, 48, 4499, 'http://www.mirchimart.com/Samsung-Galaxy-EKDK11AWEGINU-Tab-2-P3100-Keyboard-Dock/Docks/p/TWZ35XQX9GQOY;jsessionid=374F65B2FE5A4FE435146C40ED86C002.jvm1', '2-4 Working Days.', 0, 'Samsung Galaxy EKD-K11AWEGINU Tab 2 P3100 Keyboard...', '2013-02-24 10:53:22'),
(66, 49, 2730, 'http://www.mirchimart.com/Apple-MD179ZMA-VESA-Mount-Adapter-KitThunderbolt-Display-/AppleAccessories/p/2H7K0NZWV400MUD94;jsessionid=9CB39020AE56F424DFA6CCEC1AD86510.jvm1', '2-4 Working Days.', 0, 'Apple MD179ZM/A VESA Mount Adapter Kit/Thunderbolt...', '2013-02-24 10:57:25'),
(66, 50, 25799, 'http://www.mirchimart.com/Apple-iPhone-4--8GB--White/Mobiles/p/U0M53URZI7LS8LK1;jsessionid=582A284FEAD03C29F85306F3DEEA6CB2.jvm1', '2-4 Working Days.', 0, 'Apple iPhone 4 - 8GB - White', '2013-02-24 10:58:29'),
(66, 51, 49500, 'http://www.mirchimart.com/Apple-iPhone-5--32-GB-BLACK/Mobiles/p/J23GWPPCIIV4IRQ1512;jsessionid=A207FCDE7C04ABB2330A38C988466E43.jvm1', '2-4 Working Days.', 0, 'Apple iPhone 5 - 32 GB (BLACK)', '2013-02-24 13:13:21'),
(66, 56, 43490, 'http://www.mirchimart.com/BlackBerry-Z10-Black/Mobiles/p/W6MXBCQP1M8;jsessionid=D1ECB97609B9A889244F1295AAEADB13.jvm1', '2-4 Working Days.', 0, 'BlackBerry Z10 (Black)', '2013-02-28 02:32:54'),
(66, 59, 570, 'http://www.mirchimart.com/Sandisk-Cruzer-Retail-16-GB-Pendrive-Black--Red/ExDStPenDrive/p/ZAD1T9H0NZLSY6;jsessionid=BC7160729B0216083270D897C061044C.jvm1', '2-4 Working Days.', 0, 'Sandisk Cruzer Retail 16 GB Pendrive (Black & Red)', '2013-02-28 19:26:11'),
(66, 73, 3999, 'http://www.mirchimart.com/Samsung-Galaxy-Tab-70-Plus-Keyboard-Dock/Docks/p/3V8UMF53VP6OCPLD;jsessionid=1A8806CB0B3B83E8E46CCBD53A2B9939.jvm1', '2-4 Working Days.', 0, 'Samsung Galaxy Tab 7.0 Plus Keyboard Dock', '2013-03-19 15:00:05'),
(66, 74, 43490, 'http://www.mirchimart.com/BlackBerry-Z10-Black/Mobiles/p/W6MXBCQP1M8;jsessionid=DA4C6B0AFEC04DDE86D842C35BE7BFF8.jvm1', '2-4 Working Days.', 0, 'BlackBerry Z10 (Black)', '2013-03-19 15:06:07'),
(66, 77, 495, 'http://www.mirchimart.com/Molife-MSLNKN9-Screen-Protector-for-Nokia-N9/ScreenGuards/p/T286154144QO;jsessionid=6DA3C0E7630FA3BB9C841D0E485F31EF.jvm1', '2-4 Working Days.', 0, 'Molife M-SL-NKN9 Screen Protector for Nokia N9', '2013-03-19 15:12:59'),
(66, 78, 20900, 'http://www.mirchimart.com/Samsung-Galaxy-Grand-Duos-I9082--White/Mobiles/p/DPGJR2YYQRK02;jsessionid=74E9BD19A68F7114F42A7EA489D68838.jvm1', '2-4 Working Days.', 0, 'Samsung Galaxy Grand Duos I9082 - White', '2013-03-19 19:06:34'),
(66, 80, 36799, 'http://www.mirchimart.com/Sony-Xperia-Z-Black/Mobiles/p/QE6EEJESEPDSDFR;jsessionid=BFF0598A0DF659B26AA17CE6225D2526.jvm1', '2-4 Working Days.', 0, 'Sony Xperia Z (Black)', '2013-03-21 16:44:59'),
(66, 81, 6800, 'http://www.mirchimart.com/Sony-LiveView-Touch-SmartWatch-/SmartAccess/p/AZRFYYC3XVC;jsessionid=DF5A8010E6405AEB3DA91879C04AD623.jvm1', '2-4 Working Days.', 0, 'Sony LiveView Touch SmartWatch ', '2013-03-21 16:51:08'),
(66, 85, 5030, 'http://www.mirchimart.com/Samsung-Rex-80-S5222R-White/Mobiles/p/IEELOSR74SU8;jsessionid=E9A94916346FE30124220F043F822361.jvm1', '2-4 Working Days.', 0, 'Samsung Rex 80 S5222R (White)', '2013-03-21 17:12:11'),
(66, 86, 13200, 'http://www.mirchimart.com/Micromax-A116-Canvas-HD--Black/Mobiles/p/QJX85LFZHZPCH3AG;jsessionid=010AB9DFBFC875B94A139FE521B87855.jvm1', '2-4 Working Days.', 0, 'Micromax A116 Canvas HD - Black', '2013-03-28 22:46:58'),
(66, 90, 26490, 'http://www.mirchimart.com/Dell-1210S-Projector/CPProjectors/p/16NQRU9OIY74S5OT;jsessionid=35C84469F0BC62F9907A9D10A2629F2D.jvm1', '2-4 Working Days.', 0, 'Dell 1210S Projector', '2013-04-05 19:26:22'),
(66, 91, 9999, 'http://www.mirchimart.com/Nokia-Lumia-510-Black/Mobiles/p/ZFW5HPL684QOP5KPV;jsessionid=9C48DAD4645B83960E1D642C6BE7A994.jvm1', '2-4 Working Days.', 0, 'Nokia Lumia 510 (Black)', '2013-07-03 15:54:32'),
(66, 92, 6490, 'http://www.mirchimart.com/Lava-Iris-N400--Black/Mobiles/p/019BV5N1SHMCZ;jsessionid=13FF1C342737EA5A9873F528729BBB13.jvm1', '2-4 Working Days.', 0, 'Lava Iris N400 - Black', '2013-07-04 02:48:53'),
(66, 93, 1265, 'http://www.mirchimart.com/BH109-Bluetooth-Headset-Black/BluetoothHeadsets/p/MA3GOOZSUYV4Q9AY;jsessionid=079E71697CD54F6D0EA8FCB0327A8B87.jvm1', '2-4 Working Days.', 0, 'BH-109 Bluetooth Headset, Black', '2013-07-04 05:25:30'),
(66, 94, 2430, 'http://www.mirchimart.com/Nokia-114--Black/Mobiles/p/U19BT4SIOG745;jsessionid=A0C6B2B8486E0E03CAC356E6581F515E.jvm1', '2-4 Working Days.', 0, 'Nokia 114 - Black', '2013-07-04 05:28:10'),
(66, 96, 24500, 'http://www.mirchimart.com/Apple-iPad-2-16GB-WiFi--Black-MC769HN/iPads/p/BNT1YMUD8IRKA5;jsessionid=4391EE63FEB4309E1AA085A941A166F0.jvm1', '2-4 Working Days.', 0, 'Apple iPad 2 16GB Wi-Fi - Black (MC769HN)', '2013-07-04 16:06:14'),
(66, 54, 6174, 'http://www.mirchimart.com/Netgear-N300-Wireless-Gigabit-Router-WNR3500L/Routers/p/2KF2R8CKM5TSZKYW;jsessionid=92E8ACAEA811D8B633D48F0360A5C02B.jvm1', '2-4 Working Days.', 0, 'Netgear N300 Wireless Gigabit Router (WNR3500L)', '2013-07-04 19:02:33'),
(66, 0, 72000, 'http://www.mirchimart.com/HP-570dw-Allinone-Color-Laser-Printer--/Printers/p/1QI7N04YSLQ;jsessionid=B264ACCECE7C8D18D3DA50A7A2C88243.jvm1', '2-4 Working Days.', 0, 'HP 570dw All-in-one Color Laser Printer  ', '2013-07-07 09:45:13');

-- --------------------------------------------------------

--
-- Table structure for table `mydala`
--

CREATE TABLE IF NOT EXISTS `mydala` (
  `WebsiteID` int(10) NOT NULL,
  `ProductId` int(10) NOT NULL,
  `Price` int(10) NOT NULL,
  `Link` text NOT NULL,
  `DeliveryTime` text NOT NULL,
  `EMI` int(1) NOT NULL DEFAULT '0',
  `Title` text NOT NULL,
  `Time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mydala`
--

INSERT INTO `mydala` (`WebsiteID`, `ProductId`, `Price`, `Link`, `DeliveryTime`, `EMI`, `Title`, `Time`) VALUES
(16, 1, 11990, 'http://www.mydala.com/allindia/products-mobiles-mobile-handsets/deals/Samsung-Galaxy-S-Duos-S7562_83236', 'Delivery within 10 - 15 working days.', 0, 'Samsung Galaxy S Duos S7562', '2013-01-18 16:54:00'),
(16, 4, 850, 'http://www.mydala.com/allindia/products-lifestyle-jewellery/deals/Gold-plated-pendant-studded-with-imported-crystals-and-combined-with-a-gold-plated-chain-and-a-silver-plated-chain', 'Delivery within 10 - 15 working days.', 0, 'Gold plated pendant studded with imported crystals and combined with a gold plated chain and a silver plated chain', '2013-01-18 20:24:39'),
(16, 0, 850, 'http://www.mydala.com/allindia/products-lifestyle-jewellery/deals/Gold-plated-pendant-studded-with-imported-crystals-and-combined-with-a-gold-plated-chain-and-a-silver-plated-chain', 'Delivery within 10 - 15 working days.', 0, 'Gold plated pendant studded with imported crystals and combined with a gold plated chain and a silver plated chain', '2013-01-18 20:28:50'),
(16, 6, 5250, 'http://www.mydala.com/allindia/products-mobiles-mobile-handsets/deals/Videocon-V4500_14293', 'Delivery within 10 - 15 working days.', 0, 'Videocon V4500', '2013-01-18 20:29:17'),
(16, 9, 850, 'http://www.mydala.com/allindia/products-lifestyle-jewellery/deals/Gold-plated-pendant-studded-with-imported-crystals-and-combined-with-a-gold-plated-chain-and-a-silver-plated-chain', 'Delivery within 10 - 15 working days.', 0, 'Gold plated pendant studded with imported crystals and combined with a gold plated chain and a silver plated chain', '2013-01-18 21:16:07'),
(16, 10, 850, 'http://www.mydala.com/allindia/products-lifestyle-jewellery/deals/Gold-plated-pendant-studded-with-imported-crystals-and-combined-with-a-gold-plated-chain-and-a-silver-plated-chain', 'Delivery within 10 - 15 working days.', 0, 'Gold plated pendant studded with imported crystals and combined with a gold plated chain and a silver plated chain', '2013-01-19 01:05:43'),
(16, 11, 2250, 'http://www.mydala.com/allindia/products-lifestyle-perfumes/deals/Burberry-Touch-Perfume-for-Men', 'Delivery within 10 - 15 working days.', 0, 'Burberry Touch Perfume for Men', '2013-01-19 15:32:37'),
(16, 12, 27400, 'http://www.mydala.com/allindia/products-mobiles-mobile-handsets/deals/Samsung-Galaxy-Note-N7000', 'Delivery within 10 - 15 working days.', 0, 'Samsung Galaxy Note N7000', '2013-01-19 15:34:12'),
(16, 13, 29400, 'http://www.mydala.com/allindia/products-mobiles-mobile-handsets/deals/Samsung-Galaxy-S-III_79768', 'Delivery within 10 - 15 working days.', 0, 'Samsung Galaxy S III', '2013-01-23 19:22:55'),
(16, 14, 49, 'http://www.mydala.com/allindia/bid-deals-contest-deals/deals/iPhone-5-Lucky-draw-offer', 'Delivery within 10 - 15 working days.', 0, 'iPhone 5 Lucky draw offer', '2013-01-23 19:24:47'),
(16, 15, 5250, 'http://www.mydala.com/allindia/products-mobiles-mobile-handsets/deals/Videocon-V4500_14293', 'Delivery within 10 - 15 working days.', 0, 'Videocon V4500', '2013-01-23 19:27:45'),
(16, 16, 5250, 'http://www.mydala.com/allindia/products-mobiles-mobile-handsets/deals/Videocon-V4500_14293', 'Delivery within 10 - 15 working days.', 0, 'Videocon V4500', '2013-01-23 19:30:04'),
(16, 17, 5250, 'http://www.mydala.com/allindia/products-mobiles-mobile-handsets/deals/Videocon-V4500_14293', 'Delivery within 10 - 15 working days.', 0, 'Videocon V4500', '2013-01-23 19:31:29'),
(16, 18, 5250, 'http://www.mydala.com/allindia/products-mobiles-mobile-handsets/deals/Videocon-V4500_14293', 'Delivery within 10 - 15 working days.', 0, 'Videocon V4500', '2013-01-23 19:33:10'),
(16, 19, 5250, 'http://www.mydala.com/allindia/products-mobiles-mobile-handsets/deals/Videocon-V4500_14293', 'Delivery within 10 - 15 working days.', 0, 'Videocon V4500', '2013-01-23 19:36:40'),
(16, 20, 5250, 'http://www.mydala.com/allindia/products-mobiles-mobile-handsets/deals/Videocon-V4500_14293', 'Delivery within 10 - 15 working days.', 0, 'Videocon V4500', '2013-01-23 19:38:04'),
(16, 21, 5250, 'http://www.mydala.com/allindia/products-mobiles-mobile-handsets/deals/Videocon-V4500_14293', 'Delivery within 10 - 15 working days.', 0, 'Videocon V4500', '2013-01-23 19:40:12'),
(16, 23, 5250, 'http://www.mydala.com/allindia/products-mobiles-mobile-handsets/deals/Videocon-V4500_14293', 'Delivery within 10 - 15 working days.', 0, 'Videocon V4500', '2013-01-23 19:44:19'),
(16, 24, 5250, 'http://www.mydala.com/allindia/products-mobiles-mobile-handsets/deals/Videocon-V4500_14293', 'Delivery within 10 - 15 working days.', 0, 'Videocon V4500', '2013-01-23 19:45:06'),
(16, 27, 5250, 'http://www.mydala.com/allindia/products-mobiles-mobile-handsets/deals/Videocon-V4500_14293', 'Delivery within 10 - 15 working days.', 0, 'Videocon V4500', '2013-01-23 22:15:50'),
(16, 28, 5250, 'http://www.mydala.com/allindia/products-mobiles-mobile-handsets/deals/Videocon-V4500_14293', 'Delivery within 10 - 15 working days.', 0, 'Videocon V4500', '2013-01-23 22:17:11'),
(16, 29, 5250, 'http://www.mydala.com/allindia/products-mobiles-mobile-handsets/deals/Videocon-V4500_14293', 'Delivery within 10 - 15 working days.', 0, 'Videocon V4500', '2013-01-23 22:27:29'),
(16, 30, 5250, 'http://www.mydala.com/allindia/products-mobiles-mobile-handsets/deals/Videocon-V4500_14293', 'Delivery within 10 - 15 working days.', 0, 'Videocon V4500', '2013-01-23 22:31:52'),
(16, 31, 152900, 'http://www.mydala.com/allindia/products-computer-accessories-laptops/deals/Apple-MacBook-Pro-26-GHz-quad-Core-i7-processor-MD104HNA', 'Delivery within 10 - 15 working days.', 0, 'Apple MacBook Pro 2.6 GHz quad Core i7 processor (...', '2013-01-23 22:36:42'),
(16, 32, 799, 'http://www.mydala.com/allindia/products-computer-accessories-computer-components/deals/Luxury-8-GB-flash-drive_18732', 'Delivery within 10 - 15 working days.', 0, 'Luxury 8 GB flash drive', '2013-01-28 19:32:50'),
(16, 33, 799, 'http://www.mydala.com/allindia/products-computer-accessories-computer-components/deals/Luxury-8-GB-flash-drive_18732', 'Delivery within 10 - 15 working days.', 0, 'Luxury 8 GB flash drive', '2013-01-28 19:39:52'),
(16, 34, 799, 'http://www.mydala.com/allindia/products-computer-accessories-computer-components/deals/Luxury-8-GB-flash-drive_18732', 'Delivery within 10 - 15 working days.', 0, 'Luxury 8 GB flash drive', '2013-01-30 13:49:34'),
(16, 35, 799, 'http://www.mydala.com/allindia/products-computer-accessories-computer-components/deals/Luxury-8-GB-flash-drive_18732', 'Delivery within 10 - 15 working days.', 0, 'Luxury 8 GB flash drive', '2013-01-30 13:52:01'),
(16, 36, 799, 'http://www.mydala.com/allindia/products-computer-accessories-computer-components/deals/Luxury-8-GB-flash-drive_18732', 'Delivery within 10 - 15 working days.', 0, 'Luxury 8 GB flash drive', '2013-01-30 13:53:02'),
(16, 37, 1895, 'http://www.mydala.com/allindia/products-lifestyle-watches/deals/Ex-London-Design-Quartz-Jewelry-Watch--Julindas-Sunglasses', 'Delivery within 10 - 15 working days.', 0, 'Ex-London Design Quartz Jewelry Watch & Julind...', '2013-02-10 23:58:13'),
(16, 38, 23999, 'http://www.mydala.com/allindia/products-mobiles-mobile-handsets/deals/BlackBerry-Bold-9790-_75624', 'Delivery within 10 - 15 working days.', 0, 'BlackBerry Bold 9790 ', '2013-02-12 22:56:09'),
(16, 39, 23999, 'http://www.mydala.com/allindia/products-mobiles-mobile-handsets/deals/BlackBerry-Bold-9790-_75624', 'Delivery within 10 - 15 working days.', 0, 'BlackBerry Bold 9790 ', '2013-02-12 22:56:48'),
(16, 40, 10, 'http://www.mydala.com/allindia/bid-deals-contest-deals/deals/Mobile-Recharge-lucky-draw-offer_77738', 'Delivery within 10 - 15 working days.', 0, 'Mobile Recharge lucky draw offer', '2013-02-19 17:34:05'),
(16, 43, 49, 'http://www.mydala.com/allindia/bid-deals-contest-deals/deals/Samsung-Grand-Duos-lucky-draw-offer-_79454', 'Delivery within 10 - 15 working days.', 0, 'Samsung Grand Duos lucky draw offer ', '2013-02-21 16:35:12'),
(16, 48, 7150, 'http://www.mydala.com/allindia/products-mobiles-mobile-handsets/deals/Samsung-Galaxy-Pocket-S5300', 'Delivery within 10 - 15 working days.', 0, 'Samsung Galaxy Pocket S5300', '2013-02-24 10:53:19'),
(16, 49, 38500, 'http://www.mydala.com/allindia/products-mobiles-mobile-handsets/deals/Apple-iPhone-4S--16GB_83789', 'Delivery within 10 - 15 working days.', 0, 'Apple iPhone 4S- 16GB', '2013-02-24 10:57:20'),
(16, 50, 38500, 'http://www.mydala.com/allindia/products-mobiles-mobile-handsets/deals/Apple-iPhone-4S--16GB_83789', 'Delivery within 10 - 15 working days.', 0, 'Apple iPhone 4S- 16GB', '2013-02-24 10:58:25'),
(16, 51, 38500, 'http://www.mydala.com/allindia/products-mobiles-mobile-handsets/deals/Apple-iPhone-4S--16GB_83789', 'Delivery within 10 - 15 working days.', 0, 'Apple iPhone 4S- 16GB', '2013-02-24 13:13:21'),
(16, 56, 49, 'http://www.mydala.com/allindia/bid-deals-contest-deals/deals/BlackBerry-Z10-lucky-draw-offer_80131', 'Delivery within 10 - 15 working days.', 0, 'BlackBerry Z10 lucky draw offer', '2013-03-07 12:25:06'),
(16, 73, 25850, 'http://www.mydala.com/allindia/products-mobiles-mobile-handsets/deals/Samsung-Galaxy-S-2-i9100', 'Delivery within 10 - 15 working days.', 0, 'Samsung Galaxy S 2 i9100', '2013-03-19 14:59:56'),
(16, 78, 21350, 'http://www.mydala.com/allindia/products-mobiles-mobile-handsets/deals/Samsung-Galaxy-Grand-Duos-I9082_80391', 'Delivery within 10 - 15 working days.', 0, 'Samsung Galaxy Grand Duos I9082', '2013-03-19 19:06:28'),
(16, 81, 7777, 'http://www.mydala.com/allindia/products-cameras-digital-cameras/deals/Sony-Cybershot-DSC-W530-Digital-Camera_61741', 'Delivery within 10 - 15 working days.', 0, 'Sony Cybershot DSC-W530 Digital Camera', '2013-03-21 16:51:12'),
(16, 90, 5250, 'http://www.mydala.com/allindia/products-mobiles-mobile-handsets/deals/Videocon-V4500_14293', 'Delivery within 10 - 15 working days.', 0, 'Videocon V4500', '2013-04-05 19:26:16'),
(16, 92, 35900, 'http://www.mydala.com/allindia/products-mobiles-mobile-handsets/deals/Sony-Xperia-ZL', 'Delivery within 10 - 15 working days.', 0, 'Sony Xperia ZL', '2013-07-04 02:48:45');

-- --------------------------------------------------------

--
-- Table structure for table `myntra`
--

CREATE TABLE IF NOT EXISTS `myntra` (
  `WebsiteID` int(10) NOT NULL,
  `ProductId` int(10) NOT NULL,
  `Price` int(10) NOT NULL,
  `Link` text NOT NULL,
  `DeliveryTime` text NOT NULL,
  `EMI` int(1) NOT NULL DEFAULT '1',
  `Title` text NOT NULL,
  `Time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `myntra`
--

INSERT INTO `myntra` (`WebsiteID`, `ProductId`, `Price`, `Link`, `DeliveryTime`, `EMI`, `Title`, `Time`) VALUES
(15, 1, 398, 'http://www.myntra.com/Hair-Accessory/Ayesha/Ayesha-Women-Black-Rose-duo-satin-Hairband/144635/buy', 'Delivery within 5-7 working days.', 1, 'Ayesha Women Black Rose duo satin Hairband', '2013-01-18 16:53:58'),
(15, 2, 5949, 'http://www.myntra.com/Sports-Shoes/ASICS/Asics-Men-White-GT-2000-Sports-Shoes/121610/buy', 'Delivery within 5-7 working days.', 1, 'ASICS Men White GT 2000 Sports Shoes', '2013-01-18 17:35:06'),
(15, 3, 399, 'http://www.myntra.com/Mascara/Colorbar/Colorbar-Women-Lash-Illusion-Mascara-Duo/55956/buy', 'Delivery within 5-7 working days.', 1, 'Colorbar Women Lash Illusion Mascara Duo', '2013-01-18 17:36:00'),
(15, 4, 399, 'http://www.myntra.com/Bra/Prestitia/Prestitia-Black-Active-You-Bra-1017-A/143313/buy', 'Delivery within 5-7 working days.', 1, 'Prestitia Black Active You Bra 1017 A', '2013-01-18 20:24:37'),
(15, 0, 990, '/Day-Cream/LOreal/LOreal-White-Perfect-LASER-Whitening-Cream/135676/buy', 'Delivery within 5-7 working days.', 1, 'LOreal White Perfect LASER Whitening Cream', '2013-01-18 20:28:46'),
(15, 6, 185, 'http://www.myntra.com/Trunk/Jockey/Jockey-Men-Navy-Blue-Modern-Trunks/28009/buy', 'Delivery within 5-7 working days.', 1, 'Jockey Men Navy Blue Modern Trunks', '2013-01-18 20:29:15'),
(15, 8, 245, 'http://www.myntra.com/Briefs/Hanes/Hanes-Men-Grey-Modern-Duo-Dry-Cotton-Stretch-Trunk/18693/buy', 'Delivery within 5-7 working days.', 1, 'Hanes Men Grey Modern Duo Dry Cotton Stretch Trunks', '2013-01-18 20:48:51'),
(15, 9, 293, 'http://www.myntra.com/Home-Fragrances/Iris/Iris-Apple-Cinnamon-Fragrance-Vaporizer-Set/74989/buy', 'Delivery within 5-7 working days.', 1, 'Iris Apple Cinnamon Fragrance Vaporizer Set', '2013-01-18 21:16:06'),
(15, 10, 3995, 'http://www.myntra.com/Duffle-Bag/Wildcraft/Wildcraft-Unisex-Green-Voyager-Duffle-Bag/95292/buy', 'Delivery within 5-7 working days.', 1, 'Wildcraft Unisex Green Voyager Duffle Bag', '2013-01-19 01:05:42'),
(15, 11, 495, 'http://www.myntra.com/Bathroom-Accessories/SG-Home/SG-Home-Soap-Tray/83561/buy', 'Delivery within 5-7 working days.', 1, 'SG Home Soap Tray', '2013-01-19 15:32:35'),
(15, 12, 1399, 'http://www.myntra.com/Perfumes/Jean-Paul-Dupont/Jean-Paul-Dupont-Men-Personal-Notes-EDT-Perfume/92248/buy', 'Delivery within 5-7 working days.', 1, 'Jean Paul Dupont Men Personal Notes EDT Perfume', '2013-01-19 15:34:10'),
(15, 13, 2899, 'http://www.myntra.com/Sports-Shoes/FILA/FILA-Men-White-Galaxy-Sports-Shoes/22977/buy', 'Delivery within 5-7 working days.', 1, 'FILA Men White Galaxy Sports Shoes', '2013-01-23 19:22:48'),
(15, 14, 1099, 'http://www.myntra.com/Tops/Lee/Lee-Women-Apple-Coral-Top/31792/buy', 'Delivery within 5-7 working days.', 1, 'Lee Women Apple Coral Top', '2013-01-23 19:24:46'),
(15, 15, 449, 'http://www.myntra.com/Tops/Mineral/Mineral-Women-White-Top/123457/buy', 'Delivery within 5-7 working days.', 1, 'Mineral Women White Top', '2013-01-23 19:27:42'),
(15, 16, 799, 'http://www.myntra.com/Tshirts/United-Colors-of-Benetton/United-Colors-of-Benetton-Men-Navy-Blue-Headphones/102599/buy', 'Delivery within 5-7 working days.', 1, 'United Colors of Benetton Men Navy Blue Headphones Printed T-Shirt', '2013-01-23 19:30:01'),
(15, 18, 890, 'http://www.myntra.com/Card-Holder/Samsonite/Samsonite-Men-Black-Card-Holder/64624/buy', 'Delivery within 5-7 working days.', 1, 'Samsonite Men Black Card Holder', '2013-01-23 19:33:09'),
(15, 19, 110, 'http://www.myntra.com/Nail-Polish/Viviana/Viviana-Starless-Galaxy-Nail-Polish/61309/buy', 'Delivery within 5-7 working days.', 1, 'Viviana Starless Galaxy Nail Polish', '2013-01-23 19:36:38'),
(15, 20, 1675, '/Perfumes/J-DEL-POZO/JDel-Pozo-Ambar-Women-Perfume/25977/buy', 'Delivery within 5-7 working days.', 1, 'J. DEL POZO Ambar Women Perfume', '2013-01-23 19:38:03'),
(15, 21, 671, 'http://www.myntra.com/Tote-Bags/Fastrack/Fastrack-Women-Red-Tote-Bag/8254/buy', 'Delivery within 5-7 working days.', 1, 'Fastrack Women Red Tote Bag', '2013-01-23 19:40:10'),
(15, 22, 1695, 'http://www.myntra.com/Tote-Bags/Fastrack/Fastrack-Women-Pink-Tote-Bag/103513/buy', 'Delivery within 5-7 working days.', 1, 'Fastrack Women Pink Tote Bag', '2013-01-23 19:42:39'),
(15, 23, 849, 'http://www.myntra.com/Curtain/Shamrock/Shamrock-Brown-Single-Door-Curtain/84154/buy', 'Delivery within 5-7 working days.', 1, 'Shamrock Brown Single Door Curtain', '2013-01-23 19:44:18'),
(15, 25, 629, 'http://www.myntra.com/Tshirts/American-Swan/American-Swan-Men-Red-American-Ninja-T-shirt/137324/buy', 'Delivery within 5-7 working days.', 1, 'American Swan Men Red American Ninja T-shirt', '2013-01-23 20:12:01'),
(15, 26, 5299, 'http://www.myntra.com/Sports-Shoes/New-Balance/New-Balance-Men-M890GB2-Green-Sports-Shoes/98584/buy', 'Delivery within 5-7 working days.', 1, 'New Balance Men M890GB2 Green Sports Shoes', '2013-01-23 21:45:57'),
(15, 27, 4796, 'http://www.myntra.com/Watches/FCUK/FCUK-Men-Black-Dial-Watch/58827/buy', 'Delivery within 5-7 working days.', 1, 'FCUK Men Black Dial Watch', '2013-01-23 22:15:45'),
(15, 28, 650, 'http://www.myntra.com/Watches/Fastrack/Fastrack-Unisex-Black-Dial-Watch/90536/buy', 'Delivery within 5-7 working days.', 1, 'Fastrack Unisex Black Dial Watch', '2013-01-23 22:17:06'),
(15, 29, 3999, 'http://www.myntra.com/Casual-Shoes/Clarks/Clarks-Men-Tan-Quay-Point-Natural-Leather-Shoes/37974/buy', 'Delivery within 5-7 working days.', 1, 'Clarks Men Tan Quay Point Natural Leather Shoes', '2013-01-23 22:27:20'),
(15, 31, 299, '/Pendant/ToniQ/ToniQ-Red-Brass-Toned-Apple-Locket-Pendant-With-Ch/152021/buy', 'Delivery within 5-7 working days.', 1, 'ToniQ Red & Brass Toned Apple Locket Pendant With Chain', '2013-01-23 22:36:35'),
(15, 34, 5624, 'http://www.myntra.com/Sports-Shoes/Puma/Puma-Men-Blue-Faas-900-Sports-Shoes/120749/buy', 'Delivery within 5-7 working days.', 1, 'Puma Men Blue Faas 900 Sports Shoes', '2013-01-30 13:49:32'),
(15, 35, 290, 'http://www.myntra.com/Bra/Soie/Soie-Classic-Beige-Bra-CB-302/117220/buy', 'Delivery within 5-7 working days.', 1, 'Soie Classic Beige Bra CB-302', '2013-01-30 13:51:59'),
(15, 37, 5090, 'http://www.myntra.com/Sunglasses/Ray-Ban/Ray-Ban-Men-Aviator-White-Sunglasses/28175/buy', 'Delivery within 5-7 working days.', 1, 'Ray-Ban Men Aviator White Sunglasses', '2013-02-10 23:58:13'),
(15, 38, 900, 'http://www.myntra.com/Lipstick/LOreal/LOreal-Infallible-Bold-Bordeaux-Lipstick-741/62104/buy', 'Delivery within 5-7 working days.', 1, 'LOreal Infallible Bold Bordeaux Lipstick 741', '2013-02-12 22:56:08'),
(15, 39, 3199, 'http://www.myntra.com/Formal-Shoes/American-Swan/American-Swan-Men-Black-Bold-Brookfield-Formal-Sho/114646/buy', 'Delivery within 5-7 working days.', 1, 'American Swan Men Black Bold Brookfield Formal Shoes', '2013-02-12 22:56:48'),
(15, 40, 450, 'http://www.myntra.com/Mobile-Pouch/Baggit/Baggit-Women-Black-Mobile-Pouch/76335/buy', 'Delivery within 5-7 working days.', 1, 'Baggit Women Black Mobile Pouch', '2013-02-19 17:34:05'),
(15, 41, 150, 'http://www.myntra.com/Nail-Polish/Colorbar/Colorbar-Exclusive-Nail-Lacquer-71/55877/buy', 'Delivery within 5-7 working days.', 1, 'Colorbar Exclusive Nail Lacquer 71', '2013-02-19 17:34:41'),
(15, 42, 150, 'http://www.myntra.com/Nail-Polish/Colorbar/Colorbar-Exclusive-Nail-Lacquer-71/55877/buy', 'Delivery within 5-7 working days.', 1, 'Colorbar Exclusive Nail Lacquer 71', '2013-02-19 17:35:16'),
(15, 45, 1889, 'http://www.myntra.com/Jeans/Flying-Machine/Flying-Machine-Men-Blue-Wash-Jeans/79780/buy', 'Delivery within 5-7 working days.', 1, 'Flying Machine Men Blue Wash Jeans', '2013-02-22 08:13:55'),
(15, 46, 225, 'http://www.myntra.com/Nail-Polish/LOreal/Loreal-Color-Riche-Rebel-Blue-Nail-Polish-610/96334/buy', 'Delivery within 5-7 working days.', 1, 'LOreal Color Riche Rebel Blue Nail Polish 610', '2013-02-22 16:36:41'),
(15, 47, 110, 'http://www.myntra.com/Nail-Polish/Lotus-Herbals/Lotus-Herbals-Rose-Petal-Nail-Polish-920/57667/buy', 'Delivery within 5-7 working days.', 1, 'Lotus Herbals Rose Petal Nail Polish 920', '2013-02-22 16:43:40'),
(15, 48, 2899, 'http://www.myntra.com/Sports-Shoes/FILA/FILA-Men-White-Galaxy-Sports-Shoes/22977/buy', 'Delivery within 5-7 working days.', 1, 'FILA Men White Galaxy Sports Shoes', '2013-02-24 10:53:15'),
(15, 49, 1424, 'http://www.myntra.com/Shorts/US-Polo-Assn/US-Polo-Assn-Men-Red-Baked-Apple-Shorts/120049/buy', 'Delivery within 5-7 working days.', 1, 'U.S. Polo Assn. Men Red Baked Apple Shorts', '2013-02-24 10:57:18'),
(15, 50, 299, 'http://www.myntra.com/Earrings/Golden-Peacock/Golden-Peacock-Gold-Toned-Apple-Earrings/128613/buy', 'Delivery within 5-7 working days.', 1, 'Golden Peacock Gold Toned Apple Earrings', '2013-02-24 10:58:21'),
(15, 51, 299, 'http://www.myntra.com/Pendant/Golden-Peacock/Golden-Peacock-Gold-Plated-Duck-Apple-Pendant-With/146700/buy', 'Delivery within 5-7 working days.', 1, 'Golden Peacock Gold Plated Duck & Apple Pendant With Chain', '2013-02-24 13:13:23'),
(15, 52, 1940, 'http://www.myntra.com/Sunglasses/M-tv/Mtv-Women-Sunglasses/29094/buy', 'Delivery within 5-7 working days.', 1, 'M tv Women Sunglasses', '2013-02-24 16:35:41'),
(15, 53, 1940, 'http://www.myntra.com/Sunglasses/M-tv/Mtv-Women-Sunglasses/29094/buy', 'Delivery within 5-7 working days.', 1, 'M tv Women Sunglasses', '2013-02-24 16:38:38'),
(15, 55, 785, 'http://www.myntra.com/Lipstick/LOreal/LOreal-Color-Riche-Mulberry-Lipstick-710/62103/buy', 'Delivery within 5-7 working days.', 1, 'LOreal Color Riche Mulberry Lipstick 710', '2013-02-28 02:05:13'),
(15, 56, 1990, 'http://www.myntra.com/Tshirts/Timberland/Timberland-Men-Blackberry-Cordial-New-England-Tee/92401/buy', 'Delivery within 5-7 working days.', 1, 'Timberland Men Blackberry Cordial New England Tee', '2013-02-28 02:32:47'),
(15, 61, 540, 'http://www.myntra.com/Pendant/Diovanni/Diovanni-Women-Silver-Tiny-Heart-Pendant-With-Chai/102907/buy', 'Delivery within 5-7 working days.', 1, 'Diovanni Women Silver Tiny Heart Pendant With Chain', '2013-02-28 19:28:14'),
(15, 64, 899, 'http://www.myntra.com/Handbags/Alessia74/Alessia74-Black-Classic-structured-Handbag/102793/buy', 'Delivery within 5-7 working days.', 1, 'Alessia74 Black Classic structured Handbag', '2013-03-04 20:09:04'),
(15, 65, 349, 'http://www.myntra.com/Tote-Bags/The-Big-Bag-Theory/The-Big-Bag-Theory-Blue-Tote-Bag/79735/buy', 'Delivery within 5-7 working days.', 1, 'The Big Bag Theory Blue Tote Bag', '2013-03-04 20:18:31'),
(15, 66, 349, 'http://www.myntra.com/Tote-Bags/The-Big-Bag-Theory/The-Big-Bag-Theory-Blue-Tote-Bag/79735/buy', 'Delivery within 5-7 working days.', 1, 'The Big Bag Theory Blue Tote Bag', '2013-03-04 20:19:00'),
(15, 67, 349, 'http://www.myntra.com/Tote-Bags/The-Big-Bag-Theory/The-Big-Bag-Theory-Blue-Tote-Bag/79735/buy', 'Delivery within 5-7 working days.', 1, 'The Big Bag Theory Blue Tote Bag', '2013-03-04 20:20:00'),
(15, 68, 349, 'http://www.myntra.com/Tote-Bags/The-Big-Bag-Theory/The-Big-Bag-Theory-Blue-Tote-Bag/79735/buy', 'Delivery within 5-7 working days.', 1, 'The Big Bag Theory Blue Tote Bag', '2013-03-04 21:34:49'),
(15, 69, 349, 'http://www.myntra.com/Tote-Bags/The-Big-Bag-Theory/The-Big-Bag-Theory-Blue-Tote-Bag/79735/buy', 'Delivery within 5-7 working days.', 1, 'The Big Bag Theory Blue Tote Bag', '2013-03-04 21:36:06'),
(15, 70, 899, 'http://www.myntra.com/Mobile-Pouch/Puma/Puma-Unisex-Yellow-Faas-Arm-Pocket/107498/buy', 'Delivery within 5-7 working days.', 1, 'Puma Unisex Yellow Faas Arm Pocket', '2013-03-04 23:08:58'),
(15, 71, 1799, 'http://www.myntra.com/Jeans/Flying-Machine/Flying-Machine-Men-Navy-Blue-Slim-Fit-Michael-Jean/106937/buy', 'Delivery within 5-7 working days.', 1, 'Flying Machine Men Navy Blue Slim Fit Michael Jeans', '2013-03-07 11:01:10'),
(15, 72, 2899, 'http://www.myntra.com/Sports-Shoes/FILA/FILA-Men-White-Galaxy-Sports-Shoes/22977/buy', 'Delivery within 5-7 working days.', 1, 'FILA Men White Galaxy Sports Shoes', '2013-03-17 20:37:16'),
(15, 73, 2899, 'http://www.myntra.com/Sports-Shoes/FILA/FILA-Men-White-Galaxy-Sports-Shoes/22977/buy', 'Delivery within 5-7 working days.', 1, 'FILA Men White Galaxy Sports Shoes', '2013-03-19 14:59:56'),
(15, 74, 1990, 'http://www.myntra.com/Tshirts/Timberland/Timberland-Men-Blackberry-Cordial-New-England-Tee/92401/buy', 'Delivery within 5-7 working days.', 1, 'Timberland Men Blackberry Cordial New England Tee', '2013-03-19 15:06:01'),
(15, 75, 179, 'http://www.myntra.com/Nail-Art/Konad/Konad-Women-Image-Plate-M64/73683/buy', 'Delivery within 5-7 working days.', 1, 'Konad Women Image Plate M64', '2013-03-19 15:09:04'),
(15, 76, 375, 'http://www.myntra.com/Blusher/Maybelline/Maybelline-Dream-Touch-Blusher-05/62503/buy', 'Delivery within 5-7 working days.', 1, 'Maybelline Dream Touch Blusher 05', '2013-03-19 15:10:19'),
(15, 78, 2899, 'http://www.myntra.com/Sports-Shoes/FILA/FILA-Men-White-Galaxy-Sports-Shoes/22977/buy', 'Delivery within 5-7 working days.', 1, 'FILA Men White Galaxy Sports Shoes', '2013-03-19 19:06:25'),
(15, 79, 3699, 'http://www.myntra.com/Sports-Shoes/Skechers/Skechers-Women-Pink-Synergy-Memory-Sole-Sports-Sho/114515/buy', 'Delivery within 5-7 working days.', 1, 'Skechers Women Pink Synergy Memory Sole Sports Shoes', '2013-03-19 19:15:28'),
(15, 82, 3299, 'http://www.myntra.com/Handbags/United-Colors-of-Benetton/United-Colors-of-Benetton-Brown-Handbag/115085/buy', 'Delivery within 5-7 working days.', 1, 'United Colors of Benetton Brown Handbag', '2013-03-21 17:00:46'),
(15, 83, 199, 'http://www.myntra.com/Trunk/Levis/Levis-Men-White-Trunks/68157/buy', 'Delivery within 5-7 working days.', 1, 'Levis Men White Trunks', '2013-03-21 17:03:42'),
(15, 84, 899, 'http://www.myntra.com/Shorts/Puma/Puma-Men-Evo-Speed-White-Shorts/60223/buy', 'Delivery within 5-7 working days.', 1, 'Puma Men Evo Speed White Shorts', '2013-03-21 17:06:46'),
(15, 85, 1119, 'http://www.myntra.com/Sweaters/Indian-Terrain/Indian-Terrain-Men-Rex-Forest-Green-and-Navy-Blue-/100827/buy', 'Delivery within 5-7 working days.', 1, 'Indian Terrain Men Rex Forest Green and Navy Blue Striped Sweater', '2013-03-21 17:12:05'),
(15, 87, 1299, 'http://www.myntra.com/Sling-Bag/M-tv/M-tv-Unisex-White-Printed-Sling-bag/120921/buy', 'Delivery within 5-7 working days.', 1, 'M tv Unisex White Printed Sling bag', '2013-03-29 10:21:55'),
(15, 89, 1299, 'http://www.myntra.com/Sling-Bag/M-tv/M-tv-Unisex-White-Printed-Sling-bag/120921/buy', 'Delivery within 5-7 working days.', 1, 'M tv Unisex White Printed Sling bag', '2013-03-29 10:24:03'),
(15, 91, 525, '/Lipstick/Maybelline/Maybelline-SuperStay-14hr-NON-STOP-RED-Lipstick-51/125878/buy', 'Delivery within 5-7 working days.', 1, 'Maybelline SuperStay 14hr NON-STOP RED Lipstick 510', '2013-07-03 15:54:27'),
(15, 92, 600, 'http://www.myntra.com/Mobile-Pouch/Baggit/Baggit-Women-Black-Mobile-Pouch/104240/buy', 'Delivery within 5-7 working days.', 1, 'Baggit Women Black Mobile Pouch', '2013-07-04 02:48:42'),
(15, 36, 225, 'http://www.myntra.com/Nail-Polish/LOreal/LOreal-Color-Riche-Marie-Antoinette-Nail-Polish-20/96320/buy', 'Delivery within 5-7 working days.', 1, 'LOreal Color Riche Marie Antoinette Nail Polish 202', '2013-07-04 04:50:35'),
(15, 93, 250, 'http://www.myntra.com/Lipstick/Coloressence/Coloressence-Chest-Nut-Lipstick-109/110126/buy', 'Delivery within 5-7 working days.', 1, 'Coloressence Chest Nut Lipstick 109', '2013-07-04 05:25:24'),
(15, 94, 250, 'http://www.myntra.com/Lipstick/Coloressence/Coloressence-Primea-Valentine-Lipstick-114/110121/buy', 'Delivery within 5-7 working days.', 1, 'Coloressence Primea Valentine Lipstick 114', '2013-07-04 05:28:04'),
(15, 95, 650, 'http://www.myntra.com/Watches/Fastrack/Fastrack-Women-Grey-Casual-Watch/22939/buy', 'Delivery within 5-7 working days.', 1, 'Fastrack Women Grey Casual Watch', '2013-07-04 05:32:33'),
(15, 96, 2099, 'http://www.myntra.com/Tablet-Sleeve/Steve-Madden/Steve-Madden-Women-Pink-Tablet-Sleeve/141676/buy', 'Delivery within 5-7 working days.', 1, 'Steve Madden Women Pink Tablet Sleeve', '2013-07-04 16:06:11'),
(15, 97, 1359, 'http://www.myntra.com/Tshirts/Puma/Puma-Men-Black-Usain-Bolt-T-shirt/109286/buy', 'Delivery within 5-7 working days.', 1, 'Puma Men Black Usain Bolt T-shirt', '2013-07-04 18:21:00');

-- --------------------------------------------------------

--
-- Table structure for table `naaptol`
--

CREATE TABLE IF NOT EXISTS `naaptol` (
  `WebsiteID` int(10) NOT NULL,
  `ProductId` int(10) NOT NULL,
  `Price` int(10) NOT NULL,
  `Link` text NOT NULL,
  `DeliveryTime` text NOT NULL,
  `EMI` int(1) NOT NULL DEFAULT '1',
  `Title` text NOT NULL,
  `Time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `naaptol`
--

INSERT INTO `naaptol` (`WebsiteID`, `ProductId`, `Price`, `Link`, `DeliveryTime`, `EMI`, `Title`, `Time`) VALUES
(4, 1, 11529, 'http://www.naaptol.com/mobile-handsets/samsung-galaxy-s-duos-s7562/P/11628555.html', 'Delivery time depends on your area.', 1, 'Samsung Galaxy S Duos S7562 (White)', '2013-01-18 16:53:53'),
(4, 8, 11529, 'http://www.naaptol.com/mobile-handsets/samsung-galaxy-s-duos-s7562/P/12238888.html', 'Delivery time depends on your area.', 1, 'Samsung Galaxy S Duos S7562 (Black)', '2013-01-18 20:48:45'),
(4, 9, 1000, 'http://www.naaptol.com/carry-cases/capdase-mtih4s-31s1-alumor-metal-case-for-apple-iphone-4---4s/P/5361218.html', 'Delivery time depends on your area.', 1, 'Capdase MTIH4S-31S1 Alumor Metal Case for Apple iPhone 4 / 4S', '2013-01-18 21:16:01'),
(4, 10, 4212, 'http://www.naaptol.com/mobile-handsets/nokia-asha-305/P/4700060.html', 'Delivery time depends on your area.', 1, 'Nokia Asha 305', '2013-01-19 01:05:38'),
(4, 11, 69, 'http://www.naaptol.com/baby-body-care/gentle-soap-foam-bar-125-gr/P/876414.html', 'Delivery time depends on your area.', 1, 'Gentle Soap Foam Bar 125 Gr', '2013-01-19 15:32:30'),
(4, 12, 30199, 'http://www.naaptol.com/mobile-handsets/samsung-galaxy-note-ii-n7100/P/11630108.html', 'Delivery time depends on your area.', 1, 'Samsung Galaxy Note II N7100 (Pure White)', '2013-01-19 15:34:08'),
(4, 13, 28800, 'http://www.naaptol.com/mobile-handsets/samsung-i9300-galaxy-s-iii-(16-gb)/P/4347713.html', 'Delivery time depends on your area.', 1, 'Samsung I9300 Galaxy S III (16 GB)', '2013-01-23 19:22:44'),
(4, 14, 45399, 'http://www.naaptol.com/mobile-handsets/apple-iphone-5-(16-gb)/P/11627461.html', 'Delivery time depends on your area.', 1, 'Apple iPhone 5 (16 GB)', '2013-01-23 19:24:42'),
(4, 15, 9779, 'http://www.naaptol.com/mobile-handsets/nokia-lumia-510/P/12145707.html', 'Delivery time depends on your area.', 1, 'Nokia Lumia 510', '2013-01-23 19:27:35'),
(4, 16, 499, 'http://www.naaptol.com/head-phones-and-head-sets/philips-shs390-98-neckband-headphone/P/4360580.html', 'Delivery time depends on your area.', 1, 'Philips SHS390/98 Neckband Headphone', '2013-01-23 19:29:56'),
(4, 17, 1489, 'http://www.naaptol.com/routers/netgear-n150-wireless-router-jnr1010/P/12147761.html', 'Delivery time depends on your area.', 1, 'Netgear N150 Wireless Router JNR1010', '2013-01-23 19:31:14'),
(4, 19, 18899, 'http://www.naaptol.com/tablet/samsung-galaxy-tab-2-310-(gt-p3100)/P/2282515.html', 'Delivery time depends on your area.', 1, 'Samsung Galaxy Tab 2 310 (GT-P3100)', '2013-01-23 19:36:34'),
(4, 20, 13831, 'http://www.naaptol.com/mobile-handsets/sony-xperia-j/P/12231952.html', 'Delivery time depends on your area.', 1, 'Sony Xperia J (Black)', '2013-01-23 19:37:58'),
(4, 24, 31309, 'http://www.naaptol.com/digital-slr/nikon-d5100-dslr-with-18-55mm-vr/P/872331.html', 'Delivery time depends on your area.', 1, 'Nikon D5100 DSLR with 18-55mm VR (Black)', '2013-01-23 19:45:00'),
(4, 25, 5179, 'http://www.naaptol.com/mobile-handsets/micromax-a57-ninja-3/P/11614943.html', 'Delivery time depends on your area.', 1, 'Micromax A57 Ninja 3', '2013-01-23 20:11:54'),
(4, 30, 118700, 'http://www.naaptol.com/laptops/apple-macbook-pro-(core2-duo-7400--15-4inch-tft)/P/796.html', 'Delivery time depends on your area.', 1, 'Apple-MacBook Pro (Core2 Duo 7400, 15.4inch TFT)', '2013-01-23 22:31:47'),
(4, 31, 110900, 'http://www.naaptol.com/laptops/apple-macbook-pro-13-inch-retina-display-(md212hn-a)/P/12143869.html', 'Delivery time depends on your area.', 1, 'Apple MacBook Pro 13 inch Retina Display (MD212HN/A) (Intel Core i5 -...', '2013-01-23 22:36:30'),
(4, 32, 349, 'http://www.naaptol.com/usb-drives/sandisk-cz50-cruzer-blade-2gb-usb-drive/P/753432.html', 'Delivery time depends on your area.', 1, 'SanDisk CZ50 Cruzer Blade 2GB USB Drive', '2013-01-28 19:32:41'),
(4, 33, 299, 'http://www.naaptol.com/usb-drives/kingston-usb-drive-2-gb/P/3712.html', 'Delivery time depends on your area.', 1, 'Kingston USB Drive 2 GB', '2013-01-28 19:39:47'),
(4, 34, 1229, 'http://www.naaptol.com/carry-cases/case-mate-pop--case-for-nokia-lumia-900-(black---gray)---cm018768/P/12233345.html', 'Delivery time depends on your area.', 1, 'Case-Mate POP! Case for Nokia Lumia 900 (Black & Gray) - CM018768', '2013-01-30 13:49:26'),
(4, 35, 156, 'http://www.naaptol.com/screen-protectors/rainbow-screen-protector-for-nokia-asha-302/P/12134920.html', 'Delivery time depends on your area.', 1, 'Rainbow Screen protector for Nokia Asha 302', '2013-01-30 13:51:55'),
(4, 36, 3884, 'http://www.naaptol.com/mobile-handsets/nokia-asha-202/P/2285391.html', 'Delivery time depends on your area.', 1, 'Nokia Asha 202', '2013-01-30 13:52:58'),
(4, 37, 2999, 'http://www.naaptol.com/security-devices/vox-spy-video-camera-sunglasses/P/4357863.html', 'Delivery time depends on your area.', 1, 'Vox Spy Video Camera Sunglasses', '2013-02-10 23:58:05'),
(4, 38, 745, 'http://www.naaptol.com/carry-cases/capdase-polimor-protective-case-for-blackberry-bold-9700---white/P/850782.html', 'Delivery time depends on your area.', 1, 'Capdase Polimor Protective case for Blackberry Bold 9700 - White', '2013-02-12 22:56:02'),
(4, 39, 23920, 'http://www.naaptol.com/mobile-handsets/blackberry-bold-9790/P/942445.html', 'Delivery time depends on your area.', 1, 'BlackBerry Bold 9790', '2013-02-12 22:56:46'),
(4, 40, 3499, 'http://www.naaptol.com/mobile-handsets/mono-android-4-0-dual-sim-phone-with-4-inch-screen/P/12191229.html', 'Delivery time depends on your area.', 1, 'Mono Android 4.0 Dual Sim Phone With 4-Inch Screen', '2013-02-19 17:33:59'),
(4, 41, 250, 'http://www.naaptol.com/mobile-batteries/e-bak-bp-4l-mobile-battery/P/12186524.html', 'Delivery time depends on your area.', 1, 'E-BAK BP-4L Mobile Battery', '2013-02-19 17:34:45'),
(4, 42, 250, 'http://www.naaptol.com/mobile-batteries/e-bak-bp-4l-mobile-battery/P/12186524.html', 'Delivery time depends on your area.', 1, 'E-BAK BP-4L Mobile Battery', '2013-02-19 17:35:16'),
(4, 43, 12799, 'http://www.naaptol.com/mobile-handsets/samsung-galaxy-s-duos-s7562/P/11628555.html', 'Delivery time depends on your area.', 1, 'Samsung Galaxy S Duos S7562', '2013-02-21 16:35:02'),
(4, 44, 344, 'http://www.naaptol.com/carry-cases/iaccy-grey-soft-case-for-samung-galaxy-y-duos-(ss9027)/P/12171625.html', 'Delivery time depends on your area.', 1, 'iAccy Grey Soft Case for Samung Galaxy Y Duos (SS9027)', '2013-02-21 17:29:19'),
(4, 45, 11990, 'http://www.naaptol.com/washing-machines/samsung-wa82v4g/P/28941.html', 'Delivery time depends on your area.', 1, 'Samsung WA82V4G', '2013-02-22 08:13:48'),
(4, 46, 12147, 'http://www.naaptol.com/mobile-handsets/nokia-lumia-610/P/2285929.html', 'Delivery time depends on your area.', 1, 'Nokia lumia 610', '2013-02-22 16:36:34'),
(4, 47, 33199, 'http://www.naaptol.com/mobile-handsets/nokia-lumia-920/P/11625328.html', 'Delivery time depends on your area.', 1, 'Nokia Lumia 920 (Black)', '2013-02-22 16:43:34'),
(4, 48, 12799, 'http://www.naaptol.com/mobile-handsets/samsung-galaxy-s-duos-s7562/P/11628555.html', 'Delivery time depends on your area.', 1, 'Samsung Galaxy S Duos S7562', '2013-02-24 10:53:13'),
(4, 49, 22939, 'http://www.naaptol.com/mobile-handsets/apple-iphone-4-8gb/P/952963.html', 'Delivery time depends on your area.', 1, 'Apple iPhone 4 8GB (Black)', '2013-02-24 10:57:15'),
(4, 50, 35849, 'http://www.naaptol.com/mobile-handsets/apple-iphone-4s-16gb/P/941362.html', 'Delivery time depends on your area.', 1, 'Apple iPhone 4S 16GB', '2013-02-24 10:58:18'),
(4, 51, 329, 'http://www.naaptol.com/mobile-chargers/branded-usb-power-adapter-charger-for-apple-ipod--iphone-2g--3g--3gs--4g-indian-pin-+--free-3-5-mm-aux-cable/P/12213427.html', 'Delivery time depends on your area.', 1, 'Branded USB Power Adapter Charger for Apple iPod, iPhone 2G, 3G, 3GS,...', '2013-02-24 13:13:22'),
(4, 52, 26999, 'http://www.naaptol.com/led-tvs/samsung-32-inch-led-tv---ua32eh4003-with-tata-sky/P/12166767.html', 'Delivery time depends on your area.', 1, 'Samsung 32 inch LED TV - UA32EH4003 with Tata Sky', '2013-02-24 16:35:37'),
(4, 53, 72900, 'http://www.naaptol.com/led-tvs/samsung-ua46eh5000r-led-tv/P/5360450.html', 'Delivery time depends on your area.', 1, 'Samsung UA46EH5000R LED TV', '2013-02-24 16:38:30'),
(4, 54, 1939, 'http://www.naaptol.com/routers/netgear-wireless-n-300mbps-router-w--switch-jwnr2000/P/870100.html', 'Delivery time depends on your area.', 1, 'Netgear Wireless N 300mbps Router W/ Switch Jwnr2000', '2013-02-25 19:02:51'),
(4, 55, 225, 'http://www.naaptol.com/carry-cases/monokase-back-cover-for-nokia-lumia-710/P/12242878.html', 'Delivery time depends on your area.', 1, 'MonoKase Back Cover For Nokia Lumia 710 (Black)', '2013-02-28 02:05:08'),
(4, 56, 150, 'http://www.naaptol.com/other-miscellaneous-accessories/gadget-hero-s-micro-sim-card-adapter-to-regular-sim-converter-iphone--ipad--blackberry-playbook-z10-(black)/P/12208627.html', 'Delivery time depends on your area.', 1, 'Gadget Hero`s MICRO Sim Card Adapter To Regular Sim Converter iPHONE,...', '2013-02-28 02:32:42'),
(4, 58, 250, 'http://www.naaptol.com/condoms/moods-3007-crezendo-the-vibrating-ring-with-3-premium-condoms-2-packs/P/12149851.html', 'Delivery time depends on your area.', 1, 'Moods 3007 Crezendo the Vibrating ring with 3 premium condoms 2 packs', '2013-02-28 03:55:18'),
(4, 59, 609, 'http://www.naaptol.com/usb-drives/sandisk-16gb-pendrive/P/99596.html', 'Delivery time depends on your area.', 1, 'Sandisk 16GB PENDRIVE', '2013-02-28 19:25:58'),
(4, 60, 449, 'http://www.naaptol.com/usb-drives/sony-8gb-micro-vault-usb-pendrive/P/765076.html', 'Delivery time depends on your area.', 1, 'SONY 8GB Micro Vault USB Pendrive', '2013-02-28 19:27:00'),
(4, 68, 3830, 'http://www.naaptol.com/computer-programming---software-development/theories-of-perception-and-the-concept-of-structure-with-an-introduction-to-a-dynamic-structural-theory-of-behavior/P/8599123.html', 'Delivery time depends on your area.', 1, 'Theories of Perception and the Concept of Structure with an Introduct...', '2013-03-04 21:34:55'),
(4, 70, 750, 'http://www.naaptol.com/office-stationery/moleskine-12-months---colour-a-month-daily-planner-in-12-notebooks---pocket/P/8156368.html', 'Delivery time depends on your area.', 1, 'Moleskine 12 months - Colour a Month Daily Planner in 12 notebooks - ...', '2013-03-04 23:08:51'),
(4, 71, 2999, 'http://www.naaptol.com/washing-machines/brilliant-bwm-9001-mini-washing-machine/P/12193726.html', 'Delivery time depends on your area.', 1, 'Brilliant BWM-9001 Mini Washing Machine', '2013-03-07 11:01:05'),
(4, 72, 29615, 'http://www.naaptol.com/mobile-handsets/samsung-galaxy-s-4g/P/874036.html', 'Delivery time depends on your area.', 1, 'Samsung Galaxy S 4G', '2013-03-17 20:37:12'),
(4, 73, 29596, 'http://www.naaptol.com/mobile-handsets/samsung-i9300-galaxy-s-iii-(16-gb)/P/4347713.html', 'Delivery time depends on your area.', 1, 'Samsung I9300 Galaxy S III (16 GB)', '2013-03-19 14:59:50'),
(4, 74, 150, 'http://www.naaptol.com/other-miscellaneous-accessories/gadget-hero-s-micro-sim-card-adapter-to-regular-sim-converter-iphone--ipad--blackberry-playbook-z10-(black)/P/12208627.html', 'Delivery time depends on your area.', 1, 'Gadget Hero`s MICRO Sim Card Adapter To Regular Sim Converter iPHONE,...', '2013-03-19 15:05:54'),
(4, 77, 999, 'http://www.naaptol.com/carry-cases/amzer-shellster-cover-for-nokia-n9---amz93557-(black)/P/12222466.html', 'Delivery time depends on your area.', 1, 'Amzer Shellster Cover For Nokia N9 - AMZ93557 (Black)', '2013-03-19 15:12:49'),
(4, 78, 20432, 'http://www.naaptol.com/mobile-handsets/samsung-galaxy-grand-duos/P/12187616.html', 'Delivery time depends on your area.', 1, 'Samsung Galaxy Grand Duos', '2013-03-19 19:06:18'),
(4, 79, 679, 'http://www.naaptol.com/memory-cards/transcend-ts16gusdc4-16gb-class-4-microsd-memory-card/P/5350078.html', 'Delivery time depends on your area.', 1, 'Transcend TS16GUSDC4 16GB class 4 microSD Memory Card', '2013-03-19 19:15:19'),
(4, 80, 38989, 'http://www.naaptol.com/mobile-handsets/sony-xperia-z/P/12187321.html', 'Delivery time depends on your area.', 1, 'Sony Xperia Z', '2013-03-21 16:44:48'),
(4, 81, 38989, 'http://www.naaptol.com/mobile-handsets/sony-xperia-z/P/12187321.html', 'Delivery time depends on your area.', 1, 'Sony Xperia Z', '2013-03-21 16:51:02'),
(4, 83, 2571, 'http://www.naaptol.com/other-books/boot-hill-gospel/P/1280239.html', 'Delivery time depends on your area.', 1, 'Boot Hill Gospel', '2013-03-21 17:03:42'),
(4, 85, 3511, 'http://www.naaptol.com/mobile-handsets/samsung-rex-60-c3312r/P/12197970.html', 'Delivery time depends on your area.', 1, 'Samsung Rex 60 C3312R', '2013-03-21 17:12:06'),
(4, 86, 13569, 'http://www.naaptol.com/mobile-handsets/micromax-a116-canvas-hd/P/12187318.html', 'Delivery time depends on your area.', 1, 'Micromax A116 Canvas HD (Black)', '2013-03-28 22:46:49'),
(4, 87, 45199, 'http://www.naaptol.com/led-tvs/samsung-ua32es6200r-led-tv/P/5356660.html', 'Delivery time depends on your area.', 1, 'Samsung UA32ES6200R LED TV', '2013-03-29 10:21:51'),
(4, 88, 45199, 'http://www.naaptol.com/led-tvs/samsung-ua32es6200r-led-tv/P/5356660.html', 'Delivery time depends on your area.', 1, 'Samsung UA32ES6200R LED TV', '2013-03-29 10:22:54'),
(4, 89, 45199, 'http://www.naaptol.com/led-tvs/samsung-ua32es6200r-led-tv/P/5356660.html', 'Delivery time depends on your area.', 1, 'Samsung UA32ES6200R LED TV', '2013-03-29 10:23:57'),
(4, 90, 5999, 'http://www.naaptol.com/projectors/led-cinema-projector-with-remote---tripod-stand/P/4349763.html', 'Delivery time depends on your area.', 1, 'LED Cinema Projector with Remote & Tripod Stand', '2013-04-05 19:26:08'),
(4, 91, 225, 'http://www.naaptol.com/carry-cases/monokase-back-cover-for-nokia-lumia-510/P/12242847.html', 'Delivery time depends on your area.', 1, 'MonoKase Back Cover For Nokia Lumia 510 (White)', '2013-07-03 15:54:21'),
(4, 92, 3699, 'http://www.naaptol.com/mobile-handsets/iball-andi-3-5i/P/12208391.html', 'Delivery time depends on your area.', 1, 'iBall Andi 3.5i (3G Smartphone)', '2013-07-04 02:48:40'),
(4, 4, 599, 'http://www.naaptol.com/picture-books--activity-books---early-learning-material/a-modern-approach-to-verbal---non-verbal-reasoning-revised-edition-/P/12231797.html', 'Delivery time depends on your area.', 1, 'A Modern Approach To Verbal & Non-Verbal Reasoning Revised Edition', '2013-07-04 02:58:10'),
(4, 96, 22329, 'http://www.naaptol.com/tablet/apple-ipad-mini-16gb-(wi-fi)/P/12143815.html', 'Delivery time depends on your area.', 1, 'Apple iPad mini 16GB (Wi-Fi) (Black)', '2013-07-04 16:06:12'),
(4, 0, 13129, 'http://www.naaptol.com/laserjet-printers/hp-laserjet-pro-cp1025/P/863763.html', 'Delivery time depends on your area.', 1, 'HP LaserJet Pro CP1025 Color Printer (CF346A)', '2013-07-07 09:44:57');

-- --------------------------------------------------------

--
-- Table structure for table `nbcindia`
--

CREATE TABLE IF NOT EXISTS `nbcindia` (
  `WebsiteID` int(10) NOT NULL,
  `ProductId` int(10) NOT NULL,
  `Price` int(10) NOT NULL,
  `Link` text NOT NULL,
  `DeliveryTime` text NOT NULL,
  `EMI` int(1) NOT NULL DEFAULT '0',
  `Title` text NOT NULL,
  `Time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nbcindia`
--

INSERT INTO `nbcindia` (`WebsiteID`, `ProductId`, `Price`, `Link`, `DeliveryTime`, `EMI`, `Title`, `Time`) VALUES
(41, 1, 20900, 'http://www.nbcindia.com/mobile/4-Samsung-Galaxy-Grand-Duos-I9082-Elegant-White/SGXGrandDuosI9082ElegantWhite', 'Delivery in 2-3 Business days .', 0, '\r\n                                            Samsung Galaxy Grand Duos I9082 (Elegant White)\r\n                                        ', '2013-01-18 16:54:05'),
(41, 3, 1039, 'http://www.nbcindia.com/mobile/4-amzer-90435-silicone-skin-jelly-case-for-samsung-galaxy-tab-gt-p1000-black/amzer90435', 'Delivery in 2-3 Business days .', 0, '\r\n                                            Amzer 90435 Silicone Skin Jelly Case for Samsung GALAXY Tab GT-P1000 (Black)\r\n                                        ', '2013-01-18 17:36:13'),
(41, 8, 1199, 'http://www.nbcindia.com/mobile/4-amzer-93292-shellster-for-samsung-galaxy-nexus-google-galaxy-nexus---black/amzer93292', 'Delivery in 2-3 Business days .', 0, '\r\n                                            Amzer 93292 Shellster for Samsung Galaxy Nexus / Google Galaxy Nexus - Black\r\n                                        ', '2013-01-18 20:49:09'),
(41, 2, 20900, 'http://www.nbcindia.com/mobile/4-Samsung-Galaxy-Grand-Duos-I9082-Elegant-White/SGXGrandDuosI9082ElegantWhite', 'Delivery in 2-3 Business days .', 0, '\r\n                                            Samsung Galaxy Grand Duos I9082 (Elegant White)\r\n                                        ', '2013-01-19 00:47:33'),
(41, 10, 3867, 'http://www.nbcindia.com/mobile/4-nokia-asha-200-graphite-with-bundled-4gb-memory-card-dual-sim-gsm-gsm-dual-standby/asha200graphitewithbundled4G', 'Delivery in 2-3 Business days .', 0, '\r\n                                            Nokia Asha 200 (Graphite) with Bundled 4GB Memory Card\r\n                                        ', '2013-01-19 01:05:47'),
(41, 12, 32541, 'http://www.nbcindia.com/mobile/4-Samsung-Galaxy-Note-N-7000-Ceramic-White-Ceramic-White/GalaxyNoteCeramicWhiteCeramicWhite', 'Delivery in 2-3 Business days .', 0, '\r\n                                            Samsung Galaxy Note N-7000 (Ceramic White)\r\n                                        ', '2013-01-19 15:34:17'),
(41, 13, 1199, 'http://www.nbcindia.com/mobile/4-amzer-93292-shellster-for-samsung-galaxy-nexus-google-galaxy-nexus---black/amzer93292', 'Delivery in 2-3 Business days .', 0, '\r\n                                            Amzer 93292 Shellster for Samsung Galaxy Nexus / Google Galaxy Nexus - Black\r\n                                        ', '2013-01-23 19:22:56'),
(41, 19, 1039, 'http://www.nbcindia.com/mobile/4-amzer-89284-silicone-skin-jelly-case-graphite-for-samsung-galaxy-tab-gt-p1000-graphite/amzer89284', 'Delivery in 2-3 Business days .', 0, '\r\n                                            Amzer 89284 Silicone Skin Jelly Case Graphite for Samsung Galaxy Tab GT-P1000 (Graphite)\r\n                                        ', '2013-01-23 19:36:43'),
(41, 20, 30999, 'http://www.nbcindia.com/mobile/4-sony-xperia-s-black-single-sim-gsm/xperiasblack', 'Delivery in 2-3 Business days .', 0, '\r\n                                            Sony Xperia S (Black)\r\n                                        ', '2013-01-23 19:38:11'),
(41, 22, 215, 'http://www.nbcindia.com/mobile/4-amzer-88768-silicone-skin-jelly-case-hot-pink-for-samsung-galaxy-s-i9000-hot-pink/amzer88768', 'Delivery in 2-3 Business days .', 0, '\r\n                                            Amzer 88768 Silicone Skin Jelly Case Hot Pink for Samsung Galaxy S I9000 (Hot Pink)\r\n                                        ', '2013-01-23 19:42:58'),
(41, 34, 12880, 'http://www.nbcindia.com/mobile/4-Nokia-Lumia-710-Black-Black-/Lumia710BlackBlack', 'Delivery in 2-3 Business days .', 0, '\r\n                                            Nokia Lumia 710 (Black)\r\n                                        ', '2013-01-30 13:49:39'),
(41, 35, 6548, 'http://www.nbcindia.com/mobile/4-nokia-asha-302-white-single-sim-gsm/asha302white', 'Delivery in 2-3 Business days .', 0, '\r\n                                            Nokia Asha 302 (White)\r\n                                        ', '2013-01-30 13:52:05'),
(41, 36, 3899, 'http://www.nbcindia.com/mobile/4-nokia-asha-202-dark-grey-dual-sim-gsm-gsm/asha202darkgrey', 'Delivery in 2-3 Business days .', 0, '\r\n                                            Nokia Asha 202 (Dark Grey)\r\n                                        ', '2013-01-30 13:53:08'),
(41, 39, 32999, 'http://www.nbcindia.com/mobile/4-BlackBerry-Bold-4-9900-Black/Bold49900Black', 'Delivery in 2-3 Business days .', 0, '\r\n                                            BlackBerry Bold 4 9900\r\n                                        ', '2013-02-12 22:56:52'),
(41, 43, 5990, 'http://www.nbcindia.com/mobile/4-Samsung-W259-Dark-Brown/W259DarkBrown', 'Delivery in 2-3 Business days .', 0, '\r\n                                            Samsung W259\r\n                                        ', '2013-02-21 16:35:12'),
(41, 46, 14899, 'http://www.nbcindia.com/mobile/4-Nokia-Lumia-710-Black-Black-/Lumia710BlackBlack', 'Delivery in 2-3 Business days .', 0, '\r\n                                            Nokia Lumia 710 (Black)\r\n                                        ', '2013-02-22 16:36:47'),
(41, 47, 12999, 'http://www.nbcindia.com/mobile/4-Nokia-Lumia-710-Black-Black-/Lumia710BlackBlack', 'Delivery in 2-3 Business days .', 0, '\r\n                                            Nokia Lumia 710 (Black)\r\n                                        ', '2013-02-22 16:43:46'),
(41, 48, 1199, 'http://www.nbcindia.com/mobile/4-amzer-93292-shellster-for-samsung-galaxy-nexus-google-galaxy-nexus---black/amzer93292', 'Delivery in 2-3 Business days .', 0, '\r\n                                            Amzer 93292 Shellster for Samsung Galaxy Nexus / Google Galaxy Nexus - Black\r\n                                        ', '2013-02-24 10:53:19'),
(41, 50, 37300, 'http://www.nbcindia.com/mobile/4-Apple-iPhone-4S-16GB-Black-Black/iPhone4S16GBBlackBlack', 'Delivery in 2-3 Business days .', 0, '\r\n                                            Apple iPhone 4S-16GB (Black)\r\n                                        ', '2013-02-24 10:58:28'),
(41, 55, 12880, 'http://www.nbcindia.com/mobile/4-Nokia-Lumia-710-Black-Black-/Lumia710BlackBlack', 'Delivery in 2-3 Business days .', 0, '\r\n                                            Nokia Lumia 710 (Black)\r\n                                        ', '2013-02-28 02:05:18'),
(41, 59, 43165, 'http://www.nbcindia.com/mobile/4-Apple-iPhone-4S-16GB-Black-Black/iPhone4S16GBBlackBlack', 'Delivery in 2-3 Business days .', 0, '\r\n                                            Apple iPhone 4S-16GB (Black)\r\n                                        ', '2013-02-28 19:26:09'),
(41, 72, 1199, 'http://www.nbcindia.com/mobile/4-amzer-93292-shellster-for-samsung-galaxy-nexus-google-galaxy-nexus---black/amzer93292', 'Delivery in 2-3 Business days .', 0, '\r\n                                            Amzer 93292 Shellster for Samsung Galaxy Nexus / Google Galaxy Nexus - Black\r\n                                        ', '2013-03-17 20:37:23'),
(41, 73, 1199, 'http://www.nbcindia.com/mobile/4-amzer-93292-shellster-for-samsung-galaxy-nexus-google-galaxy-nexus---black/amzer93292', 'Delivery in 2-3 Business days .', 0, '\r\n                                            Amzer 93292 Shellster for Samsung Galaxy Nexus / Google Galaxy Nexus - Black\r\n                                        ', '2013-03-19 15:00:01'),
(41, 78, 1199, 'http://www.nbcindia.com/mobile/4-amzer-93292-shellster-for-samsung-galaxy-nexus-google-galaxy-nexus---black/amzer93292', 'Delivery in 2-3 Business days .', 0, '\r\n                                            Amzer 93292 Shellster for Samsung Galaxy Nexus / Google Galaxy Nexus - Black\r\n                                        ', '2013-03-19 19:06:33'),
(41, 25, 6490, 'http://www.nbcindia.com/mobile/4-Micromax-Ninja-A89-Grey/MicromaxNinjaA89Grey', 'Delivery in 2-3 Business days .', 0, '\r\n                                            Micromax Ninja A89 (Grey)\r\n                                        ', '2013-07-04 02:46:46'),
(41, 51, 37300, 'http://www.nbcindia.com/mobile/4-Apple-iPhone-4S-16GB-Black-Black/iPhone4S16GBBlackBlack', 'Delivery in 2-3 Business days .', 0, '\r\n                                            Apple iPhone 4S-16GB (Black)\r\n                                        ', '2013-07-04 02:57:04'),
(41, 95, 6490, 'http://www.nbcindia.com/mobile/4-Micromax-Ninja-A89-Grey/MicromaxNinjaA89Grey', 'Delivery in 2-3 Business days .', 0, '\r\n                                            Micromax Ninja A89 (Grey)\r\n                                        ', '2013-07-04 05:32:44'),
(41, 97, 3499, 'http://www.nbcindia.com/mobile/4-Micromax-Bolt-A27-Black/MicromaxBoltA27Black', 'Delivery in 2-3 Business days .', 0, '\r\n                                            Micromax Bolt A27 (Black)\r\n                                        ', '2013-07-04 18:21:08');

-- --------------------------------------------------------

--
-- Table structure for table `ncarrynimbuzz`
--

CREATE TABLE IF NOT EXISTS `ncarrynimbuzz` (
  `WebsiteID` int(10) NOT NULL,
  `ProductId` int(10) NOT NULL,
  `Price` int(10) NOT NULL,
  `Link` text COLLATE utf8_unicode_ci NOT NULL,
  `DeliveryTime` text COLLATE utf8_unicode_ci NOT NULL,
  `EMI` int(1) NOT NULL DEFAULT '0',
  `Title` text COLLATE utf8_unicode_ci NOT NULL,
  `Time` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `next`
--

CREATE TABLE IF NOT EXISTS `next` (
  `WebsiteID` int(10) NOT NULL,
  `ProductId` int(10) NOT NULL,
  `Price` int(10) NOT NULL,
  `Link` text NOT NULL,
  `DeliveryTime` text NOT NULL,
  `EMI` int(1) NOT NULL DEFAULT '1',
  `Title` text NOT NULL,
  `Time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `next`
--

INSERT INTO `next` (`WebsiteID`, `ProductId`, `Price`, `Link`, `DeliveryTime`, `EMI`, `Title`, `Time`) VALUES
(20, 1, 11445, 'http://www.next.co.in/samsung-s6802-gsm-mobile-phone-black.html', 'Delivery in 5 - 7 business days.', 1, 'Samsung Galaxy Ace Duos S6802 GSM Mobile...', '2013-01-18 16:54:03'),
(20, 2, 5990, 'http://www.next.co.in/samsung-galaxy-y-duos-lite-s5302-mobile-phone-white.html', 'Delivery in 5 - 7 business days.', 1, 'Samsung Galaxy Y DUOS Lite S5302 Mobile ...', '2013-01-18 17:35:07'),
(20, 3, 5990, 'http://www.next.co.in/samsung-galaxy-y-duos-lite-s5302-mobile-phone-black.html', 'Delivery in 5 - 7 business days.', 1, 'Samsung Galaxy Y DUOS Lite S5302 Mobile ...', '2013-01-18 17:36:04'),
(20, 4, 1899, 'http://www.next.co.in/modern-trance-midnight-mdnex0022.html', 'Delivery in 5 - 7 business days.', 1, 'Modern Trance -Midnight (MDNEX0022)', '2013-01-18 20:24:41'),
(20, 0, 1359, 'http://www.next.co.in/flower-bunches-gateway-to-paradise-b109.html', 'Delivery in 5 - 7 business days.', 1, 'Flower Bunches Gateway To Paradise (B109...', '2013-01-18 20:28:50'),
(20, 6, 1359, 'http://www.next.co.in/flower-bunches-gateway-to-paradise-b109.html', 'Delivery in 5 - 7 business days.', 1, 'Flower Bunches Gateway To Paradise (B109...', '2013-01-18 20:29:17'),
(20, 8, 11990, 'http://www.next.co.in/samsung-galaxy-s-duos-s7562-android-mobile-phone-white.html', 'Delivery in 5 - 7 business days.', 1, 'Samsung Galaxy S Duos S7562 Android Mobi...', '2013-01-18 20:48:55'),
(20, 9, 36990, 'http://www.next.co.in/apple-iphone4s-16gb-gsm-mobile-phone-black.html', 'Delivery in 5 - 7 business days.', 1, 'Apple iPhone4S 16GB GSM Mobile Phone - B...', '2013-01-18 21:16:10'),
(20, 10, 4576, 'http://www.next.co.in/nokia-asha-305-dual-sim-mobile-phone.html', 'Delivery in 5 - 7 business days.', 1, 'Nokia Asha 305 Dual SIM Mobile Phone-Gre...', '2013-01-19 01:05:46'),
(20, 11, 1305, 'http://www.next.co.in/versace-baby-blue-jeans-50-ml-eau-de-toilette-men.html', 'Delivery in 5 - 7 business days.', 1, 'Versace Baby Blue Jeans 50 ML Eau De Toi...', '2013-01-19 15:32:37'),
(20, 12, 36000, 'http://www.next.co.in/samsung-galaxy-note-2-n7100-android-mobile-phone-grey.html', 'Delivery in 5 - 7 business days.', 1, 'Samsung Galaxy Note 2 N7100 Android Mobi...', '2013-01-19 15:34:15'),
(20, 13, 29478, 'http://www.next.co.in/samsung-i9300-gsm-mobile-phone-pebble-blue-381.html', 'Delivery in 5 - 7 business days.', 1, 'Samsung Galaxy S3/SIII Andriod Mobile Ph...', '2013-01-23 19:22:53'),
(20, 14, 45500, 'http://www.next.co.in/apple-iphone-5-16gb-mobile-phone-white.html', 'Delivery in 5 - 7 business days.', 1, 'Apple iPhone 5 16GB Mobile Phone - White', '2013-01-23 19:24:49'),
(20, 15, 12380, 'http://www.next.co.in/mhs-nok-gsmsingle-lumia610-tch-black.html', 'Delivery in 5 - 7 business days.', 1, 'Nokia Lumia 610 Windows Mobile Phone - B...', '2013-01-23 19:27:46'),
(20, 16, 3999, 'http://www.next.co.in/micromax-e390-cdma-mobile-phone-black.html', 'Delivery in 5 - 7 business days.', 1, 'Micromax E390 CDMA Mobile Phone - Black', '2013-01-23 19:30:04'),
(20, 17, 1550, 'http://www.next.co.in/jabra-bt-2080-bluetooth-wireless-headset.html', 'Delivery in 5 - 7 business days.', 1, 'Jabra BT 2080 Bluetooth Wireless Headset', '2013-01-23 19:31:19'),
(20, 18, 7600, 'http://www.next.co.in/mhs-huwa-gsmsingle-y200-tch-black.html', 'Delivery in 5 - 7 business days.', 1, 'Huawei Y200 Android Mobile Phone - Black', '2013-01-23 19:33:12'),
(20, 19, 18300, 'http://www.next.co.in/samsung-galaxy-tab-2-p3100-titanium-silver.html', 'Delivery in 5 - 7 business days.', 1, 'Samsung Galaxy Tab 2 P3100 (Titanium Sil...', '2013-01-23 19:36:42'),
(20, 20, 14490, 'http://www.next.co.in/sony-xperia-j-st26i-android-mobile-phone-black.html', 'Delivery in 5 - 7 business days.', 1, 'Sony Xperia J ST26I Android Mobile Phone...', '2013-01-23 19:38:08'),
(20, 21, 1935, 'http://www.next.co.in/burberry-for-women-30-ml-eau-de-parfum-women.html', 'Delivery in 5 - 7 business days.', 1, 'Burberry For Women 30 ML Eau De Parfum (...', '2013-01-23 19:40:14'),
(20, 22, 1935, 'http://www.next.co.in/burberry-for-women-30-ml-eau-de-parfum-women.html', 'Delivery in 5 - 7 business days.', 1, 'Burberry For Women 30 ML Eau De Parfum (...', '2013-01-23 19:42:43'),
(20, 23, 9120, 'http://www.next.co.in/electrolux-ebe183-br-180-litre-direct-cool-refrigerator-burgundy-red.html', 'Delivery in 5 - 7 business days.', 1, 'Electrolux EBE183-BR 170 Litre Direct Co...', '2013-01-23 19:44:18'),
(20, 24, 33902, 'http://www.next.co.in/nikon-d5100-dslr-camera-with-af-s-18-55mm-vr-kit-lens-black.html', 'Delivery in 5 - 7 business days.', 1, 'Nikon D5100 DSLR Camera with AF-S 18-55m...', '2013-01-23 19:45:04'),
(20, 25, 100000, 'http://www.next.co.in/marriage-hamper-3-a.html', 'Delivery in 5 - 7 business days.', 1, 'Blue Garnet - Thoughtful Mix of Branded ...', '2013-01-23 20:12:03'),
(20, 26, 99, 'http://www.next.co.in/moserbaer-racer-4-gb-pen-drive-white.html', 'Delivery in 5 - 7 business days.', 1, 'Moserbaer Racer 4 GB Pen Drive - White', '2013-01-23 21:46:04'),
(20, 27, 2499, 'http://www.next.co.in/burberry-for-men-100-ml-eau-de-toilette-men.html', 'Delivery in 5 - 7 business days.', 1, 'Burberry For Men 100 ML Eau De Toilette ...', '2013-01-23 22:15:50'),
(20, 28, 1999, 'http://www.next.co.in/calvin-klein-be-100-ml-eau-de-toilette-unisex.html', 'Delivery in 5 - 7 business days.', 1, 'Calvin Klein Be 100 ML Eau De Toilette (...', '2013-01-23 22:17:09'),
(20, 29, 8725, 'http://www.next.co.in/canon-powershot-sx150-14-1-mp-point-shoot-digital-camera-black.html', 'Delivery in 5 - 7 business days.', 1, 'Canon PowerShot SX150  14.1 MP Point &am...', '2013-01-23 22:27:24'),
(20, 31, 3156, 'http://www.next.co.in/andis-us-pro-grooming-kit.html', 'Delivery in 5 - 7 business days.', 1, 'Andis US-PRO Grooming Kit', '2013-01-23 22:36:42'),
(20, 32, 1799, 'http://www.next.co.in/philips-sa3mxx02ax-97-mp3-player-blue.html', 'Delivery in 5 - 7 business days.', 1, 'Philips MP3 Player 2GB Blue', '2013-01-28 19:32:51'),
(20, 33, 1799, 'http://www.next.co.in/philips-sa3mxx02ax-97-mp3-player-blue.html', 'Delivery in 5 - 7 business days.', 1, 'Philips MP3 Player 2GB Blue', '2013-01-28 19:39:55'),
(20, 34, 12380, 'http://www.next.co.in/mhs-nok-gsmsingle-lumia610-tch-black.html', 'Delivery in 5 - 7 business days.', 1, 'Nokia Lumia 610 Windows Mobile Phone - B...', '2013-01-30 13:49:37'),
(20, 35, 7764, 'http://www.next.co.in/nokia-asha303-gsm-mobile-phone-red.html', 'Delivery in 5 - 7 business days.', 1, 'Nokia ASHA303 GSM Mobile Phone - Red', '2013-01-30 13:52:03'),
(20, 36, 4000, 'http://www.next.co.in/mhs-nok-gsmdual-asha202-tch-black.html', 'Delivery in 5 - 7 business days.', 1, 'Nokia Asha 202 Dual SIM GSM Mobile Phone...', '2013-01-30 13:53:05'),
(20, 38, 19999, 'http://www.next.co.in/blackberry-torch-9860-mobile-phone.html', 'Delivery in 5 - 7 business days.', 1, 'Blackberry 9860 GSM Mobile Phone - Grey', '2013-02-12 22:56:12'),
(20, 39, 19999, 'http://www.next.co.in/blackberry-torch-9860-mobile-phone.html', 'Delivery in 5 - 7 business days.', 1, 'Blackberry 9860 GSM Mobile Phone - Grey', '2013-02-12 22:56:52'),
(20, 40, 2595, 'http://www.next.co.in/nokia-112-mobile-phone-white.html', 'Delivery in 5 - 7 business days.', 1, 'Nokia 112 Mobile Phone (White)', '2013-02-19 17:34:12'),
(20, 41, 16983, 'http://www.next.co.in/nokia-e6-00-gsm-mobile-phone-white.html', 'Delivery in 5 - 7 business days.', 1, 'Nokia E6-00 GSM Mobile Phone - White', '2013-02-19 17:34:45'),
(20, 42, 16983, 'http://www.next.co.in/nokia-e6-00-gsm-mobile-phone-white.html', 'Delivery in 5 - 7 business days.', 1, 'Nokia E6-00 GSM Mobile Phone - White', '2013-02-19 17:35:20'),
(20, 43, 990, 'http://www.next.co.in/samsung-e1081-gsm-mobile-phone-black.html', 'Delivery in 5 - 7 business days.', 1, 'Samsung E1081 GSM Mobile Phone - Black', '2013-02-21 16:35:13'),
(20, 46, 12380, 'http://www.next.co.in/mhs-nok-gsmsingle-lumia610-tch-black.html', 'Delivery in 5 - 7 business days.', 1, 'Nokia Lumia 610 Windows Mobile Phone - B...', '2013-02-22 16:36:46'),
(20, 47, 27000, 'http://www.next.co.in/nokia-lumia-920-gsm-mobile-phone-black.html', 'Delivery in 5 - 7 business days.', 1, 'Nokia Lumia 920 GSM Mobile Phone - Black', '2013-02-22 16:43:44'),
(20, 45, 23345, 'http://www.next.co.in/ifb-elena-vx-6kg-washing-machine.html', 'Delivery in 5 - 7 business days.', 1, 'IFB Elena VX 6 Kg Fully Automatic Washin...', '2013-02-24 10:52:35'),
(20, 48, 34500, 'http://www.next.co.in/samsung-galaxy-note-800.html', 'Delivery in 5 - 7 business days.', 1, 'Samsung Galaxy Note 800 - Pearl White', '2013-02-24 10:53:20'),
(20, 49, 3700, 'http://www.next.co.in/apple-shuffle-ipod-2gb-silver.html', 'Delivery in 5 - 7 business days.', 1, 'Apple Shuffle  iPod 2GB - Silver', '2013-02-24 10:57:23'),
(20, 50, 37900, 'http://www.next.co.in/apple-iphone4s-16gb-gsm-mobile-phone-black.html', 'Delivery in 5 - 7 business days.', 1, 'Apple iPhone4S 16GB GSM Mobile Phone - B...', '2013-02-24 10:58:26'),
(20, 51, 45500, 'http://www.next.co.in/apple-iphone-5-16gb-mobile-phone-white.html', 'Delivery in 5 - 7 business days.', 1, 'Apple iPhone 5 16GB Mobile Phone - White', '2013-02-24 13:13:24'),
(20, 52, 75990, 'http://www.next.co.in/videocon-vjh46pa-xs-full-hd-ddb-3d-smart-led-tv.html', 'Delivery in 5 - 7 business days.', 1, 'Videocon VJH46PA-XS Full HD DDB 3D Smart...', '2013-02-24 16:35:47'),
(20, 53, 75990, 'http://www.next.co.in/videocon-vjh46pa-xs-full-hd-ddb-3d-smart-led-tv.html', 'Delivery in 5 - 7 business days.', 1, 'Videocon VJH46PA-XS Full HD DDB 3D Smart...', '2013-02-24 16:38:40'),
(20, 55, 12380, 'http://www.next.co.in/mhs-nok-gsmsingle-lumia610-tch-black.html', 'Delivery in 5 - 7 business days.', 1, 'Nokia Lumia 610 Windows Mobile Phone - B...', '2013-02-28 02:05:16'),
(20, 56, 43490, 'http://www.next.co.in/blackberry-z10-gsm-mobile-phone-charcoal-black.html', 'Delivery in 5 - 7 business days.', 1, 'BlackBerry Z10 GSM Mobile Phone - Charco...', '2013-02-28 02:32:50'),
(20, 59, 24500, 'http://www.next.co.in/apple-ipad-2-16gb-wifi.html', 'Delivery in 5 - 7 business days.', 1, 'Apple iPad 2 16GB (WiFi) - White', '2013-02-28 19:26:09'),
(20, 60, 8890, 'http://www.next.co.in/sony-nwz-s764-mp4-player.html', 'Delivery in 5 - 7 business days.', 1, 'Sony NWZ-S764 MP3 Players 8GB - Black', '2013-02-28 19:27:04'),
(20, 61, 8890, 'http://www.next.co.in/sony-nwz-s764-mp4-player.html', 'Delivery in 5 - 7 business days.', 1, 'Sony NWZ-S764 MP3 Players 8GB - Black', '2013-02-28 19:28:18'),
(20, 64, 2599, 'http://www.next.co.in/mario-party-ds.html', 'Delivery in 5 - 7 business days.', 1, 'Mario Party DS', '2013-03-04 20:09:10'),
(20, 65, 2399, 'http://www.next.co.in/quantum-theory-ps3.html', 'Delivery in 5 - 7 business days.', 1, 'Quantum Theory PS3', '2013-03-04 20:18:37'),
(20, 66, 2399, 'http://www.next.co.in/quantum-theory-ps3.html', 'Delivery in 5 - 7 business days.', 1, 'Quantum Theory PS3', '2013-03-04 20:19:04'),
(20, 67, 2399, 'http://www.next.co.in/quantum-theory-ps3.html', 'Delivery in 5 - 7 business days.', 1, 'Quantum Theory PS3', '2013-03-04 20:20:08'),
(20, 68, 2399, 'http://www.next.co.in/quantum-theory-ps3.html', 'Delivery in 5 - 7 business days.', 1, 'Quantum Theory PS3', '2013-03-04 21:34:53'),
(20, 69, 2399, 'http://www.next.co.in/quantum-theory-ps3.html', 'Delivery in 5 - 7 business days.', 1, 'Quantum Theory PS3', '2013-03-04 21:36:08'),
(20, 70, 6799, 'http://www.next.co.in/samsung-pockets5300-gsm-mobile-phone-white.html', 'Delivery in 5 - 7 business days.', 1, 'Samsung PocketS5300 GSM Mobile Phone-Whi...', '2013-03-04 23:09:02'),
(20, 71, 22891, 'http://www.next.co.in/ifb-elena-vx-6kg-washing-machine.html', 'Delivery in 5 - 7 business days.', 1, 'IFB Elena VX 6 Kg Fully Automatic Washin...', '2013-03-07 11:01:15'),
(20, 72, 35190, 'http://www.next.co.in/samsung-galaxy-note-800.html', 'Delivery in 5 - 7 business days.', 1, 'Samsung Galaxy Note 800 - Pearl White', '2013-03-17 20:37:21'),
(20, 73, 30345, 'http://www.next.co.in/samsung-i9300-gsm-mobile-phone-pebble-blue-430.html', 'Delivery in 5 - 7 business days.', 1, 'Samsung Galaxy S3/SIII Andriod Mobile Ph...', '2013-03-19 15:00:04'),
(20, 74, 43490, 'http://www.next.co.in/blackberry-z10-gsm-mobile-phone-charcoal-black.html', 'Delivery in 5 - 7 business days.', 1, 'BlackBerry Z10 GSM Mobile Phone - Charco...', '2013-03-19 15:06:05'),
(20, 77, 7764, 'http://www.next.co.in/nokia-asha303-gsm-mobile-phone-red.html', 'Delivery in 5 - 7 business days.', 1, 'Nokia ASHA303 GSM Mobile Phone - Red', '2013-03-19 15:12:58'),
(20, 78, 21500, 'http://www.next.co.in/samsung-i9082-galaxy-grand-dual-sim-mobile-phone-white.html', 'Delivery in 5 - 7 business days.', 1, 'Samsung I9082 Galaxy Grand Dual SIM Mobi...', '2013-03-19 19:06:30'),
(20, 79, 660, 'http://www.next.co.in/transcend-16gb-microsdhc-class4-memory-card.html', 'Delivery in 5 - 7 business days.', 1, 'Transcend 16GB MicroSDHC Class4 Memory C...', '2013-03-19 19:15:35'),
(20, 80, 38990, 'http://www.next.co.in/sony-xperia-z-gsm-mobile-phone-purple.html', 'Delivery in 5 - 7 business days.', 1, 'Sony Xperia Z GSM Mobile Phone - Purple', '2013-03-21 16:45:01'),
(20, 81, 16700, 'http://www.next.co.in/sony-hdr-cx190e-camcorder-black.html', 'Delivery in 5 - 7 business days.', 1, 'Sony HDR-CX190E Camcorder (Black) ', '2013-03-21 16:51:07'),
(20, 82, 649, 'http://www.next.co.in/flower-bunches-beautiful-colors-of-life-xp7.html', 'Delivery in 5 - 7 business days.', 1, 'Flower Bunches Beautiful Colors Of Life ...', '2013-03-21 17:01:01'),
(20, 84, 4049, 'http://www.next.co.in/flower-combo-unlimited-love-ex0089.html', 'Delivery in 5 - 7 business days.', 1, 'Flower Combo Unlimited Love (EX0089)', '2013-03-21 17:06:53'),
(20, 85, 990, 'http://www.next.co.in/samsung-e1081-gsm-mobile-phone-black.html', 'Delivery in 5 - 7 business days.', 1, 'Samsung E1081 GSM Mobile Phone - Black', '2013-03-21 17:12:14'),
(20, 86, 15499, 'http://www.next.co.in/micromax-a116-canvas-hd-dual-sim-mobile-phone-black.html', 'Delivery in 5 - 7 business days.', 1, 'Micromax A116 Canvas HD Dual SIM Mobile ...', '2013-03-28 22:47:00'),
(20, 87, 75990, 'http://www.next.co.in/videocon-vjh46pa-xs-full-hd-ddb-3d-smart-led-tv.html', 'Delivery in 5 - 7 business days.', 1, 'Videocon VJH46PA-XS Full HD DDB 3D Smart...', '2013-03-29 10:22:00'),
(20, 88, 59439, 'http://www.next.co.in/samsung-40-inch-40d5500-full-hd-led-television.html', 'Delivery in 5 - 7 business days.', 1, 'Samsung 40 inch 40D5500 Full HD LED Tele...', '2013-03-29 10:23:00'),
(20, 89, 75990, 'http://www.next.co.in/videocon-vjh46pa-xs-full-hd-ddb-3d-smart-led-tv.html', 'Delivery in 5 - 7 business days.', 1, 'Videocon VJH46PA-XS Full HD DDB 3D Smart...', '2013-03-29 10:24:12'),
(20, 92, 199, 'http://www.next.co.in/callmate-mobile-hanger.html', 'Delivery in 5 - 7 business days.', 1, 'Callmate Mobile Hanger', '2013-07-04 02:48:46'),
(20, 91, 23499, 'http://www.next.co.in/nokia-lumia-820-gsm-mobile-phone-yellow.html', 'Delivery in 5 - 7 business days.', 1, 'Nokia Lumia 820 GSM Mobile Phone - Yello...', '2013-07-04 04:33:47'),
(20, 93, 7764, 'http://www.next.co.in/nokia-asha303-gsm-mobile-phone-red.html', 'Delivery in 5 - 7 business days.', 1, 'Nokia ASHA303 GSM Mobile Phone - Red', '2013-07-04 05:25:29'),
(20, 94, 957, 'http://www.next.co.in/philips-hi114-dry-iron.html', 'Delivery in 5 - 7 business days.', 1, 'Philips HI114 Dry Iron', '2013-07-04 05:28:08'),
(20, 95, 2999, 'http://www.next.co.in/micromax-x490-dual-sim-mobile-phone-metallic-grey.html', 'Delivery in 5 - 7 business days.', 1, 'Micromax X490 Dual Sim Mobile Phone - Me...', '2013-07-04 05:32:39'),
(20, 96, 7990, 'http://www.next.co.in/hcl-me-v1-tablet.html', 'Delivery in 5 - 7 business days.', 1, 'HCL ME V1 Tablet', '2013-07-04 16:06:20'),
(20, 97, 4690, 'http://www.next.co.in/ambrane-a-7-tablet-7.html', 'Delivery in 5 - 7 business days.', 1, 'Ambrane A-7 Tablet 7"', '2013-07-04 18:21:07');

-- --------------------------------------------------------

--
-- Table structure for table `pepperfry`
--

CREATE TABLE IF NOT EXISTS `pepperfry` (
  `WebsiteID` int(10) NOT NULL,
  `ProductId` int(10) NOT NULL,
  `Price` int(10) NOT NULL,
  `Link` text NOT NULL,
  `DeliveryTime` text NOT NULL,
  `EMI` int(1) NOT NULL DEFAULT '1',
  `Title` text NOT NULL,
  `Time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pepperfry`
--

INSERT INTO `pepperfry` (`WebsiteID`, `ProductId`, `Price`, `Link`, `DeliveryTime`, `EMI`, `Title`, `Time`) VALUES
(49, 11, 200, 'http://www.pepperfry.com/soulflower-baby-your-skin-soap-255184.html', '7 Working Days.', 1, '\r\n                            Soulflower Baby Your Skin Soap                        ', '2013-01-19 15:32:40'),
(49, 31, 699, 'http://www.pepperfry.com/neopack-laptop-sleeve-182512.html', '7 Working Days.', 1, '\r\n                            Neopack 12" Netbooks & Apple Macbook Air...                        ', '2013-01-23 22:36:44'),
(49, 37, 4475, 'http://www.pepperfry.com/guess-animal-print-sunglasses-gu7017-to-1-106274.html', '7 Working Days.', 1, '\r\n                            Guess Animal Print Sunglasses GU7017 to-1                        ', '2013-02-10 23:58:19'),
(49, 40, 2199, 'http://www.pepperfry.com/x-doria-dash-flip-black-for-iphone-4-4s-108690.html', '7 Working Days.', 1, '\r\n                            X-Doria Dash Flip Black For iPhone 4 / 4s                        ', '2013-02-19 17:34:10'),
(49, 43, 11499, 'http://www.pepperfry.com/samsung-ml-2850d-single-function-laser-printer-285719.html', '7 Working Days.', 1, '\r\n                            Samsung - ML 2850D Single Function Laser Printer                        ', '2013-02-21 16:35:15'),
(49, 44, 2299, 'http://www.pepperfry.com/yell-charger-bps-26-261181.html', '7 Working Days.', 1, '\r\n                            Yell Charger BPS - 26                        ', '2013-02-21 17:29:30'),
(49, 48, 579, 'http://www.pepperfry.com/zig-zag-back-s3-185762.html', '7 Working Days.', 1, '\r\n                            Zig Zag Back S3                        ', '2013-02-24 10:53:21'),
(49, 13, 799, 'http://www.pepperfry.com/sports-arm-band-galaxy-s3black-287631.html', '7 Working Days.', 1, '\r\n                            Sports Arm Band Galaxy S3Black                        ', '2013-02-24 10:54:37'),
(49, 49, 723, 'http://www.pepperfry.com/fruit-tray-apple-shape-169572.html', '7 Working Days.', 1, '\r\n				  Apple Shaped Fruit Tray				  ', '2013-02-24 10:57:23'),
(49, 50, 1999, 'http://www.pepperfry.com/yell-charger-bps-76-261177.html', '7 Working Days.', 1, '\r\n                            Yell Charger BPS - 76                        ', '2013-02-24 10:58:45'),
(49, 51, 799, 'http://www.pepperfry.com/apple-iphone-5-new-8-pin-data-cable-white-304918.html', '7 Working Days.', 1, '\r\n				  Apple iPhone 5 New 8-Pin-Data Cable white				  ', '2013-02-24 13:13:22'),
(49, 58, 400, 'http://www.pepperfry.com/manforce-16-times-more-combo-pack-185512.html', '7 Working Days.', 1, '\r\n                            Manforce 16 Times More Combo Pack                        ', '2013-02-28 03:55:27'),
(49, 29, 8995, 'http://www.pepperfry.com/canon-sx-150-is-black-225136.html', '7 Working Days.', 1, '\r\n                            Canon SX 150  IS Black                        ', '2013-02-28 03:58:46'),
(49, 24, 31349, 'http://www.pepperfry.com/nikon-d5100-slr-camera-with-18-55-mm-lens-257838.html', '7 Working Days.', 1, '\r\n				  Nikon D5100 SLR Camera with 18-55 mm Lens				  ', '2013-02-28 04:53:59'),
(49, 26, 1572, 'http://www.pepperfry.com/sandisk-cruzer-blade-16-gb-plus-sandisk-cruzer-pop-16-gb-white-combo-257840.html', '7 Working Days.', 1, '\r\n                            Sandisk Cruzer Blade 16 GB Plus Sandisk Cruzer POP...                        ', '2013-02-28 19:24:11'),
(49, 59, 1651, 'http://www.pepperfry.com/sandisk-extreme-16-gb-pendrive-3-0-172296.html', '7 Working Days.', 1, '\r\n                            SanDisk Extreme 16 GB Pendrive 3.0                        ', '2013-02-28 19:26:10'),
(49, 71, 260, 'http://www.pepperfry.com/farlin-wash-mitten-pink-149607.html', '7 Working Days.', 1, '\r\n                            Farlin WASH MITTEN Pink                        ', '2013-03-07 11:01:14'),
(49, 73, 799, 'http://www.pepperfry.com/sports-arm-band-galaxy-s3black-287631.html', '7 Working Days.', 1, '\r\n                            Sports Arm Band Galaxy S3Black                        ', '2013-03-19 15:00:01'),
(49, 81, 550, 'http://www.pepperfry.com/sony-mdr-j10-151029.html', '7 Working Days.', 1, '\r\n                            Sony MDR-J10                          ', '2013-03-21 16:51:07'),
(49, 90, 107490, 'http://www.pepperfry.com/yamaha-digital-sound-projector-ysp-4100-285681.html', '7 Working Days.', 1, '\r\n              Yamaha Digital Sound Projector YSP-4100              ', '2013-04-05 19:26:21'),
(49, 92, 750, 'http://www.pepperfry.com/nitho-all-mobile-keys-kit-301917.html', '7 Working Days.', 1, '\r\n				  Nitho All Mobile Keys Kit				  ', '2013-07-04 02:48:48'),
(49, 94, 750, 'http://www.pepperfry.com/nitho-all-mobile-keys-kit-301917.html', '7 Working Days.', 1, '\r\n				  Nitho All Mobile Keys Kit				  ', '2013-07-04 05:28:10'),
(49, 96, 3229, 'http://www.pepperfry.com/cooler-master-arc-245890.html', '7 Working Days.', 1, '\r\n				  Cooler Master Arc Stand				  ', '2013-07-04 16:06:23'),
(49, 54, 1167, 'http://www.pepperfry.com/netgear-n300-wna3100-usb-adapter-252433.html', '7 Working Days.', 1, '\r\n				  NETGEAR N300 WNA3100 USB ADAPTER				  ', '2013-07-04 19:02:33');

-- --------------------------------------------------------

--
-- Table structure for table `priceking`
--

CREATE TABLE IF NOT EXISTS `priceking` (
  `WebsiteID` int(10) NOT NULL,
  `ProductId` int(10) NOT NULL,
  `Price` int(10) NOT NULL,
  `Link` text NOT NULL,
  `DeliveryTime` text NOT NULL,
  `EMI` int(1) NOT NULL DEFAULT '0',
  `Title` text NOT NULL,
  `Time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `ProductId` int(10) NOT NULL AUTO_INCREMENT,
  `ProductName` varchar(255) NOT NULL,
  `Data` text NOT NULL,
  `ImageUrl` text NOT NULL,
  `Views` int(10) NOT NULL,
  `ExpiryTime` datetime NOT NULL,
  `Time` datetime NOT NULL,
  `Description` text NOT NULL,
  `Features` text NOT NULL,
  PRIMARY KEY (`ProductId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=99 ;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`ProductId`, `ProductName`, `Data`, `ImageUrl`, `Views`, `ExpiryTime`, `Time`, `Description`, `Features`) VALUES
(1, 'samsung+duos', 'Samsung Galaxy S Duos GT-S7562 (White)', 'http://ecx.images-amazon.com/images/I/41w-5HOFTSL._AA160_.jpg', 12, '2013-07-04 01:58:24', '2013-01-18 16:53:47', '', '<p><b>Product Features</b></p><p>\n                                \n                                    5MP primary camera with auto focus and VGA front facing camera\n                                \n                            </p><p>\n                                \n                                    4-inch TFT touchscreen with 480 x 800 pixels resolution\n                                \n                            </p><p>\n                                \n                                    Android 4.0 Ice Cream Sandwich operating system with 1GHz processor and memory expandable upto 32GB with dual SIM\n                                \n                            </p><p>\n                                \n                                    1500mAH battery providing Â talk-time of 12.83 hours on 2G and 8.6 hours on 3G networks and standby time of 570 hours on 2G and 470 hours on 3G networks\n                                \n                            </p><p>\n                                \n                                    1 year manufacturer warranty for device and 6 months manufacturer warranty for in-box accessories including batteries from the date of purchase\n                                \n                            </p>'),
(2, 'Samsung+Galaxy+Y+Duos+Lite+GT-S5302+(White)', 'Samsung Galaxy Y Duos Lite GT-S5302 (White)', 'http://ecx.images-amazon.com/images/I/31j48IpnVvL._AA160_.jpg', 15, '2013-07-04 05:14:44', '2013-01-18 17:34:56', '', '<p><b>Product Features</b></p><p>\n                                \n                                    2MP primary camera with shot mode, photo effects, white balance and video capture\n                                \n                            </p><p>\n                                \n                                    2.79-inch QVGA touchscreen with 320 x 240 pixels resolution\n                                \n                            </p><p>\n                                \n                                    Android 2.3 Gingerbread operating system with memory expandable upto 32GB\n                                \n                            </p><p>\n                                \n                                    1200mAH battery providing talk-time of 15.33 hours on 2G and 6 hours on 3G networks and standby time of 410 hours on 2G and 370hours on 3G networks\n                                \n                            </p><p>\n                                \n                                    1 year manufacturer warranty for device and 6 month manufacturer warranty for in-box accessories including batteries from the date of purchase\n                                \n                            </p>'),
(3, 'Samsung+Galaxy+Y+Duos+GT-S6102+(Black)', 'Samsung Galaxy Y Duos GT-S6102 (Black)', 'http://ecx.images-amazon.com/images/I/41prk0-6oLL._AA160_.jpg', 6, '2013-02-28 16:43:59', '2013-01-18 17:35:56', '', '<p><b>Product Features</b></p><p>\n                                \n                                    3MP primary camera with shot mode, photo effects, white balance and video capture\n                                \n                            </p><p>\n                                \n                                    3.15-inch 262K color TFT touch screen with 320x240 pixels resolution\n                                \n                            </p><p>\n                                \n                                    Android 2.3 (Gingerbread) operating system and memory expandable upto 32 GB\n                                \n                            </p><p>\n                                \n                                    1,300 mAh battery providing talktime of 17.5 hours on 2G and 6.16 hours on 3G networks and standby time of 630 hours on 2G and 440 hours on 3G networks\n                                \n                            </p><p>\n                                \n                                    1 year manufacturer warranty for device and 6 month manufacturer warranty for in-box accessories including batteries from the date of purchase\n                                \n                            </p>'),
(4, 'a+modern+approach+to+verbal+and+non+verbal+reasoning', 'A Modern Approach to Verbal & Non-Verbal Reasoning', 'http://ecx.images-amazon.com/images/I/41S1074ACAL._AA160_.jpg', 3, '2013-07-04 02:58:12', '2013-01-18 20:24:25', '', '<p><b>Product Features</b></p><p>\n                                \n                                    Competitive Exams\n                                \n                            </p>'),
(5, 'A+Modern+Approach+To+Verbal+&+Non-Verbal+Reasoning+(Paperback)', '', '', 1, '2013-01-18 20:28:38', '2013-01-18 20:28:38', '', ''),
(6, 'A+Modern+Approach+To+Verbal', 'A Modern Approach to Verbal & Non-Verbal Reasoning', 'http://ecx.images-amazon.com/images/I/51u-lW5nJ9L._AA160_.jpg', 5, '2013-01-23 19:25:24', '2013-01-18 20:29:10', '', '<p><b>Product Features</b></p><p>\n                                \n                                    Competitive Exams\n                                \n                            </p>'),
(7, 'A+Modern+Approach+To+Verbal+&+Non+Verbal+Reasoning+(Paperback)', '', '', 1, '2013-01-18 20:33:00', '2013-01-18 20:33:00', '', ''),
(8, 'Samsung+Galaxy+S+Duos+S7562+(Black)', 'Samsung Galaxy S Duos GT-S7562 (Black)', 'http://ecx.images-amazon.com/images/I/41PjURVpxtL._AA160_.jpg', 6, '2013-07-03 19:23:14', '2013-01-18 20:48:38', '', '<p><b>Product Features</b></p><p>\n                                \n                                    5MP primary camera with auto focus, geotagging, multishot mode, panorama, white balance, photo effects and 0.3MP front facing camera\n                                \n                            </p><p>\n                                \n                                    4-inch TFT screen with 480 x 800 pixels resolution\n                                \n                            </p><p>\n                                \n                                    Android Icecream Sandwich 4.0 operating system with 1GHz Cortex-A5 processor, memory expandable upto 32GB with dual SIM\n                                \n                            </p><p>\n                                \n                                    1500mAH battery providing talk-time of 12 hours and standby time of 570 hours on 2G network and talk-time of 8 hours and standby time of 470 hours on 3G network\n                                \n                            </p><p>\n                                \n                                    1 year manufacturer warranty for device and 6 months manufacturer warranty for in-box accessories including batteries from the date of purchase\n                                \n                            </p>'),
(9, 'apple+iphone+4s+case', 'Black Ultra Thin Rubberized Matte Hard Case Cover for Apple iPhone 4s', 'http://ecx.images-amazon.com/images/I/31hAy0KmktL._AA160_.jpg', 3, '2013-01-18 21:16:00', '2013-01-18 21:15:58', '', '<p><b>Product Features</b></p><p>\n                                \n                                    Ultra Thin and stylish (weight Less than 10-15 Gram)\n                                \n                            </p><p>\n                                \n                                    Dust free, washable, Fingerprints Free.\n                                \n                            </p><p>\n                                \n                                    Matte finish, smooth feeling in hands.\n                                \n                            </p><p>\n                                \n                                    Made from high Quality Polycarbonate and Rubber Material\n                                \n                            </p><p>\n                                \n                                    All buttons and jacks are accessible through the cutouts\n                                \n                            </p>'),
(10, 'nokia+asha+305', 'Nokia Asha 305 (Dark Grey)', 'http://ecx.images-amazon.com/images/I/31tmKlsSJ4L._AA160_.jpg', 6, '2013-02-28 04:48:19', '2013-01-19 01:05:36', '', '<p><b>Product Features</b></p><p>\n                                \n                                    2MP primary camera with auto and manual white balance, auto exposure, exposure compensation, full screen viewfinder, self timer, still image editor\n                                \n                            </p><p>\n                                \n                                    3-inch LCD transmissive scratch resistant screen with 240 x 400 pixels resolution\n                                \n                            </p><p>\n                                \n                                    Nokia Series 40 operating system, dual active SIM and memory expandable upto 32 GB\n                                \n                            </p><p>\n                                \n                                    1110 mAH battery providing talk-time of 14 hours on 2G networks and standby time of 528 hours on 2G networks\n                                \n                            </p><p>\n                                \n                                    1 year manufacturer warranty for device and 6 months manufacturer warranty for in-box accessories including batteries from date of purchase\n                                \n                            </p>'),
(11, 'baby+soaps', 'Pigeon - Baby Soap', 'http://ecx.images-amazon.com/images/I/311akWYXlzL._AA160_.jpg', 2, '2013-01-19 15:32:32', '2013-01-19 15:32:25', '', '<p><b>Product Features</b></p><p>\n                                \n                                    90 Grams, Baby Transparent Soap\n                                \n                            </p>'),
(12, 'samsung+galaxy+note+2', 'Samsung Galaxy Note 2 GT-N7100 (White)', 'http://ecx.images-amazon.com/images/I/41vNAZv7feL._AA160_.jpg', 10, '2013-07-04 05:34:17', '2013-01-19 15:34:04', '', '<p><b>Product Features</b></p><p>\n                                \n                                    8MP primary camera with auto focus, video capture and 1.9MP front facing camera\n                                \n                            </p><p>\n                                \n                                    5.55-inch Super Amoled display touch screen with 1280 x 720 pixels resolution\n                                \n                            </p><p>\n                                \n                                    Android 4.1 with Quad core 1.6GHz processor\n                                \n                            </p><p>\n                                \n                                    3100mAH battery\n                                \n                            </p><p>\n                                \n                                    1 year manufacturer warranty for device and 6 month manufacturer warranty for in-box accessories including batteries  from the date of purchase\n                                \n                            </p>'),
(13, 'samsung+galaxy+s3', 'Samsung Galaxy S3/SIII Mobile | Pebble Blue', 'http://ecx.images-amazon.com/images/I/51JOaE64EFL._AA160_.jpg', 5, '2013-02-28 05:00:28', '2013-01-23 19:22:35', '', '<p><b>Product Features</b></p><p>\n                                \n                                    Android v4.0 (Ice Cream Sandwich) OS\n                                \n                            </p><p>\n                                \n                                    Camera: 8 MP Primary & 1.9 MP Secondary\n                                \n                            </p><p>\n                                \n                                    4.8-inch Super AMOLED Capacitive Touchscreen\n                                \n                            </p><p>\n                                \n                                    1.4 GHz Quad Core Processor\n                                \n                            </p><p>\n                                \n                                    Expandable Storage Capacity of 64 GB\n                                \n                            </p>'),
(14, 'apple+iphone5', 'Apple iPhone 5, 16 GB | Black & Slate', 'http://ecx.images-amazon.com/images/I/31wACCRiGeL._AA160_.jpg', 2, '2013-01-23 19:24:44', '2013-01-23 19:24:38', '', '<p><b>Product Features</b></p><p>\n                                \n                                    2G / 3G /4G / LTE enabled bar phone with iOS 6 and easy access to e-mail and social networks\n                                \n                            </p><p>\n                                \n                                    8 megapixel iSight auto-focus camera with LED flash; front-facing FaceTime HD camera;\n                                \n                            </p><p>\n                                \n                                    Memory Capacity-16GB; iCloud service; A6 processor; Apple Maps with Flyover mode; AirPlay & AirPrint\n                                \n                            </p><p>\n                                \n                                    Up to 8 hours of LTE browsing time; up to 10 hours of video playback time\n                                \n                            </p><p>\n                                \n                                    Whats in the Box:Handset, EarPods with remote & mic, lightning to USB cable, USB power adapter\n                                \n                            </p>'),
(15, 'Nokia+Lumia+800', 'Nokia Lumia 800', 'http://ecx.images-amazon.com/images/I/41Xi48ZVCmL._AA160_.jpg', 6, '2013-07-04 04:39:42', '2013-01-23 19:27:34', '', '<p><b>Product Features</b></p><p>\n                                \n                                    8MP primary camera with dual-LED flash, touch focus, auto and manual exposure, geo-tagging, auto and manual white balance\n                                \n                            </p><p>\n                                \n                                    3.7-inch AMOLED capacitive multipoint clearblack glass touchscreen with 800 x 480 pixels resolution\n                                \n                            </p><p>\n                                \n                                    Windows Phone operating system with 16GB inbuilt memory\n                                \n                            </p><p>\n                                \n                                    1450mAH battery providing talktime of 13 hours on 2G and 9.5 hours on 3G networks and standby time of 265 hours on 2G and 335 hours on 3G networks\n                                \n                            </p><p>\n                                \n                                    1 year manufacturer warranty for device and 6 month manufacturer warranty for in-box accessories including batteries from the date of purchase\n                                \n                            </p>'),
(16, 'Philips+SHS+390+Headphone', 'Philips Sports Style MP3 Headphones SHS390', 'http://ecx.images-amazon.com/images/I/41UkxDGatcL._AA160_.jpg', 2, '2013-01-23 19:29:56', '2013-01-23 19:29:53', '', '<p><b>Product Features</b></p><p>\n                                \n                                    Music to your ears\n                                \n                            </p><p>\n                                \n                                    32mm speaker driver delivers high performance sound\n                                \n                            </p><p>\n                                \n                                    Bass beat vents allow air movement for better sound\n                                \n                            </p><p>\n                                \n                                    Neodymium magnet enhances bass performance and sensitivity\n                                \n                            </p><p>\n                                \n                                    Made to fit you and your lifestyle\n                                \n                            </p><p>\n                                \n                                    Ear cushions improve wearing comfort and bass response\n                                \n                            </p><p>\n                                \n                                    Single-sided cable reduces tangling and improves comfort\n                                \n                            </p><p>\n                                \n                                    Always ready to go\n                                \n                            </p><p>\n                                \n                                    A 1.2m long cable that is ideal for outdoor use\n                                \n                            </p>'),
(17, 'Netgear+JNR1010+N150+Wireless+Router', 'Netgear JNR1010 N150 Wireless Router', 'http://ecx.images-amazon.com/images/I/318raxd5m9L._AA160_.jpg', 2, '2013-01-23 19:31:11', '2013-01-23 19:31:09', '', '<p><b>Product Features</b></p>'),
(18, 'Huawei+E303C+Data+Card', 'Huawei E303C Data Card', 'http://ecx.images-amazon.com/images/I/21TlJ079KQL._AA160_.jpg', 2, '2013-01-23 19:33:04', '2013-01-23 19:33:02', '', '<p><b>Product Features</b></p>'),
(19, 'Samsung+Galaxy+Tab+2+P3100', 'Samsung Galaxy Tab 2 P3100 | Titanium Silver', 'http://ecx.images-amazon.com/images/I/41u7jU6rdjL._AA160_.jpg', 2, '2013-01-23 19:36:33', '2013-01-23 19:36:29', '', '<p><b>Product Features</b></p><p>\n                                \n                                    AndroidTM 4.0 platform\n                                \n                            </p><p>\n                                \n                                    7-inch Multitouch Screen\n                                \n                            </p><p>\n                                \n                                    Sensor Type Ambient Light Sensor\n                                \n                            </p><p>\n                                \n                                    Flash Memory Capacity 8 GB\n                                \n                            </p><p>\n                                \n                                    Bluetooth Yes Bluetooth Standard Bluetooth 3.0\n                                \n                            </p>'),
(20, 'Sony+Xperia+J', 'Sony Xperia J (Black)', 'http://ecx.images-amazon.com/images/I/41OZinj4IRL._AA160_.jpg', 6, '2013-07-11 02:43:02', '2013-01-23 19:37:55', '', '<p><b>Product Features</b></p><p>\n                                \n                                    5MP primary camera with 4x digital zoom, LED flash, auto focus, geo-tagging, touch focus, face and smile detection, Image stabilization and VGA front facing camera\n                                \n                            </p><p>\n                                \n                                    4-inch FWVGA touchscreen, scratch-resistant gorilla glass with 854 x 480 pixels resolution and 16M color support\n                                \n                            </p><p>\n                                \n                                    Android v4 (Ice Cream Sandwich), 1GHz processor, 512MB RAM and 4GB internal memory expandable up to 32GB\n                                \n                            </p><p>\n                                \n                                    1700mAH battery providing talk-time of 7 hours and standby time of 618 hours\n                                \n                            </p><p>\n                                \n                                    1 year manufacturer warranty for device and 6 month manufacturer warranty for in-box accessories including batteries from date of purchase\n                                \n                            </p>'),
(21, 'Fastrack+Tote+-+For+Women', '', '', 2, '2013-01-23 19:40:02', '2013-01-23 19:40:02', '', ''),
(22, 'Fastrack+Tote+-+For+Women+(Pink)', '', '', 2, '2013-01-23 19:42:31', '2013-01-23 19:42:31', '', ''),
(23, 'Electrolux+EBE183BR+Single+Door+170+Litres+Refrigerator', '', '', 2, '2013-01-23 19:44:08', '2013-01-23 19:44:08', '', ''),
(24, 'Nikon+D5100+SLR', 'Nikon Digital SLR D5100 kit with AF-S 18-55mm VR lens', 'http://ecx.images-amazon.com/images/I/51nlyjEV2WL._AA160_.jpg', 6, '2013-07-04 04:41:56', '2013-01-23 19:44:58', '', '<p><b>Product Features</b></p><p>\n                                \n                                    3-inch, 921,000-dot Super-Density horizontal type Vari-Angle LCD Monitor\n                                \n                            </p><p>\n                                \n                                    In-camera Special Effects Mode\n                                \n                            </p><p>\n                                \n                                    In-camera HDR (High Dynamic Range)\n                                \n                            </p><p>\n                                \n                                    Stunning Full 1080p HD Movies with Full Time Autofocus\n                                \n                            </p>'),
(25, 'Micromax+Ninja+3+A57', 'Screen Guard Protector for Micromax A57 Ninja 3 Mobile', 'http://ecx.images-amazon.com/images/I/21NEHJ%2BgbXL._AA160_.jpg', 3, '2013-07-04 02:46:37', '2013-01-23 20:11:51', '', '<p><b>Product Features</b></p>'),
(26, 'Sandisk+Cruzer+Blade+16+GB+Pen+Drive', 'SanDisk Cruzer Blade 16 GB USB Flash Drive SDCZ50-016G-B35', 'http://ecx.images-amazon.com/images/I/41pS7kV8G2L._AA160_.jpg', 5, '2013-02-28 19:24:02', '2013-01-23 21:45:44', '', '<p><b>Product Features</b></p><p>\n                                \n                                    Keep your digital world in your pocket in our smallest package\n                                \n                            </p><p>\n                                \n                                    Transfer and share photos, videos, songs and other files between computers with ease\n                                \n                            </p><p>\n                                \n                                    Store more with capacities up to 16GB\n                                \n                            </p><p>\n                                \n                                    Worry not because your SanDisk Cruzer Blade USB flash drive is backed by a 2-year warranty\n                                \n                            </p>'),
(27, 'FCUK+Analog+Watch+-+For+Men', '', '', 2, '2013-01-23 22:15:35', '2013-01-23 22:15:35', '', ''),
(28, 'Fastrack+Tees+Analog+Watch+-+Unisex', '', '', 2, '2013-01-23 22:16:58', '2013-01-23 22:16:58', '', ''),
(29, 'Canon+PowerShot+SX150+IS+Point', 'Canon Powershot SX150 IS 14.1MP Digital Point and Shoot Camera with 12x Optical Zoom (Black)', 'http://ecx.images-amazon.com/images/I/41DeTbM4a0L._AA160_.jpg', 4, '2013-02-28 03:58:40', '2013-01-23 22:27:11', '', '<p><b>Product Features</b></p><p>\n                                \n                                    14.1 megapixels\n                                \n                            </p><p>\n                                \n                                    28mm wide angel Canon lens\n                                \n                            </p><p>\n                                \n                                    12x optical zoom\n                                \n                            </p><p>\n                                \n                                    Intelligent IS\n                                \n                            </p><p>\n                                \n                                    Iframe Movie\n                                \n                            </p>'),
(30, 'macbookpro', 'Apple MacBook Air MC968HN/A Laptop', 'http://ecx.images-amazon.com/images/I/21ItoS9ycKL._AA160_.jpg', 2, '2013-01-23 22:31:46', '2013-01-23 22:31:43', '', '<p><b>Product Features</b></p><p>\n                                \n                                    Thin, light, durable. Flash Storage\n                                \n                            </p><p>\n                                \n                                    Multi-touch Technology\n                                \n                            </p><p>\n                                \n                                    Backlit keyboard\n                                \n                            </p><p>\n                                \n                                    Long-lasting Battery\n                                \n                            </p><p>\n                                \n                                    Multi-touch trackpad\n                                \n                            </p>'),
(31, 'apple+macbook+pro', 'Apple MacBook Pro MD101 13.3" Notebook', 'http://ecx.images-amazon.com/images/I/31Tg6ck6ZjL._SL160_SY207_CR0,0,160,207_.jpg', 4, '2013-07-26 20:29:16', '2013-01-23 22:36:25', '', '<p><b>Product Features</b></p><p>\n                                \n                                    The very latest graphics.\n                                \n                            </p><p>\n                                \n                                    The fastest, most versatile I/O in a notebook.\n                                \n                            </p><p>\n                                \n                                    FaceTime HD camera\n                                \n                            </p><p>\n                                \n                                    Multi-Touch trackpad.\n                                \n                            </p><p>\n                                \n                                    A long-lasting battery. Charge less. Do more.\n                                \n                            </p>'),
(32, '2GB+Pendrive', '8GB Sony USB 2.0 Pen Drive Flash Memory PenDrive', 'http://ecx.images-amazon.com/images/I/21WsZWhHqFL._AA160_.jpg', 3, '2013-01-28 19:32:44', '2013-01-28 19:32:35', '', '<p><b>Product Features</b></p><p>\n                                \n                                    8GB Storage Capacity\n                                \n                            </p><p>\n                                \n                                    New simple and stylish model with retractable USB connector\n                                \n                            </p><p>\n                                \n                                    Hi-Speed USB 2.0 for a convenient transfer of large files\n                                \n                            </p><p>\n                                \n                                    Plugn Play\n                                \n                            </p>'),
(33, 'Kingston+2GB+Pendrive', 'Kingston 32 GB 266x Ultimate 2 Compact Flash Card CF/32GB-U2', 'http://ecx.images-amazon.com/images/I/31Kyp4rw39L._AA160_.jpg', 2, '2013-01-28 19:39:46', '2013-01-28 19:39:43', '', '<p><b>Product Features</b></p><p>\n                                \n                                    Speed Rating - 45MB/sec read, 40MB/sec write\n                                \n                            </p><p>\n                                \n                                    Recovery Utility - data recovery software download from MediaRECOVER. Windows/Mac compatible\n                                \n                            </p><p>\n                                \n                                    Standardized - complies with CompactFlash Association specification standards\n                                \n                            </p><p>\n                                \n                                    Economical ? autosleep mode preserves system battery life\n                                \n                            </p>'),
(34, 'Nokia+lumia+900', 'Nokia Lumia 900 (Black)', 'http://ecx.images-amazon.com/images/I/41g6hQndGpL._AA160_.jpg', 16, '2013-07-04 16:06:43', '2013-01-30 13:49:19', '', '<p><b>Product Features</b></p><p>\n                                \n                                    8MP primary camera with dual LED flash, auto focus, Carl Zeiss optics, touch focus, auto and manual exposure, auto and manual white balance and 1MP front facing camera\n                                \n                            </p><p>\n                                \n                                    4.3-inch AMOLED ClearBlack glass capacitive multipoint touchscreen with 480x800 pixels resolution\n                                \n                            </p><p>\n                                \n                                    Windows Phone operating system and memory expandable upto 16GB\n                                \n                            </p><p>\n                                \n                                    1830mAH battery providing  talk-time of 7 hours on 2G and 7 hours on 3G networks and standby time of 300 hours on 2G and 300 hours on 3G networks\n                                \n                            </p><p>\n                                \n                                    1 year manufacturer warranty for device and 6 month manufacturer warranty for in-box accessories including batteries  from the date of purchase\n                                \n                            </p>'),
(35, 'Nokia+asha+302', 'Nokia Asha 302 (Dark Grey)', 'http://ecx.images-amazon.com/images/I/41OzIe3o49L._AA160_.jpg', 10, '2013-07-04 03:24:15', '2013-01-30 13:51:51', '', '<p><b>Product Features</b></p><p>\n                                \n                                    3.2MP primary camera with full screen viewfinder\n                                \n                            </p><p>\n                                \n                                    2.4-inch LCD transmissive display technology with 240x320 pixels resolution and compact QWERTY keypad\n                                \n                            </p><p>\n                                \n                                    Nokia Series 40 Asha operating system and memory expandable up to 32GB\n                                \n                            </p><p>\n                                \n                                    1320mAH battery providing talktime of 9 hours on 2G and 5.9 hours on 3G networks and standby time of 707 hours on 2G and 830 hours on 3G networks\n                                \n                            </p><p>\n                                \n                                    1 year manufacturer warranty for device and 6 month manufacturer warranty for in-box accessories including batteries  from the date of purchase\n                                \n                            </p>'),
(36, 'Nokia+asha+202', 'Nokia Asha 202 (Black)', 'http://ecx.images-amazon.com/images/I/41FmKtL6nYL._AA160_.jpg', 5, '2013-07-04 04:50:33', '2013-01-30 13:52:58', '', '<p><b>Product Features</b></p><p>\n                                \n                                    2MP primary camera with auto focus, one-touch capture key, landscape orientation, auto and manual white balance, still image editor, full screen viewfinder and self timer\n                                \n                            </p><p>\n                                \n                                    2.4-inch resistive single-touch portrait display touchscreen with 320x240 pixels resolution\n                                \n                            </p><p>\n                                \n                                    Nokia Series 40 operating system with memory expandable up to 32GB and dual SIM\n                                \n                            </p><p>\n                                \n                                    1020mAH battery providing talk-time of 5 hours on 2G network and standby time of 400 hours on 2G network\n                                \n                            </p><p>\n                                \n                                    1 year manufacturer warranty for device and 6 month manufacturer warranty for in-box accessories including batteries from the date of purchase\n                                \n                            </p>'),
(37, 'sunglasses', 'Reebok Aviators Sunglasses (Black)', 'http://ecx.images-amazon.com/images/I/31QZadkG9VL._AA160_.jpg', 2, '2013-02-10 23:58:05', '2013-02-10 23:57:59', '', '<p><b>Product Features</b></p><p>\n                                \n                                    Reebok Aviators Sunglasses (Black)\n                                \n                            </p>'),
(38, 'blackberry+bold+10', 'DC Washed Pattern Sleeve Case for BlackBerry Bold 4 9900 (SS-9900-30-10) SRC Slide - Grey', 'http://ecx.images-amazon.com/images/I/51Fsw4MxMjL._AA160_.jpg', 2, '2013-02-12 22:56:04', '2013-02-12 22:55:54', '', '<p><b>Product Features</b></p><p>\n                                \n                                    Ultra slim and sleek case fits the Blackberry Bold 9900 precisely\n                                \n                            </p><p>\n                                \n                                    100% genuine leather, hand-stiched to perfection\n                                \n                            </p><p>\n                                \n                                    Inner micro velvet lining keeps the device and screen clean\n                                \n                            </p><p>\n                                \n                                    Pull strap at top for easy access to your gadg\n                                \n                            </p>'),
(39, 'blackberry+bold', 'BlackBerry Bold 9000 | Black', 'http://ecx.images-amazon.com/images/I/41eS%2Ba6q30L._AA160_.jpg', 10, '2013-07-04 04:13:42', '2013-02-12 22:56:42', '', '<p><b>Product Features</b></p><p>\n                                \n                                    3G.2 MP Camera\n                                \n                            </p><p>\n                                \n                                    Wi-Fi networking\n                                \n                            </p><p>\n                                \n                                    GPS navigation\n                                \n                            </p><p>\n                                \n                                    2-megapixel camera\n                                \n                            </p><p>\n                                \n                                    Up to 4.5 hours of talk time\n                                \n                            </p>'),
(40, 'mobile', '3M Mobile Privacy Filter for Blackberry Curve 8520/8530', 'http://ecx.images-amazon.com/images/I/41NGqCWw32L._AA160_.jpg', 2, '2013-02-19 17:33:58', '2013-02-19 17:33:53', '', '<p><b>Product Features</b></p><p>\n                                \n                                    Brand new product\n                                \n                            </p><p>\n                                \n                                    Sealed package\n                                \n                            </p><p>\n                                \n                                    100% satisfaction guarantee\n                                \n                            </p><p>\n                                \n                                    Manufacturer Warranty applies\n                                \n                            </p>'),
(41, 'Nokias+e+71', 'Case-MateÂ® Barely There Case - Mirror Silver for Nokia E71', 'http://ecx.images-amazon.com/images/I/31xSBL-dPtL._AA160_.jpg', 1, '2013-02-19 17:34:43', '2013-02-19 17:34:39', '', '<p><b>Product Features</b></p><p>\n                                \n                                    Unique style in design and functionality - Barely There cases from Case-Mate!\n                                \n                            </p><p>\n                                \n                                    Protects your Nokia E71 from minor impact and abuse!\n                                \n                            </p><p>\n                                \n                                    It absolutely covers the back and sides of the Nokia E71.\n                                \n                            </p><p>\n                                \n                                    Cutouts at the corners increase flexibility and aid in getting it on or off.\n                                \n                            </p><p>\n                                \n                                    Cutouts are also provided for the controls, speaker, mic, and dock port.\n                                \n                            </p>'),
(42, 'Nokia+e+71', 'Case-MateÂ® Barely There Case - Mirror Silver for Nokia E71', 'http://ecx.images-amazon.com/images/I/31xSBL-dPtL._AA160_.jpg', 1, '2013-02-19 17:35:13', '2013-02-19 17:35:09', '', '<p><b>Product Features</b></p><p>\n                                \n                                    Unique style in design and functionality - Barely There cases from Case-Mate!\n                                \n                            </p><p>\n                                \n                                    Protects your Nokia E71 from minor impact and abuse!\n                                \n                            </p><p>\n                                \n                                    It absolutely covers the back and sides of the Nokia E71.\n                                \n                            </p><p>\n                                \n                                    Cutouts at the corners increase flexibility and aid in getting it on or off.\n                                \n                            </p><p>\n                                \n                                    Cutouts are also provided for the controls, speaker, mic, and dock port.\n                                \n                            </p>'),
(43, 'samsung', 'Samsung Galaxy S DUOS S7562', 'http://ecx.images-amazon.com/images/I/41RrRlNbiTL._AA160_.jpg', 2, '2013-02-21 16:35:03', '2013-02-21 16:34:55', '', '<p><b>Product Features</b></p><p>\n                                \n                                    5 MP primary camera with auto focus and VGA front facing camera\n                                \n                            </p><p>\n                                \n                                    4-inch TFT touch screen with 480 x 800 pixels resolution\n                                \n                            </p><p>\n                                \n                                    Android 4.0 Ice Cream Sandwich operating system with 1 GHz processor and memory expandable upto 32 GB with active dual SIM\n                                \n                            </p><p>\n                                \n                                    1500 mAH battery providing Â talk-time of 12.83 hours on 2G and 8.6 hours on 3G networks and standby time of 570 hours on 2G and 470 hours on 3G networks\n                                \n                            </p><p>\n                                \n                                    1 year manufacturer warranty for device and 6 month manufacturer warranty for in-box accessories including batteries from the date of purchase\n                                \n                            </p>'),
(44, 'samung', 'Samung Laptop NP300V3A-A03IN', 'http://ecx.images-amazon.com/images/I/31PNtAl1evL._AA160_.jpg', 1, '2013-02-21 17:29:21', '2013-02-21 17:29:18', '', '<p><b>Product Features</b></p><p>\n                                \n                                    Type : Notebook\n                                \n                            </p><p>\n                                \n                                    OS Version : DOS\n                                \n                            </p><p>\n                                \n                                    Drive Type : HDD\n                                \n                            </p><p>\n                                \n                                    Hard Drive Capacity : 640 GB\n                                \n                            </p><p>\n                                \n                                    Memory Capacity : 4 GB\n                                \n                            </p>'),
(45, 'Samsung+washing+machine', 'Samsung WA82BSLEC 6.2 Kg Fully Automatic Washing Machine - Grey', 'http://ecx.images-amazon.com/images/I/31yERSgNG7L._AA160_.jpg', 3, '2013-07-04 05:17:09', '2013-02-22 08:13:47', '', '<p><b>Product Features</b></p><p>\n                                \n                                    Capacity : 6.2 kg\n                                \n                            </p><p>\n                                \n                                    Automatic\n                                \n                            </p><p>\n                                \n                                    Top Loading\n                                \n                            </p>'),
(46, 'nokia+lumia+610', 'Nokia Lumia 610 (Black)', 'http://ecx.images-amazon.com/images/I/41r7tax3oNL._AA160_.jpg', 7, '2013-07-04 05:10:01', '2013-02-22 16:36:30', '', '<p><b>Product Features</b></p><p>\n                                \n                                    5MP primary camera with 4x digital zoom, auto focus with two-stage capture key, touch focus, landscape orientation, exposure compensation, auto and manual exposure, auto and manual white balance, face recognition, full screen viewfinder, center weighted auto exposure and geo-tagging\n                                \n                            </p><p>\n                                \n                                    3.7-inch capacitive multipoint-touch portrait LCD display touchscreen with 800x480 pixels resolution\n                                \n                            </p><p>\n                                \n                                    Windows Phone operating system with 800MHz processor and 8GB internal memory\n                                \n                            </p><p>\n                                \n                                    1300mAH battery providing talk-time of 12.5 hours on 2G and 10 hours on 3G networks and standby time of 740 hours on 2G and 785 hours on 3G networks\n                                \n                            </p><p>\n                                \n                                    1 year manufacturer warranty for device and 6 month manufacturer warranty for in-box accessories including batteries  from the date of purchase\n                                \n                            </p>'),
(47, 'nokia+lumia+920', 'Nokia Lumia 920 | Black', 'http://ecx.images-amazon.com/images/I/31b47ZpJ30L._AA160_.jpg', 48, '2013-07-04 04:27:19', '2013-02-22 16:43:32', '', '<p><b>Product Features</b></p><p>\n                                \n                                    USB On-the-go support\n                                \n                            </p><p>\n                                \n                                    Wireless charging\n                                \n                            </p><p>\n                                \n                                    Active noise cancellation with dedicated mic\n                                \n                            </p><p>\n                                \n                                    PureView technology\n                                \n                            </p><p>\n                                \n                                    IPS TFT capacitive touchscreen\n                                \n                            </p>'),
(48, 'Samsung+galaxy', 'Samsung Galaxy S DUOS S7562', 'http://ecx.images-amazon.com/images/I/41RrRlNbiTL._AA160_.jpg', 2, '2013-02-24 10:53:15', '2013-02-24 10:53:11', '', '<p><b>Product Features</b></p><p>\n                                \n                                    5 MP primary camera with auto focus and VGA front facing camera\n                                \n                            </p><p>\n                                \n                                    4-inch TFT touch screen with 480 x 800 pixels resolution\n                                \n                            </p><p>\n                                \n                                    Android 4.0 Ice Cream Sandwich operating system with 1 GHz processor and memory expandable upto 32 GB with active dual SIM\n                                \n                            </p><p>\n                                \n                                    1500 mAH battery providing Â talk-time of 12.83 hours on 2G and 8.6 hours on 3G networks and standby time of 570 hours on 2G and 470 hours on 3G networks\n                                \n                            </p><p>\n                                \n                                    1 year manufacturer warranty for device and 6 month manufacturer warranty for in-box accessories including batteries from the date of purchase\n                                \n                            </p>'),
(49, 'Apple', 'Apple iphone 4S 16GB | White', 'http://ecx.images-amazon.com/images/I/41M6XKu71IL._AA160_.jpg', 2, '2013-07-04 16:05:19', '2013-02-24 10:57:11', '', '<p><b>Product Features</b></p><p>\n                                \n                                    Dual-core A5 chip - the most powerful iPhone processor ever\n                                \n                            </p><p>\n                                \n                                    Video recording, in 1080p amazing HD\n                                \n                            </p><p>\n                                \n                                    iOS - the worlds most advanced mobile operating system, and the easiest to use\n                                \n                            </p><p>\n                                \n                                    Retina display, clearly remarkable\n                                \n                            </p><p>\n                                \n                                    FaceTime - its even better face-to-face\n                                \n                            </p>'),
(50, 'Apple+iPhone+4s', 'Apple iphone 4S 16GB | White', 'http://ecx.images-amazon.com/images/I/51g%2BPU34JlL._AA160_.jpg', 3, '2013-07-04 02:58:59', '2013-02-24 10:58:17', '', '<p><b>Product Features</b></p><p>\n                                \n                                    Dual-core A5 chip - the most powerful iPhone processor ever\n                                \n                            </p><p>\n                                \n                                    Video recording, in 1080p amazing HD\n                                \n                            </p><p>\n                                \n                                    iOS - the worlds most advanced mobile operating system, and the easiest to use\n                                \n                            </p><p>\n                                \n                                    Retina display, clearly remarkable\n                                \n                            </p><p>\n                                \n                                    FaceTime - its even better face-to-face\n                                \n                            </p>');
INSERT INTO `products` (`ProductId`, `ProductName`, `Data`, `ImageUrl`, `Views`, `ExpiryTime`, `Time`, `Description`, `Features`) VALUES
(51, 'Apple+iPhone+5', 'Apple iPhone 5 (Black-Slate, 16GB)', 'http://ecx.images-amazon.com/images/I/51ZmldwihiL._AA160_.jpg', 5, '2013-07-04 16:05:39', '2013-02-24 13:13:16', '', '<p><b>Product Features</b></p><p>\n                                \n                                    8MP primary camera with autofocus, tap to focus, LED flash, face detection, hybrid IR filter, panorama, video recording and 1.3MP front facing camera\n                                \n                            </p><p>\n                                \n                                    4-inch multi-touch screen with 1136 x 640 pixels resolution\n                                \n                            </p><p>\n                                \n                                    iOS operating system and in-built memory up to 16GB\n                                \n                            </p><p>\n                                \n                                    Battery providing talk-time of 8 hours and standby time of 225 hours on 3G network\n                                \n                            </p><p>\n                                \n                                    1 year manufacturer warranty for device and 6 month manufacturer warranty for in-box accessories including batteries from the date of purchase\n                                \n                            </p>'),
(52, 'Samsung+led+tv', 'Samsung 40 inches LED TV UA40EH5000R', 'http://ecx.images-amazon.com/images/I/51mgArq0RFL._AA160_.jpg', 2, '2013-02-24 16:35:38', '2013-02-24 16:35:30', '', '<p><b>Product Features</b></p><p>\n                                \n                                    .\n                                \n                            </p>'),
(53, 'Samsung+46+led+tv', 'Samsung 46 inches LED TV UA46EH5000R', 'http://ecx.images-amazon.com/images/I/4104p-2R1XL._AA160_.jpg', 3, '2013-02-24 16:38:32', '2013-02-24 16:38:29', '', '<p><b>Product Features</b></p>'),
(54, 'Netgear+N300', 'Netgear N300 Wireless Router', 'http://ecx.images-amazon.com/images/I/21Bj7lGr6NL._AA160_.jpg', 3, '2013-07-04 19:02:24', '2013-02-25 19:02:45', '', '<p><b>Product Features</b></p><p>\n                                \n                                    Multiple SSID Networks\n                                \n                            </p><p>\n                                \n                                    Parental Controls\n                                \n                            </p><p>\n                                \n                                    Double Firewall Protection\n                                \n                            </p><p>\n                                \n                                    Standards IEEE 802.11 b/g/n, 2.4 GHz\n                                \n                            </p><p>\n                                \n                                    Performance Supports Wireless Multimedia (WMM) based QoS\n                                \n                            </p>'),
(55, 'nokia+lumia+710', 'Nokia Lumia 710 | Black', 'http://ecx.images-amazon.com/images/I/41tS4oLCTQL._AA160_.jpg', 6, '2013-07-04 04:59:12', '2013-02-28 02:05:04', '', '<p><b>Product Features</b></p><p>\n                                \n                                    5 Megapixel Camera\n                                \n                            </p><p>\n                                \n                                    Bluetooth 2.1 +EDR\n                                \n                            </p><p>\n                                \n                                    Swappable Covers\n                                \n                            </p><p>\n                                \n                                    3.7 Inches Touchscreen\n                                \n                            </p>'),
(56, 'blackberry+z10', 'BlackBerry Z10 (Charcoal Black)', 'http://ecx.images-amazon.com/images/I/41FfPVvW78L._AA160_.jpg', 5, '2013-03-19 15:06:27', '2013-02-28 02:32:39', '', '<p><b>Product Features</b></p><p>\n                                \n                                    4G Network 16 GB storage Internal Storage\n                                \n                            </p><p>\n                                \n                                    4.2 inches touchscreen 8 Megapixel Camera\n                                \n                            </p><p>\n                                \n                                    BlackBerry 10 OS Intelligent calendar Super-fast browsing\n                                \n                            </p><p>\n                                \n                                    Trusted security Sharing made easy with nfc Blackberry tag with nfc technology\n                                \n                            </p><p>\n                                \n                                    Send a bbm message, schedule a meeting or update facebook using voice alone4\n                                \n                            </p>'),
(57, 'condomns', 'MY SIZE SMALL CONDOM', 'http://ecx.images-amazon.com/images/I/31CpRdb5buL._AA160_.jpg', 2, '2013-02-28 03:53:52', '2013-02-28 03:53:48', '', '<p><b>Product Features</b></p><p>\n                                \n                                    FREE SHIPPING FOR ALL ORDERS ABOVE RS 195 PER BRAND\n                                \n                            </p>'),
(58, 'condom', 'Delay condoms Judgement Combo', 'http://ecx.images-amazon.com/images/I/41MgIHpNB8L._AA160_.jpg', 4, '2013-07-04 02:28:37', '2013-02-28 03:55:14', '', '<p><b>Product Features</b></p>'),
(59, 'sandisk+16gb+pendrive', 'SanDisk Cruzer Blade 16 GB USB Flash Drive SDCZ50-016G-B35', 'http://ecx.images-amazon.com/images/I/41pS7kV8G2L._AA160_.jpg', 2, '2013-02-28 19:26:01', '2013-02-28 19:25:58', '', '<p><b>Product Features</b></p><p>\n                                \n                                    Keep your digital world in your pocket in our smallest package\n                                \n                            </p><p>\n                                \n                                    Transfer and share photos, videos, songs and other files between computers with ease\n                                \n                            </p><p>\n                                \n                                    Store more with capacities up to 16GB\n                                \n                            </p><p>\n                                \n                                    Worry not because your SanDisk Cruzer Blade USB flash drive is backed by a 2-year warranty\n                                \n                            </p>'),
(60, 'sony+8gb+pendrive', '8GB Sony USB 2.0 Pen Drive Flash Memory PenDrive', 'http://ecx.images-amazon.com/images/I/212%2B2XAF-cL._AA160_.jpg', 2, '2013-02-28 19:27:01', '2013-02-28 19:26:58', '', '<p><b>Product Features</b></p><p>\n                                \n                                    2 Year Manufacturers Warranty\n                                \n                            </p>'),
(61, 'sony+tiny+8gb+pendrive', 'Sony 8GB USB Micro Vault TINY USM8GM/W -(White)', 'http://ecx.images-amazon.com/images/I/11AwPtHAnkL._AA160_.jpg', 2, '2013-02-28 19:28:09', '2013-02-28 19:28:06', '', '<p><b>Product Features</b></p><p>\n                                \n                                    8 GB Storage Capacity\n                                \n                            </p><p>\n                                \n                                    Hi-Speed USB 2.0\n                                \n                            </p><p>\n                                \n                                    Compact size and attractive color\n                                \n                            </p>'),
(62, 'parker+beta', '', '', 1, '2013-02-28 19:29:00', '2013-02-28 19:29:00', '', ''),
(63, 'parker+beta+pen', '', '', 1, '2013-02-28 19:30:09', '2013-02-28 19:30:09', '', ''),
(64, 'Structural+dynamics+by+Mario+poaz', 'Structural Dynamics: Theory and Computation, 5e', 'http://ecx.images-amazon.com/images/I/21G0qNvnxcL._AA160_.jpg', 6, '2013-03-04 20:08:59', '2013-03-04 20:08:54', '', '<p><b>Product Features</b></p>'),
(65, 'Structural+dynamics+theory+and+practiceby+Mario+poaz', 'Structural Dynamics: Theory and Computation, 5e', 'http://ecx.images-amazon.com/images/I/21G0qNvnxcL._AA160_.jpg', 1, '2013-03-04 20:18:26', '2013-03-04 20:18:23', '', '<p><b>Product Features</b></p>'),
(66, 'Structural+dynamics+theory+and+practice+by+Mario+poaz', 'Structural Dynamics: Theory and Computation, 5e', 'http://ecx.images-amazon.com/images/I/21G0qNvnxcL._AA160_.jpg', 3, '2013-03-04 20:18:57', '2013-03-04 20:18:53', '', '<p><b>Product Features</b></p>'),
(67, 'Structural+dynamics+theory+and+computation++by+Mario+poaz', 'Structural Dynamics: Theory and Computation, 5e', 'http://ecx.images-amazon.com/images/I/21G0qNvnxcL._AA160_.jpg', 7, '2013-03-04 21:33:39', '2013-03-04 20:19:56', '', '<p><b>Product Features</b></p>'),
(68, 'Structural+dynamics+theory+and+computation', 'Structural Dynamics: Theory and Computation, 5e', 'http://ecx.images-amazon.com/images/I/21G0qNvnxcL._AA160_.jpg', 3, '2013-03-04 21:34:46', '2013-03-04 21:34:44', '', '<p><b>Product Features</b></p>'),
(69, 'Structural+dynamics+theory+and+computation+by+mario', 'Structural Dynamics: Theory and Computation, 5e', 'http://ecx.images-amazon.com/images/I/21G0qNvnxcL._AA160_.jpg', 2, '2013-03-04 21:35:58', '2013-03-04 21:35:56', '', '<p><b>Product Features</b></p>'),
(70, 'Pocket+planner', 'Project Planner Pocket 12M Accordian (Moleskine Legendary Notebooks (Calendars))', 'http://ecx.images-amazon.com/images/I/41eRk6HMA-L._AA160_.jpg', 3, '2013-03-04 23:08:53', '2013-03-04 23:08:47', '', '<p><b>Product Features</b></p>'),
(71, 'washing+machine', 'Electrolux WM ES75ETGL-CME 7.5Kg Semi Automatic Washing Machine', 'http://ecx.images-amazon.com/images/I/21xwpgMixJL._AA160_.jpg', 2, '2013-03-07 11:01:04', '2013-03-07 11:01:00', '', '<p><b>Product Features</b></p><p>\n                                \n                                    Semi-Automatic Washer Dryer with Top Loading\n                                \n                            </p><p>\n                                \n                                    Water Level Settings: 3 Levels\n                                \n                            </p><p>\n                                \n                                    7.5 kg Capacity\n                                \n                            </p><p>\n                                \n                                    Pulsator Washing\n                                \n                            </p><p>\n                                \n                                    400 W Wash Motor, 160 W Spin Motor\n                                \n                            </p>'),
(72, 'Samsung+galaxy+s4', 'Samsung Galaxy Grand Duos I9082 | White', 'http://ecx.images-amazon.com/images/I/41lqeF%2BNF3L._AA160_.jpg', 2, '2013-03-17 20:37:16', '2013-03-17 20:37:06', '', '<p><b>Product Features</b></p><p>\n                                \n                                    Dual SIM Support\n                                \n                            </p><p>\n                                \n                                    Android 4.1.2 Jelly Bean\n                                \n                            </p><p>\n                                \n                                    8MP Rear & 2MP Front Camera\n                                \n                            </p><p>\n                                \n                                    1.2GHz Dual Core Processor\n                                \n                            </p>'),
(73, 'samsung+galaxy+s+3', 'Samsung Galaxy S3/SIII Mobile | Marble White', 'http://ecx.images-amazon.com/images/I/4147WFQeHfL._AA160_.jpg', 2, '2013-03-19 14:59:52', '2013-03-19 14:59:40', '', '<p><b>Product Features</b></p><p>\n                                \n                                    Android v4.0 (Ice Cream Sandwich) OS\n                                \n                            </p><p>\n                                \n                                    8 MP Primary Camera\n                                \n                            </p><p>\n                                \n                                    4.8-inch Super AMOLED Capacitive Touchscreen\n                                \n                            </p><p>\n                                \n                                    Wi-Fi Enabled\n                                \n                            </p><p>\n                                \n                                    Expandable Storage Capacity of 64 GB\n                                \n                            </p>'),
(74, 'blackberry+z', 'BlackBerry Z10 (Charcoal Black)', 'http://ecx.images-amazon.com/images/I/41FfPVvW78L._AA160_.jpg', 1, '2013-03-19 15:05:58', '2013-03-19 15:05:53', '', '<p><b>Product Features</b></p><p>\n                                \n                                    4G Network 16 GB storage Internal Storage\n                                \n                            </p><p>\n                                \n                                    4.2 inches touchscreen 8 Megapixel Camera\n                                \n                            </p><p>\n                                \n                                    BlackBerry 10 OS Intelligent calendar Super-fast browsing\n                                \n                            </p><p>\n                                \n                                    Trusted security Sharing made easy with nfc Blackberry tag with nfc technology\n                                \n                            </p><p>\n                                \n                                    Send a bbm message, schedule a meeting or update facebook using voice alone4\n                                \n                            </p>'),
(75, 'Butterfly+Tenergy+64-FX+Rubber', 'Butterfly Tenergy Table Tennis Rubber', 'http://ecx.images-amazon.com/images/I/41KhherRn%2BL._AA160_.jpg', 2, '2013-03-19 15:09:00', '2013-03-19 15:08:55', '', '<p><b>Product Features</b></p>'),
(76, 'Butterfly+Tenergy+05', 'Lancome Ombre Absolue Radiant Smoothing Eye Shadow - B30 Madame Butterfly - 1.5g/0.05oz', 'http://ecx.images-amazon.com/images/I/21X7QJ7f0eL.jpg', 2, '2013-03-19 15:10:14', '2013-03-19 15:10:10', '', '<p><b>Product Features</b></p>'),
(77, 'nokia+n9', 'Amzer 92212 Silicone Skinelly Case - Transparent White for Nokia N9', 'http://ecx.images-amazon.com/images/I/31g2RQY2TpL._AA160_.jpg', 6, '2013-07-03 19:11:39', '2013-03-19 15:12:45', '', '<p><b>Product Features</b></p><p>\n                                \n                                    Fashionable & flexible Amzer Jelly Case for your Nokia N9 !\n                                \n                            </p><p>\n                                \n                                    The Amzer Jelly Cases are made from durable premium silicone.\n                                \n                            </p><p>\n                                \n                                    Its special anti-dust and scratch-free properties, preserves your phones shining look.\n                                \n                            </p><p>\n                                \n                                    Helps to prevent your device from sliding on soft surfaces or angle surfaces.\n                                \n                            </p><p>\n                                \n                                    Quality material used for this skin provides shield and avoid scratches.\n                                \n                            </p>'),
(78, 'samsung+galaxy+grand', 'Samsung Galaxy Grand Duos (GT-I9082 - White)', 'http://ecx.images-amazon.com/images/I/41lqeF%2BNF3L._AA160_.jpg', 2, '2013-03-19 19:06:19', '2013-03-19 19:06:10', '', '<p><b>Product Features</b></p><p>\n                                \n                                    Dual SIM Support\n                                \n                            </p><p>\n                                \n                                    Android 4.1.2 Jelly Bean\n                                \n                            </p><p>\n                                \n                                    8MP Rear & 2MP Front Camera\n                                \n                            </p><p>\n                                \n                                    1.2GHz Dual Core Processor\n                                \n                            </p>'),
(79, 'Transcend+Memory+Card+MicroSD+16GB+Class+4', 'Transcend 32 GB Class 4 microSDHC Flash Memory Card TS32GUSDHC4', 'http://ecx.images-amazon.com/images/I/41cXgijGeCL._AA160_.jpg', 2, '2013-03-19 19:15:23', '2013-03-19 19:15:18', '', '<p><b>Product Features</b></p><p>\n                                \n                                    SDHC Class 4 and SD 2.0 compliant, a speed of 4MB/s is guaranteed\n                                \n                            </p><p>\n                                \n                                    Compatible with todays most popular cell phones and portable devices\n                                \n                            </p><p>\n                                \n                                    Includes a full size SD adapter for multi-use or data transfer\n                                \n                            </p><p>\n                                \n                                    Exceptional durability of 10,000 insertion and long-life data retention\n                                \n                            </p><p>\n                                \n                                    Limited lifetime Warranty, the data host you can trust\n                                \n                            </p><p>\n                                \n                                    Built-in Error Correcting Code (ECC) to detect and correct transfer errors\n                                \n                            </p><p>\n                                \n                                    Complies with Secure Digital Music Initiative (SDMI) portable device requirements\n                                \n                            </p><p>\n                                \n                                    Supports Content Protection for Recordable Media (CPRM)\n                                \n                            </p>'),
(80, 'sony+xperia+z', 'Sony Xperia Z | Black', 'http://ecx.images-amazon.com/images/I/4133rndFFsL._AA160_.jpg', 2, '2013-03-21 16:44:53', '2013-03-21 16:44:41', '', '<p><b>Product Features</b></p><p>\n                                \n                                    Android v4.1 (Jelly Bean) OS\n                                \n                            </p><p>\n                                \n                                    1.5 GHz Qualcomm Snapdragon S4 Quad Core Processor\n                                \n                            </p><p>\n                                \n                                    5-inch TFT Capacitive Touchscreen\n                                \n                            </p><p>\n                                \n                                    13 MP Primary Camera\n                                \n                            </p><p>\n                                \n                                    Water and Dust Resistant\n                                \n                            </p>'),
(81, 'sony', 'Sony Ericsson Xperia Tipo Dual | Serene Black', 'http://ecx.images-amazon.com/images/I/314dV7PD7%2BL._AA160_.jpg', 2, '2013-03-21 16:51:01', '2013-03-21 16:50:53', '', '<p><b>Product Features</b></p><p>\n                                \n                                    2G/3G-enabled smartphone with Android v4.0 ICS OS and easy access to email & social networks\n                                \n                            </p><p>\n                                \n                                    3.2 MP camera; 3.2-inch TFT capacitive touchscreen with 480 x 320 pixel resolution\n                                \n                            </p><p>\n                                \n                                    Up to 5 hrs of talk-time; up to 350 hrs of stand-by time; Bluetooth; Wi-Fi; AGPS support\n                                \n                            </p><p>\n                                \n                                    Memory capacity - 2.9 GB; available user memory - 2.2 GB, 512 MB RAM, microSD - up to 32 GB\n                                \n                            </p><p>\n                                \n                                    Sony Xperia Tipo Dual SIM handset, battery, charger, headset, data cable, screen protector\n                                \n                            </p>'),
(82, 'united+colors+of+bennoton', 'United Colors of Benetton Denim', 'http://ecx.images-amazon.com/images/I/41ukTRgy2EL._AA160_.jpg', 2, '2013-03-21 17:00:43', '2013-03-21 17:00:38', '', '<p><b>Product Features</b></p>'),
(83, 'levis+boots', '', '', 2, '2013-03-21 17:03:32', '2013-03-21 17:03:32', '', ''),
(84, 'Puma+Unlimited+Hi+Evo+Lux+Sneakers', 'Unlimited Hi Evo Shoe-Black-7', 'http://ecx.images-amazon.com/images/I/41sWDtIVkAL._AA160_.jpg', 2, '2013-03-21 17:06:35', '2013-03-21 17:06:33', '', '<p><b>Product Features</b></p>'),
(85, 'samsung+rex', 'Samsung Rex 80 S5222R Dual SIM | White', 'http://ecx.images-amazon.com/images/I/411cXFyAfLL._AA160_.jpg', 2, '2013-03-21 17:12:02', '2013-03-21 17:11:57', '', '<p><b>Product Features</b></p><p>\n                                \n                                    Android 4.0 Ice Cream\n                                \n                            </p><p>\n                                \n                                    Dual SIM (GSM + GSM)\n                                \n                            </p><p>\n                                \n                                    Expandable Memory: 16 GB\n                                \n                            </p><p>\n                                \n                                    FM Radio with Recording\n                                \n                            </p><p>\n                                \n                                    3.2 MP Primary Camera\n                                \n                            </p>'),
(86, 'micromax+a116', 'Micromax Canvas HD A116 (White)', 'http://ecx.images-amazon.com/images/I/41BZX-OXXpL._AA160_.jpg', 3, '2013-07-04 19:13:11', '2013-03-28 22:46:39', '', '<p><b>Product Features</b></p><p>\n                                \n                                    8MP primary camera with LED flash, auto focus, night mode, creative and shoot stop-motion, burst mode, white balance, color effect, scene mode and 2MP front facing camera\n                                \n                            </p><p>\n                                \n                                    5-inch LCD IPS touchscreen with 1280 x 720 pixels resolution\n                                \n                            </p><p>\n                                \n                                    Android Jelly Bean 4.1 operating system with 1.2GHz Quad core processor, memory expandable up to 32GB and dual SIM\n                                \n                            </p><p>\n                                \n                                    2000mAH battery providing talk-time of 5 hours and standby time of 174 hours\n                                \n                            </p><p>\n                                \n                                    1 year manufacturer warranty for device and 6 months manufacturer warranty for in-box accessories including batteries from the date of purchase\n                                \n                            </p>'),
(87, 'Samsung+led+tv+UA32ES6200R', 'Samsung UA40ES6800 40" 3D LED TV', 'http://ecx.images-amazon.com/images/I/31VW5GrBGCL._AA160_.jpg', 3, '2013-03-29 10:21:51', '2013-03-29 10:21:43', '', '<p><b>Product Features</b></p><p>\n                                \n                                    3D and Full HD Support\n                                \n                            </p><p>\n                                \n                                    40 Inch LED Display\n                                \n                            </p><p>\n                                \n                                    3 HDMI Ports\n                                \n                            </p><p>\n                                \n                                    WiFi Built In, Micro Dimming, Dual Core\n                                \n                            </p>'),
(88, 'Samsung+UA32ES6200R+led', 'Samsung 32EH5000 32-inch 1080p Full HD Television', 'http://ecx.images-amazon.com/images/I/413wqpi9lBL._AA160_.jpg', 3, '2013-03-29 10:22:56', '2013-03-29 10:22:51', '', '<p><b>Product Features</b></p><p>\n                                \n                                    Full HD\n                                \n                            </p><p>\n                                \n                                    Connect share movie\n                                \n                            </p><p>\n                                \n                                    Wide colour enhancer plus\n                                \n                            </p><p>\n                                \n                                    CMR-100Hz\n                                \n                            </p>'),
(89, 'UA32ES6200R+Samsung+led+tv', 'Samsung UA40ES6800 40" 3D LED TV', 'http://ecx.images-amazon.com/images/I/31VW5GrBGCL._AA160_.jpg', 2, '2013-03-29 10:24:00', '2013-03-29 10:23:55', '', '<p><b>Product Features</b></p><p>\n                                \n                                    3D and Full HD Support\n                                \n                            </p><p>\n                                \n                                    40 Inch LED Display\n                                \n                            </p><p>\n                                \n                                    3 HDMI Ports\n                                \n                            </p><p>\n                                \n                                    WiFi Built In, Micro Dimming, Dual Core\n                                \n                            </p>'),
(90, 'projector', 'Polaris Pro Mount', 'http://ecx.images-amazon.com/images/I/4162etSOt1L._AA160_.jpg', 2, '2013-04-05 19:26:06', '2013-04-05 19:26:01', '', '<p><b>Product Features</b></p>'),
(91, 'nokia+lumia+510', 'Nokia Lumia 510 (Black)', 'http://ecx.images-amazon.com/images/I/41uTMiv081L._AA160_.jpg', 7, '2013-07-04 19:00:12', '2013-07-03 15:54:10', '', '<p><b>Product Features</b></p><p>\n                                \n                                    5MP primary camera with 4x digital zoom, auto focus with two-stage capture key, touch focus, landscape orientation, auto and manual exposure, geo-tagging, auto and manual white balance, face recognition, full screen viewfinder and center weighted auto exposure\n                                \n                            </p><p>\n                                \n                                    4-inch capacitive multipoint-touch portrait LCD display touchscreen with 800 x 480 pixels resolution\n                                \n                            </p><p>\n                                \n                                    Windows Phone 7.8 operating system\n                                \n                            </p><p>\n                                \n                                    1300mAH battery providing talktime of 6.2 hours on 2G and 8.4 hours on 3G networks and standby time of 738.6 hours on 2G and 653.2 hours on 3G networks\n                                \n                            </p><p>\n                                \n                                    1 year manufacturer warranty for device and 6 month manufacturer warranty for in-box accessories including batteries from the date of purchase\n                                \n                            </p>'),
(92, 'mobiles', '3M Mobile Privacy Filter for Blackberry Curve 8520/8530', 'http://ecx.images-amazon.com/images/I/41NGqCWw32L._AA160_.jpg', 2, '2013-07-04 02:48:38', '2013-07-04 02:48:33', '', '<p><b>Product Features</b></p><p>\n                                \n                                    Brand new product\n                                \n                            </p><p>\n                                \n                                    Sealed package\n                                \n                            </p><p>\n                                \n                                    100% satisfaction guarantee\n                                \n                            </p><p>\n                                \n                                    Manufacturer Warranty applies\n                                \n                            </p>'),
(93, 'nokia+109', 'Nokia C2-01 (Black)', 'http://ecx.images-amazon.com/images/I/41ppwJOYdmL._AA160_.jpg', 2, '2013-07-04 05:25:19', '2013-07-04 05:25:14', '', '<p><b>Product Features</b></p><p>\n                                \n                                    3.2MP primary camera with full focus, full screen viewfinder and self timer\n                                \n                            </p><p>\n                                \n                                    2-inch with LCD transflective display technology with 320x240 pixels resolution\n                                \n                            </p><p>\n                                \n                                    Nokia Series 40 operating system and memory expandable up to 16GB\n                                \n                            </p><p>\n                                \n                                    1020mAH battery providing talktime of 8.8 hours on 2G and 4.5 hours on 3G networks and standby time of 430 hours on 2G and 450 hours on 3G networks\n                                \n                            </p><p>\n                                \n                                    1 year manufacturer warranty for device and 6 month manufacturer warranty for in-box accessories including batteries  from the date of purchase\n                                \n                            </p>'),
(94, 'nokia+114', 'Nokia 114 (Black)', 'http://ecx.images-amazon.com/images/I/41QXO3iSN3L._AA160_.jpg', 2, '2013-07-04 05:27:59', '2013-07-04 05:27:55', '', '<p><b>Product Features</b></p><p>\n                                \n                                    0.3MP primary camera with 4x digital zoom, landscape orientation, exposure compensation, auto and manual white balance, active toolbar, still image editor, full screen viewfinder and self timer\n                                \n                            </p><p>\n                                \n                                    1.8-inch portrait QVGA LCD transmissive display with 128 x 160 pixels resolution\n                                \n                            </p><p>\n                                \n                                    Nokia Series 40 Asha operating system and memory expandable up to 32GB\n                                \n                            </p><p>\n                                \n                                    1020mAH battery providing talk-time of 10.5 hours on 2G networks and standby time of 637 hours on 2G networks\n                                \n                            </p><p>\n                                \n                                    1 year manufacturer warranty for device and 6 month manufacturer warranty for in-box accessories including batteries from the date of purchase\n                                \n                            </p>'),
(95, 'Micromax+X327+(Grey)', 'Micromax X327 Dual SIM | Grey', 'http://ecx.images-amazon.com/images/I/31cUCuKIlnL._AA160_.jpg', 2, '2013-07-04 05:32:28', '2013-07-04 05:32:25', '', '<p><b>Product Features</b></p><p>\n                                \n                                    Dual SIM (GSM + GSM)\n                                \n                            </p><p>\n                                \n                                    2.79" (7.11 cm) TFT Display Screen\n                                \n                            </p><p>\n                                \n                                    0.3MP Camera with Video Recording\n                                \n                            </p><p>\n                                \n                                    GPRS & Bluetooth Connectivity\n                                \n                            </p><p>\n                                \n                                    Expandable Memory Upto 4GB\n                                \n                            </p>'),
(96, 'apple+tablet', 'Apple iPad with Retina Display (Black, 16GB, 4G, WiFi + Cellular)', 'http://ecx.images-amazon.com/images/I/41Pp7cVrbAL._AA160_.jpg', 1, '2013-07-04 16:06:12', '2013-07-04 16:06:05', '', '<p><b>Product Features</b></p><p>\n                                \n                                    5MP primary camera with autofocus, face detection, backside illumination, five-element lens, hybrid IR filter, tap to focus video or still images, tap to control exposure for video or still images, photo and video geotagging, HD video recording and 1.2MP front facing camera\n                                \n                            </p><p>\n                                \n                                    9.7-inch diagonal LED-backlit multi-touch IPS screen with 2048 x 1536 pixels resolution\n                                \n                            </p><p>\n                                \n                                    iOS operating system with dual core A6X processor and 16GB in-built memory\n                                \n                            </p><p>\n                                \n                                    Battery providing 10 hours of surfing the web on Wi-Fi, watching video or listening to music and 9 hours of surfing the web using mobile data network\n                                \n                            </p><p>\n                                \n                                    1 year manufacturer warranty for device and 6 month manufacturer warranty for in-box accessories including batteries from the date of purchase\n                                \n                            </p>'),
(97, 'micromax+A7+Bolt', 'Micromax Bolt A27', 'http://ecx.images-amazon.com/images/I/41OI6EfUY2L._AA160_.jpg', 2, '2013-07-04 18:20:55', '2013-07-04 18:20:48', '', '<p><b>Product Features</b></p><p>\n                                \n                                    Dual SIM (GSM + GSM), Android v2.3.5 OS, 3.5-inch Touchscreen, 0.3 MP Primary Camera\n                                \n                            </p>'),
(98, 'laser+printer\\\\', '', '', 1, '2013-07-07 09:44:48', '2013-07-07 09:44:48', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `producttrends`
--

CREATE TABLE IF NOT EXISTS `producttrends` (
  `Trend` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Votes` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `producttrends`
--

INSERT INTO `producttrends` (`Trend`, `Votes`) VALUES
('\n4,6', 1),
('\n2,1', 1),
('1,10', 1),
('\n11,12', 1),
('\n13,14', 1),
('14,6', 1),
('6,15', 1),
('\n15,16', 1),
('16,17', 1),
('17,18', 1),
('\n18,19', 1),
('19,20', 1),
('\n21,22', 1),
('22,23', 1),
('23,24', 1),
('\n27,28', 1),
('\n29,30', 1),
('\n30,31', 1),
('\n37,3', 1),
('\n40,41', 1),
('41,42', 1),
('42,15', 1),
('15,34', 1),
('\n2,34', 1),
('\n34,44', 1),
('\n34,45', 1),
('\n45,48', 1),
('48,13', 1),
('13,49', 1),
('\n49,50', 1),
('\n50,51', 1),
('\n31,52', 1),
('\n47,46', 1),
('\n56,47', 1),
('\n57,58', 1),
('58,29', 1),
('\n15,35', 1),
('\n10,36', 1),
('\n36,47', 1),
('47,24', 1),
('\n24,55', 1),
('55,13', 1),
('13,56', 1),
('\n47,34', 2),
('34,55', 1),
('\n12,26', 1),
('26,59', 1),
('\n64,65', 1),
('65,66', 1),
('\n66,67', 1),
('\n71,39', 1),
('\n72,1', 1),
('\n82,83', 1),
('\n2,47', 1),
('47,77', 1),
('\n25,92', 1),
('92,34', 1),
('34,46', 1),
('\n46,24', 1),
('24,51', 1),
('\n51,4', 1),
('4,50', 1),
('\n35,47', 1),
('34,39', 1),
('\n15,24', 1),
('\n34,36', 1),
('\n46,2', 1),
('\n2,45', 1),
('\n91,93', 1),
('93,94', 1);

-- --------------------------------------------------------

--
-- Table structure for table `rediff`
--

CREATE TABLE IF NOT EXISTS `rediff` (
  `WebsiteID` int(10) NOT NULL,
  `ProductId` int(10) NOT NULL,
  `Price` int(10) NOT NULL,
  `Link` text NOT NULL,
  `DeliveryTime` text NOT NULL,
  `Title` text NOT NULL,
  `Time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `saholic`
--

CREATE TABLE IF NOT EXISTS `saholic` (
  `WebsiteID` int(10) NOT NULL,
  `ProductId` int(10) NOT NULL,
  `Price` int(10) NOT NULL,
  `Link` text NOT NULL,
  `DeliveryTime` text NOT NULL,
  `EMI` int(1) NOT NULL DEFAULT '0',
  `Title` text NOT NULL,
  `Time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `saholic`
--

INSERT INTO `saholic` (`WebsiteID`, `ProductId`, `Price`, `Link`, `DeliveryTime`, `EMI`, `Title`, `Time`) VALUES
(21, 1, 5590, 'http://www.saholic.com/mobile-phones/samsung-primo-duos-w279-1004879', 'Delivery in 4 Business days.', 0, '\n        Samsung Primo Duos W279\n      ', '2013-01-18 16:54:02'),
(21, 3, 7290, 'http://www.saholic.com/mobile-phones/samsung-galaxy-y-duos-s6102-1002575', 'Delivery in 4 Business days.', 0, '\n        Samsung Galaxy Y Duos S6102\n      ', '2013-01-18 17:36:03'),
(21, 8, 599, 'http://www.saholic.com/mobile-accessories/molife-mobile-back-cover-m-mlp9154bk-1005287', 'Delivery in 4 Business days.', 0, '\n        Molife Mobile Back Cover M-MLP9154BK\n      ', '2013-01-18 20:48:53'),
(21, 9, 850, 'http://www.saholic.com/mobile-accessories/capdase-smart-pocket-sleeve-case-slih4-s42g-1003710', 'Delivery in 4 Business days.', 0, '\n        Capdase Smart Pocket Sleeve Case SLIH4-S42G\n      ', '2013-01-18 21:16:07'),
(21, 10, 4049, 'http://www.saholic.com/mobile-phones/nokia-asha-305-1004509', 'Delivery in 4 Business days.', 0, '\n        Nokia Asha 305\n      ', '2013-01-19 01:05:44'),
(21, 12, 34900, 'http://www.saholic.com/mobile-phones/samsung-galaxy-note-ii-n7100-16gb-1004707', 'Delivery in 4 Business days.', 0, '\n        Samsung Galaxy Note II N7100 16GB\n      ', '2013-01-19 15:34:13'),
(21, 13, 28900, 'http://www.saholic.com/mobile-phones/samsung-galaxy-s-iii-i9300-16gb-1004197', 'Delivery in 4 Business days.', 0, '\n        Samsung Galaxy S III I9300 16GB\n      ', '2013-01-23 19:22:51'),
(21, 14, 45500, 'http://www.saholic.com/mobile-phones/apple-iphone-5-16gb-1004871', 'Delivery in 4 Business days.', 0, '\n        Apple iPhone 5 16GB\n      ', '2013-01-23 19:24:46'),
(21, 15, 12689, 'http://www.saholic.com/mobile-phones/nokia-lumia-710-1002256', 'Delivery in 4 Business days.', 0, '\n        Nokia Lumia 710\n      ', '2013-01-23 19:27:42'),
(21, 16, 473, 'http://www.saholic.com/mobile-accessories/philips-headphone-shs390-98-1000450', 'Delivery in 4 Business days.', 0, '\n        Philips Headphone SHS390/98\n      ', '2013-01-23 19:30:02'),
(21, 19, 19295, 'http://www.saholic.com/tablets/samsung-galaxy-tab-2-7.0-p3100-(16gb)-1004208', 'Delivery in 4 Business days.', 0, '\n        Samsung Galaxy Tab 2 7.0 P3100 (16GB)\n      ', '2013-01-23 19:36:39'),
(21, 20, 15299, 'http://www.saholic.com/mobile-phones/sony-xperia-j-st26i-1005156', 'Delivery in 4 Business days.', 0, '\n        Sony Xperia J ST26i\n      ', '2013-01-23 19:38:04'),
(21, 25, 4799, 'http://www.saholic.com/mobile-phones/micromax-ninja-3.5-a57-1004809', 'Delivery in 4 Business days.', 0, '\n        Micromax Ninja 3.5 A57\n      ', '2013-01-23 20:12:01'),
(21, 26, 632, 'http://www.saholic.com/mobile-accessories/sandisk-cruzer-blade-cz-50-16gb-1003163', 'Delivery in 4 Business days.', 0, '\n        SanDisk Cruzer Blade CZ-50 16GB\n      ', '2013-01-23 21:46:01'),
(21, 31, 78287, 'http://www.saholic.com/laptops/apple-macbook-pro-md101hn-a-1005651', 'Delivery in 4 Business days.', 0, '\n        Apple MacBook Pro MD101HN/A\n      ', '2013-01-23 22:36:38'),
(21, 32, 276, 'http://www.saholic.com/mobile-accessories/moserbaer-racer-2gb-1003130', 'Delivery in 4 Business days.', 0, '\n        Moserbaer Racer 2GB\n      ', '2013-01-28 19:32:49'),
(21, 34, 12689, 'http://www.saholic.com/mobile-phones/nokia-lumia-710-1002256', 'Delivery in 4 Business days.', 0, '\n        Nokia Lumia 710\n      ', '2013-01-30 13:49:36'),
(21, 35, 5999, 'http://www.saholic.com/mobile-phones/nokia-asha-302-1003887', 'Delivery in 4 Business days.', 0, '\n        Nokia Asha 302\n      ', '2013-01-30 13:52:01'),
(21, 36, 3799, 'http://www.saholic.com/mobile-phones/nokia-asha-202-1004049', 'Delivery in 4 Business days.', 0, '\n        Nokia Asha 202\n      ', '2013-01-30 13:53:04'),
(21, 37, 5499, 'http://www.saholic.com/cameras/canon-powershot-a810-with-freebies-worth-rs-11500-1005330', 'Delivery in 4 Business days.', 0, '\n        Canon PowerShot A810 with Freebies worth Rs 11500\n      ', '2013-02-10 23:58:13'),
(21, 38, 28899, 'http://www.saholic.com/mobile-phones/blackberry-bold-9900-1001719', 'Delivery in 4 Business days.', 0, '\n        BlackBerry Bold 9900\n      ', '2013-02-12 22:56:12'),
(21, 39, 28899, 'http://www.saholic.com/mobile-phones/blackberry-bold-9900-1001719', 'Delivery in 4 Business days.', 0, '\n        BlackBerry Bold 9900\n      ', '2013-02-12 22:56:50'),
(21, 40, 1349, 'http://www.saholic.com/mobile-phones/samsung-guru-fm-e1220-1002561', 'Delivery in 4 Business days.', 0, '\n        Samsung Guru FM E1220\n      ', '2013-02-19 17:34:06'),
(21, 41, 323, 'http://www.saholic.com/mobile-accessories/screenlife-m-sl-nke71-1001948', 'Delivery in 4 Business days.', 0, '\n        Screenlife  M-SL-NKE71\n      ', '2013-02-19 17:34:48'),
(21, 42, 323, 'http://www.saholic.com/mobile-accessories/screenlife-m-sl-nke71-1001948', 'Delivery in 4 Business days.', 0, '\n        Screenlife  M-SL-NKE71\n      ', '2013-02-19 17:35:17'),
(21, 43, 3579, 'http://www.saholic.com/mobile-phones/samsung-champ-megacam-c3303i-1001227', 'Delivery in 4 Business days.', 0, '\n        Samsung Champ Megacam C3303i\n      ', '2013-02-21 16:35:09'),
(21, 46, 11999, 'http://www.saholic.com/mobile-phones/nokia-lumia-610-1003429', 'Delivery in 4 Business days.', 0, '\n        Nokia Lumia 610\n      ', '2013-02-22 16:36:43'),
(21, 47, 35999, 'http://www.saholic.com/mobile-phones/nokia-lumia-920-1004940', 'Delivery in 4 Business days.', 0, '\n        Nokia Lumia 920\n      ', '2013-02-22 16:43:42'),
(21, 48, 30840, 'http://www.saholic.com/tablets/samsung-galaxy-tab-p7300-1002267', 'Delivery in 4 Business days.', 0, '\n        Samsung Galaxy Tab P7300\n      ', '2013-02-24 10:53:16'),
(21, 49, 30500, 'http://www.saholic.com/tablets/apple-ipad-3rd-gen-wi-fi-16gb-1003928', 'Delivery in 4 Business days.', 0, '\n        Apple iPad 3rd Gen Wi-Fi 16GB\n      ', '2013-02-24 10:57:19'),
(21, 50, 38500, 'http://www.saholic.com/mobile-phones/apple-iphone-4s-16-gb-1002269', 'Delivery in 4 Business days.', 0, '\n        Apple iPhone 4S 16 GB\n      ', '2013-02-24 10:58:25'),
(21, 51, 38500, 'http://www.saholic.com/mobile-phones/apple-iphone-4s-16-gb-1002269', 'Delivery in 4 Business days.', 0, '\n        Apple iPhone 4S 16 GB\n      ', '2013-02-24 13:13:23'),
(21, 52, 30840, 'http://www.saholic.com/tablets/samsung-galaxy-tab-p7300-1002267', 'Delivery in 4 Business days.', 0, '\n        Samsung Galaxy Tab P7300\n      ', '2013-02-24 16:35:45'),
(21, 55, 12689, 'http://www.saholic.com/mobile-phones/nokia-lumia-710-1002256', 'Delivery in 4 Business days.', 0, '\n        Nokia Lumia 710\n      ', '2013-02-28 02:05:15'),
(21, 56, 43490, 'http://www.saholic.com/mobile-phones/blackberry-z10-1005822', 'Delivery in 4 Business days.', 0, '\n        BlackBerry  Z10\n      ', '2013-02-28 02:32:48'),
(21, 59, 713, 'http://www.saholic.com/mobile-accessories/sandisk-cruzer-fit-33-fit-cz-33-16gb-1003147', 'Delivery in 4 Business days.', 0, '\n        SanDisk Cruzer Fit-33 FIT CZ-33 16GB\n      ', '2013-02-28 19:26:07'),
(21, 60, 499, 'http://www.saholic.com/mobile-accessories/sony-micro-vault-classic-8gb-usm8gn-1003207', 'Delivery in 4 Business days.', 0, '\n        Sony Micro Vault Classic 8GB USM8GN\n      ', '2013-02-28 19:27:05'),
(21, 61, 449, 'http://www.saholic.com/mobile-accessories/sony-micro-vault-tiny-8gb-usm8gm-1005596', 'Delivery in 4 Business days.', 0, '\n        Sony Micro Vault TINY 8GB USM8GM\n      ', '2013-02-28 19:28:16');

-- --------------------------------------------------------

--
-- Table structure for table `sangeethamobiles`
--

CREATE TABLE IF NOT EXISTS `sangeethamobiles` (
  `WebsiteID` int(10) NOT NULL,
  `ProductId` int(10) NOT NULL,
  `Price` int(10) NOT NULL,
  `Link` text NOT NULL,
  `DeliveryTime` text NOT NULL,
  `EMI` int(1) NOT NULL DEFAULT '0',
  `Title` text NOT NULL,
  `Time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sangeethamobiles`
--

INSERT INTO `sangeethamobiles` (`WebsiteID`, `ProductId`, `Price`, `Link`, `DeliveryTime`, `EMI`, `Title`, `Time`) VALUES
(7, 1, 11990, 'http://www.sangeethamobiles.com/Products/Sangeetha-Mobiles-Mobile-Phones-Smart-Phones/Samsung/Samsung-Galaxy-S-Duos-S7562/pid-540439.aspx', 'Delivered in 6 days.', 0, 'Samsung Galaxy S Duos S7562', '2013-01-18 16:53:56'),
(7, 2, 21500, 'http://www.sangeethamobiles.com/Products/Sangeetha-Mobiles-Mobile-Phones-Smart-Phones/Samsung/Samsung-Galaxy-Grand-I9082-(metallic-blue)/pid-541250.aspx', 'Delivered in 6 days.', 0, 'Samsung Galaxy Grand I9082 (metallic blue)', '2013-01-18 17:35:02'),
(7, 3, 9900, 'http://www.sangeethamobiles.com/Products/Sangeetha-Mobiles-Mobile-Phones-Smart-Phones/Samsung/Samsung-Galaxy-Ace-S5830-Smartphone/pid-537584.aspx', 'Delivered in 6 days.', 0, 'Samsung Galaxy Ace S5830 Smartphone', '2013-01-18 17:36:00'),
(7, 4, 34125, 'http://www.sangeethamobiles.com/Products/Sangeetha-Mobiles-Mobile-Phones-Smart-Phones/Htc/X515-M-EVO-3D(Shooter)-Smartphone/pid-503814.aspx', 'Delivered in 6 days.', 0, 'X515 M EVO 3D(Shooter) Smartphone', '2013-01-18 20:24:35'),
(7, 8, 9230, 'http://www.sangeethamobiles.com/Products/Sangeetha-Mobiles-Mobile-Phones-Smart-Phones/Samsung/Samsung-Galaxy-Ace-S5830-Smartphone/pid-537584.aspx', 'Delivered in 6 days.', 0, 'Samsung Galaxy Ace S5830 Smartphone', '2013-01-18 20:48:49'),
(7, 10, 4134, 'http://www.sangeethamobiles.com/Products/Sangeetha-Mobiles-Mobile-Phones-Smart-Phones/Nokia/Nokia-Asha-305/pid-540206.aspx', 'Delivered in 6 days.', 0, 'Nokia Asha 305', '2013-01-19 01:05:41'),
(7, 12, 36645, 'http://www.sangeethamobiles.com/Products/Sangeetha-Mobiles-Mobile-Phones-Smart-Phones/Samsung/Samsung-Galaxy-Note-II-N7100/pid-540185.aspx', 'Delivered in 6 days.', 0, 'Samsung Galaxy Note II N7100', '2013-01-19 15:34:09'),
(7, 13, 31900, 'http://www.sangeethamobiles.com/Products/Sangeetha-Mobiles-Mobile-Phones-Smart-Phones/Samsung/Samsung-Galaxy-S3-with-16GB/pid-530739.aspx', 'Delivered in 6 days.', 0, 'Samsung Galaxy S3 with 16GB', '2013-01-23 19:22:45'),
(7, 14, 59500, 'http://www.sangeethamobiles.com/Products/Sangeetha-Mobiles-Mobile-Phones-Smart-Phones/Apple/Apple-iPhone-5---64-GB--(Black)/pid-540350.aspx', 'Delivered in 6 days.', 0, 'Apple iPhone 5 - 64 GB  (Black)', '2013-01-23 19:24:44'),
(7, 15, 12999, 'http://www.sangeethamobiles.com/Products/Sangeetha-Mobiles-Mobile-Phones-Smart-Phones/Nokia/Nokia-Lumia-710-Smartphone/pid-508626.aspx', 'Delivered in 6 days.', 0, 'Nokia Lumia 710 Smartphone', '2013-01-23 19:27:41'),
(7, 19, 19300, 'http://www.sangeethamobiles.com/Products/Sangeetha-Mobiles-Mobile-Phones-Tablet-PCs/Samsung/Samsung-Galaxy-Tab-P3100/pid-530710.aspx', 'Delivered in 6 days.', 0, 'Samsung Galaxy Tab P3100', '2013-01-23 19:36:36'),
(7, 20, 37990, 'http://www.sangeethamobiles.com/Products/Sangeetha-Mobiles-Mobile-Phones-Smart-Phones/Sony-Ericsson/Sony-xperia-Z/pid-546098.aspx', 'Delivered in 6 days.', 0, 'Sony xperia Z', '2013-01-23 19:38:01'),
(7, 25, 4999, 'http://www.sangeethamobiles.com/Products/Sangeetha-Mobiles-Mobile-Phones-Smart-Phones/Micromax/MICROMAX-A-57/pid-538612.aspx', 'Delivered in 6 days.', 0, 'MICROMAX A-57', '2013-01-23 20:11:59'),
(7, 34, 9899, 'http://www.sangeethamobiles.com/Products/Sangeetha-Mobiles-Mobile-Phones-Smart-Phones/Nokia/Nokia-Lumia-520/pid-546196.aspx', 'Delivered in 6 days.', 0, 'Nokia Lumia 520', '2013-01-30 13:49:29'),
(7, 35, 6285, 'http://www.sangeethamobiles.com/Products/Sangeetha-Mobiles-Mobile-Phones-Smart-Phones/Nokia/Nokia-Asha-302-Smartphone/pid-535931.aspx', 'Delivered in 6 days.', 0, 'Nokia Asha 302 Smartphone', '2013-01-30 13:51:57'),
(7, 38, 25692, 'http://www.sangeethamobiles.com/Products/Sangeetha-Mobiles-Mobile-Phones-Smart-Phones/Blackberry/Blackberry-Bold-B9790-Smartphone/pid-526049.aspx', 'Delivered in 6 days.', 0, 'Blackberry Bold B9790 Smartphone', '2013-02-12 22:56:05'),
(7, 39, 25692, 'http://www.sangeethamobiles.com/Products/Sangeetha-Mobiles-Mobile-Phones-Smart-Phones/Blackberry/Blackberry-Bold-B9790-Smartphone/pid-526049.aspx', 'Delivered in 6 days.', 0, 'Blackberry Bold B9790 Smartphone', '2013-02-12 22:56:49'),
(7, 40, 4999, 'http://www.sangeethamobiles.com/Products/Sangeetha-Mobiles-Mobile-Phones-Smart-Phones/NA/CELKON-A-95/pid-538615.aspx', 'Delivered in 6 days.', 0, 'CELKON A-95', '2013-02-19 17:34:01'),
(7, 41, 36500, 'http://www.sangeethamobiles.com/Products/Sangeetha-Mobiles-Mobile-Phones-Smart-Phones/Nokia/Nokia-Lumia-920/pid-541050.aspx', 'Delivered in 6 days.', 0, 'Nokia Lumia 920', '2013-02-19 17:34:41'),
(7, 42, 36500, 'http://www.sangeethamobiles.com/Products/Sangeetha-Mobiles-Mobile-Phones-Smart-Phones/Nokia/Nokia-Lumia-920/pid-541050.aspx', 'Delivered in 6 days.', 0, 'Nokia Lumia 920', '2013-02-19 17:35:16'),
(7, 43, 6290, 'http://www.sangeethamobiles.com/Products/Sangeetha-Mobiles-Mobile-Phones-Smart-Phones/Samsung/Samsung-S5360-Galaxy-Y/pid-541042.aspx', 'Delivered in 6 days.', 0, 'Samsung S5360-Galaxy-Y', '2013-02-21 16:35:04'),
(7, 46, 12380, 'http://www.sangeethamobiles.com/Products/Sangeetha-Mobiles-Mobile-Phones-Smart-Phones/Nokia/Nokia-Lumia-610-Smartphone/pid-535816.aspx', 'Delivered in 6 days.', 0, 'Nokia Lumia 610 Smartphone', '2013-02-22 16:36:39'),
(7, 47, 31999, 'http://www.sangeethamobiles.com/Products/Sangeetha-Mobiles-Mobile-Phones-Smart-Phones/Nokia/Nokia-Lumia-920/pid-541050.aspx', 'Delivered in 6 days.', 0, 'Nokia Lumia 920', '2013-02-22 16:43:39'),
(7, 48, 6290, 'http://www.sangeethamobiles.com/Products/Sangeetha-Mobiles-Mobile-Phones-Smart-Phones/Samsung/Samsung-S5360-Galaxy-Y/pid-541042.aspx', 'Delivered in 6 days.', 0, 'Samsung S5360-Galaxy-Y', '2013-02-24 10:53:15'),
(7, 49, 51900, 'http://www.sangeethamobiles.com/Products/Sangeetha-Mobiles-Mobile-Phones-Tablet-PCs/Apple/iPad-with-Retina-display-with-Wi-Fi--Cellular-64GB/pid-528614.aspx', 'Delivered in 6 days.', 0, 'iPad with Retina display with Wi-Fi + Cellular 64GB', '2013-02-24 10:57:16'),
(7, 50, 21900, 'http://www.sangeethamobiles.com/Products/Sangeetha-Mobiles-Mobile-Phones-Tablet-PCs/Apple/iPad-mini-with-Wifi---16-GB/pid-540661.aspx', 'Delivered in 6 days.', 0, 'iPad mini with Wifi - 16 GB', '2013-02-24 10:58:22'),
(7, 51, 59500, 'http://www.sangeethamobiles.com/Products/Sangeetha-Mobiles-Mobile-Phones-Latest-Mobiles/Apple/Apple-iPhone-5---64-GB--(Black)/pid-540350.aspx', 'Delivered in 6 days.', 0, 'Apple iPhone 5 - 64 GB  (Black)', '2013-02-24 13:13:22'),
(7, 52, 37900, 'http://www.sangeethamobiles.com/Products/Sangeetha-Mobiles-Mobile-Phones-Smart-Phones/Samsung/Samsung-I9300-32GB-Galaxy-S-II/pid-541044.aspx', 'Delivered in 6 days.', 0, 'Samsung I9300-32GB Galaxy S II', '2013-02-24 16:35:40'),
(7, 53, 37900, 'http://www.sangeethamobiles.com/Products/Sangeetha-Mobiles-Mobile-Phones-Smart-Phones/Samsung/Samsung-I9300-32GB-Galaxy-S-II/pid-541044.aspx', 'Delivered in 6 days.', 0, 'Samsung I9300-32GB Galaxy S II', '2013-02-24 16:38:36'),
(7, 55, 12999, 'http://www.sangeethamobiles.com/Products/Sangeetha-Mobiles-Mobile-Phones-Smart-Phones/Nokia/Nokia-Lumia-710-Smartphone/pid-508626.aspx', 'Delivered in 6 days.', 0, 'Nokia Lumia 710 Smartphone', '2013-02-28 02:05:12'),
(7, 73, 9230, 'http://www.sangeethamobiles.com/Products/Sangeetha-Mobiles-Mobile-Phones-Smart-Phones/Samsung/Samsung-Galaxy-Ace-S5830-Smartphone/pid-537584.aspx', 'Delivered in 6 days.', 0, 'Samsung Galaxy Ace S5830 Smartphone', '2013-03-19 14:59:53'),
(7, 74, 43490, 'http://www.sangeethamobiles.com/Products/Sangeetha-Mobiles-Mobile-Phones-Smart-Phones/Blackberry/BlackBerry-Z10/pid-545874.aspx', 'Delivered in 6 days.', 0, 'BlackBerry Z10', '2013-03-19 15:06:00'),
(7, 56, 43490, 'http://www.sangeethamobiles.com/Products/Sangeetha-Mobiles-Mobile-Phones-Smart-Phones/Blackberry/BlackBerry-Z10/pid-545874.aspx', 'Delivered in 6 days.', 0, 'BlackBerry Z10', '2013-03-19 15:06:28'),
(7, 78, 20900, 'http://www.sangeethamobiles.com/Products/Sangeetha-Mobiles-Mobile-Phones-Smart-Phones/Samsung/Samsung-Galaxy-Grand-I9082-(metallic-blue)/pid-541250.aspx', 'Delivered in 6 days.', 0, 'Samsung Galaxy Grand I9082 (metallic blue)', '2013-03-19 19:06:22'),
(7, 81, 14780, 'http://www.sangeethamobiles.com/Products/Sangeetha-Mobiles-Mobile-Phones-Smart-Phones/Sony-Ericsson/Sony-ST27I-XPERIA-GO/pid-541047.aspx', 'Delivered in 6 days.', 0, 'Sony ST27I XPERIA GO', '2013-03-21 16:51:01'),
(7, 88, 9230, 'http://www.sangeethamobiles.com/Products/Sangeetha-Mobiles-Mobile-Phones-Smart-Phones/Samsung/Samsung-Galaxy-Ace-S5830-Smartphone/pid-537584.aspx', 'Delivered in 6 days.', 0, 'Samsung Galaxy Ace S5830 Smartphone', '2013-03-29 10:22:55'),
(7, 91, 7999, 'http://www.sangeethamobiles.com/Products/Sangeetha-Mobiles-Mobile-Phones-Smart-Phones/Nokia/Nokia-Lumia-N-510/pid-541038.aspx', 'Delivered in 6 days.', 0, 'Nokia Lumia-N-510', '2013-07-03 15:54:23'),
(7, 77, 5491, 'http://www.sangeethamobiles.com/Products/Sangeetha-Mobiles-Mobile-Phones-Smart-Phones/Nokia/ASHA-310/pid-546102.aspx', 'Delivered in 6 days.', 0, 'ASHA 310', '2013-07-03 19:11:43'),
(7, 92, 2402, 'http://www.sangeethamobiles.com/Products/Sangeetha-Mobiles-Mobile-Phones-GSM-Mobiles-GSM-Mobiles/Nokia/Nokia-112/pid-546682.aspx', 'Delivered in 6 days.', 0, 'Nokia 112', '2013-07-04 02:48:42'),
(7, 93, 5491, 'http://www.sangeethamobiles.com/Products/Sangeetha-Mobiles-Mobile-Phones-Smart-Phones/Nokia/ASHA-310/pid-546102.aspx', 'Delivered in 6 days.', 0, 'ASHA 310', '2013-07-04 05:25:22'),
(7, 94, 1453, 'http://www.sangeethamobiles.com/Products/Sangeetha-Mobiles-Mobile-Phones-Dual-SIM/Nokia/Nokia-N101-Dual-SIM-Mobile-Phone/pid-526051.aspx', 'Delivered in 6 days.', 0, 'Nokia N101 Dual SIM Mobilephone', '2013-07-04 05:28:02'),
(7, 96, 21900, 'http://www.sangeethamobiles.com/Products/Sangeetha-Mobiles-Mobile-Phones-Tablet-PCs/Apple/iPad-mini-with-Wifi---16-GB/pid-540661.aspx', 'Delivered in 6 days.', 0, 'iPad mini with Wifi - 16 GB', '2013-07-04 16:06:11'),
(7, 86, 15499, 'http://www.sangeethamobiles.com/Products/Sangeetha-Mobiles-Mobile-Phones-Smart-Phones/Micromax/Micromax-A116/pid-546584.aspx', 'Delivered in 6 days.', 0, 'Micromax A116', '2013-07-04 19:13:12');

-- --------------------------------------------------------

--
-- Table structure for table `shopclues`
--

CREATE TABLE IF NOT EXISTS `shopclues` (
  `WebsiteID` int(10) NOT NULL,
  `ProductId` int(10) NOT NULL,
  `Price` int(10) NOT NULL,
  `Link` text NOT NULL,
  `DeliveryTime` text NOT NULL,
  `EMI` int(1) NOT NULL DEFAULT '0',
  `Title` text NOT NULL,
  `Time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shopclues`
--

INSERT INTO `shopclues` (`WebsiteID`, `ProductId`, `Price`, `Link`, `DeliveryTime`, `EMI`, `Title`, `Time`) VALUES
(50, 1, 4999, 'http://www.shopclues.com/samsung-duos-w169.html', '5-7 Working Days.', 0, '\r\n    Samsung DUOS W169\r\n    ', '2013-01-18 16:54:30'),
(50, 8, 13900, 'http://www.shopclues.com/samsung-galaxy-s-duos-s7562-black-en-2-3-4.html', '5-7 Working Days.', 0, '\r\n    Samsung Galaxy S Duos S7562 (Black)\r\n    ', '2013-01-18 20:49:06'),
(50, 9, 875, 'http://www.shopclues.com/molife-clubber-cl-sl-ip4-case-for-iphone-4-and-4s-en.html', '5-7 Working Days.', 0, '\r\n    Molife Clubber CL-SL-IP4 Case for....\r\n    ', '2013-01-18 21:16:24'),
(50, 10, 4129, 'http://www.shopclues.com/nokia-asha-305.html', '5-7 Working Days.', 0, '\r\n    Nokia Asha 305 Mobile\r\n    ', '2013-01-19 01:05:55'),
(50, 12, 36999, 'http://www.shopclues.com/samsung-galaxy-note-2-en.html', '5-7 Working Days.', 0, '\r\n    Samsung Galaxy Note 2\r\n    ', '2013-01-19 15:34:26'),
(50, 13, 28900, 'http://www.shopclues.com/samsung-galaxy-s-iii-blue-en-2.html', '5-7 Working Days.', 0, '\r\n    Samsung Galaxy SIII i9300 (White)\r\n    ', '2013-01-23 19:23:07'),
(50, 14, 1199, 'http://www.shopclues.com/apple-iphone-5-earpods-with-remote-and-mic-headset-handsfree.html', '5-7 Working Days.', 0, '\r\n    Apple iPhone 5 EarPods with Remote....\r\n    ', '2013-01-23 19:25:00'),
(50, 15, 19422, 'http://www.shopclues.com/nokia-lumia-800.html', '5-7 Working Days.', 0, '\r\n    Nokia Lumia 800\r\n    ', '2013-01-23 19:27:58'),
(50, 16, 419, 'http://www.shopclues.com/philips-shs390-98-neckband-headphones.html', '5-7 Working Days.', 0, '\r\n    Philips SHS390/98 Neckband Headphones\r\n    ', '2013-01-23 19:30:16'),
(50, 17, 1540, 'http://www.shopclues.com/netgear-n150-wireless-router-jnr1010.html', '5-7 Working Days.', 0, '\r\n    Netgear N150 Wireless Router JNR1010\r\n    ', '2013-01-23 19:31:37'),
(50, 18, 1628, 'http://www.shopclues.com/huawei-e303c-datacard-white.html', '5-7 Working Days.', 0, '\r\n    Huawei E303C Datacard (White)\r\n    ', '2013-01-23 19:33:22'),
(50, 19, 18898, 'http://www.shopclues.com/samsung-galaxy-tab-2-p3100-titanium-silver-en.html', '5-7 Working Days.', 0, '\r\n    Samsung Galaxy Tab 2 P3100 (Titanium....\r\n    ', '2013-01-23 19:36:56'),
(50, 20, 11199, 'http://www.shopclues.com/sony-ericsson-experia-u-black-android-smartphone.html', '5-7 Working Days.', 0, '\r\n    Sony Xperia U (Black) Android Smartphone\r\n    ', '2013-01-23 19:38:15'),
(50, 24, 33040, 'http://www.shopclues.com/nikon-d5100-slr-af-s-18-55mm.html', '5-7 Working Days.', 0, '\r\n    Nikon D5100 SLR (AF-S 18-55mm)....\r\n    ', '2013-01-23 19:45:20'),
(50, 26, 510, 'http://www.shopclues.com/sandisk-cruzer-blade-16gb-pen-drive-en-2-3-4-5-6-7.html', '5-7 Working Days.', 0, '\r\n    SanDisk Cruzer Blade 16GB Pen Drive\r\n    ', '2013-01-23 21:46:24'),
(50, 29, 8300, 'http://www.shopclues.com/canon-powershot-sx150-is-14.1mp-14x-silver.html', '5-7 Working Days.', 0, '\r\n    Canon PowerShot SX150 IS Point &....\r\n    ', '2013-01-23 22:27:46'),
(50, 31, 152900, 'http://www.shopclues.com/apple-macbook-pro-mc975hn-a-with-retina-display.html', '5-7 Working Days.', 0, '\r\n    Apple MacBook Pro-MC975HN/A with....\r\n    ', '2013-01-23 22:36:57'),
(50, 32, 967, 'http://www.shopclues.com/sandisk-cruzer-blade-32gb-pen-drive-en-2-3-4.html', '5-7 Working Days.', 0, '\r\n    Sandisk Cruzer Blade 32GB pen drive\r\n    ', '2013-01-28 19:33:08'),
(50, 34, 31131, 'http://www.shopclues.com/nokia-lumia-900-white-en.html', '5-7 Working Days.', 0, '\r\n    Nokia Lumia 900 (White)\r\n    ', '2013-01-30 13:49:50'),
(50, 35, 6749, 'http://www.shopclues.com/nokia-asha-302.html', '5-7 Working Days.', 0, '\r\n    Nokia Asha 302\r\n    ', '2013-01-30 13:52:22'),
(50, 36, 299, 'http://www.shopclues.com/skin-for-nokia-202-asha-angry-bird.html', '5-7 Working Days.', 0, '\r\n    Skin For Nokia 202 Asha Angry Bird\r\n    ', '2013-01-30 13:53:25'),
(50, 37, 390, 'http://www.shopclues.com/escape-trendy-sunglasses-e463-black.html', '5-7 Working Days.', 0, '\r\n    Escape Trendy Sunglasses E463-Black\r\n    ', '2013-02-10 23:58:23'),
(50, 38, 169, 'http://www.shopclues.com/new-original-micro-usb-data-cable-for-samsung-galaxy-pop-s5570-s-s2-ace-i9100.html', '5-7 Working Days.', 0, '\r\n    MICRO USB DATA CABLE FOR SAMSUNG....\r\n    ', '2013-02-12 22:56:31'),
(50, 39, 14999, 'http://www.shopclues.com/blackberry-bold-9780-black-bold-3.html', '5-7 Working Days.', 0, '\r\n    BlackBerry Bold 9780 - Black Bold 3\r\n    ', '2013-02-12 22:57:08'),
(50, 40, 26999, 'http://www.shopclues.com/samsung-galaxy-note-n7000-ceramic-white-en.html', '5-7 Working Days.', 0, '\r\n    Samsung Galaxy Note N7000 (Ceramic....\r\n    ', '2013-02-19 17:34:23'),
(50, 45, 8800, 'http://www.shopclues.com/daenyx-7.2kg-semiautomatic-washingmachine.html', '5-7 Working Days.', 0, '\r\n    Daenyx 7KG Semi Automatic Washing....\r\n    ', '2013-02-22 08:14:13'),
(50, 47, 31316, 'http://www.shopclues.com/nokia-lumia-920-red.html', '5-7 Working Days.', 0, '\r\n    Nokia Lumia 920 (Red)\r\n    ', '2013-02-22 16:43:51'),
(50, 48, 26999, 'http://www.shopclues.com/samsung-galaxy-note-n7000-ceramic-white-en.html', '5-7 Working Days.', 0, '\r\n    Samsung Galaxy Note N7000 (Ceramic....\r\n    ', '2013-02-24 10:53:43'),
(50, 49, 549, 'http://www.shopclues.com/apple-watch.html', '5-7 Working Days.', 0, '\r\n    Apple Watch\r\n    ', '2013-02-24 10:57:45'),
(50, 50, 33800, 'http://www.shopclues.com/apple-iphone-4s.html', '5-7 Working Days.', 0, '\r\n    Apple Iphone 4S-16GB Factory Unlocked\r\n    ', '2013-02-24 10:58:52'),
(50, 53, 63900, 'http://www.shopclues.com/samsung-46-inches-full-hd-led-ua46d5500rr-tv-clone-en.html', '5-7 Working Days.', 0, '\r\n    Samsung 46EH5000 LED 46 inches Full....\r\n    ', '2013-02-24 16:39:05'),
(50, 54, 3127, 'http://www.shopclues.com/netgear-wn3000rp-universal-wi-fi-range-extender.html', '5-7 Working Days.', 0, '\r\n    Netgear WN3000RP Universal Wi-Fi....\r\n    ', '2013-02-25 19:03:14'),
(50, 46, 179, 'http://www.shopclues.com/rmor-screenguard-for-nokia-lumia-610.html', '5-7 Working Days.', 0, '\r\n    RMOR Screenguard for nokia Lumia 610 \r\n    ', '2013-02-27 19:34:50'),
(50, 55, 10938, 'http://www.shopclues.com/nokia-lumia-710-white.html', '5-7 Working Days.', 0, '\r\n    Nokia Lumia 710 (White)\r\n    ', '2013-02-28 02:05:35'),
(50, 56, 43299, 'http://www.shopclues.com/blackberry-z10-charcoal-black-en.html', '5-7 Working Days.', 0, '\r\n    BlackBerry Z10 (Charcoal Black)\r\n    ', '2013-02-28 02:33:06'),
(50, 58, 1410, 'http://www.shopclues.com/reusable-silicon-condom-lenth-and-grith-enhancing.html', '5-7 Working Days.', 0, '\r\n    REUSABLE SILICON CONDOM-II<NEW....\r\n    ', '2013-02-28 03:55:42'),
(50, 59, 499, 'http://www.shopclues.com/sandisk-cz53-cruzer-pop-16gb-pendrive-tribal.html', '5-7 Working Days.', 0, '\r\n    Sandisk CZ53 Cruzer Pop 16GB....\r\n    ', '2013-02-28 19:26:15'),
(50, 60, 288, 'http://www.shopclues.com/sony-8gb-usb-2.0-pen-drive-flash-memory-pendrive.html', '5-7 Working Days.', 0, '\r\n    Sony 8GB USB 2.0 Pen Drive\r\n    ', '2013-02-28 19:27:26'),
(50, 61, 348, 'http://www.shopclues.com/sony-micro-8gb-vault-tiny-pendrive-en.html', '5-7 Working Days.', 0, '\r\n    Sony Micro 8GB Vault Tiny Pendrive\r\n    ', '2013-02-28 19:28:31'),
(50, 71, 158, 'http://www.shopclues.com/8-in-1-screwdriver-with-6-bright-led-lights.html', '5-7 Working Days.', 0, '\r\n    8 in 1 Screwdriver with 6 Bright LED....\r\n    ', '2013-03-07 11:01:19'),
(50, 72, 340, 'http://www.shopclues.com/ehs44-samsung-handsfree-headset-earphone-handsfree-for-galaxy-s2-ace-s-y-pop-mic-and-stereo-3-months-seller-warranty-and-retail-invoice.html', '5-7 Working Days.', 0, '\r\n    EHS44 Samsung Handsfree Headset....\r\n    ', '2013-03-17 20:37:39'),
(50, 73, 31099, 'http://www.shopclues.com/samsung-galaxy-s-iii-blue-en-2.html', '5-7 Working Days.', 0, '\r\n    Samsung Galaxy SIII i9300 (white)\r\n    ', '2013-03-19 15:00:24'),
(50, 74, 43299, 'http://www.shopclues.com/blackberry-z10-charcoal-black-en.html', '5-7 Working Days.', 0, '\r\n    BlackBerry Z10 (Charcoal Black)\r\n    ', '2013-03-19 15:06:21'),
(50, 77, 1599, 'http://www.shopclues.com/airtyme-picasso-android-grey.html', '5-7 Working Days.', 0, '\r\n    New Gfive N9 Super slim light....\r\n    ', '2013-03-19 15:13:14'),
(50, 78, 20900, 'http://www.shopclues.com/samsung-galaxy-grand-gt-i9082-white.html', '5-7 Working Days.', 0, '\r\n    Samsung Galaxy Grand GT-I9082- White\r\n    ', '2013-03-19 19:06:56'),
(50, 79, 569, 'http://www.shopclues.com/transcend-16gb-class-4-microsd-card.html', '5-7 Working Days.', 0, '\r\n    Transcend 16GB Class 4 MicroSD Card\r\n    ', '2013-03-19 19:15:54'),
(50, 80, 169, 'http://www.shopclues.com/new-original-micro-usb-data-cable-for-samsung-galaxy-pop-s5570-s-s2-ace-i9100.html', '5-7 Working Days.', 0, '\r\n    MICRO USB DATA CABLE FOR SAMSUNG....\r\n    ', '2013-03-21 16:45:16'),
(50, 85, 3999, 'http://www.shopclues.com/samsung-rex-60.html', '5-7 Working Days.', 0, '\r\n    Samsung REX 60\r\n    ', '2013-03-21 17:12:37'),
(50, 86, 15299, 'http://www.shopclues.com/micromax-a116-canvas-hd-521452.html', '5-7 Working Days.', 0, '\r\n    Micromax A116 Canvas HD\r\n    ', '2013-03-28 22:47:04'),
(50, 90, 4999, 'http://www.shopclues.com/mini-led-projector.html', '5-7 Working Days.', 0, '\r\n    VOX Mini LED Projector\r\n    ', '2013-04-05 19:26:36'),
(50, 91, 7500, 'http://www.shopclues.com/nokia-lumia-510-501384.html', '5-7 Working Days.', 0, '\r\n    Nokia Lumia 510\r\n    ', '2013-07-03 15:54:43'),
(50, 2, 149, 'http://www.shopclues.com/brand-new-silicon-cover-case-pouch-for-samsung-galaxy-y-duos-lite-s5302-white.html', '5-7 Working Days.', 0, '\r\n    BRAND NEW SILICON COVER CASE POUCH....\r\n    ', '2013-07-03 19:02:10'),
(50, 25, 5999, 'http://www.shopclues.com/micromax-a-57-ninja-3.html', '5-7 Working Days.', 0, '\r\n    Micromax A 57 Ninja 3\r\n    ', '2013-07-04 02:46:53'),
(50, 92, 3550, 'http://www.shopclues.com/fly-gc-169-gsmcdma-white-work-on-all-cdma-connections.html', '5-7 Working Days.', 0, '\r\n    Fly GC 169 (GSM+CDMA) White Work on....\r\n    ', '2013-07-04 02:48:55'),
(50, 51, 42499, 'http://www.shopclues.com/apple-iphone-5-16gb-factory-unlocked-mobile-phone.html', '5-7 Working Days.', 0, '\r\n    Apple iPhone 5 16GB\r\n    ', '2013-07-04 02:57:09'),
(50, 4, 170, 'http://www.shopclues.com/non-verbal-reasoning.html', '5-7 Working Days.', 0, '\r\n    Non-Verbal Reasoning\r\n    ', '2013-07-04 02:58:28'),
(50, 93, 1990, 'http://www.shopclues.com/nokia-109-cyan.html', '5-7 Working Days.', 0, '\r\n    Nokia 109 (Cyan)\r\n    ', '2013-07-04 05:25:35'),
(50, 94, 2449, 'http://www.shopclues.com/nokia-114.html', '5-7 Working Days.', 0, '\r\n    NOKIA 114\r\n    ', '2013-07-04 05:28:19'),
(50, 95, 1967, 'http://www.shopclues.com/micromax-x327-silver.html', '5-7 Working Days.', 0, '\r\n    Micromax X327\r\n    ', '2013-07-04 05:32:44'),
(50, 96, 2083, 'http://www.shopclues.com/krusell-gaia-tablet-case-for-apple-ipad-2-red-en.html', '5-7 Working Days.', 0, '\r\n    Krusell Gaia Tablet Case For Apple....\r\n    ', '2013-07-04 16:06:22'),
(50, 97, 4599, 'http://www.shopclues.com/micromax-bolt-a51-grey-brand-new-sealed-pack-1-year-micromax-warranty.html', '5-7 Working Days.', 0, '\r\n    Micromax Bolt A51\r\n    ', '2013-07-04 18:21:13'),
(50, 0, 5990, 'http://www.shopclues.com/samsung-wireless-laser-printer-ml-1866w.html', '5-7 Working Days.', 0, '\r\n    Samsung Wireless Laser Printer ML-1866W\r\n    ', '2013-07-07 09:45:14');

-- --------------------------------------------------------

--
-- Table structure for table `shoppingwopping`
--

CREATE TABLE IF NOT EXISTS `shoppingwopping` (
  `WebsiteID` int(10) NOT NULL,
  `ProductId` int(10) NOT NULL,
  `Price` int(10) NOT NULL,
  `Link` text NOT NULL,
  `DeliveryTime` text NOT NULL,
  `EMI` int(1) NOT NULL DEFAULT '0',
  `Title` text NOT NULL,
  `Time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shoppingwopping`
--

INSERT INTO `shoppingwopping` (`WebsiteID`, `ProductId`, `Price`, `Link`, `DeliveryTime`, `EMI`, `Title`, `Time`) VALUES
(32, 1, 16690, 'http://shoppingwopping.in/samsung-convection-ce137xat-b-microwave-oven.html', 'Delivery in 3 Business days.', 0, 'SAMSUNG CONVECTION CE137XAT-B MICROWAVE OVEN', '2013-01-18 16:54:07'),
(32, 2, 3308, 'http://shoppingwopping.in/samsung-metro-duos-c3322.html', 'Delivery in 3 Business days.', 0, 'Samsung Metro DUOS C3322', '2013-01-18 17:35:11'),
(32, 3, 19151, 'http://shoppingwopping.in/nikon-coolpix-p7000-digital-camera.html', 'Delivery in 3 Business days.', 0, 'Nikon COOLPIX P7000  Digital Camera', '2013-01-18 17:36:08'),
(32, 4, 13455, 'http://shoppingwopping.in/nikon-coolpix-p300-digital-camera.html', 'Delivery in 3 Business days.', 0, 'Nikon COOLPIX P300 Digital Camera', '2013-01-18 20:24:45'),
(32, 0, 19151, 'http://shoppingwopping.in/nikon-coolpix-p7000-digital-camera.html', 'Delivery in 3 Business days.', 0, 'Nikon COOLPIX P7000  Digital Camera', '2013-01-18 20:28:52'),
(32, 6, 19151, 'http://shoppingwopping.in/nikon-coolpix-p7000-digital-camera.html', 'Delivery in 3 Business days.', 0, 'Nikon COOLPIX P7000  Digital Camera', '2013-01-18 20:29:17'),
(32, 8, 13455, 'http://shoppingwopping.in/nikon-coolpix-p300-digital-camera.html', 'Delivery in 3 Business days.', 0, 'Nikon COOLPIX P300 Digital Camera', '2013-01-18 20:48:58'),
(32, 9, 19220, 'http://shoppingwopping.in/iphone-3gs.html', 'Delivery in 3 Business days.', 0, 'iPhone 3GS', '2013-01-18 21:16:12'),
(32, 10, 950, 'http://shoppingwopping.in/nokia-bh-104-headset.html', 'Delivery in 3 Business days.', 0, 'Nokia BH-104 - headset', '2013-01-19 01:05:47'),
(32, 12, 26505, 'http://shoppingwopping.in/nikon-dslr-d5100.html', 'Delivery in 3 Business days.', 0, 'NIKON DSLR D5100 Body', '2013-01-19 15:34:17'),
(32, 14, 19220, 'http://shoppingwopping.in/iphone-3gs.html', 'Delivery in 3 Business days.', 0, 'iPhone 3GS', '2013-01-23 19:24:56'),
(32, 15, 4650, 'http://shoppingwopping.in/essence-oud-perfume-for-men-by-ferrari-125ml.html', 'Delivery in 3 Business days.', 0, 'Essence Oud Perfume For Men By Ferrari-125ml', '2013-01-23 19:27:51'),
(32, 16, 351, 'http://shoppingwopping.in/introduction-to-engineering-materials.html', 'Delivery in 3 Business days.', 0, 'Introduction to Engineering Materials', '2013-01-23 19:30:07'),
(32, 17, 55285, 'http://shoppingwopping.in/canon-legria-hf-m41-camcorder.html', 'Delivery in 3 Business days.', 0, 'Canon Legria HF M41 Camcorder', '2013-01-23 19:31:20'),
(32, 18, 1188, 'http://shoppingwopping.in/sandisk-ultra-sd-class-10-memory-card-32gb.html', 'Delivery in 3 Business days.', 0, 'Sandisk Ultra SD Class 10 Memory Card 32GB ', '2013-01-23 19:33:14'),
(32, 19, 24250, 'http://shoppingwopping.in/nikon-dslr-d5100.html', 'Delivery in 3 Business days.', 0, 'NIKON DSLR D5100 Body', '2013-01-23 19:36:47'),
(32, 20, 449, 'http://shoppingwopping.in/vendee-new-arrival-fashion-pendants-6427b.html', 'Delivery in 3 Business days.', 0, 'Vendee New arrival fashion pendants (6427B)', '2013-01-23 19:38:14'),
(32, 21, 945, 'http://shoppingwopping.in/philips-dry-iron-hi114.html', 'Delivery in 3 Business days.', 0, 'Philips Dry Iron-HI114 ', '2013-01-23 19:40:15'),
(32, 22, 1495, 'http://shoppingwopping.in/fastrack-sunglasses-summer-m050br12.html', 'Delivery in 3 Business days.', 0, 'Fastrack Sunglasses Summer-M050BR12', '2013-01-23 19:42:47'),
(32, 23, 16000, 'http://shoppingwopping.in/samsung-led-tv-22-22es5000.html', 'Delivery in 3 Business days.', 0, 'Samsung LED TV 22" 22ES5000', '2013-01-23 19:44:31'),
(32, 25, 31455, 'http://shoppingwopping.in/nikon-dslr-d5100-1.html', 'Delivery in 3 Business days.', 0, 'NIKON DSLR D5100 Body with AF-S 18-55mm VR Kit', '2013-01-23 20:12:06'),
(32, 26, 144, 'http://shoppingwopping.in/environmental-studies.html', 'Delivery in 3 Business days.', 0, 'Environmental Studies', '2013-01-23 21:46:06'),
(32, 27, 1395, 'http://shoppingwopping.in/canon-legria-fs-405-camcorder.html', 'Delivery in 3 Business days.', 0, 'Canon Legria FS 405 Camcorder ', '2013-01-23 22:15:53'),
(32, 28, 1495, 'http://shoppingwopping.in/fastrack-sunglasses-summer-m082bk2p.html', 'Delivery in 3 Business days.', 0, 'Fastrack Sunglasses Summer-M082BK2P', '2013-01-23 22:17:21'),
(32, 29, 1538, 'http://shoppingwopping.in/hyderabadi-pearls-three-drops-two-line-combination-set-pnl557.html', 'Delivery in 3 Business days.', 0, 'Hyderabadi Pearls Three Drops Two Line combination Set -PNL557', '2013-01-23 22:27:26'),
(32, 31, 4703, 'http://shoppingwopping.in/lowepro-fastpack-200-blue.html', 'Delivery in 3 Business days.', 0, 'Lowepro Fastpack 200 (Blue)', '2013-01-23 22:36:45'),
(32, 33, 833, 'http://shoppingwopping.in/kingston-16-gb-pendrive-dtig3.html', 'Delivery in 3 Business days.', 0, 'Kingston 16 GB Pendrive-DTIG3', '2013-01-28 19:40:08'),
(32, 35, 882, 'http://shoppingwopping.in/nokia-data-cable-dc-6.html', 'Delivery in 3 Business days.', 0, 'NOKIA DATA CABLE DC-6', '2013-01-30 13:52:24'),
(32, 36, 1800, 'http://shoppingwopping.in/nokia-extra-power-dc-11k.html', 'Delivery in 3 Business days.', 0, 'Nokia Extra Power DC-11K', '2013-01-30 13:53:17'),
(32, 37, 1495, 'http://shoppingwopping.in/fastrack-sunglasses-summer-m082bk2p.html', 'Delivery in 3 Business days.', 0, 'Fastrack Sunglasses Summer-M082BK2P', '2013-02-10 23:58:17'),
(32, 13, 16490, 'http://shoppingwopping.in/samsung-top-loading-washing-machine-wa82vslec.html', 'Delivery in 3 Business days.', 0, 'SAMSUNG TOP LOADING WASHING MACHINE WA82VSLEC', '2013-02-11 00:05:10'),
(32, 38, 279, 'http://shoppingwopping.in/object-oriented-programming-with-c.html', 'Delivery in 3 Business days.', 0, 'Object Oriented Programming with C++', '2013-02-12 22:56:18'),
(32, 39, 1655, 'http://shoppingwopping.in/blackberry-j-m1-battery.html', 'Delivery in 3 Business days.', 0, 'BlackBerry J-M1 Battery', '2013-02-12 22:56:55'),
(32, 41, 25123, 'http://shoppingwopping.in/samsung-i9100-galaxysii.html', 'Delivery in 3 Business days.', 0, 'Samsung I9100 GalaxySII ', '2013-02-19 17:34:52'),
(32, 42, 25123, 'http://shoppingwopping.in/samsung-i9100-galaxysii.html', 'Delivery in 3 Business days.', 0, 'Samsung I9100 GalaxySII ', '2013-02-19 17:35:21'),
(32, 34, 10900, 'http://shoppingwopping.in/advanced-macroeconomics-5.html', 'Delivery in 3 Business days.', 0, 'Advanced Macroeconomics', '2013-02-19 17:36:22'),
(32, 43, 10660, 'http://shoppingwopping.in/samsung-blu-ray-dvd-player-bd-e5500.html', 'Delivery in 3 Business days.', 0, 'SAMSUNG BLU RAY DVD PLAYER BD-E5500', '2013-02-21 16:35:20'),
(32, 45, 16690, 'http://shoppingwopping.in/samsung-convection-ce137xat-b-microwave-oven.html', 'Delivery in 3 Business days.', 0, 'SAMSUNG CONVECTION CE137XAT-B MICROWAVE OVEN', '2013-02-22 08:14:02'),
(32, 46, 1242, 'http://shoppingwopping.in/nokia-bluetooth-headset-bh-112.html', 'Delivery in 3 Business days.', 0, 'NOKIA Bluetooth Headset BH-112', '2013-02-22 16:36:52'),
(32, 47, 1899, 'http://shoppingwopping.in/nokia-bluetooth-stereo-headset-bh-111.html', 'Delivery in 3 Business days.', 0, 'NOKIA Bluetooth Stereo Headset BH-111', '2013-02-22 16:43:47'),
(32, 48, 27300, 'http://shoppingwopping.in/samsung-as182ubj-air-conditioner.html', 'Delivery in 3 Business days.', 0, 'SAMSUNG AS182UBJ AIR CONDITIONER', '2013-02-24 10:53:19'),
(32, 49, 27334, 'http://shoppingwopping.in/apple-ipad-mini-with-wi-fi-32gb-white-and-silver.html', 'Delivery in 3 Business days.', 0, 'APPLE iPad mini with Wi-Fi 32GB - (White and Silver)', '2013-02-24 10:57:24'),
(32, 50, 27334, 'http://shoppingwopping.in/apple-ipad-mini-with-wi-fi-32gb-white-and-silver.html', 'Delivery in 3 Business days.', 0, 'APPLE iPad mini with Wi-Fi 32GB - (White and Silver)', '2013-02-24 10:58:28'),
(32, 51, 24705, 'http://shoppingwopping.in/nikon-dslr-d5100.html', 'Delivery in 3 Business days.', 0, 'NIKON DSLR D5100 Body', '2013-02-24 13:13:26'),
(32, 52, 3104, 'http://shoppingwopping.in/samsung-dvd-c460-player.html', 'Delivery in 3 Business days.', 0, 'SAMSUNG DVD-C460 PLAYER ', '2013-02-24 16:35:49'),
(32, 53, 14690, 'http://shoppingwopping.in/samsung-convection-ce107ff-s-microwave-oven.html', 'Delivery in 3 Business days.', 0, 'SAMSUNG CONVECTION CE107FF-S MICROWAVE OVEN', '2013-02-24 16:38:43'),
(32, 55, 2313, 'http://shoppingwopping.in/nokia-extra-power-dc-11.html', 'Delivery in 3 Business days.', 0, 'NOKIA EXTRA POWER DC-11', '2013-02-28 02:05:19'),
(32, 56, 1655, 'http://shoppingwopping.in/blackberry-j-m1-battery.html', 'Delivery in 3 Business days.', 0, 'BlackBerry J-M1 Battery', '2013-02-28 02:32:55'),
(32, 24, 13531, 'http://shoppingwopping.in/lowepro-vertex-100-aw-black.html', 'Delivery in 3 Business days.', 0, 'Lowepro Vertex 100 AW Black', '2013-02-28 04:54:05'),
(32, 59, 425, 'http://shoppingwopping.in/sandisk-extreme-cf-64-gb-flash-memory-card-sdcfx-064g-x46.html', 'Delivery in 3 Business days.', 0, 'SANDISK EXTREME CF 64 GB FLASH MEMORY CARD(SDCFX-064G-X46)  ', '2013-02-28 19:26:12'),
(32, 60, 24300, 'http://shoppingwopping.in/sony-micro-hi-fi-mhc-gzr888da-speaker.html', 'Delivery in 3 Business days.', 0, 'SONY MICRO HI FI MHC-GZR888DA SPEAKER', '2013-02-28 19:27:10'),
(32, 61, 24300, 'http://shoppingwopping.in/sony-micro-hi-fi-mhc-gzr888da-speaker.html', 'Delivery in 3 Business days.', 0, 'SONY MICRO HI FI MHC-GZR888DA SPEAKER', '2013-02-28 19:28:20'),
(32, 64, 71000, 'http://shoppingwopping.in/rs21hdtpn-585l.html', 'Delivery in 3 Business days.', 0, 'RS21HDTPN.(585L) ', '2013-03-04 20:09:13'),
(32, 65, 23650, 'http://shoppingwopping.in/toshiba-c850-p5010-satellite-laptop.html', 'Delivery in 3 Business days.', 0, 'Toshiba C850-P5010 Satellite Laptop', '2013-03-04 20:18:36'),
(32, 66, 23650, 'http://shoppingwopping.in/asus-k53sm-sx130d-laptop.html', 'Delivery in 3 Business days.', 0, '  ASUS K53SM-SX130D LAPTOP', '2013-03-04 20:19:04'),
(32, 67, 23650, 'http://shoppingwopping.in/asus-k53sm-sx130d-laptop.html', 'Delivery in 3 Business days.', 0, '  ASUS K53SM-SX130D LAPTOP', '2013-03-04 20:20:08'),
(32, 68, 23650, 'http://shoppingwopping.in/toshiba-c850-p5010-satellite-laptop.html', 'Delivery in 3 Business days.', 0, 'Toshiba C850-P5010 Satellite Laptop', '2013-03-04 21:34:54'),
(32, 69, 23650, 'http://shoppingwopping.in/asus-k53sm-sx130d-laptop.html', 'Delivery in 3 Business days.', 0, '  ASUS K53SM-SX130D LAPTOP', '2013-03-04 21:36:11'),
(32, 70, 19900, 'http://shoppingwopping.in/samsung-smx-f50bp.html', 'Delivery in 3 Business days.', 0, 'Samsung SMX-F50BP', '2013-03-04 23:09:04'),
(32, 72, 26200, 'http://shoppingwopping.in/samsung-top-loading-washing-machine-wa11wpmeh.html', 'Delivery in 3 Business days.', 0, 'SAMSUNG TOP LOADING WASHING MACHINE WA11WPMEH', '2013-03-17 20:37:24'),
(32, 80, 8700, 'http://shoppingwopping.in/sony-micro-hi-fi-cmt-dx400a-speaker.html', 'Delivery in 3 Business days.', 0, 'SONY MICRO Hi Fi CMT-DX400A SPEAKER', '2013-03-21 16:45:11'),
(32, 81, 69900, 'http://shoppingwopping.in/sony-bravia-3d-full-hd-led-kdl-40ex720.html', 'Delivery in 3 Business days.', 0, 'Sony BRAVIA 3D Full HD LED KDL-40EX720 ', '2013-03-21 16:51:18'),
(32, 82, 1325, 'http://shoppingwopping.in/benetton-sport-perfume-for-women-by-united-colors-of-benetton-100ml-2.html', 'Delivery in 3 Business days.', 0, 'BENETTON SPORT  Perfume For  women By United Colors of Benetton -100ML', '2013-03-21 17:00:52'),
(32, 84, 1799, 'http://shoppingwopping.in/philips-shq3000-mp3-headphone.html', 'Delivery in 3 Business days.', 0, 'PHILIPS SHQ3000 (MP3 HEADPHONE)', '2013-03-21 17:06:57'),
(32, 85, 1234, 'http://shoppingwopping.in/samsung-micro-usb-charger-eta0u80ibeginu.html', 'Delivery in 3 Business days.', 0, 'Samsung Micro USB Charger-ETA0U80IBEGINU', '2013-03-21 17:12:13'),
(32, 86, 6490, 'http://shoppingwopping.in/micromax-ninja-a89-black-with-3mp-camera.html', 'Delivery in 3 Business days.', 0, 'Micromax Ninja A89 Black with 3MP Camera', '2013-03-28 22:47:06'),
(32, 87, 29400, 'http://shoppingwopping.in/samsung-top-loading-washing-machine-wa13wpmeh.html', 'Delivery in 3 Business days.', 0, 'SAMSUNG TOP LOADING WASHING MACHINE WA13WPMEH', '2013-03-29 10:22:04'),
(32, 88, 23400, 'http://shoppingwopping.in/samsung-as122ugf-air-conditioner.html', 'Delivery in 3 Business days.', 0, 'SAMSUNG AS122UGF AIR CONDITIONER', '2013-03-29 10:23:03'),
(32, 89, 29400, 'http://shoppingwopping.in/samsung-top-loading-washing-machine-wa13wpmeh.html', 'Delivery in 3 Business days.', 0, 'SAMSUNG TOP LOADING WASHING MACHINE WA13WPMEH', '2013-03-29 10:24:10'),
(32, 91, 459, 'http://shoppingwopping.in/finite-element-analysis-theory-and-programming.html', 'Delivery in 3 Business days.', 0, 'Finite Element Analysis: Theory and Programming', '2013-07-03 15:54:35'),
(32, 77, 1800, 'http://shoppingwopping.in/nokia-extra-power-dc-11k.html', 'Delivery in 3 Business days.', 0, 'Nokia Extra Power DC-11K', '2013-07-03 19:11:51'),
(32, 93, 989, 'http://shoppingwopping.in/aluminium-rolling.html', 'Delivery in 3 Business days.', 0, 'Aluminium Rolling', '2013-07-04 05:25:34'),
(32, 94, 1087, 'http://shoppingwopping.in/timex-classic-men-watch-c907.html', 'Delivery in 3 Business days.', 0, 'Timex Classic Men Watch C907', '2013-07-04 05:28:10'),
(32, 95, 1675, 'http://shoppingwopping.in/vip-classique-duffle-52-black.html', 'Delivery in 3 Business days.', 0, 'VIP Classique Duffle 52 (Black)', '2013-07-04 05:32:50'),
(32, 96, 27334, 'http://shoppingwopping.in/apple-ipad-mini-with-wi-fi-32gb-white-and-silver.html', 'Delivery in 3 Business days.', 0, 'APPLE iPad mini with Wi-Fi 32GB - (White and Silver)', '2013-07-04 16:06:14'),
(32, 97, 6490, 'http://shoppingwopping.in/micromax-ninja-a89-black-with-3mp-camera.html', 'Delivery in 3 Business days.', 0, 'Micromax Ninja A89 Black with 3MP Camera', '2013-07-04 18:21:06');

-- --------------------------------------------------------

--
-- Table structure for table `shopseventymm`
--

CREATE TABLE IF NOT EXISTS `shopseventymm` (
  `WebsiteID` int(10) NOT NULL,
  `ProductId` int(10) NOT NULL,
  `Price` int(10) NOT NULL,
  `Link` text COLLATE utf8_unicode_ci NOT NULL,
  `DeliveryTime` text COLLATE utf8_unicode_ci NOT NULL,
  `EMI` int(1) NOT NULL DEFAULT '0',
  `Title` text COLLATE utf8_unicode_ci NOT NULL,
  `Time` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `simplybooks`
--

CREATE TABLE IF NOT EXISTS `simplybooks` (
  `WebsiteID` int(10) NOT NULL,
  `ProductId` int(10) NOT NULL,
  `Price` int(10) NOT NULL,
  `Link` text NOT NULL,
  `DeliveryTime` text NOT NULL,
  `EMI` int(1) NOT NULL DEFAULT '0',
  `Title` text NOT NULL,
  `Time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `simplybooks`
--

INSERT INTO `simplybooks` (`WebsiteID`, `ProductId`, `Price`, `Link`, `DeliveryTime`, `EMI`, `Title`, `Time`) VALUES
(40, 1, 913, 'http://www.simplybooks.in/samsung-electronics-struggle-leadership-tony-michell-book-isbn-9780470822661-50961', 'Delivery in 3-5 business days.', 0, 'Samsung Electronics: And The Struggle For Leadership Of The Electronics Industry', '2013-01-18 16:54:06'),
(40, 2, 1029, 'http://www.simplybooks.in/go-lite-white-be-mourer-diana-book-isbn-9781436301534-437903', 'Delivery in 3-5 business days.', 0, 'Go Lite on White and Be Discreet with Sweets', '2013-01-18 17:35:08'),
(40, 3, 94, 'http://www.simplybooks.in/every-galaxy-has-a-na-book-isbn-9788121932899-542944', 'Delivery in 3-5 business days.', 0, 'Every Galaxy Has A Black Hole', '2013-01-18 17:36:06'),
(40, 4, 556, 'http://www.simplybooks.in/modern-approach-verbal-non-r-s-book-isbn-9788121905510-479050', 'Delivery in 3-5 business days.', 0, 'A Modern Approach To Verbal & Non-Verbal Reasoning', '2013-01-18 20:24:43'),
(40, 0, 556, 'http://www.simplybooks.in/modern-approach-verbal-non-r-s-book-isbn-9788121905510-479050', 'Delivery in 3-5 business days.', 0, 'A Modern Approach To Verbal & Non-Verbal Reasoning', '2013-01-18 20:28:50'),
(40, 6, 556, 'http://www.simplybooks.in/modern-approach-verbal-non-r-s-book-isbn-9788121905510-479050', 'Delivery in 3-5 business days.', 0, 'A Modern Approach To Verbal & Non-Verbal Reasoning', '2013-01-18 20:29:17'),
(40, 8, 94, 'http://www.simplybooks.in/every-galaxy-has-a-na-book-isbn-9788121932899-542944', 'Delivery in 3-5 business days.', 0, 'Every Galaxy Has A Black Hole', '2013-01-18 20:48:55'),
(40, 9, 293, 'http://www.simplybooks.in/mechanical-engineering-objective-type-ds-kumar-book-isbn-9788188458219-2349', 'Delivery in 3-5 business days.', 0, 'Mechanical Engineering (Objective Type)', '2013-01-18 21:16:11'),
(40, 12, 168, 'http://www.simplybooks.in/notes-corporate-laws-secretarial-upendra-prasad-book-isbn-9788177333527-346', 'Delivery in 3-5 business days.', 0, 'Notes On Corporate Laws & Secretarial Practice', '2013-01-19 15:34:25'),
(40, 13, 360, 'http://www.simplybooks.in/saints-kashmir-a-galaxy-kl-kalla-book-isbn-9788126134014-23172', 'Delivery in 3-5 business days.', 0, 'Saints Of Kashmir-A Galaxy', '2013-01-23 19:22:54'),
(40, 14, 293, 'http://www.simplybooks.in/mechanical-engineering-objective-type-ds-kumar-book-isbn-9788188458219-2349', 'Delivery in 3-5 business days.', 0, 'Mechanical Engineering (Objective Type)', '2013-01-23 19:24:50'),
(40, 16, 266, 'http://www.simplybooks.in/undercover-philosopher-michael-philips-book-isbn-9781851685813-35302', 'Delivery in 3-5 business days.', 0, 'The Undercover Philosopher', '2013-01-23 19:30:05'),
(40, 17, 189, 'http://www.simplybooks.in/database-management-system-mdu-pk-yadav-book-isbn-9789380027340-2124', 'Delivery in 3-5 business days.', 0, 'Database Management System (Mdu)', '2013-01-23 19:31:20'),
(40, 19, 360, 'http://www.simplybooks.in/saints-kashmir-a-galaxy-kl-kalla-book-isbn-9788126134014-23172', 'Delivery in 3-5 business days.', 0, 'Saints Of Kashmir-A Galaxy', '2013-01-23 19:36:44'),
(40, 20, 225, 'http://www.simplybooks.in/fundamentals-network-analysis-synthesis-km-soni-book-isbn-9789380027838-2329', 'Delivery in 3-5 business days.', 0, 'Fundamentals Of Network Analysis & Synthesis', '2013-01-23 19:38:06'),
(40, 21, 560, 'http://www.simplybooks.in/women-education-mishra-book-isbn-9788176488839-1191', 'Delivery in 3-5 business days.', 0, 'Women Education', '2013-01-23 19:40:14'),
(40, 22, 560, 'http://www.simplybooks.in/women-education-mishra-book-isbn-9788176488839-1191', 'Delivery in 3-5 business days.', 0, 'Women Education', '2013-01-23 19:42:44'),
(40, 23, 225, 'http://www.simplybooks.in/life-refrigerator-door-alice-kuipers-book-isbn-9780330456456-79921', 'Delivery in 3-5 business days.', 0, 'Life On The Refrigerator Door', '2013-01-23 19:44:20'),
(40, 24, 948, 'http://www.simplybooks.in/nikon-d3100-digital-field-wiley-thomas-book-isbn-9780470648650-103313', 'Delivery in 3-5 business days.', 0, 'Nikon D3100 Digital Field Guide Nikon D3100 Digital Field Guide', '2013-01-23 19:45:06'),
(40, 26, 58385, 'http://www.simplybooks.in/renewable-energy-four-volume-bent-srensen-book-isbn-9781844078677-103218', 'Delivery in 3-5 business days.', 0, 'Renewable Energy, Four Volume Set', '2013-01-23 21:46:03'),
(40, 27, 523, 'http://www.simplybooks.in/course-electronics-electrical-measurements-jb-gupta-book-isbn-9788188458936-2199', 'Delivery in 3-5 business days.', 0, 'A Course In Electronics & Electrical Measurements And Instrumentation', '2013-01-23 22:15:49'),
(40, 28, 523, 'http://www.simplybooks.in/course-electronics-electrical-measurements-jb-gupta-book-isbn-9788188458936-2199', 'Delivery in 3-5 business days.', 0, 'A Course In Electronics & Electrical Measurements And Instrumentation', '2013-01-23 22:17:11'),
(40, 29, 1143, 'http://www.simplybooks.in/canon-powershot-digital-field-guncheon-michael-book-isbn-9780470174616-395771', 'Delivery in 3-5 business days.', 0, 'Canon Powershot Digital Field Guide', '2013-01-23 22:27:24'),
(40, 31, 293, 'http://www.simplybooks.in/mechanical-engineering-objective-type-ds-kumar-book-isbn-9788188458219-2349', 'Delivery in 3-5 business days.', 0, 'Mechanical Engineering (Objective Type)', '2013-01-23 22:36:42'),
(40, 33, 446, 'http://www.simplybooks.in/meaning-wife-anne-kingston-book-isbn-9780749926007-71163', 'Delivery in 3-5 business days.', 0, 'Meaning Of Wife', '2013-01-28 19:40:00'),
(40, 38, 796, 'http://www.simplybooks.in/big-think-strategy-how-bernd-h-book-isbn-9781422103210-10557', 'Delivery in 3-5 business days.', 0, 'Big Think Strategy: How To Leverage Bold Ideas And Leave Small Thinking Behind', '2013-02-12 22:56:13'),
(40, 39, 796, 'http://www.simplybooks.in/big-think-strategy-how-bernd-h-book-isbn-9781422103210-10557', 'Delivery in 3-5 business days.', 0, 'Big Think Strategy: How To Leverage Bold Ideas And Leave Small Thinking Behind', '2013-02-12 22:56:52'),
(40, 40, 309, 'http://www.simplybooks.in/mercantile-laws-cpt-ca-dr-r-book-isbn-978-875', 'Delivery in 3-5 business days.', 0, 'Mercantile Laws (Cpt To Ca Course)', '2013-02-19 17:34:10'),
(40, 43, 913, 'http://www.simplybooks.in/samsung-electronics-struggle-leadership-tony-michell-book-isbn-9780470822661-50961', 'Delivery in 3-5 business days.', 0, 'Samsung Electronics: And The Struggle For Leadership Of The Electronics Industry', '2013-02-21 16:35:12'),
(40, 45, 353, 'http://www.simplybooks.in/introduction-embedded-systems-k-shibu-book-isbn-9780070145894-101578', 'Delivery in 3-5 business days.', 0, 'Introduction To Embedded Systems', '2013-02-22 08:13:59'),
(40, 48, 360, 'http://www.simplybooks.in/saints-kashmir-a-galaxy-kl-kalla-book-isbn-9788126134014-23172', 'Delivery in 3-5 business days.', 0, 'Saints Of Kashmir-A Galaxy', '2013-02-24 10:53:20'),
(40, 49, 293, 'http://www.simplybooks.in/mechanical-engineering-objective-type-ds-kumar-book-isbn-9788188458219-2349', 'Delivery in 3-5 business days.', 0, 'Mechanical Engineering (Objective Type)', '2013-02-24 10:57:24'),
(40, 50, 293, 'http://www.simplybooks.in/mechanical-engineering-objective-type-ds-kumar-book-isbn-9788188458219-2349', 'Delivery in 3-5 business days.', 0, 'Mechanical Engineering (Objective Type)', '2013-02-24 10:58:29'),
(40, 51, 293, 'http://www.simplybooks.in/mechanical-engineering-objective-type-ds-kumar-book-isbn-9788188458219-2349', 'Delivery in 3-5 business days.', 0, 'Mechanical Engineering (Objective Type)', '2013-02-24 13:13:22'),
(40, 52, 913, 'http://www.simplybooks.in/samsung-electronics-struggle-leadership-tony-michell-book-isbn-9780470822661-50961', 'Delivery in 3-5 business days.', 0, 'Samsung Electronics: And The Struggle For Leadership Of The Electronics Industry', '2013-02-24 16:35:48'),
(40, 53, 913, 'http://www.simplybooks.in/samsung-electronics-struggle-leadership-tony-michell-book-isbn-9780470822661-50961', 'Delivery in 3-5 business days.', 0, 'Samsung Electronics: And The Struggle For Leadership Of The Electronics Industry', '2013-02-24 16:38:40'),
(40, 56, 446, 'http://www.simplybooks.in/blackberry-rod-mcqueen-book-isbn-9789350092132-51957', 'Delivery in 3-5 business days.', 0, 'Blackberry', '2013-02-28 02:32:53'),
(40, 58, 1086, 'http://www.simplybooks.in/humble-little-condom-collier-aine-book-isbn-9781591025566-383720', 'Delivery in 3-5 business days.', 0, 'The Humble Little Condom', '2013-02-28 03:55:25'),
(40, 60, 225, 'http://www.simplybooks.in/fundamentals-network-analysis-synthesis-km-soni-book-isbn-9789380027838-2329', 'Delivery in 3-5 business days.', 0, 'Fundamentals Of Network Analysis & Synthesis', '2013-02-28 19:27:09'),
(40, 61, 225, 'http://www.simplybooks.in/fundamentals-network-analysis-synthesis-km-soni-book-isbn-9789380027838-2329', 'Delivery in 3-5 business days.', 0, 'Fundamentals Of Network Analysis & Synthesis', '2013-02-28 19:28:18'),
(40, 64, 660, 'http://www.simplybooks.in/structural-dynamics-paz-mario-book-isbn-9781402076671-239583', 'Delivery in 3-5 business days.', 0, 'Structural Dynamics', '2013-03-04 20:09:09'),
(40, 65, 356, 'http://www.simplybooks.in/structural-dynamics-vibrations-systems-mukhopadhyay-madhujit-book-isbn-9788180520907-11107', 'Delivery in 3-5 business days.', 0, 'Structural Dynamics : Vibrations & Systems', '2013-03-04 20:18:36'),
(40, 66, 1166, 'http://www.simplybooks.in/dynamics-leadership-public-service-montgomery-van-book-isbn-9788179925348-83055', 'Delivery in 3-5 business days.', 0, 'Dynamics Of Leadership In Public Service: Theory And Practice', '2013-03-04 20:19:03'),
(40, 67, 660, 'http://www.simplybooks.in/structural-dynamics-paz-mario-book-isbn-9781402076671-239583', 'Delivery in 3-5 business days.', 0, 'Structural Dynamics', '2013-03-04 20:20:07'),
(40, 68, 167, 'http://www.simplybooks.in/theory-computation-rgtu-adesh-k-book-isbn-9789380027982-2143', 'Delivery in 3-5 business days.', 0, 'Theory Of Computation (Rgtu)', '2013-03-04 21:34:54'),
(40, 69, 660, 'http://www.simplybooks.in/structural-dynamics-paz-mario-book-isbn-9781402076671-239583', 'Delivery in 3-5 business days.', 0, 'Structural Dynamics', '2013-03-04 21:36:10'),
(40, 70, 320, 'http://www.simplybooks.in/income-tax-act-pocket-bharats-book-isbn-9788177334722-314', 'Delivery in 3-5 business days.', 0, 'Income Tax Act (Pocket)', '2013-03-04 23:09:03'),
(40, 71, 353, 'http://www.simplybooks.in/introduction-embedded-systems-k-shibu-book-isbn-9780070145894-101578', 'Delivery in 3-5 business days.', 0, 'Introduction To Embedded Systems', '2013-03-07 11:01:15');

-- --------------------------------------------------------

--
-- Table structure for table `snapdeal`
--

CREATE TABLE IF NOT EXISTS `snapdeal` (
  `WebsiteID` int(10) NOT NULL,
  `ProductId` int(10) NOT NULL,
  `Price` int(10) NOT NULL,
  `Link` text NOT NULL,
  `DeliveryTime` text NOT NULL,
  `EMI` int(1) NOT NULL DEFAULT '1',
  `Title` text NOT NULL,
  `Time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `snapdeal`
--

INSERT INTO `snapdeal` (`WebsiteID`, `ProductId`, `Price`, `Link`, `DeliveryTime`, `EMI`, `Title`, `Time`) VALUES
(9, 1, 20900, 'http://www.snapdeal.com/product/samsung-galaxy-grand-duos-i9082/638689/?pos=0;0;34', 'Delivered in 2-4 business days.', 1, 'Samsung Galaxy Grand Duos I9082', '2013-01-18 16:53:57'),
(9, 2, 149, 'http://www.snapdeal.com/product/atitude-snap-on-cover-for/1481952?pos=0;1', 'Delivered in 2-4 business days.', 1, '', '2013-01-18 17:35:05'),
(9, 3, 7290, 'http://www.snapdeal.com/product/samsung-galaxy-y-duos-s6102/127381/?pos=0;0;95', 'Delivered in 2-4 business days.', 1, 'Samsung Galaxy Y Duos S6102 Strong Black', '2013-01-18 17:36:02'),
(9, 8, 11075, 'http://www.snapdeal.com/product/samsung-galaxy-s-duos-s7562/431132/?pos=0;0;44', 'Delivered in 2-4 business days.', 1, 'Samsung Galaxy S Duos S7562 Black ', '2013-01-18 20:48:52'),
(9, 9, 36850, 'http://www.snapdeal.com/product/apple-iphone-4s16gbblack/67260/?pos=0;0;226', 'Delivered in 2-4 business days.', 1, 'Apple Iphone 4S-16GB-Black', '2013-01-18 21:16:08'),
(9, 11, 248, 'http://www.snapdeal.com/product/morisons-baby-dreams-baby-soap/503714/?pos=0;0;53', 'Delivered in 2-4 business days.', 1, 'Morisons Baby Dreams Baby Soap Blossom 100 Gm. (3 Pcs. Set)', '2013-01-19 15:32:37'),
(9, 12, 26500, 'http://www.snapdeal.com/product/samsung-galaxy-note-n7000-ceramic/430793/?pos=0;0;109', 'Delivered in 2-4 business days.', 1, 'Samsung Galaxy Note N7000 Ceramic White', '2013-01-19 15:34:12'),
(9, 13, 1849, 'http://www.snapdeal.com/product/samsung-hdtv-adaptor-m-epl3fhubeginu/589583/?pos=0;0;416', 'Delivered in 2-4 business days.', 1, 'Samsung  HDTV Adaptor M  EPL-3FHUBEGINU for Galaxy S 3', '2013-01-23 19:22:51'),
(9, 14, 44990, 'http://www.snapdeal.com/product/apple-iphone5-16gbwhite/438015/?pos=0;0;189', 'Delivered in 2-4 business days.', 1, 'Apple iPhone-5 16GB-White', '2013-01-23 19:24:47'),
(9, 15, 125, 'http://www.snapdeal.com/product/mono-mono-nokia-lumia-800/1370853/?pos=0;0;32', 'Delivered in 2-4 business days.', 1, 'Mono Nokia lumia 800 Screen Guard Screen Guard Nokia lumia 800', '2013-01-23 19:27:48'),
(9, 18, 1613, 'http://www.snapdeal.com/product/huawei-e303-datacard/125654/?pos=0;0;11', 'Delivered in 2-4 business days.', 1, 'Huawei E303 Datacard', '2013-01-23 19:33:09'),
(9, 19, 18999, 'http://www.snapdeal.com/product/samsung-galaxy-tab2p3100-white/125743/?pos=0;0;26', 'Delivered in 2-4 business days.', 1, 'Samsung Galaxy Tab2-P3100 (White)', '2013-01-23 19:36:39'),
(9, 22, 499, 'http://www.snapdeal.com/product/big-bag-world-pink-black/621749/?pos=0;0;50', 'Delivered in 2-4 business days.', 1, 'Big Bag World Pink & Black Tote Bags Combo', '2013-01-23 19:42:41'),
(9, 29, 8725, 'http://www.snapdeal.com/product/canon-power-shot-sx-150/54899/?pos=0;0;32', 'Delivered in 2-4 business days.', 1, 'Canon Power Shot SX 150 IS 14MP Point & Shoot (Black)', '2013-01-23 22:27:32'),
(9, 39, 20400, 'http://www.snapdeal.com/product/blackberry-bold-5-9790black/53076/?pos=0;0;122', 'Delivered in 2-4 business days.', 1, 'Blackberry Bold 5 9790 Black', '2013-02-12 22:56:49'),
(9, 34, 125, 'http://www.snapdeal.com/product/mono-mono-nokia-lumia-900/1370850?pos=0;29', 'Delivered in 2-4 business days.', 1, '', '2013-02-19 17:36:19'),
(9, 43, 13100, 'http://www.snapdeal.com/product/samsung-galaxy-grand-duos-i9082/638689/?pos=0;0;1060', 'Delivered in 2-4 business days.', 1, 'Samsung Galaxy Grand Duos I9082', '2013-02-21 16:35:08'),
(9, 48, 13100, 'http://www.snapdeal.com/product/samsung-galaxy-grand-duos-i9082/638689/?pos=0;0;403', 'Delivered in 2-4 business days.', 1, 'Samsung Galaxy Grand Duos I9082', '2013-02-24 10:53:19'),
(9, 50, 34700, 'http://www.snapdeal.com/product/apple-iphone-4s16gbwhite/594187/?pos=0;0;61', 'Delivered in 2-4 business days.', 1, 'Apple Iphone 4S-16GB-White', '2013-02-24 10:58:26'),
(9, 51, 81900, 'http://www.snapdeal.com/product/apple-md093hna-imac-215-inch/630470/?pos=0;0;272', 'Delivered in 2-4 business days.', 1, 'Apple MD093HN-A iMac 21.5 Inch quad-core i5 2.7GHz-8GB-1TB-GeForce GT 640M 512MB', '2013-02-24 13:13:24'),
(9, 47, 125, 'http://www.snapdeal.com/product/mono-mono-nokia-lumia-920/1370843/?pos=0;0;31', 'Delivered in 2-4 business days.', 1, 'Mono Nokia Lumia 920 BlackÂ  Screen Guard Screen Guard Nokia Lumia 920 BlackÂ ', '2013-02-27 03:09:47'),
(9, 46, 125, 'http://www.snapdeal.com/product/mono-mono-nokia-lumia-610/1370911/?pos=0;0;17', 'Delivered in 2-4 business days.', 1, 'Mono Nokia Lumia 610 Screen Guard Screen Guard Nokia Lumia 610', '2013-02-27 19:34:24'),
(9, 20, 125, 'http://www.snapdeal.com/product/mono-mono-sony-xperia-j/1370875/?pos=0;0;19', 'Delivered in 2-4 business days.', 1, 'Mono Sony Xperia J Screen Guard Screen Guard Sony Xperia J', '2013-02-27 22:18:15'),
(9, 55, 125, 'http://www.snapdeal.com/product/mono-mono-nokia-lumia-710/1370796/?pos=0;0;43', 'Delivered in 2-4 business days.', 1, 'Mono Nokia Lumia 710 Screen Guard Screen Guard Nokia Lumia 710', '2013-02-28 02:05:13'),
(9, 56, 42900, 'http://www.snapdeal.com/product/blackberry-z10/679463/?pos=0;0;27', 'Delivered in 2-4 business days.', 1, 'Blackberry Z10', '2013-02-28 02:32:46'),
(9, 58, 2948, 'http://www.snapdeal.com/product/fc-female-condom-quantity-3/1404784/?pos=0;0;229', 'Delivered in 2-4 business days.', 1, 'FC Female Condom - Quantity - 3 Pack-SCK', '2013-02-28 03:55:23'),
(9, 35, 6118, 'http://www.snapdeal.com/product/NokiaAsha3/91935/?pos=0;0;6', 'Delivered in 2-4 business days.', 1, 'Nokia Asha 302 (D.Grey)', '2013-02-28 04:25:24'),
(9, 10, 4330, 'http://www.snapdeal.com/product/nokia-asha-305-dark-grey/190331?pos=0;4', 'Delivered in 2-4 business days.', 1, '', '2013-02-28 04:48:18'),
(9, 36, 3790, 'http://www.snapdeal.com/product/NokiaAsha2/93144/?pos=0;0;6', 'Delivered in 2-4 business days.', 1, 'Nokia Asha 202 (Dark Grey)', '2013-02-28 04:49:35'),
(9, 24, 28288, 'http://www.snapdeal.com/product/nikon-dslr-d5100-black-with/1175496/?pos=0;0;3', 'Delivered in 2-4 business days.', 1, 'Nikon DSLR D5100 (Black) with AF-S 18-55mm VR Kit Lens', '2013-02-28 04:53:53'),
(9, 26, 520, 'http://www.snapdeal.com/product/sandisk-cruzer-blade-16gb-pen/28914?pos=0;50', 'Delivered in 2-4 business days.', 1, '', '2013-02-28 19:24:06'),
(9, 59, 520, 'http://www.snapdeal.com/product/sandisk-cruzer-blade-16gb-pen/28914?pos=0;56', 'Delivered in 2-4 business days.', 1, '', '2013-02-28 19:26:11'),
(9, 60, 375, 'http://www.snapdeal.com/product/sony-micro-sd-memory-card/407006?pos=0;34', 'Delivered in 2-4 business days.', 1, '', '2013-02-28 19:27:01'),
(9, 61, 380, 'http://www.snapdeal.com/product/SonyMicroV/57054?pos=0;34', 'Delivered in 2-4 business days.', 1, '', '2013-02-28 19:28:15'),
(9, 70, 355, 'http://www.snapdeal.com/product/nightingale-art-cover-pocket-planner/415967?pos=0;27', 'Delivered in 2-4 business days.', 1, '', '2013-03-04 23:08:58'),
(9, 71, 20320, 'http://www.snapdeal.com/product/ifb-eva-vx-front-load/242630/?pos=0;0;352', 'Delivered in 2-4 business days.', 1, 'IFB Eva Vx Front Load 5.5 Kg Washing Machine', '2013-03-07 11:01:10'),
(9, 72, 13099, 'http://www.snapdeal.com/product/samsung-galaxy-s-duos-s7562/431132/?pos=0;0;317', 'Delivered in 2-4 business days.', 1, 'Samsung Galaxy S Duos S7562 Black ', '2013-03-17 20:37:17'),
(9, 73, 28999, 'http://www.snapdeal.com/product/samsung-galaxy-s3-i9300-marble/127355/?pos=0;0;399', 'Delivered in 2-4 business days.', 1, 'Samsung Galaxy S3 -I9300 (Marble White)', '2013-03-19 14:59:59'),
(9, 74, 42900, 'http://www.snapdeal.com/product/blackberry-z10/679463/?pos=0;0;10', 'Delivered in 2-4 business days.', 1, 'Blackberry Z10', '2013-03-19 15:06:04'),
(9, 77, 400, 'http://www.snapdeal.com/product/screenward-pack-of-5-screen/1447115?pos=0;32', 'Delivered in 2-4 business days.', 1, '', '2013-03-19 15:12:55'),
(9, 78, 20900, 'http://www.snapdeal.com/product/samsung-galaxy-grand-duos-i9082/638689?pos=0;1', 'Delivered in 2-4 business days.', 1, '', '2013-03-19 19:06:25'),
(9, 79, 1240, 'http://www.snapdeal.com/product/transcend-microsd-card-16gb-class/42319/?pos=0;0;119', 'Delivered in 2-4 business days.', 1, 'Transcend MicroSD Card 16GB Class 4', '2013-03-19 19:15:28'),
(9, 80, 37990, 'http://www.snapdeal.com/product/sony-xperia-z/685812?pos=0;1', 'Delivered in 2-4 business days.', 1, '', '2013-03-21 16:44:59'),
(9, 82, 999, 'http://www.snapdeal.com/product/united-colors-of-benetton-supercool/761975/?pos=0;0;332', 'Delivered in 2-4 business days.', 1, 'United Colors Of Benetton Supercool Sunglasses', '2013-03-21 17:00:54'),
(9, 85, 3771, 'http://www.snapdeal.com/product/samsung-rex-60/676459?pos=0;4', 'Delivered in 2-4 business days.', 1, '', '2013-03-21 17:12:16'),
(9, 86, 13200, 'http://www.snapdeal.com/product/micromax-a116-canvas-hd/667088/?pos=0;0;9', 'Delivered in 2-4 business days.', 1, 'Micromax A116 Canvas HD', '2013-03-28 22:46:55'),
(9, 89, 78549, 'http://www.snapdeal.com/product/samsung-40-inches-full-hd/226262/?pos=0;0;86', 'Delivered in 2-4 business days.', 1, 'Samsung 40 inches Full HD LED 40ES6200 3D Television', '2013-03-29 10:24:03'),
(9, 90, 906, 'http://www.snapdeal.com/product/thomas-friends-movie-theater-storybook/750989/?pos=0;0;47', 'Delivered in 2-4 business days.', 1, 'Thomas & Friends Movie Theater: Storybook And Movie Projector [With Movie Projector]', '2013-04-05 19:26:14'),
(9, 91, 125, 'http://www.snapdeal.com/product/mono-mono-nokia-lumia-510/1370913/?pos=0;0;18', 'Delivered in 2-4 business days.', 1, 'Mono Nokia Lumia 510 Black Screen Guard Screen Guard Nokia Lumia 510 Black', '2013-07-03 15:54:25'),
(9, 25, 4949, 'http://www.snapdeal.com/product/scratch-guard-original-hd-clearscreen/1497400/?pos=0;0;2', 'Delivered in 2-4 business days.', 1, 'Scratch Guard Original HD ClearScreen Protector for Micromax - A57 Ninja3', '2013-07-04 02:46:43'),
(9, 4, 560, 'http://www.snapdeal.com/product/a-modern-approach-to-verbal/769411/?pos=0;0;3', 'Delivered in 2-4 business days.', 1, 'Modern Approach to Verbal & Non-Verbal Reasoning,A', '2013-07-04 02:58:14'),
(9, 45, 30490, 'http://www.snapdeal.com/product/samsung-wf600b0bkwqtl-60-kg-front/1251819?pos=0;34', 'Delivered in 2-4 business days.', 1, '', '2013-07-04 05:17:19'),
(9, 93, 1990, 'http://www.snapdeal.com/product/nokia-109-black/1477170?pos=0;2', 'Delivered in 2-4 business days.', 1, '', '2013-07-04 05:25:28'),
(9, 94, 2190, 'http://www.snapdeal.com/product/nokia-114-cyan/609405/?pos=0;0;4', 'Delivered in 2-4 business days.', 1, 'Nokia 114 (Cyan)', '2013-07-04 05:28:06'),
(9, 49, 43500, 'http://www.snapdeal.com/product/apple-iphone5-16gbwhite/438015/?pos=0;0;1907', 'Delivered in 2-4 business days.', 1, 'Apple iPhone 5-16GB White', '2013-07-04 16:05:23'),
(9, 96, 1458, 'http://www.snapdeal.com/product/ipad-geekery-50-insanely-cool/746294/?pos=0;0;178', 'Delivered in 2-4 business days.', 1, 'iPad Geekery: 50 Insanely Cool Hacks and Mods for Your Apple Tablet', '2013-07-04 16:06:18'),
(9, 54, 2474, 'http://www.snapdeal.com/product/netgear-n300-gigabit-router-jnr3000/648580?pos=0;10', 'Delivered in 2-4 business days.', 1, '', '2013-07-04 19:02:29'),
(9, 0, 8359, 'http://www.snapdeal.com/product/ricoh-b-and-w-laser/613157/?pos=0;0;211', 'Delivered in 2-4 business days.', 1, 'Ricoh B and W Laser Printers - Aficio SP 1210N Single Function Laser Printer', '2013-07-07 09:45:00'),
(9, 31, 5565, 'http://www.snapdeal.com/product/grifiti-deck-17-lap-desk/1423408/?pos=0;0;19', 'Delivered in 2-4 business days.', 1, 'Grifiti Deck 17 Lap Desk for Apple Macbook Pro 17 Laptops Notebooks Keyboard Platform for Standard Keyboards Ipads and Writing', '2013-07-26 20:29:25');

-- --------------------------------------------------------

--
-- Table structure for table `straightline`
--

CREATE TABLE IF NOT EXISTS `straightline` (
  `WebsiteID` int(10) NOT NULL,
  `ProductId` int(10) NOT NULL,
  `Price` int(10) NOT NULL,
  `Link` text NOT NULL,
  `DeliveryTime` text NOT NULL,
  `EMI` int(1) NOT NULL DEFAULT '0',
  `Title` text NOT NULL,
  `Time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `straightline`
--

INSERT INTO `straightline` (`WebsiteID`, `ProductId`, `Price`, `Link`, `DeliveryTime`, `EMI`, `Title`, `Time`) VALUES
(23, 1, 5933, 'http://www.straightline.in/CatalogSearchResultView?&ip_mode=&catalogId=10051&ip_constrain=&SearchType=SimpleSearch&beginIndex=0&resultCatEntryType=2&storeId=10953&searchTerm=samsung+duos&ip_categoryId=&ip_requestUri=TopCategoriesDisplay&sType=SimpleSearch&ddkey=http:SearchKeywordCmd', 'Delivery in 1-2 business days.', 0, '\r\n						\r\r\n	\r\r\n	\r\r\n	\r\r\n	Samsung STAR DUOS 5522\r\r\n	\r\r\n	\r\n					', '2013-01-18 16:54:03'),
(23, 3, 7896, 'http://www.straightline.in/CatalogSearchResultView?&ip_mode=&catalogId=10051&ip_constrain=&SearchType=SimpleSearch&beginIndex=0&resultCatEntryType=2&storeId=10953&searchTerm=Samsung+Galaxy+Y+Duos+GT-S6102+(Black)&ip_categoryId=&ip_requestUri=TopCategoriesDisplay&sType=SimpleSearch&ddkey=http:SearchKeywordCmd', 'Delivery in 1-2 business days.', 0, '\r\n						\r\r\n	\r\r\n	\r\r\n	\r\r\n	Samsung S6102 Galaxy Y Duos Mobile\r\r\n	\r\r\n	\r\n					', '2013-01-18 17:36:03'),
(23, 4, 399, 'http://www.straightline.in/CatalogSearchResultView?&ip_mode=&catalogId=10051&ip_constrain=&SearchType=SimpleSearch&beginIndex=0&resultCatEntryType=2&storeId=10953&searchTerm=a+modern+approach+to+verbal+and+non+verbal+reasoning&ip_categoryId=&ip_requestUri=TopCategoriesDisplay&sType=SimpleSearch&ddkey=http:SearchKeywordCmd', 'Delivery in 1-2 business days.', 0, '\r\n						\r\r\n	\r\r\n	\r\r\n	\r\r\n	Car Non Slip Paddle\r\r\n	\r\r\n	\r\n					', '2013-01-18 20:24:41'),
(23, 0, 7644, 'http://www.straightline.in/CatalogSearchResultView?&ip_mode=&catalogId=10051&ip_constrain=&SearchType=SimpleSearch&beginIndex=0&resultCatEntryType=2&storeId=10953&searchTerm=laser+printer\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\&ip_categoryId=&ip_requestUri=TopCategoriesDisplay&sType=SimpleSearch&ddkey=http:SearchKeywordCmd', 'Delivery in 1-2 business days.', 0, '\r\n						\r\r\n	\r\r\n	\r\r\n	\r\r\n	PRINTER RICOH LASERJET\r\r\n	\r\r\n	\r\n					', '2013-01-18 20:28:49'),
(23, 6, 785, 'http://www.straightline.in/CatalogSearchResultView?&ip_mode=&catalogId=10051&ip_constrain=&SearchType=SimpleSearch&beginIndex=0&resultCatEntryType=2&storeId=10953&searchTerm=A+Modern+Approach+To+Verbal&ip_categoryId=&ip_requestUri=TopCategoriesDisplay&sType=SimpleSearch&ddkey=http:SearchKeywordCmd', 'Delivery in 1-2 business days.', 0, '\r\n						\r\r\n	\r\r\n	\r\r\n	\r\r\n	Modern Designer Rajasthani Cotton Long Skirt -141\r\r\n	\r\r\n	\r\n					', '2013-01-18 20:29:15'),
(23, 8, 29295, 'http://www.straightline.in/CatalogSearchResultView?&ip_mode=&catalogId=10051&ip_constrain=&SearchType=SimpleSearch&beginIndex=0&resultCatEntryType=2&storeId=10953&searchTerm=Samsung+Galaxy+S+Duos+S7562+(Black)&ip_categoryId=&ip_requestUri=TopCategoriesDisplay&sType=SimpleSearch&ddkey=http:SearchKeywordCmd', 'Delivery in 1-2 business days.', 0, '\r\n						\r\r\n	\r\r\n	\r\r\n	\r\r\n	Samsung Galaxy SII I9100\r\r\n	\r\r\n	\r\n					', '2013-01-18 20:48:53'),
(23, 9, 36068, 'http://www.straightline.in/CatalogSearchResultView?&ip_mode=&catalogId=10051&ip_constrain=&SearchType=SimpleSearch&beginIndex=0&resultCatEntryType=2&storeId=10953&searchTerm=apple+iphone+4s+case&ip_categoryId=&ip_requestUri=TopCategoriesDisplay&sType=SimpleSearch&ddkey=http:SearchKeywordCmd', 'Delivery in 1-2 business days.', 0, '\r\n						\r\r\n	\r\r\n	\r\r\n	\r\r\n	Apple Iphone 4 8GB\r\r\n	\r\r\n	\r\n					', '2013-01-18 21:16:08'),
(23, 10, 4804, 'http://www.straightline.in/CatalogSearchResultView?&ip_mode=&catalogId=10051&ip_constrain=&SearchType=SimpleSearch&beginIndex=0&resultCatEntryType=2&storeId=10953&searchTerm=nokia+asha+305&ip_categoryId=&ip_requestUri=TopCategoriesDisplay&sType=SimpleSearch&ddkey=http:SearchKeywordCmd', 'Delivery in 1-2 business days.', 0, '\r\n						\r\r\n	\r\r\n	\r\r\n	\r\r\n	NOKIA ASHA 305\r\r\n	\r\r\n	\r\n					', '2013-01-19 01:05:44'),
(23, 11, 577, 'http://www.straightline.in/CatalogSearchResultView?&ip_mode=&catalogId=10051&ip_constrain=&SearchType=SimpleSearch&beginIndex=0&resultCatEntryType=2&storeId=10953&searchTerm=baby+soaps&ip_categoryId=&ip_requestUri=TopCategoriesDisplay&sType=SimpleSearch&ddkey=http:SearchKeywordCmd', 'Delivery in 1-2 business days.', 0, '\r\n						\r\r\n	\r\r\n	\r\r\n	\r\r\n	Fancy Lacquer Baby Pink Jewellery Necklace Set 128\r\r\n	\r\r\n	\r\n					', '2013-01-19 15:32:38'),
(23, 12, 37530, 'http://www.straightline.in/CatalogSearchResultView?&ip_mode=&catalogId=10051&ip_constrain=&SearchType=SimpleSearch&beginIndex=0&resultCatEntryType=2&storeId=10953&searchTerm=samsung+galaxy+note+2&ip_categoryId=&ip_requestUri=TopCategoriesDisplay&sType=SimpleSearch&ddkey=http:SearchKeywordCmd', 'Delivery in 1-2 business days.', 0, '\r\n						\r\r\n	\r\r\n	\r\r\n	\r\r\n	Samsung Galaxy Note 2 N7100 Mobile\r\r\n	\r\r\n	\r\n					', '2013-01-19 15:34:13'),
(23, 13, 32457, 'http://www.straightline.in/CatalogSearchResultView?&ip_mode=&catalogId=10051&ip_constrain=&SearchType=SimpleSearch&beginIndex=0&resultCatEntryType=2&storeId=10953&searchTerm=samsung+galaxy+s3&ip_categoryId=&ip_requestUri=TopCategoriesDisplay&sType=SimpleSearch&ddkey=http:SearchKeywordCmd', 'Delivery in 1-2 business days.', 0, '\r\n						\r\r\n	\r\r\n	\r\r\n	\r\r\n	Samsung i9300 16GB Galaxy S3  Mobile\r\r\n	\r\r\n	\r\n					', '2013-01-23 19:22:53'),
(23, 14, 160, 'http://www.straightline.in/CatalogSearchResultView?&ip_mode=&catalogId=10051&ip_constrain=&SearchType=SimpleSearch&beginIndex=0&resultCatEntryType=2&storeId=10953&searchTerm=apple+iphone5&ip_categoryId=&ip_requestUri=TopCategoriesDisplay&sType=SimpleSearch&ddkey=http:SearchKeywordCmd', 'Delivery in 1-2 business days.', 0, '\r\n						\r\r\n	\r\r\n	\r\r\n	\r\r\n	SOLAR APPLE\r\r\n	\r\r\n	\r\n					', '2013-01-23 19:24:48'),
(23, 15, 24763, 'http://www.straightline.in/CatalogSearchResultView?&ip_mode=&catalogId=10051&ip_constrain=&SearchType=SimpleSearch&beginIndex=0&resultCatEntryType=2&storeId=10953&searchTerm=Nokia+Lumia+800&ip_categoryId=&ip_requestUri=TopCategoriesDisplay&sType=SimpleSearch&ddkey=http:SearchKeywordCmd', 'Delivery in 1-2 business days.', 0, '\r\n						\r\r\n	\r\r\n	\r\r\n	\r\r\n	NOKIA Lumia 800\r\r\n	\r\r\n	\r\n					', '2013-01-23 19:27:43'),
(23, 17, 675, 'http://www.straightline.in/CatalogSearchResultView?&ip_mode=&catalogId=10051&ip_constrain=&SearchType=SimpleSearch&beginIndex=0&resultCatEntryType=2&storeId=10953&searchTerm=Netgear+JNR1010+N150+Wireless+Router&ip_categoryId=&ip_requestUri=TopCategoriesDisplay&sType=SimpleSearch&ddkey=http:SearchKeywordCmd', 'Delivery in 1-2 business days.', 0, '\r\n						\r\r\n	\r\r\n	\r\r\n	\r\r\n	Amkette Ergo Wireless Mouse\r\r\n	\r\r\n	\r\n					', '2013-01-23 19:31:19'),
(23, 18, 500, 'http://www.straightline.in/CatalogSearchResultView?&ip_mode=&catalogId=10051&ip_constrain=&SearchType=SimpleSearch&beginIndex=0&resultCatEntryType=2&storeId=10953&searchTerm=Huawei+E303C+Data+Card&ip_categoryId=&ip_requestUri=TopCategoriesDisplay&sType=SimpleSearch&ddkey=http:SearchKeywordCmd', 'Delivery in 1-2 business days.', 0, '\r\n						\r\r\n	\r\r\n	\r\r\n	\r\r\n	Shopper Stop Rs 500 Gift Card\r\r\n	\r\r\n	\r\n					', '2013-01-23 19:33:10'),
(23, 19, 18700, 'http://www.straightline.in/CatalogSearchResultView?&ip_mode=&catalogId=10051&ip_constrain=&SearchType=SimpleSearch&beginIndex=0&resultCatEntryType=2&storeId=10953&searchTerm=Samsung+Galaxy+Tab+2+P3100&ip_categoryId=&ip_requestUri=TopCategoriesDisplay&sType=SimpleSearch&ddkey=http:SearchKeywordCmd', 'Delivery in 1-2 business days.', 0, '\r\n						\r\r\n	\r\r\n	\r\r\n	\r\r\n	SAMSUNG Galaxy Tab P3100\r\r\n	\r\r\n	\r\n					', '2013-01-23 19:36:40'),
(23, 20, 17324, 'http://www.straightline.in/CatalogSearchResultView?&ip_mode=&catalogId=10051&ip_constrain=&SearchType=SimpleSearch&beginIndex=0&resultCatEntryType=2&storeId=10953&searchTerm=Sony+Xperia+j&ip_categoryId=&ip_requestUri=TopCategoriesDisplay&sType=SimpleSearch&ddkey=http:SearchKeywordCmd', 'Delivery in 1-2 business days.', 0, '\r\n						\r\r\n	\r\r\n	\r\r\n	\r\r\n	Sony Xperia U/BLACK\r\r\n	\r\r\n	\r\n					', '2013-01-23 19:38:05'),
(23, 21, 1695, 'http://www.straightline.in/CatalogSearchResultView?&ip_mode=&catalogId=10051&ip_constrain=&SearchType=SimpleSearch&beginIndex=0&resultCatEntryType=2&storeId=10953&searchTerm=Fastrack+Tote+-+For+Women&ip_categoryId=&ip_requestUri=TopCategoriesDisplay&sType=SimpleSearch&ddkey=http:SearchKeywordCmd', 'Delivery in 1-2 business days.', 0, '\r\n						\r\r\n	\r\r\n	\r\r\n	\r\r\n	Brown and Black Leather Tote Bag\r\r\n	\r\r\n	\r\n					', '2013-01-23 19:40:11'),
(23, 22, 786, 'http://www.straightline.in/CatalogSearchResultView?&ip_mode=&catalogId=10051&ip_constrain=&SearchType=SimpleSearch&beginIndex=0&resultCatEntryType=2&storeId=10953&searchTerm=Fastrack+Tote+-+For+Women+(Pink)&ip_categoryId=&ip_requestUri=TopCategoriesDisplay&sType=SimpleSearch&ddkey=http:SearchKeywordCmd', 'Delivery in 1-2 business days.', 0, '\r\n						\r\r\n	\r\r\n	\r\r\n	\r\r\n	Sanganeri Hand Block Pink Pure Cotton Womens Skirts -171\r\r\n	\r\r\n	\r\n					', '2013-01-23 19:42:42'),
(23, 23, 6975, 'http://www.straightline.in/CatalogSearchResultView?&ip_mode=&catalogId=10051&ip_constrain=&SearchType=SimpleSearch&beginIndex=0&resultCatEntryType=2&storeId=10953&searchTerm=Electrolux+EBE183BR+Single+Door+170+Litres+Refrigerator&ip_categoryId=&ip_requestUri=TopCategoriesDisplay&sType=SimpleSearch&ddkey=http:SearchKeywordCmd', 'Delivery in 1-2 business days.', 0, '\r\n						\r\r\n	\r\r\n	\r\r\n	\r\r\n	Videocon Direct Cool Refrigerator 80  litres VCL093\r\r\n	\r\r\n	\r\n					', '2013-01-23 19:44:18'),
(23, 24, 28817, 'http://www.straightline.in/CatalogSearchResultView?&ip_mode=&catalogId=10051&ip_constrain=&SearchType=SimpleSearch&beginIndex=0&resultCatEntryType=2&storeId=10953&searchTerm=Nikon+D5100+SLR&ip_categoryId=&ip_requestUri=TopCategoriesDisplay&sType=SimpleSearch&ddkey=http:SearchKeywordCmd', 'Delivery in 1-2 business days.', 0, '\r\n						\r\r\n	\r\r\n	\r\r\n	\r\r\n	Nikon D3100 DSLR\r\r\n	\r\r\n	\r\n					', '2013-01-23 19:45:01'),
(23, 25, 111, 'http://www.straightline.in/CatalogSearchResultView?&ip_mode=&catalogId=10051&ip_constrain=&SearchType=SimpleSearch&beginIndex=0&resultCatEntryType=2&storeId=10953&searchTerm=Micromax+Ninja+3+A57&ip_categoryId=&ip_requestUri=TopCategoriesDisplay&sType=SimpleSearch&ddkey=http:SearchKeywordCmd', 'Delivery in 1-2 business days.', 0, '\r\n						\r\r\n	\r\r\n	\r\r\n	\r\r\n	Microman Socks Cotton\r\r\n	\r\r\n	\r\n					', '2013-01-23 20:12:01'),
(23, 26, 601, 'http://www.straightline.in/CatalogSearchResultView?&ip_mode=&catalogId=10051&ip_constrain=&SearchType=SimpleSearch&beginIndex=0&resultCatEntryType=2&storeId=10953&searchTerm=Sandisk+Cruzer+Blade+16+GB+Pen+Drive&ip_categoryId=&ip_requestUri=TopCategoriesDisplay&sType=SimpleSearch&ddkey=http:SearchKeywordCmd', 'Delivery in 1-2 business days.', 0, '\r\n						\r\r\n	\r\r\n	\r\r\n	\r\r\n	Sandisk 16 GB Pen Drive\r\r\n	\r\r\n	\r\n					', '2013-01-23 21:46:01'),
(23, 27, 1095, 'http://www.straightline.in/CatalogSearchResultView?&ip_mode=&catalogId=10051&ip_constrain=&SearchType=SimpleSearch&beginIndex=0&resultCatEntryType=2&storeId=10953&searchTerm=FCUK+Analog+Watch+-+For+Men&ip_categoryId=&ip_requestUri=TopCategoriesDisplay&sType=SimpleSearch&ddkey=http:SearchKeywordCmd', 'Delivery in 1-2 business days.', 0, '\r\n						\r\r\n	\r\r\n	\r\r\n	\r\r\n	Marvel In Marble-Watch And Mobile Holder-033\r\r\n	\r\r\n	\r\n					', '2013-01-23 22:15:48'),
(23, 28, 3232, 'http://www.straightline.in/CatalogSearchResultView?&ip_mode=&catalogId=10051&ip_constrain=&SearchType=SimpleSearch&beginIndex=0&resultCatEntryType=2&storeId=10953&searchTerm=Fastrack+Tees+Analog+Watch+-+Unisex&ip_categoryId=&ip_requestUri=TopCategoriesDisplay&sType=SimpleSearch&ddkey=http:SearchKeywordCmd', 'Delivery in 1-2 business days.', 0, '\r\n						\r\r\n	\r\r\n	\r\r\n	\r\r\n	CARNATION SUNGLASSES I30060 + MODENA DIGI WATCH I18017\r\r\n	\r\r\n	\r\n					', '2013-01-23 22:17:08'),
(23, 29, 7303, 'http://www.straightline.in/CatalogSearchResultView?&ip_mode=&catalogId=10051&ip_constrain=&SearchType=SimpleSearch&beginIndex=0&resultCatEntryType=2&storeId=10953&searchTerm=Canon+PowerShot+SX150+IS+Point&ip_categoryId=&ip_requestUri=TopCategoriesDisplay&sType=SimpleSearch&ddkey=http:SearchKeywordCmd', 'Delivery in 1-2 business days.', 0, '\r\n						\r\r\n	\r\r\n	\r\r\n	\r\r\n	CANON PowerShot A2400\r\r\n	\r\r\n	\r\n					', '2013-01-23 22:27:20'),
(23, 30, 151065, 'http://www.straightline.in/CatalogSearchResultView?&ip_mode=&catalogId=10051&ip_constrain=&SearchType=SimpleSearch&beginIndex=0&resultCatEntryType=2&storeId=10953&searchTerm=macbookpro&ip_categoryId=&ip_requestUri=TopCategoriesDisplay&sType=SimpleSearch&ddkey=http:SearchKeywordCmd', 'Delivery in 1-2 business days.', 0, '\r\n						\r\r\n	\r\r\n	\r\r\n	\r\r\n	Apple MacBook Pro\r\r\n	\r\r\n	\r\n					', '2013-01-23 22:31:53'),
(23, 31, 151065, 'http://www.straightline.in/CatalogSearchResultView?&ip_mode=&catalogId=10051&ip_constrain=&SearchType=SimpleSearch&beginIndex=0&resultCatEntryType=2&storeId=10953&searchTerm=apple+macbook+pro&ip_categoryId=&ip_requestUri=TopCategoriesDisplay&sType=SimpleSearch&ddkey=http:SearchKeywordCmd', 'Delivery in 1-2 business days.', 0, '\r\n						\r\r\n	\r\r\n	\r\r\n	\r\r\n	Apple MacBook Pro\r\r\n	\r\r\n	\r\n					', '2013-01-23 22:36:39'),
(23, 32, 3183, 'http://www.straightline.in/CatalogSearchResultView?&ip_mode=&catalogId=10051&ip_constrain=&SearchType=SimpleSearch&beginIndex=0&resultCatEntryType=2&storeId=10953&searchTerm=2GB+Pendrive&ip_categoryId=&ip_requestUri=TopCategoriesDisplay&sType=SimpleSearch&ddkey=http:SearchKeywordCmd', 'Delivery in 1-2 business days.', 0, '\r\n						\r\r\n	\r\r\n	\r\r\n	\r\r\n	Apple Shuffle 2GB Ipod\r\r\n	\r\r\n	\r\n					', '2013-01-28 19:32:50'),
(23, 33, 3183, 'http://www.straightline.in/CatalogSearchResultView?&ip_mode=&catalogId=10051&ip_constrain=&SearchType=SimpleSearch&beginIndex=0&resultCatEntryType=2&storeId=10953&searchTerm=Kingston+2GB+Pendrive&ip_categoryId=&ip_requestUri=TopCategoriesDisplay&sType=SimpleSearch&ddkey=http:SearchKeywordCmd', 'Delivery in 1-2 business days.', 0, '\r\n						\r\r\n	\r\r\n	\r\r\n	\r\r\n	Apple Shuffle 2GB Ipod\r\r\n	\r\r\n	\r\n					', '2013-01-28 19:39:54'),
(23, 34, 15997, 'http://www.straightline.in/CatalogSearchResultView?&ip_mode=&catalogId=10051&ip_constrain=&SearchType=SimpleSearch&beginIndex=0&resultCatEntryType=2&storeId=10953&searchTerm=Nokia+lumia+900&ip_categoryId=&ip_requestUri=TopCategoriesDisplay&sType=SimpleSearch&ddkey=http:SearchKeywordCmd', 'Delivery in 1-2 business days.', 0, '\r\n						\r\r\n	\r\r\n	\r\r\n	\r\r\n	NOKIA Lumia 710\r\r\n	\r\r\n	\r\n					', '2013-01-30 13:49:36'),
(23, 35, 6599, 'http://www.straightline.in/CatalogSearchResultView?&ip_mode=&catalogId=10051&ip_constrain=&SearchType=SimpleSearch&beginIndex=0&resultCatEntryType=2&storeId=10953&searchTerm=Nokia+asha+302&ip_categoryId=&ip_requestUri=TopCategoriesDisplay&sType=SimpleSearch&ddkey=http:SearchKeywordCmd', 'Delivery in 1-2 business days.', 0, '\r\n						\r\r\n	\r\r\n	\r\r\n	\r\r\n	NOKIA ASHA 302\r\r\n	\r\r\n	\r\n					', '2013-01-30 13:52:00'),
(23, 36, 4036, 'http://www.straightline.in/CatalogSearchResultView?&ip_mode=&catalogId=10051&ip_constrain=&SearchType=SimpleSearch&beginIndex=0&resultCatEntryType=2&storeId=10953&searchTerm=Nokia+asha+202&ip_categoryId=&ip_requestUri=TopCategoriesDisplay&sType=SimpleSearch&ddkey=http:SearchKeywordCmd', 'Delivery in 1-2 business days.', 0, '\r\n						\r\r\n	\r\r\n	\r\r\n	\r\r\n	NOKIA ASHA 202\r\r\n	\r\r\n	\r\n					', '2013-01-30 13:53:05'),
(23, 37, 1742, 'http://www.straightline.in/CatalogSearchResultView?&ip_mode=&catalogId=10051&ip_constrain=&SearchType=SimpleSearch&beginIndex=0&resultCatEntryType=2&storeId=10953&searchTerm=sunglasses&ip_categoryId=&ip_requestUri=TopCategoriesDisplay&sType=SimpleSearch&ddkey=http:SearchKeywordCmd', 'Delivery in 1-2 business days.', 0, '\r\n						\r\r\n	\r\r\n	\r\r\n	\r\r\n	Fastrack M035BK7 Sunglass\r\r\n	\r\r\n	\r\n					', '2013-02-10 23:58:14'),
(23, 38, 26977, 'http://www.straightline.in/CatalogSearchResultView?&ip_mode=&catalogId=10051&ip_constrain=&SearchType=SimpleSearch&beginIndex=0&resultCatEntryType=2&storeId=10953&searchTerm=blackberry+bold+10&ip_categoryId=&ip_requestUri=TopCategoriesDisplay&sType=SimpleSearch&ddkey=http:SearchKeywordCmd', 'Delivery in 1-2 business days.', 0, '\r\n						\r\r\n	\r\r\n	\r\r\n	\r\r\n	BlackBerry Bold 9790 Mobiles\r\r\n	\r\r\n	\r\n					', '2013-02-12 22:56:11'),
(23, 39, 18518, 'http://www.straightline.in/CatalogSearchResultView?&ip_mode=&catalogId=10051&ip_constrain=&SearchType=SimpleSearch&beginIndex=0&resultCatEntryType=2&storeId=10953&searchTerm=blackberry+bold&ip_categoryId=&ip_requestUri=TopCategoriesDisplay&sType=SimpleSearch&ddkey=http:SearchKeywordCmd', 'Delivery in 1-2 business days.', 0, '\r\n						\r\r\n	\r\r\n	\r\r\n	\r\r\n	BlackBerry 9360 Mobile\r\r\n	\r\r\n	\r\n					', '2013-02-12 22:56:50'),
(23, 40, 7559, 'http://www.straightline.in/CatalogSearchResultView?&ip_mode=&catalogId=10051&ip_constrain=&SearchType=SimpleSearch&beginIndex=0&resultCatEntryType=2&storeId=10953&searchTerm=mobile&ip_categoryId=&ip_requestUri=TopCategoriesDisplay&sType=SimpleSearch&ddkey=http:SearchKeywordCmd', 'Delivery in 1-2 business days.', 0, '\r\n						\r\r\n	\r\r\n	\r\r\n	\r\r\n	LG  P350 Mobile\r\r\n	\r\r\n	\r\n					', '2013-02-19 17:34:08'),
(23, 41, 1525, 'http://www.straightline.in/CatalogSearchResultView?&ip_mode=&catalogId=10051&ip_constrain=&SearchType=SimpleSearch&beginIndex=0&resultCatEntryType=2&storeId=10953&searchTerm=Nokias+e+71&ip_categoryId=&ip_requestUri=TopCategoriesDisplay&sType=SimpleSearch&ddkey=http:SearchKeywordCmd', 'Delivery in 1-2 business days.', 0, '\r\n						\r\r\n	\r\r\n	\r\r\n	\r\r\n	NOKIA N101\r\r\n	\r\r\n	\r\n					', '2013-02-19 17:34:47'),
(23, 42, 1525, 'http://www.straightline.in/CatalogSearchResultView?&ip_mode=&catalogId=10051&ip_constrain=&SearchType=SimpleSearch&beginIndex=0&resultCatEntryType=2&storeId=10953&searchTerm=Nokia+e+71&ip_categoryId=&ip_requestUri=TopCategoriesDisplay&sType=SimpleSearch&ddkey=http:SearchKeywordCmd', 'Delivery in 1-2 business days.', 0, '\r\n						\r\r\n	\r\r\n	\r\r\n	\r\r\n	NOKIA N101\r\r\n	\r\r\n	\r\n					', '2013-02-19 17:35:19'),
(23, 43, 35625, 'http://www.straightline.in/CatalogSearchResultView?&ip_mode=&catalogId=10051&ip_constrain=&SearchType=SimpleSearch&beginIndex=0&resultCatEntryType=2&storeId=10953&searchTerm=samsung&ip_categoryId=&ip_requestUri=TopCategoriesDisplay&sType=SimpleSearch&ddkey=http:SearchKeywordCmd', 'Delivery in 1-2 business days.', 0, '\r\n						\r\r\n	\r\r\n	\r\r\n	\r\r\n	Car Charger For Samsung D820 Compatible\r\r\n	\r\r\n	\r\n					', '2013-02-21 16:35:10'),
(23, 44, 35625, 'http://www.straightline.in/CatalogSearchResultView?&ip_mode=&catalogId=10051&ip_constrain=&SearchType=SimpleSearch&beginIndex=0&resultCatEntryType=2&storeId=10953&searchTerm=samung&ip_categoryId=&ip_requestUri=TopCategoriesDisplay&sType=SimpleSearch&ddkey=http:SearchKeywordCmd', 'Delivery in 1-2 business days.', 0, '\r\n						\r\r\n	\r\r\n	\r\r\n	\r\r\n	Car Charger For Samsung D820 Compatible\r\r\n	\r\r\n	\r\n					', '2013-02-21 17:29:27'),
(23, 45, 21945, 'http://www.straightline.in/CatalogSearchResultView?&ip_mode=&catalogId=10051&ip_constrain=&SearchType=SimpleSearch&beginIndex=0&resultCatEntryType=2&storeId=10953&searchTerm=Samsung+washing+machine&ip_categoryId=&ip_requestUri=TopCategoriesDisplay&sType=SimpleSearch&ddkey=http:SearchKeywordCmd', 'Delivery in 1-2 business days.', 0, '\r\n						\r\r\n	\r\r\n	\r\r\n	\r\r\n	LG 8068NDP Washing Machine\r\r\n	\r\r\n	\r\n					', '2013-02-22 08:13:58'),
(23, 46, 13000, 'http://www.straightline.in/CatalogSearchResultView?&ip_mode=&catalogId=10051&ip_constrain=&SearchType=SimpleSearch&beginIndex=0&resultCatEntryType=2&storeId=10953&searchTerm=nokia+lumia+610&ip_categoryId=&ip_requestUri=TopCategoriesDisplay&sType=SimpleSearch&ddkey=http:SearchKeywordCmd', 'Delivery in 1-2 business days.', 0, '\r\n						\r\r\n	\r\r\n	\r\r\n	\r\r\n	NOKIA Lumia 610\r\r\n	\r\r\n	\r\n					', '2013-02-22 16:36:45'),
(23, 47, 13506, 'http://www.straightline.in/CatalogSearchResultView?&ip_mode=&catalogId=10051&ip_constrain=&SearchType=SimpleSearch&beginIndex=0&resultCatEntryType=2&storeId=10953&searchTerm=nokia+lumia+920&ip_categoryId=&ip_requestUri=TopCategoriesDisplay&sType=SimpleSearch&ddkey=http:SearchKeywordCmd', 'Delivery in 1-2 business days.', 0, '\r\n						\r\r\n	\r\r\n	\r\r\n	\r\r\n	NOKIA Lumia 710\r\r\n	\r\r\n	\r\n					', '2013-02-22 16:43:44'),
(23, 48, 11970, 'http://www.straightline.in/CatalogSearchResultView?&ip_mode=&catalogId=10051&ip_constrain=&SearchType=SimpleSearch&beginIndex=0&resultCatEntryType=2&storeId=10953&searchTerm=Samsung+galaxy&ip_categoryId=&ip_requestUri=TopCategoriesDisplay&sType=SimpleSearch&ddkey=http:SearchKeywordCmd', 'Delivery in 1-2 business days.', 0, '\r\n						\r\r\n	\r\r\n	\r\r\n	\r\r\n	Samsung Galaxy S5830 Ace\r\r\n	\r\r\n	\r\n					', '2013-02-24 10:53:17'),
(23, 49, 160, 'http://www.straightline.in/CatalogSearchResultView?&ip_mode=&catalogId=10051&ip_constrain=&SearchType=SimpleSearch&beginIndex=0&resultCatEntryType=2&storeId=10953&searchTerm=Apple&ip_categoryId=&ip_requestUri=TopCategoriesDisplay&sType=SimpleSearch&ddkey=http:SearchKeywordCmd', 'Delivery in 1-2 business days.', 0, '\r\n						\r\r\n	\r\r\n	\r\r\n	\r\r\n	SOLAR APPLE\r\r\n	\r\r\n	\r\n					', '2013-02-24 10:57:21'),
(23, 50, 39040, 'http://www.straightline.in/CatalogSearchResultView?&ip_mode=&catalogId=10051&ip_constrain=&SearchType=SimpleSearch&beginIndex=0&resultCatEntryType=2&storeId=10953&searchTerm=Apple+iPhone+4s&ip_categoryId=&ip_requestUri=TopCategoriesDisplay&sType=SimpleSearch&ddkey=http:SearchKeywordCmd', 'Delivery in 1-2 business days.', 0, '\r\n						\r\r\n	\r\r\n	\r\r\n	\r\r\n	Apple Iphone 4S- 16gb\r\r\n	\r\r\n	\r\n					', '2013-02-24 10:58:27'),
(23, 51, 36068, 'http://www.straightline.in/CatalogSearchResultView?&ip_mode=&catalogId=10051&ip_constrain=&SearchType=SimpleSearch&beginIndex=0&resultCatEntryType=2&storeId=10953&searchTerm=Apple+iPhone+5&ip_categoryId=&ip_requestUri=TopCategoriesDisplay&sType=SimpleSearch&ddkey=http:SearchKeywordCmd', 'Delivery in 1-2 business days.', 0, '\r\n						\r\r\n	\r\r\n	\r\r\n	\r\r\n	Apple Iphone 4 8GB\r\r\n	\r\r\n	\r\n					', '2013-02-24 13:13:21'),
(23, 52, 27499, 'http://www.straightline.in/CatalogSearchResultView?&ip_mode=&catalogId=10051&ip_constrain=&SearchType=SimpleSearch&beginIndex=0&resultCatEntryType=2&storeId=10953&searchTerm=Samsung+led+tv&ip_categoryId=&ip_requestUri=TopCategoriesDisplay&sType=SimpleSearch&ddkey=http:SearchKeywordCmd', 'Delivery in 1-2 business days.', 0, '\r\n						\r\r\n	\r\r\n	\r\r\n	\r\r\n	Samsung LED 32 EH 4003\r\r\n	\r\r\n	\r\n					', '2013-02-24 16:35:44'),
(23, 53, 27499, 'http://www.straightline.in/CatalogSearchResultView?&ip_mode=&catalogId=10051&ip_constrain=&SearchType=SimpleSearch&beginIndex=0&resultCatEntryType=2&storeId=10953&searchTerm=Samsung+46+led+tv&ip_categoryId=&ip_requestUri=TopCategoriesDisplay&sType=SimpleSearch&ddkey=http:SearchKeywordCmd', 'Delivery in 1-2 business days.', 0, '\r\n						\r\r\n	\r\r\n	\r\r\n	\r\r\n	Samsung LED 32 EH 4003\r\r\n	\r\r\n	\r\n					', '2013-02-24 16:38:37'),
(23, 55, 13506, 'http://www.straightline.in/CatalogSearchResultView?&ip_mode=&catalogId=10051&ip_constrain=&SearchType=SimpleSearch&beginIndex=0&resultCatEntryType=2&storeId=10953&searchTerm=nokia+lumia+710&ip_categoryId=&ip_requestUri=TopCategoriesDisplay&sType=SimpleSearch&ddkey=http:SearchKeywordCmd', 'Delivery in 1-2 business days.', 0, '\r\n						\r\r\n	\r\r\n	\r\r\n	\r\r\n	NOKIA Lumia 710\r\r\n	\r\r\n	\r\n					', '2013-02-28 02:05:16'),
(23, 56, 12873, 'http://www.straightline.in/CatalogSearchResultView?&ip_mode=&catalogId=10051&ip_constrain=&SearchType=SimpleSearch&beginIndex=0&resultCatEntryType=2&storeId=10953&searchTerm=blackberry+z10&ip_categoryId=&ip_requestUri=TopCategoriesDisplay&sType=SimpleSearch&ddkey=http:SearchKeywordCmd', 'Delivery in 1-2 business days.', 0, '\r\n						\r\r\n	\r\r\n	\r\r\n	\r\r\n	BlackBerry Curve 3G 9330\r\r\n	\r\r\n	\r\n					', '2013-02-28 02:32:48'),
(23, 59, 218, 'http://www.straightline.in/CatalogSearchResultView?&ip_mode=&catalogId=10051&ip_constrain=&SearchType=SimpleSearch&beginIndex=0&resultCatEntryType=2&storeId=10953&searchTerm=sandisk+16gb+pendrive&ip_categoryId=&ip_requestUri=TopCategoriesDisplay&sType=SimpleSearch&ddkey=http:SearchKeywordCmd', 'Delivery in 1-2 business days.', 0, '\r\n						\r\r\n	\r\r\n	\r\r\n	\r\r\n	Sandisk 4 GB Pen Drive\r\r\n	\r\r\n	\r\n					', '2013-02-28 19:26:07'),
(23, 60, 19451, 'http://www.straightline.in/CatalogSearchResultView?&ip_mode=&catalogId=10051&ip_constrain=&SearchType=SimpleSearch&beginIndex=0&resultCatEntryType=2&storeId=10953&searchTerm=sony+8gb+pendrive&ip_categoryId=&ip_requestUri=TopCategoriesDisplay&sType=SimpleSearch&ddkey=http:SearchKeywordCmd', 'Delivery in 1-2 business days.', 0, '\r\n						\r\r\n	\r\r\n	\r\r\n	\r\r\n	Sony CX190 HandyCam\r\r\n	\r\r\n	\r\n					', '2013-02-28 19:27:05'),
(23, 61, 19451, 'http://www.straightline.in/CatalogSearchResultView?&ip_mode=&catalogId=10051&ip_constrain=&SearchType=SimpleSearch&beginIndex=0&resultCatEntryType=2&storeId=10953&searchTerm=sony+tiny+8gb+pendrive&ip_categoryId=&ip_requestUri=TopCategoriesDisplay&sType=SimpleSearch&ddkey=http:SearchKeywordCmd', 'Delivery in 1-2 business days.', 0, '\r\n						\r\r\n	\r\r\n	\r\r\n	\r\r\n	Sony CX190 HandyCam\r\r\n	\r\r\n	\r\n					', '2013-02-28 19:28:16'),
(23, 64, 7500, 'http://www.straightline.in/CatalogSearchResultView?&ip_mode=&catalogId=10051&ip_constrain=&SearchType=SimpleSearch&beginIndex=0&resultCatEntryType=2&storeId=10953&searchTerm=Structural+dynamics+by+Mario+poaz&ip_categoryId=&ip_requestUri=TopCategoriesDisplay&sType=SimpleSearch&ddkey=http:SearchKeywordCmd', 'Delivery in 1-2 business days.', 0, '\r\n						\r\r\n	\r\r\n	\r\r\n	\r\r\n	Maria Rihas Angels\r\r\n	\r\r\n	\r\n					', '2013-03-04 20:09:08'),
(23, 65, 7500, 'http://www.straightline.in/CatalogSearchResultView?&ip_mode=&catalogId=10051&ip_constrain=&SearchType=SimpleSearch&beginIndex=0&resultCatEntryType=2&storeId=10953&searchTerm=Structural+dynamics+theory+and+practiceby+Mario+poaz&ip_categoryId=&ip_requestUri=TopCategoriesDisplay&sType=SimpleSearch&ddkey=http:SearchKeywordCmd', 'Delivery in 1-2 business days.', 0, '\r\n						\r\r\n	\r\r\n	\r\r\n	\r\r\n	Maria Rihas Angels\r\r\n	\r\r\n	\r\n					', '2013-03-04 20:18:32'),
(23, 66, 7500, 'http://www.straightline.in/CatalogSearchResultView?&ip_mode=&catalogId=10051&ip_constrain=&SearchType=SimpleSearch&beginIndex=0&resultCatEntryType=2&storeId=10953&searchTerm=Structural+dynamics+theory+and+practice+by+Mario+poaz&ip_categoryId=&ip_requestUri=TopCategoriesDisplay&sType=SimpleSearch&ddkey=http:SearchKeywordCmd', 'Delivery in 1-2 business days.', 0, '\r\n						\r\r\n	\r\r\n	\r\r\n	\r\r\n	Maria Rihas Angels\r\r\n	\r\r\n	\r\n					', '2013-03-04 20:19:01'),
(23, 67, 7500, 'http://www.straightline.in/CatalogSearchResultView?&ip_mode=&catalogId=10051&ip_constrain=&SearchType=SimpleSearch&beginIndex=0&resultCatEntryType=2&storeId=10953&searchTerm=Structural+dynamics+theory+and+computation++by+Mario+poaz&ip_categoryId=&ip_requestUri=TopCategoriesDisplay&sType=SimpleSearch&ddkey=http:SearchKeywordCmd', 'Delivery in 1-2 business days.', 0, '\r\n						\r\r\n	\r\r\n	\r\r\n	\r\r\n	Maria Rihas Angels\r\r\n	\r\r\n	\r\n					', '2013-03-04 20:20:04'),
(23, 68, 22500, 'http://www.straightline.in/CatalogSearchResultView?&ip_mode=&catalogId=10051&ip_constrain=&SearchType=SimpleSearch&beginIndex=0&resultCatEntryType=2&storeId=10953&searchTerm=Structural+dynamics+theory+and+computation&ip_categoryId=&ip_requestUri=TopCategoriesDisplay&sType=SimpleSearch&ddkey=http:SearchKeywordCmd', 'Delivery in 1-2 business days.', 0, '\r\n						\r\r\n	\r\r\n	\r\r\n	\r\r\n	Tapas Ghoshals Varanasi Watercolour\r\r\n	\r\r\n	\r\n					', '2013-03-04 21:34:49'),
(23, 69, 7500, 'http://www.straightline.in/CatalogSearchResultView?&ip_mode=&catalogId=10051&ip_constrain=&SearchType=SimpleSearch&beginIndex=0&resultCatEntryType=2&storeId=10953&searchTerm=Structural+dynamics+theory+and+computation+by+mario&ip_categoryId=&ip_requestUri=TopCategoriesDisplay&sType=SimpleSearch&ddkey=http:SearchKeywordCmd', 'Delivery in 1-2 business days.', 0, '\r\n						\r\r\n	\r\r\n	\r\r\n	\r\r\n	Maria Rihas Angels\r\r\n	\r\r\n	\r\n					', '2013-03-04 21:36:07'),
(23, 70, 215, 'http://www.straightline.in/CatalogSearchResultView?&ip_mode=&catalogId=10051&ip_constrain=&SearchType=SimpleSearch&beginIndex=0&resultCatEntryType=2&storeId=10953&searchTerm=Pocket+planner&ip_categoryId=&ip_requestUri=TopCategoriesDisplay&sType=SimpleSearch&ddkey=http:SearchKeywordCmd', 'Delivery in 1-2 business days.', 0, '\r\n						\r\r\n	\r\r\n	\r\r\n	\r\r\n	Multi Pocket\r\r\n	\r\r\n	\r\n					', '2013-03-04 23:09:01'),
(23, 71, 20900, 'http://www.straightline.in/CatalogSearchResultView?&ip_mode=&catalogId=10051&ip_constrain=&SearchType=SimpleSearch&beginIndex=0&resultCatEntryType=2&storeId=10953&searchTerm=washing+machine&ip_categoryId=&ip_requestUri=TopCategoriesDisplay&sType=SimpleSearch&ddkey=http:SearchKeywordCmd', 'Delivery in 1-2 business days.', 0, '\r\n						\r\r\n	\r\r\n	\r\r\n	\r\r\n	LG 8068NDP Washing Machine\r\r\n	\r\r\n	\r\n					', '2013-03-07 11:01:13'),
(23, 72, 11970, 'http://www.straightline.in/CatalogSearchResultView?&ip_mode=&catalogId=10051&ip_constrain=&SearchType=SimpleSearch&beginIndex=0&resultCatEntryType=2&storeId=10953&searchTerm=Samsung+galaxy+s4&ip_categoryId=&ip_requestUri=TopCategoriesDisplay&sType=SimpleSearch&ddkey=http:SearchKeywordCmd', 'Delivery in 1-2 business days.', 0, '\r\n						\r\r\n	\r\r\n	\r\r\n	\r\r\n	Samsung Galaxy S5830 Ace\r\r\n	\r\r\n	\r\n					', '2013-03-17 20:37:20'),
(23, 73, 29295, 'http://www.straightline.in/CatalogSearchResultView?&ip_mode=&catalogId=10051&ip_constrain=&SearchType=SimpleSearch&beginIndex=0&resultCatEntryType=2&storeId=10953&searchTerm=samsung+galaxy+s+3&ip_categoryId=&ip_requestUri=TopCategoriesDisplay&sType=SimpleSearch&ddkey=http:SearchKeywordCmd', 'Delivery in 1-2 business days.', 0, '\r\n						\r\r\n	\r\r\n	\r\r\n	\r\r\n	Samsung Galaxy SII I9100\r\r\n	\r\r\n	\r\n					', '2013-03-19 14:59:58'),
(23, 74, 12873, 'http://www.straightline.in/CatalogSearchResultView?&ip_mode=&catalogId=10051&ip_constrain=&SearchType=SimpleSearch&beginIndex=0&resultCatEntryType=2&storeId=10953&searchTerm=blackberry+z&ip_categoryId=&ip_requestUri=TopCategoriesDisplay&sType=SimpleSearch&ddkey=http:SearchKeywordCmd', 'Delivery in 1-2 business days.', 0, '\r\n						\r\r\n	\r\r\n	\r\r\n	\r\r\n	BlackBerry Curve 3G 9330\r\r\n	\r\r\n	\r\n					', '2013-03-19 15:06:03'),
(23, 75, 995, 'http://www.straightline.in/CatalogSearchResultView?&ip_mode=&catalogId=10051&ip_constrain=&SearchType=SimpleSearch&beginIndex=0&resultCatEntryType=2&storeId=10953&searchTerm=Butterfly+Tenergy+64-FX+Rubber&ip_categoryId=&ip_requestUri=TopCategoriesDisplay&sType=SimpleSearch&ddkey=http:SearchKeywordCmd', 'Delivery in 1-2 business days.', 0, '\r\n						\r\r\n	\r\r\n	\r\r\n	\r\r\n	Sterling Silver Butterfly Pendant\r\r\n	\r\r\n	\r\n					', '2013-03-19 15:09:08'),
(23, 76, 995, 'http://www.straightline.in/CatalogSearchResultView?&ip_mode=&catalogId=10051&ip_constrain=&SearchType=SimpleSearch&beginIndex=0&resultCatEntryType=2&storeId=10953&searchTerm=Butterfly+Tenergy+05&ip_categoryId=&ip_requestUri=TopCategoriesDisplay&sType=SimpleSearch&ddkey=http:SearchKeywordCmd', 'Delivery in 1-2 business days.', 0, '\r\n						\r\r\n	\r\r\n	\r\r\n	\r\r\n	Sterling Silver Butterfly Pendant\r\r\n	\r\r\n	\r\n					', '2013-03-19 15:10:19'),
(23, 77, 1021, 'http://www.straightline.in/CatalogSearchResultView?&ip_mode=&catalogId=10051&ip_constrain=&SearchType=SimpleSearch&beginIndex=0&resultCatEntryType=2&storeId=10953&searchTerm=nokia+n9&ip_categoryId=&ip_requestUri=TopCategoriesDisplay&sType=SimpleSearch&ddkey=http:SearchKeywordCmd', 'Delivery in 1-2 business days.', 0, '\r\n						\r\r\n	\r\r\n	\r\r\n	\r\r\n	Nokia 1280\r\r\n	\r\r\n	\r\n					', '2013-03-19 15:12:54'),
(23, 78, 11970, 'http://www.straightline.in/CatalogSearchResultView?&ip_mode=&catalogId=10051&ip_constrain=&SearchType=SimpleSearch&beginIndex=0&resultCatEntryType=2&storeId=10953&searchTerm=samsung+galaxy+grand&ip_categoryId=&ip_requestUri=TopCategoriesDisplay&sType=SimpleSearch&ddkey=http:SearchKeywordCmd', 'Delivery in 1-2 business days.', 0, '\r\n						\r\r\n	\r\r\n	\r\r\n	\r\r\n	Samsung Galaxy S5830 Ace\r\r\n	\r\r\n	\r\n					', '2013-03-19 19:06:29'),
(23, 79, 7760, 'http://www.straightline.in/CatalogSearchResultView?&ip_mode=&catalogId=10051&ip_constrain=&SearchType=SimpleSearch&beginIndex=0&resultCatEntryType=2&storeId=10953&searchTerm=Transcend+Memory+Card+MicroSD+16GB+Class+4&ip_categoryId=&ip_requestUri=TopCategoriesDisplay&sType=SimpleSearch&ddkey=http:SearchKeywordCmd', 'Delivery in 1-2 business days.', 0, '\r\n						\r\r\n	\r\r\n	\r\r\n	\r\r\n	IXUS 115 HS\r\r\n	\r\r\n	\r\n					', '2013-03-19 19:15:29'),
(23, 80, 17324, 'http://www.straightline.in/CatalogSearchResultView?&ip_mode=&catalogId=10051&ip_constrain=&SearchType=SimpleSearch&beginIndex=0&resultCatEntryType=2&storeId=10953&searchTerm=sony+xperia+z&ip_categoryId=&ip_requestUri=TopCategoriesDisplay&sType=SimpleSearch&ddkey=http:SearchKeywordCmd', 'Delivery in 1-2 business days.', 0, '\r\n						\r\r\n	\r\r\n	\r\r\n	\r\r\n	Sony Xperia U/BLACK\r\r\n	\r\r\n	\r\n					', '2013-03-21 16:44:55'),
(23, 81, 239, 'http://www.straightline.in/CatalogSearchResultView?&ip_mode=&catalogId=10051&ip_constrain=&SearchType=SimpleSearch&beginIndex=0&resultCatEntryType=2&storeId=10953&searchTerm=sony&ip_categoryId=&ip_requestUri=TopCategoriesDisplay&sType=SimpleSearch&ddkey=http:SearchKeywordCmd', 'Delivery in 1-2 business days.', 0, '\r\n						\r\r\n	\r\r\n	\r\r\n	\r\r\n	Car Charger For Sony Ericsson Compatible Phones\r\r\n	\r\r\n	\r\n					', '2013-03-21 16:51:03'),
(23, 82, 3232, 'http://www.straightline.in/CatalogSearchResultView?&ip_mode=&catalogId=10051&ip_constrain=&SearchType=SimpleSearch&beginIndex=0&resultCatEntryType=2&storeId=10953&searchTerm=united+colors+of+bennoton&ip_categoryId=&ip_requestUri=TopCategoriesDisplay&sType=SimpleSearch&ddkey=http:SearchKeywordCmd', 'Delivery in 1-2 business days.', 0, '\r\n						\r\r\n	\r\r\n	\r\r\n	\r\r\n	ZEPClASS SUNGLASSES I30078 + UNIT SPORTS WATCH I19658\r\r\n	\r\r\n	\r\n					', '2013-03-21 17:00:50'),
(23, 83, 784, 'http://www.straightline.in/CatalogSearchResultView?&ip_mode=&catalogId=10051&ip_constrain=&SearchType=SimpleSearch&beginIndex=0&resultCatEntryType=2&storeId=10953&searchTerm=levis+boots&ip_categoryId=&ip_requestUri=TopCategoriesDisplay&sType=SimpleSearch&ddkey=http:SearchKeywordCmd', 'Delivery in 1-2 business days.', 0, '\r\n						\r\r\n	\r\r\n	\r\r\n	\r\r\n	Cute Bunch of Mix Roses for Love Flower Gift -264\r\r\n	\r\r\n	\r\n					', '2013-03-21 17:03:43'),
(23, 84, 8499, 'http://www.straightline.in/CatalogSearchResultView?&ip_mode=&catalogId=10051&ip_constrain=&SearchType=SimpleSearch&beginIndex=0&resultCatEntryType=2&storeId=10953&searchTerm=Puma+Unlimited+Hi+Evo+Lux+Sneakers&ip_categoryId=&ip_requestUri=TopCategoriesDisplay&sType=SimpleSearch&ddkey=http:SearchKeywordCmd', 'Delivery in 1-2 business days.', 0, '\r\n						\r\r\n	\r\r\n	\r\r\n	\r\r\n	Amkette Evo TV\r\r\n	\r\r\n	\r\n					', '2013-03-21 17:06:45'),
(23, 85, 9818, 'http://www.straightline.in/CatalogSearchResultView?&ip_mode=&catalogId=10051&ip_constrain=&SearchType=SimpleSearch&beginIndex=0&resultCatEntryType=2&storeId=10953&searchTerm=samsung+rex&ip_categoryId=&ip_requestUri=TopCategoriesDisplay&sType=SimpleSearch&ddkey=http:SearchKeywordCmd', 'Delivery in 1-2 business days.', 0, '\r\n						\r\r\n	\r\r\n	\r\r\n	\r\r\n	Car Charger For Samsung D820 Compatible\r\r\n	\r\r\n	\r\n					', '2013-03-21 17:12:07'),
(23, 87, 26951, 'http://www.straightline.in/CatalogSearchResultView?&ip_mode=&catalogId=10051&ip_constrain=&SearchType=SimpleSearch&beginIndex=0&resultCatEntryType=2&storeId=10953&searchTerm=Samsung+led+tv+UA32ES6200R&ip_categoryId=&ip_requestUri=TopCategoriesDisplay&sType=SimpleSearch&ddkey=http:SearchKeywordCmd', 'Delivery in 1-2 business days.', 0, '\r\n						\r\r\n	\r\r\n	\r\r\n	\r\r\n	Samsung LED 32 EH 4003\r\r\n	\r\r\n	\r\n					', '2013-03-29 10:22:00'),
(23, 88, 26951, 'http://www.straightline.in/CatalogSearchResultView?&ip_mode=&catalogId=10051&ip_constrain=&SearchType=SimpleSearch&beginIndex=0&resultCatEntryType=2&storeId=10953&searchTerm=Samsung+UA32ES6200R+led&ip_categoryId=&ip_requestUri=TopCategoriesDisplay&sType=SimpleSearch&ddkey=http:SearchKeywordCmd', 'Delivery in 1-2 business days.', 0, '\r\n						\r\r\n	\r\r\n	\r\r\n	\r\r\n	Samsung LED 32 EH 4003\r\r\n	\r\r\n	\r\n					', '2013-03-29 10:22:56'),
(23, 89, 26951, 'http://www.straightline.in/CatalogSearchResultView?&ip_mode=&catalogId=10051&ip_constrain=&SearchType=SimpleSearch&beginIndex=0&resultCatEntryType=2&storeId=10953&searchTerm=UA32ES6200R+Samsung+led+tv&ip_categoryId=&ip_requestUri=TopCategoriesDisplay&sType=SimpleSearch&ddkey=http:SearchKeywordCmd', 'Delivery in 1-2 business days.', 0, '\r\n						\r\r\n	\r\r\n	\r\r\n	\r\r\n	Samsung LED 32 EH 4003\r\r\n	\r\r\n	\r\n					', '2013-03-29 10:24:05'),
(23, 90, 17842, 'http://www.straightline.in/CatalogSearchResultView?&ip_mode=&catalogId=10051&ip_constrain=&SearchType=SimpleSearch&beginIndex=0&resultCatEntryType=2&storeId=10953&searchTerm=projector&ip_categoryId=&ip_requestUri=TopCategoriesDisplay&sType=SimpleSearch&ddkey=http:SearchKeywordCmd', 'Delivery in 1-2 business days.', 0, '\r\n						\r\r\n	\r\r\n	\r\r\n	\r\r\n	MILI POWER PROJECTOR\r\r\n	\r\r\n	\r\n					', '2013-04-05 19:26:18'),
(23, 91, 13506, 'http://www.straightline.in/CatalogSearchResultView?&ip_mode=&catalogId=10051&ip_constrain=&SearchType=SimpleSearch&beginIndex=0&resultCatEntryType=2&storeId=10953&searchTerm=nokia+lumia+510&ip_categoryId=&ip_requestUri=TopCategoriesDisplay&sType=SimpleSearch&ddkey=http:SearchKeywordCmd', 'Delivery in 1-2 business days.', 0, '\r\n						\r\r\n	\r\r\n	\r\r\n	\r\r\n	NOKIA Lumia 710\r\r\n	\r\r\n	\r\n					', '2013-07-03 15:54:29'),
(23, 93, 1021, 'http://www.straightline.in/CatalogSearchResultView?&ip_mode=&catalogId=10051&ip_constrain=&SearchType=SimpleSearch&beginIndex=0&resultCatEntryType=2&storeId=10953&searchTerm=nokia+109&ip_categoryId=&ip_requestUri=TopCategoriesDisplay&sType=SimpleSearch&ddkey=http:SearchKeywordCmd', 'Delivery in 1-2 business days.', 0, '\r\n						\r\r\n	\r\r\n	\r\r\n	\r\r\n	Nokia 1280\r\r\n	\r\r\n	\r\n					', '2013-07-04 05:25:27'),
(23, 94, 1227, 'http://www.straightline.in/CatalogSearchResultView?&ip_mode=&catalogId=10051&ip_constrain=&SearchType=SimpleSearch&beginIndex=0&resultCatEntryType=2&storeId=10953&searchTerm=nokia+114&ip_categoryId=&ip_requestUri=TopCategoriesDisplay&sType=SimpleSearch&ddkey=http:SearchKeywordCmd', 'Delivery in 1-2 business days.', 0, '\r\n						\r\r\n	\r\r\n	\r\r\n	\r\r\n	NOKIA N100\r\r\n	\r\r\n	\r\n					', '2013-07-04 05:28:06'),
(23, 96, 23800, 'http://www.straightline.in/CatalogSearchResultView?&ip_mode=&catalogId=10051&ip_constrain=&SearchType=SimpleSearch&beginIndex=0&resultCatEntryType=2&storeId=10953&searchTerm=apple+tablet&ip_categoryId=&ip_requestUri=TopCategoriesDisplay&sType=SimpleSearch&ddkey=http:SearchKeywordCmd', 'Delivery in 1-2 business days.', 0, '\r\n						\r\r\n	\r\r\n	\r\r\n	\r\r\n	Apple Ipad 2 WiFi 16 GB\r\r\n	\r\r\n	\r\n					', '2013-07-04 16:06:12');

-- --------------------------------------------------------

--
-- Table structure for table `sulekha`
--

CREATE TABLE IF NOT EXISTS `sulekha` (
  `WebsiteID` int(10) NOT NULL,
  `ProductId` int(10) NOT NULL,
  `Price` int(10) NOT NULL,
  `Link` text NOT NULL,
  `DeliveryTime` text NOT NULL,
  `EMI` int(1) NOT NULL DEFAULT '1',
  `Title` text NOT NULL,
  `Time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `themobilestore`
--

CREATE TABLE IF NOT EXISTS `themobilestore` (
  `WebsiteID` int(10) NOT NULL,
  `ProductId` int(10) NOT NULL,
  `Price` int(10) NOT NULL,
  `Link` text COLLATE utf8_unicode_ci NOT NULL,
  `DeliveryTime` text COLLATE utf8_unicode_ci NOT NULL,
  `EMI` int(1) NOT NULL DEFAULT '0',
  `Title` text COLLATE utf8_unicode_ci NOT NULL,
  `Time` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `themobilestore`
--

INSERT INTO `themobilestore` (`WebsiteID`, `ProductId`, `Price`, `Link`, `DeliveryTime`, `EMI`, `Title`, `Time`) VALUES
(69, 1, 11890, 'http://www.themobilestore.in/mobiles-tablet/samsung-galaxy-s-duos-s7562/p-31103-39635663127-cat.html#variant_id=31103-47363934707', '6-8 Working Days.', 0, 'Samsung Galaxy S Duos S7562,  black', '2013-01-18 16:54:06'),
(69, 2, 337, 'http://www.themobilestore.in/accessories/molife-galaxy-y-duos-lite-s5302-cover-m/p-31103-86950423433-cat.html#variant_id=31103-83956544271', '6-8 Working Days.', 0, 'Molife Galaxy Y Duos Lite S5302 Cover M MLP9144BK, â€¦', '2013-01-18 17:35:11'),
(69, 3, 13159, 'http://www.themobilestore.in/mobiles-tablet/samsung-galaxy-s-duos-s7562/p-31103-39635663127-cat.html#variant_id=31103-47363934707', '6-8 Working Days.', 0, 'Samsung Galaxy S Duos S7562, black', '2013-01-18 17:36:11'),
(69, 8, 11890, 'http://www.themobilestore.in/mobiles-tablet/samsung-galaxy-s-duos-s7562/p-31103-39635663127-cat.html#variant_id=31103-47363934707', '6-8 Working Days.', 0, 'Samsung Galaxy S Duos S7562,  black', '2013-01-18 20:48:58'),
(69, 9, 249, 'http://www.themobilestore.in/accessories/rainbow-apple-iphone-4s-screen-guard/p-31103-45982095697-cat.html#variant_id=31103-22257049238', '6-8 Working Days.', 0, 'Rainbow Apple iPhone 4s Screen Guard, black', '2013-01-18 21:16:12'),
(69, 10, 4134, 'http://www.themobilestore.in/mobiles-tablet/nokia-asha-305/p-31103-49384852854-cat.html#variant_id=31103-29844680308', '6-8 Working Days.', 0, 'Nokia Asha 305, grey', '2013-01-19 01:05:50'),
(69, 11, 207, 'http://www.themobilestore.in/accessories/amzer-89152-silicone-skin-jelly-case-baby-pink/p-31103-90592735048-cat.html#variant_id=31103-22902273310', '6-8 Working Days.', 0, 'Amzer 89152 Silicone Skin Jelly Case Baby Pink for â€¦', '2013-01-19 15:32:42'),
(69, 12, 26645, 'http://www.themobilestore.in/mobiles-tablet/buy-back-offer-samsung-galaxy-note-2/p-31103-78932552832-cat.html#variant_id=31103-60264851638', '6-8 Working Days.', 0, 'Buy Back Offer: Samsung Galaxy Note 2, grey', '2013-01-19 15:34:18'),
(69, 13, 1349, 'http://www.themobilestore.in/accessories/samsung-galaxy-s3-flip-cover/p-31103-301624393-cat.html#variant_id=31103-73405565183', '6-8 Working Days.', 0, 'Samsung Galaxy S3 Flip Cover, blue', '2013-01-23 19:22:58'),
(69, 14, 45500, 'http://www.themobilestore.in/mobiles-tablet/apple-iphone-5-16-gb/p-31103-85772738722-cat.html#variant_id=31103-19608532538', '6-8 Working Days.', 0, 'Apple iPhone 5 16 GB,  black', '2013-01-23 19:24:52'),
(69, 15, 249, 'http://www.themobilestore.in/accessories/rainbow-nokia-lumia-800-screen-guard/p-31103-75525590496-cat.html#variant_id=31103-90276833182', '6-8 Working Days.', 0, 'Rainbow Nokia Lumia 800 Screen Guard, black', '2013-01-23 19:27:48'),
(69, 19, 359, 'http://www.themobilestore.in/accessories/molife-samsung-tab-2-p3100-screen-guard/p-31103-98783179326-cat.html#variant_id=31103-79700719727', '6-8 Working Days.', 0, 'Molife Samsung Tab 2 (P3100) Screen Guard, clear â€¦', '2013-01-23 19:36:45'),
(69, 20, 16490, 'http://www.themobilestore.in/mobiles-tablet/sony-xperia-j/p-31103-2156183473-cat.html#variant_id=31103-18778325324', '6-8 Working Days.', 0, 'Sony Xperia J, white', '2013-01-23 19:38:10'),
(69, 25, 8499, 'http://www.themobilestore.in/mobiles-tablet/micromax-tab-3g-p600/p-31103-14054385830-cat.html#variant_id=31103-898293758', '6-8 Working Days.', 0, 'Micromax Tab 3G P600, black', '2013-01-23 20:12:06'),
(69, 26, 309, 'http://www.themobilestore.in/accessories/sandisk-cruzer-blade-4gb/p-31103-57209370161-cat.html#variant_id=31103-54304278212', '6-8 Working Days.', 0, 'SanDisk Cruzer Blade 4GB, black', '2013-01-23 21:46:06'),
(69, 31, 809, 'http://www.themobilestore.in/accessories/iaccy-keyboard-protector-13-macbook-pro-kbd001/p-31103-4216233463-cat.html#variant_id=31103-35187353108', '6-8 Working Days.', 0, 'iAccy Keyboard Protector for 13" Macbook Pro â€¦', '2013-01-23 22:36:43'),
(69, 32, 170, 'http://www.themobilestore.in/accessories/sandisk-micro-sd-2-gb/p-31103-88858657277-cat.html#variant_id=31103-16742276316', '6-8 Working Days.', 0, 'SanDisk Micro SD 2 GB, black', '2013-01-28 19:32:55'),
(69, 33, 170, 'http://www.themobilestore.in/accessories/sandisk-micro-sd-2-gb/p-31103-88858657277-cat.html#variant_id=31103-16742276316', '6-8 Working Days.', 0, 'SanDisk Micro SD 2 GB, black', '2013-01-28 19:39:58'),
(69, 34, 1079, 'http://www.themobilestore.in/accessories/amzer-93879-shellster-black-nokia-lumia-900/p-31103-62756083389-cat.html#variant_id=31103-90043752508', '6-8 Working Days.', 0, 'Amzer 93879 Shellster? Black for Nokia Lumia 900, â€¦', '2013-01-30 13:49:42'),
(69, 35, 4129, 'http://www.themobilestore.in/mobiles-tablet/nokia-asha-305/p-31103-49384852854-cat.html#variant_id=31103-29844680308', '6-8 Working Days.', 0, 'Nokia Asha 305, grey', '2013-01-30 13:52:06'),
(69, 36, 135, 'http://www.themobilestore.in/accessories/molife-nokia-asha202-screen-protector-m-sl-nk202/p-31103-92683715312-cat.html#variant_id=31103-31861772917', '6-8 Working Days.', 0, 'Molife Nokia Asha202 Screen Protector (M SL NK202), â€¦', '2013-01-30 13:53:10'),
(69, 38, 30990, 'http://www.themobilestore.in/mobiles-tablet/blackberry-9900-bold/p-31103-89382846323-cat.html#variant_id=31103-45703268925', '6-8 Working Days.', 0, 'BlackBerry 9900 Bold, black', '2013-02-12 22:56:15'),
(69, 39, 778, 'http://www.themobilestore.in/accessories/viakeys-carved-silicone-skin-blackberry-bold-9780-bold/p-31103-77386331386-cat.html#variant_id=31103-34265107717', '6-8 Working Days.', 0, 'Viakeys Carved Silicone Skin for BlackBerry Bold â€¦', '2013-02-12 22:56:53'),
(69, 40, 664, 'http://www.themobilestore.in/accessories/panasonic-ear-mobile-headset-handsfree-with-mic/p-31103-22970514519-cat.html#variant_id=31103-76451933671', '6-8 Working Days.', 0, 'Panasonic In Ear Mobile Headset Handsfree with Mic, â€¦', '2013-02-19 17:34:11'),
(69, 41, 269, 'http://www.themobilestore.in/accessories/iaccy-screen-protector-e71-nsg002/p-31103-91508004764-cat.html#variant_id=31103-40949527597', '6-8 Working Days.', 0, 'iAccy Screen Protector E71 NSG002, clear', '2013-02-19 17:34:49'),
(69, 42, 269, 'http://www.themobilestore.in/accessories/iaccy-screen-protector-e71-nsg002/p-31103-91508004764-cat.html#variant_id=31103-40949527597', '6-8 Working Days.', 0, 'iAccy Screen Protector E71 NSG002, clear', '2013-02-19 17:35:21'),
(69, 43, 13159, 'http://www.themobilestore.in/mobiles-tablet/samsung-galaxy-s-duos-s7562/p-31103-39635663127-cat.html#variant_id=31103-47363934707', '6-8 Working Days.', 0, 'Samsung Galaxy S Duos S7562, black', '2013-02-21 16:35:14'),
(69, 59, 632, 'http://www.themobilestore.in/accessories/sandisk-16gb/p-31103-90907477766-cat.html#variant_id=31103-27996237530', '6-8 Working Days.', 0, 'Sandisk 16GB, black', '2013-02-28 19:26:12'),
(69, 44, 314, 'http://www.themobilestore.in/accessories/iaccy-soft-case-samung-galaxy-y-duos-ss9027/p-31103-89057957752-cat.html#variant_id=31103-20053289332', '6-8 Working Days.', 0, 'iAccy Soft Case for Samung Galaxy Y Duos SS9027, grey â€¦', '2013-02-21 17:29:33'),
(69, 45, 11890, 'http://www.themobilestore.in/mobiles-tablet/samsung-galaxy-s-duos-s7562/p-31103-39635663127-cat.html#variant_id=31103-47363934707', '6-8 Working Days.', 0, 'Samsung Galaxy S Duos S7562,  black', '2013-02-22 08:14:02'),
(69, 46, 149, 'http://www.themobilestore.in/accessories/rainbow-nokia-lumia-610-screen-guard/p-31103-43721944047-cat.html#variant_id=31103-75515085612', '6-8 Working Days.', 0, 'Rainbow Nokia Lumia 610 Screen Guard, black', '2013-02-22 16:36:49'),
(69, 47, 31895, 'http://www.themobilestore.in/mobiles-tablet/nokia-lumia-920/p-31103-32742722981-cat.html#variant_id=31103-543531466', '6-8 Working Days.', 0, 'Nokia Lumia 920, white', '2013-02-22 16:43:47'),
(69, 48, 12900, 'http://www.themobilestore.in/mobiles-tablet/samsung-galaxy-s-duos-s7562/p-31103-39635663127-cat.html#variant_id=31103-47363934707', '6-8 Working Days.', 0, 'Samsung Galaxy S Duos S7562, black', '2013-02-24 10:53:24'),
(69, 49, 25649, 'http://www.themobilestore.in/mobiles-tablet/apple-iphone-4-8gb/p-31103-50351214789-cat.html#variant_id=31103-21294783429', '6-8 Working Days.', 0, 'Apple iPhone 4 8GB,  black', '2013-02-24 10:57:25'),
(69, 50, 25649, 'http://www.themobilestore.in/mobiles-tablet/apple-iphone-4-8gb/p-31103-50351214789-cat.html#variant_id=31103-21294783429', '6-8 Working Days.', 0, 'Apple iPhone 4 8GB, black', '2013-02-24 10:58:29'),
(69, 51, 799, 'http://www.themobilestore.in/accessories/promate-cove-case-apple-iphone-5/p-31103-67386993589-cat.html#variant_id=31103-37769892359', '6-8 Working Days.', 0, 'Promate Cove Case For Apple iPhone 5, blue', '2013-02-24 13:13:21'),
(69, 52, 12900, 'http://www.themobilestore.in/mobiles-tablet/samsung-galaxy-s-duos-s7562/p-31103-39635663127-cat.html#variant_id=31103-47363934707', '6-8 Working Days.', 0, 'Samsung Galaxy S Duos S7562, black', '2013-02-24 16:35:49'),
(69, 53, 809, 'http://www.themobilestore.in/accessories/samsung-p1000-tv-out-cable/p-31103-86057565112-cat.html#variant_id=31103-97413058976', '6-8 Working Days.', 0, 'Samsung P1000 TV out cable, black', '2013-02-24 16:38:43'),
(69, 55, 149, 'http://www.themobilestore.in/accessories/rainbow-nokia-lumia-710-screen-guard/p-31103-58691680195-cat.html#variant_id=31103-73281921203', '6-8 Working Days.', 0, 'Rainbow Nokia Lumia 710 Screen Guard, black', '2013-02-28 02:05:19'),
(69, 56, 43490, 'http://www.themobilestore.in/mobiles-tablet/blackberry-z10/p-31103-76010971130-cat.html#variant_id=31103-95443764137', '6-8 Working Days.', 0, 'Blackberry Z10, black', '2013-02-28 02:32:53'),
(69, 29, 8725, 'http://www.themobilestore.in/cameras/canon-sx150/p-31103-66322268438-cat.html#variant_id=31103-15145392778', '6-8 Working Days.', 0, 'Canon SX150, silver', '2013-02-28 03:58:48'),
(69, 60, 319, 'http://www.themobilestore.in/accessories/verbatim-micro-sd-8-gb/p-31103-27384243787-cat.html#variant_id=31103-27384243787', '6-8 Working Days.', 0, 'Verbatim Micro SD 8 GB', '2013-02-28 19:27:11'),
(69, 70, 1075, 'http://www.themobilestore.in/accessories/amzer-93061-10-2-inch-neoprene-sleeve-with/p-31103-46037265253-cat.html#variant_id=31103-169994824', '6-8 Working Days.', 0, 'Amzer 93061 10.2 Inch Neoprene Sleeve with Pocket â€¦', '2013-03-04 23:09:06'),
(69, 72, 13545, 'http://www.themobilestore.in/mobiles-tablet/samsung-galaxy-s-duos-s7562/p-31103-39635663127-cat.html#variant_id=31103-47363934707', '6-8 Working Days.', 0, 'Samsung Galaxy S Duos S7562, black', '2013-03-17 20:37:25'),
(69, 73, 30345, 'http://www.themobilestore.in/mobiles-tablet/samsung-galaxy-s3-i9300/p-31103-59731543192-cat.html#variant_id=31103-13786762180', '6-8 Working Days.', 0, 'Samsung Galaxy S3 (I9300), red', '2013-03-19 15:00:04'),
(69, 74, 43490, 'http://www.themobilestore.in/mobiles-tablet/blackberry-z10/p-31103-76010971130-cat.html#variant_id=31103-95443764137', '6-8 Working Days.', 0, 'Blackberry Z10, black', '2013-03-19 15:06:07'),
(69, 76, 46809, 'http://www.themobilestore.in/mobiles-tablet/htc-butterfly/p-31103-62590399044-cat.html#variant_id=31103-29944744143', '6-8 Working Days.', 0, 'HTC Butterfly, white', '2013-03-19 15:10:24'),
(69, 77, 207, 'http://www.themobilestore.in/accessories/amzer-92210-silicone-skin-jelly-case-grey-nokia/p-31103-67527935329-cat.html#variant_id=31103-45094807005', '6-8 Working Days.', 0, 'Amzer 92210 Silicone Skin Jelly Case Grey for Nokia â€¦', '2013-03-19 15:13:00'),
(69, 78, 21219, 'http://www.themobilestore.in/mobiles-tablet/samsung-galaxy-grand-duos-i9082/p-31103-39570830694-cat.html#variant_id=31103-80824762680', '6-8 Working Days.', 0, 'Samsung Galaxy Grand Duos I9082, white', '2013-03-19 19:06:33'),
(69, 80, 38990, 'http://www.themobilestore.in/mobiles-tablet/sony-xperia-z/p-31103-86226989097-cat.html#variant_id=31103-60426824835', '6-8 Working Days.', 0, 'Sony Xperia Z, purple', '2013-03-21 16:45:00'),
(69, 81, 12700, 'http://www.themobilestore.in/cameras/sony-h100/p-31103-31929134220-cat.html#variant_id=31103-14338415225', '6-8 Working Days.', 0, 'Sony H100, black', '2013-03-21 16:51:09'),
(69, 85, 4790, 'http://www.themobilestore.in/mobiles-tablet/samsung-rex-80-s5222r/p-31103-62499058304-cat.html#variant_id=31103-35496390206', '6-8 Working Days.', 0, 'Samsung Rex 80 S5222R, white', '2013-03-21 17:12:13'),
(69, 86, 13149, 'http://www.themobilestore.in/mobiles-tablet/micromax-a116-canvas-hd/p-31103-57294167367-cat.html#variant_id=31103-57294167367', '6-8 Working Days.', 0, 'Micromax A116 Canvas HD', '2013-03-28 22:47:00'),
(69, 0, 2519, 'http://www.themobilestore.in/accessories/elecom-ultimate-laser-laser-mouse-wireless-5-button/p-31103-86771570735-cat.html#variant_id=31103-52087390306', '6-8 Working Days.', 0, 'Elecom Ultimate Laser/Laser Mouse/Wireless/5 â€¦', '2013-07-07 09:45:14'),
(69, 87, 809, 'http://www.themobilestore.in/accessories/samsung-p1000-tv-out-cable/p-31103-86057565112-cat.html#variant_id=31103-97413058976', '6-8 Working Days.', 0, 'Samsung P1000 TV out cable, black', '2013-03-29 10:22:02'),
(69, 88, 13545, 'http://www.themobilestore.in/mobiles-tablet/samsung-galaxy-s-duos-s7562/p-31103-39635663127-cat.html#variant_id=31103-47363934707', '6-8 Working Days.', 0, 'Samsung Galaxy S Duos S7562, black', '2013-03-29 10:23:04'),
(69, 89, 809, 'http://www.themobilestore.in/accessories/samsung-p1000-tv-out-cable/p-31103-86057565112-cat.html#variant_id=31103-97413058976', '6-8 Working Days.', 0, 'Samsung P1000 TV out cable, black', '2013-03-29 10:24:09'),
(69, 91, 269, 'http://www.themobilestore.in/accessories/iaccy-antiglare-screenguard-nokia-lumia-510-nsg015/p-31103-19315812421-cat.html#variant_id=31103-77160408170', '6-8 Working Days.', 0, 'iAccy Antiglare Screenguard for Nokia Lumia 510 â€¦', '2013-07-03 15:54:33'),
(69, 97, 4369, 'http://www.themobilestore.in/mobiles-tablet/micromax-bolt-a51/p-31103-38000336315-cat.html#variant_id=31103-16589537730', '6-8 Working Days.', 0, 'Micromax Bolt A51, black', '2013-07-04 18:21:07'),
(69, 92, 759, 'http://www.themobilestore.in/accessories/panasonic-clip-type-ear-headset-mobiles/p-31103-18598241170-cat.html#variant_id=31103-1270958839', '6-8 Working Days.', 0, 'Panasonic Clip Type In ear headset for Mobiles, â€¦', '2013-07-04 02:48:49'),
(69, 24, 33902, 'http://www.themobilestore.in/cameras/nikon-d5100-with-18-55mm-vr-lens/p-31103-47921825833-cat.html#variant_id=31103-99597254622', '6-8 Working Days.', 0, 'Nikon D5100 with 18 55mm VR Lens, black', '2013-07-04 02:55:30'),
(69, 93, 245, 'http://www.themobilestore.in/accessories/zebronics-m109u-craft-usb-optical-mouse/p-31103-95801324308-cat.html#variant_id=31103-89776245099', '6-8 Working Days.', 0, 'Zebronics M109U Craft, USB Optical Mouse, black â€¦', '2013-07-04 05:25:31'),
(69, 94, 2264, 'http://www.themobilestore.in/mobiles-tablet/nokia-114/p-31103-7801483041-cat.html#variant_id=31103-39288408125', '6-8 Working Days.', 0, 'Nokia 114,  black', '2013-07-04 05:28:10'),
(69, 95, 6999, 'http://www.themobilestore.in/mobiles-tablet/micromax-funbook-talk-p362/p-31103-92013994144-cat.html#variant_id=31103-31224177141', '6-8 Working Days.', 0, 'Micromax Funbook Talk P362, grey', '2013-07-04 05:32:42'),
(69, 96, 25649, 'http://www.themobilestore.in/mobiles-tablet/apple-iphone-4-8gb/p-31103-50351214789-cat.html#variant_id=31103-21294783429', '6-8 Working Days.', 0, 'Apple iPhone 4 8GB, black', '2013-07-04 16:06:14');

-- --------------------------------------------------------

--
-- Table structure for table `timtara`
--

CREATE TABLE IF NOT EXISTS `timtara` (
  `WebsiteID` int(10) NOT NULL,
  `ProductId` int(10) NOT NULL,
  `Price` int(10) NOT NULL,
  `Link` text NOT NULL,
  `DeliveryTime` text NOT NULL,
  `EMI` int(1) NOT NULL DEFAULT '0',
  `Title` text NOT NULL,
  `Time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `timtara`
--

INSERT INTO `timtara` (`WebsiteID`, `ProductId`, `Price`, `Link`, `DeliveryTime`, `EMI`, `Title`, `Time`) VALUES
(27, 1, 12694, 'http://www.timtara.com/products/Samsung-Galaxy-S-Duos-S7562-Mobile-Phone.html', 'Delivery Within 3 Weeks.', 0, 'Samsung Galaxy S Duos S7562 Mobile Phone', '2013-01-18 16:54:01'),
(27, 2, 5849, 'http://www.timtara.com/products/Samsung-Galaxy-Y-Duos-Lite-S5302.html', 'Delivery Within 3 Weeks.', 0, 'Samsung Galaxy Y Duos Lite S5302', '2013-01-18 17:35:05'),
(27, 3, 7999, 'http://www.timtara.com/products/Samsung-Galaxy-Y-Duos-Mobile-Phone-S6102-.html', 'Delivery Within 3 Weeks.', 0, 'Samsung Galaxy Y Duos Mobile Phone S6102 ', '2013-01-18 17:36:03'),
(27, 4, 3699, 'http://www.timtara.com/products/Polo-Modern-Reserve-For-Men-%28118ml%29.html', 'Delivery Within 3 Weeks.', 0, 'Polo Modern Reserve For Men (118ml)', '2013-01-18 20:24:40'),
(27, 0, 3699, 'http://www.timtara.com/products/Polo-Modern-Reserve-For-Men-%28118ml%29.html', 'Delivery Within 3 Weeks.', 0, 'Polo Modern Reserve For Men (118ml)', '2013-01-18 20:28:48'),
(27, 6, 3699, 'http://www.timtara.com/products/Polo-Modern-Reserve-For-Men-%28118ml%29.html', 'Delivery Within 3 Weeks.', 0, 'Polo Modern Reserve For Men (118ml)', '2013-01-18 20:29:16'),
(27, 8, 13990, 'http://www.timtara.com/products/Samsung-Galaxy-S-Duos-S7562-Mobile-Phone.html', 'Delivery Within 3 Weeks.', 0, 'Samsung Galaxy S Duos S7562 Mobile Phone', '2013-01-18 20:48:53'),
(27, 9, 29990, 'http://www.timtara.com/products/Apple-Iphone-4-16GB.html', 'Delivery Within 3 Weeks.', 0, 'Apple Iphone 4 16GB', '2013-01-18 21:16:08'),
(27, 10, 4499, 'http://www.timtara.com/products/Nokia-Asha-305-Mobile-Phone.html', 'Delivery Within 3 Weeks.', 0, 'Nokia Asha 305 Mobile Phone', '2013-01-19 01:05:45'),
(27, 11, 3055, 'http://www.timtara.com/products/Havells-Candy-1200mm-Ceiling-Fan-%252d-Rosewood-Baby-Pink.html', 'Delivery Within 3 Weeks.', 0, 'Havells Candy 1200mm Ceiling Fan - Rosewood Baby Pink', '2013-01-19 15:32:38'),
(27, 12, 36900, 'http://www.timtara.com/products/Samsung-Galaxy-Note-2-N7100-Mobile-Phone.html', 'Delivery Within 3 Weeks.', 0, 'Samsung Galaxy Note 2 N7100 Mobile Phone', '2013-01-19 15:34:13'),
(27, 13, 30990, 'http://www.timtara.com/products/Samsung-Galaxy-S3-16GB-Mobile-Phone-%28Marble-White%29.html', 'Delivery Within 3 Weeks.', 0, 'Samsung Galaxy S3 16GB Mobile Phone (Marble White)', '2013-01-23 19:22:51'),
(27, 14, 29990, 'http://www.timtara.com/products/Apple-Iphone-4-16GB.html', 'Delivery Within 3 Weeks.', 0, 'Apple Iphone 4 16GB', '2013-01-23 19:24:47'),
(27, 15, 19990, 'http://www.timtara.com/products/Nokia-Lumia-800-Mobile-Phone.html', 'Delivery Within 3 Weeks.', 0, 'Nokia Lumia 800 Mobile Phone', '2013-01-23 19:27:43'),
(27, 16, 1999, 'http://www.timtara.com/products/Philips-SHC-1300-Headphone-.html', 'Delivery Within 3 Weeks.', 0, 'Philips SHC 1300 Headphone ', '2013-01-23 19:30:03'),
(27, 17, 4331, 'http://www.timtara.com/products/Netgear-DGN2200-ADSL2%252b-Wireless%252dN-300-Router-With-Modem-Router.html', 'Delivery Within 3 Weeks.', 0, 'Netgear DGN2200 ADSL2+ Wireless-N 300 Router With Modem Router', '2013-01-23 19:31:18'),
(27, 18, 4999, 'http://www.timtara.com/products/Huawei-U5510-Mobile-Phone.html', 'Delivery Within 3 Weeks.', 0, 'Huawei U5510 Mobile Phone', '2013-01-23 19:33:12'),
(27, 19, 21690, 'http://www.timtara.com/products/Samsung-Galaxy-Tab-2-P3100--Wi%252dFi%2C-3G%2C-16GB.html', 'Delivery Within 3 Weeks.', 0, 'Samsung Galaxy Tab 2 P3100  Wi-Fi, 3G, 16GB', '2013-01-23 19:36:41'),
(27, 20, 16390, 'http://www.timtara.com/products/Sony-Xperia-J-Mobile-Phone.html', 'Delivery Within 3 Weeks.', 0, 'Sony Xperia J Mobile Phone', '2013-01-23 19:38:05'),
(27, 21, 1699, 'http://www.timtara.com/products/Fastrack-Women-Watch-%289650SL03%29.html', 'Delivery Within 3 Weeks.', 0, 'Fastrack Women Watch (9650SL03)', '2013-01-23 19:40:12'),
(27, 22, 3299, 'http://www.timtara.com/products/Amber-Pink-By-Prada-For-Women-%2880ml%29.html', 'Delivery Within 3 Weeks.', 0, 'Amber Pink By Prada For Women (80ml)', '2013-01-23 19:42:42'),
(27, 23, 10690, 'http://www.timtara.com/products/Kelvinator-KFE-194-Single-Door-180-Litres-Refrigerator.html', 'Delivery Within 3 Weeks.', 0, 'Kelvinator KFE 194 Single Door 180 Litres Refrigerator', '2013-01-23 19:44:17'),
(27, 24, 33902, 'http://www.timtara.com/products/Nikon-D5100-SLR-With-18%252d55mm-VR-Kit-Lens.html', 'Delivery Within 3 Weeks.', 0, 'Nikon D5100 SLR With 18-55mm VR Kit Lens', '2013-01-23 19:45:05'),
(27, 25, 5599, 'http://www.timtara.com/products/Micromax-Ninja-3-A57-Mobile-Phone.html', 'Delivery Within 3 Weeks.', 0, 'Micromax Ninja 3 A57 Mobile Phone', '2013-01-23 20:12:01'),
(27, 26, 300, 'http://www.timtara.com/products/Sandisk-Cruzer-Blade-Pen-Drive%252d4GB.html', 'Delivery Within 3 Weeks.', 0, 'Sandisk Cruzer Blade Pen Drive-4GB', '2013-01-23 21:46:01'),
(27, 27, 5555, 'http://www.timtara.com/products/FCUK-Analog-Watch-%252d-For-Women-%28Black%29.html', 'Delivery Within 3 Weeks.', 0, 'FCUK Analog Watch - For Women (Black)', '2013-01-23 22:15:47'),
(27, 28, 2499, 'http://www.timtara.com/products/Timex-Expedition-Analog%252dDigital-Watch-%252d-Unisex-%28Brown%29.html', 'Delivery Within 3 Weeks.', 0, 'Timex Expedition Analog-Digital Watch - Unisex (Brown)', '2013-01-23 22:17:07'),
(27, 29, 8725, 'http://www.timtara.com/products/Canon-SX150-IS-14MP-Digital-Camera%28Black%29.html', 'Delivery Within 3 Weeks.', 0, 'Canon SX150 IS 14MP Digital Camera(Black)', '2013-01-23 22:27:21'),
(27, 31, 1799, 'http://www.timtara.com/products/Capdase-mKeeper-Notebook-Sleeve-Case-for-Notebook-%7B47%7D-Macbook-13%22-%252d-Black2.html', 'Delivery Within 3 Weeks.', 0, 'Capdase mKeeper Notebook Sleeve Case for Notebook / Macbook 13&qu...', '2013-01-23 22:36:38'),
(27, 32, 650, 'http://www.timtara.com/products/HP-16GB-PenDrive.html', 'Delivery Within 3 Weeks.', 0, 'HP 16GB PenDrive', '2013-01-28 19:32:49'),
(27, 33, 1655, 'http://www.timtara.com/products/Kingston-DTIG3%252d32-GB-Pen-Drive.html', 'Delivery Within 3 Weeks.', 0, 'Kingston DTIG3-32 GB Pen Drive', '2013-01-28 19:39:54'),
(27, 34, 34099, 'http://www.timtara.com/products/Nokia-Lumia-900-Mobile-Phone.html', 'Delivery Within 3 Weeks.', 0, 'Nokia Lumia 900 Mobile Phone', '2013-01-30 13:49:35'),
(27, 35, 6649, 'http://www.timtara.com/products/Nokia-Asha-302-Mobile-Phone.html', 'Delivery Within 3 Weeks.', 0, 'Nokia Asha 302 Mobile Phone', '2013-01-30 13:52:01'),
(27, 36, 3999, 'http://www.timtara.com/products/Nokia-Asha-202-Mobile-Phone.html', 'Delivery Within 3 Weeks.', 0, 'Nokia Asha 202 Mobile Phone', '2013-01-30 13:53:07'),
(27, 38, 22490, 'http://www.timtara.com/products/Blackberry-Bold-9780-Mobile-Phone.html', 'Delivery Within 3 Weeks.', 0, 'Blackberry Bold 9780 Mobile Phone', '2013-02-12 22:56:10'),
(27, 39, 22490, 'http://www.timtara.com/products/Blackberry-Bold-9780-Mobile-Phone.html', 'Delivery Within 3 Weeks.', 0, 'Blackberry Bold 9780 Mobile Phone', '2013-02-12 22:56:49'),
(27, 40, 4400, 'http://www.timtara.com/products/iBall-Mobile-Phone-Vibe-Internet%2C-Mobile-Firewall%2C-Camera-3MP.html', 'Delivery Within 3 Weeks.', 0, 'iBall Mobile Phone Vibe Internet, Mobile Firewall, Camera 3MP', '2013-02-19 17:34:08'),
(27, 42, 2699, 'http://www.timtara.com/products/Nokia-112-Mobile-Phone.html', 'Delivery Within 3 Weeks.', 0, 'Nokia 112 Mobile Phone', '2013-02-19 17:35:19'),
(27, 43, 25990, 'http://www.timtara.com/products/Samsung-Galaxy-Tab-730-Wi%252dFi%2C-3G%2C-16-GB.html', 'Delivery Within 3 Weeks.', 0, 'Samsung Galaxy Tab 730 Wi-Fi, 3G, 16 GB', '2013-02-21 16:35:10'),
(27, 45, 14999, 'http://www.timtara.com/products/Samsung-Washing-Machine-%252d-WA82B4TEC.html', 'Delivery Within 3 Weeks.', 0, 'Samsung Washing Machine - WA82B4TEC', '2013-02-22 08:13:57'),
(27, 46, 13409, 'http://www.timtara.com/products/Nokia-Lumia-610-Mobile-Phone.html', 'Delivery Within 3 Weeks.', 0, 'Nokia Lumia 610 Mobile Phone', '2013-02-22 16:36:43'),
(27, 47, 39999, 'http://www.timtara.com/products/Nokia-Lumia-920-Mobile-Phone.html', 'Delivery Within 3 Weeks.', 0, 'Nokia Lumia 920 Mobile Phone', '2013-02-22 16:43:44'),
(27, 48, 25990, 'http://www.timtara.com/products/Samsung-Galaxy-Tab-730-Wi%252dFi%2C-3G%2C-16-GB.html', 'Delivery Within 3 Weeks.', 0, 'Samsung Galaxy Tab 730 Wi-Fi, 3G, 16 GB', '2013-02-24 10:53:17'),
(27, 49, 3100, 'http://www.timtara.com/products/Apple-iPod-Shuffle-%252d-2GB-Model-Of-Late-2010.html', 'Delivery Within 3 Weeks.', 0, 'Apple iPod Shuffle - 2GB Model Of Late 2010', '2013-02-24 10:57:20'),
(27, 50, 29990, 'http://www.timtara.com/products/Apple-Iphone-4-16GB.html', 'Delivery Within 3 Weeks.', 0, 'Apple Iphone 4 16GB', '2013-02-24 10:58:25'),
(27, 51, 47900, 'http://www.timtara.com/products/Apple-iPhone-5-%252d-16GB-%28White%29.html', 'Delivery Within 3 Weeks.', 0, 'Apple iPhone 5 - 16GB (White)', '2013-02-24 13:13:21'),
(27, 52, 25990, 'http://www.timtara.com/products/Samsung-Galaxy-Tab-730-Wi%252dFi%2C-3G%2C-16-GB.html', 'Delivery Within 3 Weeks.', 0, 'Samsung Galaxy Tab 730 Wi-Fi, 3G, 16 GB', '2013-02-24 16:35:45'),
(27, 53, 25990, 'http://www.timtara.com/products/Samsung-Galaxy-Tab-730-Wi%252dFi%2C-3G%2C-16-GB.html', 'Delivery Within 3 Weeks.', 0, 'Samsung Galaxy Tab 730 Wi-Fi, 3G, 16 GB', '2013-02-24 16:38:38'),
(27, 54, 4331, 'http://www.timtara.com/products/Netgear-DGN2200-ADSL2%252b-Wireless%252dN-300-Router-With-Modem-Router.html', 'Delivery Within 3 Weeks.', 0, 'Netgear DGN2200 ADSL2+ Wireless-N 300 Router With Modem Router', '2013-02-25 19:02:59'),
(27, 55, 16499, 'http://www.timtara.com/products/Nokia-Lumia-710-Mobile-Phone.html', 'Delivery Within 3 Weeks.', 0, 'Nokia Lumia 710 Mobile Phone', '2013-02-28 02:05:16'),
(27, 56, 43490, 'http://www.timtara.com/products/BlackBerry-Z10-Mobile-Phone.html', 'Delivery Within 3 Weeks.', 0, 'BlackBerry Z10 Mobile Phone', '2013-02-28 02:32:49'),
(27, 59, 13200, 'http://www.timtara.com/products/Pack-Of-50-Sandisk-4G-Pendrive.html', 'Delivery Within 3 Weeks.', 0, 'Pack Of 50 Sandisk 4G Pendrive', '2013-02-28 19:26:08'),
(27, 60, 650, 'http://www.timtara.com/products/HP-16GB-PenDrive.html', 'Delivery Within 3 Weeks.', 0, 'HP 16GB PenDrive', '2013-02-28 19:27:04'),
(27, 61, 659, 'http://www.timtara.com/products/Sony-8GB-Micro-Vault-Pen-Drive-Tiny.html', 'Delivery Within 3 Weeks.', 0, 'Sony 8GB Micro Vault Pen Drive Tiny', '2013-02-28 19:28:15'),
(27, 64, 15499, 'http://www.timtara.com/products/Nintendo-Wii-With-Wii-Sports-%26-New-Super-Mario-Bros.-Wii-.html', 'Delivery Within 3 Weeks.', 0, 'Nintendo Wii With Wii Sports & New Super Mario Bros. Wii ', '2013-03-04 20:09:09'),
(27, 70, 799, 'http://www.timtara.com/products/Golla-Mobile-Pocket-%252d-Cajun-Plaid3.html', 'Delivery Within 3 Weeks.', 0, 'Golla Mobile Pocket - Cajun Plaid3', '2013-03-04 23:09:00'),
(27, 71, 33990, 'http://www.timtara.com/products/IFB-ELITE-SX-5.5-KG-Washing-Machine.html', 'Delivery Within 3 Weeks.', 0, 'IFB ELITE SX 5.5 KG Washing Machine', '2013-03-07 11:01:14'),
(27, 72, 25990, 'http://www.timtara.com/products/Samsung-Galaxy-Tab-730-Wi%252dFi%2C-3G%2C-16-GB.html', 'Delivery Within 3 Weeks.', 0, 'Samsung Galaxy Tab 730 Wi-Fi, 3G, 16 GB', '2013-03-17 20:37:20'),
(27, 73, 25990, 'http://www.timtara.com/products/Samsung-Galaxy-Tab-730-Wi%252dFi%2C-3G%2C-16-GB.html', 'Delivery Within 3 Weeks.', 0, 'Samsung Galaxy Tab 730 Wi-Fi, 3G, 16 GB', '2013-03-19 14:59:59'),
(27, 74, 43490, 'http://www.timtara.com/products/BlackBerry-Z10-Mobile-Phone.html', 'Delivery Within 3 Weeks.', 0, 'BlackBerry Z10 Mobile Phone', '2013-03-19 15:06:02'),
(27, 77, 2699, 'http://www.timtara.com/products/Nokia-112-Mobile-Phone.html', 'Delivery Within 3 Weeks.', 0, 'Nokia 112 Mobile Phone', '2013-03-19 15:12:55'),
(27, 78, 23800, 'http://www.timtara.com/products/Samsung-Galaxy-Grand-Duos-I9082-Mobile-phone.html', 'Delivery Within 3 Weeks.', 0, 'Samsung Galaxy Grand Duos I9082 Mobile phone', '2013-03-19 19:06:28'),
(27, 79, 729, 'http://www.timtara.com/products/Strontium-16GB-MicroSD-Memory-Card.html', 'Delivery Within 3 Weeks.', 0, 'Strontium 16GB MicroSD Memory Card', '2013-03-19 19:15:28'),
(27, 80, 39990, 'http://www.timtara.com/products/Sony-Xperia-Z-Mobile-Phone.html', 'Delivery Within 3 Weeks.', 0, 'Sony Xperia Z Mobile Phone', '2013-03-21 16:44:56'),
(27, 81, 6990, 'http://www.timtara.com/products/Sony-PS2-Game.html', 'Delivery Within 3 Weeks.', 0, 'Sony PS2 Game', '2013-03-21 16:51:03'),
(27, 82, 799, 'http://www.timtara.com/products/Colors-By-Benetton-For-Women-%28100ml%29.html', 'Delivery Within 3 Weeks.', 0, 'Colors By Benetton For Women (100ml)', '2013-03-21 17:00:48'),
(27, 85, 4490, 'http://www.timtara.com/products/Samsung-Rex-70-S3802-Mobile-Phone.html', 'Delivery Within 3 Weeks.', 0, 'Samsung Rex 70 S3802 Mobile Phone', '2013-03-21 17:12:08'),
(27, 86, 4940, 'http://www.timtara.com/products/Micromax-Q66-Mobile-Phone.html', 'Delivery Within 3 Weeks.', 0, 'Micromax Q66 Mobile Phone', '2013-03-28 22:46:56'),
(27, 87, 25990, 'http://www.timtara.com/products/Samsung-Galaxy-Tab-730-Wi%252dFi%2C-3G%2C-16-GB.html', 'Delivery Within 3 Weeks.', 0, 'Samsung Galaxy Tab 730 Wi-Fi, 3G, 16 GB', '2013-03-29 10:21:59'),
(27, 88, 25990, 'http://www.timtara.com/products/Samsung-Galaxy-Tab-730-Wi%252dFi%2C-3G%2C-16-GB.html', 'Delivery Within 3 Weeks.', 0, 'Samsung Galaxy Tab 730 Wi-Fi, 3G, 16 GB', '2013-03-29 10:22:56'),
(27, 89, 25990, 'http://www.timtara.com/products/Samsung-Galaxy-Tab-730-Wi%252dFi%2C-3G%2C-16-GB.html', 'Delivery Within 3 Weeks.', 0, 'Samsung Galaxy Tab 730 Wi-Fi, 3G, 16 GB', '2013-03-29 10:24:04'),
(27, 90, 30555, 'http://www.timtara.com/products/3M-Projector-%252d-MPro-180-.html', 'Delivery Within 3 Weeks.', 0, '3M Projector - MPro 180 ', '2013-04-05 19:26:17');

-- --------------------------------------------------------

--
-- Table structure for table `tradus`
--

CREATE TABLE IF NOT EXISTS `tradus` (
  `WebsiteID` int(10) NOT NULL,
  `ProductId` int(10) NOT NULL,
  `Price` int(10) NOT NULL,
  `Link` text NOT NULL,
  `DeliveryTime` text NOT NULL,
  `EMI` int(1) NOT NULL DEFAULT '1',
  `Title` text NOT NULL,
  `Time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tradus`
--

INSERT INTO `tradus` (`WebsiteID`, `ProductId`, `Price`, `Link`, `DeliveryTime`, `EMI`, `Title`, `Time`) VALUES
(22, 1, 11799, 'http://www.tradus.com/samsung-galaxy-s-duos-s7562-mobile-phone/p/MOBMAOULKYHGYABH?src=sr&cl=lnk&pos=1&filter=query:samsung duos_', 'Delivery in 3-5 working days.', 1, 'Samsung Galaxy S Duos S7562 Mobile Phone ( White) ', '2013-01-18 16:54:00'),
(22, 2, 6499, 'http://www.tradus.com/samsung-s5302-galaxy-y-duos-lite-mobile-phone-white/p/MOBMA9VATVBHQZ6C?src=sr&cl=lnk&pos=1&filter=query:Samsung Galaxy Y Duos Lite GT-S5302 (White)_', 'Delivery in 3-5 working days.', 1, 'Samsung S5302 Galaxy Y Duos Lite Mobile Phone (White) ', '2013-01-18 17:35:05'),
(22, 3, 7198, 'http://www.tradus.com/samsung-galaxy-y-duos-s6102-dual-sim-mobile-phone/p/MOB0000004556059?src=sr&cl=lnk&pos=1&filter=query:Samsung Galaxy Y Duos GT-S6102 (Black)_', 'Delivery in 3-5 working days.', 1, 'Samsung Galaxy Y Duos S6102 Dual Sim Mobile Phone (Strong Black) ', '2013-01-18 17:36:03'),
(22, 4, 400, 'http://www.tradus.com/bs-sijwalii-amp-indu-sijwali/p/ISBNMLE3IVGYHQMO2?src=sr&cl=lnk&pos=1&filter=query:a modern approach to verbal and non verbal reasoning_', 'Delivery in 3-5 working days.', 1, 'A New Approach To Reasoning Verbal and Non Verbal ', '2013-01-18 20:24:39'),
(22, 0, 336, 'http://www.tradus.com/r-s-agarawal/p/ISBN9788121905527?src=sr&cl=lnk&pos=1&filter=query:A Modern Approach To Verbal_', 'Delivery in 3-5 working days.', 1, 'A Modern Approach To Verbal Reasoning ', '2013-01-18 20:28:46'),
(22, 6, 336, 'http://www.tradus.com/r-s-agarawal/p/ISBN9788121905527?src=sr&cl=lnk&pos=1&filter=query:A Modern Approach To Verbal_', 'Delivery in 3-5 working days.', 1, 'A Modern Approach To Verbal Reasoning ', '2013-01-18 20:29:14'),
(22, 8, 11799, 'http://www.tradus.com/samsung-galaxy-s-duos-s7562-mobile-phone/p/MOBMAOULKYHGYABH?src=sr&cl=lnk&pos=1&filter=query:Samsung Galaxy S Duos S7562 (Black)_', 'Delivery in 3-5 working days.', 1, 'Samsung Galaxy S Duos S7562 Mobile Phone ( White) ', '2013-01-18 20:48:53'),
(22, 9, 35999, 'http://www.tradus.com/apple-iphone-4s-16gb-mobile/p/MOB0000004496205?src=sr&cl=lnk&pos=1&filter=query:apple iphone 4s case_', 'Delivery in 3-5 working days.', 1, 'Apple iPhone 4S 16GB Mobile Phone (White) ', '2013-01-18 21:16:08'),
(22, 10, 4180, 'http://www.tradus.com/nokia-asha-305-dual-sim-mobile-phone/p/MOBM8IXCFUPLBDFF?src=sr&cl=lnk&pos=1&filter=query:nokia asha 305_', 'Delivery in 3-5 working days.', 1, 'Nokia Asha 305 Dual Sim Mobile Phone (Dark Grey) ', '2013-01-19 01:05:43'),
(22, 11, 495, 'http://www.tradus.com/johnsons-milk-lotion/p/TKBME574HHECPWC4?src=sr&cl=lnk&pos=1&filter=query:baby soaps_', 'Delivery in 3-5 working days.', 1, 'Johnsons Milk Lotion ', '2013-01-19 15:32:35'),
(22, 12, 31888, 'http://www.tradus.com/samsung-galaxy-note-2-n7100-white/p/MOBME6LU6K2IU7WS?src=sr&cl=lnk&pos=1&filter=query:samsung galaxy note 2_', 'Delivery in 3-5 working days.', 1, 'Samsung Galaxy Note 2 N7100 (White) ', '2013-01-19 15:34:13'),
(22, 13, 29000, 'http://www.tradus.com/samsung-galaxy-s-iii-i9300-mobile-phone-pebble-blue/p/MOB0000004788640?src=sr&cl=lnk&pos=1&filter=query:samsung galaxy s3_', 'Delivery in 3-5 working days.', 1, 'Samsung Galaxy S3 i9300 Mobile Phone (Pebble Blue) with 16GB ', '2013-01-23 19:22:50'),
(22, 14, 45999, 'http://www.tradus.com/apple-iphone-5-16-gb/p/MOBMCJSN24OMMPZ2?src=sr&cl=lnk&pos=1&filter=query:apple iphone5_', 'Delivery in 3-5 working days.', 1, 'Apple iPhone 5 16GB Mobile Phone (White) ', '2013-01-23 19:24:48'),
(22, 15, 19299, 'http://www.tradus.com/nokia-lumia-800-mobile-phone/p/MOB0000004510114?src=sr&cl=lnk&pos=1&filter=query:Nokia Lumia 800_', 'Delivery in 3-5 working days.', 1, 'Nokia Lumia 800 Mobile Phone (Black) ', '2013-01-23 19:27:43'),
(22, 16, 475, 'http://www.tradus.com/philips-neckband-headphone-shs390-98/p/HEPMD7YAKGQ5XPD5?src=sr&cl=lnk&pos=1&filter=query:Philips SHS 390 Headphone_', 'Delivery in 3-5 working days.', 1, 'Philips Neckband Headphone (Shs390/98) ', '2013-01-23 19:30:00'),
(22, 17, 2190, 'http://www.tradus.com/netgear-dgn1000-n150-wireless-adsl2-modem-router/p/NSWMCR4HAEHPCU6Z?src=sr&cl=lnk&pos=1&filter=query:Netgear JNR1010 N150 Wireless Router_', 'Delivery in 3-5 working days.', 1, 'Netgear DGN1000 N150 Wireless Adsl2  Modem Router ', '2013-01-23 19:31:16'),
(22, 18, 1675, 'http://www.tradus.com/huawei-e303-usb-data-card/p/NSW0000004511143?src=sr&cl=lnk&pos=1&filter=query:Huawei E303C Data Card_', 'Delivery in 3-5 working days.', 1, 'Huawei E303C USB Data Card ', '2013-01-23 19:33:09'),
(22, 19, 35950, 'http://www.tradus.com/samsung-galaxy-note-2-n7100/p/MOBMB27ORI5YZWHR?src=sr&cl=lnk&pos=1&filter=query:Samsung Galaxy Tab 2 P3100_', 'Delivery in 3-5 working days.', 1, 'Samsung Galaxy Note 2 N7100 (Gray) ', '2013-01-23 19:36:40'),
(22, 20, 13299, 'http://www.tradus.com/sony-xperia-j-mobile-phone/p/MOBMC4PEADSZ7N5H?src=sr&cl=lnk&pos=1&filter=query:Sony Xperia J_', 'Delivery in 3-5 working days.', 1, 'Sony Xperia J Mobile Phone (Black ', '2013-01-23 19:38:04'),
(22, 21, 1076, 'http://www.tradus.com/fastrack-women-watch-2298sl01/p/WATM9YTWYTDVAIQU?src=sr&cl=lnk&pos=1&filter=query:Fastrack Tote - For Women_', 'Delivery in 3-5 working days.', 1, 'FASTRACK Women WATCH 2298sl01 ', '2013-01-23 19:40:10'),
(22, 22, 6397, 'http://www.tradus.com/swatch-menthol-tone-pink-ladies-watch-lk322g/p/WATMCSPJUFPLJLIZ?src=sr&cl=lnk&pos=1&filter=query:Fastrack Tote - For Women (Pink)_', 'Delivery in 3-5 working days.', 1, 'Swatch Menthol Tone Pink Ladies Watch Lk322G (Imported) ', '2013-01-23 19:42:42'),
(22, 23, 458, 'http://www.tradus.com/sandisk-16gb-cruzer-blade-pen-drive/p/PDR0000004455723?src=sr_sugg_prod&cl=lnk&pos=1&filter=query:Electrolux EBE183BR Single Door 170 Litres Refrigerator_', 'Delivery in 3-5 working days.', 1, 'Sandisk 16GB Cruzer Blade Pen Drive ', '2013-01-23 19:44:18'),
(22, 24, 32099, 'http://www.tradus.com/nikon-d5100-dslr-digital-camera-18-55mm-vr-lens-4gb-card-ba/p/CAM0000003530702?src=sr&cl=lnk&pos=1&filter=query:Nikon D5100 SLR_', 'Delivery in 3-5 working days.', 1, 'Nikon D5100 DSLR Digital Camera With 18 55mm Vr Lens with 4gb Card and DSLR Bag ', '2013-01-23 19:45:04'),
(22, 25, 350, 'http://www.tradus.com/scratchgard-micromax-a57-ninja-3-0-screen-protector-scratch-guard-clear/p/MOAMMJ12FY3MF5YN?src=sr&cl=lnk&pos=1&filter=query:Micromax Ninja 3 A57_', 'Delivery in 3-5 working days.', 1, 'Scratchgard Micromax A57 Ninja 3.0 Screen Protector Scratch Guard | Clear ', '2013-01-23 20:12:01'),
(22, 26, 390, 'http://www.tradus.com/sandisk-16gb-cruzer-blade-pen-drive/p/PDR0000004455723?src=sr&cl=lnk&pos=1&filter=query:Sandisk Cruzer Blade 16 GB Pen Drive_', 'Delivery in 3-5 working days.', 1, 'Sandisk 16GB Cruzer Blade Pen Drive ', '2013-01-23 21:45:59'),
(22, 27, 449, 'http://www.tradus.com/exotica-analog-men-wrist-watch/p/WATMANBPQTPGXQGB?src=sr&cl=lnk&pos=1&filter=query:FCUK Analog Watch - For Men_', 'Delivery in 3-5 working days.', 1, 'Exotica Analog Men Wrist Watch ', '2013-01-23 22:15:45'),
(22, 28, 1555, 'http://www.tradus.com/fastrack-beach-analog-watch-3016al05-menblack/p/WAT0000004810722?src=sr&cl=lnk&pos=1&filter=query:Fastrack Tees Analog Watch - Unisex_', 'Delivery in 3-5 working days.', 1, 'Fastrack Beach Analog Watch 3016AL05   For Men(Black) ', '2013-01-23 22:17:08'),
(22, 29, 7899, 'http://www.tradus.com/canon-powershot-sx150-141-mp-digital-camera-black-4gb-memory-card/p/CAM0000004480563?src=sr&cl=lnk&pos=1&filter=query:Canon PowerShot SX150 IS Point_', 'Delivery in 3-5 working days.', 1, 'Canon Powershot SX150 IS 14.1 MP Digital Camera (Black) ', '2013-01-23 22:27:19'),
(22, 30, 5618, 'http://www.tradus.com/case-logic-rbp-115-156-inch-macbook-prolaptop-backpack-ipadtablet-pocket-bl/p/ELA0000004801366?src=sr&cl=lnk&pos=1&filter=query:macbookpro_', 'Delivery in 3-5 working days.', 1, 'Case Logic RBP 115 15.6 Inch MacBook Pro/Laptop Backpack with iPad/Tablet Pocket (Black) ', '2013-01-23 22:31:53'),
(22, 31, 91090, 'http://www.tradus.com/apple-macbook-pro-mc700ll-notebook-intel-core-i5-2415m-2-3-ghz-dual-4gb-320gb-mac-silver-imported/p/LNBMPAWVMM9QOEPU?src=sr&cl=lnk&pos=1&filter=query:apple macbook pro_', 'Delivery in 3-5 working days.', 1, 'Apple MacBook Pro MC700LL/A Notebook (Intel Core i5 2415M 2.3 GHz dual core, 4GB, 320GB, Mac)   Silver IMPORTED ', '2013-01-23 22:36:37'),
(22, 32, 420, 'http://www.tradus.com/moserbaer-usb-drives-2gb-knight-pen-drive/p/PDRMGRJF9CAF6IGS?src=sr&cl=lnk&pos=1&filter=query:2GB Pendrive_', 'Delivery in 3-5 working days.', 1, 'Moserbaer USB Drives 2GB (Knight) Pen Drive ', '2013-01-28 19:32:48'),
(22, 33, 519, 'http://www.tradus.com/kingston-dtig3-16gb-pen-drive-white-dark-blue/p/PDRM8JF8LAWVGHNH?src=sr&cl=lnk&pos=1&filter=query:Kingston 2GB Pendrive_', 'Delivery in 3-5 working days.', 1, 'Kingston DTIG3 16GB Pen Drive (White and Dark Blue) ', '2013-01-28 19:39:54'),
(22, 34, 18581, 'http://www.tradus.com/nokia-lumia-900-white-imported/p/MOBMON7LSGIXZJB2?src=sr&cl=lnk&pos=1&filter=query:Nokia lumia 900_', 'Delivery in 3-5 working days.', 1, 'Nokia Lumia 900 (White) IMPORTED ', '2013-01-30 13:49:34'),
(22, 35, 6910, 'http://www.tradus.com/nokia-asha-302-black/p/MOBMP3CDYEQ9XJFG?src=sr&cl=lnk&pos=1&filter=query:Nokia asha 302_', 'Delivery in 3-5 working days.', 1, 'Nokia Asha 302 (Black) ', '2013-01-30 13:52:00'),
(22, 36, 4094, 'http://www.tradus.com/nokia-asha-202-dual-sim-mobile-phone-silver-white/p/MOB0000004770338?src=sr&cl=lnk&pos=1&filter=query:Nokia asha 202_', 'Delivery in 3-5 working days.', 1, 'Nokia Asha 202 Dual Sim Mobile Phone (Silver White) ', '2013-01-30 13:53:03'),
(22, 37, 799, 'http://www.tradus.com/fashion-eye-wear-combo-sunglass-watch/p/CACM9GEQAX4TKRNY?src=sr&cl=lnk&pos=1&filter=query:sunglasses_', 'Delivery in 3-5 working days.', 1, 'Fashion Eye Wear Combo Of Sunglass And Watch. ', '2013-02-10 23:58:13'),
(22, 38, 30990, 'http://www.tradus.com/blackberry-bold4-9900-mobile/p/MOB0000004481604?src=sr&cl=lnk&pos=1&filter=query:blackberry bold 10_', 'Delivery in 3-5 working days.', 1, 'Blackberry Bold4 9900 Mobile ', '2013-02-12 22:56:09'),
(22, 39, 19500, 'http://www.tradus.com/blackberry-bold-9790/p/MOBMMEQL7N2ENA4H?src=sr&cl=lnk&pos=1&filter=query:blackberry bold_', 'Delivery in 3-5 working days.', 1, 'Blackberry Bold 9790 ', '2013-02-12 22:56:49'),
(22, 40, 12989, 'http://www.tradus.com/sony-xperia-u-mobile-phone/p/MOB0000004774734?src=sr&cl=lnk&pos=1&filter=query:mobile_', 'Delivery in 3-5 working days.', 1, 'Sony Xperia U Mobile Phone ', '2013-02-19 17:34:09'),
(22, 41, 16979, 'http://www.tradus.com/nokia-e6-mobile-phone/p/MOB0000004389342?src=sr&cl=lnk&pos=1&filter=query:Nokias e 71_', 'Delivery in 3-5 working days.', 1, 'Nokia E6 Mobile Phone ', '2013-02-19 17:34:45'),
(22, 42, 16979, 'http://www.tradus.com/nokia-e6-mobile-phone/p/MOB0000004389342?src=sr&cl=lnk&pos=1&filter=query:Nokia e 71_', 'Delivery in 3-5 working days.', 1, 'Nokia E6 Mobile Phone ', '2013-02-19 17:35:19'),
(22, 43, 29480, 'http://www.tradus.com/samsung-galaxy-s-iii-i9300-mobile-phone-pebble-blue/p/MOB0000004788640?src=sr&cl=lnk&pos=1&filter=query:samsung_', 'Delivery in 3-5 working days.', 1, 'Samsung Galaxy S3 i9300 Mobile Phone (Pebble Blue) with 16GB ', '2013-02-21 16:35:09'),
(22, 44, 29480, 'http://www.tradus.com/samsung-galaxy-s-iii-i9300-mobile-phone-pebble-blue/p/MOB0000004788640?src=sr&cl=lnk&pos=1&filter=query:samung_', 'Delivery in 3-5 working days.', 1, 'Samsung Galaxy S3 i9300 Mobile Phone (Pebble Blue) with 16GB ', '2013-02-21 17:29:26'),
(22, 45, 26990, 'http://www.tradus.com/samsung-5-kg-front-loading-washing-machine-wf0550wjw-xtl/p/WASMLJI3CA3NPCWA?src=sr&cl=lnk&pos=1&filter=query:Samsung washing machine_', 'Delivery in 3-5 working days.', 1, 'Samsung 5.5 kg Front Loading Washing Machine WF0550WJW/XTL ', '2013-02-22 08:13:54'),
(22, 46, 11400, 'http://www.tradus.com/nokia-lumia-610-mobile-phone-cyan/p/MOBMA6B3XNTPENWH?src=sr&cl=lnk&pos=1&filter=query:nokia lumia 610_', 'Delivery in 3-5 working days.', 1, 'Nokia Lumia 610 Mobile Phone (Cyan) ', '2013-02-22 16:36:42'),
(22, 47, 31608, 'http://www.tradus.com/nokia-lumia-920-32gb-yellow-imported/p/MOBMOLAIJYZQCNCN?src=sr&cl=lnk&pos=1&filter=query:nokia lumia 920_', 'Delivery in 3-5 working days.', 1, 'Nokia Lumia 920 Mobile Phone (Yellow) ', '2013-02-22 16:43:42'),
(22, 48, 29490, 'http://www.tradus.com/samsung-galaxy-s-iii-i9300-mobile-phone-pebble-blue/p/MOB0000004788640?src=sr&cl=lnk&pos=1&filter=query:Samsung galaxy_', 'Delivery in 3-5 working days.', 1, 'Samsung Galaxy S3 i9300 Mobile Phone (Pebble Blue) with 16GB ', '2013-02-24 10:53:15'),
(22, 49, 175, 'http://www.tradus.com/1st-bites-wheat-n-apple/p/TKBMOLKVXZVFQ3DN?src=sr&cl=lnk&pos=1&filter=query:apple_', 'Delivery in 3-5 working days.', 1, '1st Bites wheat n apple ', '2013-02-24 10:57:18'),
(22, 50, 33000, 'http://www.tradus.com/apple-iphone-4s/p/MOBMMSEZTLQGITPG?src=sr&cl=lnk&pos=1&filter=query:Apple iPhone 4s_', 'Delivery in 3-5 working days.', 1, 'Apple iPhone 4S ', '2013-02-24 10:58:25'),
(22, 51, 44444, 'http://www.tradus.com/apple-iphone-5-16-gb/p/MOBMCJSN24OMMPZ2?src=sr&cl=lnk&pos=1&filter=query:Apple iPhone 5_', 'Delivery in 3-5 working days.', 1, 'Apple iPhone 5 16GB Mobile Phone (White) ', '2013-02-24 13:13:22'),
(22, 52, 55786, 'http://www.tradus.com/samsung-new-40eh6030-led-full-hd-3d-tv-connect-share-movie-cmr-200hz/p/LCDMC0Y8TMERR5GM?src=sr&cl=lnk&pos=1&filter=query:Samsung led tv_', 'Delivery in 3-5 working days.', 1, 'Samsung New 40EH6030   LED   Full HD   3D TV   Connect Share Movie   CMR 200Hz ', '2013-02-24 16:35:43'),
(22, 53, 85555, 'http://www.tradus.com/samsung-46d5500-led-tv/p/LCD0000004546175?src=sr&cl=lnk&pos=1&filter=query:Samsung 46 led tv_', 'Delivery in 3-5 working days.', 1, 'Samsung 46D5500 LED TV ', '2013-02-24 16:38:38'),
(22, 54, 2850, 'http://www.tradus.com/netgear-jnr3000-n300-gigabit-router/p/NSWMKQXGAFU7TDBI?src=sr&cl=lnk&pos=1&filter=query:Netgear N300_', 'Delivery in 3-5 working days.', 1, 'Netgear JNR3000 N300 Gigabit Router ', '2013-02-25 19:02:59'),
(22, 55, 13040, 'http://www.tradus.com/nokia-lumia-710-mobile-phone/p/MOB0000004517311?src=sr&cl=lnk&pos=1&filter=query:nokia lumia 710_', 'Delivery in 3-5 working days.', 1, 'Nokia Lumia 710 Mobile Phone (White Cyan) ', '2013-02-28 02:05:14'),
(22, 56, 39999, 'http://www.tradus.com/blackberry-z10/p/MOBMJLH4YFSHJUIF?src=sr&cl=lnk&pos=1&filter=query:blackberry z10_', 'Delivery in 3-5 working days.', 1, 'blackberry z10 ', '2013-02-28 02:32:48'),
(22, 57, 390, 'http://www.tradus.com/sandisk-16gb-cruzer-blade-pen-drive/p/PDR0000004455723?src=sr_sugg_prod&cl=lnk&pos=1&filter=query:condomns_', 'Delivery in 3-5 working days.', 1, 'Sandisk 16GB Cruzer Blade Pen Drive ', '2013-02-28 03:53:57'),
(22, 58, 299, 'http://www.tradus.com/washable-condoms/p/PPCMIZSB8WTGGZ4X?src=sr&cl=lnk&pos=1&filter=query:condom_', 'Delivery in 3-5 working days.', 1, 'Washable Condoms ', '2013-02-28 03:55:23'),
(22, 59, 390, 'http://www.tradus.com/sandisk-16gb-cruzer-blade-pen-drive/p/PDR0000004455723?src=sr&cl=lnk&pos=1&filter=query:sandisk 16gb pendrive_', 'Delivery in 3-5 working days.', 1, 'Sandisk 16GB Cruzer Blade Pen Drive ', '2013-02-28 19:26:05'),
(22, 60, 220, 'http://www.tradus.com/sandisk-8gb-cruzer-blade-pen-drive/p/PDR0000004455707?src=sr&cl=lnk&pos=1&filter=query:sony 8gb pendrive_', 'Delivery in 3-5 working days.', 1, 'Sandisk 8GB Cruzer Blade Pen Drive ', '2013-02-28 19:27:03'),
(22, 61, 280, 'http://www.tradus.com/sony-8gb-classic-usb-pendrive/p/PDR0000004455696?src=sr&cl=lnk&pos=1&filter=query:sony tiny 8gb pendrive_', 'Delivery in 3-5 working days.', 1, 'Sony 8GB Classic USB Pendrive ', '2013-02-28 19:28:14'),
(22, 65, 390, 'http://www.tradus.com/sandisk-16gb-cruzer-blade-pen-drive/p/PDR0000004455723?src=sr_sugg_prod&cl=lnk&pos=1&filter=query:Structural dynamics theory and practiceby Mario poaz_', 'Delivery in 3-5 working days.', 1, 'Sandisk 16GB Cruzer Blade Pen Drive ', '2013-03-04 20:18:30'),
(22, 66, 390, 'http://www.tradus.com/sandisk-16gb-cruzer-blade-pen-drive/p/PDR0000004455723?src=sr_sugg_prod&cl=lnk&pos=1&filter=query:Structural dynamics theory and practice by Mario poaz_', 'Delivery in 3-5 working days.', 1, 'Sandisk 16GB Cruzer Blade Pen Drive ', '2013-03-04 20:19:00'),
(22, 67, 390, 'http://www.tradus.com/sandisk-16gb-cruzer-blade-pen-drive/p/PDR0000004455723?src=sr_sugg_prod&cl=lnk&pos=1&filter=query:Structural dynamics theory and computation  by Mario poaz_', 'Delivery in 3-5 working days.', 1, 'Sandisk 16GB Cruzer Blade Pen Drive ', '2013-03-04 21:33:48'),
(22, 69, 390, 'http://www.tradus.com/sandisk-16gb-cruzer-blade-pen-drive/p/PDR0000004455723?src=sr_sugg_prod&cl=lnk&pos=1&filter=query:Structural dynamics theory and computation by mario_', 'Delivery in 3-5 working days.', 1, 'Sandisk 16GB Cruzer Blade Pen Drive ', '2013-03-04 21:36:06'),
(22, 70, 390, 'http://www.tradus.com/sandisk-16gb-cruzer-blade-pen-drive/p/PDR0000004455723?src=sr_sugg_prod&cl=lnk&pos=1&filter=query:Pocket planner_', 'Delivery in 3-5 working days.', 1, 'Sandisk 16GB Cruzer Blade Pen Drive ', '2013-03-04 23:09:00'),
(22, 71, 2700, 'http://www.tradus.com/brilliant-bwm-9001-mini-washing-machine/p/WASMDXKG2FBRRKRW?src=sr&cl=lnk&pos=1&filter=query:washing machine_', 'Delivery in 3-5 working days.', 1, 'Brilliant Bwm 9001 Mini Washing Machine ', '2013-03-07 11:01:12'),
(22, 72, 29299, 'http://www.tradus.com/samsung-galaxy-s-iii-i9300-mobile-phone-pebble-blue/p/MOB0000004788640?src=sr&cl=lnk&pos=1&filter=query:Samsung galaxy s4_', 'Delivery in 3-5 working days.', 1, 'Samsung Galaxy S3 i9300 Mobile Phone (Pebble Blue) with 16GB ', '2013-03-17 20:37:18'),
(22, 73, 29500, 'http://www.tradus.com/samsung-galaxy-s-iii-i9300-mobile-phone-pebble-blue/p/MOB0000004788640?src=sr&cl=lnk&pos=1&filter=query:samsung galaxy s 3_', 'Delivery in 3-5 working days.', 1, 'Samsung Galaxy S3 i9300 Mobile Phone (Pebble Blue) with 16GB ', '2013-03-19 14:59:57'),
(22, 74, 39999, 'http://www.tradus.com/blackberry-z10/p/MOBMJLH4YFSHJUIF?src=sr&cl=lnk&pos=1&filter=query:blackberry z_', 'Delivery in 3-5 working days.', 1, 'blackberry z10 ', '2013-03-19 15:06:01'),
(22, 76, 1431, 'http://www.tradus.com/varta-easy-energy-plug-charger-4-cell-capacity-aa-si/p/CAA0000004767742?src=sr&cl=lnk&pos=1&filter=query:Butterfly Tenergy 05_', 'Delivery in 3-5 working days.', 1, 'Varta Easy Energy Plug Charger 4 Cell Capacity Charger with 4 AA Size Ni MH 2500 mAh Batteries ', '2013-03-19 15:10:20'),
(22, 77, 15990, 'http://www.tradus.com/nokia-n9-amoled-capacitive-touchscreen-mobile-phone-16gb-8-mp-camera-black/p/MOBMMF2FOWTCKRIM?src=sr&cl=lnk&pos=1&filter=query:nokia n9_', 'Delivery in 3-5 working days.', 1, 'NOKIA N9 AMOLED capacitive touchscreen MOBILE PHONE 16GB and 8 MP Camera Black ', '2013-03-19 15:12:55'),
(22, 78, 29500, 'http://www.tradus.com/samsung-galaxy-s-iii-i9300-mobile-phone-pebble-blue/p/MOB0000004788640?src=sr&cl=lnk&pos=1&filter=query:samsung galaxy grand_', 'Delivery in 3-5 working days.', 1, 'Samsung Galaxy S3 i9300 Mobile Phone (Pebble Blue) with 16GB ', '2013-03-19 19:06:26'),
(22, 79, 625, 'http://www.tradus.com/transcend-memory-card-microsd-16gb-class-4-free-adapter/p/MCAMH1KPQ7HHC5UK?src=sr&cl=lnk&pos=1&filter=query:Transcend Memory Card MicroSD 16GB Class 4_', 'Delivery in 3-5 working days.', 1, 'Transcend Memory Card MicroSD 16GB Class 4 with Free Adapter ', '2013-03-19 19:15:28'),
(22, 80, 11000, 'http://www.tradus.com/sony-xperia-u-mobile-phone/p/MOB0000004774734?src=sr&cl=lnk&pos=1&filter=query:sony xperia z_', 'Delivery in 3-5 working days.', 1, 'Sony Xperia U Mobile Phone ', '2013-03-21 16:44:55'),
(22, 81, 11000, 'http://www.tradus.com/sony-xperia-u-mobile-phone/p/MOB0000004774734?src=sr&cl=lnk&pos=1&filter=query:sony_', 'Delivery in 3-5 working days.', 1, 'Sony Xperia U Mobile Phone ', '2013-03-21 16:51:02'),
(22, 82, 1206, 'http://www.tradus.com/b-united-jeans-perfume-women-girls-color-benetton-td-383/p/PPCMGRPW4F4SYT45?src=sr&cl=lnk&pos=1&filter=query:united colors of bennoton_', 'Delivery in 3-5 working days.', 1, 'B United Jeans Perfume For Women Girls By UNITED COLOR OF BENETTON TD 383 ', '2013-03-21 17:00:47'),
(22, 85, 6070, 'http://www.tradus.com/samsung-rex-90-s5292r-brown/p/MOBMJ8JTEHVX5NSD?src=sr&cl=lnk&pos=1&filter=query:samsung rex_', 'Delivery in 3-5 working days.', 1, 'Samsung Rex 90 S5292R (Brown) ', '2013-03-21 17:12:07'),
(22, 86, 14299, 'http://www.tradus.com/micromax-a116-canvas-hd-mobile-phone/p/MOBMLRGN0LHZ4MAA?src=sr&cl=lnk&pos=1&filter=query:micromax a116_', 'Delivery in 3-5 working days.', 1, 'Micromax A116 Canvas HD Mobile Phone (Black) ', '2013-03-28 22:46:54'),
(22, 87, 27777, 'http://www.tradus.com/samsung-ua32eh4003r-led-32-inches-hd-television/p/LCDMCNDBH7XAYNLL?src=sr&cl=lnk&pos=1&filter=query:Samsung led tv UA32ES6200R_', 'Delivery in 3-5 working days.', 1, 'Samsung UA32EH4003R LED 32 inches HD Television ', '2013-03-29 10:21:57'),
(22, 88, 27777, 'http://www.tradus.com/samsung-ua32eh4003r-led-32-inches-hd-television/p/LCDMCNDBH7XAYNLL?src=sr&cl=lnk&pos=1&filter=query:Samsung UA32ES6200R led_', 'Delivery in 3-5 working days.', 1, 'Samsung UA32EH4003R LED 32 inches HD Television ', '2013-03-29 10:22:55'),
(22, 89, 27777, 'http://www.tradus.com/samsung-ua32eh4003r-led-32-inches-hd-television/p/LCDMCNDBH7XAYNLL?src=sr&cl=lnk&pos=1&filter=query:UA32ES6200R Samsung led tv_', 'Delivery in 3-5 working days.', 1, 'Samsung UA32EH4003R LED 32 inches HD Television ', '2013-03-29 10:24:04'),
(22, 90, 21990, 'http://www.tradus.com/egate-p442-projector/p/PRJMCAJQ3HCI9ZZS?src=sr&cl=lnk&pos=1&filter=query:projector_', 'Delivery in 3-5 working days.', 1, 'Egate P442 Projector ', '2013-04-05 19:26:16'),
(22, 92, 39299, 'http://www.tradus.com/samsung-galaxy-s4-mobile-phone-white-forst-16gb/p/MOBMJOTWHNEVOSJ2?src=sr&cl=lnk&pos=1&filter=query:mobiles_', 'Delivery in 3-5 working days.', 1, 'Samsung Galaxy S4 Mobile Phone (White Frost)   16 GB ', '2013-07-04 02:48:45'),
(22, 91, 7099, 'http://www.tradus.com/nokia-lumia-510-mobile-phone-black/p/MOBMCR8MHPIZQH7G?src=sr&cl=lnk&pos=1&filter=query:nokia lumia 510_', 'Delivery in 3-5 working days.', 1, 'Nokia Lumia 510 Mobile Phone (Black) ', '2013-07-04 04:33:43'),
(22, 93, 1998, 'http://www.tradus.com/nokia-109-black-mobile-phone/p/MOBMOYRO3EXQFJER?src=sr&cl=lnk&pos=1&filter=query:nokia 109_', 'Delivery in 3-5 working days.', 1, 'Nokia 109   Black Mobile Phone ', '2013-07-04 05:25:25'),
(22, 94, 2537, 'http://www.tradus.com/nokia-114-mobile-phone-black/p/MOBMN5IDVYSTICBQ?src=sr&cl=lnk&pos=1&filter=query:nokia 114_', 'Delivery in 3-5 working days.', 1, 'Nokia 114 Mobile Phone (Black) ', '2013-07-04 05:28:06'),
(22, 96, 799, 'http://www.tradus.com/mini-display-thunderbolt-port-hdmi-cable-apple-mac-air-pro-macbook-6ft-1-8m/p/MOAMHW2PMUBYRFFJ?src=sr&cl=lnk&pos=1&filter=query:apple tablet_', 'Delivery in 3-5 working days.', 1, 'Mini Display Thunderbolt Port to HDMI Cable for apple Mac,Air,Pro macbook 6FT 1.8m ', '2013-07-04 16:06:12');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE IF NOT EXISTS `transactions` (
  `txnid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ipaddress` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `query` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `time` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`txnid`, `ipaddress`, `query`, `time`) VALUES
('8TA1VME23S', '223.190.101.147', 'samsung duos', '2013-01-18 16:26:06'),
('EC4TYRP2M6', '223.190.101.147', 'samsung duos', '2013-01-18 16:53:47'),
('YYP4X7ACF8', '223.190.101.147', 'samsung duos', '2013-01-18 17:29:36'),
('QAZ3033L5Z', '223.190.101.147', 'samsung duos', '2013-01-18 17:30:41'),
('QM1CB8JHQX', '223.190.101.147', 'Samsung Galaxy Y Duos Lite GT-S5302 (White)', '2013-01-18 17:34:56'),
('I78JZKT2VT', '223.190.101.147', 'Samsung Galaxy Y Duos Lite GT-S5302 (White)', '2013-01-18 17:35:28'),
('FFNKNRYJN5', '223.190.101.147', 'Samsung Galaxy Y Duos GT-S6102 (Black)', '2013-01-18 17:35:56'),
('WE64U6XGV1', '223.190.101.147', 'Samsung Galaxy Y Duos GT-S6102 (Black)', '2013-01-18 17:36:27'),
('MQ9LNON5U2', '125.62.203.153', 'a modern approach to verbal and non verbal reasoning', '2013-01-18 20:24:25'),
('VHRHD8ACB5', '125.62.203.153', 'a modern approach to verbal and non verbal reasoning', '2013-01-18 20:24:58'),
('TG26Y65EIN', '125.62.203.153', 'A Modern Approach To Verbal & Non-Verbal Reasoning (Paperback)', '2013-01-18 20:28:38'),
('P1ACRQW6VQ', '125.62.203.153', 'A Modern Approach To Verbal', '2013-01-18 20:29:10'),
('TY6LZBWE5P', '125.62.203.153', 'A Modern Approach To Verbal', '2013-01-18 20:29:42'),
('OGV6OE1KR5', '125.62.203.153', 'A Modern Approach To Verbal', '2013-01-18 20:32:44'),
('HWULFP24G6', '125.62.203.153', 'A Modern Approach To Verbal & Non Verbal Reasoning (Paperback)', '2013-01-18 20:33:00'),
('AMTP5SBNJ8', '125.62.203.153', 'A Modern Approach To Verbal', '2013-01-18 20:33:31'),
('FGMEIJ07I9', '125.62.203.153', 'Samsung Galaxy S Duos S7562 (Black)', '2013-01-18 20:48:38'),
('85C4LULETV', '125.62.203.153', 'Samsung Galaxy S Duos S7562 (Black)', '2013-01-18 20:49:10'),
('IQFRJME0QB', '125.62.203.153', 'apple iphone 4s case', '2013-01-18 21:15:58'),
('DL2KNZGWHT', '125.62.203.153', 'apple iphone 4s case', '2013-01-18 21:16:28'),
('92GKVMZ4VT', '125.62.203.153', 'apple iphone 4s case', '2013-01-18 21:18:45'),
('TX5P780SAC', '223.190.101.147', 'Samsung Galaxy Y Duos Lite GT-S5302 (White)', '2013-01-19 00:47:09'),
('GT1QCN3304', '223.190.101.147', 'Samsung Galaxy Y Duos Lite GT-S5302 (White)', '2013-01-19 00:47:41'),
('ACPWWBE8NB', '223.190.101.147', 'Samsung Galaxy Y Duos Lite GT-S5302 (White)', '2013-01-19 01:00:41'),
('BM7MKH3422', '223.190.101.147', 'Samsung Galaxy Y Duos Lite GT-S5302 (White)', '2013-01-19 01:00:56'),
('V1XLRFYA46', '223.190.101.147', 'samsung duos', '2013-01-19 01:01:15'),
('9N8LMVV2BL', '223.190.101.147', 'samsung duos', '2013-01-19 01:01:46'),
('N823OHJGWU', '223.190.101.147', 'samsung duos', '2013-01-19 01:02:54'),
('LMH4YALGMG', '223.190.101.147', 'samsung duos', '2013-01-19 01:04:53'),
('0N3X8OHFJO', '223.190.101.147', 'Samsung Galaxy Y Duos Lite GT-S5302 (White)', '2013-01-19 01:05:08'),
('3QZVMGH0GK', '223.190.101.147', 'nokia asha 305', '2013-01-19 01:05:36'),
('QLXCMDNBB1', '223.190.101.147', 'nokia asha 305', '2013-01-19 01:06:09'),
('N79MSN3AY8', '106.207.249.221', 'samsung duos', '2013-01-19 15:27:19'),
('P00S752HBM', '106.207.249.221', 'samsung duos', '2013-01-19 15:27:54'),
('FX9CN00Q5Q', '106.207.249.221', 'baby soaps', '2013-01-19 15:32:25'),
('70MYQJGWSW', '106.207.249.221', 'baby soaps', '2013-01-19 15:32:57'),
('CU34N28WM6', '106.207.249.221', 'samsung galaxy note 2', '2013-01-19 15:34:04'),
('UORAWZ65CN', '106.207.249.221', 'samsung galaxy note 2', '2013-01-19 15:34:36'),
('HBI3I5RGSF', '106.207.249.221', 'samsung galaxy note 2', '2013-01-20 00:15:25'),
('IK43NEVCZM', '106.207.249.221', 'samsung galaxy note 2', '2013-01-20 00:15:58'),
('8C38LEZA8A', '106.207.249.221', 'samsung galaxy note 2', '2013-01-20 00:18:09'),
('7F76Q071JN', '106.207.249.221', 'samsung galaxy note 2', '2013-01-20 00:20:05'),
('5EUR0QSO75', '106.207.249.221', 'samsung galaxy note 2', '2013-01-20 00:22:04'),
('A6K90WHYV5', '106.207.249.221', 'samsung galaxy note 2', '2013-01-20 00:25:43'),
('7F9H8CAQT1', '125.62.203.116', 'samsung galaxy s3', '2013-01-23 19:22:35'),
('63LE4G1CUL', '125.62.203.116', 'samsung galaxy s3', '2013-01-23 19:23:10'),
('ZKXA4QDBME', '125.62.203.116', 'apple iphone5', '2013-01-23 19:24:38'),
('3ZFNJWWT7A', '125.62.203.116', 'apple iphone5', '2013-01-23 19:25:09'),
('8021LZ4V6X', '125.62.203.116', 'A Modern Approach To Verbal', '2013-01-23 19:25:21'),
('TMJBP9XPVD', '125.62.203.116', 'A Modern Approach To Verbal', '2013-01-23 19:25:51'),
('C6V03JXSM4', '125.62.203.116', 'Nokia Lumia 800', '2013-01-23 19:27:34'),
('FY7ZL0UMD2', '125.62.203.116', 'Nokia Lumia 800', '2013-01-23 19:28:05'),
('FQPT3D0K5P', '125.62.203.116', 'Philips SHS 390 Headphone', '2013-01-23 19:29:53'),
('E72QIU9XQF', '125.62.203.116', 'Philips SHS 390 Headphone', '2013-01-23 19:30:23'),
('F8NK4ZVCJV', '125.62.203.116', 'Netgear JNR1010 N150 Wireless Router', '2013-01-23 19:31:09'),
('TGEW0P0KB3', '125.62.203.116', 'Netgear JNR1010 N150 Wireless Router', '2013-01-23 19:31:40'),
('EYDMYLGODZ', '125.62.203.116', 'Huawei E303C Data Card', '2013-01-23 19:33:02'),
('A3ZUQNLVS7', '125.62.203.116', 'Huawei E303C Data Card', '2013-01-23 19:33:32'),
('LHDD55IB82', '125.62.203.116', 'Samsung Galaxy Tab 2 P3100', '2013-01-23 19:36:29'),
('IPONPRHKWG', '125.62.203.116', 'Samsung Galaxy Tab 2 P3100', '2013-01-23 19:37:02'),
('YXARAJI0E6', '125.62.203.116', 'Sony Xperia J', '2013-01-23 19:37:55'),
('LNDKZAQ05Y', '125.62.203.116', 'Sony Xperia J', '2013-01-23 19:38:27'),
('DB1NTMJF22', '125.62.203.116', 'Fastrack Tote - For Women', '2013-01-23 19:40:02'),
('UK93Q6EP93', '125.62.203.116', 'Fastrack Tote - For Women', '2013-01-23 19:40:33'),
('JUZJIUB9BE', '125.62.203.116', 'Fastrack Tote - For Women (Pink)', '2013-01-23 19:42:31'),
('GC99922RSQ', '125.62.203.116', 'Fastrack Tote - For Women (Pink)', '2013-01-23 19:43:02'),
('90M2UY7UBY', '125.62.203.116', 'Electrolux EBE183BR Single Door 170 Litres Refrigerator', '2013-01-23 19:44:08'),
('GV7L0J5427', '125.62.203.116', 'Electrolux EBE183BR Single Door 170 Litres Refrigerator', '2013-01-23 19:44:39'),
('ZURYJMU9QL', '125.62.203.116', 'Nikon D5100 SLR', '2013-01-23 19:44:58'),
('5Z46E1XJX7', '125.62.203.116', 'Nikon D5100 SLR', '2013-01-23 19:45:30'),
('EMP569M0DZ', '125.62.203.116', 'Nikon D5100 SLR', '2013-01-23 19:47:37'),
('JZ7TGN3D6P', '125.62.203.116', 'Micromax Ninja 3 A57', '2013-01-23 20:11:51'),
('XRBTLL2LD6', '125.62.203.116', 'Micromax Ninja 3 A57', '2013-01-23 20:12:22'),
('HEJUTZ8QBW', '125.62.203.116', 'Sandisk Cruzer Blade 16 GB Pen Drive', '2013-01-23 21:45:44'),
('B53ILHKFBD', '125.62.203.116', 'Sandisk Cruzer Blade 16 GB Pen Drive', '2013-01-23 21:46:18'),
('E5CN9FD5H9', '125.62.203.116', 'FCUK Analog Watch - For Men', '2013-01-23 22:15:35'),
('WAB1CXJENC', '125.62.203.116', 'FCUK Analog Watch - For Men', '2013-01-23 22:16:09'),
('3WK1TG8Z7Z', '125.62.203.116', 'Fastrack Tees Analog Watch - Unisex', '2013-01-23 22:16:58'),
('BF17FL0XPC', '125.62.203.116', 'Fastrack Tees Analog Watch - Unisex', '2013-01-23 22:17:29'),
('WAR84910R3', '125.62.203.116', 'Canon PowerShot SX150 IS Point', '2013-01-23 22:27:11'),
('DIFOA9FH61', '125.62.203.116', 'Canon PowerShot SX150 IS Point', '2013-01-23 22:27:42'),
('86MD5IKILQ', '125.62.203.116', 'macbookpro', '2013-01-23 22:31:43'),
('7P7DMIED8G', '125.62.203.116', 'macbookpro', '2013-01-23 22:32:25'),
('LIEFOPQ9ZU', '125.62.203.116', 'apple macbook pro', '2013-01-23 22:36:25'),
('10E08L7C2E', '125.62.203.116', 'apple macbook pro', '2013-01-23 22:37:52'),
('QVXV2ZX4VU', '106.195.8.186', '2GB Pendrive', '2013-01-28 19:32:35'),
('5Y3Z0H3S8P', '106.195.8.186', '2GB Pendrive', '2013-01-28 19:33:10'),
('TEVL383GAG', '106.195.8.186', '2GB Pendrive', '2013-01-28 19:34:12'),
('FWRQ6T3I9Y', '106.195.8.186', 'Kingston 2GB Pendrive', '2013-01-28 19:39:43'),
('PYD47H8G4B', '106.195.8.186', 'Kingston 2GB Pendrive', '2013-01-28 19:40:14'),
('7UUFSSQV2L', '106.206.122.121', 'Nokia lumia 900', '2013-01-30 13:49:19'),
('NI09IHXMJB', '106.206.122.121', 'Nokia lumia 900', '2013-01-30 13:49:54'),
('43NELUXN62', '106.206.122.121', 'Nokia asha 302', '2013-01-30 13:51:51'),
('GJR6FBVH9N', '106.206.122.121', 'Nokia asha 302', '2013-01-30 13:52:22'),
('YDFSZ2WHVD', '106.206.122.121', 'Nokia asha 202', '2013-01-30 13:52:58'),
('11AWHV89J2', '106.206.122.121', 'Nokia asha 202', '2013-01-30 13:53:29'),
('BV2AJ1LGP0', '106.207.56.108', 'sunglasses', '2013-02-10 23:57:59'),
('VTP1OKZYH1', '106.207.56.108', 'sunglasses', '2013-02-10 23:58:33'),
('GH5TN1MMVD', '106.207.56.108', 'Samsung Galaxy Y Duos GT-S6102 (Black)', '2013-02-10 23:59:12'),
('B618ZHXJJX', '106.207.56.108', 'Samsung Galaxy Y Duos GT-S6102 (Black)', '2013-02-10 23:59:43'),
('ISP0XSTQ0F', '106.207.56.108', 'Samsung Galaxy Y Duos GT-S6102 (Black)', '2013-02-11 00:04:30'),
('4WTCWAN40Z', '106.207.56.108', 'samsung galaxy s3', '2013-02-11 00:04:57'),
('4NU48RWJN1', '106.207.56.108', 'samsung galaxy s3', '2013-02-11 00:05:27'),
('GD1VFSPCBK', '125.62.203.27', 'blackberry bold 10', '2013-02-12 22:55:54'),
('VCXT7VPMQ8', '125.62.203.27', 'blackberry bold 10', '2013-02-12 22:56:29'),
('61LUQYAXIQ', '125.62.203.27', 'blackberry bold', '2013-02-12 22:56:42'),
('0Z0II7VA71', '125.62.203.27', 'blackberry bold', '2013-02-12 22:57:13'),
('B2G2FEZTN2', '219.91.254.188', 'samsung duos', '2013-02-14 19:05:01'),
('9MK4L4WLLJ', '219.91.254.188', 'samsung duos', '2013-02-14 19:05:35'),
('EE7YSX0MNG', '219.91.254.188', 'Samsung Galaxy Y Duos GT-S6102 (Black)', '2013-02-14 19:34:59'),
('OJ2NBP0VV0', '219.91.254.188', 'Samsung Galaxy Y Duos GT-S6102 (Black)', '2013-02-14 19:35:30'),
('GHVE9ITHPH', '219.91.254.188', 'samsung galaxy s3', '2013-02-14 19:36:11'),
('2OL5TITEJJ', '115.118.107.151', 'mobile', '2013-02-19 17:33:53'),
('K8BWOGQ3RX', '115.118.107.151', 'mobile', '2013-02-19 17:34:25'),
('SISZ6QY57U', '115.118.107.151', 'Nokias e 71', '2013-02-19 17:34:39'),
('1C97OY6J3J', '115.118.107.151', 'Nokia e 71', '2013-02-19 17:35:09'),
('DC3Q1TIO3E', '115.118.107.151', 'Nokia Lumia 800', '2013-02-19 17:35:39'),
('70ACQRJTTU', '115.118.107.151', 'Nokia lumia 900', '2013-02-19 17:36:10'),
('LPPQKTKZIL', '115.118.107.151', 'Nokia lumia 900', '2013-02-19 17:36:41'),
('M3J53EVFDX', '115.118.107.151', 'Nokia Lumia 800', '2013-02-19 18:04:52'),
('J7JR7CO4ZJ', '115.118.107.151', 'nokia asha 305', '2013-02-19 18:05:04'),
('44C95TYITD', '115.118.107.151', 'nokia asha 305', '2013-02-19 18:05:34'),
('2QPSZXK6B1', '106.216.180.179', 'samsung', '2013-02-21 16:34:55'),
('L00M4HPWF1', '106.216.180.179', 'samsung', '2013-02-21 16:35:31'),
('CO461DXGTP', '106.216.180.179', 'samsung', '2013-02-21 17:12:32'),
('DRR8QGJM3R', '106.216.180.179', 'samsung', '2013-02-21 17:14:19'),
('O1XBCJ1RC1', '106.216.180.179', 'samsung', '2013-02-21 17:14:52'),
('UVWI0KF1AR', '106.216.180.179', 'Samsung Galaxy Y Duos Lite GT-S5302 (White)', '2013-02-21 17:15:47'),
('P72BK7M64Q', '106.216.180.179', 'Samsung Galaxy Y Duos Lite GT-S5302 (White)', '2013-02-21 17:16:20'),
('MU7U47M0XU', '106.216.180.179', 'Samsung Galaxy Y Duos Lite GT-S5302 (White)', '2013-02-21 17:17:13'),
('NVBVEM86KZ', '106.216.180.179', 'nokia', '2013-02-21 17:17:46'),
('85WTBJBBPW', '106.216.180.179', 'nokia', '2013-02-21 17:19:10'),
('ZLA2VI7DT7', '106.216.180.179', 'Nokia lumia 900', '2013-02-21 17:19:26'),
('5X858PFBZD', '106.216.180.179', 'Nokia lumia 900', '2013-02-21 17:19:59'),
('FKF86H3XSG', '106.216.180.179', 'Nokia lumia 900', '2013-02-21 17:21:23'),
('MW2V93PQIB', '106.216.180.179', 'Nokia lumia 900', '2013-02-21 17:23:08'),
('H00YD0UPHQ', '106.216.180.179', 'Nokia lumia 900', '2013-02-21 17:25:02'),
('CQ1OSOCJOE', '106.216.180.179', 'Nokia lumia 900', '2013-02-21 17:26:23'),
('XEJEBKXRL8', '106.216.180.179', 'Nokia lumia 900', '2013-02-21 17:27:39'),
('2MDC5QC2P9', '106.216.180.179', 'Nokia', '2013-02-21 17:28:57'),
('89OPO9UWI5', '106.216.180.179', 'samung', '2013-02-21 17:29:18'),
('RUGJU3253V', '106.216.180.179', 'samsung', '2013-02-21 17:29:58'),
('112V06568W', '106.216.180.179', 'Samsung Galaxy S Duos S7562 (Black)', '2013-02-21 17:37:17'),
('99HDGJLS0A', '106.216.180.179', 'Samsung Galaxy S Duos S7562 (Black)', '2013-02-21 17:37:48'),
('XPWG983CHE', '106.216.180.179', 'samsung duos', '2013-02-21 17:45:45'),
('I1Q2VIKHZI', '106.216.180.179', 'samsung', '2013-02-21 17:46:31'),
('HQ66C3GC7Z', '106.216.180.179', 'nokia', '2013-02-21 17:47:19'),
('IS5XE6QCQ6', '106.216.180.179', 'nokia asha 305', '2013-02-21 17:48:31'),
('1E2A0056DH', '106.216.180.179', 'nokia asha 305', '2013-02-21 17:49:03'),
('9D3LUWL4CQ', '125.62.203.241', 'Samsung', '2013-02-22 08:11:02'),
('VQPGJTAQ2C', '125.62.203.241', 'Nokia', '2013-02-22 08:11:34'),
('TIL7YXV98Q', '125.62.203.241', 'Nokia', '2013-02-22 08:12:01'),
('NBUYMLSFWS', '125.62.203.241', 'Nokia lumia 900', '2013-02-22 08:12:08'),
('ZDZB0XT11M', '125.62.203.241', 'Nokia lumia 900', '2013-02-22 08:12:42'),
('IYSM2WXQHV', '125.62.203.241', 'Samsung washing machine', '2013-02-22 08:13:47'),
('K18DL1Q4UV', '125.62.203.241', 'Samsung washing machine', '2013-02-22 08:14:17'),
('NH7HA9GWYG', '223.190.4.178', 'nokia lumia 610', '2013-02-22 16:36:30'),
('Y86AYJ50TH', '223.190.4.178', 'nokia lumia 610', '2013-02-22 16:38:32'),
('2DN8BYXNB6', '223.190.4.178', 'nokia lumia 920', '2013-02-22 16:43:32'),
('R8Z3QBGRJ0', '223.190.4.178', 'nokia lumia 920', '2013-02-22 16:44:03'),
('S2I0IAO96H', '125.62.203.60', 'Nokia', '2013-02-24 10:51:20'),
('206IW9HFD4', '125.62.203.60', 'Nokia lumia 900', '2013-02-24 10:51:22'),
('OWOB9GB02U', '125.62.203.241', 'Samsung washing machine', '2013-02-24 10:52:27'),
('43BN7IB9J2', '125.62.203.241', 'Samsung galaxy', '2013-02-24 10:53:11'),
('SGJDRR3D6J', '125.62.203.241', 'Samsung galaxy', '2013-02-24 10:53:41'),
('1497MNVPT5', '125.62.203.241', 'Samsung', '2013-02-24 10:54:02'),
('U3CORBS01Y', '125.62.203.241', 'samsung galaxy s3', '2013-02-24 10:54:25'),
('S6LO9Y6PYF', '125.62.203.241', 'samsung galaxy s3', '2013-02-24 10:54:56'),
('KN8KUJRJ0C', '125.62.203.241', 'Apple', '2013-02-24 10:57:11'),
('ZT3ROGAWOQ', '125.62.203.241', 'Apple', '2013-02-24 10:57:41'),
('67LFV0BUVL', '125.62.203.241', 'Apple iPhone 4s', '2013-02-24 10:58:17'),
('865N34KHEN', '125.62.203.241', 'Apple iPhone 4s', '2013-02-24 10:58:47'),
('DANGVWOV9R', '125.62.203.241', 'Apple iPhone 4s', '2013-02-24 13:12:44'),
('7RH64ZI0ZN', '125.62.203.241', 'Apple iPhone 5', '2013-02-24 13:13:16'),
('O7NV0IZ66E', '125.62.203.241', 'Apple iPhone 5', '2013-02-24 13:13:49'),
('VFTH9BH2SS', '125.62.203.241', 'Apple iPhone 5', '2013-02-24 13:19:29'),
('QTURC4EHOW', '125.62.203.241', 'Apple iPhone 5', '2013-02-24 13:21:45'),
('1OS5682C32', '125.62.203.241', 'apple macbook pro', '2013-02-24 16:32:56'),
('E5NTUHML8D', '125.62.203.241', 'apple macbook pro', '2013-02-24 16:33:27'),
('UNYNPOVPFS', '125.62.203.241', 'apple macbook pro', '2013-02-24 16:34:14'),
('UR0Q3F07BB', '125.62.203.241', 'Samsung led tv', '2013-02-24 16:35:30'),
('OJ8BXC6ZX0', '125.62.203.241', 'Samsung led tv', '2013-02-24 16:36:42'),
('5M7HSYBJSW', '125.62.203.241', 'Samsung 46 led tv', '2013-02-24 16:38:29'),
('J8S8PO81TQ', '125.62.203.241', 'Samsung 46 led tv', '2013-02-24 16:38:59'),
('9R5520Q3S9', '125.62.203.241', 'Samsung 46 led tv', '2013-02-24 16:39:04'),
('ILEX1C6X6W', '125.62.203.241', 'Sony Xperia J', '2013-02-24 16:40:15'),
('YOBR91WPNC', '125.62.203.241', 'Sony Xperia J', '2013-02-24 16:40:45'),
('K5S22TEIZ6', '125.62.203.241', 'Sony Xperia J', '2013-02-24 16:40:48'),
('ZMXG5TB47Q', '125.62.212.101', 'Netgear N300', '2013-02-25 19:02:45'),
('UE98U3W4YJ', '125.62.212.101', 'Netgear N300', '2013-02-25 19:03:20'),
('C3BYXLD1G1', '106.208.48.150', 'nokia lumia 920', '2013-02-26 23:12:57'),
('YWJKCQTTFP', '106.208.48.150', 'nokia lumia 920', '2013-02-26 23:13:31'),
('T65LD16LWX', '106.208.48.150', 'nokia lumia 920', '2013-02-27 00:02:33'),
('U9ZX6MCTIK', '106.208.48.150', 'nokia lumia 920', '2013-02-27 03:10:01'),
('LNJFTZKIDO', '106.208.48.150', 'nokia lumia 920', '2013-02-27 03:10:34'),
('ZDYYFIWBG3', '106.208.48.150', 'nokia lumia 920', '2013-02-27 03:10:56'),
('2H41SXHGFD', '117.232.136.69', 'samsung galaxy s3', '2013-02-27 13:15:52'),
('OF6WBEYB29', '106.195.93.166', 'nokia lumia 920', '2013-02-27 19:30:49'),
('69QIFS9PKS', '106.195.93.166', 'nokia lumia 920', '2013-02-27 19:31:25'),
('ASRR9C35UL', '106.195.93.166', 'nokia lumia 920', '2013-02-27 19:32:44'),
('8JYSSCOIEV', '106.195.93.166', 'nokia lumia 610', '2013-02-27 19:34:16'),
('QZVBVT95VK', '106.195.93.166', 'nokia lumia 610', '2013-02-27 19:34:47'),
('TNK16OBNU4', '106.195.93.166', 'nokia lumia 920', '2013-02-27 19:35:40'),
('0GFKM31OW6', '125.62.203.61', 'Sony Xperia j', '2013-02-27 22:18:05'),
('HXIFEA7KVD', '125.62.203.61', 'Sony Xperia j', '2013-02-27 22:20:06'),
('3M8GJ3F54R', '125.62.203.61', 'Sony Xperia j', '2013-02-27 22:20:11'),
('DVZTKFS13C', '106.195.93.166', 'nokia lumia 920', '2013-02-28 00:40:03'),
('QAEYHV3Q7D', '106.195.93.166', 'nokia lumia 920', '2013-02-28 00:40:38'),
('3FO8Z8LJ82', '106.195.93.166', 'nokia lumia 920', '2013-02-28 01:24:36'),
('7WJCA0F10N', '106.195.93.166', 'nokia lumia 920', '2013-02-28 01:25:27'),
('0U8U2SOB1O', '106.195.93.166', 'nokia lumia 920', '2013-02-28 01:26:31'),
('2OFH5776IY', '106.195.93.166', 'nokia lumia 920', '2013-02-28 01:49:15'),
('GIMFM8J6A9', '106.195.93.166', 'nokia lumia 920', '2013-02-28 01:50:17'),
('GZTHQZGGG2', '106.195.93.166', 'nokia lumia 710', '2013-02-28 02:05:04'),
('UBQ8TFELAU', '106.195.93.166', 'nokia lumia 710', '2013-02-28 02:06:43'),
('XKXNAFCOP8', '106.195.93.166', 'blackberry z10', '2013-02-28 02:32:39'),
('8RXMIJAIUA', '106.195.93.166', 'blackberry z10', '2013-02-28 02:57:42'),
('COACL11BU7', '106.195.93.166', 'blackberry z10', '2013-02-28 02:58:19'),
('4MBJB6ARV7', '106.195.93.166', 'nokia lumia 920', '2013-02-28 03:02:42'),
('R9FBMR5JP0', '106.195.93.166', 'nokia lumia 920', '2013-02-28 03:03:39'),
('APKX58P7YC', '106.195.93.166', 'nokia lumia 920', '2013-02-28 03:04:47'),
('LPMO3RTXFE', '106.195.93.166', 'nokia lumia 920', '2013-02-28 03:05:17'),
('IMR6AUILLX', '106.195.93.166', 'nokia lumia 920', '2013-02-28 03:06:34'),
('PCCTX22LRK', '106.195.93.166', 'condomns', '2013-02-28 03:53:48'),
('P1HCEVUYGX', '106.195.93.166', 'condomns', '2013-02-28 03:54:20'),
('CEP9RX3TZI', '106.195.93.166', 'condom', '2013-02-28 03:55:14'),
('ZJ7P2TVC9D', '106.195.93.166', 'condom', '2013-02-28 03:55:44'),
('RUKFBU5MVT', '106.195.93.166', 'condom', '2013-02-28 03:58:20'),
('3CIZZWP0QS', '106.195.93.166', 'Canon PowerShot SX150 IS Point', '2013-02-28 03:58:37'),
('7GLTTBDMBG', '106.195.93.166', 'Canon PowerShot SX150 IS Point', '2013-02-28 03:59:08'),
('BD15XD9KSF', '106.195.93.166', 'Canon PowerShot SX150 IS Point', '2013-02-28 03:59:59'),
('Q4FGM0S7R7', '106.195.93.166', 'Nokia Lumia 800', '2013-02-28 04:23:33'),
('ZFC3HBRJ9T', '106.195.93.166', 'Nokia Lumia 800', '2013-02-28 04:24:58'),
('GNVVYFGE04', '106.195.93.166', 'Nokia asha 302', '2013-02-28 04:25:17'),
('H3HEU4JD5L', '106.195.93.166', 'Nokia asha 302', '2013-02-28 04:26:01'),
('09TCMV3UIT', '106.195.93.166', 'Nokia asha 302', '2013-02-28 04:36:28'),
('J18EZBZRM3', '106.195.93.166', 'Nokia asha 302', '2013-02-28 04:36:51'),
('6U03MJBFI2', '106.195.93.166', 'Nokia asha 302', '2013-02-28 04:38:56'),
('BQP0PSQBWB', '106.195.93.166', 'Nokia asha 302', '2013-02-28 04:39:21'),
('BPZZKPPMOX', '106.195.93.166', 'Nokia asha 302', '2013-02-28 04:40:15'),
('1MYIPB1IES', '106.195.93.166', 'Nokia asha 302', '2013-02-28 04:41:05'),
('O246GH1VO0', '106.195.93.166', 'Nokia asha 302', '2013-02-28 04:41:43'),
('CB7MKTIKR8', '106.195.93.166', 'Nokia asha 302', '2013-02-28 04:42:54'),
('NIWZQGBXJB', '106.195.93.166', 'Nokia asha 302', '2013-02-28 04:44:47'),
('0X196CGM3S', '106.195.93.166', 'nokia asha 305', '2013-02-28 04:47:03'),
('6X2G4Z6SI4', '106.195.93.166', 'nokia asha 305', '2013-02-28 04:48:10'),
('5R933VFTTN', '106.195.93.166', 'nokia asha 305', '2013-02-28 04:49:09'),
('SEIZP0V19V', '106.195.93.166', 'Nokia asha 202', '2013-02-28 04:49:29'),
('IGBKKT5INB', '106.195.93.166', 'Nokia asha 202', '2013-02-28 04:50:13'),
('GGH81XQ8IL', '106.195.93.166', 'Nokia asha 202', '2013-02-28 04:52:07'),
('4JVZ4C4JYT', '106.195.93.166', 'nokia lumia 920', '2013-02-28 04:52:38'),
('AZGNJWEYWK', '106.195.93.166', 'nokia lumia 920', '2013-02-28 04:53:38'),
('H2HMC5GS6V', '106.195.93.166', 'Nikon D5100 SLR', '2013-02-28 04:53:48'),
('EY9KCQVEQU', '106.195.93.166', 'Nikon D5100 SLR', '2013-02-28 04:57:39'),
('0Q6A77VO5A', '106.195.93.166', 'nokia lumia 710', '2013-02-28 04:58:19'),
('8QZQ9T6GD6', '106.195.93.166', 'samsung galaxy s3', '2013-02-28 05:00:24'),
('8TNLOHRYY9', '106.195.93.166', 'samsung galaxy s3', '2013-02-28 05:00:54'),
('4D1CJL3WU8', '106.195.93.166', 'blackberry z10', '2013-02-28 05:02:35'),
('VB2KFGZAO0', '106.195.93.166', 'blackberry z10', '2013-02-28 05:03:06'),
('RKAS7FPPS4', '223.177.29.14', 'nokia lumia 920', '2013-02-28 16:35:10'),
('1MGE3SRV84', '223.177.29.14', 'nokia lumia 920', '2013-02-28 16:35:45'),
('2B05ZVCQVU', '223.177.29.14', 'Nokia lumia 900', '2013-02-28 16:36:18'),
('BMWDKJHZNV', '223.177.29.14', 'Nokia lumia 900', '2013-02-28 16:36:49'),
('DY534PDVWK', '223.177.29.14', 'nokia lumia 710', '2013-02-28 16:39:56'),
('B3WTO6KNWV', '223.177.29.14', 'nokia lumia 710', '2013-02-28 16:40:28'),
('78GJLPIB0I', '223.177.29.14', 'samsung duos', '2013-02-28 16:41:28'),
('KOM1CRLM2W', '223.177.29.14', 'samsung duos', '2013-02-28 16:41:59'),
('SIO3TOVUF3', '223.177.29.14', 'samsung galaxy note 2', '2013-02-28 16:42:44'),
('883ICSGEQ6', '223.177.29.14', 'samsung galaxy note 2', '2013-02-28 16:43:11'),
('DSL1VGQZ5X', '223.177.29.14', 'samsung', '2013-02-28 16:43:35'),
('DCJLF3N0ZQ', '223.177.29.14', 'Samsung Galaxy Y Duos GT-S6102 (Black)', '2013-02-28 16:43:54'),
('4M7DM0VIN1', '223.177.29.14', 'Samsung Galaxy Y Duos GT-S6102 (Black)', '2013-02-28 16:44:22'),
('3EQF19FP8G', '125.62.203.192', 'Samsung Galaxy S Duos S7562 (Black)', '2013-02-28 17:44:50'),
('W50UNTT3OO', '125.62.203.192', 'Samsung Galaxy S Duos S7562 (Black)', '2013-02-28 17:45:22'),
('2QP4X9DQ2C', '125.62.203.192', 'blackberry z10', '2013-02-28 18:09:21'),
('6CCJ47U1HF', '125.62.203.192', 'blackberry z10', '2013-02-28 18:09:52'),
('QOZFAJZPQ9', '125.62.203.192', 'blackberry bold', '2013-02-28 18:29:41'),
('FQ3UDP5GOG', '125.62.203.192', 'blackberry bold', '2013-02-28 18:30:12'),
('ND4R18ZLVH', '125.62.203.192', 'samsung galaxy note 2', '2013-02-28 19:21:33'),
('SOWEKP8DU0', '125.62.203.192', 'samsung galaxy note 2', '2013-02-28 19:22:04'),
('8J6WPNQBU9', '125.62.203.192', 'Sandisk Cruzer Blade 16 GB Pen Drive', '2013-02-28 19:23:54'),
('XXGC5XSC69', '125.62.203.192', 'Sandisk Cruzer Blade 16 GB Pen Drive', '2013-02-28 19:24:25'),
('YU3L72LJII', '125.62.203.192', 'Sandisk Cruzer Blade 16 GB Pen Drive', '2013-02-28 19:25:17'),
('9O0PB8FA6H', '125.62.203.192', 'Sandisk Cruzer Blade 16 GB Pen Drive', '2013-02-28 19:25:30'),
('BNA1QH1M1O', '125.62.203.192', 'sandisk 16gb pendrive', '2013-02-28 19:25:58'),
('CA3AORMSD1', '125.62.203.192', 'sandisk 16gb pendrive', '2013-02-28 19:26:28'),
('OKCAIUFXYT', '125.62.203.192', 'sony 8gb pendrive', '2013-02-28 19:26:58'),
('BA4GU3UP4Z', '125.62.203.192', 'sony 8gb pendrive', '2013-02-28 19:27:29'),
('XRGIZ7E1ES', '125.62.203.192', 'sony tiny 8gb pendrive', '2013-02-28 19:28:06'),
('OHIBH6UYS3', '125.62.203.192', 'sony tiny 8gb pendrive', '2013-02-28 19:28:32'),
('2TRJY8OU6N', '125.62.203.192', 'parker beta', '2013-02-28 19:29:00'),
('T7D5375U5W', '125.62.203.192', 'parker beta', '2013-02-28 19:29:31'),
('OIOCFLGMMW', '125.62.203.192', 'parker beta pen', '2013-02-28 19:30:09'),
('T63EY24YE9', '125.62.203.25', 'Structural dynamics by Mario poaz', '2013-03-04 20:08:53'),
('X5K6ODSLKJ', '125.62.203.25', 'Structural dynamics by Mario poaz', '2013-03-04 20:09:27'),
('EQAAVWWHR9', '125.62.203.25', 'Structural dynamics by Mario poaz', '2013-03-04 20:10:18'),
('F9MPYGLNVA', '125.62.203.25', 'Structural dynamics by Mario poaz', '2013-03-04 20:10:30'),
('USKQ2LVO8S', '125.62.203.25', 'Structural dynamics by Mario poaz', '2013-03-04 20:11:37'),
('WFWA8GW2Z1', '125.62.203.25', 'Structural dynamics by Mario poaz', '2013-03-04 20:14:12'),
('4T5R1Y9DET', '125.62.203.25', 'Structural dynamics theory and practiceby Mario poaz', '2013-03-04 20:18:23'),
('ZG2Q30XGO6', '125.62.203.25', 'Structural dynamics theory and practice by Mario poaz', '2013-03-04 20:18:53'),
('HTLFRPT62W', '125.62.203.25', 'Structural dynamics theory and practice by Mario poaz', '2013-03-04 20:19:24'),
('U79JEN0JY3', '125.62.203.25', 'Structural dynamics theory and practice by Mario poaz', '2013-03-04 20:19:24'),
('926J3DPBMC', '125.62.203.25', 'Structural dynamics theory and computation  by Mario poaz', '2013-03-04 20:19:56'),
('DUPQRJ82SI', '125.62.203.25', 'Structural dynamics theory and computation  by Mario poaz', '2013-03-04 20:20:27'),
('NR4NH9LKYY', '125.62.203.25', 'Structural dynamics theory and computation  by Mario poaz', '2013-03-04 20:22:40'),
('Q8NG3V9FIG', '125.62.203.25', 'Structural dynamics theory and computation  by Mario poaz', '2013-03-04 20:27:46'),
('MY3QY3KFX6', '125.62.203.25', 'Structural dynamics theory and computation  by Mario poaz', '2013-03-04 20:58:21'),
('8HJ8VHK25E', '125.62.203.42', 'Structural dynamics theory and computation  by Mario poaz', '2013-03-04 21:33:34'),
('XKZDYPET9O', '125.62.203.42', 'Structural dynamics theory and computation  by Mario poaz', '2013-03-04 21:34:07'),
('FB1M9EZMYU', '125.62.203.42', 'Structural dynamics theory and computation  by Mario poaz', '2013-03-04 21:34:35'),
('6WBVABSC2C', '125.62.203.42', 'Structural dynamics theory and computation', '2013-03-04 21:34:44'),
('BLYT6GSWZZ', '125.62.203.42', 'Structural dynamics theory and computation', '2013-03-04 21:35:15'),
('BUM8U8JE9G', '125.62.203.42', 'Structural dynamics theory and computation by mario', '2013-03-04 21:35:56'),
('8WOQQAGBZX', '125.62.203.42', 'Structural dynamics theory and computation by mario', '2013-03-04 21:36:20'),
('XT142ADY4U', '125.62.203.42', 'Structural dynamics theory and computation', '2013-03-04 21:37:27'),
('C9A0SY45KG', '125.62.203.42', 'Pocket planner', '2013-03-04 23:08:47'),
('EUFZ5OZT9J', '125.62.203.42', 'Pocket planner', '2013-03-04 23:09:18'),
('I9W708ME5A', '125.62.203.42', 'Pocket planner', '2013-03-04 23:09:38'),
('QKKAABA8QZ', '148.87.67.212', 'washing machine', '2013-03-07 11:01:00'),
('G6RSHI8QJR', '148.87.67.212', 'washing machine', '2013-03-07 11:01:36'),
('SSNOEL4B5B', '148.87.67.212', 'blackberry bold', '2013-03-07 11:02:25'),
('9XCXAD1L4U', '148.87.67.212', 'blackberry bold', '2013-03-07 11:02:58'),
('6I7SMI731W', '148.87.67.212', 'blackberry z10', '2013-03-07 12:24:56'),
('0ELGTEHXVJ', '148.87.67.212', 'blackberry z10', '2013-03-07 12:25:27'),
('38JRZVPUYP', '125.62.203.246', 'Samsung galaxy s4', '2013-03-17 20:37:06'),
('B9P56IE57E', '125.62.203.246', 'Samsung galaxy s4', '2013-03-17 20:37:40'),
('DZNEA3VTLM', '125.62.203.246', 'samsung', '2013-03-17 20:38:08'),
('6J2I5D104O', '125.62.203.246', 'samsung duos', '2013-03-17 20:38:14'),
('927WIIVMO7', '125.62.203.246', 'samsung duos', '2013-03-17 20:42:14'),
('BW9NGKEAJE', '10.158.11.50', 'samsung galaxy s 3', '2013-03-19 14:59:40'),
('VMVF5K709H', '10.158.11.50', 'samsung galaxy s 3', '2013-03-19 15:00:16'),
('2VA9K3NH33', '10.158.11.50', 'blackberry z', '2013-03-19 15:05:53'),
('2VJPF2C600', '10.158.11.50', 'blackberry z10', '2013-03-19 15:06:21'),
('EO6UYPXFKP', '10.158.11.50', 'blackberry z10', '2013-03-19 15:06:47'),
('3DXH0THQFB', '10.158.11.50', 'Butterfly Tenergy 64-FX Rubber', '2013-03-19 15:08:55'),
('4LPZUKSZHT', '10.158.11.50', 'Butterfly Tenergy 64-FX Rubber', '2013-03-19 15:09:26'),
('R6UPPVEI1S', '10.158.11.50', 'Butterfly Tenergy 05', '2013-03-19 15:10:10'),
('1GDVXN2HYF', '10.158.11.50', 'Butterfly Tenergy 05', '2013-03-19 15:10:35'),
('BIIQUTPAUA', '10.158.11.50', 'nokia n9', '2013-03-19 15:12:45'),
('H7DB96HV5F', '10.158.11.50', 'nokia n9', '2013-03-19 15:13:15'),
('H9895D1PT6', '10.158.11.60', 'samsung galaxy grand', '2013-03-19 19:06:10'),
('5XVCH05S0B', '10.158.11.60', 'samsung galaxy grand', '2013-03-19 19:06:46'),
('X7RORU89L5', '10.158.11.60', 'Transcend Memory Card MicroSD 16GB Class 4', '2013-03-19 19:15:18'),
('9SFNVXW4QU', '10.158.11.60', 'Transcend Memory Card MicroSD 16GB Class 4', '2013-03-19 19:15:49'),
('PFK4C6C086', '148.87.67.212', 'sony xperia z', '2013-03-21 16:44:41'),
('Z3K95X9CWU', '148.87.67.212', 'sony xperia z', '2013-03-21 16:45:18'),
('WPQ2WLV27D', '148.87.67.212', 'sony', '2013-03-21 16:50:53'),
('03IJ7S8CBI', '148.87.67.212', 'sony', '2013-03-21 16:51:26'),
('56VI5YYVD4', '148.87.67.212', 'samsung', '2013-03-21 16:59:30'),
('90D4XJBUWH', '148.87.67.212', 'samsung', '2013-03-21 16:59:43'),
('6ZF7H2VMZY', '148.87.67.212', 'united colors of bennoton', '2013-03-21 17:00:38'),
('OZ7W0GOD1U', '148.87.67.212', 'united colors of bennoton', '2013-03-21 17:01:11'),
('N8LDBXL4CE', '148.87.67.212', 'levis boots', '2013-03-21 17:03:32'),
('LXITA0327J', '148.87.67.212', 'levis boots', '2013-03-21 17:04:06'),
('WUYTD0ERJM', '148.87.67.212', 'Puma Unlimited Hi Evo Lux Sneakers', '2013-03-21 17:06:33'),
('OJO4AF6523', '148.87.67.212', 'Puma Unlimited Hi Evo Lux Sneakers', '2013-03-21 17:07:06'),
('HNAZIMEYQW', '148.87.67.212', 'samsung rex', '2013-03-21 17:11:57'),
('MIEMP7EFSK', '148.87.67.212', 'samsung rex', '2013-03-21 17:12:30'),
('KAGSY5RN0K', '223.190.56.46', 'Samsung Galaxy S Duos S7562 (Black)', '2013-03-25 05:17:35'),
('7LO2X97DA8', '223.190.56.46', 'Samsung Galaxy S Duos S7562 (Black)', '2013-03-25 05:18:07'),
('18IB6YBT8B', '223.187.195.173', 'nokia lumia 920', '2013-03-27 19:59:27'),
('02210LMIHJ', '223.187.195.173', 'nokia lumia 920', '2013-03-27 20:00:02'),
('HIJ0OQS5XH', '223.187.195.173', 'nokia lumia 920', '2013-03-27 20:00:34'),
('MWCP40WWT3', '148.87.67.212', 'micromax a116', '2013-03-28 22:46:39'),
('82K9IIKJJI', '148.87.67.212', 'micromax a116', '2013-03-28 22:47:14'),
('6FDCNRVLHJ', '125.62.203.204', 'Samsung led tv UA32ES6200R', '2013-03-29 10:21:43'),
('8QXHAXTH88', '125.62.203.204', 'Samsung led tv UA32ES6200R', '2013-03-29 10:22:19'),
('VJA784ZS0D', '125.62.203.204', 'Samsung led tv UA32ES6200R', '2013-03-29 10:22:36'),
('L0FLE4ZHK3', '125.62.203.204', 'Samsung UA32ES6200R led', '2013-03-29 10:22:51'),
('FKPVTBQSXE', '125.62.203.204', 'Samsung UA32ES6200R led', '2013-03-29 10:23:22'),
('QVO8YKZTL6', '125.62.203.204', 'Samsung UA32ES6200R led', '2013-03-29 10:23:35'),
('GG3O3B0QLK', '125.62.203.204', 'UA32ES6200R Samsung led tv', '2013-03-29 10:23:55'),
('CWZP65NXIL', '125.62.203.204', 'UA32ES6200R Samsung led tv', '2013-03-29 10:24:26'),
('KW9CFA91I3', '106.206.215.197', 'samsung duos', '2013-04-05 18:24:35'),
('YLTTH3AWBW', '106.206.215.197', 'samsung duos', '2013-04-05 18:25:09'),
('PWIX2OSJHI', '106.206.215.197', 'Samsung Galaxy Y Duos Lite GT-S5302 (White)', '2013-04-05 18:26:07'),
('IYFML4E5ME', '106.206.215.197', 'Samsung Galaxy Y Duos Lite GT-S5302 (White)', '2013-04-05 18:26:39'),
('CZXWZM1S8P', '125.62.203.175', 'projector', '2013-04-05 19:26:01'),
('A899YK3LY9', '125.62.203.175', 'projector', '2013-04-05 19:26:38'),
('DS6FED49IN', '106.195.87.242', 'nokia lumia 510', '2013-07-03 15:54:10'),
('ANQT467P0A', '106.195.87.242', 'nokia lumia 510', '2013-07-03 15:54:47'),
('MC5R5SEF9K', '106.195.87.242', 'nokia lumia 710', '2013-07-03 15:57:45'),
('6RHKFP9Z59', '106.195.87.242', 'nokia lumia 710', '2013-07-03 15:58:16'),
('54N2JQC5UU', '106.195.87.242', 'Samsung Galaxy Y Duos Lite GT-S5302 (White)', '2013-07-03 19:01:44'),
('BQ6SWPN4J1', '106.195.87.242', 'Samsung Galaxy Y Duos Lite GT-S5302 (White)', '2013-07-03 19:02:18'),
('1IXF8O55BD', '106.195.87.242', 'Samsung Galaxy Y Duos Lite GT-S5302 (White)', '2013-07-03 19:06:26'),
('XUAOWH6LC0', '106.195.87.242', 'Samsung Galaxy Y Duos Lite GT-S5302 (White)', '2013-07-03 19:07:18'),
('5I293SJ67V', '106.195.87.242', 'nokia lumia 920', '2013-07-03 19:08:18'),
('0PD1OTPUKG', '106.195.87.242', 'nokia lumia 920', '2013-07-03 19:08:50'),
('N5LLTWX7OK', '106.195.87.242', 'nokia lumia 920', '2013-07-03 19:09:47'),
('GFT74YD3RV', '106.195.87.242', 'nokia lumia 920', '2013-07-03 19:10:47'),
('REO3LKCEAE', '106.195.87.242', 'nokia n9', '2013-07-03 19:11:35'),
('PAYMOXUJLK', '106.195.87.242', 'nokia n9', '2013-07-03 19:12:08'),
('BPV7PRU9KQ', '106.195.87.242', 'nokia n9', '2013-07-03 19:12:54'),
('COYOP77NJL', '106.195.87.242', 'nokia n9', '2013-07-03 19:21:53'),
('7PZ2MZ4204', '106.195.87.242', 'nokia n9', '2013-07-03 19:22:24'),
('GBQ2CVT1NP', '106.195.87.242', 'Samsung Galaxy S Duos S7562 (Black)', '2013-07-03 19:23:08'),
('DA9AWZT6O2', '106.195.87.242', 'Samsung Galaxy S Duos S7562 (Black)', '2013-07-03 19:23:39'),
('2OFBI08LFH', '106.216.204.127', 'samsung duos', '2013-07-04 01:58:13'),
('J0LKY4FQQE', '106.216.204.127', 'samsung duos', '2013-07-04 01:58:51'),
('DXBHEP9OT8', '106.216.204.127', 'Nokia lumia 900', '2013-07-04 02:03:43'),
('DJ6RAMULVT', '106.216.204.127', 'Nokia lumia 900', '2013-07-04 02:04:15'),
('5F7JE7T0R4', '106.216.204.127', 'condom', '2013-07-04 02:28:34'),
('31WKQSJ3GV', '106.216.204.127', 'condom', '2013-07-04 02:29:06'),
('5XYJMMG5LY', '106.216.204.127', 'Samsung Galaxy Y Duos Lite GT-S5302 (White)', '2013-07-04 02:39:39'),
('VQZ9POZMNI', '106.216.204.127', 'Samsung Galaxy Y Duos Lite GT-S5302 (White)', '2013-07-04 02:40:14'),
('WHDA5IZOUM', '106.216.204.127', 'Samsung Galaxy Y Duos Lite GT-S5302 (White)', '2013-07-04 02:43:28'),
('J0IYQCVOJF', '106.216.204.127', 'Micromax Ninja 3 A57', '2013-07-04 02:46:32'),
('BDVG7VAEMI', '106.216.204.127', 'Micromax Ninja 3 A57', '2013-07-04 02:47:07'),
('TKB2L4SNIF', '106.216.204.127', 'mobiles', '2013-07-04 02:48:33'),
('HUDJV7RZIG', '106.216.204.127', 'mobiles', '2013-07-04 02:49:06'),
('OQ1FU12B6H', '106.216.204.127', 'Nokia lumia 900', '2013-07-04 02:51:04'),
('C9M7MGRSV5', '106.216.204.127', 'nokia lumia 610', '2013-07-04 02:51:23'),
('Q5VOSDYSTJ', '106.216.204.127', 'nokia lumia 610', '2013-07-04 02:51:55'),
('HTNW3OMBJY', '106.216.204.127', 'Nikon D5100 SLR', '2013-07-04 02:55:15'),
('W3X3K4C143', '106.216.204.127', 'Apple iPhone 5', '2013-07-04 02:56:49'),
('CY0JZ4HW2Q', '106.216.204.127', 'Apple iPhone 5', '2013-07-04 02:57:21'),
('32OS4GK7ZU', '106.216.204.127', 'a modern approach to verbal and non verbal reasoning', '2013-07-04 02:58:06'),
('UUH4E0NF1I', '106.216.204.127', 'a modern approach to verbal and non verbal reasoning', '2013-07-04 02:58:38'),
('Q5ZDQBC0MT', '106.216.204.127', 'Apple iPhone 4s', '2013-07-04 02:58:54'),
('N0Z7242XTD', '106.216.204.127', 'Apple iPhone 4s', '2013-07-04 02:59:28'),
('VDZOZAE0MG', '106.216.204.127', 'Nokia asha 302', '2013-07-04 03:24:10'),
('DCQTXGY2T9', '106.216.204.127', 'Nokia asha 302', '2013-07-04 03:24:42'),
('OKPPIMI4SB', '106.216.204.127', 'Nokia asha 302', '2013-07-04 03:25:13'),
('WQI4VUY3FO', '106.216.204.127', 'nokia lumia 920', '2013-07-04 03:25:50'),
('VFHWALJK0G', '106.216.204.127', 'nokia lumia 920', '2013-07-04 03:26:22'),
('AQA15PQA32', '106.216.204.127', 'nokia lumia 920', '2013-07-04 03:26:41'),
('GF6VI8DOVM', '106.216.204.127', 'nokia lumia 920', '2013-07-04 03:30:42'),
('MOWIUK6X0O', '106.216.204.127', 'nokia lumia 920', '2013-07-04 03:31:25'),
('T1EH6EU1IJ', '106.216.204.127', 'nokia lumia 920', '2013-07-04 03:48:47'),
('DI5MEMF4EB', '106.216.204.127', 'nokia lumia 920', '2013-07-04 03:50:14'),
('75392B98Q2', '106.216.204.127', 'nokia lumia 920', '2013-07-04 03:52:12'),
('039189GCSY', '106.216.204.127', 'nokia lumia 920', '2013-07-04 03:55:28'),
('V21HXUVYQX', '106.216.204.127', 'nokia lumia 920', '2013-07-04 03:58:16'),
('YZMS320QPY', '106.216.204.127', 'nokia lumia 920', '2013-07-04 04:00:17'),
('OK5LS49OY2', '106.216.204.127', 'nokia lumia 920', '2013-07-04 04:05:05'),
('GK4CIVR9AT', '106.216.204.127', 'nokia lumia 920', '2013-07-04 04:05:10'),
('LY7TZ6U3ZJ', '106.216.204.127', 'nokia lumia 920', '2013-07-04 04:05:23'),
('8QYY6Q8BR2', '106.216.204.127', 'nokia lumia 920', '2013-07-04 04:06:14'),
('GQAKVUD37N', '106.216.204.127', 'nokia lumia 920', '2013-07-04 04:06:24'),
('4BGELG8YG8', '106.216.204.127', 'nokia lumia 920', '2013-07-04 04:06:31'),
('C2347DH4D2', '106.216.204.127', 'nokia lumia 920', '2013-07-04 04:06:55'),
('SSDNHKE5CN', '106.216.204.127', 'nokia lumia 920', '2013-07-04 04:07:07'),
('ODUXI2NL2S', '106.216.204.127', 'nokia lumia 920', '2013-07-04 04:07:52'),
('8QGPSGB5G4', '106.216.204.127', 'nokia lumia 920', '2013-07-04 04:08:00'),
('MYRR6WT9YA', '106.216.204.127', 'nokia lumia 920', '2013-07-04 04:08:13'),
('Z7KTOC4SCE', '106.216.204.127', 'nokia lumia 920', '2013-07-04 04:09:48'),
('FQKXXXA1A5', '106.216.204.127', 'nokia lumia 920', '2013-07-04 04:11:38'),
('9LS6FV9DLE', '106.216.204.127', 'nokia lumia 920', '2013-07-04 04:11:47'),
('GKP7A6ETRW', '106.216.204.127', 'Nokia lumia 900', '2013-07-04 04:12:01'),
('TJ1EHQ1N5G', '106.216.204.127', 'Nokia lumia 900', '2013-07-04 04:12:34'),
('PAOZ61KRNH', '106.216.204.127', 'Nokia lumia 900', '2013-07-04 04:13:03'),
('GNUQXQX04K', '106.216.204.127', 'nokia lumia 920', '2013-07-04 04:13:20'),
('TLGDRTZQX8', '106.216.204.127', 'blackberry bold', '2013-07-04 04:13:38'),
('66L9PTJ2FN', '106.216.204.127', 'blackberry bold', '2013-07-04 04:14:11'),
('21MSHX13F0', '106.216.204.127', 'blackberry bold', '2013-07-04 04:16:02'),
('0INROY2USU', '106.216.204.127', 'blackberry bold', '2013-07-04 04:16:16'),
('CV01S52YES', '106.216.204.127', 'blackberry bold', '2013-07-04 04:16:43'),
('FJOT00ZH5I', '106.216.204.127', 'blackberry bold', '2013-07-04 04:17:59'),
('1HZGJ3VRKR', '106.216.204.127', 'blackberry bold', '2013-07-04 04:18:26'),
('6C03YB14Z6', '106.216.204.127', 'samsung', '2013-07-04 04:21:14'),
('PYEAEJ3EZX', '106.216.204.127', 'samsung', '2013-07-04 04:23:46'),
('TM22MUJRIO', '106.216.204.127', 'samsung', '2013-07-04 04:24:39'),
('DM3TXS1EKW', '106.216.204.127', 'samsung', '2013-07-04 04:25:43'),
('9EAQJDMSE8', '106.216.204.127', 'samsung', '2013-07-04 04:26:02'),
('TK66E4GIYO', '106.216.204.127', 'samsung', '2013-07-04 04:26:58'),
('5PTHHO32KT', '106.216.204.127', 'nokia lumia 920', '2013-07-04 04:27:13'),
('AAGJDO286F', '106.216.204.127', 'nokia lumia 920', '2013-07-04 04:27:45'),
('AO1U2NJC83', '106.216.204.127', 'nokia lumia 920', '2013-07-04 04:28:20'),
('Z8O4HTKCDT', '106.216.204.127', 'nokia lumia 510', '2013-07-04 04:33:34'),
('B8FTN7MU1T', '106.216.204.127', 'nokia lumia 510', '2013-07-04 04:34:06'),
('NFJM1ADGQG', '106.216.204.127', 'nokia lumia 510', '2013-07-04 04:35:18'),
('RF458N296L', '106.216.204.127', 'nokia lumia 510', '2013-07-04 04:37:41'),
('RFKJ2MDQW5', '106.216.204.127', 'Nokia Lumia 800', '2013-07-04 04:39:37'),
('DZ68VB5B8D', '106.216.204.127', 'Nokia Lumia 800', '2013-07-04 04:40:09'),
('K5GC7PLVAY', '106.216.204.127', 'Nokia Lumia 800', '2013-07-04 04:41:09'),
('GGOLIJ91QE', '106.216.204.127', 'Nikon D5100 SLR', '2013-07-04 04:41:51'),
('U1RAAOPVPW', '106.216.204.127', 'Nikon D5100 SLR', '2013-07-04 04:42:23'),
('BHIPFPNCJG', '106.216.204.127', 'Nikon D5100 SLR', '2013-07-04 04:43:11'),
('L3YCHDG06S', '106.216.204.127', 'Nokia lumia 900', '2013-07-04 04:46:13'),
('RRVAX7K1G3', '106.216.204.127', 'Nokia asha 202', '2013-07-04 04:50:24'),
('OG6OE8LVM9', '106.216.204.127', 'Nokia asha 202', '2013-07-04 04:50:59'),
('9IUQI99FCC', '106.216.204.127', 'nokia lumia 710', '2013-07-04 04:59:09'),
('5S1EA1TTRJ', '106.216.204.127', 'nokia lumia 710', '2013-07-04 04:59:42'),
('N7HO0Q41TB', '106.216.204.127', 'nokia lumia 710', '2013-07-04 05:04:39'),
('4F5IJ1RC2A', '106.216.204.127', 'nokia lumia 710', '2013-07-04 05:08:11'),
('J3KKG4DANR', '106.216.204.127', 'nokia lumia 610', '2013-07-04 05:09:55'),
('F72YQ4TFSL', '106.216.204.127', 'nokia lumia 610', '2013-07-04 05:10:28'),
('HLUI6H48LP', '106.216.204.127', 'nokia lumia 610', '2013-07-04 05:12:44'),
('FOC9WRBTRV', '106.216.204.127', 'nokia lumia 610', '2013-07-04 05:14:11'),
('MHG6SE1XVI', '106.216.204.127', 'Samsung Galaxy Y Duos Lite GT-S5302 (White)', '2013-07-04 05:14:39'),
('0XWW3GMWZD', '106.216.204.127', 'Samsung Galaxy Y Duos Lite GT-S5302 (White)', '2013-07-04 05:15:11'),
('FLT4AGF2GP', '106.216.204.127', 'Samsung washing machine', '2013-07-04 05:17:05'),
('OYR2PMXWOS', '106.216.204.127', 'Samsung washing machine', '2013-07-04 05:17:37'),
('9B5ANBBKR1', '106.216.204.127', 'nokia lumia 510', '2013-07-04 05:23:36'),
('CHLPAZTVDQ', '106.216.204.127', 'nokia 109', '2013-07-04 05:25:14'),
('30299SF1O4', '106.216.204.127', 'nokia 109', '2013-07-04 05:25:47'),
('6DYO9I75SE', '106.216.204.127', 'nokia 114', '2013-07-04 05:27:55'),
('MTLASH4QC3', '106.216.204.127', 'nokia 114', '2013-07-04 05:28:26'),
('N3Z59QQBIA', '106.216.204.127', 'Micromax X327 (Grey)', '2013-07-04 05:32:25'),
('UYNLH57Z60', '106.216.204.127', 'Micromax X327 (Grey)', '2013-07-04 05:32:57'),
('KLJ9A08Z45', '106.216.204.127', 'samsung galaxy note 2', '2013-07-04 05:34:05'),
('ZG2J0LDISA', '106.216.204.127', 'samsung galaxy note 2', '2013-07-04 05:34:38'),
('EUWKVVGJAC', '117.201.148.111', 'apple', '2013-07-04 16:05:12'),
('WE1V3282XD', '117.201.148.111', 'Apple iPhone 5', '2013-07-04 16:05:34'),
('D8K12TIKJ3', '117.201.148.111', 'apple tablet', '2013-07-04 16:06:05'),
('3TARNK7OFQ', '117.201.148.111', 'Nokia lumia 900', '2013-07-04 16:06:39'),
('4XH01I1RE0', '106.195.54.253', 'micromax A7 Bolt', '2013-07-04 18:20:48'),
('OZ6LEQV6XO', '106.195.54.253', 'micromax A7 Bolt', '2013-07-04 18:21:23'),
('VK9H1XIRUV', '115.118.26.175', 'nokia lumia 510', '2013-07-04 19:00:01'),
('9KQSYSI6RN', '115.118.26.175', 'nokia lumia 510', '2013-07-04 19:00:38'),
('FYPJPFG98M', '115.118.26.175', 'Netgear N300', '2013-07-04 19:02:20'),
('ZT9LA230FK', '115.118.26.175', 'Netgear N300', '2013-07-04 19:02:51'),
('K734URTJU1', '106.195.54.253', 'micromax a116', '2013-07-04 19:13:03'),
('E1KUYRO2XM', '106.195.54.253', 'micromax a116', '2013-07-04 19:13:40'),
('54M0GBOSCW', '106.195.54.253', 'micromax a116', '2013-07-04 19:15:12'),
('RUZ2N9IB9P', '115.118.100.122', 'laser printer\\\\', '2013-07-07 09:44:48'),
('AZOGM6KEO4', '223.177.14.157', 'Sony Xperia J', '2013-07-11 02:42:54'),
('MEQL11SS0J', '115.118.30.48', 'apple macbook pro', '2013-07-26 20:29:07');

-- --------------------------------------------------------

--
-- Table structure for table `trends`
--

CREATE TABLE IF NOT EXISTS `trends` (
  `TrendId` int(10) NOT NULL AUTO_INCREMENT,
  `Trend` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Starttime` datetime NOT NULL,
  `Ip` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`TrendId`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=146 ;

--
-- Dumping data for table `trends`
--

INSERT INTO `trends` (`TrendId`, `Trend`, `Starttime`, `Ip`) VALUES
(1, '\n1,', '2013-01-18 16:53:47', '223.190.101.147'),
(2, '\n1,', '2013-01-18 17:29:36', '223.190.101.147'),
(3, '\n2,3,', '2013-01-18 17:34:56', '223.190.101.147'),
(4, '\n4,6,', '2013-01-18 20:24:25', '125.62.203.153'),
(5, '\n6,', '2013-01-18 20:29:42', '125.62.203.153'),
(6, '\n8,', '2013-01-18 20:48:38', '125.62.203.153'),
(7, '\n9,', '2013-01-18 21:15:58', '125.62.203.153'),
(8, '\n2,', '2013-01-19 00:47:09', '223.190.101.147'),
(9, '\n2,1,10,', '2013-01-19 01:00:41', '223.190.101.147'),
(10, '\n10,', '2013-01-19 01:06:09', '223.190.101.147'),
(11, '\n1,', '2013-01-19 15:27:19', '106.207.249.221'),
(12, '\n11,12,', '2013-01-19 15:32:25', '106.207.249.221'),
(13, '\n12,', '2013-01-20 00:15:25', '106.207.249.221'),
(14, '\n12,', '2013-01-20 00:22:04', '106.207.249.221'),
(15, '\n13,14,6,15,', '2013-01-23 19:22:35', '125.62.203.116'),
(16, '\n15,16,17,18,', '2013-01-23 19:28:05', '125.62.203.116'),
(17, '\n18,19,20,', '2013-01-23 19:33:32', '125.62.203.116'),
(18, '\n21,22,23,24,', '2013-01-23 19:40:02', '125.62.203.116'),
(19, '\n24,', '2013-01-23 19:45:30', '125.62.203.116'),
(20, '\n25,', '2013-01-23 20:11:51', '125.62.203.116'),
(21, '\n26,', '2013-01-23 21:45:44', '125.62.203.116'),
(22, '\n27,28,', '2013-01-23 22:15:35', '125.62.203.116'),
(23, '\n29,30,', '2013-01-23 22:27:11', '125.62.203.116'),
(24, '\n30,31,', '2013-01-23 22:32:25', '125.62.203.116'),
(25, '\n31,', '2013-01-23 22:37:52', '125.62.203.116'),
(26, '\n32,', '2013-01-28 19:32:35', '106.195.8.186'),
(27, '\n33,', '2013-01-28 19:39:43', '106.195.8.186'),
(28, '\n34,35,36,', '2013-01-30 13:49:19', '106.206.122.121'),
(29, '\n37,3,', '2013-02-10 23:57:59', '106.207.56.108'),
(30, '\n3,13,', '2013-02-11 00:04:30', '106.207.56.108'),
(31, '\n38,39,', '2013-02-12 22:55:55', '125.62.203.27'),
(32, '\n1,', '2013-02-14 19:05:01', '219.91.254.188'),
(33, '\n3,13,', '2013-02-14 19:34:59', '219.91.254.188'),
(34, '\n40,41,42,15,34,', '2013-02-19 17:33:53', '115.118.107.151'),
(35, '\n15,10,', '2013-02-19 18:04:52', '115.118.107.151'),
(36, '\n43,', '2013-02-21 16:34:55', '106.216.180.179'),
(37, '\n2,34,', '2013-02-21 17:15:47', '106.216.180.179'),
(38, '\n34,', '2013-02-21 17:21:23', '106.216.180.179'),
(39, '\n34,44,', '2013-02-21 17:27:39', '106.216.180.179'),
(40, '\n8,', '2013-02-21 17:37:17', '106.216.180.179'),
(41, '\n1,10,', '2013-02-21 17:45:45', '106.216.180.179'),
(42, '\n34,45,', '2013-02-22 08:12:08', '125.62.203.241'),
(43, '\n46,', '2013-02-22 16:36:30', '223.190.4.178'),
(44, '\n47,', '2013-02-22 16:43:32', '223.190.4.178'),
(45, '\n34,', '2013-02-24 10:51:22', '125.62.203.60'),
(46, '\n45,48,13,49,', '2013-02-24 10:52:27', '125.62.203.241'),
(47, '\n49,50,', '2013-02-24 10:57:41', '125.62.203.241'),
(48, '\n50,51,', '2013-02-24 13:12:44', '125.62.203.241'),
(49, '\n51,', '2013-02-24 13:19:29', '125.62.203.241'),
(50, '\n31,52,', '2013-02-24 16:32:56', '125.62.203.241'),
(51, '\n53,20,', '2013-02-24 16:38:29', '125.62.203.241'),
(52, '\n54,', '2013-02-25 19:02:46', '125.62.212.101'),
(53, '\n47,', '2013-02-26 23:12:57', '106.208.48.150'),
(54, '\n47,', '2013-02-27 00:02:33', '106.208.48.150'),
(55, '\n47,', '2013-02-27 03:10:01', '106.208.48.150'),
(56, '\n13,', '2013-02-27 13:15:52', '117.232.136.69'),
(57, '\n47,46,', '2013-02-27 19:30:49', '106.195.93.166'),
(58, '\n20,', '2013-02-27 22:18:05', '125.62.203.61'),
(59, '\n47,', '2013-02-28 00:40:03', '106.195.93.166'),
(60, '\n47,', '2013-02-28 01:24:36', '106.195.93.166'),
(61, '\n47,', '2013-02-28 01:49:15', '106.195.93.166'),
(62, '\n55,', '2013-02-28 02:05:04', '106.195.93.166'),
(63, '\n56,', '2013-02-28 02:32:39', '106.195.93.166'),
(64, '\n56,47,', '2013-02-28 02:57:42', '106.195.93.166'),
(65, '\n47,', '2013-02-28 03:03:39', '106.195.93.166'),
(66, '\n57,58,29,', '2013-02-28 03:53:48', '106.195.93.166'),
(67, '\n29,', '2013-02-28 03:59:08', '106.195.93.166'),
(68, '\n15,35,', '2013-02-28 04:23:33', '106.195.93.166'),
(69, '\n35,', '2013-02-28 04:36:28', '106.195.93.166'),
(70, '\n35,', '2013-02-28 04:41:43', '106.195.93.166'),
(71, '\n10,36,', '2013-02-28 04:47:03', '106.195.93.166'),
(72, '\n36,47,24,', '2013-02-28 04:52:07', '106.195.93.166'),
(73, '\n24,55,13,56,', '2013-02-28 04:57:39', '106.195.93.166'),
(74, '\n56,', '2013-02-28 05:03:06', '106.195.93.166'),
(75, '\n47,34,55,', '2013-02-28 16:35:10', '223.177.29.14'),
(76, '\n55,1,12,3,', '2013-02-28 16:40:28', '223.177.29.14'),
(77, '\n8,', '2013-02-28 17:44:50', '125.62.203.192'),
(78, '\n56,', '2013-02-28 18:09:21', '125.62.203.192'),
(79, '\n39,', '2013-02-28 18:29:41', '125.62.203.192'),
(80, '\n12,26,59,', '2013-02-28 19:21:33', '125.62.203.192'),
(81, '\n60,61,62,', '2013-02-28 19:26:58', '125.62.203.192'),
(82, '\n64,', '2013-03-04 20:08:54', '125.62.203.25'),
(83, '\n64,65,66,', '2013-03-04 20:14:12', '125.62.203.25'),
(84, '\n66,67,', '2013-03-04 20:19:24', '125.62.203.25'),
(85, '\n67,', '2013-03-04 20:27:46', '125.62.203.25'),
(86, '\n67,', '2013-03-04 20:58:21', '125.62.203.25'),
(87, '\n67,68,69,', '2013-03-04 21:33:34', '125.62.203.42'),
(88, '\n70,', '2013-03-04 23:08:47', '125.62.203.42'),
(89, '\n71,39,', '2013-03-07 11:01:00', '148.87.67.212'),
(90, '\n56,', '2013-03-07 12:24:56', '148.87.67.212'),
(91, '\n72,1,', '2013-03-17 20:37:06', '125.62.203.246'),
(92, '\n1,', '2013-03-17 20:42:14', '125.62.203.246'),
(93, '\n73,', '2013-03-19 14:59:40', '10.158.11.50'),
(94, '\n74,56,', '2013-03-19 15:05:53', '10.158.11.50'),
(95, '\n75,76,77,', '2013-03-19 15:08:56', '10.158.11.50'),
(96, '\n78,', '2013-03-19 19:06:10', '10.158.11.60'),
(97, '\n79,', '2013-03-19 19:15:18', '10.158.11.60'),
(98, '\n80,', '2013-03-21 16:44:41', '148.87.67.212'),
(99, '\n81,', '2013-03-21 16:50:53', '148.87.67.212'),
(100, '\n82,83,', '2013-03-21 17:00:38', '148.87.67.212'),
(101, '\n84,', '2013-03-21 17:06:33', '148.87.67.212'),
(102, '\n85,', '2013-03-21 17:11:57', '148.87.67.212'),
(103, '\n8,', '2013-03-25 05:17:35', '223.190.56.46'),
(104, '\n47,', '2013-03-27 19:59:27', '223.187.195.173'),
(105, '\n86,', '2013-03-28 22:46:39', '148.87.67.212'),
(106, '\n87,88,89,', '2013-03-29 10:21:43', '125.62.203.204'),
(107, '\n1,2,', '2013-04-05 18:24:35', '106.206.215.197'),
(108, '\n90,', '2013-04-05 19:26:01', '125.62.203.175'),
(109, '\n91,55,', '2013-07-03 15:54:10', '106.195.87.242'),
(110, '\n2,', '2013-07-03 19:01:44', '106.195.87.242'),
(111, '\n2,47,77,', '2013-07-03 19:07:18', '106.195.87.242'),
(112, '\n77,', '2013-07-03 19:12:54', '106.195.87.242'),
(113, '\n77,8,', '2013-07-03 19:21:53', '106.195.87.242'),
(114, '\n1,', '2013-07-04 01:58:13', '106.216.204.127'),
(115, '\n34,', '2013-07-04 02:03:43', '106.216.204.127'),
(116, '\n58,', '2013-07-04 02:28:34', '106.216.204.127'),
(117, '\n2,', '2013-07-04 02:39:39', '106.216.204.127'),
(118, '\n25,92,34,46,', '2013-07-04 02:46:32', '106.216.204.127'),
(119, '\n46,24,51,', '2013-07-04 02:51:55', '106.216.204.127'),
(120, '\n51,4,50,', '2013-07-04 02:57:21', '106.216.204.127'),
(121, '\n35,47,', '2013-07-04 03:24:10', '106.216.204.127'),
(122, '\n47,', '2013-07-04 03:30:42', '106.216.204.127'),
(123, '\n47,', '2013-07-04 03:48:47', '106.216.204.127'),
(124, '\n47,', '2013-07-04 03:55:28', '106.216.204.127'),
(125, '\n47,', '2013-07-04 04:05:05', '106.216.204.127'),
(126, '\n47,34,39,', '2013-07-04 04:11:38', '106.216.204.127'),
(127, '\n39,', '2013-07-04 04:16:43', '106.216.204.127'),
(128, '\n47,', '2013-07-04 04:27:13', '106.216.204.127'),
(129, '\n91,', '2013-07-04 04:33:34', '106.216.204.127'),
(130, '\n15,24,', '2013-07-04 04:39:37', '106.216.204.127'),
(131, '\n34,36,', '2013-07-04 04:46:13', '106.216.204.127'),
(132, '\n55,', '2013-07-04 04:59:09', '106.216.204.127'),
(133, '\n55,', '2013-07-04 05:04:39', '106.216.204.127'),
(134, '\n46,2,', '2013-07-04 05:09:55', '106.216.204.127'),
(135, '\n2,45,', '2013-07-04 05:15:11', '106.216.204.127'),
(136, '\n91,93,94,', '2013-07-04 05:23:36', '106.216.204.127'),
(137, '\n95,12,', '2013-07-04 05:32:25', '106.216.204.127'),
(138, '\n49,', '2013-07-04 16:05:12', '117.201.148.111'),
(139, '\n51,96,34,', '2013-07-04 16:05:34', '117.201.148.111'),
(140, '\n97,', '2013-07-04 18:20:49', '106.195.54.253'),
(141, '\n91,54,', '2013-07-04 19:00:02', '115.118.26.175'),
(142, '\n86,', '2013-07-04 19:13:03', '106.195.54.253'),
(143, '\n', '2013-07-07 09:44:49', '115.118.100.122'),
(144, '\n20,', '2013-07-11 02:42:54', '223.177.14.157'),
(145, '\n31,', '2013-07-26 20:29:07', '115.118.30.48');

-- --------------------------------------------------------

--
-- Table structure for table `uread`
--

CREATE TABLE IF NOT EXISTS `uread` (
  `WebsiteID` int(10) NOT NULL,
  `ProductId` int(10) NOT NULL,
  `Price` int(10) NOT NULL,
  `Link` text NOT NULL,
  `DeliveryTime` text NOT NULL,
  `EMI` int(1) NOT NULL DEFAULT '0',
  `Title` text NOT NULL,
  `Time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vijaysales`
--

CREATE TABLE IF NOT EXISTS `vijaysales` (
  `WebsiteID` int(10) NOT NULL,
  `ProductId` int(10) NOT NULL,
  `Price` int(10) NOT NULL,
  `Link` text NOT NULL,
  `DeliveryTime` text NOT NULL,
  `EMI` int(1) NOT NULL DEFAULT '0',
  `Title` text NOT NULL,
  `Time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vijaysales`
--

INSERT INTO `vijaysales` (`WebsiteID`, `ProductId`, `Price`, `Link`, `DeliveryTime`, `EMI`, `Title`, `Time`) VALUES
(34, 1, 13800, 'http://www.vijaysales.com/mobiles-cameras/samsung-mobile-galaxy-s-duos-s7562/p-41201-71462716-cat.html#variant_id=41201-71462716', 'Delivery in 4 - 7 days.', 0, 'SAMSUNG MOBILE GALAXY S DUOS S7562', '2013-01-18 16:54:03'),
(34, 2, 5990, 'http://www.vijaysales.com/mobiles-cameras/samsung-mobile-galaxy-y-duos-lite-s5302-white/p-41201-10422678384-cat.html#variant_id=41201-10422678384', 'Delivery in 4 - 7 days.', 0, 'SAMSUNG MOBILE GALAXY Y DUOS LITE S5302 WHITE', '2013-01-18 17:35:07'),
(34, 3, 5990, 'http://www.vijaysales.com/mobiles-cameras/samsung-mobile-galaxy-y-duos-lite-s5302-black/p-41201-80915504701-cat.html#variant_id=41201-80915504701', 'Delivery in 4 - 7 days.', 0, 'SAMSUNG MOBILE GALAXY Y DUOS LITE S5302 BLACK', '2013-01-18 17:36:05'),
(34, 8, 13800, 'http://www.vijaysales.com/mobiles-cameras/samsung-mobile-galaxy-s-duos-s7562/p-41201-71462716-cat.html#variant_id=41201-71462716', 'Delivery in 4 - 7 days.', 0, 'SAMSUNG MOBILE GALAXY S DUOS S7562', '2013-01-18 20:48:54'),
(34, 10, 4250, 'http://www.vijaysales.com/mobiles-cameras/nokia-mobile-asha-305-silver-white/p-41201-14541077556-cat.html#variant_id=41201-14541077556', 'Delivery in 4 - 7 days.', 0, 'NOKIA MOBILE ASHA 305 SILVER WHITE', '2013-01-19 01:05:46'),
(34, 12, 35590, 'http://www.vijaysales.com/mobiles-cameras/samsung-mobile-galaxy-note-2-n7100-marble-white/p-41201-62176177806-cat.html#variant_id=41201-62176177806', 'Delivery in 4 - 7 days.', 0, 'SAMSUNG MOBILE GALAXY NOTE 2 N7100 MARBLE WHITE â€¦', '2013-01-19 15:34:14'),
(34, 13, 29490, 'http://www.vijaysales.com/mobiles-cameras/samsung-mobile-galaxy-s3-white/p-41201-24283008489-cat.html#variant_id=41201-24283008489', 'Delivery in 4 - 7 days.', 0, 'SAMSUNG MOBILE GALAXY S3 WHITE', '2013-01-23 19:22:53'),
(34, 14, 81900, 'http://www.vijaysales.com/apple/apple-macbook-pro-13-inch-md101hn/p-41201-1167617424-cat.html#variant_id=41201-1167617424', 'Delivery in 4 - 7 days.', 0, 'Apple MacBook Pro 13 inch MD101HN/A', '2013-01-23 19:24:49'),
(34, 15, 19000, 'http://www.vijaysales.com/mobiles-cameras/nokia-mobile-lumia-800/p-41201-13269692798-cat.html#variant_id=41201-12893219859', 'Delivery in 4 - 7 days.', 0, 'NOKIA MOBILE LUMIA 800, black', '2013-01-23 19:27:45'),
(34, 16, 199, 'http://www.vijaysales.com/accessories/philips-headphone-she2641/p-41201-2615342160-cat.html#variant_id=41201-2615342160', 'Delivery in 4 - 7 days.', 0, 'PHILIPS HEADPHONE SHE2641', '2013-01-23 19:30:04'),
(34, 17, 1599, 'http://www.vijaysales.com/accessories/belkin-basic-wireless-router-n150/p-41201-69994293561-cat.html#variant_id=41201-59567706974', 'Delivery in 4 - 7 days.', 0, 'BELKIN BASIC WIRELESS ROUTER N150, black', '2013-01-23 19:31:19'),
(34, 19, 19490, 'http://www.vijaysales.com/mobiles-cameras/samsung-tab2-p3100-white/p-41201-84269537080-cat.html#variant_id=41201-84269537080', 'Delivery in 4 - 7 days.', 0, 'SAMSUNG TAB2 P3100 WHITE', '2013-01-23 19:36:42'),
(34, 20, 16490, 'http://www.vijaysales.com/mobiles-cameras/sony-mobile-xperia-j-black/p-41201-19603766958-cat.html#variant_id=41201-19603766958', 'Delivery in 4 - 7 days.', 0, 'SONY MOBILE XPERIA J BLACK', '2013-01-23 19:38:06'),
(34, 24, 6749, 'http://www.vijaysales.com/mobiles-cameras/nikon-still-camera-s3300-black/p-41201-169516364-cat.html#variant_id=41201-169516364', 'Delivery in 4 - 7 days.', 0, 'NIKON STILL CAMERA S3300 BLACK', '2013-01-23 19:45:06'),
(34, 25, 4999, 'http://www.vijaysales.com/mobiles-cameras/micromax-mobile-a57-black/p-41201-96516024081-cat.html#variant_id=41201-96516024081', 'Delivery in 4 - 7 days.', 0, 'MICROMAX MOBILE A57 BLACK', '2013-01-23 20:12:03'),
(34, 26, 700, 'http://www.vijaysales.com/accessories/transcend-pen-drive-16gb/p-41201-86172983483-cat.html#variant_id=41201-86172983483', 'Delivery in 4 - 7 days.', 0, 'TRANSCEND PEN DRIVE 16GB', '2013-01-23 21:46:02'),
(34, 29, 8725, 'http://www.vijaysales.com/mobiles-cameras/canon-still-camera-sx150/p-41201-75948738707-cat.html#variant_id=41201-11457699082', 'Delivery in 4 - 7 days.', 0, 'CANON STILL CAMERA SX150, silver', '2013-01-23 22:27:22'),
(34, 31, 81900, 'http://www.vijaysales.com/apple/apple-macbook-pro-13-inch-md101hn/p-41201-1167617424-cat.html#variant_id=41201-1167617424', 'Delivery in 4 - 7 days.', 0, 'Apple MacBook Pro 13 inch MD101HN/A', '2013-01-23 22:36:39'),
(34, 32, 21990, 'http://www.vijaysales.com/computer/hp-dreamscreen-400-2gb-250gb-w7hb/p-41201-49612215497-cat.html#variant_id=41201-49612215497', 'Delivery in 4 - 7 days.', 0, 'HP DREAMSCREEN 400 2GB 250GB W7HB', '2013-01-28 19:32:54'),
(34, 33, 21990, 'http://www.vijaysales.com/computer/hp-dreamscreen-400-2gb-250gb-w7hb/p-41201-49612215497-cat.html#variant_id=41201-49612215497', 'Delivery in 4 - 7 days.', 0, 'HP DREAMSCREEN 400 2GB 250GB W7HB', '2013-01-28 19:39:56'),
(34, 34, 31490, 'http://www.vijaysales.com/mobiles-cameras/nokia-mobile-lumia-900-black/p-41201-44062834545-cat.html#variant_id=41201-44062834545', 'Delivery in 4 - 7 days.', 0, 'NOKIA MOBILE LUMIA 900 BLACK', '2013-01-30 13:49:38'),
(34, 35, 6290, 'http://www.vijaysales.com/mobiles-cameras/nokia-mobile-asha-302-white/p-41201-39237543415-cat.html#variant_id=41201-39237543415', 'Delivery in 4 - 7 days.', 0, 'NOKIA MOBILE ASHA 302 WHITE', '2013-01-30 13:52:03'),
(34, 36, 3990, 'http://www.vijaysales.com/mobiles-cameras/nokia-mobile-asha-202-black/p-41201-11177470345-cat.html#variant_id=41201-11177470345', 'Delivery in 4 - 7 days.', 0, 'NOKIA MOBILE ASHA 202 BLACK', '2013-01-30 13:53:08'),
(34, 38, 24990, 'http://www.vijaysales.com/mobiles-cameras/blackberry-mobile-bold-9790-black/p-41201-8617545911-cat.html#variant_id=41201-36682758545', 'Delivery in 4 - 7 days.', 0, 'BLACKBERRY MOBILE BOLD 9790 BLACK, black', '2013-02-12 22:56:12'),
(34, 39, 24990, 'http://www.vijaysales.com/mobiles-cameras/blackberry-mobile-bold-9790-black/p-41201-8617545911-cat.html#variant_id=41201-36682758545', 'Delivery in 4 - 7 days.', 0, 'BLACKBERRY MOBILE BOLD 9790 BLACK, black', '2013-02-12 22:56:49'),
(34, 40, 7990, 'http://www.vijaysales.com/mobiles-cameras/htc-mobile-explorer/p-41201-16433534463-cat.html#variant_id=41201-37098229429', 'Delivery in 4 - 7 days.', 0, 'HTC MOBILE EXPLORER, black', '2013-02-19 17:34:10'),
(34, 41, 40000, 'http://www.vijaysales.com/appliances/siemens-wm-wm12e360in/p-41201-12472596825-cat.html#variant_id=41201-17477328456', 'Delivery in 4 - 7 days.', 0, 'SIEMENS WM WM12E360IN, white', '2013-02-19 17:34:47'),
(34, 42, 24990, 'http://www.vijaysales.com/mobiles-cameras/nokia-mobile-808-white/p-41201-53213656990-cat.html#variant_id=41201-53213656990', 'Delivery in 4 - 7 days.', 0, 'NOKIA MOBILE 808 WHITE', '2013-02-19 17:35:17'),
(34, 43, 2299, 'http://www.vijaysales.com/accessories/samsung-bluetooth-hm1700-black/p-41201-11145571026-cat.html#variant_id=41201-11145571026', 'Delivery in 4 - 7 days.', 0, 'SAMSUNG BLUETOOTH HM1700 BLACK', '2013-02-21 16:35:12'),
(34, 45, 26090, 'http://www.vijaysales.com/appliances/lg-washing-machine-f8068ldp/p-41201-54622792326-cat.html#variant_id=41201-86427930766', 'Delivery in 4 - 7 days.', 0, 'LG WASHING MACHINE F8068LDP, white', '2013-02-22 08:13:58'),
(34, 46, 12490, 'http://www.vijaysales.com/mobiles-cameras/nokia-mobile-lumia-610-white/p-41201-87348549288-cat.html#variant_id=41201-87348549288', 'Delivery in 4 - 7 days.', 0, 'NOKIA MOBILE LUMIA 610 WHITE', '2013-02-22 16:36:47'),
(34, 47, 38490, 'http://www.vijaysales.com/mobiles-cameras/nokia-mobile-lumia-920-black/p-41201-49057291474-cat.html#variant_id=41201-49057291474', 'Delivery in 4 - 7 days.', 0, 'NOKIA MOBILE LUMIA 920 BLACK', '2013-02-22 16:43:43'),
(34, 48, 26990, 'http://www.vijaysales.com/mobiles-cameras/samsung-mobile-galaxy-note-white/p-41201-66955289174-cat.html#variant_id=41201-66955289174', 'Delivery in 4 - 7 days.', 0, 'SAMSUNG MOBILE GALAXY NOTE WHITE', '2013-02-24 10:53:17'),
(34, 49, 81900, 'http://www.vijaysales.com/apple/apple-macbook-pro-13-inch-md101hn/p-41201-1167617424-cat.html#variant_id=41201-1167617424', 'Delivery in 4 - 7 days.', 0, 'Apple MacBook Pro 13 inch MD101HN/A', '2013-02-24 10:57:21'),
(34, 50, 11490, 'http://www.vijaysales.com/appliances/wpl-ref-180-gen-pre-tit-4s/p-41201-13962029728-cat.html#variant_id=41201-13962029728', 'Delivery in 4 - 7 days.', 0, 'WPL REF 180 GEN PRE TIT 4S', '2013-02-24 10:58:26'),
(34, 51, 1599, 'http://www.vijaysales.com/accessories/capdase-power-kit-iphone-ipod-atom-europe/p-41201-70589503287-cat.html#variant_id=41201-70589503287', 'Delivery in 4 - 7 days.', 0, 'CAPDASE POWER KIT FOR IPHONE/IPOD ATOM EUROPE', '2013-02-24 13:13:21'),
(34, 52, 62500, 'http://www.vijaysales.com/entertainment/samsung-led-40es5600/p-41201-15444599940-cat.html#variant_id=41201-15444599940', 'Delivery in 4 - 7 days.', 0, 'SAMSUNG LED 40ES5600', '2013-02-24 16:35:47'),
(34, 53, 84900, 'http://www.vijaysales.com/entertainment/samsung-led-46es5600/p-41201-55366319779-cat.html#variant_id=41201-55366319779', 'Delivery in 4 - 7 days.', 0, 'SAMSUNG LED 46ES5600', '2013-02-24 16:38:39'),
(34, 55, 13490, 'http://www.vijaysales.com/mobiles-cameras/nokia-mobile-lumia-710/p-41201-75369566282-cat.html#variant_id=41201-21254154356', 'Delivery in 4 - 7 days.', 0, 'NOKIA MOBILE LUMIA 710, black', '2013-02-28 02:05:17'),
(34, 56, 43490, 'http://www.vijaysales.com/mobiles-cameras/blackberry-mobile-z10-black/p-41201-8488952704-cat.html#variant_id=41201-8488952704', 'Delivery in 4 - 7 days.', 0, 'BLACKBERRY MOBILE Z10 BLACK', '2013-02-28 02:32:49'),
(34, 59, 700, 'http://www.vijaysales.com/accessories/transcend-pen-drive-16gb/p-41201-86172983483-cat.html#variant_id=41201-86172983483', 'Delivery in 4 - 7 days.', 0, 'TRANSCEND PEN DRIVE 16GB', '2013-02-28 19:26:08'),
(34, 60, 450, 'http://www.vijaysales.com/accessories/transcend-pen-drive-8gb/p-41201-57013775458-cat.html#variant_id=41201-57013775458', 'Delivery in 4 - 7 days.', 0, 'TRANSCEND PEN DRIVE 8GB', '2013-02-28 19:27:07'),
(34, 71, 26090, 'http://www.vijaysales.com/appliances/lg-washing-machine-f8068ldp/p-41201-54622792326-cat.html#variant_id=41201-86427930766', 'Delivery in 4 - 7 days.', 0, 'LG WASHING MACHINE F8068LDP, white', '2013-03-07 11:01:13'),
(34, 72, 26990, 'http://www.vijaysales.com/mobiles-cameras/samsung-mobile-galaxy-note-white/p-41201-66955289174-cat.html#variant_id=41201-66955289174', 'Delivery in 4 - 7 days.', 0, 'SAMSUNG MOBILE GALAXY NOTE WHITE', '2013-03-17 20:37:23'),
(34, 73, 30990, 'http://www.vijaysales.com/mobiles-cameras/samsung-mobile-galaxy-s3-white/p-41201-24283008489-cat.html#variant_id=41201-24283008489', 'Delivery in 4 - 7 days.', 0, 'SAMSUNG MOBILE GALAXY S3 WHITE', '2013-03-19 15:00:00'),
(34, 74, 43490, 'http://www.vijaysales.com/mobiles-cameras/blackberry-mobile-z10-black/p-41201-8488952704-cat.html#variant_id=41201-8488952704', 'Delivery in 4 - 7 days.', 0, 'BLACKBERRY MOBILE Z10 BLACK', '2013-03-19 15:06:04'),
(34, 77, 2450, 'http://www.vijaysales.com/mobiles-cameras/nokia-mobile-114-black/p-41201-27561149187-cat.html#variant_id=41201-27561149187', 'Delivery in 4 - 7 days.', 0, 'NOKIA MOBILE 114 BLACK', '2013-03-19 15:12:56'),
(34, 78, 21500, 'http://www.vijaysales.com/mobiles-cameras/samsung-mobile-galaxy-grand-i9082-white/p-41201-88302467854-cat.html#variant_id=41201-88302467854', 'Delivery in 4 - 7 days.', 0, 'SAMSUNG MOBILE GALAXY GRAND I9082 WHITE', '2013-03-19 19:06:30'),
(34, 79, 800, 'http://www.vijaysales.com/accessories/transcend-16gb-micro-sd-card/p-41201-4279683790-cat.html#variant_id=41201-4279683790', 'Delivery in 4 - 7 days.', 0, 'TRANSCEND 16GB MICRO SD CARD', '2013-03-19 19:15:29'),
(34, 80, 38990, 'http://www.vijaysales.com/mobiles-cameras/sony-mobile-xperia-z-black/p-41201-25662579712-cat.html#variant_id=41201-25662579712', 'Delivery in 4 - 7 days.', 0, 'SONY MOBILE XPERIA Z BLACK', '2013-03-21 16:44:56'),
(34, 81, 6990, 'http://www.vijaysales.com/gaming/sony-play-station-psp1004/p-41201-14921661417-cat.html#variant_id=41201-20386266770', 'Delivery in 4 - 7 days.', 0, 'Sony Play Station PSP1004, black', '2013-03-21 16:51:06'),
(34, 85, 3990, 'http://www.vijaysales.com/mobiles-cameras/samsung-mobile-c3312-rex60-blue/p-41201-55251254972-cat.html#variant_id=41201-55251254972', 'Delivery in 4 - 7 days.', 0, 'SAMSUNG MOBILE C3312 REX60 BLUE', '2013-03-21 17:12:09'),
(34, 86, 4590, 'http://www.vijaysales.com/mobiles-cameras/micromax-mobile-a54-black/p-41201-32568239454-cat.html#variant_id=41201-32568239454', 'Delivery in 4 - 7 days.', 0, 'MICROMAX MOBILE A54 BLACK', '2013-03-28 22:46:56'),
(34, 87, 20400, 'http://www.vijaysales.com/entertainment/samsung-led-26eh4000/p-41201-14465071775-cat.html#variant_id=41201-14465071775', 'Delivery in 4 - 7 days.', 0, 'SAMSUNG LED 26EH4000', '2013-03-29 10:22:01'),
(34, 88, 20400, 'http://www.vijaysales.com/entertainment/samsung-led-26eh4000/p-41201-14465071775-cat.html#variant_id=41201-14465071775', 'Delivery in 4 - 7 days.', 0, 'SAMSUNG LED 26EH4000', '2013-03-29 10:22:59'),
(34, 89, 20400, 'http://www.vijaysales.com/entertainment/samsung-led-26eh4000/p-41201-14465071775-cat.html#variant_id=41201-14465071775', 'Delivery in 4 - 7 days.', 0, 'SAMSUNG LED 26EH4000', '2013-03-29 10:24:05');

-- --------------------------------------------------------

--
-- Table structure for table `watchkart`
--

CREATE TABLE IF NOT EXISTS `watchkart` (
  `WebsiteID` int(10) NOT NULL,
  `ProductId` int(10) NOT NULL,
  `Price` int(10) NOT NULL,
  `Link` text COLLATE utf8_unicode_ci NOT NULL,
  `DeliveryTime` text COLLATE utf8_unicode_ci NOT NULL,
  `EMI` int(1) NOT NULL DEFAULT '0',
  `Title` text COLLATE utf8_unicode_ci NOT NULL,
  `Time` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `watchkart`
--

INSERT INTO `watchkart` (`WebsiteID`, `ProductId`, `Price`, `Link`, `DeliveryTime`, `EMI`, `Title`, `Time`) VALUES
(54, 2, 625, 'http://www.watchkart.com/numero-uno-nuw-005-white-watches.html', '2-5 Working days.', 0, 'Numero Uno NUW-005 White Unisex Watch', '2013-01-18 17:35:17'),
(54, 3, 520, 'http://www.watchkart.com/capdase-sjsgi9100-3f00-soft-jacket-fuze-for-samsung-galaxy-sii-clear-mobile-case.html', '2-5 Working days.', 0, 'Capdase SJSGI9100-3F00 Soft Jacket Fuze for Samsung Galaxy SII Clear Mobile Case ', '2013-01-18 17:36:24'),
(54, 4, 17095, 'http://www.watchkart.com/tarun-tahiliani-bridal-collection-women-tt17l2.html', '2-5 Working days.', 0, 'Tarun Tahiliani Bridal Collection Womens TT17L2', '2013-01-18 20:25:03'),
(54, 0, 522, 'http://www.watchkart.com/fastrack-p090bu1.html', '2-5 Working days.', 0, 'Fastrack P090BU1 Mens Sunglasses', '2013-01-18 20:29:10'),
(54, 6, 522, 'http://www.watchkart.com/fastrack-p090bu1.html', '2-5 Working days.', 0, 'Fastrack P090BU1 Mens Sunglasses', '2013-01-18 20:29:34'),
(54, 8, 1122, 'http://www.watchkart.com/fastrack-p175bk3-black-yellow-unisex-sunglasses.html', '2-5 Working days.', 0, 'Fastrack P175BK3 Black-Yellow Sunglasses', '2013-01-18 20:49:14'),
(54, 9, 2199, 'http://www.watchkart.com/oclock-m-verde-mela-green-apple-unisex-watch.html', '2-5 Working days.', 0, 'Oclock M Verde Mela Green Apple Unisex Watch', '2013-01-18 21:16:12'),
(54, 11, 1122, 'http://www.watchkart.com/fastrack-sunglasses-girls-model-p154bk1f.html', '2-5 Working days.', 0, 'Fastrack Sunglasses Girls - Model:P154BK1F', '2013-01-19 15:32:40'),
(54, 12, 756, 'http://www.watchkart.com/prestige-r-147r-red-galaxy-wall-clock.html', '2-5 Working days.', 0, 'Prestige R-147R Red Galaxy wall Clock', '2013-01-19 15:34:17'),
(54, 14, 2199, 'http://www.watchkart.com/oclock-m-verde-mela-green-apple-unisex-watch.html', '2-5 Working days.', 0, 'Oclock M Verde Mela Green Apple Unisex Watch', '2013-01-23 19:24:50'),
(54, 18, 1800, 'http://www.watchkart.com/casio-data-bank-db-360-1a-watches.html', '2-5 Working days.', 0, 'Casio DATA BANK DB-360-1ADF (DB27) Watch', '2013-01-23 19:33:13'),
(54, 21, 3186, 'http://www.watchkart.com/kara-mulberry-purple-purple-women-s-tote-bag.html', '2-5 Working days.', 0, 'Kara Mulberry Purple Womens Tote bag', '2013-01-23 19:40:29'),
(54, 22, 1572, 'http://www.watchkart.com/fastrack-m097bk1fp-silver-white-pink-06y-unisex-sunglasses.html', '2-5 Working days.', 0, 'Fastrack M097BK1FP Silver White Pink 06Y Unisex Sunglasses', '2013-01-23 19:43:01'),
(54, 26, 12930, 'http://www.watchkart.com/kara-overnighter-trolley-model-lg-7192-16-inches.html', '2-5 Working days.', 0, 'Kara Overnighter Trolley Model:  LG-7192 (16 inches)  ', '2013-01-23 21:46:08'),
(54, 27, 7560, 'http://www.watchkart.com/guess-w95046g1-watches.html', '2-5 Working days.', 0, 'Guess W95046G1 Mens Watch', '2013-01-23 22:16:03'),
(54, 28, 895, 'http://www.watchkart.com/fastrack-9827pp05-watches.html', '2-5 Working days.', 0, 'Fastrack Model No. 9827PP05 Unisex Watch', '2013-01-23 22:17:26'),
(54, 31, 2199, 'http://www.watchkart.com/oclock-m-verde-mela-green-apple-unisex-watch.html', '2-5 Working days.', 0, 'Oclock M Verde Mela Green Apple Unisex Watch', '2013-01-23 22:36:42'),
(54, 36, 599, 'http://www.watchkart.com/lotto-ltb-202-classic-black-gents-watches.html', '2-5 Working days.', 0, 'Lotto LTB-202 Classic Black Mens Watch', '2013-01-30 13:53:09'),
(54, 37, 1122, 'http://www.watchkart.com/fastrack-p175bk3-black-yellow-unisex-sunglasses.html', '2-5 Working days.', 0, 'Fastrack P175BK3 Black-Yellow Sunglasses', '2013-02-10 23:58:24'),
(54, 13, 520, 'http://www.watchkart.com/capdase-sjsgi9100-3f00-soft-jacket-fuze-for-samsung-galaxy-sii-clear-mobile-case.html', '2-5 Working days.', 0, 'Capdase SJSGI9100-3F00 Soft Jacket Fuze for Samsung Galaxy SII Clear Mobile Case ', '2013-02-11 00:05:09');

-- --------------------------------------------------------

--
-- Table structure for table `websiterequest`
--

CREATE TABLE IF NOT EXISTS `websiterequest` (
  `Id` int(10) NOT NULL AUTO_INCREMENT,
  `Email` varchar(255) NOT NULL,
  `WebsiteName` varchar(255) NOT NULL,
  `Contact` bigint(10) NOT NULL,
  `Time` datetime NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `websites`
--

CREATE TABLE IF NOT EXISTS `websites` (
  `WebsiteID` int(10) NOT NULL AUTO_INCREMENT,
  `WebsiteName` varchar(255) NOT NULL,
  `Status` enum('0','1') NOT NULL,
  PRIMARY KEY (`WebsiteID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=71 ;

--
-- Dumping data for table `websites`
--

INSERT INTO `websites` (`WebsiteID`, `WebsiteName`, `Status`) VALUES
(1, 'Flipkart', '1'),
(2, 'Infibeam', '1'),
(3, 'Ebay', '1'),
(4, 'Naaptol', '1'),
(5, 'Indiatimes', '1'),
(6, 'Homeshop18', '1'),
(7, 'Sangeethamobiles', '1'),
(8, 'Futurebazaar', '1'),
(9, 'Snapdeal', '1'),
(10, 'Rediff', '0'),
(11, 'Bestylish', '1'),
(12, 'Buytheprice', '1'),
(13, 'Yebhi', '1'),
(14, 'Indiaplaza', '0'),
(15, 'Myntra', '1'),
(16, 'Mydala', '1'),
(17, 'Cromaretail', '1'),
(18, 'Inkfruit', '1'),
(19, 'Bigadda', '1'),
(20, 'Next', '1'),
(21, 'Saholic', '1'),
(22, 'Tradus', '1'),
(23, 'Straightline', '1'),
(24, 'Zovi', '0'),
(25, 'Jabong', '1'),
(26, 'Landmarkonthenet', '1'),
(27, 'Timtara', '1'),
(28, 'Ezeekart', '1'),
(29, 'Maniacstore', '0'),
(30, 'Letsshop', '1'),
(31, 'Priceking', '0'),
(32, 'Shoppingwopping', '1'),
(33, 'Gud2buy', '1'),
(34, 'Vijaysales', '1'),
(35, 'Letskart', '1'),
(36, 'Justbooks', '0'),
(37, 'Crossword', '1'),
(38, 'Uread', '0'),
(39, 'Sulekha', '0'),
(40, 'Simplybooks', '1'),
(41, 'Nbcindia', '1'),
(42, 'Friendsofbooks', '0'),
(43, 'Bitfang', '0'),
(44, 'Jjmehta', '0'),
(45, 'Koovs', '1'),
(46, 'Fashionandyou', '0'),
(47, 'Healthkart', '1'),
(48, 'Caratlane', '1'),
(49, 'Pepperfry', '1'),
(50, 'Shopclues', '1'),
(51, 'Zoomin', '1'),
(52, 'Dealsandyou', '0'),
(53, 'Lenskart', '0'),
(54, 'Watchkart', '1'),
(55, 'Jewelskart', '1'),
(56, 'Bagskart', '1'),
(57, 'Freecultr', '1'),
(58, 'Firstcry', '1'),
(59, 'Babyoye', '1'),
(60, 'Zansaar', '1'),
(61, 'Giftcart', '1'),
(62, 'Cbazaar', '1'),
(63, 'Dealssulekha', '1'),
(64, 'Shopseventymm', '0'),
(65, 'Fosila', '1'),
(66, 'Mirchimart', '1'),
(67, 'Costprize', '1'),
(68, 'Ncarrynimbuzz', '1'),
(69, 'Themobilestore', '1'),
(70, 'Adexmart', '1');

-- --------------------------------------------------------

--
-- Table structure for table `yebhi`
--

CREATE TABLE IF NOT EXISTS `yebhi` (
  `WebsiteID` int(10) NOT NULL,
  `ProductId` int(10) NOT NULL,
  `Price` int(10) NOT NULL,
  `Link` text NOT NULL,
  `DeliveryTime` text NOT NULL,
  `EMI` int(1) NOT NULL DEFAULT '1',
  `Title` text NOT NULL,
  `Time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `yebhi`
--

INSERT INTO `yebhi` (`WebsiteID`, `ProductId`, `Price`, `Link`, `DeliveryTime`, `EMI`, `Title`, `Time`) VALUES
(13, 1, 2449, 'http://www.yebhi.com//218416/PD/samsung-galaxy-s-duos-s7562-white-mobile-phones.htm', 'Delivery in 2 days.', 1, 'Â ', '2013-01-18 16:53:58'),
(13, 9, 2520, 'http://www.yebhi.com/154854/PD/zagg-cases-and-pouches-apple-black-embossed-iphone-4.htm', 'Delivery in 2 days.', 1, 'zagg cases and pouches apple ', '2013-01-18 21:16:07'),
(13, 10, 4299, 'http://www.yebhi.com/168597/PD/nokia-asha-305-dark-grey-mobile-phones.htm', 'Delivery in 2 days.', 1, 'nokia asha 305 dark grey mobi', '2013-01-19 01:05:44'),
(13, 12, 2449, 'http://www.yebhi.com//224236/PD/samsung-galaxy-note-2-n7100-titanium-grey-mobile-phones.htm', 'Delivery in 2 days.', 1, 'Â ', '2013-01-19 15:34:11'),
(13, 13, 1499, 'http://www.yebhi.com/155718/PD/Samsung-Cases-and-Pouches-Flip-Cover-for-Galaxy-S3-EFC-1G6FWECINU-White.htm', 'Delivery in 2 days.', 1, 'Samsung Cases and Pouches Fli', '2013-01-23 19:22:49'),
(13, 15, 2449, 'http://www.yebhi.com//138567/PD/amzer-tpu-smoke-grey-for-nokia-lumia-800-93044-cases-and-pouches.htm', 'Delivery in 2 days.', 1, 'Â ', '2013-01-23 19:27:43'),
(13, 19, 19300, 'http://www.yebhi.com/150146/PD/samsung-galaxy-tab-2-p3100-white.htm', 'Delivery in 2 days.', 1, 'samsung galaxy tab 2 p3100 wh', '2013-01-23 19:36:38'),
(13, 20, 16490, 'http://www.yebhi.com/259126/PD/sony-xperia-j-white-mobile-phones.htm', 'Delivery in 2 days.', 1, 'sony xperia j white mobile ph', '2013-01-23 19:38:04'),
(13, 24, 32503, 'http://www.yebhi.com/61692/PD/Nikon-DSLR-Camera-D5100-With-AF-S-18-55mm-VR-Lens-Kit-Black.htm', 'Delivery in 2 days.', 1, 'Nikon DSLR Camera D5100 With ', '2013-01-23 19:45:04'),
(13, 35, 2449, 'http://www.yebhi.com//144645/PD/nokia-asha-302-p-red-6919-mobile-phones.htm', 'Delivery in 2 days.', 1, 'Â ', '2013-01-30 13:51:59'),
(13, 36, 2449, 'http://www.yebhi.com//144637/PD/nokia-asha-202-s-white-4149-mobile-phones.htm', 'Delivery in 2 days.', 1, 'Â ', '2013-01-30 13:53:04'),
(13, 37, 3175, 'http://www.yebhi.com/120875/PD/Animal-Men-Women-Sunglasses-Aerial-204.htm', 'Delivery in 2 days.', 1, 'Animal Men Women Sunglasses A', '2013-02-10 23:58:18'),
(13, 39, 2449, 'http://www.yebhi.com//90311/PD/blackberry-bold-4-9900-black-mobile-phones.htm', 'Delivery in 2 days.', 1, 'Â ', '2013-02-12 22:56:48'),
(13, 40, 5299, 'http://www.yebhi.com/57194/PD/samsung-s3850-corby-ii-silver-grey-mobile-phones.htm', 'Delivery in 2 days.', 1, 'samsung s3850 corby ii silver', '2013-02-19 17:34:05'),
(13, 41, 560, 'http://www.yebhi.com/82625/PD/CaseMate-Cases-and-Pouches-Nokia-E71-Barely-There-Mirror-Silver.htm', 'Delivery in 2 days.', 1, 'CaseMate Cases and Pouches No', '2013-02-19 17:34:43'),
(13, 42, 560, 'http://www.yebhi.com/82625/PD/CaseMate-Cases-and-Pouches-Nokia-E71-Barely-There-Mirror-Silver.htm', 'Delivery in 2 days.', 1, 'CaseMate Cases and Pouches No', '2013-02-19 17:35:17'),
(13, 43, 5299, 'http://www.yebhi.com/57194/PD/samsung-s3850-corby-ii-silver-grey-mobile-phones.htm', 'Delivery in 2 days.', 1, 'samsung s3850 corby ii silver', '2013-02-21 16:35:09'),
(13, 46, 2449, 'http://www.yebhi.com//175193/PD/nokia-lumia-610-white-mobile-phones.htm', 'Delivery in 2 days.', 1, 'Â ', '2013-02-22 16:36:42'),
(13, 48, 16999, 'http://www.yebhi.com/59177/PD/samsung-i9003-galaxy-sl-black-mobile-phones.htm', 'Delivery in 2 days.', 1, 'samsung i9003 galaxy sl black', '2013-02-24 10:53:17'),
(13, 49, 2449, 'http://www.yebhi.com//258643/PD/apple-ipad-4-wifi-and-cellular-16gb-white-tablets.htm', 'Delivery in 2 days.', 1, 'Â ', '2013-02-24 10:57:30'),
(13, 50, 2449, 'http://www.yebhi.com//257419/PD/apple-iphone-4-8gb-black-mobile-phones.htm', 'Delivery in 2 days.', 1, 'Â ', '2013-02-24 10:58:23'),
(13, 51, 2449, 'http://www.yebhi.com//248141/PD/apple-iphone-5-16gb-black-mobile-phones.htm', 'Delivery in 2 days.', 1, 'Â ', '2013-02-24 13:13:23'),
(13, 55, 2449, 'http://www.yebhi.com//105713/PD/nokia-lumia-710-black-mobile-phones.htm', 'Delivery in 2 days.', 1, 'Â ', '2013-02-28 02:05:13'),
(13, 56, 43499, 'http://www.yebhi.com/270219/PD/blackberry-z10-black-mobile-phone.htm', 'Delivery in 2 days.', 1, 'blackberry z10 black mobile p', '2013-02-28 02:32:46'),
(13, 72, 130, 'http://www.yebhi.com/70904/PD/Amzer-Screen-Protectors-for-Galaxy-S.htm', 'Delivery in 2 days.', 1, 'Amzer Screen Protectors for G', '2013-03-17 20:37:18'),
(13, 73, 206, 'http://www.yebhi.com/144562/PD/amzer-silicone-skin-jelly-case---black-for-samsung-galaxy-s-iii-gt-i9300.htm', 'Delivery in 2 days.', 1, 'amzer silicone skin jelly cas', '2013-03-19 14:59:56'),
(13, 78, 20899, 'http://www.yebhi.com/265780/PD/samsung-galaxy-grand-i-9082-elegant-white-mobile-phones.htm', 'Delivery in 2 days.', 1, 'samsung galaxy grand i 9082 e', '2013-03-19 19:06:25'),
(13, 80, 37999, 'http://www.yebhi.com/276019/PD/sony-xperia-z-black-mobile-phones.htm', 'Delivery in 2 days.', 1, 'sony xperia z black mobile ph', '2013-03-21 16:44:55'),
(13, 81, 279, 'http://www.yebhi.com/70885/PD/Amzer-Cases-and-Pouches-Hot-Pink-CrystalCase-For-Xperia-Play.htm', 'Delivery in 2 days.', 1, 'Amzer Cases and Pouches Hot P', '2013-03-21 16:51:04'),
(13, 83, 2099, 'http://www.yebhi.com/64329/PD/Levis-Men-Jeans-54030013-Blue.htm', 'Delivery in 2 days.', 1, 'Levis Men Jeans 54030013 Blue', '2013-03-21 17:03:44'),
(13, 84, 4599, 'http://www.yebhi.com/175300/PD/puma-men-black-boots.htm', 'Delivery in 2 days.', 1, 'puma men black boots', '2013-03-21 17:06:42'),
(13, 85, 3799, 'http://www.yebhi.com/269994/PD/samsung-rex-60-c3312r-white-tablets.htm', 'Delivery in 2 days.', 1, 'samsung rex 60 c3312r white t', '2013-03-21 17:12:06'),
(13, 47, 2449, 'http://www.yebhi.com//262385/PD/nokia-lumia-920-black-mobile-phones.htm', 'Delivery in 2 days.', 1, 'Â ', '2013-07-03 19:08:28'),
(13, 92, 2449, 'http://www.yebhi.com//144637/PD/nokia-asha-202-s-white-4149-mobile-phones.htm', 'Delivery in 2 days.', 1, 'Â ', '2013-07-04 02:48:43'),
(13, 93, 2449, 'http://www.yebhi.com//323512/PD/nokia-black-nokia-109-mobile-phones.htm', 'Delivery in 2 days.', 1, 'Â ', '2013-07-04 05:25:24'),
(13, 94, 2449, 'http://www.yebhi.com//265474/PD/nokia-black-nokia-114-mobile-phones.htm', 'Delivery in 2 days.', 1, 'Â ', '2013-07-04 05:28:04'),
(13, 96, 2449, 'http://www.yebhi.com//258643/PD/apple-ipad-4-wifi-and-cellular-16gb-white-tablets.htm', 'Delivery in 2 days.', 1, 'Â ', '2013-07-04 16:06:12'),
(13, 86, 2449, 'http://www.yebhi.com//311168/PD/micromax-canvas-a116-hd-black-mobile-phones.htm', 'Delivery in 2 days.', 1, 'Â ', '2013-07-04 19:13:14');

-- --------------------------------------------------------

--
-- Table structure for table `zansaar`
--

CREATE TABLE IF NOT EXISTS `zansaar` (
  `WebsiteID` int(10) NOT NULL,
  `ProductId` int(10) NOT NULL,
  `Price` int(10) NOT NULL,
  `Link` text COLLATE utf8_unicode_ci NOT NULL,
  `DeliveryTime` text COLLATE utf8_unicode_ci NOT NULL,
  `EMI` int(1) NOT NULL DEFAULT '0',
  `Title` text COLLATE utf8_unicode_ci NOT NULL,
  `Time` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `zansaar`
--

INSERT INTO `zansaar` (`WebsiteID`, `ProductId`, `Price`, `Link`, `DeliveryTime`, `EMI`, `Title`, `Time`) VALUES
(60, 1, 2856, 'http://www.zansaar.com/samsung-galaxy-s-iii-deluxe-desktop-dock-and-cradle-p-SALHU1385', '3-5 Working Days.', 0, 'Samsung Galaxy S III Deluxe Desktop Dock and Cradle', '2013-01-18 16:54:07'),
(60, 4, 3999, 'http://www.zansaar.com/modern-white-chrome-table-lam-p-SHALSJBS6', '3-5 Working Days.', 0, 'Modern White & Chrome Table Lamp', '2013-01-18 20:24:46'),
(60, 0, 3999, 'http://www.zansaar.com/modern-white-chrome-table-lam-p-SHALSJBS6', '3-5 Working Days.', 0, 'Modern White & Chrome Table Lamp', '2013-01-18 20:28:53'),
(60, 6, 3999, 'http://www.zansaar.com/modern-white-chrome-table-lam-p-SHALSJBS6', '3-5 Working Days.', 0, 'Modern White & Chrome Table Lamp', '2013-01-18 20:29:18'),
(60, 9, 4338, 'http://www.zansaar.com/koss-portapro-headphones-with-case-p-SALEO1312', '3-5 Working Days.', 0, 'Koss PortaPro Headphones with Case', '2013-01-18 21:16:12'),
(60, 10, 793, 'http://www.zansaar.com/art-craft-frosty-ice-cream-cup-305-ml-6-piece-set-p-BOHZXTO57', '3-5 Working Days.', 0, 'Art & Craft Frosty Ice Cream Cup 305 ml 6-Piece Set ', '2013-01-19 01:05:51'),
(60, 11, 1440, 'http://www.zansaar.com/prestige-deluxe-plus-aluminium-pressure-handi-baby-17-cm-dia-p-JOILKRFZ6', '3-5 Working Days.', 0, ' Prestige Deluxe Plus Aluminium Pressure Handi Baby 17 cm Dia', '2013-01-19 15:32:41'),
(60, 12, 3346, 'http://www.zansaar.com/samsung-galaxy-note-desktop-dock-kit-cradle-black-p-SALPD1380', '3-5 Working Days.', 0, 'Samsung Galaxy Note Desktop Dock Kit - Cradle - Black', '2013-01-19 15:34:18'),
(60, 13, 3168, 'http://www.zansaar.com/ezopower-sync-transfer-usb-dual-dock-cradle-desktop-charger-for-s-p-SALRH1369', '3-5 Working Days.', 0, 'EZOPower Sync Transfer USB Dual Dock Cradle Desktop Charger for Samsung Galaxy S3', '2013-01-23 19:22:56'),
(60, 14, 305, 'http://www.zansaar.com/delouis-balsamic-apple-mustard-100-gm-p-CHEJOKO41', '3-5 Working Days.', 0, 'Delouis Balsamic Apple Mustard 100 gm', '2013-01-23 19:24:52'),
(60, 15, 445, 'http://www.zansaar.com/clear-rectangular-food-storage-jar-800-ml-p-NAIAJU148', '3-5 Working Days.', 0, 'Clear Rectangular Food Storage Jar 800 ml', '2013-01-23 19:27:48'),
(60, 16, 2350, 'http://www.zansaar.com/philips-wall-lamp-27-cm-l-p-PHIPX8KT1', '3-5 Working Days.', 0, 'Philips Wall Lamp 27 cm L', '2013-01-23 19:30:07'),
(60, 17, 4831, 'http://www.zansaar.com/logitech-wireless-speaker-adapter-for-bluetooth-audio-devices-p-SALUH1314', '3-5 Working Days.', 0, 'Logitech Wireless Speaker Adapter for Bluetooth Audio Devices', '2013-01-23 19:31:21'),
(60, 18, 2640, 'http://www.zansaar.com/deluxe-2nd-battery-charger-and-data-sync-cradle-desktop-dock-stat-p-SALBH1381', '3-5 Working Days.', 0, 'Deluxe 2nd Battery Charger and Data Sync Cradle/Desktop Dock Station for Samsung Galaxy Note', '2013-01-23 19:33:14'),
(60, 19, 2851, 'http://www.zansaar.com/samsung-galaxy-s-iii-deluxe-desktop-dock-and-cradle-p-SALHU1385', '3-5 Working Days.', 0, 'Samsung Galaxy S III Deluxe Desktop Dock and Cradle', '2013-01-23 19:36:46'),
(60, 21, 3493, 'http://www.zansaar.com/picnic-at-ascot-london-2-bottle-tote-and-cheese-set-p-SALUPB297', '3-5 Working Days.', 0, 'Picnic at Ascot London 2 Bottle Tote and Cheese Set', '2013-01-23 19:40:16'),
(60, 23, 379, 'http://www.zansaar.com/leaves-coir-door-mat-40-x-60-cm-p-DCI8F5LW4', '3-5 Working Days.', 0, 'Leaves Coir Door Mat 40 x 60 cm ', '2013-01-23 19:44:22'),
(60, 26, 500, 'http://www.zansaar.com/happily-unmarried-nri-mug-pen-holder-p-HAPBLRB68', '3-5 Working Days.', 0, 'Happily Unmarried NRI Mug Pen Holder', '2013-01-23 21:46:05'),
(60, 27, 170, 'http://www.zansaar.com/happily-unmarried-men-are-dicey-dice-p-HAPWQW146', '3-5 Working Days.', 0, 'Happily Unmarried Men Are Dicey Dice', '2013-01-23 22:15:52'),
(60, 28, 770, 'http://www.zansaar.com/monin-raspberry-tea-700-ml-p-GOUG7S419', '3-5 Working Days.', 0, 'Monin Raspberry Tea 700 ml', '2013-01-23 22:17:13'),
(60, 29, 995, 'http://www.zansaar.com/white-ice-cream-bowls-6-piece-set-p-CARIDQO68', '3-5 Working Days.', 0, 'White Ice Cream Bowls 6-Piece Set', '2013-01-23 22:27:25'),
(60, 30, 1549, 'http://www.zansaar.com/messermeister-pro-touch-julienne-cutter-p-20NTTRU28', '3-5 Working Days.', 0, 'Messermeister Pro-Touch Julienne Cutter', '2013-01-23 22:31:58'),
(60, 31, 1549, 'http://www.zansaar.com/messermeister-pro-touch-julienne-cutter-p-20NTTRU28', '3-5 Working Days.', 0, 'Messermeister Pro-Touch Julienne Cutter', '2013-01-23 22:36:43'),
(60, 32, 500, 'http://www.zansaar.com/happily-unmarried-nri-mug-pen-holder-p-HAPBLRB68', '3-5 Working Days.', 0, 'Happily Unmarried NRI Mug Pen Holder', '2013-01-28 19:32:56'),
(60, 33, 500, 'http://www.zansaar.com/happily-unmarried-nri-mug-pen-holder-p-HAPBLRB68', '3-5 Working Days.', 0, 'Happily Unmarried NRI Mug Pen Holder', '2013-01-28 19:39:58'),
(60, 34, 465, 'http://www.zansaar.com/glasslock-square-food-container-900-ml-p-PRENUU682', '3-5 Working Days.', 0, 'Glasslock Square Food Container 900 ml', '2013-01-30 13:49:40'),
(60, 36, 4296, 'http://www.zansaar.com/koss-portapro-headphones-with-case-p-SALEO1312', '3-5 Working Days.', 0, 'Koss PortaPro Headphones with Case', '2013-01-30 13:53:10');

-- --------------------------------------------------------

--
-- Table structure for table `zoomin`
--

CREATE TABLE IF NOT EXISTS `zoomin` (
  `WebsiteID` int(10) NOT NULL,
  `ProductId` int(10) NOT NULL,
  `Price` int(10) NOT NULL,
  `Link` text NOT NULL,
  `DeliveryTime` text NOT NULL,
  `EMI` int(1) NOT NULL DEFAULT '0',
  `Title` text NOT NULL,
  `Time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `zovi`
--

CREATE TABLE IF NOT EXISTS `zovi` (
  `WebsiteID` int(10) NOT NULL,
  `ProductId` int(10) NOT NULL,
  `Price` int(10) NOT NULL,
  `Link` text NOT NULL,
  `DeliveryTime` text NOT NULL,
  `EMI` int(1) NOT NULL DEFAULT '1',
  `Title` text NOT NULL,
  `Time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
