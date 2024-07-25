-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: bgdzpsteseh5rtu4ktzz-mysql.services.clever-cloud.com:3306
-- Tiempo de generación: 25-07-2024 a las 01:15:18
-- Versión del servidor: 8.0.22-13
-- Versión de PHP: 8.2.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bgdzpsteseh5rtu4ktzz`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin`
--

CREATE TABLE `admin` (
  `idAdmin` int NOT NULL,
  `usuario` varchar(30) COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(120) COLLATE utf8mb4_general_ci NOT NULL,
  `nombre` varchar(30) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `token_password` varchar(40) COLLATE utf8mb4_general_ci NOT NULL,
  `password_request` tinyint NOT NULL DEFAULT '0',
  `activo` tinyint NOT NULL,
  `fecha_alta` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `admin`
--

INSERT INTO `admin` (`idAdmin`, `usuario`, `password`, `nombre`, `email`, `token_password`, `password_request`, `activo`, `fecha_alta`) VALUES
(1, 'admin', '$2y$10$hnWTpmBmYk71fTj/N.AtC.LAftvmQKc3FZ0Yn2skFlaf/XPlLpnBS', 'Administrador', 'adminrojas@gmail.com', '', 0, 1, '2023-10-25 14:00:27');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `id_categoria` int NOT NULL,
  `nombre_categoria` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `fechacreacion_categoria` datetime DEFAULT NULL,
  `fechaactualizacion_categoria` datetime DEFAULT NULL,
  `activo_categoria` int DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`id_categoria`, `nombre_categoria`, `fechacreacion_categoria`, `fechaactualizacion_categoria`, `activo_categoria`) VALUES
(1, 'Bebidas', NULL, NULL, 0),
(3, 'Platos', NULL, NULL, 1),
(6, 'Adicionales', NULL, NULL, 1),
(7, 'waaaaa', NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `idCliente` int NOT NULL,
  `nombres` varchar(80) NOT NULL,
  `apellidos` varchar(80) NOT NULL,
  `correo` varchar(80) NOT NULL,
  `telefono` varchar(12) NOT NULL,
  `ciudad` varchar(45) NOT NULL,
  `provincia` varchar(45) NOT NULL,
  `direccion` varchar(100) DEFAULT NULL,
  `dni` varchar(45) NOT NULL,
  `FechaAlta` datetime NOT NULL,
  `FechaModif` datetime DEFAULT NULL,
  `FechaBaja` datetime DEFAULT NULL,
  `estatus` tinyint NOT NULL,
  `foto` longblob
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`idCliente`, `nombres`, `apellidos`, `correo`, `telefono`, `ciudad`, `provincia`, `direccion`, `dni`, `FechaAlta`, `FechaModif`, `FechaBaja`, `estatus`, `foto`) VALUES
(1, 'Armando', 'Valdiviaa', 'alessandro4k4k@gmail.com', '998778009', 'ica', 'Ica', 'Condominio La Tinguiña A-4 Fam. Valdivia', '65879901', '2024-05-24 23:56:21', NULL, NULL, 0, NULL),
(2, 'Alessandro', 'Valdivia', 'faxida7963@neixos.com', '998666555', 'ica', 'Ica', 'Condominio La Tinguiña O-51', '68877543', '2024-05-25 00:07:34', NULL, NULL, 1, NULL),
(3, 'Jorge', 'Sol', 'elcordonyl@gmail.com', '993456678', 'lima', 'Miraflores', 'Urb. Las Palmeras O-8 1ta', '45667771', '2024-07-19 20:35:06', NULL, NULL, 1, NULL),
(4, 'Diego', 'Lujan Carrio', 'kominis936@ikangou.com', '996555444', 'ica', 'Ica', 'Urb. El Oasis 4ta P-12', '65541222', '2024-07-19 20:40:04', NULL, NULL, 1, NULL),
(5, 'Alessandro', 'Lujan Carrion', 'Chatoflores559@gmail.com', '999666111', 'ica', 'Ica', 'Residencial La Tinguiña M-11', '66775544', '2024-07-19 20:47:57', NULL, NULL, 1, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Configuracion`
--

CREATE TABLE `Configuracion` (
  `id` int NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `valor` tinytext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `Configuracion`
--

INSERT INTO `Configuracion` (`id`, `nombre`, `valor`) VALUES
(1, 'correo_email', 'rojasscorreo@gmail.com'),
(2, 'correo_smtp', 'smtp.gmail.com'),
(3, 'correo_password', 'llgztixsxlgtwuyr'),
(4, 'correo_puerto', '465'),
(5, 'correo_email2', 'polleriaelchinito237@gmail.com\r\n'),
(6, 'correo_password2', 'jionrzdlpalhkqfs\r\n');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalleventa`
--

CREATE TABLE `detalleventa` (
  `id` int NOT NULL,
  `id_venta` int NOT NULL,
  `id_producto` int NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `cantidad` int NOT NULL,
  `activo` tinyint NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `detalleventa`
--

INSERT INTO `detalleventa` (`id`, `id_venta`, `id_producto`, `nombre`, `precio`, `cantidad`, `activo`) VALUES
(1, 1, 5, 'Chimichurri', 5.00, 1, 1),
(2, 1, 9, 'Pollo a la brasa', 62.00, 1, 1),
(3, 1, 13, 'Salchipapa', 5.00, 1, 1),
(4, 1, 17, 'Arroz chaufa', 10.00, 1, 1),
(5, 1, 4, 'Aji', 4.50, 1, 1),
(6, 2, 3, 'Agua de Mesa (650 ml)', 3.00, 1, 1),
(7, 2, 8, 'Papas fritas grandes', 14.40, 1, 1),
(8, 2, 13, 'Salchipapa', 5.00, 1, 1),
(9, 2, 11, '1/4 Pollo a la brasa', 17.00, 1, 1),
(10, 2, 15, 'Saltado de pollo', 10.00, 1, 1),
(11, 3, 3, 'Agua de Mesa (650 ml)', 3.00, 2, 1),
(12, 3, 14, 'Salchipollo', 6.00, 1, 1),
(13, 4, 3, 'Agua de Mesa (650 ml)', 3.00, 1, 1),
(14, 4, 4, 'Aji', 4.50, 1, 1),
(15, 5, 14, 'Salchipollo', 6.00, 1, 1),
(16, 5, 13, 'Salchipapa', 5.00, 1, 1),
(17, 5, 12, '1/8 de pollo a la brasa', 9.00, 1, 1),
(18, 6, 4, 'Aji', 4.50, 1, 1),
(19, 6, 5, 'Chimichurri', 5.00, 1, 1),
(20, 6, 3, 'Agua de Mesa (650 ml)', 3.00, 1, 1),
(21, 7, 1, 'Gaseosas (500 ml)', 5.00, 1, 1),
(22, 7, 2, 'Gaseosas (1.5 LT)', 12.00, 1, 1),
(23, 7, 4, 'Aji', 4.50, 1, 1),
(24, 8, 4, 'Aji', 4.50, 10, 1),
(25, 9, 2, 'Gaseosas (1.5 LT)', 12.00, 1, 1),
(26, 9, 1, 'Gaseosas (500 ml)', 5.00, 1, 1),
(27, 9, 11, '1/4 Pollo a la brasa', 17.00, 1, 1),
(28, 10, 2, 'Gaseosas (1.5 LT)', 12.00, 1, 1),
(29, 10, 1, 'Gaseosas (500 ml)', 5.00, 1, 1),
(30, 10, 9, 'Pollo a la brasa', 62.00, 1, 1),
(31, 10, 14, 'Salchipollo', 6.00, 1, 1),
(32, 11, 2, 'Gaseosas (1.5 LT)', 12.00, 1, 1),
(33, 11, 1, 'Gaseosas (500 ml)', 5.00, 1, 1),
(34, 11, 9, 'Pollo a la brasa', 62.00, 1, 1),
(35, 11, 13, 'Salchipapa', 5.00, 1, 1),
(36, 11, 15, 'Saltado de pollo', 10.00, 2, 1),
(37, 12, 2, 'Gaseosas (1.5 LT)', 12.00, 1, 1),
(38, 12, 17, 'Arroz chaufa', 10.00, 1, 1),
(39, 12, 16, 'Tallarin de pollo', 10.00, 1, 1),
(40, 12, 11, '1/4 Pollo a la brasa', 17.00, 1, 1),
(41, 13, 3, 'Agua de Mesa (650 ml)', 3.00, 1, 1),
(42, 13, 11, '1/4 Pollo a la brasa', 17.00, 1, 1),
(43, 13, 16, 'Tallarin de pollo', 10.00, 1, 1),
(44, 13, 17, 'Arroz chaufa', 10.00, 1, 1),
(45, 14, 9, 'Pollo a la brasa', 62.00, 1, 1),
(46, 14, 14, 'Salchipollo', 6.00, 1, 1),
(47, 14, 17, 'Arroz chaufa', 10.00, 1, 1),
(48, 14, 10, '1/2 Pollo a la brasa', 33.00, 1, 1),
(49, 15, 5, 'Chimichurri', 5.00, 2, 1),
(50, 15, 7, 'Papas fritas medianas', 9.80, 4, 1),
(51, 16, 14, 'Salchipollo', 6.00, 3, 1),
(52, 16, 16, 'Tallarin de pollo', 10.00, 4, 1),
(53, 16, 3, 'Agua de Mesa (650 ml)', 3.00, 3, 1),
(54, 16, 1, 'Gaseosas (500 ml)', 5.00, 3, 1),
(55, 16, 6, 'Papas fritas regulares', 7.00, 2, 1),
(56, 16, 11, '1/4 Pollo a la brasa', 17.00, 5, 1),
(57, 16, 2, 'Gaseosas (1.5 LT)', 12.00, 1, 1),
(58, 17, 2, 'Gaseosas (1.5 LT)', 12.00, 1, 1),
(59, 17, 7, 'Papas fritas medianas', 9.80, 1, 1),
(60, 17, 9, 'Pollo a la brasa', 62.00, 1, 1),
(61, 17, 13, 'Salchipapa', 5.00, 1, 1),
(62, 17, 15, 'Saltado de pollo', 10.00, 1, 1),
(63, 18, 2, 'Gaseosas (1.5 LT)', 12.00, 1, 1),
(64, 18, 3, 'Agua de Mesa (650 ml)', 3.00, 1, 1),
(65, 18, 4, 'Aji', 4.50, 1, 1),
(66, 18, 8, 'Papas fritas grandes', 14.40, 2, 1),
(67, 19, 2, 'Gaseosas (1.5 LT)', 9.60, 19, 1),
(68, 19, 5, 'Chimichurri', 5.00, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleado`
--

CREATE TABLE `empleado` (
  `idEmpleado` int NOT NULL,
  `Nombre` varchar(45) NOT NULL,
  `Apellido` varchar(45) NOT NULL,
  `Cargo` varchar(45) NOT NULL,
  `Telefono` varchar(45) NOT NULL,
  `Correo` varchar(45) NOT NULL,
  `dni` varchar(45) NOT NULL,
  `salario` decimal(10,2) NOT NULL,
  `activo` tinyint NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `empleado`
--

INSERT INTO `empleado` (`idEmpleado`, `Nombre`, `Apellido`, `Cargo`, `Telefono`, `Correo`, `dni`, `salario`, `activo`) VALUES
(1, 'Alessandro ', 'Macotelaaaaa', 'Gerente', '976666777', 'alessandro123@gmail.com', '61657552', 3122.00, 0),
(2, 'Stefano ', 'Macotela', 'Limpieza', '987555213', 'StefanZzZ@gmail.com', '71776644', 1200.00, 0),
(3, 'David', 'Macotela', 'Recursos humanos', '987666432', 'Macotela@gmail.com', '65478996', 3500.00, 1),
(4, 'Jesus Andres', 'Lujan Carrion', 'Marketing', '933788421', 'CodigoLagarto@gmail.com', '54332816', 1025.00, 1),
(5, 'Andres Jorge', 'Salas Guerrero', 'Limpieza', '988431122', 'timba1M@gmail.com', '23441278', 1050.00, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `idProducto` int NOT NULL,
  `Nombre` varchar(45) NOT NULL,
  `Descripcion` text NOT NULL,
  `idCategoria` int NOT NULL,
  `Costo` decimal(10,2) NOT NULL,
  `PrecioVenta` decimal(10,2) NOT NULL,
  `descuento` tinyint DEFAULT '0',
  `Existencias` int NOT NULL DEFAULT '0',
  `InvMinimo` varchar(45) NOT NULL,
  `InvMaximo` varchar(45) NOT NULL,
  `FechaCaducidad` varchar(45) DEFAULT NULL,
  `activo` int NOT NULL DEFAULT '1',
  `Imagen` text,
  `id_usuario` int DEFAULT NULL,
  `fchacreacion` datetime DEFAULT NULL,
  `fchaactualizacion` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`idProducto`, `Nombre`, `Descripcion`, `idCategoria`, `Costo`, `PrecioVenta`, `descuento`, `Existencias`, `InvMinimo`, `InvMaximo`, `FechaCaducidad`, `activo`, `Imagen`, `id_usuario`, `fchacreacion`, `fchaactualizacion`) VALUES
(1, 'Gaseosas (500 ml)', '<p>GASEOSAS</p>', 1, 2.00, 5.00, 0, 43, '100', '200', NULL, 0, NULL, NULL, NULL, NULL),
(2, 'Gaseosas (1.5 LT)', '<p>GASEOSASsssss</p>', 6, 10.00, 12.00, 20, 21, '10', '200', NULL, 1, NULL, NULL, NULL, NULL),
(3, 'Agua de Mesa (650 ml)', '<p>AGUA DE MESA</p>', 1, 1.00, 3.00, 0, 10, '5', '70', NULL, 1, NULL, NULL, NULL, NULL),
(4, 'Aji', '<p>AJI</p>', 6, 1.00, 5.00, 10, 19, '10', '30', NULL, 1, NULL, NULL, NULL, NULL),
(5, 'Chimichurri', '<p>CHIMICHURRI</p>', 6, 1.00, 5.00, 0, 6, '10', '20', NULL, 1, NULL, NULL, NULL, NULL),
(6, 'Papas fritas regulares', '<p>PAPAS FRITAS</p>', 6, 3.00, 7.00, 0, 11, '10', '40', NULL, 1, NULL, NULL, NULL, NULL),
(7, 'Papas fritas medianas', '<p>PAPAS FRITAS</p>', 6, 3.00, 10.00, 2, 24, '24', '40', NULL, 1, NULL, NULL, NULL, NULL),
(8, 'Papas fritas grandes', '<p>PAPAS FRITAS</p>', 6, 5.00, 15.00, 4, 16, '15', '26', NULL, 1, NULL, NULL, NULL, NULL),
(9, 'Pollo a la brasa', '<p>+ crocantes papas fritas</p><p>+ ensalada fresa</p><p>+ cremas&nbsp;</p><p>+1 gaseosa de 1LT</p>', 3, 20.00, 62.00, 0, 14, '5', '25', NULL, 1, NULL, NULL, NULL, NULL),
(10, '1/2 Pollo a la brasa', '<ul><li>Crocantes papas fritas</li><li>Ensalada fresca</li><li>Cremas</li><li>Gaseosa mediana</li></ul>', 3, 11.00, 33.00, 0, 9, '7', '30', NULL, 1, NULL, NULL, NULL, NULL),
(11, '1/4 Pollo a la brasa', '<p>Incluye:</p><p>Crocantes papas fritas</p><p>Ensalada fresca</p><p>Cremas</p><p>Gaseosa de 350ml</p>', 3, 9.00, 17.00, 0, 11, '10', '30', NULL, 1, NULL, NULL, NULL, NULL),
(12, '1/8 de pollo a la brasa', '<p>Crocantes papas fritas</p><p>Ensalada fresca</p><p>Cremas</p>', 3, 4.00, 9.00, 0, 9, '5', '20', NULL, 1, NULL, NULL, NULL, NULL),
(13, 'Salchipapa', '', 3, 1.00, 5.00, 0, 15, '5', '30', NULL, 1, NULL, NULL, NULL, NULL),
(14, 'Salchipollo', '', 3, 2.00, 6.00, 0, 3, '4', '22', NULL, 1, NULL, NULL, NULL, NULL),
(15, 'Saltado de pollo', '', 3, 4.00, 10.00, 0, 9, '1', '24', NULL, 1, NULL, NULL, NULL, NULL),
(16, 'Tallarin de pollo', '', 3, 3.00, 10.00, 0, 6, '1', '24', NULL, 1, NULL, NULL, NULL, NULL),
(17, 'Arroz chaufa', '', 3, 5.00, 10.00, 0, 7, '1', '21', NULL, 1, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario_cliente`
--

CREATE TABLE `usuario_cliente` (
  `idusuario` int NOT NULL,
  `usuario` varchar(30) COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(120) COLLATE utf8mb4_general_ci NOT NULL,
  `activacion` int NOT NULL DEFAULT '0',
  `token` varchar(40) COLLATE utf8mb4_general_ci NOT NULL,
  `token_password` varchar(40) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `password_request` int NOT NULL DEFAULT '0',
  `id_cliente` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuario_cliente`
--

INSERT INTO `usuario_cliente` (`idusuario`, `usuario`, `password`, `activacion`, `token`, `token_password`, `password_request`, `id_cliente`) VALUES
(11, 'Alessandroval', '$2y$10$nz6jPz4.rOSdtPw0GHAemOEuDA6Bvb4.rxVYgA4wZ8AFZH89t2HS.', 0, 'e3f423499b8c6cc2728f0ffa7861106c', NULL, 0, 1),
(12, 'Orrai21', '$2y$10$gMannpaMMMMJyinTn9Uqs.WL/PEr9TCqTyjSRJR8yhMvGervEHnsS', 1, '', NULL, 0, 2),
(13, 'Jorggggg', '$2y$10$QsX3DZCM3aEkxTCD1j6kD.DQXlq4vQKZjBv7uwc.9FSvHFT4.6JH6', 0, '0fdd79f463baed0767334d89a5f12246', NULL, 0, 3),
(14, 'TashaCarrion', '$2y$10$5mA36LTRIUCjY2jHdyOSAO7zzcWa7C/ImPrB7hT0Cn6c4vlTzwWnm', 1, '', NULL, 0, 4),
(15, 'AustinValdivia', '$2y$10$DZ3YoZlrspsTV1OdTCnhvO.OI3BWot5gJKxCK1ZG/n0cMgrNgdqDm', 1, '', NULL, 0, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `venta`
--

CREATE TABLE `venta` (
  `id` int NOT NULL,
  `id_transaccion` varchar(50) NOT NULL,
  `status` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `id_cliente` varchar(50) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `fecha` datetime NOT NULL,
  `activo` tinyint NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `venta`
--

INSERT INTO `venta` (`id`, `id_transaccion`, `status`, `email`, `id_cliente`, `total`, `fecha`, `activo`) VALUES
(1, '1HK99137D4127673U', 'COMPLETED', 'sb-4czu328069736@personal.example.com', '2', 86.50, '2024-06-05 22:44:05', 1),
(2, '61W91202PM130194S', 'COMPLETED', 'sb-4czu328069736@personal.example.com', '2', 49.40, '2024-06-13 00:36:43', 1),
(3, '85M28618WR965542U', 'COMPLETED', 'sb-4czu328069736@personal.example.com', '2', 12.00, '2024-06-13 02:21:06', 1),
(4, '0A559730VT217445K', 'COMPLETED', 'sb-4czu328069736@personal.example.com', '2', 7.50, '2024-07-19 19:29:47', 1),
(5, '4R8907481S0368134', 'COMPLETED', 'sb-4czu328069736@personal.example.com', '2', 20.00, '2024-07-19 20:26:28', 1),
(6, '2TN5896291953274A', 'COMPLETED', 'sb-4czu328069736@personal.example.com', '2', 12.50, '2024-07-19 20:28:42', 1),
(7, '8L508341XU324904Y', 'COMPLETED', 'sb-4czu328069736@personal.example.com', '2', 21.50, '2024-07-19 20:39:00', 1),
(8, '9M861161SW925402M', 'COMPLETED', 'sb-4czu328069736@personal.example.com', '2', 45.00, '2024-07-19 20:42:17', 1),
(9, '5WF836438R256774G', 'COMPLETED', 'sb-4czu328069736@personal.example.com', '2', 34.00, '2024-07-19 20:46:28', 1),
(10, '84S41461DX2179943', 'COMPLETED', 'sb-4czu328069736@personal.example.com', '2', 85.00, '2024-07-19 21:17:55', 1),
(11, '4FG87976MF101025C', 'COMPLETED', 'sb-4czu328069736@personal.example.com', '4', 104.00, '2024-07-19 22:43:05', 1),
(12, '1DR07452HT585623B', 'COMPLETED', 'sb-4czu328069736@personal.example.com', '5', 49.00, '2024-07-19 23:07:49', 1),
(13, '4S398997LT353744V', 'COMPLETED', 'sb-4czu328069736@personal.example.com', '5', 40.00, '2024-07-19 23:10:14', 1),
(14, '3PG56397E9981123S', 'COMPLETED', 'sb-4czu328069736@personal.example.com', '5', 111.00, '2024-07-19 23:13:53', 1),
(15, '9GK62592XG252603U', 'COMPLETED', 'sb-4czu328069736@personal.example.com', '4', 49.20, '2024-07-20 01:56:04', 1),
(16, '32U135102F2848813', 'COMPLETED', 'sb-4czu328069736@personal.example.com', '4', 193.00, '2024-07-20 02:13:57', 1),
(17, '8PU30549JY203113R', 'COMPLETED', 'sb-4czu328069736@personal.example.com', '2', 98.80, '2024-07-24 17:58:31', 1),
(18, '05K0622041516941K', 'COMPLETED', 'sb-4czu328069736@personal.example.com', '2', 48.30, '2024-07-25 02:48:16', 1),
(19, '5JA047939H291950G', 'COMPLETED', 'sb-4czu328069736@personal.example.com', '2', 187.40, '2024-07-25 02:54:34', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`idAdmin`);

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id_categoria`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`idCliente`);

--
-- Indices de la tabla `Configuracion`
--
ALTER TABLE `Configuracion`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `detalleventa`
--
ALTER TABLE `detalleventa`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `empleado`
--
ALTER TABLE `empleado`
  ADD PRIMARY KEY (`idEmpleado`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`idProducto`),
  ADD KEY `idCategoria_idx` (`idCategoria`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- Indices de la tabla `usuario_cliente`
--
ALTER TABLE `usuario_cliente`
  ADD PRIMARY KEY (`idusuario`),
  ADD UNIQUE KEY `uq_usuario` (`usuario`);

--
-- Indices de la tabla `venta`
--
ALTER TABLE `venta`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `admin`
--
ALTER TABLE `admin`
  MODIFY `idAdmin` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `id_categoria` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `idCliente` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `Configuracion`
--
ALTER TABLE `Configuracion`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `detalleventa`
--
ALTER TABLE `detalleventa`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT de la tabla `empleado`
--
ALTER TABLE `empleado`
  MODIFY `idEmpleado` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `idProducto` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `usuario_cliente`
--
ALTER TABLE `usuario_cliente`
  MODIFY `idusuario` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `venta`
--
ALTER TABLE `venta`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `producto`
--
ALTER TABLE `producto`
  ADD CONSTRAINT `id_usuario` FOREIGN KEY (`id_usuario`) REFERENCES `admin` (`idAdmin`) ON DELETE RESTRICT ON UPDATE CASCADE,
  ADD CONSTRAINT `idCategoria` FOREIGN KEY (`idCategoria`) REFERENCES `categoria` (`id_categoria`) ON DELETE RESTRICT ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
