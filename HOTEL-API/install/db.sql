-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/


SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `api_hotel_king`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `adelantos`
--

CREATE TABLE `adelantos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `monto` decimal(8,2) NOT NULL DEFAULT 0.00,
  `reservacion_id` int(11) NOT NULL DEFAULT 1,
  `estado` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `adelantos`
--

INSERT INTO `adelantos` (`id`, `monto`, `reservacion_id`, `estado`, `created_at`, `updated_at`) VALUES
(1, '75.00', 9, 1, '2023-03-15 21:02:02', '2023-03-15 21:02:02'),
(2, '75.00', 9, 1, '2023-03-15 21:17:12', '2023-03-15 21:17:12'),
(3, '150.00', 9, 1, '2023-03-15 21:17:23', '2023-03-15 21:17:23'),
(4, '300.00', 9, 1, '2023-03-15 21:17:31', '2023-03-15 21:17:31'),
(5, '20.00', 2, 1, '2023-03-15 21:22:21', '2023-03-15 21:22:21'),
(6, '600.00', 9, 1, '2023-03-15 21:22:58', '2023-03-15 21:22:58'),
(7, '200.00', 13, 1, '2023-03-15 21:34:39', '2023-03-15 21:34:39'),
(8, '200.00', 13, 1, '2023-03-15 21:37:34', '2023-03-15 21:37:34'),
(9, '50.00', 1, 1, '2023-03-15 21:46:23', '2023-03-15 21:46:23'),
(10, '50.00', 10, 1, '2023-03-15 21:46:41', '2023-03-15 21:46:41'),
(11, '12.00', 20, 1, '2023-03-19 01:05:08', '2023-03-19 01:05:08'),
(12, '20.00', 19, 1, '2023-03-19 02:58:17', '2023-03-19 02:58:17');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cajas`
--

CREATE TABLE `cajas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `inicial` decimal(8,2) NOT NULL DEFAULT 0.00,
  `final` decimal(8,2) NOT NULL DEFAULT 0.00,
  `diferencia` decimal(8,2) NOT NULL DEFAULT 0.00,
  `start` datetime DEFAULT NULL,
  `end` datetime DEFAULT NULL,
  `user_id` int(11) NOT NULL DEFAULT 1,
  `estado` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `cajas`
--

INSERT INTO `cajas` (`id`, `inicial`, `final`, `diferencia`, `start`, `end`, `user_id`, `estado`, `created_at`, `updated_at`) VALUES
(1, '100.00', '0.00', '0.00', '2023-03-18 20:47:59', '2023-03-18 21:26:30', 1, 0, '2023-03-19 01:47:59', '2023-03-19 02:26:30'),
(2, '50.00', '50.00', '0.00', '2023-03-18 21:35:05', '2023-03-18 21:37:26', 1, 0, '2023-03-19 02:35:05', '2023-03-19 02:37:26'),
(3, '30.00', '105.00', '100.00', '2023-03-18 21:37:33', '2023-03-18 22:06:56', 1, 0, '2023-03-19 02:37:33', '2023-03-19 03:06:56'),
(4, '50.00', '50.00', '50.00', '2023-03-18 22:44:58', '2023-03-18 22:45:37', 1, 0, '2023-03-19 03:44:58', '2023-03-19 03:45:37'),
(5, '50.00', '0.00', '0.00', '2023-03-18 23:41:55', NULL, 1, 1, '2023-03-19 04:41:55', '2023-03-19 04:41:55');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `estado` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `name`, `estado`, `created_at`, `updated_at`) VALUES
(1, 'Simple', 1, '2023-03-14 16:04:12', '2023-03-17 10:04:03'),
(2, 'Doble', 1, '2023-03-14 16:11:38', '2023-03-20 00:29:09'),
(3, 'Matrimonial', 1, '2023-03-17 10:04:10', '2023-03-17 10:04:10'),
(4, '<script>alert(\'hola\')</script>', 0, '2023-03-17 10:10:15', '2023-03-17 10:10:23'),
(5, 'a', 0, '2023-03-17 10:13:39', '2023-03-17 10:14:10');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `doc` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `direccion` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telefono` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `estado` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id`, `doc`, `name`, `direccion`, `telefono`, `estado`, `created_at`, `updated_at`) VALUES
(1, '70384137', 'Jhonatan Zavaleta', 'Walter as', '989878787', 1, '2023-03-17 09:00:27', '2023-03-17 09:00:27'),
(2, '7038', 'jhose', 'Walter as', '989878787', 1, '2023-03-17 09:03:00', '2023-03-17 09:03:00'),
(3, '1233', 'sadas', 'sadas', 'asd', 1, '2023-03-18 17:54:49', '2023-03-18 17:54:49');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalles`
--

CREATE TABLE `detalles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `estado` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `detalles`
--

INSERT INTO `detalles` (`id`, `name`, `estado`, `created_at`, `updated_at`) VALUES
(1, 'Cama + TV + Baño', 1, '2023-03-14 16:10:08', '2023-03-16 02:23:14'),
(2, 'fdg', 0, '2023-03-16 02:23:17', '2023-03-16 02:23:20');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `habitacions`
--

CREATE TABLE `habitacions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `precio` decimal(8,2) NOT NULL DEFAULT 0.00,
  `categoria_id` int(11) NOT NULL DEFAULT 1,
  `nivel_id` int(11) NOT NULL DEFAULT 1,
  `detalle_id` int(11) NOT NULL DEFAULT 1,
  `active` int(11) NOT NULL DEFAULT 1,
  `estado` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `habitacions`
--

INSERT INTO `habitacions` (`id`, `name`, `precio`, `categoria_id`, `nivel_id`, `detalle_id`, `active`, `estado`, `created_at`, `updated_at`) VALUES
(1, '101', '75.00', 2, 10, 1, 2, 1, '2023-03-14 16:25:54', '2023-03-18 17:50:42'),
(2, '102', '50.00', 1, 1, 1, 1, 1, '2023-03-14 17:06:29', '2023-03-19 03:02:45'),
(3, '103', '50.00', 1, 10, 1, 1, 1, '2023-03-15 16:19:03', '2023-03-18 17:50:13'),
(4, '104', '65.00', 2, 10, 1, 1, 1, '2023-03-15 16:19:18', '2023-03-18 17:50:00'),
(5, '201', '65.00', 1, 2, 1, 1, 1, '2023-03-15 16:19:30', '2023-03-15 16:19:30'),
(6, '202', '65.00', 1, 2, 1, 1, 1, '2023-03-15 16:19:45', '2023-03-19 01:03:16'),
(7, '203', '75.00', 2, 2, 1, 1, 1, '2023-03-15 16:19:54', '2023-03-19 01:03:15'),
(8, '204', '75.00', 2, 2, 1, 1, 1, '2023-03-15 16:20:02', '2023-03-15 16:20:02'),
(9, '301', '60.00', 1, 3, 1, 1, 1, '2023-03-17 09:58:30', '2023-03-17 09:58:38'),
(10, '302', '60.00', 1, 3, 1, 1, 1, '2023-03-17 09:58:43', '2023-03-17 09:58:43'),
(11, '303', '90.00', 2, 3, 1, 1, 1, '2023-03-17 09:59:01', '2023-03-17 09:59:01'),
(12, '401', '50.00', 1, 3, 1, 1, 1, '2023-03-17 10:03:13', '2023-03-17 10:03:13');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(3, '2023_03_13_133921_create_nivels_table', 1),
(4, '2023_03_14_110045_create_categorias_table', 2),
(5, '2023_03_14_110751_create_detalles_table', 3),
(6, '2023_03_14_112335_create_habitacions_table', 4),
(10, '2023_03_15_130839_create_reservacions_table', 5),
(12, '2023_03_15_154026_create_adelantos_table', 6),
(16, '2023_03_17_020915_create_clientes_table', 7),
(17, '2023_03_17_025048_create_recepcions_table', 7),
(20, '2023_03_17_052531_create_tags_table', 8),
(21, '2023_03_17_063254_create_productos_table', 8),
(22, '2023_03_18_095713_create_recepcion_productos_table', 9),
(23, '2023_03_18_125158_add_adelanto_to_recepcions_table', 10),
(24, '2023_03_18_164951_add_estado_to_users_table', 11),
(25, '2023_03_18_203904_create_cajas_table', 12),
(26, '2023_03_18_211152_create_movimientos_table', 13);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `movimientos`
--

CREATE TABLE `movimientos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `monto` decimal(8,2) NOT NULL DEFAULT 0.00,
  `detalle` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `caja_id` int(11) NOT NULL DEFAULT 1,
  `estado` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `movimientos`
--

INSERT INTO `movimientos` (`id`, `monto`, `detalle`, `caja_id`, `estado`, `created_at`, `updated_at`) VALUES
(1, '20.00', 'ADELANTO POR RESERVACION', 3, 1, '2023-03-19 02:58:17', '2023-03-19 02:58:17'),
(2, '55.00', 'FINALIZAR RECEPCION', 3, 1, '2023-03-19 03:02:45', '2023-03-19 03:02:45');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nivels`
--

CREATE TABLE `nivels` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `estado` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `nivels`
--

INSERT INTO `nivels` (`id`, `name`, `estado`, `created_at`, `updated_at`) VALUES
(1, 'Nivel 1', 0, '2023-03-14 12:17:21', '2023-03-14 15:03:26'),
(2, 'Nivel 2', 1, '2023-03-14 12:17:27', '2023-03-14 12:17:27'),
(3, 'Nivel 3', 1, '2023-03-14 13:54:23', '2023-03-14 13:54:23'),
(4, 'cc', 0, '2023-03-14 14:32:26', '2023-03-14 14:50:09'),
(5, 'Nivel 4', 1, '2023-03-14 14:32:48', '2023-03-14 14:32:48'),
(6, 'Nivel 5', 1, '2023-03-14 14:34:12', '2023-03-14 14:34:12'),
(7, 'Nivel 6', 0, '2023-03-14 14:35:23', '2023-03-14 14:51:51'),
(8, 'Nivel 7', 0, '2023-03-14 14:35:46', '2023-03-14 14:51:16'),
(9, 'Nivel 6', 1, '2023-03-14 14:52:36', '2023-03-14 14:52:36'),
(10, 'Nivel 1', 1, '2023-03-14 15:03:21', '2023-03-14 15:07:15'),
(11, 'Nivel 4', 0, '2023-03-14 15:07:34', '2023-03-14 15:07:38'),
(12, '44', 0, '2023-03-14 15:08:40', '2023-03-14 15:08:44');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `compra` decimal(8,2) NOT NULL DEFAULT 0.00,
  `venta` decimal(8,2) NOT NULL DEFAULT 0.00,
  `tag_id` int(11) NOT NULL DEFAULT 1,
  `estado` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `name`, `compra`, `venta`, `tag_id`, `estado`, `created_at`, `updated_at`) VALUES
(1, 'producto', '12.00', '15.00', 1, 1, '2023-03-17 13:25:28', '2023-03-17 19:03:46'),
(2, 'producto 2', '10.00', '14.00', 1, 1, '2023-03-17 19:03:38', '2023-03-17 19:24:47');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `recepcions`
--

CREATE TABLE `recepcions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `precio` decimal(8,2) NOT NULL DEFAULT 0.00,
  `dias` int(11) NOT NULL DEFAULT 1,
  `cliente_id` int(11) NOT NULL DEFAULT 1,
  `habitacion_id` int(11) NOT NULL DEFAULT 1,
  `start` date DEFAULT NULL,
  `end` date DEFAULT NULL,
  `hora_start` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hora_end` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` int(11) NOT NULL DEFAULT 1,
  `estado` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `adelanto` decimal(8,2) NOT NULL DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `recepcions`
--

INSERT INTO `recepcions` (`id`, `precio`, `dias`, `cliente_id`, `habitacion_id`, `start`, `end`, `hora_start`, `hora_end`, `active`, `estado`, `created_at`, `updated_at`, `adelanto`) VALUES
(1, '50.00', 1, 1, 3, '2023-03-17', '2023-03-18', '03:59', '03:59', 0, 1, '2023-03-17 09:00:27', '2023-03-18 17:50:13', '0.00'),
(2, '65.00', 1, 2, 4, '2023-03-17', '2023-03-18', '04:02', '04:02', 0, 1, '2023-03-17 09:03:00', '2023-03-18 17:50:00', '0.00'),
(3, '75.00', 1, 1, 1, '2023-03-18', '2023-03-19', '12:50', '12:50', 1, 1, '2023-03-18 17:50:42', '2023-03-18 17:50:42', '0.00'),
(4, '50.00', 1, 3, 2, '2023-03-18', '2023-03-19', '12:54', '12:54', 0, 1, '2023-03-18 17:54:49', '2023-03-18 18:00:15', '10.00'),
(6, '50.00', 1, 1, 2, '2023-03-18', '2023-03-19', '16:10', '16:10', 0, 1, '2023-03-18 21:11:00', '2023-03-19 03:02:45', '10.00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `recepcion_productos`
--

CREATE TABLE `recepcion_productos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `venta` decimal(8,2) NOT NULL DEFAULT 0.00,
  `recepcion_id` int(11) NOT NULL DEFAULT 1,
  `cantidad` int(11) NOT NULL DEFAULT 1,
  `producto_id` int(11) NOT NULL DEFAULT 1,
  `estado` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `recepcion_productos`
--

INSERT INTO `recepcion_productos` (`id`, `venta`, `recepcion_id`, `cantidad`, `producto_id`, `estado`, `created_at`, `updated_at`) VALUES
(1, '15.00', 1, 2, 1, 1, '2023-03-18 15:05:48', '2023-03-18 15:05:48'),
(2, '14.00', 1, 1, 2, 1, '2023-03-18 15:05:48', '2023-03-18 15:05:48'),
(3, '14.00', 1, 2, 2, 1, '2023-03-18 15:29:55', '2023-03-18 15:29:55'),
(4, '15.00', 1, 2, 1, 1, '2023-03-18 15:29:55', '2023-03-18 15:29:55'),
(5, '14.00', 2, 1, 2, 1, '2023-03-18 17:23:32', '2023-03-18 17:23:32'),
(6, '15.00', 2, 1, 1, 1, '2023-03-18 17:23:32', '2023-03-18 17:23:32'),
(7, '15.00', 6, 1, 1, 1, '2023-03-18 21:11:44', '2023-03-18 21:11:44');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reservacions`
--

CREATE TABLE `reservacions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `precio` decimal(8,2) NOT NULL DEFAULT 0.00,
  `habitacion_id` int(11) NOT NULL DEFAULT 1,
  `start` date DEFAULT NULL,
  `end` date DEFAULT NULL,
  `active` int(11) NOT NULL DEFAULT 1,
  `estado` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `reservacions`
--

INSERT INTO `reservacions` (`id`, `title`, `precio`, `habitacion_id`, `start`, `end`, `active`, `estado`, `created_at`, `updated_at`) VALUES
(1, '1', '75.00', 1, '2023-03-06', '2023-03-07', 3, 1, '2023-03-15 16:03:32', '2023-03-15 17:55:07'),
(2, 'Prueba', '75.00', 1, '2023-02-28', '2023-03-03', 2, 1, '2023-03-15 16:08:01', '2023-03-15 21:22:21'),
(3, 'AJjJAJAA', '75.00', 1, '2023-03-03', '2023-03-05', 0, 1, '2023-03-15 16:08:12', '2023-03-15 18:46:05'),
(4, 'Hola', '75.00', 1, '2023-03-09', '2023-03-11', 3, 1, '2023-03-15 16:08:40', '2023-03-15 21:39:37'),
(5, 'DSFDSF', '75.00', 1, '2023-03-02', '2023-03-04', 0, 1, '2023-03-15 16:15:41', '2023-03-15 21:15:49'),
(6, 'Holas', '75.00', 1, '2023-03-17', '2023-03-18', 1, 1, '2023-03-15 16:18:52', '2023-03-15 17:47:27'),
(7, 'Hola', '75.00', 1, '2023-03-23', '2023-03-24', 1, 1, '2023-03-15 16:23:56', '2023-03-15 19:16:43'),
(8, 'dfsdf', '75.00', 1, '2023-03-14', '2023-03-15', 1, 1, '2023-03-15 16:26:58', '2023-03-15 16:41:28'),
(9, 'demo', '700.00', 1, '2023-02-28', '2023-03-02', 2, 1, '2023-03-15 18:41:50', '2023-03-15 21:58:58'),
(10, 'demo', '75.00', 1, '2023-03-07', '2023-03-08', 2, 1, '2023-03-15 19:16:54', '2023-03-15 21:46:59'),
(11, 'sdf', '75.00', 1, '2023-03-21', '2023-03-21', 1, 1, '2023-03-15 19:17:55', '2023-03-15 19:17:55'),
(12, 'fdssfdfd', '75.00', 1, '2023-03-30', '2023-03-31', 1, 1, '2023-03-15 19:18:00', '2023-03-15 19:58:55'),
(13, 'asds', '75.00', 1, '2023-03-05', NULL, 3, 1, '2023-03-15 20:46:24', '2023-03-15 21:38:42'),
(14, 'hola', '50.00', 2, '2023-02-28', '2023-02-28', 3, 1, '2023-03-15 22:51:36', '2023-03-15 23:14:14'),
(15, 'xd', '50.00', 3, '2023-03-01', '2023-03-03', 1, 1, '2023-03-15 23:42:51', '2023-03-15 23:42:58'),
(16, 'reser', '50.00', 3, '2023-03-17', '2023-03-19', 1, 1, '2023-03-16 00:42:23', '2023-03-19 01:04:43'),
(17, 'reserva', '50.00', 3, '2023-03-24', '2023-03-26', 3, 1, '2023-03-16 00:42:35', '2023-03-19 01:04:53'),
(18, 'reservar para pedro', '50.00', 3, '2023-03-20', '2023-03-21', 1, 1, '2023-03-18 16:30:12', '2023-03-18 16:31:02'),
(19, 'hola', '50.00', 3, '2023-03-21', '2023-03-22', 2, 1, '2023-03-18 16:31:25', '2023-03-19 02:58:23'),
(20, 'reserva para', '50.00', 3, '2023-03-22', '2023-03-23', 2, 1, '2023-03-18 16:34:40', '2023-03-19 01:05:23'),
(21, 'Reservacion para 19', '75.00', 8, '2023-03-19', '2023-03-20', 1, 1, '2023-03-18 17:21:51', '2023-03-18 17:21:51');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `estado` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `tags`
--

INSERT INTO `tags` (`id`, `name`, `estado`, `created_at`, `updated_at`) VALUES
(1, 'Servicios', 1, '2023-03-17 13:25:18', '2023-03-17 13:25:18'),
(2, 'Galletas', 1, '2023-03-17 19:46:25', '2023-03-17 19:46:25');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `estado` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `created_at`, `updated_at`, `estado`) VALUES
(1, 'JHONY CREATIVO', 'demo@demo.com', '$2y$10$32PecayJlDOeeWcK73o8l.VN7Tk1nNHzTt0fKZ9Ql2khMvVcikouy', '2023-03-18 21:48:44', '2023-03-18 22:05:00', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `adelantos`
--
ALTER TABLE `adelantos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cajas`
--
ALTER TABLE `cajas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `detalles`
--
ALTER TABLE `detalles`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `habitacions`
--
ALTER TABLE `habitacions`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `movimientos`
--
ALTER TABLE `movimientos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `nivels`
--
ALTER TABLE `nivels`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `recepcions`
--
ALTER TABLE `recepcions`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `recepcion_productos`
--
ALTER TABLE `recepcion_productos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `reservacions`
--
ALTER TABLE `reservacions`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `adelantos`
--
ALTER TABLE `adelantos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `cajas`
--
ALTER TABLE `cajas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `detalles`
--
ALTER TABLE `detalles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `habitacions`
--
ALTER TABLE `habitacions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT de la tabla `movimientos`
--
ALTER TABLE `movimientos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `nivels`
--
ALTER TABLE `nivels`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `recepcions`
--
ALTER TABLE `recepcions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `recepcion_productos`
--
ALTER TABLE `recepcion_productos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `reservacions`
--
ALTER TABLE `reservacions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
