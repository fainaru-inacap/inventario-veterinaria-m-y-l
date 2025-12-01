-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Servidor: db
-- Tiempo de generación: 01-12-2025 a las 05:10:43
-- Versión del servidor: 10.11.15-MariaDB-ubu2204
-- Versión de PHP: 8.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

CREATE DATABASE IF NOT EXISTS `inventarioVeterinariaMyL`;
USE `inventarioVeterinariaMyL`;
/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `inventarioVeterinariaMyL`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add Producto', 7, 'add_producto'),
(26, 'Can change Producto', 7, 'change_producto'),
(27, 'Can delete Producto', 7, 'delete_producto'),
(28, 'Can view Producto', 7, 'view_producto'),
(29, 'Can add Categoría', 8, 'add_categoria'),
(30, 'Can change Categoría', 8, 'change_categoria'),
(31, 'Can delete Categoría', 8, 'delete_categoria'),
(32, 'Can view Categoría', 8, 'view_categoria');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$1000000$H57yYNmwrkFocblbigLusd$mFP/ok8hcoZsDfNzNQhc62JbyNBpK/kq5hOYx9chOsk=', '2025-12-01 05:06:27.933720', 1, 'matiasortegasepulveda@gmail.com', 'Matias', 'Ortega', 'matiasortegasepulveda@gmail.com', 1, 1, '2025-11-30 06:34:19.785669'),
(2, 'pbkdf2_sha256$1000000$HMpXrAvndg7GATxX54ZJkA$1XvE1R/+gJaU7+o36WMxAuIp/6WSt/9yEF7uV2fIuRM=', '2025-12-01 04:02:21.924346', 0, 'matiasortega@orsep.cl', 'Matias', 'Ortega', 'matiasortega@orsep.cl', 1, 1, '2025-11-30 07:04:44.900123'),
(6, 'pbkdf2_sha256$1000000$V9EVrDsQPsnFwLI2vGYJKO$L4BL7Jeo/XNi9KhAqxwzq3OlpLLp0pztlMoe0ZlkhhQ=', '2025-12-01 04:06:29.696319', 0, 'luisfuentes@gmail.com', 'Luis', 'Fuentes', 'luisfuentes@gmail.com', 0, 1, '2025-12-01 04:04:14.534296'),
(7, 'pbkdf2_sha256$1000000$wqBHDBjtzKdQILJE5NQ8I4$D1qOX57/c4l7RrWnkhlLnECjJ7OVQYqvNhQ1Z5Vi9Ys=', '2025-12-01 04:13:23.284682', 0, 'manuel@gmail.com', 'Manuel', 'Letelier', 'manuel@gmail.com', 0, 1, '2025-12-01 04:04:40.343790');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(8, 'gestorProducts', 'categoria'),
(7, 'gestorProducts', 'producto'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2025-11-30 06:11:41.175011'),
(2, 'auth', '0001_initial', '2025-11-30 06:11:41.300570'),
(3, 'admin', '0001_initial', '2025-11-30 06:11:41.329822'),
(4, 'admin', '0002_logentry_remove_auto_add', '2025-11-30 06:11:41.333438'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2025-11-30 06:11:41.337354'),
(6, 'contenttypes', '0002_remove_content_type_name', '2025-11-30 06:11:41.361223'),
(7, 'auth', '0002_alter_permission_name_max_length', '2025-11-30 06:11:41.371495'),
(8, 'auth', '0003_alter_user_email_max_length', '2025-11-30 06:11:41.381614'),
(9, 'auth', '0004_alter_user_username_opts', '2025-11-30 06:11:41.384597'),
(10, 'auth', '0005_alter_user_last_login_null', '2025-11-30 06:11:41.395074'),
(11, 'auth', '0006_require_contenttypes_0002', '2025-11-30 06:11:41.396412'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2025-11-30 06:11:41.399692'),
(13, 'auth', '0008_alter_user_username_max_length', '2025-11-30 06:11:41.408405'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2025-11-30 06:11:41.415488'),
(15, 'auth', '0010_alter_group_name_max_length', '2025-11-30 06:11:41.424616'),
(16, 'auth', '0011_update_proxy_permissions', '2025-11-30 06:11:41.429751'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2025-11-30 06:11:41.437603'),
(18, 'sessions', '0001_initial', '2025-11-30 06:11:41.448233'),
(19, 'gestorProducts', '0001_initial', '2025-11-30 07:38:30.990932'),
(20, 'gestorProducts', '0002_producto_usuario', '2025-11-30 07:48:11.034896');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('anlqh5ci5r5xcvfzblah6c4732euotwn', '.eJxVjEsOwjAMBe-SNYoSmtQOS_Y9Q2U7Li2gROpnhbg7VOoCtm9m3sv0tK1jvy0691M2F-PN6XdjkoeWHeQ7lVu1Uss6T2x3xR50sV3N-rwe7t_BSMv4rdWzsLYcKUsYnCPwSYYBFMgFigIMCNkRthn5zIyYPGIEDU2KEhvz_gAXyDhx:1vPw7H:VVpb8o3MleGFhFhgqdrD_-C8n6LyejTETm0slByoOhA', '2025-12-15 05:06:27.935929'),
('anmt774giv43c8u98tyeq4fkdhwuxybl', '.eJxVjMsOwiAQRf-FtSE8OgVcuvcbyDAMUjU0Ke3K-O_apAvd3nPOfYmI21rj1nmJUxZn4cTpd0tID247yHdst1nS3NZlSnJX5EG7vM6Zn5fD_Tuo2Ou3Zm08OUgByQVX8mAhB9SDZV8IAIiMVyGNRY-JigOnlDZoLQBnA8GL9wfoSTeK:1vPvHv:MwIMExoiSLHKGNzyYJPeJHOPemNaEHN-MbNpN0N_EJc', '2025-12-15 04:13:23.286931'),
('nr1br7t0t80bpy0r10ijxg6ckyg58pqr', '.eJxVjMsOwiAQRf-FtSGFykBduu83kBmYkaqBpI-V8d-1SRe6veec-1IRt7XEbeE5TlldFKjT70aYHlx3kO9Yb02nVtd5Ir0r-qCLHlvm5_Vw_w4KLuVbiydhDgZSN7hEQNh10FvwwNkLGyMukA1Cjrw9M2ASgDCIN-KxN0m9PwDiOHo:1vPvBF:HzjHLaaZj8GjvjWr68NJvLQfvsh1Yx_0dLtrEyyF16U', '2025-12-15 04:06:29.697760');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `gestorProducts_categoria`
--

CREATE TABLE `gestorProducts_categoria` (
  `id` bigint(20) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `descripcion` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `gestorProducts_categoria`
--

INSERT INTO `gestorProducts_categoria` (`id`, `nombre`, `descripcion`) VALUES
(7, 'Alimentos', 'Alimento mascota'),
(8, 'Juguetes', 'Juguete mascotas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `gestorProducts_producto`
--

CREATE TABLE `gestorProducts_producto` (
  `id` bigint(20) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `precio` decimal(10,0) NOT NULL,
  `descripcion` longtext DEFAULT NULL,
  `categoria_id` bigint(20) NOT NULL,
  `usuario_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `gestorProducts_producto`
--

INSERT INTO `gestorProducts_producto` (`id`, `nombre`, `precio`, `descripcion`, `categoria_id`, `usuario_id`) VALUES
(3, 'Dogxtreme Puppy pollo y arroz', 14990, 'Elaborado para cachorro', 7, 6),
(4, 'Nath adulto Medium sabor pollo y arroz', 21990, 'Nath ha elaborado una comida para perros adultos de razas medianas que pesan entre 11 y 25 kg', 7, 6),
(5, 'Bravery Chicken Adult alimento para perro', 49592, 'Alimento completo para perros adultos de razas medianas y grandes', 7, 6),
(6, 'Fit Formula Adulto alimento para perro', 35242, 'Alimento premium para tu perro adulto.', 7, 6),
(7, 'Bravery Pork Adult alimento para perro', 53592, 'Alimento completo para perros adultos de razas medianas y grandes', 7, 6),
(8, 'Nath Cat adulto esterilizado sabor pollo y arroz', 15393, 'Comida para gatos esterilizados en edad adulta', 7, 7),
(9, 'Bravery Chicken Adult Cat alimento para gato', 41592, 'Alimento completo para gatos adultos con pollo', 7, 7),
(10, 'Set de juego dental para perros', 4990, 'Conjunto de 4 mordedores variados para estimular distintos tipos de juego', 8, 7),
(11, 'Kong Classic', 14990, 'Juego Kong', 8, 7),
(12, 'Electric dumbbell Juguete para perros', 2397, 'Juguete para perros en forma de mancuerna', 8, 7);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indices de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indices de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indices de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indices de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indices de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indices de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indices de la tabla `gestorProducts_categoria`
--
ALTER TABLE `gestorProducts_categoria`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nombre` (`nombre`);

--
-- Indices de la tabla `gestorProducts_producto`
--
ALTER TABLE `gestorProducts_producto`
  ADD PRIMARY KEY (`id`),
  ADD KEY `gestorProducts_produ_categoria_id_a61698df_fk_gestorPro` (`categoria_id`),
  ADD KEY `gestorProducts_producto_usuario_id_25ab3c9a_fk_auth_user_id` (`usuario_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `gestorProducts_categoria`
--
ALTER TABLE `gestorProducts_categoria`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `gestorProducts_producto`
--
ALTER TABLE `gestorProducts_producto`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Filtros para la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Filtros para la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `gestorProducts_producto`
--
ALTER TABLE `gestorProducts_producto`
  ADD CONSTRAINT `gestorProducts_produ_categoria_id_a61698df_fk_gestorPro` FOREIGN KEY (`categoria_id`) REFERENCES `gestorProducts_categoria` (`id`),
  ADD CONSTRAINT `gestorProducts_producto_usuario_id_25ab3c9a_fk_auth_user_id` FOREIGN KEY (`usuario_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
