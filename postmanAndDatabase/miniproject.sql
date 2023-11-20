-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-11-2023 a las 16:07:02
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `miniproject`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumnos`
--

CREATE TABLE `alumnos` (
  `id_alumno` bigint(20) UNSIGNED NOT NULL,
  `dni` varchar(255) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `apellido` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `telefono` varchar(255) NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `alumnos`
--

INSERT INTO `alumnos` (`id_alumno`, `dni`, `nombre`, `apellido`, `email`, `telefono`, `fecha_nacimiento`, `created_at`, `updated_at`) VALUES
(1, '3589851241061877', 'Jessie', 'O\'Kon', 'jwyman@yahoo.com', '(559) 973-2192', '1976-06-30', '2023-11-18 18:04:50', '2023-11-18 18:04:50'),
(2, '5148455340346921', 'Torrance', 'Kassulke', 'deckow.ron@harvey.com', '615-434-3897', '2020-03-16', '2023-11-18 18:04:50', '2023-11-18 18:04:50'),
(3, '4916726431920144', 'Porter', 'Schiller', 'fgerlach@swift.com', '+18646341624', '2019-02-24', '2023-11-18 18:04:50', '2023-11-18 18:04:50'),
(5, '2221485575931334', 'Emmet', 'Ratke', 'keegan66@yahoo.com', '+1 (386) 638-8808', '2010-02-28', '2023-11-18 18:04:50', '2023-11-18 18:04:50'),
(6, '6011193498775896', 'Bette', 'Nitzsche', 'pfeffer.jazmyne@yahoo.com', '(951) 995-7369', '1993-05-13', '2023-11-18 18:04:50', '2023-11-18 18:04:50'),
(7, '6011023192458863', 'Katherine', 'Witting', 'kenny62@yahoo.com', '+1 (785) 664-5820', '2021-11-29', '2023-11-18 18:04:50', '2023-11-18 18:04:50'),
(8, '2720879969099375', 'Tad', 'Hand', 'judd.hahn@cummings.net', '1-845-910-5917', '1996-09-09', '2023-11-18 18:04:50', '2023-11-18 18:04:50'),
(9, '2720292100188984', 'Deven', 'Rowe', 'stark.emily@cremin.com', '281-362-1647', '1970-12-15', '2023-11-18 18:04:50', '2023-11-18 18:04:50'),
(10, '1234567890', 'Luis', 'jimenez', 'zapateiro@gmail.com', '+57 321 596 5865', '1999-02-07', '2023-11-18 18:04:50', '2023-11-18 18:49:53'),
(11, '3528690065647435', 'Donna', 'Skiles', 'rogahn.norwood@hotmail.com', '+1-520-407-6705', '1972-11-15', '2023-11-18 18:04:50', '2023-11-18 18:04:50'),
(12, '4024007188743644', 'Myrl', 'Schultz', 'mavis.purdy@bergstrom.com', '567-924-0468', '1992-01-12', '2023-11-18 18:04:50', '2023-11-18 18:04:50'),
(13, '379004379143444', 'Juana', 'Farrell', 'sstroman@lang.biz', '1-930-253-8480', '1976-11-13', '2023-11-18 18:04:50', '2023-11-18 18:04:50'),
(14, '5554727095042450', 'Kenny', 'Deckow', 'turner.curtis@gmail.com', '(989) 200-4855', '1970-04-11', '2023-11-18 18:04:50', '2023-11-18 18:04:50'),
(15, '2625968090907543', 'Scarlett', 'Wilderman', 'kyla.ritchie@ruecker.net', '+1-754-789-7740', '1970-03-19', '2023-11-18 18:04:50', '2023-11-18 18:04:50'),
(16, '2630334452094250', 'Albertha', 'Kirlin', 'pacocha.devan@reichel.com', '+1.360.690.8867', '1999-03-17', '2023-11-18 18:04:50', '2023-11-18 18:04:50'),
(17, '3589396195035196', 'Seth', 'Aufderhar', 'freda.hirthe@gmail.com', '414.404.9657', '1988-08-09', '2023-11-18 18:04:50', '2023-11-18 18:04:50'),
(18, '5320703661826637', 'Richard', 'Swaniawski', 'althea20@hoeger.info', '463.388.1356', '2013-04-14', '2023-11-18 18:04:50', '2023-11-18 18:04:50'),
(19, '4532385266372', 'Tatyana', 'Sanford', 'thalia04@yahoo.com', '+1-973-707-8444', '1976-09-21', '2023-11-18 18:04:50', '2023-11-18 18:04:50'),
(20, '4485726061089526', 'Ephraim', 'Bradtke', 'omari.becker@mayer.biz', '817.713.2312', '1981-06-13', '2023-11-18 18:04:50', '2023-11-18 18:04:50'),
(21, '4539891951853922', 'Martin', 'Johns', 'hollis51@will.com', '628-468-1885', '1998-01-30', '2023-11-18 18:04:50', '2023-11-18 18:04:50'),
(22, '4539843639496', 'Lucienne', 'Kirlin', 'oberbrunner.mariah@oconner.org', '(509) 276-5508', '1992-03-26', '2023-11-18 18:04:50', '2023-11-18 18:04:50'),
(23, '3528573129690114', 'Carleton', 'Quigley', 'cassin.ally@gmail.com', '+1-773-918-7571', '2002-03-09', '2023-11-18 18:04:50', '2023-11-18 18:04:50'),
(24, '4539308051732', 'Virgie', 'Mosciski', 'aturcotte@gmail.com', '1-208-451-5283', '1991-07-12', '2023-11-18 18:04:50', '2023-11-18 18:04:50'),
(25, '6011816836891583', 'Oran', 'Rohan', 'ines06@hotmail.com', '+1 (424) 741-8284', '2000-11-04', '2023-11-18 18:04:50', '2023-11-18 18:04:50'),
(26, '4485333202195880', 'Mabelle', 'Lubowitz', 'jordan.torphy@nitzsche.com', '+1 (947) 293-2882', '1975-07-20', '2023-11-18 18:04:50', '2023-11-18 18:04:50'),
(27, '4539467923108404', 'Tia', 'Barrows', 'denis36@anderson.com', '272.713.5510', '2010-01-15', '2023-11-18 18:04:50', '2023-11-18 18:04:50'),
(28, '4716430285558', 'Darion', 'Kutch', 'suzanne.bayer@lueilwitz.com', '814.691.0394', '1985-04-28', '2023-11-18 18:04:50', '2023-11-18 18:04:50'),
(29, '2361271077583389', 'Adriana', 'Mayert', 'mazie43@hotmail.com', '843.876.5386', '1978-03-17', '2023-11-18 18:04:50', '2023-11-18 18:04:50'),
(30, '2328380869643020', 'Alvina', 'Ortiz', 'priscilla.kuhic@gottlieb.com', '(762) 535-5854', '1992-12-29', '2023-11-18 18:04:50', '2023-11-18 18:04:50'),
(31, '5250071166140357', 'Jakob', 'Jacobs', 'white.mikel@adams.com', '667.501.9519', '2014-06-26', '2023-11-18 18:04:50', '2023-11-18 18:04:50'),
(32, '6011531059557601', 'Ramon', 'Schulist', 'dstracke@morar.com', '551-913-1628', '2011-12-19', '2023-11-18 18:04:50', '2023-11-18 18:04:50'),
(33, '4024007162212509', 'Elwin', 'Waters', 'icrist@yahoo.com', '+1-971-597-6961', '2013-04-25', '2023-11-18 18:04:50', '2023-11-18 18:04:50'),
(34, '2221645243108710', 'Retha', 'Purdy', 'dterry@padberg.com', '(934) 835-9542', '2009-04-20', '2023-11-18 18:04:50', '2023-11-18 18:04:50'),
(35, '5429174942785671', 'Molly', 'Rau', 'rkris@yahoo.com', '1-540-471-8684', '2022-05-20', '2023-11-18 18:04:50', '2023-11-18 18:04:50'),
(36, '2552102237971488', 'Lila', 'Turcotte', 'trever.shanahan@hotmail.com', '(623) 623-9581', '1978-12-31', '2023-11-18 18:04:50', '2023-11-18 18:04:50'),
(37, '4916073301416402', 'Madelynn', 'Nader', 'wcrist@hotmail.com', '240-839-9355', '1995-01-26', '2023-11-18 18:04:50', '2023-11-18 18:04:50'),
(38, '4178375811783', 'Ludie', 'Dare', 'cassandre35@parker.com', '916-217-9602', '2009-04-13', '2023-11-18 18:04:50', '2023-11-18 18:04:50'),
(39, '5559290502083687', 'Gladys', 'Abbott', 'dayana02@hotmail.com', '(740) 618-8372', '2015-09-26', '2023-11-18 18:04:50', '2023-11-18 18:04:50'),
(40, '4485381407296169', 'Marion', 'Hartmann', 'wstreich@yahoo.com', '+13342748305', '2013-11-22', '2023-11-18 18:04:50', '2023-11-18 18:04:50'),
(41, '4024007149194', 'Jonatan', 'Littel', 'destany62@yahoo.com', '+1-636-809-7631', '2000-03-20', '2023-11-18 18:04:50', '2023-11-18 18:04:50'),
(42, '2221913814963529', 'Deshaun', 'Rice', 'shanelle.bins@friesen.com', '224.670.7679', '1972-08-26', '2023-11-18 18:04:50', '2023-11-18 18:04:50'),
(43, '4929841331853397', 'Henriette', 'Skiles', 'nikko.block@morissette.com', '1-785-701-0161', '1981-05-08', '2023-11-18 18:04:50', '2023-11-18 18:04:50'),
(44, '4539853153633817', 'Reva', 'Bashirian', 'lucy.toy@yahoo.com', '+1 (267) 322-7772', '2005-08-16', '2023-11-18 18:04:50', '2023-11-18 18:04:50'),
(45, '5314935087464423', 'Hilbert', 'Jenkins', 'keanu28@turcotte.biz', '+1 (929) 553-7988', '1981-03-04', '2023-11-18 18:04:50', '2023-11-18 18:04:50'),
(46, '4898336612750716', 'Fae', 'Waters', 'cordell.daugherty@wuckert.net', '+1-425-757-4824', '2019-05-27', '2023-11-18 18:04:50', '2023-11-18 18:04:50'),
(47, '6011141919191144', 'Laury', 'Kiehn', 'ubaldo94@lebsack.com', '+1-406-776-1748', '1982-08-10', '2023-11-18 18:04:50', '2023-11-18 18:04:50'),
(48, '3589324586464395', 'Moshe', 'Christiansen', 'stark.johnathan@jakubowski.net', '320-975-4751', '2020-04-12', '2023-11-18 18:04:50', '2023-11-18 18:04:50'),
(49, '4716397130242826', 'Joannie', 'Kertzmann', 'walter58@hotmail.com', '+1-380-902-0142', '2022-06-08', '2023-11-18 18:04:50', '2023-11-18 18:04:50'),
(51, '1143411099', 'Sebastian', 'Jimenez', 'sebas@gmail.com', '+57 324 250 4214', '1999-02-07', '2023-11-18 18:27:03', '2023-11-18 18:27:03');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumnos__clases`
--

CREATE TABLE `alumnos__clases` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_curso` bigint(20) UNSIGNED NOT NULL,
  `id_alumno` bigint(20) UNSIGNED NOT NULL,
  `total_asistencia` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `alumnos__clases`
--

INSERT INTO `alumnos__clases` (`id`, `id_curso`, `id_alumno`, `total_asistencia`, `created_at`, `updated_at`) VALUES
(1, 2, 2, 2, '2023-11-18 16:44:58', '2023-11-20 19:16:04'),
(2, 2, 3, 0, '2023-11-18 16:45:09', '2023-11-18 16:45:13'),
(5, 3, 2, 0, '2023-11-18 16:45:30', '2023-11-18 16:45:30'),
(6, 4, 2, 0, NULL, NULL),
(9, 4, 5, 0, '2023-11-18 23:22:01', '2023-11-18 23:22:01');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asistencias`
--

CREATE TABLE `asistencias` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fecha` date NOT NULL,
  `id_curso` bigint(20) UNSIGNED NOT NULL,
  `id_alumno` bigint(20) UNSIGNED NOT NULL,
  `estado` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `asistencias`
--

INSERT INTO `asistencias` (`id`, `fecha`, `id_curso`, `id_alumno`, `estado`, `created_at`, `updated_at`) VALUES
(1, '2023-11-17', 2, 2, 'F', '2023-11-20 19:15:10', '2023-11-20 19:15:10'),
(2, '2023-11-20', 2, 2, 'A', '2023-11-20 19:15:33', '2023-11-20 19:15:33'),
(4, '2023-11-19', 2, 2, 'T', '2023-11-20 19:16:04', '2023-11-20 19:16:04');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cursos`
--

CREATE TABLE `cursos` (
  `id_curso` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `cursos`
--

INSERT INTO `cursos` (`id_curso`, `nombre`, `created_at`, `updated_at`) VALUES
(2, 'Calculo Integral', '2023-11-18 19:15:58', '2023-11-18 19:15:58'),
(3, 'Calculo Vectorial', '2023-11-18 19:16:08', '2023-11-18 19:16:08'),
(4, 'Calculo Diferencial', '2023-11-18 19:16:18', '2023-11-18 19:16:18'),
(6, 'Estadistica y Probabilidad', '2023-11-18 19:16:54', '2023-11-18 19:16:54'),
(7, 'Ingles I', '2023-11-18 19:17:58', '2023-11-18 19:17:58'),
(8, 'Frances I', '2023-11-18 19:18:04', '2023-11-18 19:18:04'),
(9, 'Electiva Empresarial', '2023-11-18 19:26:15', '2023-11-18 19:26:15');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `docentes`
--

CREATE TABLE `docentes` (
  `id_docente` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `apellido` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `telefono` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `docentes`
--

INSERT INTO `docentes` (`id_docente`, `nombre`, `apellido`, `email`, `telefono`, `created_at`, `updated_at`) VALUES
(1, 'Winona', 'Robel', 'maybelle.mitchell@yahoo.com', '1-854-432-8549', '2023-11-18 20:07:38', '2023-11-18 20:07:38'),
(2, 'Darryl', 'Larkin', 'ebreitenberg@bernhard.com', '+1.864.321.8969', '2023-11-18 20:07:38', '2023-11-18 20:07:38'),
(3, 'Al', 'Roberts', 'ward70@wiza.com', '984.376.5710', '2023-11-18 20:07:38', '2023-11-18 20:07:38'),
(4, 'Vicente', 'Flatley', 'samanta.nikolaus@yahoo.com', '223.879.1203', '2023-11-18 20:07:39', '2023-11-18 20:07:39'),
(5, 'Leonor', 'Rau', 'rosalia.kunde@yahoo.com', '+1-385-677-7293', '2023-11-18 20:07:39', '2023-11-18 20:07:39'),
(6, 'Chelsey', 'Douglas', 'koelpin.tamia@borer.net', '732-495-1763', '2023-11-18 20:07:39', '2023-11-18 20:07:39'),
(7, 'Euna', 'Armstrong', 'larry84@borer.biz', '(458) 696-3565', '2023-11-18 20:07:39', '2023-11-18 20:07:39'),
(8, 'Isabella', 'West', 'oaltenwerth@rutherford.org', '+1 (406) 596-5562', '2023-11-18 20:07:39', '2023-11-18 20:07:39'),
(9, 'Aurelie', 'Leannon', 'zsteuber@gmail.com', '+1-541-560-1861', '2023-11-18 20:07:40', '2023-11-18 20:07:40'),
(10, 'Savanah', 'Cormier', 'awatsica@bruen.net', '+12609165274', '2023-11-18 20:07:40', '2023-11-18 20:07:40'),
(11, 'Giovanny', 'Considine', 'deon89@ward.com', '(463) 502-2376', '2023-11-18 20:07:40', '2023-11-18 20:07:40'),
(12, 'Nicklaus', 'Bartell', 'mathias23@hotmail.com', '(575) 679-0102', '2023-11-18 20:07:40', '2023-11-18 20:07:40'),
(13, 'Ian', 'Murazik', 'wrunolfsson@king.com', '667.247.1112', '2023-11-18 20:07:40', '2023-11-18 20:07:40'),
(14, 'Sunny', 'Becker', 'brigitte.balistreri@herman.info', '657-449-3977', '2023-11-18 20:07:40', '2023-11-18 20:07:40'),
(15, 'Gussie', 'Stokes', 'riley74@hotmail.com', '1-681-283-8526', '2023-11-18 20:07:40', '2023-11-18 20:07:40'),
(16, 'Tyra', 'Mosciski', 'jermey31@hotmail.com', '1-252-596-3583', '2023-11-18 20:07:40', '2023-11-18 20:07:40'),
(17, 'Jayson', 'Homenick', 'emiliano89@yahoo.com', '1-815-732-9504', '2023-11-18 20:07:40', '2023-11-18 20:07:40'),
(18, 'Irwin', 'Steuber', 'melody.dietrich@hotmail.com', '+1.865.836.9401', '2023-11-18 20:07:40', '2023-11-18 20:07:40'),
(19, 'Aurore', 'Windler', 'luella74@yahoo.com', '1-984-367-3660', '2023-11-18 20:07:40', '2023-11-18 20:07:40'),
(20, 'Jennyfer', 'Bergnaum', 'srolfson@hotmail.com', '+1-602-412-0755', '2023-11-18 20:07:40', '2023-11-18 20:07:40');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(11, '2014_10_12_000000_create_users_table', 1),
(12, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(13, '2019_08_19_000000_create_failed_jobs_table', 1),
(14, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(15, '2023_11_18_124635_create_alumnos_table', 1),
(16, '2023_11_18_135940_create_cursos_table', 2),
(17, '2023_11_18_150353_create_docentes_table', 3),
(18, '2023_11_18_161433_create_alumnos__clases_table', 4),
(20, '2023_11_20_092446_create_asistencias_table', 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  ADD PRIMARY KEY (`id_alumno`);

--
-- Indices de la tabla `alumnos__clases`
--
ALTER TABLE `alumnos__clases`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `alumnos__clases_id_curso_id_alumno_unique` (`id_curso`,`id_alumno`),
  ADD KEY `alumnos__clases_id_alumno_foreign` (`id_alumno`);

--
-- Indices de la tabla `asistencias`
--
ALTER TABLE `asistencias`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `asistencias_id_curso_id_alumno_fecha_unique` (`id_curso`,`id_alumno`,`fecha`),
  ADD KEY `asistencias_id_alumno_foreign` (`id_alumno`);

--
-- Indices de la tabla `cursos`
--
ALTER TABLE `cursos`
  ADD PRIMARY KEY (`id_curso`);

--
-- Indices de la tabla `docentes`
--
ALTER TABLE `docentes`
  ADD PRIMARY KEY (`id_docente`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

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
-- AUTO_INCREMENT de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  MODIFY `id_alumno` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT de la tabla `alumnos__clases`
--
ALTER TABLE `alumnos__clases`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `asistencias`
--
ALTER TABLE `asistencias`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `cursos`
--
ALTER TABLE `cursos`
  MODIFY `id_curso` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `docentes`
--
ALTER TABLE `docentes`
  MODIFY `id_docente` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `alumnos__clases`
--
ALTER TABLE `alumnos__clases`
  ADD CONSTRAINT `alumnos__clases_id_alumno_foreign` FOREIGN KEY (`id_alumno`) REFERENCES `alumnos` (`id_alumno`) ON DELETE CASCADE,
  ADD CONSTRAINT `alumnos__clases_id_curso_foreign` FOREIGN KEY (`id_curso`) REFERENCES `cursos` (`id_curso`) ON DELETE CASCADE;

--
-- Filtros para la tabla `asistencias`
--
ALTER TABLE `asistencias`
  ADD CONSTRAINT `asistencias_id_alumno_foreign` FOREIGN KEY (`id_alumno`) REFERENCES `alumnos` (`id_alumno`) ON DELETE CASCADE,
  ADD CONSTRAINT `asistencias_id_curso_foreign` FOREIGN KEY (`id_curso`) REFERENCES `cursos` (`id_curso`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
