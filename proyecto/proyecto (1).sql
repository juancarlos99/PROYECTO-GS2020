-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-06-2020 a las 21:47:11
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `proyecto`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedidos`
--

CREATE TABLE `pedidos` (
  `ID` int(11) NOT NULL,
  `ID_user` int(11) NOT NULL,
  `Usuario` varchar(255) NOT NULL,
  `Dirección` varchar(255) NOT NULL,
  `Telefono` int(9) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `pedidos`
--

INSERT INTO `pedidos` (`ID`, `ID_user`, `Usuario`, `Dirección`, `Telefono`, `Email`, `Fecha`) VALUES
(9, 31, 'julian', 'Calle Plus ultra', 634914465, 'julian@gmail.com', '2020-06-15 05:02:33');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `Nombre` varchar(255) NOT NULL,
  `Precio` decimal(10,2) NOT NULL,
  `Descripcion` text NOT NULL,
  `Componente` varchar(255) NOT NULL,
  `Imagen` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `Nombre`, `Precio`, `Descripcion`, `Componente`, `Imagen`) VALUES
(1, 'PcCom Silver', '690.56', 'AMD Ryzen 5 2600/16GB/240GB SSD+1TB/GTX1650', 'Pc', 'https://img.pccomponentes.com/articles/22/223685/223685-002.jpg'),
(3, 'PcCom Bronze', '631.00', 'AMD Ryzen 5 1600AF/16GB/1TB+240GB SSD/GTX 1650', 'Pc', 'https://img.pccomponentes.com/articles/25/259130/pccom-bronze-amd-ryzen-5-1600-8gb-1tb-240gb-ssd-gtx-1650-cf8668d9-1807-4e55-acb1-3011b8ce92ab.jpg'),
(4, 'MSI GF75 Thin', '1209.00', '9SC-277XES Intel Core i7-9750H/16GB/512GB SSD/GTX1650/17.3\"', 'Portatil', 'https://img.pccomponentes.com/articles/24/243235/7.jpg'),
(5, 'Asus VivoBook', '549.00', 'D509DA-EJ098 AMD Ryzen 7 3700U/8GB/512GB SSD/15.6\"', 'Portatil', 'https://img.pccomponentes.com/articles/26/261637/asus-vivobook-d509da-ej098-amd-ryzen-7-3700u-8gb-512gb-ssd-156.jpg'),
(6, 'Newskill Suiko', '70.45', 'Teclado Mecánico Gaming Full RGB Switch Kailh Red', 'Teclado', 'https://img.pccomponentes.com/articles/24/249963/suiko.jpg'),
(7, 'Krom Kernel', '52.00', 'Teclado Mecánico Gaming RGB', 'Teclado', 'https://img.pccomponentes.com/articles/14/143877/c2.jpg'),
(8, 'BenQ ZOWIE XL2411P', '199.99', '24 pulgadas LED 144Hz e-Sports', 'Monitor', 'https://img.pccomponentes.com/articles/14/147466/1502098548.jpg'),
(9, 'BenQ GW2480E', '109.00', '23.8 pulgadas LED IPS FullHD', 'Monitor', 'https://img.pccomponentes.com/articles/17/177977/1.jpg'),
(11, 'Logitech M185', '19.00', 'Ratón Inalámbrico 1000DPI Rojo', 'Raton', 'https://img.pccomponentes.com/articles/20/209263/1.jpg'),
(12, 'Razer Basilisk', '65.00', 'Ratón Gaming 16000 DPI Negro', 'Raton', 'https://img.pccomponentes.com/articles/14/144423/rzrbasilisk-01.jpg'),
(13, 'Ozone Rage X40', '36.00', 'Auriculares Gaming 7.1 Negros', 'Auriculares', 'https://img.pccomponentes.com/articles/21/219819/a8.jpg'),
(14, 'Astro Gaming Auriculares', '289.00', 'Inalámbricos A50 + Estación Base PS4/PC/Mac', 'Auriculares', 'https://img.pccomponentes.com/articles/23/237541/1.jpg'),
(15, 'Tempest Mousepad', '24.00', 'Alfombrilla Gaming RGB', 'Alfombrilla', 'https://img.pccomponentes.com/articles/21/210869/tp-rgb-mousepad-render-1.jpg'),
(16, 'Newskill Atami Speed', '10.75', 'Alfombrilla Gaming Grande', 'Alfombrilla', 'https://img.pccomponentes.com/articles/8/87821/newskill-atami-speed-alfombrilla-gaming-pequena.jpg'),
(17, 'Nintendo Switch', '325.01', 'Azul Neón/Rojo Neón V2', 'Consola', 'https://img.pccomponentes.com/articles/23/233482/1.jpg'),
(18, 'MSI Trident X Plus 9SF-087EU', '3399.00', 'Intel Core i9-9900K/32GB/1TB+512GB SSD/RTX 2080Ti', 'pc', 'https://img.pccomponentes.com/articles/18/187613/1.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbldetalleventa`
--

CREATE TABLE `tbldetalleventa` (
  `ID` int(11) NOT NULL,
  `IDVENTA` int(11) NOT NULL,
  `IDPRODUCTO` int(11) NOT NULL,
  `PRECIO` decimal(20,2) NOT NULL,
  `CANTIDAD` int(11) NOT NULL,
  `DESCARGADO` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbldetalleventa`
--

INSERT INTO `tbldetalleventa` (`ID`, `IDVENTA`, `IDPRODUCTO`, `PRECIO`, `CANTIDAD`, `DESCARGADO`) VALUES
(90, 46, 13, '154.00', 1, 0),
(91, 47, 3, '631.00', 1, 0),
(92, 48, 3, '631.00', 1, 0),
(93, 49, 3, '631.00', 1, 0),
(94, 50, 3, '631.00', 1, 0),
(95, 51, 3, '631.00', 1, 0),
(96, 52, 3, '631.00', 1, 0),
(97, 53, 3, '631.00', 1, 0),
(98, 54, 3, '631.00', 1, 0),
(99, 55, 3, '631.00', 1, 0),
(100, 56, 3, '631.00', 1, 0),
(101, 57, 3, '631.00', 1, 0),
(102, 58, 3, '631.00', 1, 0),
(103, 59, 3, '631.00', 1, 0),
(104, 60, 3, '631.00', 1, 0),
(105, 61, 3, '631.00', 1, 0),
(106, 62, 3, '631.00', 1, 0),
(107, 63, 3, '631.00', 1, 0),
(108, 64, 3, '631.00', 1, 0),
(109, 65, 3, '631.00', 1, 0),
(110, 66, 3, '631.00', 1, 0),
(111, 67, 3, '631.00', 1, 0),
(112, 68, 3, '631.00', 1, 0),
(113, 69, 3, '631.00', 1, 0),
(114, 70, 3, '631.00', 1, 0),
(115, 71, 3, '631.00', 1, 0),
(116, 72, 3, '631.00', 1, 0),
(117, 73, 3, '631.00', 1, 0),
(118, 74, 3, '631.00', 1, 0),
(119, 75, 3, '631.00', 1, 0),
(120, 76, 3, '631.00', 1, 0),
(121, 77, 3, '631.00', 1, 0),
(122, 78, 3, '631.00', 1, 0),
(123, 79, 3, '631.00', 1, 0),
(124, 80, 3, '631.00', 1, 0),
(125, 81, 3, '631.00', 1, 0),
(126, 82, 3, '631.00', 1, 0),
(127, 83, 3, '631.00', 1, 0),
(128, 84, 3, '631.00', 1, 0),
(129, 85, 3, '631.00', 1, 0),
(130, 86, 3, '631.00', 1, 0),
(131, 87, 3, '631.00', 1, 0),
(132, 88, 3, '631.00', 1, 0),
(133, 89, 3, '631.00', 1, 0),
(134, 90, 3, '631.00', 1, 0),
(135, 91, 3, '631.00', 1, 0),
(136, 92, 3, '631.00', 1, 0),
(137, 93, 3, '631.00', 1, 0),
(138, 94, 3, '631.00', 1, 0),
(139, 95, 3, '631.00', 1, 0),
(140, 96, 3, '631.00', 1, 0),
(141, 97, 3, '631.00', 1, 0),
(142, 98, 3, '631.00', 1, 0),
(143, 99, 3, '631.00', 1, 0),
(144, 100, 3, '631.00', 1, 0),
(145, 101, 3, '631.00', 1, 0),
(146, 102, 3, '631.00', 1, 0),
(147, 103, 3, '631.00', 1, 0),
(150, 105, 3, '631.00', 1, 0),
(151, 105, 4, '1209.00', 1, 0),
(152, 106, 4, '1209.00', 1, 0),
(153, 106, 1, '677.56', 1, 0),
(154, 107, 4, '1209.00', 1, 0),
(155, 107, 1, '677.56', 1, 0),
(156, 107, 3, '631.00', 1, 0),
(157, 108, 4, '1209.00', 1, 0),
(158, 108, 3, '631.00', 1, 0),
(159, 109, 4, '1209.00', 1, 0),
(160, 109, 3, '631.00', 1, 0),
(161, 110, 4, '1209.00', 1, 0),
(162, 110, 3, '631.00', 1, 0),
(163, 111, 4, '1209.00', 1, 0),
(164, 111, 3, '631.00', 1, 0),
(165, 112, 1, '677.56', 1, 0),
(166, 113, 4, '1209.00', 1, 0),
(167, 114, 4, '1209.00', 1, 0),
(168, 115, 4, '1209.00', 1, 0),
(169, 116, 7, '52.00', 1, 0),
(170, 117, 7, '52.00', 1, 0),
(171, 117, 6, '70.45', 1, 0),
(172, 118, 1, '677.56', 1, 0),
(173, 119, 1, '677.56', 1, 0),
(174, 120, 1, '677.56', 1, 0),
(175, 121, 1, '677.56', 1, 0),
(176, 122, 1, '677.56', 1, 0),
(177, 123, 1, '677.56', 1, 0),
(178, 124, 1, '677.56', 1, 0),
(179, 125, 1, '677.56', 1, 0),
(180, 126, 1, '677.56', 1, 0),
(181, 127, 1, '677.56', 1, 0),
(182, 128, 4, '1209.00', 1, 0),
(183, 128, 3, '631.00', 1, 0),
(184, 129, 4, '1209.00', 1, 0),
(185, 129, 3, '631.00', 1, 0),
(186, 129, 1, '690.56', 1, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblventas`
--

CREATE TABLE `tblventas` (
  `ID` int(11) NOT NULL,
  `ClaveTransaccion` varchar(250) NOT NULL,
  `PaypalDatos` text NOT NULL,
  `Fecha` datetime NOT NULL,
  `Correo` varchar(5000) NOT NULL,
  `Total` decimal(60,2) NOT NULL,
  `status` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tblventas`
--

INSERT INTO `tblventas` (`ID`, `ClaveTransaccion`, `PaypalDatos`, `Fecha`, `Correo`, `Total`, `status`) VALUES
(46, 'dka5hb4de1pio5mok6j2i018hi', '', '2020-06-06 12:57:18', 'Jqwe@mail', '631.00', 'pendiente'),
(47, 'dka5hb4de1pio5mok6j2i018hi', '', '2020-06-06 12:57:18', 'Jqwe@mail', '631.00', 'pendiente'),
(48, 'dka5hb4de1pio5mok6j2i018hi', '', '2020-06-06 12:57:18', 'Jqwe@mail', '631.00', 'pendiente'),
(49, 'dka5hb4de1pio5mok6j2i018hi', '', '2020-06-06 12:57:18', 'Jqwe@mail', '631.00', 'pendiente'),
(50, 'dka5hb4de1pio5mok6j2i018hi', '', '2020-06-06 12:57:18', 'Jqwe@mail', '631.00', 'pendiente'),
(51, 'dka5hb4de1pio5mok6j2i018hi', '', '2020-06-06 12:57:18', 'Jqwe@mail', '631.00', 'pendiente'),
(52, 'dka5hb4de1pio5mok6j2i018hi', '', '2020-06-06 12:57:18', 'Jqwe@mail', '631.00', 'pendiente'),
(53, 'dka5hb4de1pio5mok6j2i018hi', '', '2020-06-06 12:57:18', 'Jqwe@mail', '631.00', 'pendiente'),
(54, 'dka5hb4de1pio5mok6j2i018hi', '', '2020-06-06 12:57:18', 'Jqwe@mail', '631.00', 'pendiente'),
(55, 'dka5hb4de1pio5mok6j2i018hi', '', '2020-06-06 12:57:18', 'Jqwe@mail', '631.00', 'pendiente'),
(56, 'dka5hb4de1pio5mok6j2i018hi', '', '2020-06-06 12:57:18', 'Jqwe@mail', '631.00', 'pendiente'),
(57, 'dka5hb4de1pio5mok6j2i018hi', '', '2020-06-06 12:57:18', 'Jqwe@mail', '631.00', 'pendiente'),
(58, 'dka5hb4de1pio5mok6j2i018hi', '', '2020-06-06 12:57:18', 'Jqwe@mail', '631.00', 'pendiente'),
(59, 'dka5hb4de1pio5mok6j2i018hi', '', '2020-06-06 12:57:18', 'Jqwe@mail', '631.00', 'pendiente'),
(60, 'dka5hb4de1pio5mok6j2i018hi', '', '2020-06-06 12:57:18', 'Jqwe@mail', '631.00', 'pendiente'),
(61, 'dka5hb4de1pio5mok6j2i018hi', '', '2020-06-06 12:57:18', 'Jqwe@mail', '631.00', 'pendiente'),
(62, 'dka5hb4de1pio5mok6j2i018hi', '', '2020-06-06 12:57:18', 'Jqwe@mail', '631.00', 'pendiente'),
(63, 'dka5hb4de1pio5mok6j2i018hi', '', '2020-06-06 12:57:18', 'Jqwe@mail', '631.00', 'pendiente'),
(64, 'dka5hb4de1pio5mok6j2i018hi', '', '2020-06-06 12:57:18', 'Jqwe@mail', '631.00', 'pendiente'),
(65, 'dka5hb4de1pio5mok6j2i018hi', '', '2020-06-06 12:57:18', 'Jqwe@mail', '631.00', 'pendiente'),
(66, 'dka5hb4de1pio5mok6j2i018hi', '', '2020-06-06 12:57:18', 'Jqwe@mail', '631.00', 'pendiente'),
(67, 'dka5hb4de1pio5mok6j2i018hi', '', '2020-06-06 12:57:18', 'Jqwe@mail', '631.00', 'pendiente'),
(68, 'dka5hb4de1pio5mok6j2i018hi', '', '2020-06-06 12:57:18', 'Jqwe@mail', '631.00', 'pendiente'),
(69, 'dka5hb4de1pio5mok6j2i018hi', '', '2020-06-06 12:57:18', 'Jqwe@mail', '631.00', 'pendiente'),
(70, 'dka5hb4de1pio5mok6j2i018hi', '', '2020-06-06 12:57:18', 'Jqwe@mail', '631.00', 'pendiente'),
(71, 'dka5hb4de1pio5mok6j2i018hi', '', '2020-06-06 12:57:18', 'Jqwe@mail', '631.00', 'pendiente'),
(72, 'dka5hb4de1pio5mok6j2i018hi', '', '2020-06-06 12:57:18', 'Jqwe@mail', '631.00', 'pendiente'),
(73, 'dka5hb4de1pio5mok6j2i018hi', '', '2020-06-06 12:57:18', 'Jqwe@mail', '631.00', 'pendiente'),
(74, 'dka5hb4de1pio5mok6j2i018hi', '', '2020-06-06 12:57:18', 'Jqwe@mail', '631.00', 'pendiente'),
(75, 'dka5hb4de1pio5mok6j2i018hi', '', '2020-06-06 12:57:18', 'Jqwe@mail', '631.00', 'pendiente'),
(76, 'dka5hb4de1pio5mok6j2i018hi', '', '2020-06-06 12:57:18', 'Jqwe@mail', '631.00', 'pendiente'),
(77, 'dka5hb4de1pio5mok6j2i018hi', '', '2020-06-06 12:57:18', 'Jqwe@mail', '631.00', 'pendiente'),
(78, 'dka5hb4de1pio5mok6j2i018hi', '', '2020-06-06 12:57:18', 'Jqwe@mail', '631.00', 'pendiente'),
(79, 'dka5hb4de1pio5mok6j2i018hi', '', '2020-06-06 12:57:18', 'Jqwe@mail', '631.00', 'pendiente'),
(80, 'dka5hb4de1pio5mok6j2i018hi', '', '2020-06-06 12:57:18', 'Jqwe@mail', '631.00', 'pendiente'),
(81, 'dka5hb4de1pio5mok6j2i018hi', '', '2020-06-06 12:57:18', 'Jqwe@mail', '631.00', 'pendiente'),
(82, 'dka5hb4de1pio5mok6j2i018hi', '', '2020-06-06 12:57:18', 'Jqwe@mail', '631.00', 'pendiente'),
(83, 'dka5hb4de1pio5mok6j2i018hi', '', '2020-06-06 12:57:18', 'Jqwe@mail', '631.00', 'pendiente'),
(84, 'dka5hb4de1pio5mok6j2i018hi', '', '2020-06-06 12:57:18', 'Jqwe@mail', '631.00', 'pendiente'),
(85, 'dka5hb4de1pio5mok6j2i018hi', '', '2020-06-06 12:57:18', 'Jqwe@mail', '631.00', 'pendiente'),
(86, 'dka5hb4de1pio5mok6j2i018hi', '', '2020-06-06 12:57:18', 'Jqwe@mail', '631.00', 'pendiente'),
(87, 'dka5hb4de1pio5mok6j2i018hi', '', '2020-06-06 12:57:18', 'Jqwe@mail', '631.00', 'pendiente'),
(88, 'dka5hb4de1pio5mok6j2i018hi', '', '2020-06-06 12:57:18', 'Jqwe@mail', '631.00', 'pendiente'),
(89, 'dka5hb4de1pio5mok6j2i018hi', '', '2020-06-06 12:57:18', 'Jqwe@mail', '631.00', 'pendiente'),
(90, 'dka5hb4de1pio5mok6j2i018hi', '', '2020-06-06 12:57:18', 'Jqwe@mail', '631.00', 'pendiente'),
(91, 'dka5hb4de1pio5mok6j2i018hi', '', '2020-06-06 12:57:18', 'Jqwe@mail', '631.00', 'pendiente'),
(92, 'dka5hb4de1pio5mok6j2i018hi', '', '2020-06-06 12:57:18', 'Jqwe@mail', '631.00', 'pendiente'),
(93, 'dka5hb4de1pio5mok6j2i018hi', '', '2020-06-06 12:57:18', 'Jqwe@mail', '631.00', 'pendiente'),
(94, 'dka5hb4de1pio5mok6j2i018hi', '', '2020-06-06 12:57:18', 'Jqwe@mail', '631.00', 'pendiente'),
(95, 'dka5hb4de1pio5mok6j2i018hi', '', '2020-06-06 12:57:18', 'Jqwe@mail', '631.00', 'pendiente'),
(96, 'dka5hb4de1pio5mok6j2i018hi', '', '2020-06-06 12:57:18', 'Jqwe@mail', '631.00', 'pendiente'),
(97, 'dka5hb4de1pio5mok6j2i018hi', '', '2020-06-06 12:57:18', 'Jqwe@mail', '631.00', 'pendiente'),
(98, 'dka5hb4de1pio5mok6j2i018hi', '', '2020-06-06 12:57:18', 'Jqwe@mail', '631.00', 'pendiente'),
(99, 'dka5hb4de1pio5mok6j2i018hi', '', '2020-06-06 12:57:18', 'Jqwe@mail', '631.00', 'pendiente'),
(100, 'dka5hb4de1pio5mok6j2i018hi', '', '2020-06-06 12:57:18', 'Jqwe@mail', '631.00', 'pendiente'),
(101, 'dka5hb4de1pio5mok6j2i018hi', '', '2020-06-06 12:57:18', 'Jqwe@mail', '631.00', 'pendiente'),
(102, 'dka5hb4de1pio5mok6j2i018hi', '', '2020-06-06 12:57:18', 'Jqwe@mail', '631.00', 'pendiente'),
(103, 'dka5hb4de1pio5mok6j2i018hi', '', '2020-06-06 12:57:18', 'Jqwe@mail', '631.00', 'pendiente'),
(105, 'dka5hb4de1pio5mok6j2i018hi', '{\"id\":\"PAYID-L3PF6NI6BP27486EC1942309\",\"intent\":\"sale\",\"state\":\"approved\",\"cart\":\"4C172764M8110421K\",\"payer\":{\"payment_method\":\"paypal\",\"status\":\"VERIFIED\",\"payer_info\":{\"email\":\"sb-a4yhr526201@personal.example.com\",\"first_name\":\"John\",\"last_name\":\"Doe\",\"payer_id\":\"5G2229GEVXCK6\",\"shipping_address\":{\"recipient_name\":\"John Doe\",\"line1\":\"calle Vilamar� 76993- 17469\",\"city\":\"Albacete\",\"state\":\"Albacete\",\"postal_code\":\"02001\",\"country_code\":\"ES\"},\"phone\":\"9065513197\",\"country_code\":\"ES\"}},\"transactions\":[{\"amount\":{\"total\":\"1840.00\",\"currency\":\"EUR\",\"details\":{\"subtotal\":\"1840.00\",\"shipping\":\"0.00\",\"insurance\":\"0.00\",\"handling_fee\":\"0.00\",\"shipping_discount\":\"0.00\"}},\"payee\":{\"merchant_id\":\"RSGQ3JN6CR6LQ\",\"email\":\"juancarlosjimenez@business.example.com\"},\"description\":\"Compra de productos a ComPC\",\"custom\":\"dka5hb4de1pio5mok6j2i018hi#sqJcLW2UscEulT5XezEJAA==\",\"item_list\":{\"shipping_address\":{\"recipient_name\":\"John Doe\",\"line1\":\"calle Vilamar� 76993- 17469\",\"city\":\"Albacete\",\"state\":\"Albacete\",\"postal_code\":\"02001\",\"country_code\":\"ES\"}},\"related_resources\":[{\"sale\":{\"id\":\"27N90541VL673181Y\",\"state\":\"completed\",\"amount\":{\"total\":\"1840.00\",\"currency\":\"EUR\",\"details\":{\"subtotal\":\"1840.00\",\"shipping\":\"0.00\",\"insurance\":\"0.00\",\"handling_fee\":\"0.00\",\"shipping_discount\":\"0.00\"}},\"payment_mode\":\"INSTANT_TRANSFER\",\"protection_eligibility\":\"ELIGIBLE\",\"protection_eligibility_type\":\"ITEM_NOT_RECEIVED_ELIGIBLE,UNAUTHORIZED_PAYMENT_ELIGIBLE\",\"transaction_fee\":{\"value\":\"62.91\",\"currency\":\"EUR\"},\"parent_payment\":\"PAYID-L3PF6NI6BP27486EC1942309\",\"create_time\":\"2020-06-08T15:54:41Z\",\"update_time\":\"2020-06-08T15:54:41Z\",\"links\":[{\"href\":\"https://api.sandbox.paypal.com/v1/payments/sale/27N90541VL673181Y\",\"rel\":\"self\",\"method\":\"GET\"},{\"href\":\"https://api.sandbox.paypal.com/v1/payments/sale/27N90541VL673181Y/refund\",\"rel\":\"refund\",\"method\":\"POST\"},{\"href\":\"https://api.sandbox.paypal.com/v1/payments/payment/PAYID-L3PF6NI6BP27486EC1942309\",\"rel\":\"parent_payment\",\"method\":\"GET\"}]}}]}],\"create_time\":\"2020-06-08T15:54:29Z\",\"update_time\":\"2020-06-08T15:54:41Z\",\"links\":[{\"href\":\"https://api.sandbox.paypal.com/v1/payments/payment/PAYID-L3PF6NI6BP27486EC1942309\",\"rel\":\"self\",\"method\":\"GET\"}]}', '2020-06-06 12:57:18', 'Jqwe@mail', '1840.00', 'completo'),
(106, 'dka5hb4de1pio5mok6j2i018hi', '{\"id\":\"PAYID-L3PGSUI73050266GN789732F\",\"intent\":\"sale\",\"state\":\"approved\",\"cart\":\"4M315626X3002094K\",\"payer\":{\"payment_method\":\"paypal\",\"status\":\"VERIFIED\",\"payer_info\":{\"email\":\"sb-a4yhr526201@personal.example.com\",\"first_name\":\"John\",\"last_name\":\"Doe\",\"payer_id\":\"5G2229GEVXCK6\",\"shipping_address\":{\"recipient_name\":\"John Doe\",\"line1\":\"calle Vilamar� 76993- 17469\",\"city\":\"Albacete\",\"state\":\"Albacete\",\"postal_code\":\"02001\",\"country_code\":\"ES\"},\"phone\":\"9065513197\",\"country_code\":\"ES\"}},\"transactions\":[{\"amount\":{\"total\":\"1886.56\",\"currency\":\"EUR\",\"details\":{\"subtotal\":\"1886.56\",\"shipping\":\"0.00\",\"insurance\":\"0.00\",\"handling_fee\":\"0.00\",\"shipping_discount\":\"0.00\"}},\"payee\":{\"merchant_id\":\"RSGQ3JN6CR6LQ\",\"email\":\"juancarlosjimenez@business.example.com\"},\"description\":\"Compra de productos a ComPC\",\"custom\":\"dka5hb4de1pio5mok6j2i018hi#Sf15LUZkPiYyN500FY+N/Q==\",\"item_list\":{\"shipping_address\":{\"recipient_name\":\"John Doe\",\"line1\":\"calle Vilamar� 76993- 17469\",\"city\":\"Albacete\",\"state\":\"Albacete\",\"postal_code\":\"02001\",\"country_code\":\"ES\"}},\"related_resources\":[{\"sale\":{\"id\":\"7CT68288N1544935U\",\"state\":\"completed\",\"amount\":{\"total\":\"1886.56\",\"currency\":\"EUR\",\"details\":{\"subtotal\":\"1886.56\",\"shipping\":\"0.00\",\"insurance\":\"0.00\",\"handling_fee\":\"0.00\",\"shipping_discount\":\"0.00\"}},\"payment_mode\":\"INSTANT_TRANSFER\",\"protection_eligibility\":\"ELIGIBLE\",\"protection_eligibility_type\":\"ITEM_NOT_RECEIVED_ELIGIBLE,UNAUTHORIZED_PAYMENT_ELIGIBLE\",\"transaction_fee\":{\"value\":\"64.49\",\"currency\":\"EUR\"},\"parent_payment\":\"PAYID-L3PGSUI73050266GN789732F\",\"create_time\":\"2020-06-08T16:37:54Z\",\"update_time\":\"2020-06-08T16:37:54Z\",\"links\":[{\"href\":\"https://api.sandbox.paypal.com/v1/payments/sale/7CT68288N1544935U\",\"rel\":\"self\",\"method\":\"GET\"},{\"href\":\"https://api.sandbox.paypal.com/v1/payments/sale/7CT68288N1544935U/refund\",\"rel\":\"refund\",\"method\":\"POST\"},{\"href\":\"https://api.sandbox.paypal.com/v1/payments/payment/PAYID-L3PGSUI73050266GN789732F\",\"rel\":\"parent_payment\",\"method\":\"GET\"}]}}]}],\"create_time\":\"2020-06-08T16:37:37Z\",\"update_time\":\"2020-06-08T16:37:54Z\",\"links\":[{\"href\":\"https://api.sandbox.paypal.com/v1/payments/payment/PAYID-L3PGSUI73050266GN789732F\",\"rel\":\"self\",\"method\":\"GET\"}]}', '2020-06-06 12:57:18', 'Jqwe@mail', '1886.56', 'completo'),
(107, 'dka5hb4de1pio5mok6j2i018hi', '{\"id\":\"PAYID-L3PGTYY6T7492671G5483902\",\"intent\":\"sale\",\"state\":\"approved\",\"cart\":\"46B85594UR143231N\",\"payer\":{\"payment_method\":\"paypal\",\"status\":\"VERIFIED\",\"payer_info\":{\"email\":\"sb-a4yhr526201@personal.example.com\",\"first_name\":\"John\",\"last_name\":\"Doe\",\"payer_id\":\"5G2229GEVXCK6\",\"shipping_address\":{\"recipient_name\":\"John Doe\",\"line1\":\"calle Vilamar� 76993- 17469\",\"city\":\"Albacete\",\"state\":\"Albacete\",\"postal_code\":\"02001\",\"country_code\":\"ES\"},\"phone\":\"9065513197\",\"country_code\":\"ES\"}},\"transactions\":[{\"amount\":{\"total\":\"2517.56\",\"currency\":\"EUR\",\"details\":{\"subtotal\":\"2517.56\",\"shipping\":\"0.00\",\"insurance\":\"0.00\",\"handling_fee\":\"0.00\",\"shipping_discount\":\"0.00\"}},\"payee\":{\"merchant_id\":\"RSGQ3JN6CR6LQ\",\"email\":\"juancarlosjimenez@business.example.com\"},\"description\":\"Compra de productos a ComPC\",\"custom\":\"dka5hb4de1pio5mok6j2i018hi#XS3wxvfZU1LU8eN0wXyD7A==\",\"item_list\":{\"shipping_address\":{\"recipient_name\":\"John Doe\",\"line1\":\"calle Vilamar� 76993- 17469\",\"city\":\"Albacete\",\"state\":\"Albacete\",\"postal_code\":\"02001\",\"country_code\":\"ES\"}},\"related_resources\":[{\"sale\":{\"id\":\"4SM16140MF943600Y\",\"state\":\"completed\",\"amount\":{\"total\":\"2517.56\",\"currency\":\"EUR\",\"details\":{\"subtotal\":\"2517.56\",\"shipping\":\"0.00\",\"insurance\":\"0.00\",\"handling_fee\":\"0.00\",\"shipping_discount\":\"0.00\"}},\"payment_mode\":\"INSTANT_TRANSFER\",\"protection_eligibility\":\"ELIGIBLE\",\"protection_eligibility_type\":\"ITEM_NOT_RECEIVED_ELIGIBLE,UNAUTHORIZED_PAYMENT_ELIGIBLE\",\"transaction_fee\":{\"value\":\"85.95\",\"currency\":\"EUR\"},\"parent_payment\":\"PAYID-L3PGTYY6T7492671G5483902\",\"create_time\":\"2020-06-08T16:40:13Z\",\"update_time\":\"2020-06-08T16:40:13Z\",\"links\":[{\"href\":\"https://api.sandbox.paypal.com/v1/payments/sale/4SM16140MF943600Y\",\"rel\":\"self\",\"method\":\"GET\"},{\"href\":\"https://api.sandbox.paypal.com/v1/payments/sale/4SM16140MF943600Y/refund\",\"rel\":\"refund\",\"method\":\"POST\"},{\"href\":\"https://api.sandbox.paypal.com/v1/payments/payment/PAYID-L3PGTYY6T7492671G5483902\",\"rel\":\"parent_payment\",\"method\":\"GET\"}]}}]}],\"create_time\":\"2020-06-08T16:40:03Z\",\"update_time\":\"2020-06-08T16:40:13Z\",\"links\":[{\"href\":\"https://api.sandbox.paypal.com/v1/payments/payment/PAYID-L3PGTYY6T7492671G5483902\",\"rel\":\"self\",\"method\":\"GET\"}]}', '2020-06-06 12:57:18', 'Jqwe@mail', '2517.56', 'completo'),
(108, 'dka5hb4de1pio5mok6j2i018hi', '{\"id\":\"PAYID-L3PGURA7PC31194LS877650A\",\"intent\":\"sale\",\"state\":\"approved\",\"cart\":\"2T839710XF994504F\",\"payer\":{\"payment_method\":\"paypal\",\"status\":\"VERIFIED\",\"payer_info\":{\"email\":\"sb-a4yhr526201@personal.example.com\",\"first_name\":\"John\",\"last_name\":\"Doe\",\"payer_id\":\"5G2229GEVXCK6\",\"shipping_address\":{\"recipient_name\":\"John Doe\",\"line1\":\"calle Vilamar� 76993- 17469\",\"city\":\"Albacete\",\"state\":\"Albacete\",\"postal_code\":\"02001\",\"country_code\":\"ES\"},\"phone\":\"9065513197\",\"country_code\":\"ES\"}},\"transactions\":[{\"amount\":{\"total\":\"1840.00\",\"currency\":\"EUR\",\"details\":{\"subtotal\":\"1840.00\",\"shipping\":\"0.00\",\"insurance\":\"0.00\",\"handling_fee\":\"0.00\",\"shipping_discount\":\"0.00\"}},\"payee\":{\"merchant_id\":\"RSGQ3JN6CR6LQ\",\"email\":\"juancarlosjimenez@business.example.com\"},\"description\":\"Compra de productos a ComPC\",\"custom\":\"dka5hb4de1pio5mok6j2i018hi#ahBrRz+FdPvuUODMqLBwzA==\",\"item_list\":{\"shipping_address\":{\"recipient_name\":\"John Doe\",\"line1\":\"calle Vilamar� 76993- 17469\",\"city\":\"Albacete\",\"state\":\"Albacete\",\"postal_code\":\"02001\",\"country_code\":\"ES\"}},\"related_resources\":[{\"sale\":{\"id\":\"69E35813RK5620508\",\"state\":\"completed\",\"amount\":{\"total\":\"1840.00\",\"currency\":\"EUR\",\"details\":{\"subtotal\":\"1840.00\",\"shipping\":\"0.00\",\"insurance\":\"0.00\",\"handling_fee\":\"0.00\",\"shipping_discount\":\"0.00\"}},\"payment_mode\":\"INSTANT_TRANSFER\",\"protection_eligibility\":\"ELIGIBLE\",\"protection_eligibility_type\":\"ITEM_NOT_RECEIVED_ELIGIBLE,UNAUTHORIZED_PAYMENT_ELIGIBLE\",\"transaction_fee\":{\"value\":\"62.91\",\"currency\":\"EUR\"},\"parent_payment\":\"PAYID-L3PGURA7PC31194LS877650A\",\"create_time\":\"2020-06-08T16:41:50Z\",\"update_time\":\"2020-06-08T16:41:50Z\",\"links\":[{\"href\":\"https://api.sandbox.paypal.com/v1/payments/sale/69E35813RK5620508\",\"rel\":\"self\",\"method\":\"GET\"},{\"href\":\"https://api.sandbox.paypal.com/v1/payments/sale/69E35813RK5620508/refund\",\"rel\":\"refund\",\"method\":\"POST\"},{\"href\":\"https://api.sandbox.paypal.com/v1/payments/payment/PAYID-L3PGURA7PC31194LS877650A\",\"rel\":\"parent_payment\",\"method\":\"GET\"}]}}]}],\"create_time\":\"2020-06-08T16:41:40Z\",\"update_time\":\"2020-06-08T16:41:50Z\",\"links\":[{\"href\":\"https://api.sandbox.paypal.com/v1/payments/payment/PAYID-L3PGURA7PC31194LS877650A\",\"rel\":\"self\",\"method\":\"GET\"}]}', '2020-06-06 12:57:18', 'Juan@gmail', '1840.00', 'completo'),
(109, 'dka5hb4de1pio5mok6j2i018hi', '{\"id\":\"PAYID-L3PG4WY6B241735WN4771030\",\"intent\":\"sale\",\"state\":\"approved\",\"cart\":\"1U664644LF121300W\",\"payer\":{\"payment_method\":\"paypal\",\"status\":\"VERIFIED\",\"payer_info\":{\"email\":\"sb-a4yhr526201@personal.example.com\",\"first_name\":\"John\",\"last_name\":\"Doe\",\"payer_id\":\"5G2229GEVXCK6\",\"shipping_address\":{\"recipient_name\":\"John Doe\",\"line1\":\"calle Vilamar� 76993- 17469\",\"city\":\"Albacete\",\"state\":\"Albacete\",\"postal_code\":\"02001\",\"country_code\":\"ES\"},\"phone\":\"9065513197\",\"country_code\":\"ES\"}},\"transactions\":[{\"amount\":{\"total\":\"1840.00\",\"currency\":\"EUR\",\"details\":{\"subtotal\":\"1840.00\",\"shipping\":\"0.00\",\"insurance\":\"0.00\",\"handling_fee\":\"0.00\",\"shipping_discount\":\"0.00\"}},\"payee\":{\"merchant_id\":\"RSGQ3JN6CR6LQ\",\"email\":\"juancarlosjimenez@business.example.com\"},\"description\":\"Compra de productos a ComPC\",\"custom\":\"dka5hb4de1pio5mok6j2i018hi#10uxWubICT69n10X7ndI8A==\",\"item_list\":{\"shipping_address\":{\"recipient_name\":\"John Doe\",\"line1\":\"calle Vilamar� 76993- 17469\",\"city\":\"Albacete\",\"state\":\"Albacete\",\"postal_code\":\"02001\",\"country_code\":\"ES\"}},\"related_resources\":[{\"sale\":{\"id\":\"19286849TV387321C\",\"state\":\"completed\",\"amount\":{\"total\":\"1840.00\",\"currency\":\"EUR\",\"details\":{\"subtotal\":\"1840.00\",\"shipping\":\"0.00\",\"insurance\":\"0.00\",\"handling_fee\":\"0.00\",\"shipping_discount\":\"0.00\"}},\"payment_mode\":\"INSTANT_TRANSFER\",\"protection_eligibility\":\"ELIGIBLE\",\"protection_eligibility_type\":\"ITEM_NOT_RECEIVED_ELIGIBLE,UNAUTHORIZED_PAYMENT_ELIGIBLE\",\"transaction_fee\":{\"value\":\"62.91\",\"currency\":\"EUR\"},\"parent_payment\":\"PAYID-L3PG4WY6B241735WN4771030\",\"create_time\":\"2020-06-08T16:59:27Z\",\"update_time\":\"2020-06-08T16:59:27Z\",\"links\":[{\"href\":\"https://api.sandbox.paypal.com/v1/payments/sale/19286849TV387321C\",\"rel\":\"self\",\"method\":\"GET\"},{\"href\":\"https://api.sandbox.paypal.com/v1/payments/sale/19286849TV387321C/refund\",\"rel\":\"refund\",\"method\":\"POST\"},{\"href\":\"https://api.sandbox.paypal.com/v1/payments/payment/PAYID-L3PG4WY6B241735WN4771030\",\"rel\":\"parent_payment\",\"method\":\"GET\"}]}}]}],\"create_time\":\"2020-06-08T16:59:07Z\",\"update_time\":\"2020-06-08T16:59:27Z\",\"links\":[{\"href\":\"https://api.sandbox.paypal.com/v1/payments/payment/PAYID-L3PG4WY6B241735WN4771030\",\"rel\":\"self\",\"method\":\"GET\"}]}', '2020-06-06 12:57:18', 'Juan@gmail', '1840.00', 'completo'),
(110, 'dka5hb4de1pio5mok6j2i018hi', '', '2020-06-06 12:57:18', 'Juan@gmail', '1840.00', 'pendiente'),
(111, 'dka5hb4de1pio5mok6j2i018hi', '', '2020-06-06 12:57:18', 'Juan@gmail', '1840.00', 'pendiente'),
(112, 'ebqig6dp60jc1es65dd44k4rcp', '', '2020-06-06 12:57:18', 'Juan@gmail', '677.56', 'pendiente'),
(113, 'oueqk318j9ricjlcfqssuogih2', '', '2020-06-06 12:57:18', 'Juan@gmail', '1209.00', 'pendiente'),
(114, 'oueqk318j9ricjlcfqssuogih2', '', '2020-06-06 12:57:18', 'Juan@gmail', '1209.00', 'pendiente'),
(115, 'oueqk318j9ricjlcfqssuogih2', '', '2020-06-06 12:57:18', 'Juan@gmail', '1209.00', 'pendiente'),
(116, 'u0fr5ercmt049ckmegm1tpbik5', '', '2020-06-06 12:57:18', 'Juan@gmail', '52.00', 'pendiente'),
(117, 'u0fr5ercmt049ckmegm1tpbik5', '{\"id\":\"PAYID-L3TFY6Y0V6093332N507404C\",\"intent\":\"sale\",\"state\":\"approved\",\"cart\":\"5RX8750662857581Y\",\"payer\":{\"payment_method\":\"paypal\",\"status\":\"VERIFIED\",\"payer_info\":{\"email\":\"sb-a4yhr526201@personal.example.com\",\"first_name\":\"John\",\"last_name\":\"Doe\",\"payer_id\":\"5G2229GEVXCK6\",\"shipping_address\":{\"recipient_name\":\"John Doe\",\"line1\":\"calle Vilamar� 76993- 17469\",\"city\":\"Albacete\",\"state\":\"Albacete\",\"postal_code\":\"02001\",\"country_code\":\"ES\"},\"phone\":\"9065513197\",\"country_code\":\"ES\"}},\"transactions\":[{\"amount\":{\"total\":\"122.45\",\"currency\":\"EUR\",\"details\":{\"subtotal\":\"122.45\",\"shipping\":\"0.00\",\"insurance\":\"0.00\",\"handling_fee\":\"0.00\",\"shipping_discount\":\"0.00\"}},\"payee\":{\"merchant_id\":\"RSGQ3JN6CR6LQ\",\"email\":\"juancarlosjimenez@business.example.com\"},\"description\":\"Compra de productos a ComPC\",\"custom\":\"u0fr5ercmt049ckmegm1tpbik5#0Ups8wMgwNbOYEQhn5i5ww==\",\"item_list\":{\"shipping_address\":{\"recipient_name\":\"John Doe\",\"line1\":\"calle Vilamar� 76993- 17469\",\"city\":\"Albacete\",\"state\":\"Albacete\",\"postal_code\":\"02001\",\"country_code\":\"ES\"}},\"related_resources\":[{\"sale\":{\"id\":\"4PL04606V5923392L\",\"state\":\"completed\",\"amount\":{\"total\":\"122.45\",\"currency\":\"EUR\",\"details\":{\"subtotal\":\"122.45\",\"shipping\":\"0.00\",\"insurance\":\"0.00\",\"handling_fee\":\"0.00\",\"shipping_discount\":\"0.00\"}},\"payment_mode\":\"INSTANT_TRANSFER\",\"protection_eligibility\":\"ELIGIBLE\",\"protection_eligibility_type\":\"ITEM_NOT_RECEIVED_ELIGIBLE,UNAUTHORIZED_PAYMENT_ELIGIBLE\",\"transaction_fee\":{\"value\":\"4.51\",\"currency\":\"EUR\"},\"parent_payment\":\"PAYID-L3TFY6Y0V6093332N507404C\",\"create_time\":\"2020-06-14T17:21:33Z\",\"update_time\":\"2020-06-14T17:21:33Z\",\"links\":[{\"href\":\"https://api.sandbox.paypal.com/v1/payments/sale/4PL04606V5923392L\",\"rel\":\"self\",\"method\":\"GET\"},{\"href\":\"https://api.sandbox.paypal.com/v1/payments/sale/4PL04606V5923392L/refund\",\"rel\":\"refund\",\"method\":\"POST\"},{\"href\":\"https://api.sandbox.paypal.com/v1/payments/payment/PAYID-L3TFY6Y0V6093332N507404C\",\"rel\":\"parent_payment\",\"method\":\"GET\"}]}}]}],\"create_time\":\"2020-06-14T17:20:59Z\",\"update_time\":\"2020-06-14T17:21:33Z\",\"links\":[{\"href\":\"https://api.sandbox.paypal.com/v1/payments/payment/PAYID-L3TFY6Y0V6093332N507404C\",\"rel\":\"self\",\"method\":\"GET\"}]}', '2020-06-06 12:57:18', 'Juan@gmail', '122.45', 'completo'),
(118, 'b5vmaoemirmhndjinmodgnssgb', '', '2020-06-06 12:57:18', 'Juan@gmail', '677.56', 'pendiente'),
(119, 'b5vmaoemirmhndjinmodgnssgb', '', '2020-06-06 12:57:18', 'Juan@gmail', '677.56', 'pendiente'),
(120, 'b5vmaoemirmhndjinmodgnssgb', '', '2020-06-06 12:57:18', 'Juan@gmail', '677.56', 'pendiente'),
(121, 'b5vmaoemirmhndjinmodgnssgb', '', '2020-06-06 12:57:18', 'Juan@gmail', '677.56', 'pendiente'),
(122, 'b5vmaoemirmhndjinmodgnssgb', '', '2020-06-06 12:57:18', 'Juan@gmail', '677.56', 'pendiente'),
(123, 'b5vmaoemirmhndjinmodgnssgb', '', '2020-06-06 12:57:18', 'Juan@gmail', '677.56', 'pendiente'),
(124, 'b5vmaoemirmhndjinmodgnssgb', '', '2020-06-06 12:57:18', 'Juan@gmail', '677.56', 'pendiente'),
(125, 'b5vmaoemirmhndjinmodgnssgb', '', '2020-06-06 12:57:18', 'Juan@gmail', '677.56', 'pendiente'),
(126, 'b5vmaoemirmhndjinmodgnssgb', '', '2020-06-06 12:57:18', 'Juan@gmail', '677.56', 'pendiente'),
(127, 'b5vmaoemirmhndjinmodgnssgb', '', '2020-06-06 12:57:18', 'Juan@gmail', '677.56', 'pendiente'),
(128, 'b5vmaoemirmhndjinmodgnssgb', '{\"id\":\"PAYID-L3TPNIY0J853764WJ952463B\",\"intent\":\"sale\",\"state\":\"approved\",\"cart\":\"3F785642RG438233F\",\"payer\":{\"payment_method\":\"paypal\",\"status\":\"VERIFIED\",\"payer_info\":{\"email\":\"sb-a4yhr526201@personal.example.com\",\"first_name\":\"John\",\"last_name\":\"Doe\",\"payer_id\":\"5G2229GEVXCK6\",\"shipping_address\":{\"recipient_name\":\"John Doe\",\"line1\":\"calle Vilamar� 76993- 17469\",\"city\":\"Albacete\",\"state\":\"Albacete\",\"postal_code\":\"02001\",\"country_code\":\"ES\"},\"phone\":\"9065513197\",\"country_code\":\"ES\"}},\"transactions\":[{\"amount\":{\"total\":\"1840.00\",\"currency\":\"EUR\",\"details\":{\"subtotal\":\"1840.00\",\"shipping\":\"0.00\",\"insurance\":\"0.00\",\"handling_fee\":\"0.00\",\"shipping_discount\":\"0.00\"}},\"payee\":{\"merchant_id\":\"RSGQ3JN6CR6LQ\",\"email\":\"juancarlosjimenez@business.example.com\"},\"description\":\"Compra de productos a ComPC\",\"custom\":\"b5vmaoemirmhndjinmodgnssgb#0IJNA+gCtluG51CCxI5aEw==\",\"item_list\":{\"shipping_address\":{\"recipient_name\":\"John Doe\",\"line1\":\"calle Vilamar� 76993- 17469\",\"city\":\"Albacete\",\"state\":\"Albacete\",\"postal_code\":\"02001\",\"country_code\":\"ES\"}},\"related_resources\":[{\"sale\":{\"id\":\"6T957792TN044620J\",\"state\":\"completed\",\"amount\":{\"total\":\"1840.00\",\"currency\":\"EUR\",\"details\":{\"subtotal\":\"1840.00\",\"shipping\":\"0.00\",\"insurance\":\"0.00\",\"handling_fee\":\"0.00\",\"shipping_discount\":\"0.00\"}},\"payment_mode\":\"INSTANT_TRANSFER\",\"protection_eligibility\":\"ELIGIBLE\",\"protection_eligibility_type\":\"ITEM_NOT_RECEIVED_ELIGIBLE,UNAUTHORIZED_PAYMENT_ELIGIBLE\",\"transaction_fee\":{\"value\":\"62.91\",\"currency\":\"EUR\"},\"parent_payment\":\"PAYID-L3TPNIY0J853764WJ952463B\",\"create_time\":\"2020-06-15T04:19:03Z\",\"update_time\":\"2020-06-15T04:19:03Z\",\"links\":[{\"href\":\"https://api.sandbox.paypal.com/v1/payments/sale/6T957792TN044620J\",\"rel\":\"self\",\"method\":\"GET\"},{\"href\":\"https://api.sandbox.paypal.com/v1/payments/sale/6T957792TN044620J/refund\",\"rel\":\"refund\",\"method\":\"POST\"},{\"href\":\"https://api.sandbox.paypal.com/v1/payments/payment/PAYID-L3TPNIY0J853764WJ952463B\",\"rel\":\"parent_payment\",\"method\":\"GET\"}]}}]}],\"create_time\":\"2020-06-15T04:18:43Z\",\"update_time\":\"2020-06-15T04:19:03Z\",\"links\":[{\"href\":\"https://api.sandbox.paypal.com/v1/payments/payment/PAYID-L3TPNIY0J853764WJ952463B\",\"rel\":\"self\",\"method\":\"GET\"}]}', '2020-06-06 12:57:18', 'Juancarlos@gmail', '1840.00', 'completo'),
(129, 'oic8rnmh7oombe3jpb2kkf4jfr', '{\"id\":\"PAYID-L3TQBVA0XW398726T394135T\",\"intent\":\"sale\",\"state\":\"approved\",\"cart\":\"09D77320JP892503P\",\"payer\":{\"payment_method\":\"paypal\",\"status\":\"VERIFIED\",\"payer_info\":{\"email\":\"sb-a4yhr526201@personal.example.com\",\"first_name\":\"John\",\"last_name\":\"Doe\",\"payer_id\":\"5G2229GEVXCK6\",\"shipping_address\":{\"recipient_name\":\"John Doe\",\"line1\":\"calle Vilamar� 76993- 17469\",\"city\":\"Albacete\",\"state\":\"Albacete\",\"postal_code\":\"02001\",\"country_code\":\"ES\"},\"phone\":\"9065513197\",\"country_code\":\"ES\"}},\"transactions\":[{\"amount\":{\"total\":\"2530.56\",\"currency\":\"EUR\",\"details\":{\"subtotal\":\"2530.56\",\"shipping\":\"0.00\",\"insurance\":\"0.00\",\"handling_fee\":\"0.00\",\"shipping_discount\":\"0.00\"}},\"payee\":{\"merchant_id\":\"RSGQ3JN6CR6LQ\",\"email\":\"juancarlosjimenez@business.example.com\"},\"description\":\"Compra de productos a ComPC\",\"custom\":\"oic8rnmh7oombe3jpb2kkf4jfr#xMjK1DKmOtvN46v51voWYQ==\",\"item_list\":{\"shipping_address\":{\"recipient_name\":\"John Doe\",\"line1\":\"calle Vilamar� 76993- 17469\",\"city\":\"Albacete\",\"state\":\"Albacete\",\"postal_code\":\"02001\",\"country_code\":\"ES\"}},\"related_resources\":[{\"sale\":{\"id\":\"4LU29032DW6455141\",\"state\":\"completed\",\"amount\":{\"total\":\"2530.56\",\"currency\":\"EUR\",\"details\":{\"subtotal\":\"2530.56\",\"shipping\":\"0.00\",\"insurance\":\"0.00\",\"handling_fee\":\"0.00\",\"shipping_discount\":\"0.00\"}},\"payment_mode\":\"INSTANT_TRANSFER\",\"protection_eligibility\":\"ELIGIBLE\",\"protection_eligibility_type\":\"ITEM_NOT_RECEIVED_ELIGIBLE,UNAUTHORIZED_PAYMENT_ELIGIBLE\",\"transaction_fee\":{\"value\":\"86.39\",\"currency\":\"EUR\"},\"parent_payment\":\"PAYID-L3TQBVA0XW398726T394135T\",\"create_time\":\"2020-06-15T05:02:29Z\",\"update_time\":\"2020-06-15T05:02:29Z\",\"links\":[{\"href\":\"https://api.sandbox.paypal.com/v1/payments/sale/4LU29032DW6455141\",\"rel\":\"self\",\"method\":\"GET\"},{\"href\":\"https://api.sandbox.paypal.com/v1/payments/sale/4LU29032DW6455141/refund\",\"rel\":\"refund\",\"method\":\"POST\"},{\"href\":\"https://api.sandbox.paypal.com/v1/payments/payment/PAYID-L3TQBVA0XW398726T394135T\",\"rel\":\"parent_payment\",\"method\":\"GET\"}]}}]}],\"create_time\":\"2020-06-15T05:02:12Z\",\"update_time\":\"2020-06-15T05:02:29Z\",\"links\":[{\"href\":\"https://api.sandbox.paypal.com/v1/payments/payment/PAYID-L3TQBVA0XW398726T394135T\",\"rel\":\"self\",\"method\":\"GET\"}]}', '2020-06-06 12:57:18', 'julian@gmail.com', '2530.56', 'completo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `ID` int(11) NOT NULL,
  `Usuario` varchar(25) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Contraseña` varchar(10) NOT NULL,
  `tipo` varchar(25) NOT NULL,
  `Telefono` int(9) DEFAULT NULL,
  `Nombre` varchar(25) DEFAULT NULL,
  `Apellidos` varchar(25) DEFAULT NULL,
  `Dirección` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`ID`, `Usuario`, `Email`, `Contraseña`, `tipo`, `Telefono`, `Nombre`, `Apellidos`, `Dirección`) VALUES
(31, 'julian', 'julian@gmail.com', '123', 'user', 634914465, 'Juan Carlos', 'jimenez Blanco', 'Calle Plus ultra');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ID_user` (`ID_user`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tbldetalleventa`
--
ALTER TABLE `tbldetalleventa`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IDPRODUCTO` (`IDPRODUCTO`),
  ADD KEY `IDVENTA` (`IDVENTA`);

--
-- Indices de la tabla `tblventas`
--
ALTER TABLE `tblventas`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `Usuario` (`Usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT de la tabla `tbldetalleventa`
--
ALTER TABLE `tbldetalleventa`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=187;

--
-- AUTO_INCREMENT de la tabla `tblventas`
--
ALTER TABLE `tblventas`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=130;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `pedidos`
--
ALTER TABLE `pedidos`
  ADD CONSTRAINT `pedidos_ibfk_1` FOREIGN KEY (`ID_user`) REFERENCES `usuario` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tbldetalleventa`
--
ALTER TABLE `tbldetalleventa`
  ADD CONSTRAINT `tbldetalleventa_ibfk_2` FOREIGN KEY (`IDPRODUCTO`) REFERENCES `productos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbldetalleventa_ibfk_3` FOREIGN KEY (`IDVENTA`) REFERENCES `tblventas` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
