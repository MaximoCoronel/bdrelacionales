-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 08-02-2025 a las 02:07:30
-- Versión del servidor: 10.1.39-MariaDB
-- Versión de PHP: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `cetis107`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumnos`
--

CREATE TABLE `alumnos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `apellido` varchar(100) NOT NULL,
  `numero_control` varchar(20) NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `genero` tinyint(1) NOT NULL,
  `correo` varchar(80) NOT NULL,
  `telefono` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `alumnos`
--

INSERT INTO `alumnos` (`id`, `nombre`, `apellido`, `numero_control`, `fecha_nacimiento`, `genero`, `correo`, `telefono`) VALUES
(1, 'Maximo', 'Coronel Aispuro', '23325061070422', '2008-04-12', 1, 'maximo.corone23@cetis106.edu.mx', '6673819305'),
(2, 'Axel Armando', 'Beltrán López', '23325061070317', '2008-05-13', 1, 'axel.beltran23@cetis107.edu.mx', '6674066013'),
(3, 'Hector Aaron', 'Ortiz Serrano', '23325061070347', '2008-08-23', 1, 'hector.ortiz23@cetis107.edu.mx', '6673583222'),
(4, 'Emiliano', 'López Sanchez', '23325061070211', '2008-01-23', 1, 'emiliano.lopez23@cetis107.edu.mx', '6678192301'),
(5, 'Diego', 'Dominguez Lizarraga', '23325061070579', '2008-11-10', 1, 'diego.dominguez23@cetis107.edu.mx', '6671230943'),
(6, 'Mateo', 'Ibarra Gastelum', '23325061070484', '2008-06-24', 1, 'mateo.ibarra23@cetis107.edu.mx', '6777868960'),
(7, 'Oscar Ivan', 'Torres Burgos', '23325061070510', '2008-05-03', 1, 'oscar.torres23@cetis107.edu.mx', '6679910392'),
(8, 'Emiliano', 'Ojeda Quintero', '23325061070702', '2008-10-10', 1, 'emiliano.ojeda23@cetis107.edu.mx', '6673507685'),
(9, 'Victor Manuel', 'Diaz Gastelum', '23325061070728', '2008-09-28', 1, 'victor.diaz23@cetis107.edu.mx', '6678490102'),
(10, 'Frida Sofia', 'Sanchez Valenzuela', '23325061070611', '2008-01-10', 0, 'frida.sanchez23@cetis107.edu.mx', '6679099111'),
(11, 'Angel Gibran', 'Loaiza Garcia', '23325061070694', '2008-08-26', 1, 'angel.loaiza23@cetis107.edu.mx', '6671290364'),
(12, 'Bayron Uriel', 'Estramada Camacho', '23325061070375', '2008-08-13', 1, 'bayron.estramada23@cetis107.edu.mx', '6677848892'),
(13, 'Santiago', 'López Aispuro', '23325061070386', '2008-04-20', 1, 'santiago.lopez@cetis107.edu.mx', '6678931104'),
(14, 'Luis Angel', 'Moya Preciado', '23325061070393', '2008-12-29', 1, 'luis.moya23@cetis107.edu.mx', '6679330122'),
(15, 'Paolo Nicholas', 'Valdez Bernal', '23325061070460', '2008-10-30', 1, 'paolo.valdez23@cetis107.edu.mx', '6678819230');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
