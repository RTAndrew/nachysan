-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: 17-Mar-2018 às 05:38
-- Versão do servidor: 5.7.19
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nachysan`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `categorias`
--

DROP TABLE IF EXISTS `categorias`;
CREATE TABLE `categorias` (
  `id` int(10) UNSIGNED NOT NULL,
  `nome` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Extraindo dados da tabela `categorias`
--

INSERT INTO `categorias` (`id`, `nome`, `slug`) VALUES
(1, 'Para Elas', 'para-elas'),
(2, 'Para Eles', 'para-eles'),
(3, 'Diversos', 'diversos');

-- --------------------------------------------------------

--
-- Estrutura da tabela `categoria_producto`
--

DROP TABLE IF EXISTS `categoria_producto`;
CREATE TABLE `categoria_producto` (
  `id` int(10) UNSIGNED NOT NULL,
  `producto_id` int(10) UNSIGNED NOT NULL,
  `categoria_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Extraindo dados da tabela `categoria_producto`
--

INSERT INTO `categoria_producto` (`id`, `producto_id`, `categoria_id`) VALUES
(1, 1, 1),
(2, 3, 1),
(3, 18, 3);

-- --------------------------------------------------------

--
-- Estrutura da tabela `categoria_sub_categoria`
--

DROP TABLE IF EXISTS `categoria_sub_categoria`;
CREATE TABLE `categoria_sub_categoria` (
  `id` int(10) UNSIGNED NOT NULL,
  `categoria_id` int(10) UNSIGNED NOT NULL,
  `sub_categoria_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Extraindo dados da tabela `categoria_sub_categoria`
--

INSERT INTO `categoria_sub_categoria` (`id`, `categoria_id`, `sub_categoria_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 2, 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estrutura da tabela `data_rows`
--

DROP TABLE IF EXISTS `data_rows`;
CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text COLLATE utf8mb4_unicode_ci,
  `order` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Extraindo dados da tabela `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '', 1),
(2, 1, 'author_id', 'text', 'Author', 1, 0, 1, 1, 0, 1, '', 2),
(3, 1, 'category_id', 'text', 'Category', 1, 0, 1, 1, 1, 0, '', 3),
(4, 1, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '', 4),
(5, 1, 'excerpt', 'text_area', 'excerpt', 1, 0, 1, 1, 1, 1, '', 5),
(6, 1, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, '', 6),
(7, 1, 'image', 'image', 'Post Image', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 7),
(8, 1, 'slug', 'text', 'slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true}}', 8),
(9, 1, 'meta_description', 'text_area', 'meta_description', 1, 0, 1, 1, 1, 1, '', 9),
(10, 1, 'meta_keywords', 'text_area', 'meta_keywords', 1, 0, 1, 1, 1, 1, '', 10),
(11, 1, 'status', 'select_dropdown', 'status', 1, 1, 1, 1, 1, 1, '{\"default\":\"DRAFT\",\"options\":{\"PUBLISHED\":\"published\",\"DRAFT\":\"draft\",\"PENDING\":\"pending\"}}', 11),
(12, 1, 'created_at', 'timestamp', 'created_at', 0, 1, 1, 0, 0, 0, '', 12),
(13, 1, 'updated_at', 'timestamp', 'updated_at', 0, 0, 0, 0, 0, 0, '', 13),
(14, 2, 'id', 'number', 'id', 1, 0, 0, 0, 0, 0, '', 1),
(15, 2, 'author_id', 'text', 'author_id', 1, 0, 0, 0, 0, 0, '', 2),
(16, 2, 'title', 'text', 'title', 1, 1, 1, 1, 1, 1, '', 3),
(17, 2, 'excerpt', 'text_area', 'excerpt', 1, 0, 1, 1, 1, 1, '', 4),
(18, 2, 'body', 'rich_text_box', 'body', 1, 0, 1, 1, 1, 1, '', 5),
(19, 2, 'slug', 'text', 'slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\"}}', 6),
(20, 2, 'meta_description', 'text', 'meta_description', 1, 0, 1, 1, 1, 1, '', 7),
(21, 2, 'meta_keywords', 'text', 'meta_keywords', 1, 0, 1, 1, 1, 1, '', 8),
(22, 2, 'status', 'select_dropdown', 'status', 1, 1, 1, 1, 1, 1, '{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}', 9),
(23, 2, 'created_at', 'timestamp', 'created_at', 1, 1, 1, 0, 0, 0, '', 10),
(24, 2, 'updated_at', 'timestamp', 'updated_at', 1, 0, 0, 0, 0, 0, '', 11),
(25, 2, 'image', 'image', 'image', 0, 1, 1, 1, 1, 1, '', 12),
(26, 3, 'id', 'number', 'id', 1, 0, 0, 0, 0, 0, '', 1),
(27, 3, 'name', 'text', 'name', 1, 1, 1, 1, 1, 1, '', 2),
(28, 3, 'email', 'text', 'email', 1, 1, 1, 1, 1, 1, '', 3),
(29, 3, 'password', 'password', 'password', 0, 0, 0, 1, 1, 0, '', 4),
(30, 3, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"roles\",\"pivot\":\"0\"}', 10),
(31, 3, 'remember_token', 'text', 'remember_token', 0, 0, 0, 0, 0, 0, '', 5),
(32, 3, 'created_at', 'timestamp', 'created_at', 0, 1, 1, 0, 0, 0, '', 6),
(33, 3, 'updated_at', 'timestamp', 'updated_at', 0, 0, 0, 0, 0, 0, '', 7),
(34, 3, 'avatar', 'image', 'avatar', 0, 1, 1, 1, 1, 1, '', 8),
(35, 5, 'id', 'number', 'id', 1, 0, 0, 0, 0, 0, '', 1),
(36, 5, 'name', 'text', 'name', 1, 1, 1, 1, 1, 1, '', 2),
(37, 5, 'created_at', 'timestamp', 'created_at', 0, 0, 0, 0, 0, 0, '', 3),
(38, 5, 'updated_at', 'timestamp', 'updated_at', 0, 0, 0, 0, 0, 0, '', 4),
(39, 4, 'id', 'number', 'id', 1, 0, 0, 0, 0, 0, '', 1),
(40, 4, 'parent_id', 'select_dropdown', 'parent_id', 0, 0, 1, 1, 1, 1, '{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}', 2),
(41, 4, 'order', 'text', 'order', 1, 1, 1, 1, 1, 1, '{\"default\":1}', 3),
(42, 4, 'name', 'text', 'name', 1, 1, 1, 1, 1, 1, '', 4),
(43, 4, 'slug', 'text', 'slug', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\"}}', 5),
(44, 4, 'created_at', 'timestamp', 'created_at', 0, 0, 1, 0, 0, 0, '', 6),
(45, 4, 'updated_at', 'timestamp', 'updated_at', 0, 0, 0, 0, 0, 0, '', 7),
(46, 6, 'id', 'number', 'id', 1, 0, 0, 0, 0, 0, '', 1),
(47, 6, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '', 2),
(48, 6, 'created_at', 'timestamp', 'created_at', 0, 0, 0, 0, 0, 0, '', 3),
(49, 6, 'updated_at', 'timestamp', 'updated_at', 0, 0, 0, 0, 0, 0, '', 4),
(50, 6, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, '', 5),
(51, 1, 'seo_title', 'text', 'seo_title', 0, 1, 1, 1, 1, 1, '', 14),
(52, 1, 'featured', 'checkbox', 'featured', 1, 1, 1, 1, 1, 1, '', 15),
(53, 3, 'role_id', 'text', 'role_id', 1, 1, 1, 1, 1, 1, '', 9),
(54, 7, 'id', 'checkbox', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(55, 7, 'nome', 'text', 'Nome', 1, 1, 1, 1, 1, 1, NULL, 2),
(56, 7, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"nome\",\"forceUpdate\":true}}', 3),
(57, 8, 'id', 'checkbox', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(58, 8, 'nome', 'text', 'Nome', 1, 1, 1, 1, 1, 1, NULL, 2),
(59, 8, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"nome\",\"forceUpdate\":true}}', 3),
(60, 9, 'id', 'checkbox', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(61, 9, 'pais', 'text', 'Nome do País', 1, 1, 1, 1, 1, 1, NULL, 2),
(62, 9, 'endereco', 'text', 'Endereço', 1, 1, 1, 1, 1, 1, NULL, 3),
(63, 9, 'contacto_id', 'select_dropdown', 'Contacto Primário', 1, 1, 1, 1, 1, 1, NULL, 4),
(64, 9, 'info_pai_belongsto_num_contacto_relationship', 'relationship', 'Contacto Primário', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\num_contacto\",\"table\":\"num_contactos\",\"type\":\"belongsTo\",\"column\":\"contacto_id\",\"key\":\"id\",\"label\":\"contacto\",\"pivot_table\":\"categoria_producto\",\"pivot\":\"0\"}', 5),
(65, 10, 'id', 'checkbox', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(66, 10, 'nome', 'text', 'Nome', 1, 1, 1, 1, 1, 1, NULL, 2),
(67, 10, 'funcao', 'text', 'Função', 1, 1, 1, 1, 1, 1, NULL, 3),
(68, 10, 'descricao', 'text_area', 'Descrição', 1, 1, 1, 1, 1, 1, NULL, 4),
(69, 10, 'imagem', 'image', 'Imagem', 1, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"720\",\"height\":null},\"quality\":\"70%\",\"upsize\":false}', 5),
(70, 10, 'facebook_link', 'text', 'Facebook Link', 0, 1, 1, 1, 1, 1, NULL, 6),
(71, 10, 'instagram_link', 'text', 'Instagram Link', 0, 1, 1, 1, 1, 1, NULL, 7),
(72, 10, 'youtube_link', 'text', 'Youtube Link', 0, 1, 1, 1, 1, 1, NULL, 8),
(73, 11, 'id', 'checkbox', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(74, 11, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, NULL, 3),
(75, 11, 'descricao_tipo_id', 'select_dropdown', 'Tipo', 0, 1, 1, 1, 1, 1, NULL, 2),
(76, 11, 'email_belongsto_descricao_tipo_relationship', 'relationship', 'descricao_tipos', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\descricao_tipos\",\"table\":\"descricao_tipos\",\"type\":\"belongsTo\",\"column\":\"descricao_tipo_id\",\"key\":\"id\",\"label\":\"nome\",\"pivot_table\":\"categoria_producto\",\"pivot\":\"0\"}', 4),
(77, 12, 'id', 'checkbox', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(78, 12, 'nome', 'text', 'Nome', 1, 1, 1, 1, 1, 1, NULL, 4),
(79, 12, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"nome\",\"forceUpdate\":true}}', 5),
(80, 12, 'descricao', 'rich_text_box', 'Descrição', 1, 0, 1, 1, 1, 1, NULL, 6),
(81, 12, 'preco', 'number', 'Preço', 1, 1, 1, 1, 1, 1, NULL, 7),
(82, 12, 'preco_promocao', 'number', 'Preço Promoção', 0, 1, 1, 1, 1, 1, NULL, 8),
(83, 12, 'quantidade', 'number', 'Qtd.', 1, 1, 1, 1, 1, 1, NULL, 9),
(84, 12, 'thumbnail', 'image', 'Thumbnail', 1, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"720\",\"height\":null},\"quality\":\"70%\",\"upsize\":false}', 10),
(85, 12, 'imagens', 'multiple_images', 'Imagens', 0, 0, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":null},\"quality\":\"70%\",\"upsize\":false}', 11),
(86, 12, 'views', 'number', 'Visualizações', 1, 1, 1, 0, 0, 0, NULL, 12),
(87, 12, 'sub_categoria_id', 'select_dropdown', 'Subcategoria', 0, 1, 1, 1, 1, 1, NULL, 3),
(88, 12, 'estado_producto_id', 'select_dropdown', 'Estado', 0, 0, 1, 1, 1, 1, NULL, 2),
(89, 12, 'created_at', 'timestamp', 'Criado Em', 0, 1, 1, 0, 0, 0, NULL, 13),
(90, 12, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 14),
(91, 12, 'producto_belongsto_sub_categoria_relationship', 'relationship', 'Subcategoria', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\sub_categoria\",\"table\":\"sub_categorias\",\"type\":\"belongsTo\",\"column\":\"sub_categoria_id\",\"key\":\"id\",\"label\":\"nome\",\"pivot_table\":\"categoria_producto\",\"pivot\":\"0\"}', 15),
(92, 12, 'producto_belongsto_estado_producto_relationship', 'relationship', 'Estado', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\estado_producto\",\"table\":\"estado_productos\",\"type\":\"belongsTo\",\"column\":\"estado_producto_id\",\"key\":\"id\",\"label\":\"nome\",\"pivot_table\":\"categoria_producto\",\"pivot\":\"0\"}', 16),
(93, 12, 'producto_belongstomany_categoria_producto_relationship', 'relationship', 'Categoria', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\categoria\",\"table\":\"categorias\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"nome\",\"pivot_table\":\"categoria_producto\",\"pivot\":\"1\"}', 17),
(94, 8, 'categoria_belongstomany_sub_categoria_relationship', 'relationship', 'sub_categorias', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\sub_categoria\",\"table\":\"sub_categorias\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"nome\",\"pivot_table\":\"categoria_sub_categoria\",\"pivot\":\"1\"}', 4),
(95, 13, 'id', 'checkbox', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(96, 13, 'contacto', 'text', 'Contacto', 1, 1, 1, 1, 1, 1, NULL, 3),
(97, 13, 'descricao_tipo_id', 'checkbox', 'Tipo', 0, 1, 1, 1, 1, 1, NULL, 2),
(98, 13, 'num_contacto_belongsto_descricao_tipo_relationship', 'relationship', 'descricao_tipos', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\descricao_tipos\",\"table\":\"descricao_tipos\",\"type\":\"belongsTo\",\"column\":\"descricao_tipo_id\",\"key\":\"id\",\"label\":\"nome\",\"pivot_table\":\"categoria_producto\",\"pivot\":\"0\"}', 4),
(102, 15, 'id', 'checkbox', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(103, 15, 'nome', 'text', 'Nome', 1, 1, 1, 1, 1, 1, NULL, 2),
(104, 15, 'endereco_url', 'text', 'Endereco Url', 1, 1, 1, 1, 1, 1, NULL, 3);

-- --------------------------------------------------------

--
-- Estrutura da tabela `data_types`
--

DROP TABLE IF EXISTS `data_types`;
CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Extraindo dados da tabela `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `created_at`, `updated_at`) VALUES
(1, 'posts', 'posts', 'Post', 'Posts', 'voyager-news', 'TCG\\Voyager\\Models\\Post', 'TCG\\Voyager\\Policies\\PostPolicy', '', '', 1, 0, '2018-03-14 01:31:05', '2018-03-14 01:31:05'),
(2, 'pages', 'pages', 'Page', 'Pages', 'voyager-file-text', 'TCG\\Voyager\\Models\\Page', NULL, '', '', 1, 0, '2018-03-14 01:31:06', '2018-03-14 01:31:06'),
(3, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', '', '', 1, 0, '2018-03-14 01:31:06', '2018-03-14 01:31:06'),
(4, 'categories', 'categories', 'Category', 'Categories', 'voyager-categories', 'TCG\\Voyager\\Models\\Category', NULL, '', '', 1, 0, '2018-03-14 01:31:06', '2018-03-14 01:31:06'),
(5, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, '2018-03-14 01:31:06', '2018-03-14 01:31:06'),
(6, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, '', '', 1, 0, '2018-03-14 01:31:06', '2018-03-14 01:31:06'),
(7, 'sub_categorias', 'sub-categorias', 'Sub Categoria', 'Sub Categorias', NULL, 'App\\sub_categoria', NULL, NULL, NULL, 1, 0, '2018-03-14 09:13:02', '2018-03-14 09:13:02'),
(8, 'categorias', 'categorias', 'Categoria', 'Categorias', NULL, 'App\\Categoria', NULL, NULL, NULL, 1, 0, '2018-03-14 09:18:18', '2018-03-14 09:18:18'),
(9, 'info_pais', 'info-pais', 'Informação do País', 'Informação dos Países', 'voyager-world', 'App\\info_pais', NULL, NULL, 'Todas as informações de um determinado país em que pode-se efectuar as vendas.', 1, 0, '2018-03-14 09:22:57', '2018-03-14 09:28:28'),
(10, 'perfil_staffs', 'perfil-staff', 'L\'Équipe', 'Perfil Staffs', 'voyager-people', 'App\\PerfilStaff', NULL, NULL, NULL, 1, 0, '2018-03-14 09:35:34', '2018-03-14 09:35:34'),
(11, 'emails', 'emails', 'Email', 'Emails', 'voyager-mail', 'App\\Email', NULL, NULL, NULL, 1, 0, '2018-03-14 09:44:36', '2018-03-14 22:27:43'),
(12, 'productos', 'productos', 'Producto', 'Productos', NULL, 'App\\Producto', NULL, NULL, NULL, 1, 0, '2018-03-14 22:50:49', '2018-03-14 22:50:49'),
(13, 'num_contactos', 'num-contactos', 'Contacto', 'Num Contactos', NULL, 'App\\num_contacto', NULL, NULL, NULL, 1, 0, '2018-03-15 00:50:58', '2018-03-15 00:50:58'),
(15, 'rede_social', 'rede-social', 'Rede Social', 'Rede Socials', NULL, 'App\\rede_social', NULL, NULL, NULL, 1, 0, '2018-03-15 19:24:28', '2018-03-15 19:24:28');

-- --------------------------------------------------------

--
-- Estrutura da tabela `descricao_tipos`
--

DROP TABLE IF EXISTS `descricao_tipos`;
CREATE TABLE `descricao_tipos` (
  `id` int(10) UNSIGNED NOT NULL,
  `nome` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descricao` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Extraindo dados da tabela `descricao_tipos`
--

INSERT INTO `descricao_tipos` (`id`, `nome`, `descricao`) VALUES
(1, 'Primário', 'Principal a ser sempre utilizado'),
(2, 'Secundário', 'Resto a ser utilizados');

-- --------------------------------------------------------

--
-- Estrutura da tabela `emails`
--

DROP TABLE IF EXISTS `emails`;
CREATE TABLE `emails` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descricao_tipo_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Extraindo dados da tabela `emails`
--

INSERT INTO `emails` (`id`, `email`, `descricao_tipo_id`) VALUES
(1, 'nachysan@gmail.com', 1),
(2, 'nachysan@site.com', 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `estado_productos`
--

DROP TABLE IF EXISTS `estado_productos`;
CREATE TABLE `estado_productos` (
  `id` int(10) UNSIGNED NOT NULL,
  `nome` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descricao` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Extraindo dados da tabela `estado_productos`
--

INSERT INTO `estado_productos` (`id`, `nome`, `descricao`) VALUES
(1, 'Disponível', 'Productos que estão actualmente disponíveis para aquisição'),
(2, 'Indisponível', 'Productos que não se encontram disponíveis, mas que porém podem ser vistos através da galeria');

-- --------------------------------------------------------

--
-- Estrutura da tabela `info_pais`
--

DROP TABLE IF EXISTS `info_pais`;
CREATE TABLE `info_pais` (
  `id` int(10) UNSIGNED NOT NULL,
  `pais` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `endereco` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `contacto_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Extraindo dados da tabela `info_pais`
--

INSERT INTO `info_pais` (`id`, `pais`, `endereco`, `contacto_id`) VALUES
(1, 'Angola', 'Luanda, Nova Vida, Rua 4, Predio 22, Apt. 12', 1),
(2, 'Namibia', 'Windhoek, South\'s Village, 12th Street Boys', 3);

-- --------------------------------------------------------

--
-- Estrutura da tabela `menus`
--

DROP TABLE IF EXISTS `menus`;
CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Extraindo dados da tabela `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2018-03-14 01:31:16', '2018-03-14 01:31:16'),
(2, 'user', '2018-03-15 01:07:11', '2018-03-15 01:07:11');

-- --------------------------------------------------------

--
-- Estrutura da tabela `menu_items`
--

DROP TABLE IF EXISTS `menu_items`;
CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Extraindo dados da tabela `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2018-03-14 01:31:16', '2018-03-14 01:31:16', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 4, '2018-03-14 01:31:16', '2018-03-14 09:07:37', 'voyager.media.index', NULL),
(4, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 3, '2018-03-14 01:31:17', '2018-03-14 01:31:17', 'voyager.users.index', NULL),
(7, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 2, '2018-03-14 01:31:17', '2018-03-14 01:31:17', 'voyager.roles.index', NULL),
(8, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 12, '2018-03-14 01:31:17', '2018-03-15 00:58:29', NULL, NULL),
(9, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 8, 1, '2018-03-14 01:31:18', '2018-03-14 09:07:41', 'voyager.menus.index', NULL),
(10, 1, 'Database', '', '_self', 'voyager-data', NULL, NULL, 11, '2018-03-14 01:31:18', '2018-03-15 00:58:29', 'voyager.database.index', NULL),
(11, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 8, 2, '2018-03-14 01:31:18', '2018-03-14 09:07:41', 'voyager.compass.index', NULL),
(12, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 13, '2018-03-14 01:31:18', '2018-03-15 00:58:29', 'voyager.settings.index', NULL),
(13, 1, 'Hooks', '', '_self', 'voyager-hook', NULL, 8, 3, '2018-03-14 01:31:26', '2018-03-14 09:07:42', 'voyager.hooks', NULL),
(14, 1, 'Sub Categorias', '/admin/sub-categorias', '_self', 'voyager-categories', '#000000', 19, 2, '2018-03-14 09:13:03', '2018-03-15 19:14:26', NULL, ''),
(15, 1, 'Categorias', '/admin/categorias', '_self', 'voyager-folder', '#000000', 19, 1, '2018-03-14 09:18:19', '2018-03-14 22:36:20', NULL, ''),
(16, 1, 'Informação dos Países', '/admin/info-pais', '_self', 'voyager-world', '#000000', NULL, 6, '2018-03-14 09:22:57', '2018-03-15 00:59:25', NULL, ''),
(17, 1, 'L\'Équipe  - Membros', '/admin/perfil-staff', '_self', 'voyager-people', '#000000', NULL, 7, '2018-03-14 09:35:35', '2018-03-15 00:59:25', NULL, ''),
(18, 1, 'Emails', '/admin/emails', '_self', 'voyager-mail', '#000000', NULL, 8, '2018-03-14 09:44:37', '2018-03-15 00:59:25', NULL, ''),
(19, 1, 'Productos', '', '_self', 'voyager-list', '#000000', NULL, 5, '2018-03-14 22:33:13', '2018-03-14 22:35:54', NULL, ''),
(20, 1, 'Lista de Productos', '/admin/productos', '_self', 'voyager-bag', '#000000', 19, 3, '2018-03-14 22:50:50', '2018-03-15 19:14:26', NULL, ''),
(21, 1, 'Contactos', '/admin/num-contactos', '_self', 'voyager-telephone', '#000000', NULL, 9, '2018-03-15 00:50:58', '2018-03-15 00:59:25', NULL, ''),
(23, 1, 'Rede Socials', '/admin/rede-social', '_self', 'voyager-heart', '#000000', NULL, 10, '2018-03-15 19:24:28', '2018-03-15 19:26:22', NULL, '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Extraindo dados da tabela `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_01_01_000000_create_pages_table', 1),
(6, '2016_01_01_000000_create_posts_table', 1),
(7, '2016_02_15_204651_create_categories_table', 1),
(8, '2016_05_19_173453_create_menu_table', 1),
(9, '2016_10_21_190000_create_roles_table', 1),
(10, '2016_10_21_190000_create_settings_table', 1),
(11, '2016_11_30_135954_create_permission_table', 1),
(12, '2016_11_30_141208_create_permission_role_table', 1),
(13, '2016_12_26_201236_data_types__add__server_side', 1),
(14, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(15, '2017_01_14_005015_create_translations_table', 1),
(16, '2017_01_15_000000_add_permission_group_id_to_permissions_table', 1),
(17, '2017_01_15_000000_create_permission_groups_table', 1),
(18, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(19, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(20, '2017_04_11_000000_alter_post_nullable_fields_table', 1),
(21, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(22, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(23, '2017_08_05_000000_add_group_to_settings_table', 1),
(24, '2018_02_10_152723_create_estado_productos_table', 1),
(25, '2018_02_10_183742_create_sub_categorias_table', 1),
(26, '2018_02_11_131623_create_productos_table', 1),
(27, '2018_02_11_164034_create_descricao_tipos_table', 1),
(28, '2018_02_11_183348_create_categorias_table', 1),
(29, '2018_02_12_011725_create_categoria_sub_categoria', 1),
(30, '2018_02_14_040444_create_categorias_productos', 1),
(31, '2018_03_04_215925_create_perfil_staffs_table', 1),
(32, '2018_03_11_163335_create_emails_table', 1),
(33, '2018_03_11_163631_create_num_contactos_table', 1),
(34, '2018_03_11_232957_create_info_pais_table', 1),
(35, '2018_03_11_233440_create_rede_social_table', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `num_contactos`
--

DROP TABLE IF EXISTS `num_contactos`;
CREATE TABLE `num_contactos` (
  `id` int(10) UNSIGNED NOT NULL,
  `contacto` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descricao_tipo_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Extraindo dados da tabela `num_contactos`
--

INSERT INTO `num_contactos` (`id`, `contacto`, `descricao_tipo_id`) VALUES
(1, '+244932337220', 1),
(2, '+244998452443', 2),
(3, '+26497824582', 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `pages`
--

DROP TABLE IF EXISTS `pages`;
CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estrutura da tabela `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estrutura da tabela `perfil_staffs`
--

DROP TABLE IF EXISTS `perfil_staffs`;
CREATE TABLE `perfil_staffs` (
  `id` int(10) UNSIGNED NOT NULL,
  `nome` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `funcao` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descricao` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `imagem` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `facebook_link` text COLLATE utf8mb4_unicode_ci,
  `instagram_link` text COLLATE utf8mb4_unicode_ci,
  `youtube_link` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Extraindo dados da tabela `perfil_staffs`
--

INSERT INTO `perfil_staffs` (`id`, `nome`, `funcao`, `descricao`, `imagem`, `facebook_link`, `instagram_link`, `youtube_link`) VALUES
(1, 'Sarah Azevedo Correia', 'CEO', 'It\'s not how many years you\'ve lived in your life, but how much life you\'ve lived in your years.\nIn the end, it\'s not the years in your life that count. It\'s the life in your years. ', '', 'http://facebook.com/', NULL, 'http://youtube.com/'),
(2, 'Vitoria Fernandes Correia', 'Marketing Digital', 'Everything you do today forms the seeds for what you harvest tomorrow.\nAlways do your best. What you plant now, you will harvest later.', '', 'http://facebook.com/', 'http://instagram.com/', NULL),
(3, 'Mateus Gomes Rodrigues', 'Assistente de Mídia', 'Age is not a limit for dreams and goals.\nYou are never too old to set another goal or to dream a new dream.', '', 'http://facebook.com/', 'http://instagram.com/', 'http://youtube.com/'),
(4, 'Matilde Cardoso Pereira', 'Relações Públicas', 'É um facto estabelecido de que um leitor é distraído pelo conteúdo legível de uma página quando analisa a sua mancha gráfica. Logo, o uso de Lorem Ipsum leva a uma distribuição mais ou menos normal de letras, ao contrário do uso de \'Conteúdo aqui, conteúdo aqui\', tornando-o texto legível. ', '', NULL, NULL, NULL),
(5, 'Arlete', 'CEO', '<p><strong>Lorem</strong> ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod<br />tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,<br />quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo<br />consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse<br />cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non<br />proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', 'perfil-staffs/March2018/9iQuaFou7cHnfTwp7AWu.jpg', 'http://facebook.com/', NULL, NULL),
(6, 'maxine adams', 'Designer', '<p>Silver, shoulder-length hair almost fully covers a craggy, lived-in face. Bulging red eyes, set sunken within their sockets, watch devotedly over the village they\'ve protected for so long.</p>\r\n<p>A gunshot left a mark reaching from just under the right eyebrow , running towards the tip of the nose and ending on her left nostril leaves a lasting punishment of companionship.</p>', 'perfil-staffs/March2018/C4b4NhbinBQRwflLNN8H.jpg', NULL, NULL, NULL),
(7, 'Tânia Goncalves Pereira', 'Marketing', '<p>There\'s something enthralling about her, perhaps it\'s her attitude or perhaps it\'s simply a feeling of guilt. But nonetheless, people tend to stay on her good side, while commending her for her deeds.</p>', 'perfil-staffs/March2018/iXizQPGUhOrkddGLYfUM.jpg', NULL, NULL, 'http://youtube.com/'),
(8, 'Gabrielly Silva Carvalho', 'Marketing', '<p>White, frizzy hair clumsily hangs over a bony, radiant face. Hollow gray eyes, set wickedly within their sockets, watch heartily over the homes they\'ve nearly died for for so long.</p>', 'perfil-staffs/March2018/qBEf8TkrQJnqYo1JgUsh.jpg', 'http://facebook.com/', 'http://instagram.com/', 'http://youtubecom/');

-- --------------------------------------------------------

--
-- Estrutura da tabela `permissions`
--

DROP TABLE IF EXISTS `permissions`;
CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `permission_group_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Extraindo dados da tabela `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`, `permission_group_id`) VALUES
(1, 'browse_admin', NULL, '2018-03-14 01:31:18', '2018-03-14 01:31:18', NULL),
(2, 'browse_database', NULL, '2018-03-14 01:31:19', '2018-03-14 01:31:19', NULL),
(3, 'browse_media', NULL, '2018-03-14 01:31:19', '2018-03-14 01:31:19', NULL),
(4, 'browse_compass', NULL, '2018-03-14 01:31:19', '2018-03-14 01:31:19', NULL),
(5, 'browse_menus', 'menus', '2018-03-14 01:31:19', '2018-03-14 01:31:19', NULL),
(6, 'read_menus', 'menus', '2018-03-14 01:31:19', '2018-03-14 01:31:19', NULL),
(7, 'edit_menus', 'menus', '2018-03-14 01:31:19', '2018-03-14 01:31:19', NULL),
(8, 'add_menus', 'menus', '2018-03-14 01:31:19', '2018-03-14 01:31:19', NULL),
(9, 'delete_menus', 'menus', '2018-03-14 01:31:19', '2018-03-14 01:31:19', NULL),
(10, 'browse_pages', 'pages', '2018-03-14 01:31:20', '2018-03-14 01:31:20', NULL),
(11, 'read_pages', 'pages', '2018-03-14 01:31:20', '2018-03-14 01:31:20', NULL),
(12, 'edit_pages', 'pages', '2018-03-14 01:31:20', '2018-03-14 01:31:20', NULL),
(13, 'add_pages', 'pages', '2018-03-14 01:31:20', '2018-03-14 01:31:20', NULL),
(14, 'delete_pages', 'pages', '2018-03-14 01:31:20', '2018-03-14 01:31:20', NULL),
(15, 'browse_roles', 'roles', '2018-03-14 01:31:20', '2018-03-14 01:31:20', NULL),
(16, 'read_roles', 'roles', '2018-03-14 01:31:20', '2018-03-14 01:31:20', NULL),
(17, 'edit_roles', 'roles', '2018-03-14 01:31:20', '2018-03-14 01:31:20', NULL),
(18, 'add_roles', 'roles', '2018-03-14 01:31:20', '2018-03-14 01:31:20', NULL),
(19, 'delete_roles', 'roles', '2018-03-14 01:31:20', '2018-03-14 01:31:20', NULL),
(20, 'browse_users', 'users', '2018-03-14 01:31:20', '2018-03-14 01:31:20', NULL),
(21, 'read_users', 'users', '2018-03-14 01:31:20', '2018-03-14 01:31:20', NULL),
(22, 'edit_users', 'users', '2018-03-14 01:31:21', '2018-03-14 01:31:21', NULL),
(23, 'add_users', 'users', '2018-03-14 01:31:21', '2018-03-14 01:31:21', NULL),
(24, 'delete_users', 'users', '2018-03-14 01:31:21', '2018-03-14 01:31:21', NULL),
(25, 'browse_posts', 'posts', '2018-03-14 01:31:21', '2018-03-14 01:31:21', NULL),
(26, 'read_posts', 'posts', '2018-03-14 01:31:21', '2018-03-14 01:31:21', NULL),
(27, 'edit_posts', 'posts', '2018-03-14 01:31:21', '2018-03-14 01:31:21', NULL),
(28, 'add_posts', 'posts', '2018-03-14 01:31:21', '2018-03-14 01:31:21', NULL),
(29, 'delete_posts', 'posts', '2018-03-14 01:31:21', '2018-03-14 01:31:21', NULL),
(30, 'browse_categories', 'categories', '2018-03-14 01:31:21', '2018-03-14 01:31:21', NULL),
(31, 'read_categories', 'categories', '2018-03-14 01:31:21', '2018-03-14 01:31:21', NULL),
(32, 'edit_categories', 'categories', '2018-03-14 01:31:21', '2018-03-14 01:31:21', NULL),
(33, 'add_categories', 'categories', '2018-03-14 01:31:21', '2018-03-14 01:31:21', NULL),
(34, 'delete_categories', 'categories', '2018-03-14 01:31:21', '2018-03-14 01:31:21', NULL),
(35, 'browse_settings', 'settings', '2018-03-14 01:31:22', '2018-03-14 01:31:22', NULL),
(36, 'read_settings', 'settings', '2018-03-14 01:31:22', '2018-03-14 01:31:22', NULL),
(37, 'edit_settings', 'settings', '2018-03-14 01:31:22', '2018-03-14 01:31:22', NULL),
(38, 'add_settings', 'settings', '2018-03-14 01:31:22', '2018-03-14 01:31:22', NULL),
(39, 'delete_settings', 'settings', '2018-03-14 01:31:22', '2018-03-14 01:31:22', NULL),
(40, 'browse_hooks', NULL, '2018-03-14 01:31:26', '2018-03-14 01:31:26', NULL),
(41, 'browse_sub_categorias', 'sub_categorias', '2018-03-14 09:13:02', '2018-03-14 09:13:02', NULL),
(42, 'read_sub_categorias', 'sub_categorias', '2018-03-14 09:13:02', '2018-03-14 09:13:02', NULL),
(43, 'edit_sub_categorias', 'sub_categorias', '2018-03-14 09:13:02', '2018-03-14 09:13:02', NULL),
(44, 'add_sub_categorias', 'sub_categorias', '2018-03-14 09:13:02', '2018-03-14 09:13:02', NULL),
(45, 'delete_sub_categorias', 'sub_categorias', '2018-03-14 09:13:02', '2018-03-14 09:13:02', NULL),
(46, 'browse_categorias', 'categorias', '2018-03-14 09:18:19', '2018-03-14 09:18:19', NULL),
(47, 'read_categorias', 'categorias', '2018-03-14 09:18:19', '2018-03-14 09:18:19', NULL),
(48, 'edit_categorias', 'categorias', '2018-03-14 09:18:19', '2018-03-14 09:18:19', NULL),
(49, 'add_categorias', 'categorias', '2018-03-14 09:18:19', '2018-03-14 09:18:19', NULL),
(50, 'delete_categorias', 'categorias', '2018-03-14 09:18:19', '2018-03-14 09:18:19', NULL),
(51, 'browse_info_pais', 'info_pais', '2018-03-14 09:22:57', '2018-03-14 09:22:57', NULL),
(52, 'read_info_pais', 'info_pais', '2018-03-14 09:22:57', '2018-03-14 09:22:57', NULL),
(53, 'edit_info_pais', 'info_pais', '2018-03-14 09:22:57', '2018-03-14 09:22:57', NULL),
(54, 'add_info_pais', 'info_pais', '2018-03-14 09:22:57', '2018-03-14 09:22:57', NULL),
(55, 'delete_info_pais', 'info_pais', '2018-03-14 09:22:57', '2018-03-14 09:22:57', NULL),
(56, 'browse_perfil_staffs', 'perfil_staffs', '2018-03-14 09:35:34', '2018-03-14 09:35:34', NULL),
(57, 'read_perfil_staffs', 'perfil_staffs', '2018-03-14 09:35:34', '2018-03-14 09:35:34', NULL),
(58, 'edit_perfil_staffs', 'perfil_staffs', '2018-03-14 09:35:34', '2018-03-14 09:35:34', NULL),
(59, 'add_perfil_staffs', 'perfil_staffs', '2018-03-14 09:35:34', '2018-03-14 09:35:34', NULL),
(60, 'delete_perfil_staffs', 'perfil_staffs', '2018-03-14 09:35:34', '2018-03-14 09:35:34', NULL),
(61, 'browse_emails', 'emails', '2018-03-14 09:44:37', '2018-03-14 09:44:37', NULL),
(62, 'read_emails', 'emails', '2018-03-14 09:44:37', '2018-03-14 09:44:37', NULL),
(63, 'edit_emails', 'emails', '2018-03-14 09:44:37', '2018-03-14 09:44:37', NULL),
(64, 'add_emails', 'emails', '2018-03-14 09:44:37', '2018-03-14 09:44:37', NULL),
(65, 'delete_emails', 'emails', '2018-03-14 09:44:37', '2018-03-14 09:44:37', NULL),
(66, 'browse_productos', 'productos', '2018-03-14 22:50:50', '2018-03-14 22:50:50', NULL),
(67, 'read_productos', 'productos', '2018-03-14 22:50:50', '2018-03-14 22:50:50', NULL),
(68, 'edit_productos', 'productos', '2018-03-14 22:50:50', '2018-03-14 22:50:50', NULL),
(69, 'add_productos', 'productos', '2018-03-14 22:50:50', '2018-03-14 22:50:50', NULL),
(70, 'delete_productos', 'productos', '2018-03-14 22:50:50', '2018-03-14 22:50:50', NULL),
(71, 'browse_num_contactos', 'num_contactos', '2018-03-15 00:50:58', '2018-03-15 00:50:58', NULL),
(72, 'read_num_contactos', 'num_contactos', '2018-03-15 00:50:58', '2018-03-15 00:50:58', NULL),
(73, 'edit_num_contactos', 'num_contactos', '2018-03-15 00:50:58', '2018-03-15 00:50:58', NULL),
(74, 'add_num_contactos', 'num_contactos', '2018-03-15 00:50:58', '2018-03-15 00:50:58', NULL),
(75, 'delete_num_contactos', 'num_contactos', '2018-03-15 00:50:58', '2018-03-15 00:50:58', NULL),
(81, 'browse_rede_social', 'rede_social', '2018-03-15 19:24:28', '2018-03-15 19:24:28', NULL),
(82, 'read_rede_social', 'rede_social', '2018-03-15 19:24:28', '2018-03-15 19:24:28', NULL),
(83, 'edit_rede_social', 'rede_social', '2018-03-15 19:24:28', '2018-03-15 19:24:28', NULL),
(84, 'add_rede_social', 'rede_social', '2018-03-15 19:24:28', '2018-03-15 19:24:28', NULL),
(85, 'delete_rede_social', 'rede_social', '2018-03-15 19:24:28', '2018-03-15 19:24:28', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `permission_groups`
--

DROP TABLE IF EXISTS `permission_groups`;
CREATE TABLE `permission_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estrutura da tabela `permission_role`
--

DROP TABLE IF EXISTS `permission_role`;
CREATE TABLE `permission_role` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Extraindo dados da tabela `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 2),
(2, 1),
(3, 1),
(3, 2),
(4, 1),
(5, 1),
(5, 2),
(6, 1),
(6, 2),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(41, 1),
(41, 2),
(42, 1),
(42, 2),
(43, 1),
(43, 2),
(44, 1),
(44, 2),
(45, 1),
(45, 2),
(46, 1),
(46, 2),
(47, 1),
(47, 2),
(48, 1),
(48, 2),
(49, 1),
(49, 2),
(50, 1),
(50, 2),
(51, 1),
(51, 2),
(52, 1),
(52, 2),
(53, 1),
(53, 2),
(54, 1),
(54, 2),
(55, 1),
(55, 2),
(56, 1),
(56, 2),
(57, 1),
(57, 2),
(58, 1),
(58, 2),
(59, 1),
(59, 2),
(60, 1),
(60, 2),
(61, 1),
(61, 2),
(62, 1),
(62, 2),
(63, 1),
(63, 2),
(64, 1),
(64, 2),
(65, 1),
(65, 2),
(66, 1),
(66, 2),
(67, 1),
(67, 2),
(68, 1),
(68, 2),
(69, 1),
(69, 2),
(70, 1),
(70, 2),
(71, 1),
(71, 2),
(72, 1),
(72, 2),
(73, 1),
(73, 2),
(74, 1),
(74, 2),
(75, 1),
(75, 2),
(81, 1),
(81, 2),
(82, 1),
(82, 2),
(83, 1),
(83, 2),
(84, 1),
(84, 2),
(85, 1),
(85, 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `posts`
--

DROP TABLE IF EXISTS `posts`;
CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` enum('PUBLISHED','DRAFT','PENDING') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estrutura da tabela `productos`
--

DROP TABLE IF EXISTS `productos`;
CREATE TABLE `productos` (
  `id` int(10) UNSIGNED NOT NULL,
  `nome` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descricao` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `preco` int(11) NOT NULL,
  `preco_promocao` int(11) DEFAULT '0',
  `quantidade` int(11) NOT NULL,
  `thumbnail` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `imagens` text COLLATE utf8mb4_unicode_ci,
  `views` bigint(20) NOT NULL DEFAULT '0',
  `sub_categoria_id` int(10) UNSIGNED DEFAULT NULL,
  `estado_producto_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Extraindo dados da tabela `productos`
--

INSERT INTO `productos` (`id`, `nome`, `slug`, `descricao`, `preco`, `preco_promocao`, `quantidade`, `thumbnail`, `imagens`, `views`, `sub_categoria_id`, `estado_producto_id`, `created_at`, `updated_at`) VALUES
(1, 'Brinco de Ferro', 'brinco-de-ferro', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\n                  tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\n                  quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\n                  consequat.', 3000, 1000, 2, 'produto(2)', NULL, 6, 1, NULL, NULL, '2018-03-12 16:13:47'),
(2, 'Brinco de Pano', 'brinco-de-pano', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\n                  tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\n                  quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\n                  consequat.', 3000, 0, 1, 'produto(2)', NULL, 9, 1, NULL, NULL, '2018-03-12 19:29:42'),
(3, 'Brinco de Crochê', 'brinco-de-croche', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>', 3000, 2560, 1, 'produto(2)', NULL, 10, 2, 1, NULL, '2018-03-14 23:49:20'),
(4, 'Colar de Tecido', 'colar-de-tecido', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\n                  tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\n                  quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\n                  consequat.', 5500, 3990, 1, 'produto(1)', NULL, 2, 1, NULL, NULL, NULL),
(5, 'Brinco de Madeira', 'brinco-de-madeira', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod                  tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,                  quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo                  consequat.', 3000, NULL, 2, 'productos/February2018/kr9ol0sYBo34kULa73OR.jpg', NULL, 55, 1, NULL, '2018-02-03 22:00:00', '2018-03-05 13:01:54'),
(6, 'Brinco Arrojado', 'brinco-arrojado', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod                  tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,                  quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo                  consequat.', 3000, 2000, 1, 'productos/February2018/UuEvzCXUHuz9XPb9nY57.jpg', NULL, 30, 1, NULL, '2018-01-31 22:00:00', '2018-03-05 13:01:27'),
(7, 'Brinco CC', 'brinco-CC', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod                  tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,                  quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo                  consequat.', 3000, NULL, 1, 'productos/February2018/ZKMNgvlXtJws6L1sAYa8.jpg', NULL, 8, 1, NULL, '2018-02-17 22:00:00', '2018-03-03 12:27:20'),
(8, 'Colar Arrojado (Edição Limitada)', 'colar-arrojado-edicao-limitada', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod                  tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,                  quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo                  consequat.', 5500, NULL, 1, 'productos/February2018/ujCOAiItzGdYRjI0tA4s.jpg', NULL, 15, 1, NULL, '2018-02-01 22:00:00', '2018-02-28 20:48:44'),
(9, 'Brinco de Plastico', 'brinco-de-plastico', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 2000, NULL, 1, 'productos/February2018/PgZcm35tJm0izpsOtbE6.jpg', NULL, 10, 1, NULL, '2018-02-16 11:50:14', '2018-03-05 13:02:41'),
(10, 'Brinco de bolinha', 'brinco-de-bolinha', '<p>Novas tendencias</p>\r\n<p style=\"text-align: left;\">Materiais utilizados:</p>\r\n<ul>\r\n<li>Tecidos</li>\r\n<li>Bolinhas</li>\r\n</ul>\r\n<p>&nbsp;</p>', 2900, NULL, 1, 'productos/March2018/E2PXxJsUENirx6EC8jWl.jpg', '[\"productos\\/March2018\\/u03Q15XYq6clqt0wDTCt.jpeg\",\"productos\\/March2018\\/pnz6iTqd2L2qyFOR23iu.jpeg\",\"productos\\/March2018\\/pNCq5w0eMB65PsHo5I0W.jpeg\",\"productos\\/March2018\\/xIOO9A1ZesR1SlENk9x1.jpg\"]', 41, 1, 1, '2018-02-28 18:07:11', '2018-03-14 23:43:41'),
(11, 'Carteira (Mulher Africana)', 'carteira-(mulher-africana)', '<p>This morning it\'s been rainy here, so I\'m off the road. Decided it was a good time/opportunity to do some work on a little project that I\'ve had brewing in my back brain for several years.</p>', 5000, 0, 1, 'productos/March2018/F7u5EXalaVqhEIA1YirL.jpeg', NULL, 1, 1, NULL, '2018-03-05 12:04:55', '2018-03-05 13:01:33'),
(18, 'Colar Cai-Cai', 'colar-cai-cai', '<p>If I had the time / inclination to do it properly, I would learn enough code to create the app myself, but I\'ve never been a programmer - not really on any \'true\' level.</p>\r\n<p>I can figure out Google Spreadsheets though, and I just <em>knew </em>that there had to be a way to do what I\'m looking for in there.</p>\r\n<p>I\'m here to say that I\'ve figured it out!</p>', 7000, 0, 1, 'productos/March2018/qguACNYeCZBr9mGyHYtb.jpeg', NULL, 1, 1, 1, '2018-03-05 12:07:15', '2018-03-14 23:50:02');

-- --------------------------------------------------------

--
-- Estrutura da tabela `rede_social`
--

DROP TABLE IF EXISTS `rede_social`;
CREATE TABLE `rede_social` (
  `id` int(10) UNSIGNED NOT NULL,
  `nome` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `endereco_url` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Extraindo dados da tabela `rede_social`
--

INSERT INTO `rede_social` (`id`, `nome`, `endereco_url`) VALUES
(1, 'facebook', 'http://facebook.com/'),
(2, 'instagram', 'http://instagram.com/');

-- --------------------------------------------------------

--
-- Estrutura da tabela `roles`
--

DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Extraindo dados da tabela `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2018-03-14 01:26:07', '2018-03-14 01:26:07'),
(2, 'user', 'Normal User', '2018-03-14 01:31:18', '2018-03-14 01:31:18');

-- --------------------------------------------------------

--
-- Estrutura da tabela `settings`
--

DROP TABLE IF EXISTS `settings`;
CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `group` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Extraindo dados da tabela `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Nachy San', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Artesanatos', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', '', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', '', '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', 'settings/March2018/c8HAWUN8tpYB9wuO3vfI.jpg', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Nachy San', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Artesanatos com a liberdade de respirar.', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', '', '', 'text', 1, 'Admin');

-- --------------------------------------------------------

--
-- Estrutura da tabela `sub_categorias`
--

DROP TABLE IF EXISTS `sub_categorias`;
CREATE TABLE `sub_categorias` (
  `id` int(10) UNSIGNED NOT NULL,
  `nome` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Extraindo dados da tabela `sub_categorias`
--

INSERT INTO `sub_categorias` (`id`, `nome`, `slug`) VALUES
(1, 'Brincos', 'brincos'),
(2, 'Pastas', 'pastas'),
(3, 'Bolsas', 'bolsas');

-- --------------------------------------------------------

--
-- Estrutura da tabela `translations`
--

DROP TABLE IF EXISTS `translations`;
CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(11) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 1, 'admin', 'admin@admin.com', 'users/default.png', '$2y$10$5x/KEz09Avwyt15KEUwCcekB/qWHHttm2zqPyxhrbFn0Vd2W.91Q2', 't2ViCxeWBGx4XINcdd7nQUY7IMlXIm4nwdiaGeEvu8Ev91SLUjKgA3PCF96o', '2018-03-14 01:26:05', '2018-03-14 01:26:07'),
(2, 2, 'Nachy San', 'your@email.com', 'users/default.png', '$2y$10$DcTntcoa9CpK.9hywO27SezerLPsu89ThWSxy76DT5hkD3QcCSyN2', 'C0ZollIexeiA0GNNKmX1t2GsMCHZXmy8eyhC3yQsN0r1RdVrF5zjLE73fwrJ', '2018-03-15 01:06:41', '2018-03-15 01:06:41');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categorias_nome_unique` (`nome`),
  ADD UNIQUE KEY `categorias_slug_unique` (`slug`);

--
-- Indexes for table `categoria_producto`
--
ALTER TABLE `categoria_producto`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categoria_producto_producto_id_foreign` (`producto_id`),
  ADD KEY `categoria_producto_categoria_id_foreign` (`categoria_id`);

--
-- Indexes for table `categoria_sub_categoria`
--
ALTER TABLE `categoria_sub_categoria`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categoria_sub_categoria_categoria_id_foreign` (`categoria_id`),
  ADD KEY `categoria_sub_categoria_sub_categoria_id_foreign` (`sub_categoria_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Indexes for table `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Indexes for table `descricao_tipos`
--
ALTER TABLE `descricao_tipos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `descricao_tipos_nome_unique` (`nome`);

--
-- Indexes for table `emails`
--
ALTER TABLE `emails`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `emails_email_unique` (`email`),
  ADD KEY `emails_descricao_tipo_id_foreign` (`descricao_tipo_id`);

--
-- Indexes for table `estado_productos`
--
ALTER TABLE `estado_productos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `info_pais`
--
ALTER TABLE `info_pais`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `info_pais_pais_unique` (`pais`),
  ADD UNIQUE KEY `info_pais_contacto_id_unique` (`contacto_id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `num_contactos`
--
ALTER TABLE `num_contactos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `num_contactos_contacto_unique` (`contacto`),
  ADD KEY `num_contactos_descricao_tipo_id_foreign` (`descricao_tipo_id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `perfil_staffs`
--
ALTER TABLE `perfil_staffs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `perfil_staffs_nome_unique` (`nome`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Indexes for table `permission_groups`
--
ALTER TABLE `permission_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permission_groups_name_unique` (`name`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indexes for table `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `productos_nome_unique` (`nome`),
  ADD UNIQUE KEY `productos_slug_unique` (`slug`),
  ADD KEY `productos_sub_categoria_id_foreign` (`sub_categoria_id`),
  ADD KEY `productos_estado_producto_id_foreign` (`estado_producto_id`);

--
-- Indexes for table `rede_social`
--
ALTER TABLE `rede_social`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `rede_social_nome_unique` (`nome`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indexes for table `sub_categorias`
--
ALTER TABLE `sub_categorias`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sub_categorias_nome_unique` (`nome`),
  ADD UNIQUE KEY `sub_categorias_slug_unique` (`slug`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `categoria_producto`
--
ALTER TABLE `categoria_producto`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `categoria_sub_categoria`
--
ALTER TABLE `categoria_sub_categoria`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT for table `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `descricao_tipos`
--
ALTER TABLE `descricao_tipos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `emails`
--
ALTER TABLE `emails`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `estado_productos`
--
ALTER TABLE `estado_productos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `info_pais`
--
ALTER TABLE `info_pais`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `num_contactos`
--
ALTER TABLE `num_contactos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `perfil_staffs`
--
ALTER TABLE `perfil_staffs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT for table `permission_groups`
--
ALTER TABLE `permission_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `rede_social`
--
ALTER TABLE `rede_social`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `sub_categorias`
--
ALTER TABLE `sub_categorias`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `categoria_producto`
--
ALTER TABLE `categoria_producto`
  ADD CONSTRAINT `categoria_producto_categoria_id_foreign` FOREIGN KEY (`categoria_id`) REFERENCES `categorias` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `categoria_producto_producto_id_foreign` FOREIGN KEY (`producto_id`) REFERENCES `productos` (`id`) ON DELETE CASCADE;

--
-- Limitadores para a tabela `categoria_sub_categoria`
--
ALTER TABLE `categoria_sub_categoria`
  ADD CONSTRAINT `categoria_sub_categoria_categoria_id_foreign` FOREIGN KEY (`categoria_id`) REFERENCES `categorias` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `categoria_sub_categoria_sub_categoria_id_foreign` FOREIGN KEY (`sub_categoria_id`) REFERENCES `sub_categorias` (`id`);

--
-- Limitadores para a tabela `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Limitadores para a tabela `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `emails`
--
ALTER TABLE `emails`
  ADD CONSTRAINT `emails_descricao_tipo_id_foreign` FOREIGN KEY (`descricao_tipo_id`) REFERENCES `descricao_tipos` (`id`);

--
-- Limitadores para a tabela `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Limitadores para a tabela `num_contactos`
--
ALTER TABLE `num_contactos`
  ADD CONSTRAINT `num_contactos_descricao_tipo_id_foreign` FOREIGN KEY (`descricao_tipo_id`) REFERENCES `descricao_tipos` (`id`);

--
-- Limitadores para a tabela `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Limitadores para a tabela `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `productos_estado_producto_id_foreign` FOREIGN KEY (`estado_producto_id`) REFERENCES `estado_productos` (`id`),
  ADD CONSTRAINT `productos_sub_categoria_id_foreign` FOREIGN KEY (`sub_categoria_id`) REFERENCES `sub_categorias` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
