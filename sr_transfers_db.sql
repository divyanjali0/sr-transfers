-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 17, 2025 at 12:38 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sr_transfers_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `addons`
--

CREATE TABLE `addons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `addon_name` varchar(100) NOT NULL,
  `rate` decimal(10,2) NOT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `addons`
--

INSERT INTO `addons` (`id`, `addon_name`, `rate`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Baby Seat', 20.00, NULL, '2025-10-15 04:55:43', '2025-10-15 07:30:25');

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `id` int(10) UNSIGNED NOT NULL,
  `booking_number` varchar(50) DEFAULT NULL,
  `vehicle_id` int(11) NOT NULL,
  `vehicle_category` varchar(100) NOT NULL,
  `customer_name` varchar(150) NOT NULL,
  `email` varchar(150) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `flight_number` varchar(50) DEFAULT NULL,
  `return_datetime` datetime DEFAULT NULL,
  `number_of_passengers` int(11) DEFAULT 1,
  `number_of_luggage` int(11) DEFAULT 0,
  `pickup_location` text DEFAULT NULL,
  `dropoff_location` text DEFAULT NULL,
  `return_pickup_location` text DEFAULT NULL,
  `return_dropoff_location` text DEFAULT NULL,
  `travel_datetime` datetime DEFAULT NULL,
  `price_per_km` decimal(10,2) DEFAULT 0.00,
  `main_distance_km` decimal(10,2) DEFAULT 0.00,
  `main_price` decimal(10,2) DEFAULT 0.00,
  `return_distance_km` decimal(10,2) DEFAULT 0.00,
  `return_price` decimal(10,2) DEFAULT 0.00,
  `total_price` decimal(10,2) DEFAULT 0.00,
  `addons` text DEFAULT NULL,
  `invoice_file` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `country_codes`
--

CREATE TABLE `country_codes` (
  `id` int(11) NOT NULL,
  `country_name` varchar(255) DEFAULT NULL,
  `country_code` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `country_codes`
--

INSERT INTO `country_codes` (`id`, `country_name`, `country_code`) VALUES
(1, 'USA', '+1'),
(2, 'Austria', '+43'),
(3, 'Australia', '+61'),
(4, 'Belgium', '+32'),
(5, 'Brazil', '+55'),
(6, 'Bulgaria', '+359'),
(7, 'Bahrain', '+973'),
(8, 'Burkina Faso', '+226'),
(9, 'Burundi', '+257'),
(10, 'Vatican City', '+379'),
(11, 'Cambodia', '+855'),
(12, 'Canada', '+1'),
(13, 'Cape Verde', '+238'),
(14, 'Chile', '+56'),
(15, 'China', '+86'),
(16, 'Colombia', '+57'),
(17, 'Costa Rica', '+506'),
(18, 'Côte d\'Ivoire', '+225'),
(19, 'Cyprus', '+357'),
(20, 'Czech Republic', '+420'),
(21, 'Denmark', '+45'),
(22, 'Djibouti', '+253'),
(23, 'Dominican Republic', '+1'),
(24, 'Ecuador', '+593'),
(25, 'Egypt', '+20'),
(26, 'El Salvador', '+503'),
(27, 'Equatorial Guinea', '+240'),
(28, 'Eritrea', '+291'),
(29, 'Estonia', '+372'),
(30, 'Finland', '+358'),
(31, 'France', '+33'),
(32, 'Germany', '+49'),
(33, 'Ghana', '+233'),
(34, 'Greece', '+30'),
(35, 'Guatemala', '+502'),
(36, 'Guinea', '+224'),
(37, 'Guinea-Bissau', '+245'),
(38, 'Guyana', '+592'),
(39, 'Honduras', '+504'),
(40, 'Hungary', '+36'),
(41, 'Iceland', '+354'),
(42, 'India', '+91'),
(43, 'Indonesia', '+62'),
(44, 'Iraq', '+964'),
(45, 'Ireland', '+353'),
(46, 'Israel', '+972'),
(47, 'Italy', '+39'),
(48, 'Japan', '+81'),
(49, 'Jordan', '+962'),
(50, 'Kenya', '+254'),
(51, 'Kiribati', '+686'),
(52, 'Kuwait', '+965'),
(53, 'Kyrgyzstan', '+996'),
(54, 'Latvia', '+371'),
(55, 'Lebanon', '+961'),
(56, 'Lesotho', '+266'),
(57, 'Liberia', '+231'),
(58, 'Libya', '+218'),
(59, 'Liechtenstein', '+423'),
(60, 'Lithuania', '+370'),
(61, 'Luxembourg', '+352'),
(62, 'Macao', '+853'),
(63, 'North Macedonia', '+389'),
(64, 'Madagascar', '+261'),
(65, 'Malawi', '+265'),
(66, 'Malaysia', '+60'),
(67, 'Maldives', '+960'),
(68, 'Mali', '+223'),
(69, 'Malta', '+356'),
(70, 'Marshall Islands', '+692'),
(71, 'Martinique', '+596'),
(72, 'Mauritania', '+222'),
(73, 'Mauritius', '+230'),
(74, 'Mayotte', '+262'),
(75, 'Mexico', '+52'),
(76, 'Micronesia', '+691'),
(77, 'Moldova', '+373'),
(78, 'Monaco', '+377'),
(79, 'Mongolia', '+976'),
(80, 'Montenegro', '+382'),
(81, 'Montserrat', '+1'),
(82, 'Morocco', '+212'),
(83, 'Mozambique', '+258'),
(84, 'Myanmar', '+95'),
(85, 'Namibia', '+264'),
(86, 'Nauru', '+674'),
(87, 'Nepal', '+977'),
(88, 'Netherlands', '+31'),
(89, 'New Zealand', '+64'),
(90, 'Nicaragua', '+505'),
(91, 'Niger', '+227'),
(92, 'Nigeria', '+234'),
(93, 'Niue', '+683'),
(94, 'Norfolk Island', '+672'),
(95, 'Norway', '+47'),
(96, 'Oman', '+968'),
(97, 'Pakistan', '+92'),
(98, 'Palau', '+680'),
(99, 'Palestine', '+970'),
(100, 'Panama', '+507'),
(101, 'Papua New Guinea', '+675'),
(102, 'Paraguay', '+595'),
(103, 'Peru', '+51'),
(104, 'Philippines', '+63'),
(105, 'Poland', '+48'),
(106, 'Portugal', '+351'),
(107, 'Puerto Rico', '+1787'),
(108, 'Qatar', '+974'),
(109, 'Réunion', '+262'),
(110, 'Romania', '+40'),
(111, 'Russia', '+7'),
(112, 'Rwanda', '+250'),
(113, 'San Marino', '+378'),
(114, 'São Tomé and Príncipe', '+239'),
(115, 'Saudi Arabia', '+966'),
(116, 'Senegal', '+221'),
(117, 'Serbia', '+381'),
(118, 'Seychelles', '+248'),
(119, 'Sierra Leone', '+232'),
(120, 'Singapore', '+65'),
(121, 'Slovakia', '+421'),
(122, 'Slovenia', '+386'),
(123, 'Solomon Islands', '+677'),
(124, 'Somalia', '+252'),
(125, 'South Africa', '+27'),
(126, 'South Korea', '+82'),
(127, 'South Sudan', '+211'),
(128, 'Spain', '+34'),
(129, 'Sri Lanka', '+94'),
(130, 'St. Kitts and Nevis', '+1'),
(131, 'St. Lucia', '+758'),
(132, 'St. Vincent and the Grenadines', '+1'),
(133, 'Suriname', '+597'),
(134, 'Swaziland', '+268'),
(135, 'Sweden', '+46'),
(136, 'Switzerland', '+41'),
(137, 'Syria', '+963'),
(138, 'Tajikistan', '+992'),
(139, 'Tanzania', '+255'),
(140, 'Thailand', '+66'),
(141, 'Timor-Leste', '+670'),
(142, 'Togo', '+228'),
(143, 'Tonga', '+676'),
(144, 'Trinidad and Tobago', '+1'),
(145, 'Tunisia', '+216'),
(146, 'Turkey', '+90'),
(147, 'Turkmenistan', '+993'),
(148, 'Turks and Caicos Islands', '+1'),
(149, 'Tuvalu', '+688'),
(150, 'Uganda', '+256'),
(151, 'Ukraine', '+380'),
(152, 'United Arab Emirates', '+971'),
(153, 'United Kingdom', '+44'),
(154, 'United States', '+1'),
(155, 'Uruguay', '+598'),
(156, 'Uzbekistan', '+998'),
(157, 'Vanuatu', '+678'),
(158, 'Venezuela', '+58'),
(159, 'Vietnam', '+84'),
(160, 'Wallis and Futuna', '+681'),
(161, 'Yemen', '+967'),
(162, 'Zambia', '+260'),
(163, 'Zimbabwe', '+263');

-- --------------------------------------------------------

--
-- Table structure for table `modx_access_actiondom`
--

CREATE TABLE `modx_access_actiondom` (
  `id` int(10) UNSIGNED NOT NULL,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'MODX\\Revolution\\modPrincipal',
  `principal` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `authority` int(10) UNSIGNED NOT NULL DEFAULT 9999,
  `policy` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `modx_access_category`
--

CREATE TABLE `modx_access_category` (
  `id` int(10) UNSIGNED NOT NULL,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'MODX\\Revolution\\modPrincipal',
  `principal` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `authority` int(10) UNSIGNED NOT NULL DEFAULT 9999,
  `policy` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `context_key` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `modx_access_context`
--

CREATE TABLE `modx_access_context` (
  `id` int(10) UNSIGNED NOT NULL,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'MODX\\Revolution\\modPrincipal',
  `principal` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `authority` int(10) UNSIGNED NOT NULL DEFAULT 9999,
  `policy` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `modx_access_context`
--

INSERT INTO `modx_access_context` (`id`, `target`, `principal_class`, `principal`, `authority`, `policy`) VALUES
(1, 'web', 'MODX\\Revolution\\modUserGroup', 0, 9999, 3),
(2, 'mgr', 'MODX\\Revolution\\modUserGroup', 1, 0, 2),
(3, 'web', 'MODX\\Revolution\\modUserGroup', 1, 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `modx_access_elements`
--

CREATE TABLE `modx_access_elements` (
  `id` int(10) UNSIGNED NOT NULL,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'MODX\\Revolution\\modPrincipal',
  `principal` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `authority` int(10) UNSIGNED NOT NULL DEFAULT 9999,
  `policy` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `context_key` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `modx_access_media_source`
--

CREATE TABLE `modx_access_media_source` (
  `id` int(10) UNSIGNED NOT NULL,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'MODX\\Revolution\\modPrincipal',
  `principal` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `authority` int(10) UNSIGNED NOT NULL DEFAULT 9999,
  `policy` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `context_key` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `modx_access_menus`
--

CREATE TABLE `modx_access_menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'MODX\\Revolution\\modPrincipal',
  `principal` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `authority` int(10) UNSIGNED NOT NULL DEFAULT 9999,
  `policy` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `modx_access_namespace`
--

CREATE TABLE `modx_access_namespace` (
  `id` int(10) UNSIGNED NOT NULL,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'MODX\\Revolution\\modPrincipal',
  `principal` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `authority` int(10) UNSIGNED NOT NULL DEFAULT 9999,
  `policy` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `context_key` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `modx_access_permissions`
--

CREATE TABLE `modx_access_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `template` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `name` varchar(191) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `value` tinyint(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `modx_access_permissions`
--

INSERT INTO `modx_access_permissions` (`id`, `template`, `name`, `description`, `value`) VALUES
(1, 1, 'about', 'perm.about_desc', 1),
(2, 1, 'access_permissions', 'perm.access_permissions_desc', 1),
(3, 1, 'actions', 'perm.actions_desc', 1),
(4, 1, 'change_password', 'perm.change_password_desc', 1),
(5, 1, 'change_profile', 'perm.change_profile_desc', 1),
(6, 1, 'charsets', 'perm.charsets_desc', 1),
(7, 1, 'class_map', 'perm.class_map_desc', 1),
(8, 1, 'components', 'perm.components_desc', 1),
(9, 1, 'content_types', 'perm.content_types_desc', 1),
(10, 1, 'countries', 'perm.countries_desc', 1),
(11, 1, 'create', 'perm.create_desc', 1),
(12, 1, 'credits', 'perm.credits_desc', 1),
(13, 1, 'customize_forms', 'perm.customize_forms_desc', 1),
(14, 1, 'dashboards', 'perm.dashboards_desc', 1),
(15, 1, 'database', 'perm.database_desc', 1),
(16, 1, 'database_truncate', 'perm.database_truncate_desc', 1),
(17, 1, 'delete_category', 'perm.delete_category_desc', 1),
(18, 1, 'delete_chunk', 'perm.delete_chunk_desc', 1),
(19, 1, 'delete_context', 'perm.delete_context_desc', 1),
(20, 1, 'delete_document', 'perm.delete_document_desc', 1),
(21, 1, 'delete_weblink', 'perm.delete_weblink_desc', 1),
(22, 1, 'delete_symlink', 'perm.delete_symlink_desc', 1),
(23, 1, 'delete_static_resource', 'perm.delete_static_resource_desc', 1),
(24, 1, 'delete_eventlog', 'perm.delete_eventlog_desc', 1),
(25, 1, 'delete_plugin', 'perm.delete_plugin_desc', 1),
(26, 1, 'delete_propertyset', 'perm.delete_propertyset_desc', 1),
(27, 1, 'delete_snippet', 'perm.delete_snippet_desc', 1),
(28, 1, 'delete_template', 'perm.delete_template_desc', 1),
(29, 1, 'delete_tv', 'perm.delete_tv_desc', 1),
(30, 1, 'delete_role', 'perm.delete_role_desc', 1),
(31, 1, 'delete_user', 'perm.delete_user_desc', 1),
(32, 1, 'directory_chmod', 'perm.directory_chmod_desc', 1),
(33, 1, 'directory_create', 'perm.directory_create_desc', 1),
(34, 1, 'directory_list', 'perm.directory_list_desc', 1),
(35, 1, 'directory_remove', 'perm.directory_remove_desc', 1),
(36, 1, 'directory_update', 'perm.directory_update_desc', 1),
(37, 1, 'edit_category', 'perm.edit_category_desc', 1),
(38, 1, 'edit_chunk', 'perm.edit_chunk_desc', 1),
(39, 1, 'edit_context', 'perm.edit_context_desc', 1),
(40, 1, 'edit_document', 'perm.edit_document_desc', 1),
(41, 1, 'edit_weblink', 'perm.edit_weblink_desc', 1),
(42, 1, 'edit_symlink', 'perm.edit_symlink_desc', 1),
(43, 1, 'edit_static_resource', 'perm.edit_static_resource_desc', 1),
(44, 1, 'edit_locked', 'perm.edit_locked_desc', 1),
(45, 1, 'edit_plugin', 'perm.edit_plugin_desc', 1),
(46, 1, 'edit_propertyset', 'perm.edit_propertyset_desc', 1),
(47, 1, 'edit_role', 'perm.edit_role_desc', 1),
(48, 1, 'edit_snippet', 'perm.edit_snippet_desc', 1),
(49, 1, 'edit_template', 'perm.edit_template_desc', 1),
(50, 1, 'edit_tv', 'perm.edit_tv_desc', 1),
(51, 1, 'edit_user', 'perm.edit_user_desc', 1),
(52, 1, 'element_tree', 'perm.element_tree_desc', 1),
(53, 1, 'empty_cache', 'perm.empty_cache_desc', 1),
(54, 1, 'error_log_erase', 'perm.error_log_erase_desc', 1),
(55, 1, 'error_log_view', 'perm.error_log_view_desc', 1),
(56, 1, 'export_static', 'perm.export_static_desc', 1),
(57, 1, 'file_create', 'perm.file_create_desc', 1),
(58, 1, 'file_list', 'perm.file_list_desc', 1),
(59, 1, 'file_manager', 'perm.file_manager_desc', 1),
(60, 1, 'file_remove', 'perm.file_remove_desc', 1),
(61, 1, 'file_tree', 'perm.file_tree_desc', 1),
(62, 1, 'file_update', 'perm.file_update_desc', 1),
(63, 1, 'file_upload', 'perm.file_upload_desc', 1),
(64, 1, 'file_unpack', 'perm.file_unpack_desc', 1),
(65, 1, 'file_view', 'perm.file_view_desc', 1),
(66, 1, 'flush_sessions', 'perm.flush_sessions_desc', 1),
(67, 1, 'frames', 'perm.frames_desc', 1),
(68, 1, 'help', 'perm.help_desc', 1),
(69, 1, 'home', 'perm.home_desc', 1),
(70, 1, 'language', 'perm.language_desc', 1),
(71, 1, 'languages', 'perm.languages_desc', 1),
(72, 1, 'lexicons', 'perm.lexicons_desc', 1),
(73, 1, 'list', 'perm.list_desc', 1),
(74, 1, 'load', 'perm.load_desc', 1),
(75, 1, 'logout', 'perm.logout_desc', 1),
(76, 1, 'mgr_log_view', 'perm.mgr_log_view_desc', 1),
(77, 1, 'mgr_log_erase', 'perm.mgr_log_erase_desc', 1),
(78, 1, 'menu_reports', 'perm.menu_reports_desc', 1),
(79, 1, 'menu_security', 'perm.menu_security_desc', 1),
(80, 1, 'menu_site', 'perm.menu_site_desc', 1),
(81, 1, 'menu_support', 'perm.menu_support_desc', 1),
(82, 1, 'menu_system', 'perm.menu_system_desc', 1),
(83, 1, 'menu_tools', 'perm.menu_tools_desc', 1),
(84, 1, 'menu_trash', 'perm.menu_trash_desc', 1),
(85, 1, 'menu_user', 'perm.menu_user_desc', 1),
(86, 1, 'menus', 'perm.menus_desc', 1),
(87, 1, 'messages', 'perm.messages_desc', 1),
(88, 1, 'namespaces', 'perm.namespaces_desc', 1),
(89, 1, 'new_category', 'perm.new_category_desc', 1),
(90, 1, 'new_chunk', 'perm.new_chunk_desc', 1),
(91, 1, 'new_context', 'perm.new_context_desc', 1),
(92, 1, 'new_document', 'perm.new_document_desc', 1),
(93, 1, 'new_static_resource', 'perm.new_static_resource_desc', 1),
(94, 1, 'new_symlink', 'perm.new_symlink_desc', 1),
(95, 1, 'new_weblink', 'perm.new_weblink_desc', 1),
(96, 1, 'new_document_in_root', 'perm.new_document_in_root_desc', 1),
(97, 1, 'new_plugin', 'perm.new_plugin_desc', 1),
(98, 1, 'new_propertyset', 'perm.new_propertyset_desc', 1),
(99, 1, 'new_role', 'perm.new_role_desc', 1),
(100, 1, 'new_snippet', 'perm.new_snippet_desc', 1),
(101, 1, 'new_template', 'perm.new_template_desc', 1),
(102, 1, 'new_tv', 'perm.new_tv_desc', 1),
(103, 1, 'new_user', 'perm.new_user_desc', 1),
(104, 1, 'packages', 'perm.packages_desc', 1),
(105, 1, 'policy_delete', 'perm.policy_delete_desc', 1),
(106, 1, 'policy_edit', 'perm.policy_edit_desc', 1),
(107, 1, 'policy_new', 'perm.policy_new_desc', 1),
(108, 1, 'policy_save', 'perm.policy_save_desc', 1),
(109, 1, 'policy_view', 'perm.policy_view_desc', 1),
(110, 1, 'policy_template_delete', 'perm.policy_template_delete_desc', 1),
(111, 1, 'policy_template_edit', 'perm.policy_template_edit_desc', 1),
(112, 1, 'policy_template_new', 'perm.policy_template_new_desc', 1),
(113, 1, 'policy_template_save', 'perm.policy_template_save_desc', 1),
(114, 1, 'policy_template_view', 'perm.policy_template_view_desc', 1),
(115, 1, 'property_sets', 'perm.property_sets_desc', 1),
(116, 1, 'providers', 'perm.providers_desc', 1),
(117, 1, 'publish_document', 'perm.publish_document_desc', 1),
(118, 1, 'purge_deleted', 'perm.purge_deleted_desc', 1),
(119, 1, 'remove', 'perm.remove_desc', 1),
(120, 1, 'remove_locks', 'perm.remove_locks_desc', 1),
(121, 1, 'resource_duplicate', 'perm.resource_duplicate_desc', 1),
(122, 1, 'resourcegroup_delete', 'perm.resourcegroup_delete_desc', 1),
(123, 1, 'resourcegroup_edit', 'perm.resourcegroup_edit_desc', 1),
(124, 1, 'resourcegroup_new', 'perm.resourcegroup_new_desc', 1),
(125, 1, 'resourcegroup_resource_edit', 'perm.resourcegroup_resource_edit_desc', 1),
(126, 1, 'resourcegroup_resource_list', 'perm.resourcegroup_resource_list_desc', 1),
(127, 1, 'resourcegroup_save', 'perm.resourcegroup_save_desc', 1),
(128, 1, 'resourcegroup_view', 'perm.resourcegroup_view_desc', 1),
(129, 1, 'resource_quick_create', 'perm.resource_quick_create_desc', 1),
(130, 1, 'resource_quick_update', 'perm.resource_quick_update_desc', 1),
(131, 1, 'resource_tree', 'perm.resource_tree_desc', 1),
(132, 1, 'save', 'perm.save_desc', 1),
(133, 1, 'save_category', 'perm.save_category_desc', 1),
(134, 1, 'save_chunk', 'perm.save_chunk_desc', 1),
(135, 1, 'save_context', 'perm.save_context_desc', 1),
(136, 1, 'save_document', 'perm.save_document_desc', 1),
(137, 1, 'save_plugin', 'perm.save_plugin_desc', 1),
(138, 1, 'save_propertyset', 'perm.save_propertyset_desc', 1),
(139, 1, 'save_role', 'perm.save_role_desc', 1),
(140, 1, 'save_snippet', 'perm.save_snippet_desc', 1),
(141, 1, 'save_template', 'perm.save_template_desc', 1),
(142, 1, 'save_tv', 'perm.save_tv_desc', 1),
(143, 1, 'save_user', 'perm.save_user_desc', 1),
(144, 1, 'search', 'perm.search_desc', 1),
(145, 1, 'set_sudo', 'perm.set_sudo_desc', 1),
(146, 1, 'settings', 'perm.settings_desc', 1),
(147, 1, 'events', 'perm.events_desc', 1),
(148, 1, 'source_save', 'perm.source_save_desc', 1),
(149, 1, 'source_delete', 'perm.source_delete_desc', 1),
(150, 1, 'source_edit', 'perm.source_edit_desc', 1),
(151, 1, 'source_view', 'perm.source_view_desc', 1),
(152, 1, 'sources', 'perm.sources_desc', 1),
(153, 1, 'steal_locks', 'perm.steal_locks_desc', 1),
(154, 1, 'tree_show_element_ids', 'perm.tree_show_element_ids_desc', 1),
(155, 1, 'tree_show_resource_ids', 'perm.tree_show_resource_ids_desc', 1),
(156, 1, 'undelete_document', 'perm.undelete_document_desc', 1),
(157, 1, 'unpublish_document', 'perm.unpublish_document_desc', 1),
(158, 1, 'unlock_element_properties', 'perm.unlock_element_properties_desc', 1),
(159, 1, 'usergroup_delete', 'perm.usergroup_delete_desc', 1),
(160, 1, 'usergroup_edit', 'perm.usergroup_edit_desc', 1),
(161, 1, 'usergroup_new', 'perm.usergroup_new_desc', 1),
(162, 1, 'usergroup_save', 'perm.usergroup_save_desc', 1),
(163, 1, 'usergroup_user_edit', 'perm.usergroup_user_edit_desc', 1),
(164, 1, 'usergroup_user_list', 'perm.usergroup_user_list_desc', 1),
(165, 1, 'usergroup_view', 'perm.usergroup_view_desc', 1),
(166, 1, 'view', 'perm.view_desc', 1),
(167, 1, 'view_category', 'perm.view_category_desc', 1),
(168, 1, 'view_chunk', 'perm.view_chunk_desc', 1),
(169, 1, 'view_context', 'perm.view_context_desc', 1),
(170, 1, 'view_document', 'perm.view_document_desc', 1),
(171, 1, 'view_element', 'perm.view_element_desc', 1),
(172, 1, 'view_eventlog', 'perm.view_eventlog_desc', 1),
(173, 1, 'view_offline', 'perm.view_offline_desc', 1),
(174, 1, 'view_plugin', 'perm.view_plugin_desc', 1),
(175, 1, 'view_propertyset', 'perm.view_propertyset_desc', 1),
(176, 1, 'view_role', 'perm.view_role_desc', 1),
(177, 1, 'view_snippet', 'perm.view_snippet_desc', 1),
(178, 1, 'view_sysinfo', 'perm.view_sysinfo_desc', 1),
(179, 1, 'view_template', 'perm.view_template_desc', 1),
(180, 1, 'view_tv', 'perm.view_tv_desc', 1),
(181, 1, 'view_user', 'perm.view_user_desc', 1),
(182, 1, 'view_unpublished', 'perm.view_unpublished_desc', 1),
(183, 1, 'workspaces', 'perm.workspaces_desc', 1),
(184, 2, 'add_children', 'perm.add_children_desc', 1),
(185, 2, 'copy', 'perm.copy_desc', 1),
(186, 2, 'create', 'perm.create_desc', 1),
(187, 2, 'delete', 'perm.delete_desc', 1),
(188, 2, 'list', 'perm.list_desc', 1),
(189, 2, 'load', 'perm.load_desc', 1),
(190, 2, 'move', 'perm.move_desc', 1),
(191, 2, 'publish', 'perm.publish_desc', 1),
(192, 2, 'remove', 'perm.remove_desc', 1),
(193, 2, 'save', 'perm.save_desc', 1),
(194, 2, 'steal_lock', 'perm.steal_lock_desc', 1),
(195, 2, 'undelete', 'perm.undelete_desc', 1),
(196, 2, 'unpublish', 'perm.unpublish_desc', 1),
(197, 2, 'view', 'perm.view_desc', 1),
(198, 3, 'load', 'perm.load_desc', 1),
(199, 3, 'list', 'perm.list_desc', 1),
(200, 3, 'view', 'perm.view_desc', 1),
(201, 3, 'save', 'perm.save_desc', 1),
(202, 3, 'remove', 'perm.remove_desc', 1),
(203, 4, 'add_children', 'perm.add_children_desc', 1),
(204, 4, 'create', 'perm.create_desc', 1),
(205, 4, 'copy', 'perm.copy_desc', 1),
(206, 4, 'delete', 'perm.delete_desc', 1),
(207, 4, 'list', 'perm.list_desc', 1),
(208, 4, 'load', 'perm.load_desc', 1),
(209, 4, 'remove', 'perm.remove_desc', 1),
(210, 4, 'save', 'perm.save_desc', 1),
(211, 4, 'view', 'perm.view_desc', 1),
(212, 5, 'create', 'perm.create_desc', 1),
(213, 5, 'copy', 'perm.copy_desc', 1),
(214, 5, 'list', 'perm.list_desc', 1),
(215, 5, 'load', 'perm.load_desc', 1),
(216, 5, 'remove', 'perm.remove_desc', 1),
(217, 5, 'save', 'perm.save_desc', 1),
(218, 5, 'view', 'perm.view_desc', 1),
(219, 6, 'load', 'perm.load_desc', 1),
(220, 6, 'list', 'perm.list_desc', 1),
(221, 6, 'view', 'perm.view_desc', 1),
(222, 6, 'save', 'perm.save_desc', 1),
(223, 6, 'remove', 'perm.remove_desc', 1),
(224, 6, 'view_unpublished', 'perm.view_unpublished_desc', 1),
(225, 6, 'copy', 'perm.copy_desc', 1),
(226, 7, 'list', 'perm.list_desc', 1),
(227, 7, 'load', 'perm.load_desc', 1),
(228, 7, 'view', 'perm.view_desc', 1);

-- --------------------------------------------------------

--
-- Table structure for table `modx_access_policies`
--

CREATE TABLE `modx_access_policies` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `description` mediumtext DEFAULT NULL,
  `parent` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `template` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `class` varchar(191) NOT NULL DEFAULT '',
  `data` text DEFAULT NULL,
  `lexicon` varchar(255) NOT NULL DEFAULT 'permissions'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `modx_access_policies`
--

INSERT INTO `modx_access_policies` (`id`, `name`, `description`, `parent`, `template`, `class`, `data`, `lexicon`) VALUES
(1, 'Resource', 'policy_resource_desc', 0, 2, '', '{\"add_children\":true,\"create\":true,\"copy\":true,\"delete\":true,\"list\":true,\"load\":true,\"move\":true,\"publish\":true,\"remove\":true,\"save\":true,\"steal_lock\":true,\"undelete\":true,\"unpublish\":true,\"view\":true}', 'permissions'),
(2, 'Administrator', 'policy_administrator_desc', 0, 1, '', '{\"about\":true,\"access_permissions\":true,\"actions\":true,\"change_password\":true,\"change_profile\":true,\"charsets\":true,\"class_map\":true,\"components\":true,\"content_types\":true,\"countries\":true,\"create\":true,\"credits\":true,\"customize_forms\":true,\"dashboards\":true,\"database\":true,\"database_truncate\":true,\"delete_category\":true,\"delete_chunk\":true,\"delete_context\":true,\"delete_document\":true,\"delete_eventlog\":true,\"delete_plugin\":true,\"delete_propertyset\":true,\"delete_role\":true,\"delete_snippet\":true,\"delete_static_resource\":true,\"delete_symlink\":true,\"delete_template\":true,\"delete_tv\":true,\"delete_user\":true,\"delete_weblink\":true,\"directory_chmod\":true,\"directory_create\":true,\"directory_list\":true,\"directory_remove\":true,\"directory_update\":true,\"edit_category\":true,\"edit_chunk\":true,\"edit_context\":true,\"edit_document\":true,\"edit_locked\":true,\"edit_plugin\":true,\"edit_propertyset\":true,\"edit_role\":true,\"edit_snippet\":true,\"edit_static_resource\":true,\"edit_symlink\":true,\"edit_template\":true,\"edit_tv\":true,\"edit_user\":true,\"edit_weblink\":true,\"element_tree\":true,\"empty_cache\":true,\"error_log_erase\":true,\"error_log_view\":true,\"events\":true,\"export_static\":true,\"file_create\":true,\"file_list\":true,\"file_manager\":true,\"file_remove\":true,\"file_tree\":true,\"file_unpack\":true,\"file_update\":true,\"file_upload\":true,\"file_view\":true,\"flush_sessions\":true,\"frames\":true,\"help\":true,\"home\":true,\"language\":true,\"languages\":true,\"lexicons\":true,\"list\":true,\"load\":true,\"logout\":true,\"mgr_log_view\":true,\"mgr_log_erase\":true,\"menu_reports\":true,\"menu_security\":true,\"menu_site\":true,\"menu_support\":true,\"menu_system\":true,\"menu_tools\":true,\"menu_trash\":true,\"menu_user\":true,\"menus\":true,\"messages\":true,\"namespaces\":true,\"new_category\":true,\"new_chunk\":true,\"new_context\":true,\"new_document\":true,\"new_document_in_root\":true,\"new_plugin\":true,\"new_propertyset\":true,\"new_role\":true,\"new_snippet\":true,\"new_static_resource\":true,\"new_symlink\":true,\"new_template\":true,\"new_tv\":true,\"new_user\":true,\"new_weblink\":true,\"packages\":true,\"policy_delete\":true,\"policy_edit\":true,\"policy_new\":true,\"policy_save\":true,\"policy_template_delete\":true,\"policy_template_edit\":true,\"policy_template_new\":true,\"policy_template_save\":true,\"policy_template_view\":true,\"policy_view\":true,\"property_sets\":true,\"providers\":true,\"publish_document\":true,\"purge_deleted\":true,\"remove\":true,\"remove_locks\":true,\"resource_duplicate\":true,\"resource_quick_create\":true,\"resource_quick_update\":true,\"resource_tree\":true,\"resourcegroup_delete\":true,\"resourcegroup_edit\":true,\"resourcegroup_new\":true,\"resourcegroup_resource_edit\":true,\"resourcegroup_resource_list\":true,\"resourcegroup_save\":true,\"resourcegroup_view\":true,\"save\":true,\"save_category\":true,\"save_chunk\":true,\"save_context\":true,\"save_document\":true,\"save_plugin\":true,\"save_propertyset\":true,\"save_role\":true,\"save_snippet\":true,\"save_template\":true,\"save_tv\":true,\"save_user\":true,\"search\":true,\"set_sudo\":true,\"settings\":true,\"source_delete\":true,\"source_edit\":true,\"source_save\":true,\"source_view\":true,\"sources\":true,\"steal_locks\":true,\"tree_show_element_ids\":true,\"tree_show_resource_ids\":true,\"undelete_document\":true,\"unlock_element_properties\":true,\"unpublish_document\":true,\"usergroup_delete\":true,\"usergroup_edit\":true,\"usergroup_new\":true,\"usergroup_save\":true,\"usergroup_user_edit\":true,\"usergroup_user_list\":true,\"usergroup_view\":true,\"view\":true,\"view_category\":true,\"view_chunk\":true,\"view_context\":true,\"view_document\":true,\"view_element\":true,\"view_eventlog\":true,\"view_offline\":true,\"view_plugin\":true,\"view_propertyset\":true,\"view_role\":true,\"view_snippet\":true,\"view_sysinfo\":true,\"view_template\":true,\"view_tv\":true,\"view_unpublished\":true,\"view_user\":true,\"workspaces\":true}', 'permissions'),
(3, 'Load Only', 'policy_load_only_desc', 0, 3, '', '{\"load\":true}', 'permissions'),
(4, 'Load, List and View', 'policy_load_list_and_view_desc', 0, 3, '', '{\"load\":true,\"list\":true,\"view\":true}', 'permissions'),
(5, 'Object', 'policy_object_desc', 0, 3, '', '{\"load\":true,\"list\":true,\"view\":true,\"save\":true,\"remove\":true}', 'permissions'),
(6, 'Element', 'policy_element_desc', 0, 4, '', '{\"add_children\":true,\"create\":true,\"delete\":true,\"list\":true,\"load\":true,\"remove\":true,\"save\":true,\"view\":true,\"copy\":true}', 'permissions'),
(7, 'Content Editor', 'policy_content_editor_desc', 0, 1, '', '{\"change_profile\":true,\"class_map\":true,\"countries\":true,\"delete_document\":true,\"delete_static_resource\":true,\"delete_symlink\":true,\"delete_weblink\":true,\"edit_document\":true,\"edit_static_resource\":true,\"edit_symlink\":true,\"edit_weblink\":true,\"frames\":true,\"help\":true,\"home\":true,\"language\":true,\"list\":true,\"load\":true,\"logout\":true,\"menu_reports\":true,\"menu_site\":true,\"menu_support\":true,\"menu_tools\":true,\"menu_user\":true,\"new_document\":true,\"new_static_resource\":true,\"new_symlink\":true,\"new_weblink\":true,\"resource_duplicate\":true,\"resource_tree\":true,\"save_document\":true,\"source_view\":true,\"tree_show_resource_ids\":true,\"view\":true,\"view_document\":true,\"view_template\":true}', 'permissions'),
(8, 'Media Source Admin', 'policy_media_source_admin_desc', 0, 5, '', '{\"create\":true,\"copy\":true,\"load\":true,\"list\":true,\"save\":true,\"remove\":true,\"view\":true}', 'permissions'),
(9, 'Media Source User', 'policy_media_source_user_desc', 0, 5, '', '{\"load\":true,\"list\":true,\"view\":true}', 'permissions'),
(10, 'Developer', 'policy_developer_desc', 0, 1, '', '{\"about\":true,\"change_password\":true,\"change_profile\":true,\"charsets\":true,\"class_map\":true,\"components\":true,\"content_types\":true,\"countries\":true,\"create\":true,\"credits\":true,\"customize_forms\":true,\"dashboards\":true,\"database\":true,\"delete_category\":true,\"delete_chunk\":true,\"delete_context\":true,\"delete_document\":true,\"delete_eventlog\":true,\"delete_plugin\":true,\"delete_propertyset\":true,\"delete_role\":true,\"delete_snippet\":true,\"delete_template\":true,\"delete_tv\":true,\"delete_user\":true,\"directory_chmod\":true,\"directory_create\":true,\"directory_list\":true,\"directory_remove\":true,\"directory_update\":true,\"edit_category\":true,\"edit_chunk\":true,\"edit_context\":true,\"edit_document\":true,\"edit_locked\":true,\"edit_plugin\":true,\"edit_propertyset\":true,\"edit_role\":true,\"edit_snippet\":true,\"edit_static_resource\":true,\"edit_symlink\":true,\"edit_template\":true,\"edit_tv\":true,\"edit_user\":true,\"edit_weblink\":true,\"element_tree\":true,\"empty_cache\":true,\"error_log_erase\":true,\"error_log_view\":true,\"export_static\":true,\"file_create\":true,\"file_list\":true,\"file_manager\":true,\"file_remove\":true,\"file_tree\":true,\"file_unpack\":true,\"file_update\":true,\"file_upload\":true,\"file_view\":true,\"frames\":true,\"help\":true,\"home\":true,\"language\":true,\"languages\":true,\"lexicons\":true,\"list\":true,\"load\":true,\"logout\":true,\"mgr_log_view\":true,\"mgr_log_erase\":true,\"menu_reports\":true,\"menu_site\":true,\"menu_support\":true,\"menu_system\":true,\"menu_tools\":true,\"menu_user\":true,\"menus\":true,\"messages\":true,\"namespaces\":true,\"new_category\":true,\"new_chunk\":true,\"new_context\":true,\"new_document\":true,\"new_document_in_root\":true,\"new_plugin\":true,\"new_propertyset\":true,\"new_role\":true,\"new_snippet\":true,\"new_static_resource\":true,\"new_symlink\":true,\"new_template\":true,\"new_tv\":true,\"new_user\":true,\"new_weblink\":true,\"packages\":true,\"property_sets\":true,\"providers\":true,\"publish_document\":true,\"purge_deleted\":true,\"remove\":true,\"resource_duplicate\":true,\"resource_quick_create\":true,\"resource_quick_update\":true,\"resource_tree\":true,\"save\":true,\"save_category\":true,\"save_chunk\":true,\"save_context\":true,\"save_document\":true,\"save_plugin\":true,\"save_propertyset\":true,\"save_snippet\":true,\"save_template\":true,\"save_tv\":true,\"save_user\":true,\"search\":true,\"settings\":true,\"source_delete\":true,\"source_edit\":true,\"source_save\":true,\"source_view\":true,\"sources\":true,\"tree_show_element_ids\":true,\"tree_show_resource_ids\":true,\"undelete_document\":true,\"unlock_element_properties\":true,\"unpublish_document\":true,\"view\":true,\"view_category\":true,\"view_chunk\":true,\"view_context\":true,\"view_document\":true,\"view_element\":true,\"view_eventlog\":true,\"view_offline\":true,\"view_plugin\":true,\"view_propertyset\":true,\"view_role\":true,\"view_snippet\":true,\"view_sysinfo\":true,\"view_template\":true,\"view_tv\":true,\"view_unpublished\":true,\"view_user\":true,\"workspaces\":true}', 'permissions'),
(11, 'Context', 'policy_context_desc', 0, 6, '', '{\"load\":true,\"list\":true,\"view\":true,\"save\":true,\"remove\":true,\"copy\":true,\"view_unpublished\":true}', 'permissions'),
(12, 'Hidden Namespace', 'policy_hidden_namespace_desc', 0, 7, '', '{\"load\":false,\"list\":false,\"view\":true}', 'permissions');

-- --------------------------------------------------------

--
-- Table structure for table `modx_access_policy_templates`
--

CREATE TABLE `modx_access_policy_templates` (
  `id` int(10) UNSIGNED NOT NULL,
  `template_group` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `name` varchar(191) NOT NULL DEFAULT '',
  `description` mediumtext DEFAULT NULL,
  `lexicon` varchar(255) NOT NULL DEFAULT 'permissions'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `modx_access_policy_templates`
--

INSERT INTO `modx_access_policy_templates` (`id`, `template_group`, `name`, `description`, `lexicon`) VALUES
(1, 1, 'AdministratorTemplate', 'policy_template_administrator_desc', 'permissions'),
(2, 3, 'ResourceTemplate', 'policy_template_resource_desc', 'permissions'),
(3, 2, 'ObjectTemplate', 'policy_template_object_desc', 'permissions'),
(4, 4, 'ElementTemplate', 'policy_template_element_desc', 'permissions'),
(5, 5, 'MediaSourceTemplate', 'policy_template_mediasource_desc', 'permissions'),
(6, 7, 'ContextTemplate', 'policy_template_context_desc', 'permissions'),
(7, 6, 'NamespaceTemplate', 'policy_template_namespace_desc', 'permissions');

-- --------------------------------------------------------

--
-- Table structure for table `modx_access_policy_template_groups`
--

CREATE TABLE `modx_access_policy_template_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL DEFAULT '',
  `description` mediumtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `modx_access_policy_template_groups`
--

INSERT INTO `modx_access_policy_template_groups` (`id`, `name`, `description`) VALUES
(1, 'Administrator', 'policy_template_group_administrator_desc'),
(2, 'Object', 'policy_template_group_object_desc'),
(3, 'Resource', 'policy_template_group_resource_desc'),
(4, 'Element', 'policy_template_group_element_desc'),
(5, 'MediaSource', 'policy_template_group_mediasource_desc'),
(6, 'Namespace', 'policy_template_group_namespace_desc'),
(7, 'Context', 'policy_template_group_context_desc');

-- --------------------------------------------------------

--
-- Table structure for table `modx_access_resources`
--

CREATE TABLE `modx_access_resources` (
  `id` int(10) UNSIGNED NOT NULL,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'MODX\\Revolution\\modPrincipal',
  `principal` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `authority` int(10) UNSIGNED NOT NULL DEFAULT 9999,
  `policy` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `context_key` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `modx_access_resource_groups`
--

CREATE TABLE `modx_access_resource_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'MODX\\Revolution\\modPrincipal',
  `principal` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `authority` int(10) UNSIGNED NOT NULL DEFAULT 9999,
  `policy` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `context_key` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `modx_access_templatevars`
--

CREATE TABLE `modx_access_templatevars` (
  `id` int(10) UNSIGNED NOT NULL,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'MODX\\Revolution\\modPrincipal',
  `principal` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `authority` int(10) UNSIGNED NOT NULL DEFAULT 9999,
  `policy` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `context_key` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `modx_actiondom`
--

CREATE TABLE `modx_actiondom` (
  `id` int(10) UNSIGNED NOT NULL,
  `set` int(11) NOT NULL DEFAULT 0,
  `action` varchar(191) NOT NULL DEFAULT '',
  `name` varchar(191) NOT NULL DEFAULT '',
  `description` text DEFAULT NULL,
  `xtype` varchar(100) NOT NULL DEFAULT '',
  `container` varchar(255) NOT NULL DEFAULT '',
  `rule` varchar(100) NOT NULL DEFAULT '',
  `value` text NOT NULL,
  `constraint` varchar(255) NOT NULL DEFAULT '',
  `constraint_field` varchar(100) NOT NULL DEFAULT '',
  `constraint_class` varchar(100) NOT NULL DEFAULT '',
  `active` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  `for_parent` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `rank` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `modx_actions_fields`
--

CREATE TABLE `modx_actions_fields` (
  `id` int(10) UNSIGNED NOT NULL,
  `action` varchar(191) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `type` varchar(100) NOT NULL DEFAULT 'field',
  `tab` varchar(191) NOT NULL DEFAULT '',
  `form` varchar(255) NOT NULL DEFAULT '',
  `other` varchar(255) NOT NULL DEFAULT '',
  `rank` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `modx_actions_fields`
--

INSERT INTO `modx_actions_fields` (`id`, `action`, `name`, `type`, `tab`, `form`, `other`, `rank`) VALUES
(1, 'resource/update', 'modx-resource-settings', 'tab', '', 'modx-panel-resource', '', 0),
(2, 'resource/update', 'modx-resource-main-left', 'tab', '', 'modx-panel-resource', '', 1),
(3, 'resource/update', 'id', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 0),
(4, 'resource/update', 'pagetitle', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 1),
(5, 'resource/update', 'alias', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 2),
(6, 'resource/update', 'longtitle', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 3),
(7, 'resource/update', 'description', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 4),
(8, 'resource/update', 'introtext', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 5),
(9, 'resource/update', 'modx-resource-content', 'field', 'modx-resource-content', 'modx-panel-resource', '', 0),
(10, 'resource/update', 'modx-resource-main-right', 'tab', '', 'modx-panel-resource', '', 3),
(11, 'resource/update', 'modx-resource-main-right-top', 'tab', '', 'modx-panel-resource', '', 4),
(12, 'resource/update', 'published', 'field', 'modx-resource-main-right-top', 'modx-panel-resource', '', 0),
(13, 'resource/update', 'deleted', 'field', 'modx-resource-main-right-top', 'modx-panel-resource', '', 1),
(14, 'resource/update', 'publishedon', 'field', 'modx-resource-main-right-top', 'modx-panel-resource', '', 2),
(15, 'resource/update', 'pub_date', 'field', 'modx-resource-main-right-top', 'modx-panel-resource', '', 3),
(16, 'resource/update', 'unpub_date', 'field', 'modx-resource-main-right-top', 'modx-panel-resource', '', 4),
(17, 'resource/update', 'modx-resource-main-right-middle', 'tab', '', 'modx-panel-resource', '', 5),
(18, 'resource/update', 'template', 'field', 'modx-resource-main-right-middle', 'modx-panel-resource', '', 0),
(19, 'resource/update', 'modx-resource-main-right-bottom', 'tab', '', 'modx-panel-resource', '', 6),
(20, 'resource/update', 'hidemenu', 'field', 'modx-resource-main-right-bottom', 'modx-panel-resource', '', 0),
(21, 'resource/update', 'menutitle', 'field', 'modx-resource-main-right-bottom', 'modx-panel-resource', '', 1),
(22, 'resource/update', 'link_attributes', 'field', 'modx-resource-main-right-bottom', 'modx-panel-resource', '', 2),
(23, 'resource/update', 'menuindex', 'field', 'modx-resource-main-right-bottom', 'modx-panel-resource', '', 3),
(24, 'resource/update', 'modx-page-settings', 'tab', '', 'modx-panel-resource', '', 7),
(25, 'resource/update', 'modx-page-settings-left', 'tab', '', 'modx-panel-resource', '', 8),
(26, 'resource/update', 'class_key', 'field', 'modx-page-settings-left', 'modx-panel-resource', '', 0),
(27, 'resource/update', 'content_type', 'field', 'modx-page-settings-left', 'modx-panel-resource', '', 1),
(28, 'resource/update', 'modx-page-settings-right', 'tab', '', 'modx-panel-resource', '', 9),
(29, 'resource/update', 'parent-cmb', 'field', 'modx-page-settings-right', 'modx-panel-resource', '', 0),
(30, 'resource/update', 'content_dispo', 'field', 'modx-page-settings-right', 'modx-panel-resource', '', 1),
(31, 'resource/update', 'modx-page-settings-box-left', 'tab', '', 'modx-panel-resource', '', 10),
(32, 'resource/update', 'isfolder', 'field', 'modx-page-settings-box-left', 'modx-panel-resource', '', 0),
(33, 'resource/update', 'show_in_tree', 'field', 'modx-page-settings-box-left', 'modx-panel-resource', '', 1),
(34, 'resource/update', 'hide_children_in_tree', 'field', 'modx-page-settings-box-left', 'modx-panel-resource', '', 2),
(35, 'resource/update', 'alias_visible', 'field', 'modx-page-settings-box-left', 'modx-panel-resource', '', 3),
(36, 'resource/update', 'uri_override', 'field', 'modx-page-settings-box-left', 'modx-panel-resource', '', 4),
(37, 'resource/update', 'uri', 'field', 'modx-page-settings-box-left', 'modx-panel-resource', '', 5),
(38, 'resource/update', 'modx-page-settings-box-right', 'tab', '', 'modx-panel-resource', '', 11),
(39, 'resource/update', 'richtext', 'field', 'modx-page-settings-box-right', 'modx-panel-resource', '', 0),
(40, 'resource/update', 'cacheable', 'field', 'modx-page-settings-box-right', 'modx-panel-resource', '', 1),
(41, 'resource/update', 'searchable', 'field', 'modx-page-settings-box-right', 'modx-panel-resource', '', 2),
(42, 'resource/update', 'syncsite', 'field', 'modx-page-settings-box-right', 'modx-panel-resource', '', 3),
(43, 'resource/update', 'modx-panel-resource-tv', 'tab', '', 'modx-panel-resource', 'tv', 12),
(44, 'resource/update', 'modx-resource-access-permissions', 'tab', '', 'modx-panel-resource', '', 13),
(45, 'resource/create', 'modx-resource-settings', 'tab', '', 'modx-panel-resource', '', 0),
(46, 'resource/create', 'modx-resource-main-left', 'tab', '', 'modx-panel-resource', '', 1),
(47, 'resource/create', 'id', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 0),
(48, 'resource/create', 'pagetitle', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 1),
(49, 'resource/create', 'alias', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 2),
(50, 'resource/create', 'longtitle', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 3),
(51, 'resource/create', 'description', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 4),
(52, 'resource/create', 'introtext', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 5),
(53, 'resource/create', 'modx-resource-content', 'field', 'modx-resource-content', 'modx-panel-resource', '', 0),
(54, 'resource/create', 'modx-resource-main-right', 'tab', '', 'modx-panel-resource', '', 3),
(55, 'resource/create', 'modx-resource-main-right-top', 'tab', '', 'modx-panel-resource', '', 4),
(56, 'resource/create', 'published', 'field', 'modx-resource-main-right-top', 'modx-panel-resource', '', 0),
(57, 'resource/create', 'deleted', 'field', 'modx-resource-main-right-top', 'modx-panel-resource', '', 1),
(58, 'resource/create', 'publishedon', 'field', 'modx-resource-main-right-top', 'modx-panel-resource', '', 2),
(59, 'resource/create', 'pub_date', 'field', 'modx-resource-main-right-top', 'modx-panel-resource', '', 3),
(60, 'resource/create', 'unpub_date', 'field', 'modx-resource-main-right-top', 'modx-panel-resource', '', 4),
(61, 'resource/create', 'modx-resource-main-right-middle', 'tab', '', 'modx-panel-resource', '', 5),
(62, 'resource/create', 'template', 'field', 'modx-resource-main-right-middle', 'modx-panel-resource', '', 0),
(63, 'resource/create', 'modx-resource-main-right-bottom', 'tab', '', 'modx-panel-resource', '', 6),
(64, 'resource/create', 'hidemenu', 'field', 'modx-resource-main-right-bottom', 'modx-panel-resource', '', 0),
(65, 'resource/create', 'menutitle', 'field', 'modx-resource-main-right-bottom', 'modx-panel-resource', '', 1),
(66, 'resource/create', 'link_attributes', 'field', 'modx-resource-main-right-bottom', 'modx-panel-resource', '', 2),
(67, 'resource/create', 'menuindex', 'field', 'modx-resource-main-right-bottom', 'modx-panel-resource', '', 3),
(68, 'resource/create', 'modx-page-settings', 'tab', '', 'modx-panel-resource', '', 7),
(69, 'resource/create', 'modx-page-settings-left', 'tab', '', 'modx-panel-resource', '', 8),
(70, 'resource/create', 'class_key', 'field', 'modx-page-settings-left', 'modx-panel-resource', '', 0),
(71, 'resource/create', 'content_type', 'field', 'modx-page-settings-left', 'modx-panel-resource', '', 1),
(72, 'resource/create', 'modx-page-settings-right', 'tab', '', 'modx-panel-resource', '', 9),
(73, 'resource/create', 'parent-cmb', 'field', 'modx-page-settings-right', 'modx-panel-resource', '', 0),
(74, 'resource/create', 'content_dispo', 'field', 'modx-page-settings-right', 'modx-panel-resource', '', 1),
(75, 'resource/create', 'modx-page-settings-box-left', 'tab', '', 'modx-panel-resource', '', 10),
(76, 'resource/create', 'isfolder', 'field', 'modx-page-settings-box-left', 'modx-panel-resource', '', 0),
(77, 'resource/create', 'show_in_tree', 'field', 'modx-page-settings-box-left', 'modx-panel-resource', '', 1),
(78, 'resource/create', 'hide_children_in_tree', 'field', 'modx-page-settings-box-left', 'modx-panel-resource', '', 2),
(79, 'resource/create', 'alias_visible', 'field', 'modx-page-settings-box-left', 'modx-panel-resource', '', 3),
(80, 'resource/create', 'uri_override', 'field', 'modx-page-settings-box-left', 'modx-panel-resource', '', 4),
(81, 'resource/create', 'uri', 'field', 'modx-page-settings-box-left', 'modx-panel-resource', '', 5),
(82, 'resource/create', 'modx-page-settings-box-right', 'tab', '', 'modx-panel-resource', '', 11),
(83, 'resource/create', 'richtext', 'field', 'modx-page-settings-box-right', 'modx-panel-resource', '', 0),
(84, 'resource/create', 'cacheable', 'field', 'modx-page-settings-box-right', 'modx-panel-resource', '', 1),
(85, 'resource/create', 'searchable', 'field', 'modx-page-settings-box-right', 'modx-panel-resource', '', 2),
(86, 'resource/create', 'syncsite', 'field', 'modx-page-settings-box-right', 'modx-panel-resource', '', 3),
(87, 'resource/create', 'modx-panel-resource-tv', 'tab', '', 'modx-panel-resource', 'tv', 12),
(88, 'resource/create', 'modx-resource-access-permissions', 'tab', '', 'modx-panel-resource', '', 13);

-- --------------------------------------------------------

--
-- Table structure for table `modx_active_users`
--

CREATE TABLE `modx_active_users` (
  `internalKey` int(9) UNSIGNED NOT NULL DEFAULT 0,
  `username` varchar(50) NOT NULL DEFAULT '',
  `lasthit` int(20) NOT NULL DEFAULT 0,
  `id` int(10) DEFAULT NULL,
  `action` varchar(255) NOT NULL DEFAULT '',
  `ip` varchar(20) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `modx_categories`
--

CREATE TABLE `modx_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent` int(10) UNSIGNED DEFAULT 0,
  `category` varchar(45) NOT NULL DEFAULT '',
  `rank` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `modx_categories_closure`
--

CREATE TABLE `modx_categories_closure` (
  `ancestor` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `descendant` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `depth` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `modx_content_type`
--

CREATE TABLE `modx_content_type` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `description` tinytext DEFAULT NULL,
  `mime_type` tinytext DEFAULT NULL,
  `file_extensions` tinytext DEFAULT NULL,
  `icon` tinytext DEFAULT NULL,
  `headers` mediumtext DEFAULT NULL,
  `binary` tinyint(1) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `modx_content_type`
--

INSERT INTO `modx_content_type` (`id`, `name`, `description`, `mime_type`, `file_extensions`, `icon`, `headers`, `binary`) VALUES
(1, 'HTML', 'HTML content', 'text/html', '.html', '', NULL, 0),
(2, 'XML', 'XML content', 'text/xml', '.xml', 'icon-xml', NULL, 0),
(3, 'Text', 'Plain text content', 'text/plain', '.txt', 'icon-txt', NULL, 0),
(4, 'CSS', 'CSS content', 'text/css', '.css', 'icon-css', NULL, 0),
(5, 'JavaScript', 'JavaScript content', 'text/javascript', '.js', 'icon-js', NULL, 0),
(6, 'RSS', 'For RSS feeds', 'application/rss+xml', '.rss', 'icon-rss', NULL, 0),
(7, 'JSON', 'JSON', 'application/json', '.json', 'icon-json', NULL, 0),
(8, 'PDF', 'PDF Files', 'application/pdf', '.pdf', 'icon-pdf', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `modx_context`
--

CREATE TABLE `modx_context` (
  `key` varchar(100) NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `description` tinytext DEFAULT NULL,
  `rank` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `modx_context`
--

INSERT INTO `modx_context` (`key`, `name`, `description`, `rank`) VALUES
('mgr', 'Manager', 'The default manager or administration context for content management activity.', 0),
('web', 'Website', 'The default front-end context for your web site.', 0);

-- --------------------------------------------------------

--
-- Table structure for table `modx_context_resource`
--

CREATE TABLE `modx_context_resource` (
  `context_key` varchar(191) NOT NULL,
  `resource` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `modx_context_setting`
--

CREATE TABLE `modx_context_setting` (
  `context_key` varchar(191) NOT NULL,
  `key` varchar(50) NOT NULL,
  `value` mediumtext DEFAULT NULL,
  `xtype` varchar(75) NOT NULL DEFAULT 'textfield',
  `namespace` varchar(40) NOT NULL DEFAULT 'core',
  `area` varchar(255) NOT NULL DEFAULT '',
  `editedon` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `modx_context_setting`
--

INSERT INTO `modx_context_setting` (`context_key`, `key`, `value`, `xtype`, `namespace`, `area`, `editedon`) VALUES
('mgr', 'allow_tags_in_post', '1', 'combo-boolean', 'core', 'system', NULL),
('mgr', 'modRequest.class', 'MODX\\Revolution\\modManagerRequest', 'textfield', 'core', 'system', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `modx_dashboard`
--

CREATE TABLE `modx_dashboard` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL DEFAULT '',
  `description` text DEFAULT NULL,
  `hide_trees` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `customizable` tinyint(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `modx_dashboard`
--

INSERT INTO `modx_dashboard` (`id`, `name`, `description`, `hide_trees`, `customizable`) VALUES
(1, 'Default', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `modx_dashboard_widget`
--

CREATE TABLE `modx_dashboard_widget` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL DEFAULT '',
  `description` text DEFAULT NULL,
  `type` varchar(100) NOT NULL,
  `content` mediumtext DEFAULT NULL,
  `properties` text DEFAULT NULL,
  `namespace` varchar(191) NOT NULL DEFAULT '',
  `lexicon` varchar(191) NOT NULL DEFAULT 'core:dashboards',
  `size` varchar(255) NOT NULL DEFAULT 'half',
  `permission` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `modx_dashboard_widget`
--

INSERT INTO `modx_dashboard_widget` (`id`, `name`, `description`, `type`, `content`, `properties`, `namespace`, `lexicon`, `size`, `permission`) VALUES
(1, 'w_newsfeed', 'w_newsfeed_desc', 'file', '[[++manager_path]]controllers/default/dashboard/widget.modx-news.php', NULL, 'core', 'core:dashboards', 'one-third', ''),
(2, 'w_securityfeed', 'w_securityfeed_desc', 'file', '[[++manager_path]]controllers/default/dashboard/widget.modx-security.php', NULL, 'core', 'core:dashboards', 'one-third', ''),
(3, 'w_whosonline', 'w_whosonline_desc', 'file', '[[++manager_path]]controllers/default/dashboard/widget.grid-online.php', NULL, 'core', 'core:dashboards', 'one-third', ''),
(4, 'w_recentlyeditedresources', 'w_recentlyeditedresources_desc', 'file', '[[++manager_path]]controllers/default/dashboard/widget.grid-rer.php', NULL, 'core', 'core:dashboards', 'two-thirds', 'view_document'),
(5, 'w_configcheck', 'w_configcheck_desc', 'file', '[[++manager_path]]controllers/default/dashboard/widget.configcheck.php', NULL, 'core', 'core:dashboards', 'full', ''),
(6, 'w_buttons', 'w_buttons_desc', 'file', '[[++manager_path]]controllers/default/dashboard/widget.buttons.php', '{\"create-resource\":{\"link\":\"[[++manager_url]]?a=resource\\/create\",\"icon\":\"file-o\",\"title\":\"[[%action_new_resource]]\",\"description\":\"[[%action_new_resource_desc]]\"},\"view-site\":{\"link\":\"[[++site_url]]\",\"icon\":\"eye\",\"title\":\"[[%action_view_website]]\",\"description\":\"[[%action_view_website_desc]]\",\"target\":\"_blank\"},\"advanced-search\":{\"link\":\"[[++manager_url]]?a=search\",\"icon\":\"search\",\"title\":\"[[%action_advanced_search]]\",\"description\":\"[[%action_advanced_search_desc]]\"},\"manage-users\":{\"link\":\"[[++manager_url]]?a=security\\/user\",\"icon\":\"user\",\"title\":\"[[%action_manage_users]]\",\"description\":\"[[%action_manage_users_desc]]\"}}', 'core', 'core:dashboards', 'full', ''),
(7, 'w_updates', 'w_updates_desc', 'file', '[[++manager_path]]controllers/default/dashboard/widget.updates.php', NULL, 'core', 'core:dashboards', 'one-third', 'workspaces');

-- --------------------------------------------------------

--
-- Table structure for table `modx_dashboard_widget_placement`
--

CREATE TABLE `modx_dashboard_widget_placement` (
  `user` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `dashboard` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `widget` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `rank` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `size` varchar(255) NOT NULL DEFAULT 'half'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `modx_dashboard_widget_placement`
--

INSERT INTO `modx_dashboard_widget_placement` (`user`, `dashboard`, `widget`, `rank`, `size`) VALUES
(0, 1, 1, 2, 'one-third'),
(0, 1, 2, 3, 'one-third'),
(0, 1, 3, 5, 'one-third'),
(0, 1, 4, 6, 'two-thirds'),
(0, 1, 5, 1, 'full'),
(0, 1, 6, 0, 'full'),
(0, 1, 7, 4, 'one-third'),
(1, 1, 1, 2, 'one-third'),
(1, 1, 2, 3, 'one-third'),
(1, 1, 3, 5, 'one-third'),
(1, 1, 4, 6, 'two-thirds'),
(1, 1, 5, 1, 'full'),
(1, 1, 6, 0, 'full'),
(1, 1, 7, 4, 'one-third'),
(2, 1, 1, 2, 'one-third'),
(2, 1, 2, 3, 'one-third'),
(2, 1, 3, 5, 'one-third'),
(2, 1, 4, 6, 'two-thirds'),
(2, 1, 5, 1, 'full'),
(2, 1, 6, 0, 'full'),
(2, 1, 7, 4, 'one-third');

-- --------------------------------------------------------

--
-- Table structure for table `modx_deprecated_call`
--

CREATE TABLE `modx_deprecated_call` (
  `id` int(10) UNSIGNED NOT NULL,
  `method` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `call_count` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `caller` varchar(191) NOT NULL DEFAULT '',
  `caller_file` varchar(191) NOT NULL DEFAULT '',
  `caller_line` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `modx_deprecated_call`
--

INSERT INTO `modx_deprecated_call` (`id`, `method`, `call_count`, `caller`, `caller_file`, `caller_line`) VALUES
(1, 1, 2, 'MODX\\Revolution\\Registry\\modRegistry::_initRegister', 'C:\\xampp\\htdocs\\sr-transfers\\core\\src\\Revolution\\Registry\\modRegistry.php', 173);

-- --------------------------------------------------------

--
-- Table structure for table `modx_deprecated_method`
--

CREATE TABLE `modx_deprecated_method` (
  `id` int(10) UNSIGNED NOT NULL,
  `definition` varchar(191) NOT NULL DEFAULT '',
  `since` varchar(191) NOT NULL DEFAULT '',
  `recommendation` varchar(1024) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `modx_deprecated_method`
--

INSERT INTO `modx_deprecated_method` (`id`, `definition`, `since`, `recommendation`) VALUES
(1, 'registry.modDbRegister', '3.0', 'Replace references to class registry.modDbRegister with MODX\\Revolution\\Registry\\modDbRegister to take advantage of PSR-4 autoloading.');

-- --------------------------------------------------------

--
-- Table structure for table `modx_documentgroup_names`
--

CREATE TABLE `modx_documentgroup_names` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL DEFAULT '',
  `private_memgroup` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `private_webgroup` tinyint(1) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `modx_document_groups`
--

CREATE TABLE `modx_document_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `document_group` int(10) NOT NULL DEFAULT 0,
  `document` int(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `modx_element_property_sets`
--

CREATE TABLE `modx_element_property_sets` (
  `element` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `element_class` varchar(100) NOT NULL DEFAULT '',
  `property_set` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `modx_extension_packages`
--

CREATE TABLE `modx_extension_packages` (
  `id` int(10) UNSIGNED NOT NULL,
  `namespace` varchar(40) NOT NULL DEFAULT 'core',
  `name` varchar(100) NOT NULL DEFAULT 'core',
  `path` text DEFAULT NULL,
  `table_prefix` varchar(255) NOT NULL DEFAULT '',
  `service_class` varchar(255) NOT NULL DEFAULT '',
  `service_name` varchar(255) NOT NULL DEFAULT '',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `modx_fc_profiles`
--

CREATE TABLE `modx_fc_profiles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 0,
  `rank` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `modx_fc_profiles_usergroups`
--

CREATE TABLE `modx_fc_profiles_usergroups` (
  `usergroup` int(11) NOT NULL DEFAULT 0,
  `profile` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `modx_fc_sets`
--

CREATE TABLE `modx_fc_sets` (
  `id` int(10) UNSIGNED NOT NULL,
  `profile` int(11) NOT NULL DEFAULT 0,
  `action` varchar(191) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 0,
  `template` int(11) NOT NULL DEFAULT 0,
  `constraint` varchar(255) NOT NULL DEFAULT '',
  `constraint_field` varchar(100) NOT NULL DEFAULT '',
  `constraint_class` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `modx_lexicon_entries`
--

CREATE TABLE `modx_lexicon_entries` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL DEFAULT '',
  `value` text NOT NULL,
  `topic` varchar(191) NOT NULL DEFAULT 'default',
  `namespace` varchar(40) NOT NULL DEFAULT 'core',
  `language` varchar(20) NOT NULL DEFAULT 'en',
  `createdon` datetime DEFAULT NULL,
  `editedon` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `modx_manager_log`
--

CREATE TABLE `modx_manager_log` (
  `id` int(10) UNSIGNED NOT NULL,
  `user` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `occurred` datetime NOT NULL DEFAULT current_timestamp(),
  `action` varchar(100) NOT NULL DEFAULT '',
  `classKey` varchar(100) NOT NULL DEFAULT '',
  `item` varchar(255) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `modx_manager_log`
--

INSERT INTO `modx_manager_log` (`id`, `user`, `occurred`, `action`, `classKey`, `item`) VALUES
(1, 1, '2025-11-12 06:49:57', 'login', 'MODX\\Revolution\\modContext', 'mgr'),
(2, 1, '2025-11-12 06:52:38', 'chunk_create', 'MODX\\Revolution\\modChunk', '1'),
(3, 1, '2025-11-12 06:52:58', 'chunk_create', 'MODX\\Revolution\\modChunk', '2'),
(4, 1, '2025-11-12 06:58:11', 'chunk_update', 'MODX\\Revolution\\modChunk', '2'),
(5, 1, '2025-11-12 06:58:11', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 2 Default'),
(6, 1, '2025-11-12 06:58:27', 'chunk_create', 'MODX\\Revolution\\modChunk', '3'),
(7, 1, '2025-11-12 06:58:34', 'chunk_update', 'MODX\\Revolution\\modChunk', '3'),
(8, 1, '2025-11-12 06:58:34', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 3 Default'),
(9, 1, '2025-11-12 06:59:05', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(10, 1, '2025-11-12 07:00:01', 'template_create', 'MODX\\Revolution\\modTemplate', '2'),
(11, 1, '2025-11-12 07:00:17', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(12, 1, '2025-11-12 07:00:52', 'directory_create', '', 'Filesystem: assets\\css'),
(13, 1, '2025-11-12 07:01:09', 'file_create', '', 'Filesystem: assets\\css\\main.css'),
(14, 1, '2025-11-12 07:01:52', 'chunk_update', 'MODX\\Revolution\\modChunk', '1'),
(15, 1, '2025-11-12 07:01:52', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 1 Default'),
(16, 1, '2025-11-12 07:03:02', 'chunk_update', 'MODX\\Revolution\\modChunk', '2'),
(17, 1, '2025-11-12 07:03:03', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 2 Default'),
(18, 1, '2025-11-12 07:03:17', 'directory_create', '', 'Filesystem: assets\\js'),
(19, 1, '2025-11-12 07:03:30', 'file_create', '', 'Filesystem: assets\\js\\main.js'),
(20, 1, '2025-11-12 07:10:46', 'chunk_update', 'MODX\\Revolution\\modChunk', '2'),
(21, 1, '2025-11-12 07:10:46', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 2 Default'),
(22, 1, '2025-11-12 07:11:33', 'resource_create', 'MODX\\Revolution\\modDocument', '2'),
(23, 1, '2025-11-12 07:12:08', 'resource_update', 'MODX\\Revolution\\modResource', '2'),
(24, 1, '2025-11-12 07:12:41', 'resource_update', 'MODX\\Revolution\\modResource', '2'),
(25, 1, '2025-11-12 07:12:46', 'resource_update', 'MODX\\Revolution\\modResource', '2'),
(26, 1, '2025-11-12 07:13:03', 'chunk_update', 'MODX\\Revolution\\modChunk', '3'),
(27, 1, '2025-11-12 07:13:03', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 3 Default'),
(28, 1, '2025-11-12 07:15:17', 'resource_create', 'MODX\\Revolution\\modDocument', '3'),
(29, 1, '2025-11-12 07:15:45', 'resource_update', 'MODX\\Revolution\\modResource', '3'),
(30, 1, '2025-11-12 07:16:10', 'chunk_update', 'MODX\\Revolution\\modChunk', '3'),
(31, 1, '2025-11-12 07:16:10', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 3 Default'),
(32, 1, '2025-11-12 07:18:37', 'resource_create', 'MODX\\Revolution\\modDocument', '4'),
(33, 1, '2025-11-12 07:19:01', 'resource_update', 'MODX\\Revolution\\modResource', '4'),
(34, 1, '2025-11-12 07:19:16', 'chunk_update', 'MODX\\Revolution\\modChunk', '3'),
(35, 1, '2025-11-12 07:19:17', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 3 Default'),
(36, 1, '2025-11-12 07:25:07', 'resource_update', 'MODX\\Revolution\\modResource', '4'),
(37, 1, '2025-11-12 07:40:28', 'resource_create', 'MODX\\Revolution\\modDocument', '5'),
(38, 1, '2025-11-12 07:40:50', 'resource_update', 'MODX\\Revolution\\modResource', '5'),
(39, 1, '2025-11-12 07:40:55', 'resource_update', 'MODX\\Revolution\\modResource', '5'),
(40, 1, '2025-11-12 07:41:14', 'chunk_update', 'MODX\\Revolution\\modChunk', '3'),
(41, 1, '2025-11-12 07:41:15', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 3 Default'),
(42, 1, '2025-11-12 07:46:22', 'chunk_update', 'MODX\\Revolution\\modChunk', '3'),
(43, 1, '2025-11-12 07:46:22', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 3 Default'),
(44, 1, '2025-11-12 07:46:36', 'resource_create', 'MODX\\Revolution\\modDocument', '6'),
(45, 1, '2025-11-12 07:50:40', 'resource_update', 'MODX\\Revolution\\modResource', '6'),
(46, 1, '2025-11-12 07:50:59', 'chunk_update', 'MODX\\Revolution\\modChunk', '3'),
(47, 1, '2025-11-12 07:51:00', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 3 Default'),
(48, 1, '2025-11-12 07:51:11', 'chunk_update', 'MODX\\Revolution\\modChunk', '3'),
(49, 1, '2025-11-12 07:51:12', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 3 Default'),
(50, 1, '2025-11-12 07:51:42', 'chunk_update', 'MODX\\Revolution\\modChunk', '3'),
(51, 1, '2025-11-12 07:51:42', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 3 Default'),
(52, 1, '2025-11-12 07:52:09', 'chunk_update', 'MODX\\Revolution\\modChunk', '3'),
(53, 1, '2025-11-12 07:52:09', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 3 Default'),
(54, 1, '2025-11-12 07:53:05', 'chunk_update', 'MODX\\Revolution\\modChunk', '3'),
(55, 1, '2025-11-12 07:53:06', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 3 Default'),
(56, 1, '2025-11-12 07:54:01', 'resource_update', 'MODX\\Revolution\\modResource', '5'),
(57, 1, '2025-11-12 07:56:34', 'resource_update', 'MODX\\Revolution\\modResource', '5'),
(58, 1, '2025-11-12 07:57:01', 'resource_update', 'MODX\\Revolution\\modResource', '5'),
(59, 1, '2025-11-12 07:57:55', 'resource_update', 'MODX\\Revolution\\modResource', '5'),
(60, 1, '2025-11-12 07:59:38', 'resource_update', 'MODX\\Revolution\\modResource', '5'),
(61, 1, '2025-11-12 08:01:51', 'resource_update', 'MODX\\Revolution\\modResource', '5'),
(62, 1, '2025-11-12 08:04:28', 'resource_update', 'MODX\\Revolution\\modResource', '5'),
(63, 1, '2025-11-12 08:05:19', 'resource_update', 'MODX\\Revolution\\modResource', '5'),
(64, 1, '2025-11-12 08:09:31', 'resource_update', 'MODX\\Revolution\\modResource', '5'),
(65, 1, '2025-11-12 08:09:55', 'resource_update', 'MODX\\Revolution\\modResource', '5'),
(66, 1, '2025-11-12 08:12:24', 'resource_update', 'MODX\\Revolution\\modResource', '5'),
(67, 1, '2025-11-12 08:13:29', 'resource_update', 'MODX\\Revolution\\modResource', '5'),
(68, 1, '2025-11-12 08:17:21', 'resource_update', 'MODX\\Revolution\\modResource', '5'),
(69, 1, '2025-11-12 08:25:19', 'chunk_update', 'MODX\\Revolution\\modChunk', '3'),
(70, 1, '2025-11-12 08:25:19', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 3 Default'),
(71, 1, '2025-11-12 08:25:41', 'chunk_update', 'MODX\\Revolution\\modChunk', '3'),
(72, 1, '2025-11-12 08:25:41', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 3 Default'),
(73, 1, '2025-11-12 08:26:15', 'chunk_update', 'MODX\\Revolution\\modChunk', '3'),
(74, 1, '2025-11-12 08:26:16', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 3 Default'),
(75, 1, '2025-11-12 08:27:14', 'chunk_update', 'MODX\\Revolution\\modChunk', '3'),
(76, 1, '2025-11-12 08:27:14', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 3 Default'),
(77, 1, '2025-11-12 08:30:54', 'chunk_update', 'MODX\\Revolution\\modChunk', '3'),
(78, 1, '2025-11-12 08:30:54', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 3 Default'),
(79, 1, '2025-11-12 08:42:09', 'resource_update', 'MODX\\Revolution\\modResource', '6'),
(80, 1, '2025-11-12 08:44:27', 'resource_update', 'MODX\\Revolution\\modResource', '6'),
(81, 1, '2025-11-12 08:46:42', 'resource_update', 'MODX\\Revolution\\modResource', '6'),
(82, 1, '2025-11-12 08:50:41', 'resource_update', 'MODX\\Revolution\\modResource', '6'),
(83, 1, '2025-11-12 08:51:10', 'resource_update', 'MODX\\Revolution\\modResource', '6'),
(84, 1, '2025-11-12 08:53:40', 'resource_update', 'MODX\\Revolution\\modResource', '6'),
(85, 1, '2025-11-12 08:58:01', 'resource_update', 'MODX\\Revolution\\modResource', '6'),
(86, 1, '2025-11-12 08:59:34', 'resource_update', 'MODX\\Revolution\\modResource', '6'),
(87, 1, '2025-11-12 09:02:13', 'resource_update', 'MODX\\Revolution\\modResource', '6'),
(88, 1, '2025-11-12 10:18:48', 'resource_update', 'MODX\\Revolution\\modResource', '6'),
(89, 1, '2025-11-12 10:19:22', 'resource_update', 'MODX\\Revolution\\modResource', '6'),
(90, 1, '2025-11-12 10:21:21', 'resource_update', 'MODX\\Revolution\\modResource', '6'),
(91, 1, '2025-11-12 10:33:15', 'resource_update', 'MODX\\Revolution\\modResource', '6'),
(92, 1, '2025-11-12 10:35:21', 'resource_update', 'MODX\\Revolution\\modResource', '6'),
(93, 1, '2025-11-12 10:37:34', 'resource_update', 'MODX\\Revolution\\modResource', '6'),
(94, 1, '2025-11-12 10:37:52', 'resource_update', 'MODX\\Revolution\\modResource', '6'),
(95, 1, '2025-11-12 10:40:11', 'chunk_update', 'MODX\\Revolution\\modChunk', '2'),
(96, 1, '2025-11-12 10:40:11', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 2 Default'),
(97, 1, '2025-11-12 10:51:11', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(98, 1, '2025-11-12 10:55:35', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(99, 1, '2025-11-12 10:58:09', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(100, 1, '2025-11-12 11:08:03', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(101, 1, '2025-11-12 11:09:23', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(102, 1, '2025-11-12 11:12:12', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(103, 1, '2025-11-12 11:12:49', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(104, 1, '2025-11-12 11:17:30', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(105, 1, '2025-11-12 11:20:06', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(106, 1, '2025-11-12 11:21:08', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(107, 1, '2025-11-12 11:22:29', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(108, 1, '2025-11-12 11:24:13', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(109, 1, '2025-11-12 11:26:36', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(110, 1, '2025-11-12 11:27:59', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(111, 1, '2025-11-12 11:28:30', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(112, 1, '2025-11-12 11:29:08', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(113, 1, '2025-11-12 11:30:00', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(114, 1, '2025-11-12 11:49:58', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(115, 1, '2025-11-12 11:51:58', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(116, 1, '2025-11-12 11:56:03', 'chunk_update', 'MODX\\Revolution\\modChunk', '3'),
(117, 1, '2025-11-12 11:56:03', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 3 Default'),
(118, 1, '2025-11-12 11:56:27', 'chunk_update', 'MODX\\Revolution\\modChunk', '3'),
(119, 1, '2025-11-12 11:56:27', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 3 Default'),
(120, 1, '2025-11-12 11:57:58', 'chunk_update', 'MODX\\Revolution\\modChunk', '3'),
(121, 1, '2025-11-12 11:57:58', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 3 Default'),
(122, 1, '2025-11-12 11:59:24', 'chunk_update', 'MODX\\Revolution\\modChunk', '3'),
(123, 1, '2025-11-12 11:59:24', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 3 Default'),
(124, 1, '2025-11-12 12:00:46', 'chunk_update', 'MODX\\Revolution\\modChunk', '3'),
(125, 1, '2025-11-12 12:00:47', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 3 Default'),
(126, 1, '2025-11-12 12:01:25', 'chunk_update', 'MODX\\Revolution\\modChunk', '3'),
(127, 1, '2025-11-12 12:01:25', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 3 Default'),
(128, 1, '2025-11-12 12:02:03', 'chunk_update', 'MODX\\Revolution\\modChunk', '3'),
(129, 1, '2025-11-12 12:02:03', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 3 Default'),
(130, 1, '2025-11-12 12:02:52', 'chunk_update', 'MODX\\Revolution\\modChunk', '3'),
(131, 1, '2025-11-12 12:02:52', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 3 Default'),
(132, 1, '2025-11-12 12:07:19', 'chunk_update', 'MODX\\Revolution\\modChunk', '3'),
(133, 1, '2025-11-12 12:07:19', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 3 Default'),
(134, 1, '2025-11-12 12:10:52', 'chunk_update', 'MODX\\Revolution\\modChunk', '3'),
(135, 1, '2025-11-12 12:10:52', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 3 Default'),
(136, 1, '2025-11-12 12:11:42', 'chunk_update', 'MODX\\Revolution\\modChunk', '3'),
(137, 1, '2025-11-12 12:11:42', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 3 Default'),
(138, 1, '2025-11-12 12:20:19', 'chunk_update', 'MODX\\Revolution\\modChunk', '3'),
(139, 1, '2025-11-12 12:20:20', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 3 Default'),
(140, 1, '2025-11-12 12:25:00', 'chunk_update', 'MODX\\Revolution\\modChunk', '3'),
(141, 1, '2025-11-12 12:25:01', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 3 Default'),
(142, 1, '2025-11-12 12:25:41', 'chunk_update', 'MODX\\Revolution\\modChunk', '3'),
(143, 1, '2025-11-12 12:25:41', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 3 Default'),
(144, 1, '2025-11-12 12:29:58', 'chunk_update', 'MODX\\Revolution\\modChunk', '3'),
(145, 1, '2025-11-12 12:29:58', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 3 Default'),
(146, 1, '2025-11-12 12:31:07', 'chunk_update', 'MODX\\Revolution\\modChunk', '3'),
(147, 1, '2025-11-12 12:31:07', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 3 Default'),
(148, 1, '2025-11-12 12:33:39', 'chunk_update', 'MODX\\Revolution\\modChunk', '3'),
(149, 1, '2025-11-12 12:33:39', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 3 Default'),
(150, 1, '2025-11-12 12:38:27', 'chunk_update', 'MODX\\Revolution\\modChunk', '3'),
(151, 1, '2025-11-12 12:38:27', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 3 Default'),
(152, 1, '2025-11-12 12:40:51', 'chunk_update', 'MODX\\Revolution\\modChunk', '3'),
(153, 1, '2025-11-12 12:40:51', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 3 Default'),
(154, 1, '2025-11-12 12:43:04', 'chunk_update', 'MODX\\Revolution\\modChunk', '3'),
(155, 1, '2025-11-12 12:43:05', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 3 Default'),
(156, 1, '2025-11-12 12:43:57', 'chunk_update', 'MODX\\Revolution\\modChunk', '3'),
(157, 1, '2025-11-12 12:43:57', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 3 Default'),
(158, 1, '2025-11-12 12:46:24', 'chunk_update', 'MODX\\Revolution\\modChunk', '3'),
(159, 1, '2025-11-12 12:46:24', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 3 Default'),
(160, 1, '2025-11-12 12:46:50', 'chunk_update', 'MODX\\Revolution\\modChunk', '3'),
(161, 1, '2025-11-12 12:46:50', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 3 Default'),
(162, 1, '2025-11-12 12:48:05', 'chunk_update', 'MODX\\Revolution\\modChunk', '3'),
(163, 1, '2025-11-12 12:48:05', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 3 Default'),
(164, 1, '2025-11-12 12:48:42', 'chunk_update', 'MODX\\Revolution\\modChunk', '3'),
(165, 1, '2025-11-12 12:48:42', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 3 Default'),
(166, 1, '2025-11-12 12:50:32', 'chunk_update', 'MODX\\Revolution\\modChunk', '3'),
(167, 1, '2025-11-12 12:50:33', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 3 Default'),
(168, 1, '2025-11-12 12:52:57', 'chunk_update', 'MODX\\Revolution\\modChunk', '3'),
(169, 1, '2025-11-12 12:52:58', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 3 Default'),
(170, 1, '2025-11-12 13:01:32', 'chunk_update', 'MODX\\Revolution\\modChunk', '3'),
(171, 1, '2025-11-12 13:01:32', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 3 Default'),
(172, 1, '2025-11-12 13:01:47', 'chunk_update', 'MODX\\Revolution\\modChunk', '3'),
(173, 1, '2025-11-12 13:01:48', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 3 Default'),
(174, 1, '2025-11-12 13:07:09', 'chunk_update', 'MODX\\Revolution\\modChunk', '3'),
(175, 1, '2025-11-12 13:07:10', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 3 Default'),
(176, 1, '2025-11-12 13:08:43', 'chunk_update', 'MODX\\Revolution\\modChunk', '3'),
(177, 1, '2025-11-12 13:08:43', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 3 Default'),
(178, 1, '2025-11-12 13:09:36', 'chunk_update', 'MODX\\Revolution\\modChunk', '3'),
(179, 1, '2025-11-12 13:09:36', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 3 Default'),
(180, 1, '2025-11-12 13:10:42', 'chunk_update', 'MODX\\Revolution\\modChunk', '3'),
(181, 1, '2025-11-12 13:10:42', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 3 Default'),
(182, 1, '2025-11-12 13:11:10', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(183, 1, '2025-11-12 13:13:56', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(184, 1, '2025-11-12 13:14:40', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(185, 1, '2025-11-12 13:15:25', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(186, 1, '2025-11-12 13:16:07', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(187, 1, '2025-11-12 13:17:00', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(188, 1, '2025-11-12 13:18:11', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(189, 1, '2025-11-12 13:18:40', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(190, 1, '2025-11-12 13:28:14', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(191, 1, '2025-11-13 04:38:02', 'login', 'MODX\\Revolution\\modContext', 'mgr'),
(192, 1, '2025-11-13 04:41:02', 'chunk_update', 'MODX\\Revolution\\modChunk', '3'),
(193, 1, '2025-11-13 04:41:02', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 3 Default'),
(194, 1, '2025-11-13 04:43:05', 'chunk_update', 'MODX\\Revolution\\modChunk', '3'),
(195, 1, '2025-11-13 04:43:05', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 3 Default'),
(196, 1, '2025-11-13 04:47:26', 'chunk_update', 'MODX\\Revolution\\modChunk', '3'),
(197, 1, '2025-11-13 04:47:26', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 3 Default'),
(198, 1, '2025-11-13 04:51:19', 'chunk_update', 'MODX\\Revolution\\modChunk', '3'),
(199, 1, '2025-11-13 04:51:19', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 3 Default'),
(200, 1, '2025-11-13 04:53:05', 'chunk_update', 'MODX\\Revolution\\modChunk', '3'),
(201, 1, '2025-11-13 04:53:05', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 3 Default'),
(202, 1, '2025-11-13 04:53:21', 'chunk_update', 'MODX\\Revolution\\modChunk', '3'),
(203, 1, '2025-11-13 04:53:21', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 3 Default'),
(204, 1, '2025-11-13 04:54:37', 'chunk_update', 'MODX\\Revolution\\modChunk', '3'),
(205, 1, '2025-11-13 04:54:37', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 3 Default'),
(206, 1, '2025-11-13 04:56:37', 'chunk_update', 'MODX\\Revolution\\modChunk', '3'),
(207, 1, '2025-11-13 04:56:37', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 3 Default'),
(208, 1, '2025-11-13 04:57:08', 'chunk_update', 'MODX\\Revolution\\modChunk', '3'),
(209, 1, '2025-11-13 04:57:09', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 3 Default'),
(210, 1, '2025-11-13 04:57:43', 'chunk_update', 'MODX\\Revolution\\modChunk', '3'),
(211, 1, '2025-11-13 04:57:43', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 3 Default'),
(212, 1, '2025-11-13 04:58:29', 'chunk_update', 'MODX\\Revolution\\modChunk', '3'),
(213, 1, '2025-11-13 04:58:30', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 3 Default'),
(214, 1, '2025-11-13 04:59:16', 'chunk_update', 'MODX\\Revolution\\modChunk', '3'),
(215, 1, '2025-11-13 04:59:17', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 3 Default'),
(216, 1, '2025-11-13 05:00:02', 'chunk_update', 'MODX\\Revolution\\modChunk', '3'),
(217, 1, '2025-11-13 05:00:02', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 3 Default'),
(218, 1, '2025-11-13 05:05:05', 'chunk_update', 'MODX\\Revolution\\modChunk', '3'),
(219, 1, '2025-11-13 05:05:06', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 3 Default'),
(220, 1, '2025-11-13 05:06:05', 'chunk_update', 'MODX\\Revolution\\modChunk', '3'),
(221, 1, '2025-11-13 05:06:05', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 3 Default'),
(222, 1, '2025-11-13 05:30:52', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(223, 1, '2025-11-13 05:33:00', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(224, 1, '2025-11-13 05:34:14', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(225, 1, '2025-11-13 05:36:38', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(226, 1, '2025-11-13 05:39:43', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(227, 1, '2025-11-13 05:40:32', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(228, 1, '2025-11-13 05:41:31', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(229, 1, '2025-11-13 05:44:31', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(230, 1, '2025-11-13 05:47:44', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(231, 1, '2025-11-13 05:50:01', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(232, 1, '2025-11-13 05:52:43', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(233, 1, '2025-11-13 05:54:05', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(234, 1, '2025-11-13 05:58:54', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(235, 1, '2025-11-13 06:22:13', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(236, 1, '2025-11-13 06:22:31', 'snippet_create', 'MODX\\Revolution\\modSnippet', '1'),
(237, 1, '2025-11-13 06:36:44', 'snippet_update', 'MODX\\Revolution\\modSnippet', '1'),
(238, 1, '2025-11-13 06:36:44', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 1 Default'),
(239, 1, '2025-11-13 06:37:26', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(240, 1, '2025-11-13 06:39:30', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(241, 1, '2025-11-13 06:42:44', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(242, 1, '2025-11-13 06:44:28', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(243, 1, '2025-11-13 06:49:57', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(244, 1, '2025-11-13 06:51:26', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(245, 1, '2025-11-13 06:59:10', 'chunk_update', 'MODX\\Revolution\\modChunk', '1'),
(246, 1, '2025-11-13 06:59:10', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 1 Default'),
(247, 1, '2025-11-13 07:01:23', 'chunk_update', 'MODX\\Revolution\\modChunk', '1'),
(248, 1, '2025-11-13 07:01:23', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 1 Default'),
(249, 1, '2025-11-13 07:03:20', 'chunk_update', 'MODX\\Revolution\\modChunk', '1'),
(250, 1, '2025-11-13 07:03:21', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 1 Default'),
(251, 1, '2025-11-13 07:03:49', 'chunk_update', 'MODX\\Revolution\\modChunk', '1'),
(252, 1, '2025-11-13 07:03:50', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 1 Default'),
(253, 1, '2025-11-13 07:05:06', 'chunk_update', 'MODX\\Revolution\\modChunk', '1'),
(254, 1, '2025-11-13 07:05:06', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 1 Default'),
(255, 1, '2025-11-13 07:06:14', 'chunk_update', 'MODX\\Revolution\\modChunk', '1'),
(256, 1, '2025-11-13 07:06:14', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 1 Default'),
(257, 1, '2025-11-13 07:17:00', 'chunk_update', 'MODX\\Revolution\\modChunk', '1'),
(258, 1, '2025-11-13 07:17:00', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 1 Default'),
(259, 1, '2025-11-13 07:19:00', 'chunk_update', 'MODX\\Revolution\\modChunk', '1'),
(260, 1, '2025-11-13 07:19:01', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 1 Default'),
(261, 1, '2025-11-13 07:19:42', 'chunk_update', 'MODX\\Revolution\\modChunk', '3'),
(262, 1, '2025-11-13 07:19:42', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 3 Default'),
(263, 1, '2025-11-13 07:20:31', 'resource_update', 'MODX\\Revolution\\modResource', '5'),
(264, 1, '2025-11-13 07:21:32', 'chunk_update', 'MODX\\Revolution\\modChunk', '1'),
(265, 1, '2025-11-13 07:21:32', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 1 Default'),
(266, 1, '2025-11-13 07:22:37', 'chunk_update', 'MODX\\Revolution\\modChunk', '1'),
(267, 1, '2025-11-13 07:22:37', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 1 Default'),
(268, 1, '2025-11-13 07:27:16', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(269, 1, '2025-11-13 07:33:32', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(270, 1, '2025-11-13 07:35:24', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(271, 1, '2025-11-13 07:36:00', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(272, 1, '2025-11-13 07:38:39', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(273, 1, '2025-11-13 07:39:45', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(274, 1, '2025-11-13 07:43:51', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(275, 1, '2025-11-13 07:44:34', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(276, 1, '2025-11-13 07:45:48', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(277, 1, '2025-11-13 07:46:15', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(278, 1, '2025-11-13 07:47:18', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(279, 1, '2025-11-13 07:51:08', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(280, 1, '2025-11-13 07:51:51', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(281, 1, '2025-11-13 07:54:43', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(282, 1, '2025-11-13 07:56:00', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(283, 1, '2025-11-13 07:57:04', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(284, 1, '2025-11-13 08:07:42', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(285, 1, '2025-11-13 08:16:00', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(286, 1, '2025-11-13 08:17:29', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(287, 1, '2025-11-13 08:20:43', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(288, 1, '2025-11-13 08:25:14', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(289, 1, '2025-11-13 08:30:56', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(290, 1, '2025-11-13 08:31:12', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(291, 1, '2025-11-13 08:34:18', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(292, 1, '2025-11-13 09:25:53', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(293, 1, '2025-11-13 09:26:24', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(294, 1, '2025-11-13 09:32:38', 'resource_update', 'MODX\\Revolution\\modResource', '2'),
(295, 1, '2025-11-13 09:35:15', 'resource_update', 'MODX\\Revolution\\modResource', '2'),
(296, 1, '2025-11-13 09:38:31', 'resource_update', 'MODX\\Revolution\\modResource', '2'),
(297, 1, '2025-11-13 09:39:48', 'resource_update', 'MODX\\Revolution\\modResource', '2'),
(298, 1, '2025-11-13 09:44:00', 'resource_update', 'MODX\\Revolution\\modResource', '2'),
(299, 1, '2025-11-13 09:45:35', 'resource_update', 'MODX\\Revolution\\modResource', '2'),
(300, 1, '2025-11-13 09:47:02', 'resource_update', 'MODX\\Revolution\\modResource', '2'),
(301, 1, '2025-11-13 09:48:05', 'resource_update', 'MODX\\Revolution\\modResource', '2'),
(302, 1, '2025-11-13 09:52:53', 'resource_update', 'MODX\\Revolution\\modResource', '2'),
(303, 1, '2025-11-13 09:54:00', 'resource_update', 'MODX\\Revolution\\modResource', '2'),
(304, 1, '2025-11-13 09:57:00', 'resource_update', 'MODX\\Revolution\\modResource', '2'),
(305, 1, '2025-11-13 10:01:34', 'resource_update', 'MODX\\Revolution\\modResource', '2'),
(306, 1, '2025-11-13 10:40:41', 'resource_update', 'MODX\\Revolution\\modResource', '2'),
(307, 1, '2025-11-13 10:41:36', 'resource_update', 'MODX\\Revolution\\modResource', '2'),
(308, 1, '2025-11-13 10:42:21', 'resource_update', 'MODX\\Revolution\\modResource', '2'),
(309, 1, '2025-11-13 10:46:25', 'resource_update', 'MODX\\Revolution\\modResource', '2'),
(310, 1, '2025-11-13 11:21:33', 'resource_update', 'MODX\\Revolution\\modResource', '3'),
(311, 1, '2025-11-13 11:23:36', 'resource_update', 'MODX\\Revolution\\modResource', '3'),
(312, 1, '2025-11-13 11:28:10', 'resource_update', 'MODX\\Revolution\\modResource', '3'),
(313, 1, '2025-11-13 11:29:58', 'resource_update', 'MODX\\Revolution\\modResource', '3'),
(314, 1, '2025-11-13 11:30:13', 'resource_update', 'MODX\\Revolution\\modResource', '3'),
(315, 1, '2025-11-13 11:33:35', 'resource_update', 'MODX\\Revolution\\modResource', '3'),
(316, 1, '2025-11-13 11:34:28', 'resource_update', 'MODX\\Revolution\\modResource', '3'),
(317, 1, '2025-11-13 11:41:37', 'resource_update', 'MODX\\Revolution\\modResource', '3'),
(318, 1, '2025-11-13 11:41:58', 'resource_update', 'MODX\\Revolution\\modResource', '3'),
(319, 1, '2025-11-13 11:42:28', 'resource_update', 'MODX\\Revolution\\modResource', '3'),
(320, 1, '2025-11-13 11:43:40', 'resource_update', 'MODX\\Revolution\\modResource', '3'),
(321, 1, '2025-11-13 11:57:07', 'resource_update', 'MODX\\Revolution\\modResource', '3'),
(322, 1, '2025-11-13 12:07:35', 'resource_update', 'MODX\\Revolution\\modResource', '3'),
(323, 1, '2025-11-13 12:08:21', 'resource_update', 'MODX\\Revolution\\modResource', '3'),
(324, 1, '2025-11-13 12:08:45', 'resource_update', 'MODX\\Revolution\\modResource', '3'),
(325, 1, '2025-11-13 12:28:49', 'resource_update', 'MODX\\Revolution\\modResource', '3'),
(326, 1, '2025-11-13 12:30:03', 'resource_update', 'MODX\\Revolution\\modResource', '3'),
(327, 1, '2025-11-13 12:35:09', 'chunk_update', 'MODX\\Revolution\\modChunk', '3'),
(328, 1, '2025-11-13 12:35:09', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 3 Default'),
(329, 1, '2025-11-13 12:54:25', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(330, 1, '2025-11-13 13:01:21', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(331, 1, '2025-11-13 13:02:00', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(332, 1, '2025-11-13 13:31:07', 'user_create', 'MODX\\Revolution\\modUser', '2'),
(333, 2, '2025-11-13 13:33:45', 'login', 'MODX\\Revolution\\modContext', 'mgr'),
(334, 1, '2025-11-14 04:42:41', 'login', 'MODX\\Revolution\\modContext', 'mgr'),
(335, 1, '2025-11-14 04:47:18', 'resource_create', 'MODX\\Revolution\\modDocument', '7'),
(336, 1, '2025-11-14 04:47:22', 'resource_update', 'MODX\\Revolution\\modResource', '7'),
(337, 1, '2025-11-14 04:54:38', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(338, 1, '2025-11-14 04:56:45', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(339, 1, '2025-11-14 04:57:45', 'snippet_create', 'MODX\\Revolution\\modSnippet', '2'),
(340, 1, '2025-11-14 04:58:25', 'resource_update', 'MODX\\Revolution\\modResource', '7'),
(341, 1, '2025-11-14 05:09:16', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(342, 1, '2025-11-14 05:09:16', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(343, 1, '2025-11-14 05:12:31', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(344, 1, '2025-11-14 05:12:31', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(345, 1, '2025-11-14 05:18:28', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(346, 1, '2025-11-14 05:18:28', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(347, 1, '2025-11-14 05:24:40', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(348, 1, '2025-11-14 05:24:40', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(349, 1, '2025-11-14 05:26:35', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(350, 1, '2025-11-14 05:26:36', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(351, 1, '2025-11-14 05:27:39', 'resource_update', 'MODX\\Revolution\\modResource', '7'),
(352, 1, '2025-11-14 05:30:11', 'resource_update', 'MODX\\Revolution\\modResource', '7'),
(353, 1, '2025-11-14 05:30:53', 'chunk_update', 'MODX\\Revolution\\modChunk', '3'),
(354, 1, '2025-11-14 05:30:54', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 3 Default'),
(355, 1, '2025-11-14 05:31:46', 'resource_update', 'MODX\\Revolution\\modResource', '7'),
(356, 1, '2025-11-14 05:33:11', 'chunk_update', 'MODX\\Revolution\\modChunk', '2'),
(357, 1, '2025-11-14 05:33:11', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 2 Default'),
(358, 1, '2025-11-14 05:33:49', 'snippet_create', 'MODX\\Revolution\\modSnippet', '3'),
(359, 1, '2025-11-14 05:35:06', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(360, 1, '2025-11-14 05:35:06', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(361, 1, '2025-11-14 05:35:20', 'snippet_create', 'MODX\\Revolution\\modSnippet', '4'),
(362, 1, '2025-11-14 05:35:42', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(363, 1, '2025-11-14 05:35:42', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(364, 1, '2025-11-14 05:38:58', 'snippet_create', 'MODX\\Revolution\\modSnippet', '5'),
(365, 1, '2025-11-14 05:46:23', 'snippet_update', 'MODX\\Revolution\\modSnippet', '5'),
(366, 1, '2025-11-14 05:46:23', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 5 Default'),
(367, 1, '2025-11-14 05:46:52', 'snippet_update', 'MODX\\Revolution\\modSnippet', '5'),
(368, 1, '2025-11-14 05:46:52', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 5 Default'),
(369, 1, '2025-11-14 05:52:46', 'snippet_update', 'MODX\\Revolution\\modSnippet', '5'),
(370, 1, '2025-11-14 05:52:46', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 5 Default'),
(371, 2, '2025-11-14 06:07:06', 'login', 'MODX\\Revolution\\modContext', 'mgr'),
(372, 1, '2025-11-14 06:09:25', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(373, 1, '2025-11-14 06:09:25', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(374, 1, '2025-11-14 06:40:06', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(375, 1, '2025-11-14 06:40:06', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(376, 1, '2025-11-14 06:40:40', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(377, 1, '2025-11-14 06:40:40', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(378, 1, '2025-11-14 06:41:10', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(379, 1, '2025-11-14 06:41:10', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(380, 1, '2025-11-14 06:51:35', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(381, 1, '2025-11-14 06:51:35', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(382, 1, '2025-11-14 06:59:04', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(383, 1, '2025-11-14 06:59:04', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(384, 1, '2025-11-14 07:01:39', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(385, 1, '2025-11-14 07:01:39', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(386, 1, '2025-11-14 07:03:06', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(387, 1, '2025-11-14 07:03:07', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(388, 1, '2025-11-14 07:08:57', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(389, 1, '2025-11-14 07:08:57', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(390, 1, '2025-11-14 07:10:20', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(391, 1, '2025-11-14 07:10:20', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(392, 1, '2025-11-14 07:17:12', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(393, 1, '2025-11-14 07:17:12', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(394, 1, '2025-11-14 07:19:52', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(395, 1, '2025-11-14 07:19:52', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(396, 1, '2025-11-14 07:20:09', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(397, 1, '2025-11-14 07:20:09', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(398, 1, '2025-11-14 07:20:19', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(399, 1, '2025-11-14 07:20:19', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(400, 1, '2025-11-14 07:20:41', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(401, 1, '2025-11-14 07:20:41', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(402, 1, '2025-11-14 07:22:48', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(403, 1, '2025-11-14 07:22:49', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(404, 1, '2025-11-14 07:23:30', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(405, 1, '2025-11-14 07:23:30', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(406, 1, '2025-11-14 07:26:18', 'snippet_update', 'MODX\\Revolution\\modSnippet', '5'),
(407, 1, '2025-11-14 07:26:18', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 5 Default'),
(408, 1, '2025-11-14 07:28:47', 'snippet_update', 'MODX\\Revolution\\modSnippet', '5'),
(409, 1, '2025-11-14 07:28:47', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 5 Default'),
(410, 1, '2025-11-14 07:34:43', 'snippet_update', 'MODX\\Revolution\\modSnippet', '5'),
(411, 1, '2025-11-14 07:34:43', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 5 Default'),
(412, 1, '2025-11-14 07:47:14', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(413, 1, '2025-11-14 07:47:14', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(414, 1, '2025-11-14 07:50:42', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(415, 1, '2025-11-14 07:50:42', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(416, 1, '2025-11-14 07:52:14', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(417, 1, '2025-11-14 07:52:14', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(418, 1, '2025-11-14 07:52:35', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(419, 1, '2025-11-14 07:52:36', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(420, 1, '2025-11-14 07:57:48', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(421, 1, '2025-11-14 07:57:48', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(422, 1, '2025-11-14 08:05:01', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(423, 1, '2025-11-14 08:05:01', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(424, 1, '2025-11-14 08:05:25', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(425, 1, '2025-11-14 08:05:25', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(426, 2, '2025-11-14 08:08:44', 'login', 'MODX\\Revolution\\modContext', 'mgr'),
(427, 1, '2025-11-14 08:09:52', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(428, 1, '2025-11-14 08:09:52', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(429, 1, '2025-11-14 08:23:17', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(430, 1, '2025-11-14 08:23:17', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(431, 1, '2025-11-14 08:23:46', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(432, 1, '2025-11-14 08:23:46', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(433, 2, '2025-11-14 08:23:57', 'file_remove', '', 'Filesystem: assets/img/flash-deal.jpg'),
(434, 1, '2025-11-14 08:24:44', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(435, 1, '2025-11-14 08:24:45', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(436, 2, '2025-11-14 08:25:59', 'file_upload', '', 'Filesystem: assets\\img/\\'),
(437, 2, '2025-11-14 08:27:20', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(438, 2, '2025-11-14 08:28:44', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(439, 2, '2025-11-14 08:30:45', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(440, 1, '2025-11-14 08:34:43', 'snippet_create', 'MODX\\Revolution\\modSnippet', '6'),
(441, 1, '2025-11-14 08:39:03', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(442, 1, '2025-11-14 08:39:04', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(443, 2, '2025-11-14 09:14:55', 'directory_create', '', 'Filesystem: assets\\img\\who_we'),
(444, 2, '2025-11-14 09:15:05', 'file_upload', '', 'Filesystem: assets/img\\who_we/\\'),
(445, 2, '2025-11-14 09:15:06', 'file_upload', '', 'Filesystem: assets/img\\who_we/\\'),
(446, 2, '2025-11-14 09:15:06', 'file_upload', '', 'Filesystem: assets/img\\who_we/\\'),
(447, 2, '2025-11-14 09:15:06', 'file_upload', '', 'Filesystem: assets/img\\who_we/\\'),
(448, 1, '2025-11-14 09:17:07', 'chunk_update', 'MODX\\Revolution\\modChunk', '3'),
(449, 1, '2025-11-14 09:17:08', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 3 Default'),
(450, 1, '2025-11-14 09:18:39', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(451, 1, '2025-11-14 09:18:39', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(452, 2, '2025-11-14 09:20:33', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(453, 1, '2025-11-14 09:20:48', 'snippet_update', 'MODX\\Revolution\\modSnippet', '4'),
(454, 1, '2025-11-14 09:20:48', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 4 Default'),
(455, 1, '2025-11-14 09:21:39', 'snippet_update', 'MODX\\Revolution\\modSnippet', '4'),
(456, 1, '2025-11-14 09:21:39', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 4 Default'),
(457, 1, '2025-11-14 09:22:26', 'snippet_update', 'MODX\\Revolution\\modSnippet', '4'),
(458, 1, '2025-11-14 09:22:26', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 4 Default'),
(459, 2, '2025-11-14 09:22:43', 'file_update', '', 'Filesystem: assets\\css\\main.css'),
(460, 1, '2025-11-14 09:23:25', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(461, 1, '2025-11-14 09:23:25', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(462, 1, '2025-11-14 09:23:37', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(463, 1, '2025-11-14 09:23:37', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(464, 1, '2025-11-14 09:24:11', 'snippet_update', 'MODX\\Revolution\\modSnippet', '4'),
(465, 1, '2025-11-14 09:24:11', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 4 Default'),
(466, 1, '2025-11-14 09:27:37', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(467, 1, '2025-11-14 09:27:37', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(468, 2, '2025-11-14 09:29:30', 'directory_create', '', 'Filesystem: assets\\img\\who_we'),
(469, 1, '2025-11-14 09:32:45', 'resource_update', 'MODX\\Revolution\\modResource', '7'),
(470, 2, '2025-11-14 09:33:22', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(471, 2, '2025-11-14 09:34:25', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(472, 2, '2025-11-14 09:36:37', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(473, 1, '2025-11-14 09:37:41', 'resource_update', 'MODX\\Revolution\\modResource', '7'),
(474, 2, '2025-11-14 09:38:06', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(475, 2, '2025-11-14 09:39:38', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(476, 2, '2025-11-14 09:40:05', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(477, 2, '2025-11-14 09:41:45', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(478, 1, '2025-11-14 09:42:19', 'resource_update', 'MODX\\Revolution\\modResource', '7'),
(479, 2, '2025-11-14 09:42:27', 'directory_remove', '', 'Filesystem: assets/img\\travel\\'),
(480, 2, '2025-11-14 09:42:32', 'directory_create', '', 'Filesystem: assets\\img\\who_we'),
(481, 2, '2025-11-14 09:42:59', 'directory_create', '', 'Filesystem: assets\\img\\intro'),
(482, 2, '2025-11-14 09:43:09', 'file_upload', '', 'Filesystem: assets/img\\intro/\\'),
(483, 2, '2025-11-14 09:43:09', 'file_upload', '', 'Filesystem: assets/img\\intro/\\'),
(484, 2, '2025-11-14 09:43:09', 'file_upload', '', 'Filesystem: assets/img\\intro/\\'),
(485, 2, '2025-11-14 09:43:09', 'file_upload', '', 'Filesystem: assets/img\\intro/\\'),
(486, 2, '2025-11-14 09:43:40', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(487, 1, '2025-11-14 09:44:54', 'resource_update', 'MODX\\Revolution\\modResource', '7'),
(488, 2, '2025-11-14 09:46:34', 'file_update', '', 'Filesystem: assets\\css\\main.css'),
(489, 2, '2025-11-14 09:48:36', 'login', 'MODX\\Revolution\\modContext', 'mgr'),
(490, 2, '2025-11-14 09:48:49', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(491, 1, '2025-11-14 09:49:45', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(492, 1, '2025-11-14 09:49:45', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default');
INSERT INTO `modx_manager_log` (`id`, `user`, `occurred`, `action`, `classKey`, `item`) VALUES
(493, 1, '2025-11-14 09:50:04', 'resource_update', 'MODX\\Revolution\\modResource', '7'),
(494, 1, '2025-11-14 09:52:51', 'resource_update', 'MODX\\Revolution\\modResource', '7'),
(495, 1, '2025-11-14 10:04:27', 'resource_update', 'MODX\\Revolution\\modResource', '7'),
(496, 2, '2025-11-14 10:05:51', 'directory_remove', '', 'Filesystem: assets/img\\intro\\'),
(497, 2, '2025-11-14 10:05:56', 'directory_create', '', 'Filesystem: assets\\img\\intro'),
(498, 2, '2025-11-14 10:06:19', 'file_upload', '', 'Filesystem: assets/img\\intro/\\'),
(499, 2, '2025-11-14 10:06:19', 'file_upload', '', 'Filesystem: assets/img\\intro/\\'),
(500, 2, '2025-11-14 10:06:19', 'file_upload', '', 'Filesystem: assets/img\\intro/\\'),
(501, 2, '2025-11-14 10:07:01', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(502, 1, '2025-11-14 10:07:41', 'resource_update', 'MODX\\Revolution\\modResource', '7'),
(503, 2, '2025-11-14 10:07:42', 'file_update', '', 'Filesystem: assets\\css\\main.css'),
(504, 2, '2025-11-14 10:08:51', 'login', 'MODX\\Revolution\\modContext', 'mgr'),
(505, 1, '2025-11-14 10:09:24', 'resource_update', 'MODX\\Revolution\\modResource', '7'),
(506, 2, '2025-11-14 10:10:01', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(507, 1, '2025-11-14 10:10:20', 'resource_update', 'MODX\\Revolution\\modResource', '7'),
(508, 2, '2025-11-14 10:10:44', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(509, 2, '2025-11-14 10:12:27', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(510, 1, '2025-11-14 10:13:00', 'resource_update', 'MODX\\Revolution\\modResource', '7'),
(511, 1, '2025-11-14 10:13:16', 'resource_update', 'MODX\\Revolution\\modResource', '7'),
(512, 1, '2025-11-14 10:15:58', 'resource_update', 'MODX\\Revolution\\modResource', '7'),
(513, 1, '2025-11-14 10:16:36', 'resource_update', 'MODX\\Revolution\\modResource', '7'),
(514, 2, '2025-11-14 10:16:56', 'directory_create', '', 'Filesystem: assets\\img\\main'),
(515, 1, '2025-11-14 10:19:16', 'resource_update', 'MODX\\Revolution\\modResource', '7'),
(516, 1, '2025-11-14 10:22:37', 'resource_update', 'MODX\\Revolution\\modResource', '7'),
(517, 1, '2025-11-14 10:32:28', 'resource_update', 'MODX\\Revolution\\modResource', '7'),
(518, 1, '2025-11-14 10:33:59', 'resource_update', 'MODX\\Revolution\\modResource', '7'),
(519, 1, '2025-11-14 10:37:41', 'resource_update', 'MODX\\Revolution\\modResource', '7'),
(520, 2, '2025-11-14 10:41:04', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(521, 1, '2025-11-14 10:53:26', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(522, 1, '2025-11-14 10:53:26', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(523, 1, '2025-11-14 10:54:01', 'snippet_update', 'MODX\\Revolution\\modSnippet', '5'),
(524, 1, '2025-11-14 10:54:02', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 5 Default'),
(525, 1, '2025-11-14 10:58:25', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(526, 1, '2025-11-14 10:58:25', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(527, 2, '2025-11-14 10:59:59', 'login', 'MODX\\Revolution\\modContext', 'mgr'),
(528, 1, '2025-11-14 11:00:56', 'resource_update', 'MODX\\Revolution\\modResource', '7'),
(529, 2, '2025-11-14 11:01:14', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(530, 2, '2025-11-14 11:01:48', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(531, 2, '2025-11-14 11:06:19', 'file_update', '', 'Filesystem: assets\\css\\main.css'),
(532, 2, '2025-11-14 11:07:22', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(533, 2, '2025-11-14 11:07:52', 'file_update', '', 'Filesystem: assets\\css\\main.css'),
(534, 1, '2025-11-14 11:08:25', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(535, 1, '2025-11-14 11:08:25', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(536, 2, '2025-11-14 11:09:03', 'file_update', '', 'Filesystem: assets\\css\\main.css'),
(537, 2, '2025-11-14 11:10:35', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(538, 2, '2025-11-14 11:15:17', 'file_update', '', 'Filesystem: assets\\css\\main.css'),
(539, 2, '2025-11-14 11:15:47', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(540, 2, '2025-11-14 11:21:06', 'file_remove', '', 'Filesystem: assets/img/who_we/1.png'),
(541, 2, '2025-11-14 11:21:30', 'file_upload', '', 'Filesystem: assets/img\\who_we/\\'),
(542, 2, '2025-11-14 11:22:32', 'file_remove', '', 'Filesystem: assets/img/who_we/1.png'),
(543, 2, '2025-11-14 11:22:37', 'file_upload', '', 'Filesystem: assets/img\\who_we/\\'),
(544, 2, '2025-11-14 11:26:23', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(545, 2, '2025-11-14 11:27:00', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(546, 2, '2025-11-14 11:30:36', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(547, 2, '2025-11-14 11:31:01', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(548, 2, '2025-11-14 11:32:17', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(549, 1, '2025-11-14 11:34:33', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(550, 1, '2025-11-14 11:34:34', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(551, 2, '2025-11-14 11:35:26', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(552, 1, '2025-11-14 11:36:39', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(553, 1, '2025-11-14 11:36:39', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(554, 1, '2025-11-14 11:37:15', 'snippet_update', 'MODX\\Revolution\\modSnippet', '2'),
(555, 1, '2025-11-14 11:37:15', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 2 Default'),
(556, 1, '2025-11-14 12:02:30', 'chunk_update', 'MODX\\Revolution\\modChunk', '3'),
(557, 1, '2025-11-14 12:02:30', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 3 Default'),
(558, 1, '2025-11-14 12:08:20', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(559, 1, '2025-11-14 12:08:35', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(560, 1, '2025-11-14 12:09:46', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(561, 1, '2025-11-14 12:10:46', 'snippet_update', 'MODX\\Revolution\\modSnippet', '5'),
(562, 1, '2025-11-14 12:10:46', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 5 Default'),
(563, 1, '2025-11-14 12:43:44', 'chunk_update', 'MODX\\Revolution\\modChunk', '1'),
(564, 1, '2025-11-14 12:43:44', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 1 Default'),
(565, 1, '2025-11-14 12:45:05', 'resource_update', 'MODX\\Revolution\\modResource', '2'),
(566, 1, '2025-11-14 12:53:23', 'resource_update', 'MODX\\Revolution\\modResource', '3'),
(567, 1, '2025-11-14 12:54:19', 'resource_update', 'MODX\\Revolution\\modResource', '3'),
(568, 1, '2025-11-14 12:57:10', 'resource_update', 'MODX\\Revolution\\modResource', '3'),
(569, 1, '2025-11-14 13:09:59', 'resource_update', 'MODX\\Revolution\\modResource', '3'),
(570, 2, '2025-11-16 14:33:39', 'login', 'MODX\\Revolution\\modContext', 'mgr'),
(571, 2, '2025-11-16 14:34:28', 'user_update', 'MODX\\Revolution\\modUser', '1'),
(572, 2, '2025-11-16 14:35:01', 'login', 'MODX\\Revolution\\modContext', 'mgr'),
(573, 2, '2025-11-16 14:41:33', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(574, 2, '2025-11-16 14:44:09', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(575, 2, '2025-11-16 14:47:13', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(576, 2, '2025-11-16 15:03:00', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(577, 2, '2025-11-16 15:22:32', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(578, 2, '2025-11-16 15:27:49', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(579, 2, '2025-11-16 15:34:54', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(580, 2, '2025-11-16 15:39:03', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(581, 2, '2025-11-16 15:42:02', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(582, 2, '2025-11-16 15:44:00', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(583, 2, '2025-11-16 15:45:27', 'snippet_create', 'MODX\\Revolution\\modSnippet', '7'),
(584, 2, '2025-11-16 15:45:51', 'snippet_update', 'MODX\\Revolution\\modSnippet', '7'),
(585, 2, '2025-11-16 15:45:51', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 7 Default'),
(586, 2, '2025-11-16 15:46:30', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(587, 2, '2025-11-16 15:48:18', 'snippet_update', 'MODX\\Revolution\\modSnippet', '7'),
(588, 2, '2025-11-16 15:48:18', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 7 Default'),
(589, 2, '2025-11-16 15:48:48', 'snippet_update', 'MODX\\Revolution\\modSnippet', '7'),
(590, 2, '2025-11-16 15:48:48', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 7 Default'),
(591, 2, '2025-11-16 15:50:30', 'snippet_update', 'MODX\\Revolution\\modSnippet', '7'),
(592, 2, '2025-11-16 15:50:30', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 7 Default'),
(593, 2, '2025-11-16 15:51:18', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(594, 2, '2025-11-16 15:52:28', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(595, 2, '2025-11-16 15:54:08', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(596, 2, '2025-11-16 15:57:11', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(597, 2, '2025-11-16 15:58:47', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(598, 2, '2025-11-16 16:00:17', 'resource_create', 'MODX\\Revolution\\modDocument', '8'),
(599, 2, '2025-11-16 16:00:27', 'resource_update', 'MODX\\Revolution\\modResource', '8'),
(600, 2, '2025-11-16 16:01:44', 'snippet_update', 'MODX\\Revolution\\modSnippet', '7'),
(601, 2, '2025-11-16 16:01:45', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 7 Default'),
(602, 2, '2025-11-16 16:02:33', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(603, 2, '2025-11-16 16:04:29', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(604, 2, '2025-11-16 16:06:35', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(605, 2, '2025-11-16 16:06:39', 'delete_resource', 'MODX\\Revolution\\modDocument', '8'),
(606, 2, '2025-11-16 16:41:20', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(607, 2, '2025-11-16 16:44:55', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(608, 2, '2025-11-16 16:47:28', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(609, 2, '2025-11-16 16:47:54', 'unpublish_resource', 'MODX\\Revolution\\modResource', '8'),
(610, 2, '2025-11-16 16:48:04', 'empty_trash', 'MODX\\Revolution\\modResource', '8'),
(611, 2, '2025-11-16 16:49:15', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(612, 2, '2025-11-16 16:54:34', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(613, 2, '2025-11-16 16:59:47', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(614, 2, '2025-11-16 17:02:18', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(615, 2, '2025-11-16 17:03:51', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(616, 2, '2025-11-16 17:05:37', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(617, 2, '2025-11-16 17:06:07', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(618, 2, '2025-11-16 17:33:52', 'resource_update', 'MODX\\Revolution\\modResource', '3'),
(619, 1, '2025-11-17 04:46:18', 'login', 'MODX\\Revolution\\modContext', 'mgr'),
(620, 1, '2025-11-17 04:49:45', 'resource_update', 'MODX\\Revolution\\modResource', '3'),
(621, 1, '2025-11-17 04:50:03', 'resource_update', 'MODX\\Revolution\\modResource', '3'),
(622, 1, '2025-11-17 04:50:55', 'resource_update', 'MODX\\Revolution\\modResource', '3'),
(623, 1, '2025-11-17 04:54:46', 'resource_update', 'MODX\\Revolution\\modResource', '3'),
(624, 1, '2025-11-17 05:00:36', 'resource_update', 'MODX\\Revolution\\modResource', '3'),
(625, 1, '2025-11-17 05:01:35', 'resource_update', 'MODX\\Revolution\\modResource', '3'),
(626, 1, '2025-11-17 05:10:48', 'resource_update', 'MODX\\Revolution\\modResource', '3'),
(627, 1, '2025-11-17 05:11:22', 'resource_update', 'MODX\\Revolution\\modResource', '3'),
(628, 1, '2025-11-17 05:12:06', 'resource_update', 'MODX\\Revolution\\modResource', '3'),
(629, 1, '2025-11-17 05:12:08', 'resource_update', 'MODX\\Revolution\\modResource', '3'),
(630, 1, '2025-11-17 05:12:47', 'resource_update', 'MODX\\Revolution\\modResource', '3'),
(631, 1, '2025-11-17 05:14:20', 'resource_update', 'MODX\\Revolution\\modResource', '3'),
(632, 1, '2025-11-17 05:14:56', 'resource_update', 'MODX\\Revolution\\modResource', '3'),
(633, 1, '2025-11-17 05:18:09', 'resource_update', 'MODX\\Revolution\\modResource', '3'),
(634, 1, '2025-11-17 05:18:25', 'resource_update', 'MODX\\Revolution\\modResource', '3'),
(635, 1, '2025-11-17 05:19:10', 'resource_update', 'MODX\\Revolution\\modResource', '3'),
(636, 1, '2025-11-17 05:20:47', 'resource_update', 'MODX\\Revolution\\modResource', '3'),
(637, 1, '2025-11-17 05:21:42', 'resource_update', 'MODX\\Revolution\\modResource', '3'),
(638, 1, '2025-11-17 05:28:46', 'resource_update', 'MODX\\Revolution\\modResource', '3'),
(639, 1, '2025-11-17 05:30:22', 'resource_update', 'MODX\\Revolution\\modResource', '3'),
(640, 1, '2025-11-17 05:33:29', 'resource_update', 'MODX\\Revolution\\modResource', '3'),
(641, 1, '2025-11-17 05:33:51', 'resource_update', 'MODX\\Revolution\\modResource', '3'),
(642, 1, '2025-11-17 05:33:58', 'resource_update', 'MODX\\Revolution\\modResource', '3'),
(643, 1, '2025-11-17 05:35:01', 'resource_update', 'MODX\\Revolution\\modResource', '3'),
(644, 1, '2025-11-17 05:39:42', 'resource_update', 'MODX\\Revolution\\modResource', '3'),
(645, 1, '2025-11-17 05:41:02', 'resource_update', 'MODX\\Revolution\\modResource', '3'),
(646, 1, '2025-11-17 05:49:55', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(647, 1, '2025-11-17 05:55:39', 'resource_update', 'MODX\\Revolution\\modResource', '3'),
(648, 1, '2025-11-17 05:58:12', 'resource_update', 'MODX\\Revolution\\modResource', '2'),
(649, 1, '2025-11-17 06:01:47', 'resource_update', 'MODX\\Revolution\\modResource', '6'),
(650, 1, '2025-11-17 06:04:05', 'resource_update', 'MODX\\Revolution\\modResource', '6'),
(651, 1, '2025-11-17 06:06:19', 'resource_update', 'MODX\\Revolution\\modResource', '6'),
(652, 1, '2025-11-17 06:10:18', 'resource_update', 'MODX\\Revolution\\modResource', '6'),
(653, 1, '2025-11-17 06:10:38', 'resource_update', 'MODX\\Revolution\\modResource', '6'),
(654, 1, '2025-11-17 06:11:00', 'resource_update', 'MODX\\Revolution\\modResource', '6'),
(655, 1, '2025-11-17 06:15:51', 'resource_update', 'MODX\\Revolution\\modResource', '6'),
(656, 1, '2025-11-17 06:16:19', 'resource_update', 'MODX\\Revolution\\modResource', '6'),
(657, 1, '2025-11-17 06:16:43', 'resource_update', 'MODX\\Revolution\\modResource', '6'),
(658, 1, '2025-11-17 06:17:04', 'resource_update', 'MODX\\Revolution\\modResource', '6'),
(659, 1, '2025-11-17 06:18:38', 'resource_update', 'MODX\\Revolution\\modResource', '6'),
(660, 1, '2025-11-17 06:20:15', 'resource_update', 'MODX\\Revolution\\modResource', '5'),
(661, 1, '2025-11-17 06:22:46', 'resource_update', 'MODX\\Revolution\\modResource', '7'),
(662, 1, '2025-11-17 06:36:01', 'chunk_update', 'MODX\\Revolution\\modChunk', '3'),
(663, 1, '2025-11-17 06:36:01', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 3 Default'),
(664, 1, '2025-11-17 06:36:46', 'chunk_update', 'MODX\\Revolution\\modChunk', '3'),
(665, 1, '2025-11-17 06:36:46', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 3 Default'),
(666, 1, '2025-11-17 06:37:04', 'chunk_update', 'MODX\\Revolution\\modChunk', '3'),
(667, 1, '2025-11-17 06:37:05', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 3 Default'),
(668, 1, '2025-11-17 06:37:14', 'chunk_update', 'MODX\\Revolution\\modChunk', '3'),
(669, 1, '2025-11-17 06:37:14', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 3 Default'),
(670, 1, '2025-11-17 06:37:29', 'chunk_update', 'MODX\\Revolution\\modChunk', '3'),
(671, 1, '2025-11-17 06:37:29', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 3 Default'),
(672, 1, '2025-11-17 06:37:54', 'chunk_update', 'MODX\\Revolution\\modChunk', '3'),
(673, 1, '2025-11-17 06:37:55', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 3 Default'),
(674, 1, '2025-11-17 06:38:29', 'chunk_update', 'MODX\\Revolution\\modChunk', '3'),
(675, 1, '2025-11-17 06:38:29', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 3 Default'),
(676, 1, '2025-11-17 06:39:34', 'chunk_update', 'MODX\\Revolution\\modChunk', '3'),
(677, 1, '2025-11-17 06:39:34', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 3 Default'),
(678, 1, '2025-11-17 06:39:52', 'chunk_update', 'MODX\\Revolution\\modChunk', '3'),
(679, 1, '2025-11-17 06:39:52', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 3 Default'),
(680, 2, '2025-11-17 06:42:36', 'login', 'MODX\\Revolution\\modContext', 'mgr'),
(681, 2, '2025-11-17 06:44:03', 'file_update', '', 'Filesystem: assets\\css\\main.css'),
(682, 2, '2025-11-17 06:44:42', 'file_update', '', 'Filesystem: assets\\css\\main.css'),
(683, 1, '2025-11-17 07:00:56', 'resource_update', 'MODX\\Revolution\\modResource', '6'),
(684, 1, '2025-11-17 07:02:07', 'resource_update', 'MODX\\Revolution\\modResource', '6'),
(685, 1, '2025-11-17 07:04:29', 'resource_update', 'MODX\\Revolution\\modResource', '6'),
(686, 1, '2025-11-17 07:13:34', 'resource_update', 'MODX\\Revolution\\modResource', '6'),
(687, 1, '2025-11-17 07:20:40', 'resource_update', 'MODX\\Revolution\\modResource', '6'),
(688, 1, '2025-11-17 07:21:03', 'resource_update', 'MODX\\Revolution\\modResource', '6'),
(689, 1, '2025-11-17 07:22:00', 'resource_update', 'MODX\\Revolution\\modResource', '6'),
(690, 1, '2025-11-17 07:27:08', 'chunk_update', 'MODX\\Revolution\\modChunk', '2'),
(691, 1, '2025-11-17 07:27:08', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 2 Default'),
(692, 1, '2025-11-17 07:27:23', 'chunk_update', 'MODX\\Revolution\\modChunk', '2'),
(693, 1, '2025-11-17 07:27:24', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 2 Default'),
(694, 1, '2025-11-17 07:31:57', 'resource_update', 'MODX\\Revolution\\modResource', '6'),
(695, 1, '2025-11-17 08:02:34', 'resource_update', 'MODX\\Revolution\\modResource', '3'),
(696, 1, '2025-11-17 08:03:13', 'resource_update', 'MODX\\Revolution\\modResource', '3'),
(697, 1, '2025-11-17 08:03:54', 'resource_update', 'MODX\\Revolution\\modResource', '3'),
(698, 1, '2025-11-17 08:11:54', 'resource_update', 'MODX\\Revolution\\modResource', '6'),
(699, 1, '2025-11-17 08:17:42', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(700, 1, '2025-11-17 08:17:44', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(701, 1, '2025-11-17 08:28:54', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(702, 1, '2025-11-17 08:37:54', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(703, 1, '2025-11-17 08:42:37', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(704, 1, '2025-11-17 08:49:14', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(705, 1, '2025-11-17 08:50:42', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(706, 1, '2025-11-17 08:52:21', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(707, 1, '2025-11-17 08:54:16', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(708, 1, '2025-11-17 09:10:53', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(709, 1, '2025-11-17 10:02:03', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(710, 1, '2025-11-17 10:25:53', 'chunk_update', 'MODX\\Revolution\\modChunk', '3'),
(711, 1, '2025-11-17 10:25:53', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 3 Default'),
(712, 1, '2025-11-17 10:26:10', 'chunk_update', 'MODX\\Revolution\\modChunk', '3'),
(713, 1, '2025-11-17 10:26:10', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 3 Default'),
(714, 1, '2025-11-17 10:51:01', 'chunk_update', 'MODX\\Revolution\\modChunk', '3'),
(715, 1, '2025-11-17 10:51:01', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 3 Default'),
(716, 1, '2025-11-17 10:53:46', 'chunk_update', 'MODX\\Revolution\\modChunk', '3'),
(717, 1, '2025-11-17 10:53:47', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 3 Default'),
(718, 1, '2025-11-17 10:54:59', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(719, 1, '2025-11-17 10:57:15', 'resource_update', 'MODX\\Revolution\\modResource', '6'),
(720, 1, '2025-11-17 11:12:35', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(721, 1, '2025-11-17 11:13:13', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(722, 1, '2025-11-17 11:23:15', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(723, 1, '2025-11-17 11:32:00', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(724, 1, '2025-11-17 11:37:41', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(725, 1, '2025-11-17 11:44:17', 'snippet_update', 'MODX\\Revolution\\modSnippet', '5'),
(726, 1, '2025-11-17 11:44:18', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 5 Default'),
(727, 1, '2025-11-17 11:45:09', 'snippet_update', 'MODX\\Revolution\\modSnippet', '5'),
(728, 1, '2025-11-17 11:45:10', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 5 Default'),
(729, 1, '2025-11-17 11:53:12', 'resource_update', 'MODX\\Revolution\\modResource', '6'),
(730, 1, '2025-11-17 11:54:26', 'resource_update', 'MODX\\Revolution\\modResource', '6'),
(731, 1, '2025-11-17 11:54:49', 'snippet_create', 'MODX\\Revolution\\modSnippet', '8'),
(732, 1, '2025-11-17 11:55:04', 'resource_update', 'MODX\\Revolution\\modResource', '6'),
(733, 1, '2025-11-17 11:56:04', 'resource_update', 'MODX\\Revolution\\modResource', '6'),
(734, 1, '2025-11-17 11:57:04', 'snippet_update', 'MODX\\Revolution\\modSnippet', '8'),
(735, 1, '2025-11-17 11:57:05', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 8 Default'),
(736, 1, '2025-11-17 11:57:16', 'snippet_update', 'MODX\\Revolution\\modSnippet', '8'),
(737, 1, '2025-11-17 11:57:16', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 8 Default'),
(738, 1, '2025-11-17 11:58:04', 'resource_update', 'MODX\\Revolution\\modResource', '6'),
(739, 1, '2025-11-17 11:58:43', 'snippet_update', 'MODX\\Revolution\\modSnippet', '8'),
(740, 1, '2025-11-17 11:58:43', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modSnippet 8 Default'),
(741, 1, '2025-11-17 11:59:01', 'resource_update', 'MODX\\Revolution\\modResource', '6'),
(742, 1, '2025-11-17 12:00:32', 'resource_update', 'MODX\\Revolution\\modResource', '6'),
(743, 1, '2025-11-17 12:02:03', 'resource_update', 'MODX\\Revolution\\modResource', '6'),
(744, 1, '2025-11-17 12:03:18', 'resource_update', 'MODX\\Revolution\\modResource', '6'),
(745, 1, '2025-11-17 12:04:35', 'resource_update', 'MODX\\Revolution\\modResource', '6'),
(746, 1, '2025-11-17 12:06:46', 'resource_update', 'MODX\\Revolution\\modResource', '6'),
(747, 1, '2025-11-17 12:07:43', 'resource_update', 'MODX\\Revolution\\modResource', '6'),
(748, 1, '2025-11-17 12:18:58', 'resource_update', 'MODX\\Revolution\\modResource', '6'),
(749, 1, '2025-11-17 12:19:47', 'resource_update', 'MODX\\Revolution\\modResource', '6'),
(750, 1, '2025-11-17 12:20:04', 'resource_update', 'MODX\\Revolution\\modResource', '6'),
(751, 1, '2025-11-17 12:27:40', 'resource_update', 'MODX\\Revolution\\modResource', '6'),
(752, 1, '2025-11-17 12:28:21', 'resource_update', 'MODX\\Revolution\\modResource', '6'),
(753, 1, '2025-11-17 12:31:17', 'chunk_update', 'MODX\\Revolution\\modChunk', '1'),
(754, 1, '2025-11-17 12:31:18', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 1 Default'),
(755, 1, '2025-11-17 12:35:32', 'chunk_update', 'MODX\\Revolution\\modChunk', '1'),
(756, 1, '2025-11-17 12:35:32', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modChunk 1 Default');

-- --------------------------------------------------------

--
-- Table structure for table `modx_media_sources`
--

CREATE TABLE `modx_media_sources` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL DEFAULT '',
  `description` text DEFAULT NULL,
  `class_key` varchar(100) NOT NULL DEFAULT 'MODX\\Revolution\\Sources\\modFileMediaSource',
  `properties` mediumtext DEFAULT NULL,
  `is_stream` tinyint(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `modx_media_sources`
--

INSERT INTO `modx_media_sources` (`id`, `name`, `description`, `class_key`, `properties`, `is_stream`) VALUES
(1, 'Filesystem', '', 'MODX\\Revolution\\Sources\\modFileMediaSource', 'a:0:{}', 1);

-- --------------------------------------------------------

--
-- Table structure for table `modx_media_sources_contexts`
--

CREATE TABLE `modx_media_sources_contexts` (
  `source` int(11) NOT NULL DEFAULT 0,
  `context_key` varchar(100) NOT NULL DEFAULT 'web'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `modx_media_sources_elements`
--

CREATE TABLE `modx_media_sources_elements` (
  `source` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `object_class` varchar(100) NOT NULL DEFAULT 'MODX\\Revolution\\modTemplateVar',
  `object` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `context_key` varchar(100) NOT NULL DEFAULT 'web'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `modx_membergroup_names`
--

CREATE TABLE `modx_membergroup_names` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL DEFAULT '',
  `description` text DEFAULT NULL,
  `parent` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `rank` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `dashboard` int(10) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `modx_membergroup_names`
--

INSERT INTO `modx_membergroup_names` (`id`, `name`, `description`, `parent`, `rank`, `dashboard`) VALUES
(1, 'Administrator', NULL, 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `modx_member_groups`
--

CREATE TABLE `modx_member_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_group` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `member` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `role` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `rank` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `modx_member_groups`
--

INSERT INTO `modx_member_groups` (`id`, `user_group`, `member`, `role`, `rank`) VALUES
(1, 1, 1, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `modx_menus`
--

CREATE TABLE `modx_menus` (
  `text` varchar(191) NOT NULL DEFAULT '',
  `parent` varchar(191) NOT NULL DEFAULT '',
  `action` varchar(191) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `icon` varchar(255) NOT NULL DEFAULT '',
  `menuindex` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `params` text NOT NULL,
  `handler` text NOT NULL,
  `permissions` text NOT NULL,
  `namespace` varchar(100) NOT NULL DEFAULT 'core'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `modx_menus`
--

INSERT INTO `modx_menus` (`text`, `parent`, `action`, `description`, `icon`, `menuindex`, `params`, `handler`, `permissions`, `namespace`) VALUES
('about', 'usernav', 'help', 'about_desc', '<i class=\"icon-question-circle icon\"></i>', 3, '', '', 'help', 'core'),
('access', 'usernav', '', '', '<i class=\"icon-user-lock icon\"></i>', 1, '', '', 'access_permissions', 'core'),
('acls', 'access', 'security/permission', 'acls_desc', '', 2, '', '', 'access_permissions', 'core'),
('admin', 'usernav', '', '', '<i class=\"icon-gear icon\"></i>', 2, '', '', 'settings', 'core'),
('components', 'topnav', '', '', '<i class=\"icon-cube icon\"></i>', 2, '', '', 'components', 'core'),
('content_types', 'site', 'system/contenttype', 'content_types_desc', '', 4, '', '', 'content_types', 'core'),
('contexts', 'admin', 'context', 'contexts_desc', '', 4, '', '', 'view_context', 'core'),
('dashboards', 'admin', 'system/dashboards', 'dashboards_desc', '', 5, '', '', 'dashboards', 'core'),
('edit_menu', 'admin', 'system/action', 'edit_menu_desc', '', 3, '', '', 'actions', 'core'),
('eventlog_viewer', 'reports', 'system/event', 'eventlog_viewer_desc', '', 1, '', '', 'view_eventlog', 'core'),
('file_browser', 'media', 'media/browser', 'file_browser_desc', '', 0, '', '', 'file_manager', 'core'),
('flush_access', 'access', '', 'flush_access_desc', '', 3, '', 'MODx.msg.confirm({\n                            title: _(\'flush_access\')\n                            ,text: _(\'flush_access_confirm\')\n                            ,url: MODx.config.connector_url\n                            ,params: {\n                                action: \'security/access/flush\'\n                            }\n                            ,listeners: {\n                                \'success\': {fn:function() { location.href = \'./\'; },scope:this},\n                                \'failure\': {fn:function(response) { Ext.MessageBox.alert(\'failure\', response.responseText); },scope:this},\n                            }\n                        });', 'access_permissions', 'core'),
('flush_sessions', 'access', '', 'flush_sessions_desc', '', 4, '', 'MODx.msg.confirm({\n                            title: _(\'flush_sessions\')\n                            ,text: _(\'flush_sessions_confirm\')\n                            ,url: MODx.config.connector_url\n                            ,params: {\n                                action: \'security/flush\'\n                            }\n                            ,listeners: {\n                                \'success\': {fn:function() { location.href = \'./\'; },scope:this}\n                            }\n                        });', 'flush_sessions', 'core'),
('form_customization', 'admin', 'security/forms', 'form_customization_desc', '', 1, '', '', 'customize_forms', 'core'),
('installer', 'components', 'workspaces', 'installer_desc', '', 0, '', '', 'packages', 'core'),
('language', 'admin', '', 'language_desc', '', 8, '', '', 'language', 'core'),
('lexicon_management', 'admin', 'workspaces/lexicon', 'lexicon_management_desc', '', 7, '', '', 'lexicons', 'core'),
('logout', 'user', 'security/logout', 'logout_desc', '', 2, '', 'MODx.logout(); return false;', 'logout', 'core'),
('media', 'topnav', '', '', '<i class=\"icon-file-image-o icon\"></i>', 1, '', '', 'file_manager', 'core'),
('messages', 'user', 'security/message', 'messages_desc', '', 1, '', '', 'messages', 'core'),
('namespaces', 'admin', 'workspaces/namespace', 'namespaces_desc', '', 6, '', '', 'namespaces', 'core'),
('new_resource', 'site', 'resource/create', 'new_resource_desc', '', 0, '', '', 'new_document', 'core'),
('propertysets', 'admin', 'element/propertyset', 'propertysets_desc', '', 2, '', '', 'property_sets', 'core'),
('refreshuris', 'refresh_site', '', 'refreshuris_desc', '', 0, '', 'MODx.refreshURIs(); return false;', 'empty_cache', 'core'),
('refresh_site', 'site', '', 'refresh_site_desc', '', 1, '', 'MODx.clearCache(); return false;', 'empty_cache', 'core'),
('remove_locks', 'site', '', 'remove_locks_desc', '', 2, '', 'MODx.removeLocks();return false;', 'remove_locks', 'core'),
('reports', 'admin', '', 'reports_desc', '', 9, '', '', 'menu_reports', 'core'),
('resource_groups', 'access', 'security/resourcegroup', 'resource_groups_desc', '', 1, '', '', 'access_permissions', 'core'),
('site', 'topnav', '', '', '<i class=\"icon-file-text-o icon\"></i>', 0, '', '', 'menu_site', 'core'),
('site_schedule', 'site', 'resource/site_schedule', 'site_schedule_desc', '', 3, '', '', 'view_document', 'core'),
('sources', 'media', 'source', 'sources_desc', '', 1, '', '', 'sources', 'core'),
('system_settings', 'admin', 'system/settings', 'system_settings_desc', '', 0, '', '', 'settings', 'core'),
('topnav', '', '', 'topnav_desc', '', 0, '', '', '', 'core'),
('trash', 'site', 'resource/trash', 'trash_desc', '', 5, '', '', 'menu_trash', 'core'),
('user', 'usernav', '', '', '<span id=\"user-avatar\" title=\"{$username}\">{$userImage}</span> <span id=\"user-username\">{$username}</span>', 0, '', '', 'menu_user', 'core'),
('usernav', '', '', 'usernav_desc', '', 1, '', '', '', 'core'),
('users', 'access', 'security/user', 'user_management_desc', '', 0, '', '', 'view_user', 'core'),
('view_logging', 'reports', 'system/logs', 'view_logging_desc', '', 0, '', '', 'mgr_log_view', 'core'),
('view_sysinfo', 'reports', 'system/info', 'view_sysinfo_desc', '', 2, '', '', 'view_sysinfo', 'core'),
('{$username}', 'user', 'security/profile', 'profile_desc', '', 0, '', '', 'change_profile', 'core');

-- --------------------------------------------------------

--
-- Table structure for table `modx_namespaces`
--

CREATE TABLE `modx_namespaces` (
  `name` varchar(40) NOT NULL DEFAULT '',
  `path` text DEFAULT NULL,
  `assets_path` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `modx_namespaces`
--

INSERT INTO `modx_namespaces` (`name`, `path`, `assets_path`) VALUES
('core', '{core_path}', '{assets_path}');

-- --------------------------------------------------------

--
-- Table structure for table `modx_property_set`
--

CREATE TABLE `modx_property_set` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL DEFAULT '',
  `category` int(10) NOT NULL DEFAULT 0,
  `description` varchar(255) NOT NULL DEFAULT '',
  `properties` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `modx_register_messages`
--

CREATE TABLE `modx_register_messages` (
  `topic` int(10) UNSIGNED NOT NULL,
  `id` varchar(191) NOT NULL,
  `created` datetime NOT NULL,
  `valid` datetime NOT NULL,
  `accessed` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `accesses` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `expires` int(20) NOT NULL DEFAULT 0,
  `payload` mediumtext NOT NULL,
  `kill` tinyint(1) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `modx_register_messages`
--

INSERT INTO `modx_register_messages` (`topic`, `id`, `created`, `valid`, `accessed`, `accesses`, `expires`, `payload`, `kill`) VALUES
(1, 'c9f0f895fb98ab9159f51fd0297e236d', '2025-11-16 16:47:54', '2025-11-16 16:47:54', NULL, 0, 1763308434, 'if (time() > 1763308434) return null;\nreturn 2;\n', 0),
(3, '33c944966a4757fc9aa6dce7459801e5', '2025-11-16 14:32:35', '2025-11-16 14:32:35', NULL, 0, 1763386355, 'if (time() > 1763386355) return null;\nreturn \'admin\';\n', 0),
(3, 'ea0eb96e79218cbe79f62775f6e1285a', '2025-11-16 14:32:26', '2025-11-16 14:32:26', NULL, 0, 1763386346, 'if (time() > 1763386346) return null;\nreturn \'admin\';\n', 0);

-- --------------------------------------------------------

--
-- Table structure for table `modx_register_queues`
--

CREATE TABLE `modx_register_queues` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `options` mediumtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `modx_register_queues`
--

INSERT INTO `modx_register_queues` (`id`, `name`, `options`) VALUES
(1, 'locks', 'a:1:{s:9:\"directory\";s:5:\"locks\";}'),
(2, 'resource_reload', 'a:1:{s:9:\"directory\";s:15:\"resource_reload\";}'),
(3, 'user', 'a:0:{}');

-- --------------------------------------------------------

--
-- Table structure for table `modx_register_topics`
--

CREATE TABLE `modx_register_topics` (
  `id` int(10) UNSIGNED NOT NULL,
  `queue` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `created` datetime NOT NULL,
  `updated` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `options` mediumtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `modx_register_topics`
--

INSERT INTO `modx_register_topics` (`id`, `queue`, `name`, `created`, `updated`, `options`) VALUES
(1, 1, '/resource/', '2025-11-12 06:50:12', NULL, NULL),
(2, 2, '/resourcereload/', '2025-11-12 07:00:15', NULL, NULL),
(3, 3, '/pwd/change/', '2025-11-16 14:32:26', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `modx_session`
--

CREATE TABLE `modx_session` (
  `id` varchar(191) NOT NULL DEFAULT '',
  `access` int(20) UNSIGNED NOT NULL,
  `data` mediumtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `modx_session`
--

INSERT INTO `modx_session` (`id`, `access`, `data`) VALUES
('0l2kauo1oa0t67s8cgh7ibscp7', 1763113158, 'modx.user.0.resourceGroups|a:1:{s:3:\"mgr\";a:0:{}}modx.user.0.attributes|a:1:{s:3:\"mgr\";a:5:{s:32:\"MODX\\Revolution\\modAccessContext\";a:1:{s:3:\"web\";a:1:{i:0;a:3:{s:9:\"principal\";i:0;s:9:\"authority\";i:0;s:6:\"policy\";a:1:{s:4:\"load\";b:1;}}}}s:38:\"MODX\\Revolution\\modAccessResourceGroup\";a:0:{}s:33:\"MODX\\Revolution\\modAccessCategory\";a:0:{}s:44:\"MODX\\Revolution\\Sources\\modAccessMediaSource\";a:0:{}s:34:\"MODX\\Revolution\\modAccessNamespace\";a:0:{}}}modx.user.contextTokens|a:1:{s:3:\"mgr\";i:2;}manager_language|s:2:\"en\";modx.mgr.user.token|s:52:\"modx69141fac9d9bb1.11208762_26916f1a3234f94.44320344\";modx.mgr.session.cookie.lifetime|i:0;modx.mgr.user.config|a:0:{}newResourceTokens|a:1:{i:0;s:23:\"6916f8c65ec7c3.89371520\";}'),
('1gp1paeq0kogvjsqc5in70kqdi', 1763005046, 'modx.user.contextTokens|a:0:{}'),
('1t72804r860kj1okttrai93c9b', 1763035983, 'modx.user.contextTokens|a:0:{}'),
('30670gim0f29cvu93msm4nnf4e', 1763115218, 'modx.user.contextTokens|a:0:{}manager_language|s:2:\"en\";modx.user.0.resourceGroups|a:1:{s:3:\"mgr\";a:0:{}}modx.user.0.attributes|a:1:{s:3:\"mgr\";a:5:{s:32:\"MODX\\Revolution\\modAccessContext\";a:1:{s:3:\"web\";a:1:{i:0;a:3:{s:9:\"principal\";i:0;s:9:\"authority\";i:0;s:6:\"policy\";a:1:{s:4:\"load\";b:1;}}}}s:38:\"MODX\\Revolution\\modAccessResourceGroup\";a:0:{}s:33:\"MODX\\Revolution\\modAccessCategory\";a:0:{}s:44:\"MODX\\Revolution\\Sources\\modAccessMediaSource\";a:0:{}s:34:\"MODX\\Revolution\\modAccessNamespace\";a:0:{}}}'),
('3plvbba2oom5lnsiipdqgrd419', 1763369601, 'modx.user.contextTokens|a:0:{}modx.user.0.resourceGroups|a:1:{s:3:\"web\";a:0:{}}modx.user.0.attributes|a:1:{s:3:\"web\";a:5:{s:32:\"MODX\\Revolution\\modAccessContext\";a:1:{s:3:\"web\";a:1:{i:0;a:3:{s:9:\"principal\";i:0;s:9:\"authority\";i:0;s:6:\"policy\";a:1:{s:4:\"load\";b:1;}}}}s:38:\"MODX\\Revolution\\modAccessResourceGroup\";a:0:{}s:33:\"MODX\\Revolution\\modAccessCategory\";a:0:{}s:44:\"MODX\\Revolution\\Sources\\modAccessMediaSource\";a:0:{}s:34:\"MODX\\Revolution\\modAccessNamespace\";a:0:{}}}'),
('58dbgtm3u17vvapu33hv2a5e8g', 1763111408, 'modx.user.contextTokens|a:0:{}manager_language|s:2:\"en\";modx.user.0.resourceGroups|a:1:{s:3:\"mgr\";a:0:{}}modx.user.0.attributes|a:1:{s:3:\"mgr\";a:5:{s:32:\"MODX\\Revolution\\modAccessContext\";a:1:{s:3:\"web\";a:1:{i:0;a:3:{s:9:\"principal\";i:0;s:9:\"authority\";i:0;s:6:\"policy\";a:1:{s:4:\"load\";b:1;}}}}s:38:\"MODX\\Revolution\\modAccessResourceGroup\";a:0:{}s:33:\"MODX\\Revolution\\modAccessCategory\";a:0:{}s:44:\"MODX\\Revolution\\Sources\\modAccessMediaSource\";a:0:{}s:34:\"MODX\\Revolution\\modAccessNamespace\";a:0:{}}}'),
('6mdmg9gms0krnc6s3o7rb7vvh0', 1763091728, 'modx.user.contextTokens|a:0:{}'),
('6ufnml5h5fhlr66i9sbuiavu2g', 1763109199, 'modx.user.0.resourceGroups|a:1:{s:3:\"mgr\";a:0:{}}modx.user.0.attributes|a:1:{s:3:\"mgr\";a:5:{s:32:\"MODX\\Revolution\\modAccessContext\";a:1:{s:3:\"web\";a:1:{i:0;a:3:{s:9:\"principal\";i:0;s:9:\"authority\";i:0;s:6:\"policy\";a:1:{s:4:\"load\";b:1;}}}}s:38:\"MODX\\Revolution\\modAccessResourceGroup\";a:0:{}s:33:\"MODX\\Revolution\\modAccessCategory\";a:0:{}s:44:\"MODX\\Revolution\\Sources\\modAccessMediaSource\";a:0:{}s:34:\"MODX\\Revolution\\modAccessNamespace\";a:0:{}}}modx.user.contextTokens|a:1:{s:3:\"mgr\";i:2;}manager_language|s:2:\"en\";modx.mgr.user.token|s:52:\"modx69141fac9d9bb1.11208762_26916d57c9d2a53.41066938\";modx.mgr.session.cookie.lifetime|i:0;modx.mgr.user.config|a:0:{}newResourceTokens|a:2:{i:0;s:23:\"6916d589bd0f66.37060160\";i:1;s:23:\"6916e94f47d776.36816231\";}'),
('85m4sf5li6bboflb13iid2p96f', 1763034862, 'modx.user.contextTokens|a:1:{s:3:\"mgr\";i:1;}manager_language|s:2:\"en\";modx.user.0.resourceGroups|a:1:{s:3:\"mgr\";a:0:{}}modx.user.0.attributes|a:1:{s:3:\"mgr\";a:5:{s:32:\"MODX\\Revolution\\modAccessContext\";a:1:{s:3:\"web\";a:1:{i:0;a:3:{s:9:\"principal\";i:0;s:9:\"authority\";i:0;s:6:\"policy\";a:1:{s:4:\"load\";b:1;}}}}s:38:\"MODX\\Revolution\\modAccessResourceGroup\";a:0:{}s:33:\"MODX\\Revolution\\modAccessCategory\";a:0:{}s:44:\"MODX\\Revolution\\Sources\\modAccessMediaSource\";a:0:{}s:34:\"MODX\\Revolution\\modAccessNamespace\";a:0:{}}}login_failed|i:1;modx.mgr.user.token|s:52:\"modx69141fac9d9bb1.11208762_16915529a7e9da8.37757184\";modx.mgr.session.cookie.lifetime|i:0;modx.mgr.user.config|a:0:{}newResourceTokens|a:7:{i:0;s:23:\"69155ef771c7e8.13345822\";i:1;s:23:\"69156b0c035181.93438873\";i:2;s:23:\"691578ac85af43.53426850\";i:3;s:23:\"69157a410327f4.16246252\";i:4;s:23:\"69159740d867d6.70846412\";i:5;s:23:\"6915b0e70864e3.12462084\";i:6;s:23:\"6915c6ed10c044.94853897\";}'),
('ctboi96gd9orc59rmd2slc5chg', 1763105244, 'modx.user.contextTokens|a:0:{}modx.user.0.resourceGroups|a:1:{s:3:\"web\";a:0:{}}modx.user.0.attributes|a:1:{s:3:\"web\";a:5:{s:32:\"MODX\\Revolution\\modAccessContext\";a:1:{s:3:\"web\";a:1:{i:0;a:3:{s:9:\"principal\";i:0;s:9:\"authority\";i:0;s:6:\"policy\";a:1:{s:4:\"load\";b:1;}}}}s:38:\"MODX\\Revolution\\modAccessResourceGroup\";a:0:{}s:33:\"MODX\\Revolution\\modAccessCategory\";a:0:{}s:44:\"MODX\\Revolution\\Sources\\modAccessMediaSource\";a:0:{}s:34:\"MODX\\Revolution\\modAccessNamespace\";a:0:{}}}'),
('dfog8h4nulnpq5bschp1pipjep', 1763299841, 'modx.user.contextTokens|a:0:{}manager_language|s:2:\"en\";modx.user.0.resourceGroups|a:1:{s:3:\"mgr\";a:0:{}}modx.user.0.attributes|a:1:{s:3:\"mgr\";a:5:{s:32:\"MODX\\Revolution\\modAccessContext\";a:1:{s:3:\"web\";a:1:{i:0;a:3:{s:9:\"principal\";i:0;s:9:\"authority\";i:0;s:6:\"policy\";a:1:{s:4:\"load\";b:1;}}}}s:38:\"MODX\\Revolution\\modAccessResourceGroup\";a:0:{}s:33:\"MODX\\Revolution\\modAccessCategory\";a:0:{}s:44:\"MODX\\Revolution\\Sources\\modAccessMediaSource\";a:0:{}s:34:\"MODX\\Revolution\\modAccessNamespace\";a:0:{}}}login_failed|i:2;'),
('euslq63ifced5cqm7fpoavc3dq', 1763115343, 'modx.user.0.resourceGroups|a:1:{s:3:\"mgr\";a:0:{}}modx.user.0.attributes|a:1:{s:3:\"mgr\";a:5:{s:32:\"MODX\\Revolution\\modAccessContext\";a:1:{s:3:\"web\";a:1:{i:0;a:3:{s:9:\"principal\";i:0;s:9:\"authority\";i:0;s:6:\"policy\";a:1:{s:4:\"load\";b:1;}}}}s:38:\"MODX\\Revolution\\modAccessResourceGroup\";a:0:{}s:33:\"MODX\\Revolution\\modAccessCategory\";a:0:{}s:44:\"MODX\\Revolution\\Sources\\modAccessMediaSource\";a:0:{}s:34:\"MODX\\Revolution\\modAccessNamespace\";a:0:{}}}modx.user.contextTokens|a:1:{s:3:\"mgr\";i:2;}manager_language|s:2:\"en\";modx.mgr.user.token|s:52:\"modx69141fac9d9bb1.11208762_26916fd9f30d1a2.89909882\";modx.mgr.session.cookie.lifetime|i:0;modx.mgr.user.config|a:0:{}newResourceTokens|a:4:{i:0;s:23:\"6916fde0885a81.22863652\";i:1;s:23:\"6916ff566213d3.33804573\";i:2;s:23:\"6916ffe1259374.76261777\";i:3;s:23:\"6917014fe8f156.26302436\";}'),
('g4fnk8r9sihfgffifremac3e62', 1763096987, 'modx.user.0.resourceGroups|a:1:{s:3:\"mgr\";a:0:{}}modx.user.0.attributes|a:1:{s:3:\"mgr\";a:5:{s:32:\"MODX\\Revolution\\modAccessContext\";a:1:{s:3:\"web\";a:1:{i:0;a:3:{s:9:\"principal\";i:0;s:9:\"authority\";i:0;s:6:\"policy\";a:1:{s:4:\"load\";b:1;}}}}s:38:\"MODX\\Revolution\\modAccessResourceGroup\";a:0:{}s:33:\"MODX\\Revolution\\modAccessCategory\";a:0:{}s:44:\"MODX\\Revolution\\Sources\\modAccessMediaSource\";a:0:{}s:34:\"MODX\\Revolution\\modAccessNamespace\";a:0:{}}}modx.user.contextTokens|a:1:{s:3:\"mgr\";i:2;}manager_language|s:2:\"en\";login_failed|i:1;modx.mgr.user.token|s:52:\"modx69141fac9d9bb1.11208762_26916b8fa4e9ae0.95399337\";modx.mgr.session.cookie.lifetime|i:0;modx.mgr.user.config|a:0:{}newResourceTokens|a:3:{i:0;s:23:\"6916b9045a9252.92759945\";i:1;s:23:\"6916b9934fd6c2.41062340\";i:2;s:23:\"6916b99bbf45b9.48833494\";}'),
('ho7dl6pjeo2sfaqko2p1ptp8ms', 1763037231, 'modx.user.contextTokens|a:1:{s:3:\"mgr\";i:2;}modx.user.0.resourceGroups|a:1:{s:3:\"mgr\";a:0:{}}modx.user.0.attributes|a:1:{s:3:\"mgr\";a:5:{s:32:\"MODX\\Revolution\\modAccessContext\";a:1:{s:3:\"web\";a:1:{i:0;a:3:{s:9:\"principal\";i:0;s:9:\"authority\";i:0;s:6:\"policy\";a:1:{s:4:\"load\";b:1;}}}}s:38:\"MODX\\Revolution\\modAccessResourceGroup\";a:0:{}s:33:\"MODX\\Revolution\\modAccessCategory\";a:0:{}s:44:\"MODX\\Revolution\\Sources\\modAccessMediaSource\";a:0:{}s:34:\"MODX\\Revolution\\modAccessNamespace\";a:0:{}}}manager_language|s:2:\"en\";modx.mgr.user.token|s:52:\"modx69141fac9d9bb1.11208762_26915d0299b0020.47337890\";modx.mgr.session.cookie.lifetime|i:0;modx.mgr.user.config|a:0:{}newResourceTokens|a:1:{i:0;s:23:\"6915d02fcff553.96682049\";}'),
('ia0rc0q6p9b5inddmqdp1fktug', 1763358156, 'modx.user.contextTokens|a:1:{s:3:\"mgr\";i:2;}modx.user.0.resourceGroups|a:1:{s:3:\"mgr\";a:0:{}}modx.user.0.attributes|a:1:{s:3:\"mgr\";a:5:{s:32:\"MODX\\Revolution\\modAccessContext\";a:1:{s:3:\"web\";a:1:{i:0;a:3:{s:9:\"principal\";i:0;s:9:\"authority\";i:0;s:6:\"policy\";a:1:{s:4:\"load\";b:1;}}}}s:38:\"MODX\\Revolution\\modAccessResourceGroup\";a:0:{}s:33:\"MODX\\Revolution\\modAccessCategory\";a:0:{}s:44:\"MODX\\Revolution\\Sources\\modAccessMediaSource\";a:0:{}s:34:\"MODX\\Revolution\\modAccessNamespace\";a:0:{}}}manager_language|s:2:\"en\";modx.mgr.user.token|s:52:\"modx69141fac9d9bb1.11208762_2691ab5cc9f4027.78310890\";modx.mgr.session.cookie.lifetime|i:0;modx.mgr.user.config|a:0:{}'),
('iqa0ucmmf9ncebmuvunh952e1o', 1763310828, 'modx.user.contextTokens|a:1:{s:3:\"mgr\";i:2;}manager_language|s:2:\"en\";modx.user.0.resourceGroups|a:1:{s:3:\"mgr\";a:0:{}}modx.user.0.attributes|a:1:{s:3:\"mgr\";a:5:{s:32:\"MODX\\Revolution\\modAccessContext\";a:1:{s:3:\"web\";a:1:{i:0;a:3:{s:9:\"principal\";i:0;s:9:\"authority\";i:0;s:6:\"policy\";a:1:{s:4:\"load\";b:1;}}}}s:38:\"MODX\\Revolution\\modAccessResourceGroup\";a:0:{}s:33:\"MODX\\Revolution\\modAccessCategory\";a:0:{}s:44:\"MODX\\Revolution\\Sources\\modAccessMediaSource\";a:0:{}s:34:\"MODX\\Revolution\\modAccessNamespace\";a:0:{}}}modx.mgr.user.token|s:52:\"modx69141fac9d9bb1.11208762_26919d305df1e03.72386782\";modx.mgr.session.cookie.lifetime|i:0;modx.mgr.user.config|a:0:{}newResourceTokens|a:8:{i:0;s:23:\"6919d489e63911.71703514\";i:1;s:23:\"6919e3c4091820.14911305\";i:2;s:23:\"6919e4e3e08367.97828731\";i:3;s:23:\"6919e645077353.11916178\";i:4;s:23:\"6919e701d039a8.40917645\";i:5;s:23:\"6919e78677c308.69905073\";i:6;s:23:\"6919f4f157d5e4.45224673\";i:7;s:23:\"6919fcecab27b0.03526549\";}'),
('iu9fn38csol779k58rh25egajh', 1763105708, 'modx.user.contextTokens|a:0:{}'),
('j43lj3q8bbn6scbpsoig94l765', 1763111162, 'modx.user.0.resourceGroups|a:1:{s:3:\"mgr\";a:0:{}}modx.user.0.attributes|a:1:{s:3:\"mgr\";a:5:{s:32:\"MODX\\Revolution\\modAccessContext\";a:1:{s:3:\"web\";a:1:{i:0;a:3:{s:9:\"principal\";i:0;s:9:\"authority\";i:0;s:6:\"policy\";a:1:{s:4:\"load\";b:1;}}}}s:38:\"MODX\\Revolution\\modAccessResourceGroup\";a:0:{}s:33:\"MODX\\Revolution\\modAccessCategory\";a:0:{}s:44:\"MODX\\Revolution\\Sources\\modAccessMediaSource\";a:0:{}s:34:\"MODX\\Revolution\\modAccessNamespace\";a:0:{}}}modx.user.contextTokens|a:1:{s:3:\"mgr\";i:2;}manager_language|s:2:\"en\";modx.mgr.user.token|s:52:\"modx69141fac9d9bb1.11208762_26916ece4024679.83540597\";modx.mgr.session.cookie.lifetime|i:0;modx.mgr.user.config|a:0:{}newResourceTokens|a:2:{i:0;s:23:\"6916ecec808748.96880960\";i:1;s:23:\"6916f0fa96d5d0.67614397\";}'),
('k252ciqagl8nn27hi29eo967mj', 1762934729, 'modx.user.contextTokens|a:0:{}modx.user.0.resourceGroups|a:1:{s:3:\"web\";a:0:{}}modx.user.0.attributes|a:1:{s:3:\"web\";a:5:{s:32:\"MODX\\Revolution\\modAccessContext\";a:1:{s:3:\"web\";a:1:{i:0;a:3:{s:9:\"principal\";i:0;s:9:\"authority\";i:0;s:6:\"policy\";a:1:{s:4:\"load\";b:1;}}}}s:38:\"MODX\\Revolution\\modAccessResourceGroup\";a:0:{}s:33:\"MODX\\Revolution\\modAccessCategory\";a:0:{}s:44:\"MODX\\Revolution\\Sources\\modAccessMediaSource\";a:0:{}s:34:\"MODX\\Revolution\\modAccessNamespace\";a:0:{}}}'),
('ldnq3b6stqrpr64nd96idfioen', 1763114490, 'modx.user.contextTokens|a:0:{}modx.user.0.resourceGroups|a:1:{s:3:\"web\";a:0:{}}modx.user.0.attributes|a:1:{s:3:\"web\";a:5:{s:32:\"MODX\\Revolution\\modAccessContext\";a:1:{s:3:\"web\";a:1:{i:0;a:3:{s:9:\"principal\";i:0;s:9:\"authority\";i:0;s:6:\"policy\";a:1:{s:4:\"load\";b:1;}}}}s:38:\"MODX\\Revolution\\modAccessResourceGroup\";a:0:{}s:33:\"MODX\\Revolution\\modAccessCategory\";a:0:{}s:44:\"MODX\\Revolution\\Sources\\modAccessMediaSource\";a:0:{}s:34:\"MODX\\Revolution\\modAccessNamespace\";a:0:{}}}'),
('lveq684gk1n6d31s70f2o77f8d', 1763351160, 'modx.user.contextTokens|a:0:{}manager_language|s:2:\"en\";modx.user.0.resourceGroups|a:1:{s:3:\"mgr\";a:0:{}}modx.user.0.attributes|a:1:{s:3:\"mgr\";a:5:{s:32:\"MODX\\Revolution\\modAccessContext\";a:1:{s:3:\"web\";a:1:{i:0;a:3:{s:9:\"principal\";i:0;s:9:\"authority\";i:0;s:6:\"policy\";a:1:{s:4:\"load\";b:1;}}}}s:38:\"MODX\\Revolution\\modAccessResourceGroup\";a:0:{}s:33:\"MODX\\Revolution\\modAccessCategory\";a:0:{}s:44:\"MODX\\Revolution\\Sources\\modAccessMediaSource\";a:0:{}s:34:\"MODX\\Revolution\\modAccessNamespace\";a:0:{}}}'),
('mv8au3ih10rg92ahm37h8htv6g', 1763121201, 'modx.user.contextTokens|a:1:{s:3:\"mgr\";i:1;}manager_language|s:2:\"en\";modx.user.0.resourceGroups|a:1:{s:3:\"mgr\";a:0:{}}modx.user.0.attributes|a:1:{s:3:\"mgr\";a:5:{s:32:\"MODX\\Revolution\\modAccessContext\";a:1:{s:3:\"web\";a:1:{i:0;a:3:{s:9:\"principal\";i:0;s:9:\"authority\";i:0;s:6:\"policy\";a:1:{s:4:\"load\";b:1;}}}}s:38:\"MODX\\Revolution\\modAccessResourceGroup\";a:0:{}s:33:\"MODX\\Revolution\\modAccessCategory\";a:0:{}s:44:\"MODX\\Revolution\\Sources\\modAccessMediaSource\";a:0:{}s:34:\"MODX\\Revolution\\modAccessNamespace\";a:0:{}}}login_failed|i:4;modx.mgr.user.token|s:52:\"modx69141fac9d9bb1.11208762_16916a5315961f1.69728090\";modx.mgr.session.cookie.lifetime|i:0;modx.mgr.user.config|a:0:{}newResourceTokens|a:12:{i:0;s:23:\"6916a647485234.38477174\";i:1;s:23:\"6916a7e30191a1.54446869\";i:2;s:23:\"6916a8df1c0579.63508632\";i:3;s:23:\"6916afb61d5c23.81779454\";i:4;s:23:\"6916b0afbde417.17601994\";i:5;s:23:\"6916e92a9233a8.29394622\";i:6;s:23:\"6916ed38ec06e3.67365553\";i:7;s:23:\"6916f34c8d3a72.94959589\";i:8;s:23:\"6916fdd58df514.00054883\";i:9;s:23:\"69170da2013224.94845097\";i:10;s:23:\"69171620aee753.50182245\";i:11;s:23:\"691718312620f6.79699116\";}searchData|a:7:{s:6:\"pickup\";s:23:\"Wellampitiya, Sri Lanka\";s:7:\"dropoff\";s:22:\"Eheliyagoda, Sri Lanka\";s:4:\"date\";s:16:\"2025-12-01T16:06\";s:12:\"returnPickup\";s:52:\"Fairway Colombo, Hospital Street, Colombo, Sri Lanka\";s:13:\"returnDropoff\";s:48:\"Rajagiriya, Sri Jayawardenepura Kotte, Sri Lanka\";s:10:\"returnDate\";s:16:\"2025-12-03T16:06\";s:11:\"isRoundtrip\";i:0;}'),
('nkn4b98th44apok182ebuo083o', 1762949467, 'modx.user.contextTokens|a:1:{s:3:\"mgr\";i:1;}manager_language|s:2:\"en\";modx.user.0.resourceGroups|a:1:{s:3:\"mgr\";a:0:{}}modx.user.0.attributes|a:1:{s:3:\"mgr\";a:5:{s:32:\"MODX\\Revolution\\modAccessContext\";a:1:{s:3:\"web\";a:1:{i:0;a:3:{s:9:\"principal\";i:0;s:9:\"authority\";i:0;s:6:\"policy\";a:1:{s:4:\"load\";b:1;}}}}s:38:\"MODX\\Revolution\\modAccessResourceGroup\";a:0:{}s:33:\"MODX\\Revolution\\modAccessCategory\";a:0:{}s:44:\"MODX\\Revolution\\Sources\\modAccessMediaSource\";a:0:{}s:34:\"MODX\\Revolution\\modAccessNamespace\";a:0:{}}}modx.mgr.user.token|s:52:\"modx69141fac9d9bb1.11208762_169142005803441.23852781\";modx.mgr.session.cookie.lifetime|i:0;modx.mgr.user.config|a:0:{}newResourceTokens|a:17:{i:0;s:23:\"6914201598fc58.44482064\";i:1;s:23:\"69142210a88709.42238288\";i:2;s:23:\"69142269c692b2.85897465\";i:3;s:23:\"6914226fda1811.87176712\";i:4;s:23:\"69142439a583d0.98238465\";i:5;s:23:\"691425156d0512.33852078\";i:6;s:23:\"6914254d88dbe7.85696115\";i:7;s:23:\"691425f5630c36.69234803\";i:8;s:23:\"691426be2540e2.99046041\";i:9;s:23:\"69142829e4e389.45607207\";i:10;s:23:\"69142bdf454d26.11580747\";i:11;s:23:\"69142d4d155979.57337455\";i:12;s:23:\"69142eff689385.79448359\";i:13;s:23:\"69143a1a5589a2.09629508\";i:14;s:23:\"69143b6008bf51.18944766\";i:15;s:23:\"6914585acdcb94.36768118\";i:16;s:23:\"6914795b2cdcd0.35597438\";}'),
('pk4tvk284d653v65f6qe0ij102', 1763377139, 'modx.user.0.resourceGroups|a:1:{s:3:\"mgr\";a:0:{}}modx.user.0.attributes|a:1:{s:3:\"mgr\";a:5:{s:32:\"MODX\\Revolution\\modAccessContext\";a:1:{s:3:\"web\";a:1:{i:0;a:3:{s:9:\"principal\";i:0;s:9:\"authority\";i:0;s:6:\"policy\";a:1:{s:4:\"load\";b:1;}}}}s:38:\"MODX\\Revolution\\modAccessResourceGroup\";a:0:{}s:33:\"MODX\\Revolution\\modAccessCategory\";a:0:{}s:44:\"MODX\\Revolution\\Sources\\modAccessMediaSource\";a:0:{}s:34:\"MODX\\Revolution\\modAccessNamespace\";a:0:{}}}modx.user.contextTokens|a:1:{s:3:\"mgr\";i:1;}manager_language|s:2:\"en\";modx.mgr.user.token|s:52:\"modx69141fac9d9bb1.11208762_1691a9a89db1ba3.82830476\";modx.mgr.session.cookie.lifetime|i:0;modx.mgr.user.config|a:0:{}newResourceTokens|a:23:{i:0;s:23:\"691a9b5523b2c1.51314583\";i:1;s:23:\"691aa97054b904.53366653\";i:2;s:23:\"691aaabbe0c868.06241140\";i:3;s:23:\"691aab56e06f04.25041716\";i:4;s:23:\"691aac2b392b39.20877384\";i:5;s:23:\"691ab0878a9eb8.64323335\";i:6;s:23:\"691ab11d281f12.82662578\";i:7;s:23:\"691aba15d2c8c2.26499846\";i:8;s:23:\"691abeb6238363.04543471\";i:9;s:23:\"691ac15a3f5899.99310712\";i:10;s:23:\"691ac84fd5fd14.56508219\";i:11;s:23:\"691acab85a0f17.20566493\";i:12;s:23:\"691acc149461f2.73601212\";i:13;s:23:\"691af0f00187b6.97689778\";i:14;s:23:\"691af174657605.94124411\";i:15;s:23:\"691af511269846.10357744\";i:16;s:23:\"691afe9560fe42.29166240\";i:17;s:23:\"691aff03cd9af4.57868182\";i:18;s:23:\"691aff2ee1c3f1.20221187\";i:19;s:23:\"691aff30ddd803.39110514\";i:20;s:23:\"691aff41e86258.94688339\";i:21;s:23:\"691affba15e151.40077414\";i:22;s:23:\"691afff2ede977.83835252\";}'),
('ps5jb5is9etr3866f3uu94rqlv', 1763114918, 'modx.user.contextTokens|a:0:{}manager_language|s:2:\"en\";modx.user.0.resourceGroups|a:1:{s:3:\"mgr\";a:0:{}}modx.user.0.attributes|a:1:{s:3:\"mgr\";a:5:{s:32:\"MODX\\Revolution\\modAccessContext\";a:1:{s:3:\"web\";a:1:{i:0;a:3:{s:9:\"principal\";i:0;s:9:\"authority\";i:0;s:6:\"policy\";a:1:{s:4:\"load\";b:1;}}}}s:38:\"MODX\\Revolution\\modAccessResourceGroup\";a:0:{}s:33:\"MODX\\Revolution\\modAccessCategory\";a:0:{}s:44:\"MODX\\Revolution\\Sources\\modAccessMediaSource\";a:0:{}s:34:\"MODX\\Revolution\\modAccessNamespace\";a:0:{}}}');

-- --------------------------------------------------------

--
-- Table structure for table `modx_site_content`
--

CREATE TABLE `modx_site_content` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(20) NOT NULL DEFAULT 'document',
  `pagetitle` varchar(191) NOT NULL DEFAULT '',
  `longtitle` varchar(191) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `alias` varchar(191) DEFAULT '',
  `link_attributes` varchar(255) NOT NULL DEFAULT '',
  `published` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `pub_date` int(20) NOT NULL DEFAULT 0,
  `unpub_date` int(20) NOT NULL DEFAULT 0,
  `parent` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `isfolder` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `introtext` text DEFAULT NULL,
  `content` mediumtext DEFAULT NULL,
  `richtext` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  `template` int(10) NOT NULL DEFAULT 0,
  `menuindex` int(10) NOT NULL DEFAULT 0,
  `searchable` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  `cacheable` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  `createdby` int(10) NOT NULL DEFAULT 0,
  `createdon` int(20) NOT NULL DEFAULT 0,
  `editedby` int(10) NOT NULL DEFAULT 0,
  `editedon` int(20) NOT NULL DEFAULT 0,
  `deleted` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `deletedon` int(20) NOT NULL DEFAULT 0,
  `deletedby` int(10) NOT NULL DEFAULT 0,
  `publishedon` int(20) NOT NULL DEFAULT 0,
  `publishedby` int(10) NOT NULL DEFAULT 0,
  `menutitle` varchar(255) NOT NULL DEFAULT '',
  `content_dispo` tinyint(1) NOT NULL DEFAULT 0,
  `hidemenu` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `class_key` varchar(100) NOT NULL DEFAULT 'MODX\\Revolution\\modDocument',
  `context_key` varchar(100) NOT NULL DEFAULT 'web',
  `content_type` int(11) UNSIGNED NOT NULL DEFAULT 1,
  `uri` text DEFAULT NULL,
  `uri_override` tinyint(1) NOT NULL DEFAULT 0,
  `hide_children_in_tree` tinyint(1) NOT NULL DEFAULT 0,
  `show_in_tree` tinyint(1) NOT NULL DEFAULT 1,
  `properties` mediumtext DEFAULT NULL,
  `alias_visible` tinyint(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `modx_site_content`
--

INSERT INTO `modx_site_content` (`id`, `type`, `pagetitle`, `longtitle`, `description`, `alias`, `link_attributes`, `published`, `pub_date`, `unpub_date`, `parent`, `isfolder`, `introtext`, `content`, `richtext`, `template`, `menuindex`, `searchable`, `cacheable`, `createdby`, `createdon`, `editedby`, `editedon`, `deleted`, `deletedon`, `deletedby`, `publishedon`, `publishedby`, `menutitle`, `content_dispo`, `hidemenu`, `class_key`, `context_key`, `content_type`, `uri`, `uri_override`, `hide_children_in_tree`, `show_in_tree`, `properties`, `alias_visible`) VALUES
(1, 'document', 'Home', 'Congratulations!', '', 'index', '', 1, 0, 0, 0, 0, '', '<body class=\"index-page\">\r\n\r\n  <main class=\"main\">\r\n\r\n    <!-- Travel Hero Section -->\r\n    <section id=\"travel-hero\" class=\"travel-hero section dark-background\">\r\n        <div class=\"hero-background\">\r\n            <video autoplay=\"\" muted=\"\" loop=\"\">\r\n                <source src=\"assets/video/preview.mp4\" type=\"video/mp4\">\r\n            </video>\r\n            <div class=\"hero-overlay\"></div>\r\n        </div>\r\n\r\n        <div class=\"container position-relative\" style=\"bottom: 20%;\">\r\n            <div class=\"row\">\r\n                <div class=\"col-lg-7 col-xl-5\">\r\n                    <div class=\"booking-form-wrapper\" data-aos=\"fade-left\" data-aos-delay=\"200\">\r\n                        <div class=\"booking-form\">\r\n                            <h3 class=\"form-title\">Schedule Your Ride</h3>\r\n                            <form action=\"[[~7]]\" method=\"post\">\r\n                                <!-- Pickup / Drop-off Row -->\r\n                                <div class=\"row g-2 align-items-center\">\r\n                                    <div class=\"col-md-6\">\r\n                                    <div class=\"form-group mb-3\">\r\n                                        <input type=\"text\" name=\"pickupLocation\" id=\"pickupLocation\" class=\"form-control\" placeholder=\"Arrival airport\" required>\r\n                                    </div>\r\n                                    </div>\r\n\r\n                                    <div class=\"col-md-6\">\r\n                                    <div class=\"form-group mb-3\">\r\n                                        <input type=\"text\" name=\"dropoffLocation\" id=\"dropoffLocation\" class=\"form-control\" placeholder=\"Going to\" required>\r\n                                    </div>\r\n                                    </div>\r\n                                </div>\r\n\r\n                                <!-- Departure Date & Roundtrip Checkbox -->\r\n                                <div class=\"row g-2 align-items-center mb-3\">\r\n                                    <div class=\"col-md-6\">\r\n                                    <div class=\"form-group mb-3\">\r\n                                        <input type=\"datetime-local\" name=\"date\" id=\"date\" class=\"form-control\" required>\r\n                                    </div>\r\n                                    </div>\r\n                                    <div class=\"col-md-6 d-flex align-items-center justify-content-center\">\r\n                                    <div class=\"form-check\">\r\n                                        <input type=\"checkbox\" class=\"form-check-input\" id=\"roundtripCheck\">\r\n                                        <label class=\"form-check-label\" for=\"roundtripCheck\">Roundtrip</label>\r\n                                    </div>\r\n                                    </div>\r\n                                </div>\r\n\r\n                                <!-- Return Trip Fields (hidden by default) -->\r\n                                <div id=\"returnDetails\" style=\"display:none;\">\r\n                                    <div class=\"row g-2 align-items-center\">\r\n                                        <div class=\"col-md-6\">\r\n                                            <div class=\"form-group mb-3\">\r\n                                            <input type=\"text\" name=\"returnPickup\" id=\"returnPickup\" class=\"form-control\" placeholder=\"Return Pickup Location\">\r\n                                            </div>\r\n                                        </div>\r\n\r\n                                        <div class=\"col-md-6\">\r\n                                            <div class=\"form-group mb-3\">\r\n                                            <input type=\"text\" name=\"returnDropoff\" id=\"returnDropoff\" class=\"form-control\" placeholder=\"Return Drop-off Location\">\r\n                                            </div>\r\n                                        </div>\r\n                                    </div>\r\n\r\n                                        <div class=\"form-group mb-3\">\r\n                                        <input type=\"datetime-local\" name=\"returnDate\" id=\"returnDate\" class=\"form-control\">\r\n                                    </div>\r\n                                </div>\r\n\r\n                                <button type=\"submit\" class=\"btn btn-primary w-100\">Find Your Transfer</button>\r\n                            </form>\r\n\r\n                            <!-- Google Maps Autocomplete + Roundtrip -->\r\n                            <script>\r\n                            const pickupInput = document.getElementById(\'pickupLocation\');\r\n                            const dropoffInput = document.getElementById(\'dropoffLocation\');\r\n                            const returnPickup = document.getElementById(\'returnPickup\');\r\n                            const returnDropoff = document.getElementById(\'returnDropoff\');\r\n                            const roundtripCheck = document.getElementById(\'roundtripCheck\');\r\n                            const returnDetails = document.getElementById(\'returnDetails\');\r\n\r\n                            // Show/hide return details\r\n                            roundtripCheck.addEventListener(\'change\', () => {\r\n                                returnDetails.style.display = roundtripCheck.checked ? \'block\' : \'none\';\r\n                            });\r\n\r\n                            function initAutocomplete() {\r\n                                const options = { componentRestrictions: { country: \'lk\' } };\r\n                                new google.maps.places.Autocomplete(pickupInput, options);\r\n                                new google.maps.places.Autocomplete(dropoffInput, options);\r\n\r\n                                if(returnPickup) new google.maps.places.Autocomplete(returnPickup, options);\r\n                                if(returnDropoff) new google.maps.places.Autocomplete(returnDropoff, options);\r\n                            }\r\n\r\n                            window.initAutocomplete = initAutocomplete;\r\n                            </script>\r\n\r\n                            <script src=\"https://maps.googleapis.com/maps/api/js?key=AIzaSyAHmbwBrk0OKY0Nhp9FrR_zn8HKLGZ54OU&libraries=places&callback=initAutocomplete\" async defer></script>\r\n                        </div>\r\n                    </div>\r\n                </div>\r\n            </div>\r\n        </div>\r\n    </section>\r\n    <!-- Travel Hero Section -->\r\n\r\n\r\n    <!-- Why Us Section -->\r\n    <section id=\"why-us\" class=\"why-us section\">\r\n      <div class=\"container\" data-aos=\"fade-up\" data-aos-delay=\"100\">\r\n\r\n        <!-- About Us Content -->\r\n        <div id=\"contentImageSlider\" class=\"carousel slide\" data-bs-ride=\"carousel\">\r\n\r\n          <div class=\"carousel-inner\">\r\n\r\n            <!-- SLIDE 1 -->\r\n            <div class=\"carousel-item active\">\r\n              <div class=\"row align-items-center mb-5\">\r\n                \r\n                <!-- CONTENT -->\r\n                <div class=\"col-lg-6\" data-aos=\"fade-right\" data-aos-delay=\"200\">\r\n                  <div class=\"content\">\r\n                    <h3>Explore the World with Confidence</h3>\r\n                    <p class=\"mb-0\">Enjoy hassle-free airport transfers with reliable, comfortable, and punctual service every time.</p>\r\n                    <p>Whether you\'re arriving or departing, we ensure a smooth, safe, and stress-free journey to your destination.</p>\r\n                    <ul class=\"list-unstyled custom-list\">\r\n                      <li><i class=\"bi bi-check-circle-fill\"></i> Professional and Experienced Drivers</li>\r\n                      <li><i class=\"bi bi-check-circle-fill\"></i> Wide Range of Well-Maintained Vehicles</li>\r\n                      <li><i class=\"bi bi-check-circle-fill\"></i> 24/7 Customer Support</li>\r\n                    </ul>\r\n                  </div>\r\n                </div>\r\n\r\n                <!-- IMAGE -->\r\n                <div class=\"col-lg-6\" data-aos=\"fade-left\" data-aos-delay=\"300\">\r\n                  <div class=\"about-image position-relative\">\r\n                    <img class=\"intro\" src=\"assets/img/intro/1.jpg\"  alt=\"\">\r\n                    <div class=\"experience-badge\">\r\n                      <div class=\"experience-number\">15+</div>\r\n                      <div class=\"experience-text\">Years of Excellence</div>\r\n                    </div>\r\n                  </div>\r\n                </div>\r\n\r\n              </div>\r\n            </div>\r\n            <!-- END SLIDE 1 -->\r\n\r\n\r\n            <!-- SLIDE 2 -->\r\n            <div class=\"carousel-item\">\r\n              <div class=\"row align-items-center mb-5\">\r\n\r\n                <div class=\"col-lg-6\">\r\n                  <div class=\"content\">\r\n                    <h3>Seamless Travel Solutions</h3>\r\n                    <p>Experience smooth and stress-free airport transfers with timely pickups, comfortable vehicles, and friendly service from start to finish.</p>\r\n                    <ul class=\"list-unstyled custom-list\">\r\n                      <li><i class=\"bi bi-check-circle-fill\"></i> Reliable Service</li>\r\n                      <li><i class=\"bi bi-check-circle-fill\"></i> Affordable Prices</li>\r\n                      <li><i class=\"bi bi-check-circle-fill\"></i> Islandwide Support</li>\r\n                    </ul>\r\n                  </div>\r\n                </div>\r\n\r\n                <div class=\"col-lg-6\">\r\n                  <div class=\"about-image position-relative\">\r\n                    <img class=\"intro\" src=\"assets/img/intro/2.jpg\"  alt=\"\">\r\n                  </div>\r\n                </div>\r\n\r\n              </div>\r\n            </div>\r\n            <!-- END SLIDE 2 -->\r\n\r\n\r\n            <!-- SLIDE 3 -->\r\n            <div class=\"carousel-item\">\r\n              <div class=\"row align-items-center mb-5\">\r\n\r\n                <div class=\"col-lg-6\">\r\n                  <div class=\"content\">\r\n                    <h3>Your Journey, Our Priority</h3>\r\n                    <p>We ensure every ride is safe, comfortable, and perfectly timed to match your travel needs.</p>\r\n                    <ul class=\"list-unstyled custom-list\">\r\n                      <li><i class=\"bi bi-check-circle-fill\"></i> On-time Airport Pickups & Drop-offs</li>\r\n                      <li><i class=\"bi bi-check-circle-fill\"></i> Clean, Comfortable Vehicles</li>\r\n                      <li><i class=\"bi bi-check-circle-fill\"></i> Friendly & Professional Drivers</li>\r\n                    </ul>\r\n                  </div>\r\n                </div>\r\n\r\n                <div class=\"col-lg-6\">\r\n                  <img class=\"intro\" src=\"assets/img/intro/3.jpg\"  alt=\"\">\r\n                </div>\r\n              </div>\r\n            </div>\r\n          </div>\r\n\r\n          <!-- CONTROLS -->\r\n          <button class=\"carousel-control-prev\" type=\"button\" data-bs-target=\"#contentImageSlider\" data-bs-slide=\"prev\">\r\n            <span class=\"carousel-control-prev-icon\"></span>\r\n          </button>\r\n\r\n          <button class=\"carousel-control-next\" type=\"button\" data-bs-target=\"#contentImageSlider\" data-bs-slide=\"next\">\r\n            <span class=\"carousel-control-next-icon\"></span>\r\n          </button>\r\n        </div>\r\n        <!-- End About Us Content -->\r\n\r\n        <div id=\"call-to-action\" class=\"call-to-action section light-background\" style=\"padding: 30px 0;\">\r\n          <div class=\"container\" data-aos=\"fade-up\" data-aos-delay=\"100\">\r\n            <div class=\"hero-content\" data-aos=\"zoom-in\" data-aos-delay=\"200\">\r\n               <div class=\"visual-element\">\r\n                <img src=\"assets/img/flash-deal.jpg\" alt=\"Airport Transfer Flash Deal\" class=\"hero-image\" loading=\"lazy\">\r\n                <!-- <div class=\"image-overlay\">\r\n                  <div class=\"stat-item\">\r\n                    <span class=\"stat-number\">25%</span>\r\n                    <span class=\"stat-label\">Off This Week</span>\r\n                  </div>\r\n                  <div class=\"stat-item\">\r\n                    <span class=\"stat-number\">24/7</span>\r\n                    <span class=\"stat-label\">Service Available</span>\r\n                  </div>\r\n                </div> -->\r\n              </div>\r\n              <div class=\"content-wrapper\">\r\n                <div class=\"badge-wrapper\">\r\n                  \r\n                 \r\n                  <span class=\"promo-badge\">Limited Time Offer</span>\r\n                </div>\r\n\r\n                <h4>Save Big on Airport Transfers!</h4>\r\n                <p>\r\n                  Book your ride now and enjoy exclusive discounts on airport and city transfers across Sri Lanka. \r\n                  Fast, reliable, and affordable — your next trip starts with savings!\r\n                </p>\r\n\r\n               <!-- <div class=\"action-section\">\r\n                  <div class=\"main-actions\">\r\n                     <a href=\"deals.html\" class=\"btn btn-deals\">\r\n                      <i class=\"bi bi-percent\"></i>\r\n                      View Flash Deals\r\n                    </a> \r\n                    <a href=\"[[~2]]\" class=\"btn btn-explore\">\r\n                      <i class=\"bi bi-calendar-check\"></i>\r\n                      Book Now\r\n                    </a>\r\n                  </div>\r\n\r\n                  <div class=\"quick-contact\">\r\n                    <span class=\"contact-label\">Need assistance?</span>\r\n                    <a href=\"tel:+94777786729\" class=\"contact-link\">\r\n                      <i class=\"bi bi-telephone\"></i>\r\n                      Call +94 77 778 6729\r\n                    </a>\r\n                  </div>\r\n                </div>-->\r\n              </div>\r\n\r\n             \r\n            </div>\r\n          </div>\r\n        </div>\r\n\r\n        <!-- Why Choose Us -->\r\n        <div class=\"why-choose-section\">\r\n            <div class=\"row justify-content-center\">\r\n                <div class=\"col-lg-8 text-center mb-4\" data-aos=\"fade-up\" data-aos-delay=\"100\">\r\n                    <h3>Why Choose Us</h3>\r\n                    <p>We pride ourselves on delivering reliable, comfortable, and affordable transfers across Sri Lanka. With professional drivers, well-maintained vehicles, and 24/7 customer support, we ensure your journey is smooth from start to finish.</p>\r\n                </div>\r\n            </div>\r\n\r\n            <div class=\"row g-4\">\r\n              <div class=\"col-lg-3 col-md-6\" data-aos=\"fade-up\" data-aos-delay=\"200\">\r\n                <div class=\"feature-card\">\r\n                  <div class=\"feature-icon\">\r\n                        <img src=\"assets/img/who_we/1.png\" alt=\"Safe & Reliable\" class=\"ss\">\r\n                    </div>\r\n                    <h4>Safe & Reliable</h4>\r\n                    <p>Your safety is our top priority with experienced, professional chauffeurs</p>\r\n                  </div>\r\n                </div>\r\n\r\n                <div class=\"col-lg-3 col-md-6\" data-aos=\"fade-up\" data-aos-delay=\"250\">\r\n                  <div class=\"feature-card\">\r\n                    <div class=\"feature-icon\">\r\n                        <img src=\"assets/img/who_we/2.png\" alt=\"Luxury Fleet\" class=\"ss\">\r\n                    </div>\r\n                    <h4>Luxury Fleet</h4>\r\n                    <p>Choose from our well-maintained, chauffeur-driven premium vehicles.</p>\r\n                  </div>\r\n                </div>\r\n\r\n                <div class=\"col-lg-3 col-md-6\" data-aos=\"fade-up\" data-aos-delay=\"300\">\r\n                  <div class=\"feature-card\">\r\n                    <div class=\"feature-icon\">\r\n                      <img src=\"assets/img/who_we/3.png\" alt=\"24/7 Support\" class=\"ss\">\r\n                    </div>\r\n                    <h4>24/7 Support</h4>\r\n                    <p>Our friendly team is available around the clock for any assistance.</p>\r\n                  </div>\r\n                </div>\r\n\r\n                <div class=\"col-lg-3 col-md-6\" data-aos=\"fade-up\" data-aos-delay=\"350\">\r\n                  <div class=\"feature-card\">\r\n                    <div class=\"feature-icon\">\r\n                      <img src=\"assets/img/who_we/4.png\" alt=\"Meet & Greet Service\" class=\"ss\">\r\n                    </div>\r\n                    <h4>Meet & Greet Service</h4>\r\n                    <p>Our chauffeurs will welcome you at the airport and escort you with care.</p>\r\n                  </div>\r\n                </div>\r\n            </div>\r\n          </div>\r\n        </div>\r\n    </section>\r\n    <!-- /Why Us Section -->\r\n\r\n    <!-- Gallery Slider Section -->\r\n    <section id=\"gallery-slider\" class=\"gallery-slider section pt-0\">\r\n      <div class=\"container section-title pb-3\" data-aos=\"fade-up\">\r\n        <h2>Our Fleet</h2>\r\n        <div><span>Comfortable</span> <span class=\"description-title\">Airport Transfer Rides</span></div>\r\n      </div>\r\n\r\n      <div class=\"container\" data-aos=\"fade-up\" data-aos-delay=\"100\">\r\n        <div class=\"gallery-container py-0\">\r\n          <div class=\"swiper init-swiper\">\r\n\r\n            <!-- Swiper Configuration -->\r\n            <script type=\"application/json\" class=\"swiper-config\">\r\n              {\r\n                \"loop\": true,\r\n                \"speed\": 800,\r\n                \"autoplay\": { \"delay\": 4000 },\r\n                \"effect\": \"coverflow\",\r\n                \"grabCursor\": true,\r\n                \"centeredSlides\": true,\r\n                \"slidesPerView\": \"auto\",\r\n                \"coverflowEffect\": {\r\n                  \"rotate\": 50,\r\n                  \"stretch\": 0,\r\n                  \"depth\": 100,\r\n                  \"modifier\": 1,\r\n                  \"slideShadows\": true\r\n                },\r\n                \"pagination\": {\r\n                  \"el\": \".swiper-pagination\",\r\n                  \"type\": \"bullets\",\r\n                  \"clickable\": true\r\n                },\r\n                \"navigation\": {\r\n                  \"nextEl\": \".swiper-button-next\",\r\n                  \"prevEl\": \".swiper-button-prev\"\r\n                },\r\n                \"breakpoints\": {\r\n                  \"320\": { \"slidesPerView\": 1, \"spaceBetween\": 10 },\r\n                  \"768\": { \"slidesPerView\": 2, \"spaceBetween\": 20 },\r\n                  \"1024\": { \"slidesPerView\": 3, \"spaceBetween\": 30 }\r\n                }\r\n              }\r\n            </script>\r\n\r\n\r\n            <!-- ========== SWIPER SLIDES ========== -->\r\n            <div class=\"swiper-wrapper\">\r\n\r\n              <!-- Vehicle 1 -->\r\n              <div class=\"swiper-slide\">\r\n                <div class=\"gallery-item\">\r\n                  <div class=\"gallery-img gallery-img-overlay\">\r\n                    <img src=\"assets/img/vehicles/1.png\" class=\"img-fluid\" alt=\"\">\r\n                      <div class=\"vehicle-overlay\">\r\n                        <div class=\"vehicle-info\">\r\n                          <div class=\"info-item\">• Pax : 1 Large | 2 Medium</div>\r\n                          <div class=\"info-item\">• Passengers : 3</div>\r\n                          <div class=\"info-item\">• Free Cancellation</div>\r\n                        </div>\r\n                        <button class=\"vehicle-overlay-btn\"\r\n                          data-vehicle=\'{\r\n                            \"title\":\"Luxury\",\r\n                            \"img\":\"assets/img/vehicles/1.png\",\r\n                            \"desc\":\"Perfect for business travelers and couples seeking premium comfort.\",\r\n                            \"features\":[\"Leather Seats\",\"USB Charging\",\"Complimentary Water\",\"Climate Control\"],\r\n                            \"capacity\":\"1–3 passengers\"\r\n                          }\'>\r\n                          View Details\r\n                        </button>\r\n                      </div>\r\n\r\n                  </div>\r\n                </div>\r\n              </div>\r\n\r\n              <div class=\"swiper-slide\">\r\n                <div class=\"gallery-item\">\r\n                  <div class=\"gallery-img gallery-img-overlay\">\r\n                    <img src=\"assets/img/vehicles/2.png\" class=\"img-fluid\" alt=\"\">\r\n                    <div class=\"vehicle-overlay\">\r\n                        <div class=\"vehicle-info\">\r\n                          <div class=\"info-item\">• Pax : 1 Large | 2 Medium</div>\r\n                          <div class=\"info-item\">• Passengers : 3</div>\r\n                          <div class=\"info-item\">• Free Cancellation</div>\r\n                        </div>                      \r\n                        <button class=\"vehicle-overlay-btn\"\r\n                        data-vehicle=\'{\r\n                          \"title\":\"Standard\",\r\n                          \"img\":\"assets/img/vehicles/2.png\",\r\n                          \"desc\":\"Ideal for families and groups needing space and luxury.\",\r\n                          \"features\":[\"Premium Leather\",\"Rear AC\",\"Spacious Seats\",\"All-Terrain Safety\"],\r\n                          \"capacity\":\"1–3 passengers\"\r\n                        }\'>\r\n                        View Details\r\n                      </button>\r\n                    </div>\r\n                  </div>\r\n                </div>\r\n              </div>\r\n\r\n              <div class=\"swiper-slide\">\r\n                <div class=\"gallery-item\">\r\n                  <div class=\"gallery-img gallery-img-overlay\">\r\n                    <img src=\"assets/img/vehicles/3.png\" class=\"img-fluid\" alt=\"\">\r\n                    <div class=\"vehicle-overlay\">\r\n                        <div class=\"vehicle-info\">\r\n                          <div class=\"info-item\">• Pax : 1 Large | 2 Medium</div>\r\n                          <div class=\"info-item\">• Passengers : 45</div>\r\n                          <div class=\"info-item\">• Free Cancellation</div>\r\n                        </div>                      \r\n                        <button class=\"vehicle-overlay-btn\"\r\n                        data-vehicle=\'{\r\n                          \"title\":\"Super Luxury Coach\",\r\n                          \"img\":\"assets/img/vehicles/3.png\",\r\n                          \"desc\":\"Perfect for corporate travel with extra luggage capacity.\",\r\n                          \"features\":[\"Conference Seating\",\"Tinted Windows\",\"USB Ports\",\"Large Trunk\"],\r\n                          \"capacity\":\"45 passengers\"\r\n                        }\'>\r\n                        View Details\r\n                      </button>\r\n                    </div>\r\n                  </div>\r\n                </div>\r\n              </div>\r\n\r\n              <div class=\"swiper-slide\">\r\n                <div class=\"gallery-item\">\r\n                  <div class=\"gallery-img gallery-img-overlay\">\r\n                    <img src=\"assets/img/vehicles/4.png\" class=\"img-fluid\" alt=\"\">\r\n                    <div class=\"vehicle-overlay\">\r\n                        <div class=\"vehicle-info\">\r\n                          <div class=\"info-item\">• Pax : 1 Large | 2 Medium</div>\r\n                          <div class=\"info-item\">• Passengers : 2</div>\r\n                          <div class=\"info-item\">• Free Cancellation</div>\r\n                        </div>                      \r\n                        <button class=\"vehicle-overlay-btn\"\r\n                        data-vehicle=\'{\r\n                          \"title\":\"Executive\",\r\n                          \"img\":\"assets/img/vehicles/4.png\",\r\n                          \"desc\":\"A reliable and comfortable option for group airport transfers.\",\r\n                          \"features\":[\"High Roof\",\"AC\",\"Large Seats\",\"Smooth Ride\"],\r\n                          \"capacity\":\"1–2 passengers\"\r\n                        }\'>\r\n                        View Details\r\n                      </button>\r\n                    </div>\r\n                  </div>\r\n                </div>\r\n              </div>\r\n\r\n              <div class=\"swiper-slide\">\r\n                <div class=\"gallery-item\">\r\n                  <div class=\"gallery-img gallery-img-overlay\">\r\n                    <img src=\"assets/img/vehicles/5.png\" class=\"img-fluid\" alt=\"\">\r\n                    <div class=\"vehicle-overlay\">\r\n                        <div class=\"vehicle-info\">\r\n                          <div class=\"info-item\">• Pax : 1 Large | 2 Medium</div>\r\n                          <div class=\"info-item\">• Passengers : 6</div>\r\n                          <div class=\"info-item\">• Free Cancellation</div>\r\n                        </div>                      \r\n                        <button class=\"vehicle-overlay-btn\"\r\n                        data-vehicle=\'{\r\n                          \"title\":\"People Carrier\",\r\n                          \"img\":\"assets/img/vehicles/5.png\",\r\n                          \"desc\":\"A reliable and comfortable option for group airport transfers.\",\r\n                          \"features\":[\"High Roof\",\"AC\",\"Large Seats\",\"Smooth Ride\"],\r\n                          \"capacity\":\"1–2 passengers\"\r\n                        }\'>\r\n                        View Details\r\n                      </button>\r\n                    </div>\r\n                  </div>\r\n                </div>\r\n              </div>\r\n\r\n              <div class=\"swiper-slide\">\r\n                <div class=\"gallery-item\">\r\n                  <div class=\"gallery-img gallery-img-overlay\">\r\n                    <img src=\"assets/img/vehicles/6.png\" class=\"img-fluid\" alt=\"\">\r\n                    <div class=\"vehicle-overlay\">\r\n                        <div class=\"vehicle-info\">\r\n                          <div class=\"info-item\">• Pax : 1 Large | 2 Medium</div>\r\n                          <div class=\"info-item\">• Passengers : 6</div>\r\n                          <div class=\"info-item\">• Free Cancellation</div>\r\n                        </div>                      \r\n                        <button class=\"vehicle-overlay-btn\"\r\n                        data-vehicle=\'{\r\n                          \"title\":\"Large People Carrier\",\r\n                          \"img\":\"assets/img/vehicles/6.png\",\r\n                          \"desc\":\"A reliable and comfortable option for group airport transfers.\",\r\n                          \"features\":[\"High Roof\",\"AC\",\"Large Seats\",\"Smooth Ride\"],\r\n                          \"capacity\":\"1-6 passengers\"\r\n                        }\'>\r\n                        View Details\r\n                      </button>\r\n                    </div>\r\n                  </div>\r\n                </div>\r\n              </div>\r\n\r\n              <div class=\"swiper-slide\">\r\n                <div class=\"gallery-item\">\r\n                  <div class=\"gallery-img gallery-img-overlay\">\r\n                    <img src=\"assets/img/vehicles/7.png\" class=\"img-fluid\" alt=\"\">\r\n                    <div class=\"vehicle-overlay\">\r\n                        <div class=\"vehicle-info\">\r\n                          <div class=\"info-item\">• Pax : 1 Large | 2 Medium</div>\r\n                          <div class=\"info-item\">• Passengers : 12</div>\r\n                          <div class=\"info-item\">• Free Cancellation</div>\r\n                        </div>                      \r\n                        <button class=\"vehicle-overlay-btn\"\r\n                        data-vehicle=\'{\r\n                          \"title\":\"Mini Bus\",\r\n                          \"img\":\"assets/img/vehicles/7.png\",\r\n                          \"desc\":\"A reliable and comfortable option for group airport transfers.\",\r\n                          \"features\":[\"High Roof\",\"AC\",\"Large Seats\",\"Smooth Ride\"],\r\n                          \"capacity\":\"1-12 passengers\"\r\n                        }\'>\r\n                        View Details\r\n                      </button>\r\n                    </div>\r\n                  </div>\r\n                </div>\r\n              </div>\r\n            </div>\r\n            <div class=\"swiper-pagination\"></div>\r\n            <div class=\"swiper-button-next\"></div>\r\n            <div class=\"swiper-button-prev\"></div>\r\n          </div>\r\n        </div>\r\n      </div>\r\n    </section>\r\n\r\n    <style>\r\n\r\n      /* Container for bullet-style vehicle info */\r\n.vehicle-info {\r\n  position: absolute;\r\n  background: rgb(0 0 0 / 45%);\r\n  padding: 12px 18px;\r\n  border-radius: 10px;\r\n  width: 100%;\r\n  text-align: left;\r\n  color: #fff;\r\n  opacity: 0;\r\n  transform: translateY(10px);\r\n  transition: 0.35s ease;\r\n  display: flex;\r\n  flex-direction: column;\r\n  gap: 6px;\r\n  font-size: 14px;\r\n  z-index: 3;\r\n}\r\n\r\n/* Show info panel on hover */\r\n.gallery-img-overlay:hover .vehicle-info {\r\n  opacity: 1;\r\n  transform: translateY(0px);\r\n}\r\n\r\n/* Bullet item styling */\r\n.info-item {\r\n  display: flex;\r\n  align-items: center;\r\n  gap: 6px;\r\n  font-weight: 500;\r\n}\r\n\r\n      /* Image zoom on hover */\r\n      .gallery-img-overlay:hover img {\r\n        transform: scale(1.05);\r\n        opacity: 1;\r\n      }\r\n\r\n      /* Move button upward on hover */\r\n      .gallery-img-overlay:hover .vehicle-overlay-btn {\r\n        transform: translateY(-100px);\r\n      }\r\n\r\n      /* Passenger count badge */\r\n      .passenger-count, .cancellation, .suitcases {\r\n        position: absolute;\r\n        bottom: 0;\r\n        background: rgba(0, 0, 0, 1);\r\n        color: #fff;\r\n        padding: 6px 14px;\r\n        border-radius: 6px;\r\n        font-size: 14px;\r\n        font-weight: 600;\r\n        opacity: 0;\r\n        transform: translateY(10px);\r\n        transition: 0.3s ease;\r\n      }\r\n\r\n      /* Show on hover */\r\n      .gallery-img-overlay:hover .passenger-count, .cancellation, .suitcases {\r\n        opacity: 1;\r\n        transform: translateY(0px);\r\n      }\r\n\r\n      /* Button default state */\r\n      .vehicle-overlay-btn {\r\n        padding: 10px 22px;\r\n        background: #ffffff38;\r\n        color: #fff;\r\n        border: none;\r\n        font-size: 16px;\r\n        border-radius: 8px;\r\n        font-weight: 600;\r\n        cursor: pointer;\r\n        box-shadow: 0 4px 15px rgba(0,0,0,0.3);\r\n        transition: 0.3s ease;\r\n        width: 100%;\r\n        position: relative;\r\n        z-index: 2;\r\n      }\r\n\r\n      /* Passenger count appears above the button */\r\n      .vehicle-overlay {\r\n        position: absolute;\r\n        inset: 0;\r\n        display: flex;\r\n        flex-direction: column;\r\n        justify-content: end;\r\n        align-items: center;\r\n      }\r\n\r\n      </style>\r\n\r\n    <div class=\"modal fade\" id=\"vehicleModal\" tabindex=\"-1\">\r\n      <div class=\"modal-dialog modal-lg modal-dialog-centered\">\r\n        <div class=\"modal-content\">\r\n\r\n          <div class=\"modal-header\">\r\n            <h5 class=\"modal-title\" id=\"vehicleTitle\"></h5>\r\n            <button type=\"button\" class=\"btn-close\" data-bs-dismiss=\"modal\"></button>\r\n          </div>\r\n\r\n          <div class=\"modal-body\">\r\n            <img id=\"vehicleImg\" class=\"modal-vehicle-img mb-3\">\r\n            <p id=\"vehicleDesc\"></p>\r\n\r\n            <h6 class=\"mt-3\">Features:</h6>\r\n            <ul id=\"vehicleFeatures\"></ul>\r\n\r\n            <p class=\"mt-2 mb-0\"><strong>Capacity: </strong><span id=\"vehicleCapacity\"></span></p>\r\n          </div>\r\n\r\n          <div class=\"modal-footer\">\r\n            <button class=\"btn btn-secondary\" data-bs-dismiss=\"modal\">Close</button>\r\n            <a href=\"[[~7]]\" class=\"btn btn-primary\">Book Now</a>\r\n          </div>\r\n        </div>\r\n      </div>\r\n    </div>\r\n\r\n    <script>\r\n      document.querySelectorAll(\".vehicle-overlay-btn\").forEach(btn => {\r\n        btn.addEventListener(\"click\", () => {\r\n          const v = JSON.parse(btn.getAttribute(\"data-vehicle\"));\r\n\r\n          document.getElementById(\"vehicleTitle\").innerText = v.title;\r\n          document.getElementById(\"vehicleImg\").src = v.img;\r\n          document.getElementById(\"vehicleDesc\").innerText = v.desc;\r\n\r\n          const list = document.getElementById(\"vehicleFeatures\");\r\n          list.innerHTML = \"\";\r\n          v.features.forEach(f => {\r\n            list.innerHTML += `<li class=\"vehicle-feature\">${f}</li>`;\r\n          });\r\n\r\n          document.getElementById(\"vehicleCapacity\").innerText = v.capacity;\r\n\r\n          new bootstrap.Modal(document.getElementById(\"vehicleModal\")).show();\r\n        });\r\n      });\r\n    </script>\r\n    <!-- /Gallery Slider Section -->\r\n\r\n\r\n    <!-- Featured Destinations Section -->\r\n    <section id=\"featured-destinations\" class=\"featured-destinations section pt-3\">\r\n      <div class=\"container section-title\">\r\n        <h2>Featured Destinations</h2>\r\n        <div><span>Most Popular</span> <span class=\"description-title\">Destinations</span></div>\r\n      </div>\r\n\r\n      <div class=\"container\">\r\n        <div class=\"row\">\r\n          <div class=\"col-lg-6\">\r\n            <div class=\"featured-destination\">\r\n              <div class=\"destination-overlay\">\r\n                <img src=\"assets/img/travel/destination-3.jpg\" alt=\"Tropical Paradise\" class=\"img-fluid\">\r\n                <div class=\"destination-info\">\r\n                  <a href=\"[[~3]]\" class=\"explore-btn\">\r\n                    <span>Explore Now</span>\r\n                    <i class=\"bi bi-arrow-right\"></i>\r\n                  </a>\r\n                </div>\r\n              </div>\r\n            </div>\r\n          </div>\r\n\r\n          <div class=\"col-lg-6\">\r\n              <div class=\"row g-3\">\r\n                <div class=\"col-12\" data-aos=\"fade-left\">\r\n                  <div class=\"compact-destination\">\r\n                    <div class=\"destination-image\">\r\n                      <img src=\"assets/img/travel/destination-7.jpg\" alt=\"Mountain Adventure\" class=\"img-fluid\">\r\n                      <div class=\"badge-offer\">Most Visited</div>\r\n                    </div>\r\n                    <div class=\"destination-details\">\r\n                        <h4>Kandy</h4>\r\n                        <p class=\"location\"><i class=\"bi bi-geo-alt\"></i> Sri Lanka</p>\r\n                        <p class=\"brief\">Nestled in lush hills, Kandy enchants visitors with its sacred Temple of the Tooth, serene lakes, and timeless cultural heritage.</p>\r\n                        <a href=\"[[~3]]\" class=\"quick-link\">View Details <i class=\"bi bi-chevron-right\"></i></a>\r\n                    </div>\r\n                  </div>\r\n                </div>\r\n\r\n                <div class=\"col-12\" data-aos=\"fade-left\">\r\n                  <div class=\"compact-destination\">\r\n                    <div class=\"destination-image\">\r\n                      <img src=\"assets/img/travel/destination-11.jpg\" alt=\"Cultural Heritage\" class=\"img-fluid\">\r\n                    </div>\r\n                    <div class=\"destination-details\">\r\n                      <h4>Sigiriya</h4>\r\n                      <p class=\"location\"><i class=\"bi bi-geo-alt\"></i> Sri Lanka</p>\r\n                      <p class=\"brief\">Climb the majestic Lion Rock and explore ancient frescoes, royal gardens, and the breathtaking legacy of a lost kingdom.</p>\r\n                      <a href=\"[[~3]]\" class=\"quick-link\">View Details <i class=\"bi bi-chevron-right\"></i></a>\r\n                    </div>\r\n                  </div>\r\n                </div>\r\n\r\n                <div class=\"col-12\" data-aos=\"fade-left\">\r\n                  <div class=\"compact-destination\">\r\n                    <div class=\"destination-image\">\r\n                      <img src=\"assets/img/travel/destination-16.jpg\" alt=\"Safari Experience\" class=\"img-fluid\">\r\n                      <div class=\"badge-offer limited\">Scenic</div>\r\n                    </div>\r\n                    <div class=\"destination-details\">\r\n                      <h4>Nuwara Eliya</h4>\r\n                      <p class=\"location\"><i class=\"bi bi-geo-alt\"></i> Sri Lanka</p>\r\n                      <p class=\"brief\">Wander through lush tea plantations, misty hills, and charming colonial cottages in Sri Lanka’s “Little England.”</p>\r\n                      <a href=\"[[~3]]\" class=\"quick-link\">View Details <i class=\"bi bi-chevron-right\"></i></a>\r\n                    </div>\r\n                  </div>\r\n                </div>\r\n              </div>\r\n          </div>\r\n        </div>\r\n      </div>\r\n    </section>\r\n    <!-- /Featured Destinations Section -->\r\n\r\n\r\n    <!-- Testimonials Home Section -->\r\n    <section id=\"testimonials-home\" class=\"testimonials-home section\">\r\n      <div class=\"container section-title\" data-aos=\"fade-up\">\r\n        <h2>Testimonials</h2>\r\n        <div><span>What Customers</span> <span class=\"description-title\">Say</span></div>\r\n      </div>\r\n\r\n      <div class=\"container\" data-aos=\"fade-up\" data-aos-delay=\"100\">\r\n          <div class=\"swiper init-swiper\">\r\n            <script type=\"application/json\" class=\"swiper-config\">\r\n              {\r\n                \"loop\": true,\r\n                \"speed\": 600,\r\n                \"autoplay\": {\r\n                  \"delay\": 5000\r\n                },\r\n                \"slidesPerView\": \"auto\",\r\n                \"pagination\": {\r\n                  \"el\": \".swiper-pagination\",\r\n                  \"type\": \"bullets\",\r\n                  \"clickable\": true\r\n                },\r\n                \"breakpoints\": {\r\n                  \"320\": {\r\n                    \"slidesPerView\": 1,\r\n                    \"spaceBetween\": 40\r\n                  },\r\n                  \"1200\": {\r\n                    \"slidesPerView\": 3,\r\n                    \"spaceBetween\": 1\r\n                  }\r\n                }\r\n              }\r\n            </script>\r\n\r\n            <div class=\"swiper-wrapper\">\r\n              [[!GoogleReviews]]\r\n            </div>\r\n            <div class=\"swiper-pagination\"></div>\r\n          </div>\r\n      </div>\r\n    </section>\r\n    <!-- /Testimonials Home Section -->\r\n     \r\n  </main>\r\n\r\n</body>\r\n', 1, 2, 0, 1, 1, 1, 1762926553, 1, 1763375861, 0, 0, 0, 0, 0, '', 0, 0, 'MODX\\Revolution\\modDocument', 'web', 1, '', 0, 0, 1, NULL, 1);
INSERT INTO `modx_site_content` (`id`, `type`, `pagetitle`, `longtitle`, `description`, `alias`, `link_attributes`, `published`, `pub_date`, `unpub_date`, `parent`, `isfolder`, `introtext`, `content`, `richtext`, `template`, `menuindex`, `searchable`, `cacheable`, `createdby`, `createdon`, `editedby`, `editedon`, `deleted`, `deletedon`, `deletedby`, `publishedon`, `publishedby`, `menutitle`, `content_dispo`, `hidemenu`, `class_key`, `context_key`, `content_type`, `uri`, `uri_override`, `hide_children_in_tree`, `show_in_tree`, `properties`, `alias_visible`) VALUES
(2, 'document', 'About', '', '', 'about', '', 1, 0, 0, 0, 0, '', '<body class=\"about-page\">\r\n    <main class=\"main\">\r\n        <div class=\"page-title dark-background\" data-aos=\"fade\" style=\"background-image: url(assets/img/travel/showcase-1.png);\">\r\n            <div class=\"container position-relative\">\r\n                <h1>About Us</h1>\r\n                <p>SR Transfers delivers reliable and affordable airport and city transfers across Sri Lanka — with modern vehicles, skilled drivers, and a focus on comfort and safety.</p>\r\n                <nav class=\"breadcrumbs\">\r\n                    <ol>\r\n                        <li><a href=\"[[~1]]\">Home</a></li>\r\n                        <li class=\"current\">About</li>\r\n                    </ol>\r\n                </nav>\r\n            </div>\r\n        </div>\r\n\r\n        <!-- Travel About Section -->\r\n        <section id=\"travel-about\" class=\"travel-about section\">\r\n            <div class=\"container\" data-aos=\"fade-up\" data-aos-delay=\"100\">\r\n                <div class=\"row\">\r\n                    <div class=\"col-lg-8 mx-auto text-center mb-3\">\r\n                        <div class=\"intro-content\" data-aos=\"fade-up\" data-aos-delay=\"200\">\r\n                            <h2>Seamless Airport Transfers,<br>Every Time You Travel</h2>\r\n                            <p class=\"lead\">Dedicated to providing reliable and comfortable airport transfers, we ensure your journey starts and ends smoothly, whether for business or leisure.</p>\r\n                        </div>\r\n                    </div>\r\n                </div>\r\n\r\n                <div class=\"row align-items-center mb-5\">\r\n                    <div class=\"col-lg-5\" data-aos=\"zoom-in\" data-aos-delay=\"100\">\r\n                        <div class=\"hero-image\">\r\n                            <img src=\"assets/img/travel/showcase-7.webp\" class=\"img-fluid\" alt=\"Travel Adventure\">\r\n                            <div class=\"floating-stats\">\r\n                                <div class=\"stat-item\">\r\n                                    <span class=\"number\">50+</span>\r\n                                    <span class=\"label\">Transfers</span>\r\n                                </div>\r\n                                <div class=\"stat-item\">\r\n                                    <span class=\"number\">15K</span>\r\n                                    <span class=\"label\">Happy Travelers</span>\r\n                                </div>\r\n                            </div>\r\n                        </div>\r\n                    </div>\r\n\r\n                    <div class=\"col-lg-6 offset-lg-1\" data-aos=\"slide-left\" data-aos-delay=\"400\">\r\n                        <div class=\"story-content mt-2\">\r\n                            <div class=\"story-badge\">\r\n                                <i class=\"bi bi-compass\"></i>\r\n                                <span>Our Story</span>\r\n                            </div>\r\n                            <h3 class=\"about-title\">Where Reliability Meets Comfort</h3>\r\n                            <p>What began as a small shuttle service for local travelers has grown into a trusted network of airport transfer specialists. We focus on ensuring every passenger enjoys a smooth, punctual, and stress-free journey from door to terminal and back.</p>\r\n                            <p>Our team of professional drivers and logistics experts work tirelessly to provide safe, comfortable, and timely transfers, whether you\'re traveling for business or leisure. We take pride in exceeding expectations and making every ride seamless.</p>\r\n\r\n                            <div class=\"mission-box\">\r\n                                <div class=\"mission-icon\">\r\n                                    <i class=\"bi bi-globe-americas\"></i>\r\n                                </div>\r\n                                <div class=\"mission-text\">\r\n                                    <h4>Our Vision</h4>\r\n                                    <p>\"To redefine airport transfers by combining comfort, reliability, and exceptional service for every traveler.\"</p>\r\n                                </div>\r\n                            </div>\r\n                        </div>\r\n                    </div>\r\n                </div>\r\n\r\n                <div class=\"row\">\r\n                    <div class=\"col-lg-12\">\r\n                        <div class=\"mt-4 features-grid\" data-aos=\"fade-up\" data-aos-delay=\"200\">\r\n                            <div class=\"section-header text-center mb-5\">\r\n                                <h3 class=\"about-title\">What Makes Us Different</h3>\r\n                                <p>Six pillars that define every adventure we create</p>\r\n                            </div>\r\n\r\n                            <div class=\"row g-4\">\r\n                                <div class=\"col-lg-4 col-md-6\" data-aos=\"fade-up\" data-aos-delay=\"300\">\r\n                                    <div class=\"feature-card\">\r\n                                        <div class=\"feature-front\">\r\n                                            <div class=\"feature-icon\">\r\n                                                <i class=\"bi bi-people\"></i>\r\n                                            </div>\r\n                                            <h4>Professional Drivers</h4>\r\n                                            <p>Trained, licensed, and courteous drivers</p>\r\n                                        </div>\r\n                                        <div class=\"feature-back\">\r\n                                            <p>Our drivers are fully trained and background-checked, ensuring a safe, punctual, and comfortable ride every time you travel to or from the airport.</p>\r\n                                        </div>\r\n                                    </div>\r\n                                </div>\r\n\r\n                                <div class=\"col-lg-4 col-md-6\" data-aos=\"fade-up\" data-aos-delay=\"400\">\r\n                                    <div class=\"feature-card\">\r\n                                        <div class=\"feature-front\">\r\n                                            <div class=\"feature-icon\">\r\n                                                <i class=\"bi bi-heart-pulse\"></i>\r\n                                            </div>\r\n                                            <h4>Safety First</h4>\r\n                                            <p>Rigorous safety protocols on every ride</p>\r\n                                        </div>\r\n                                        <div class=\"feature-back\">\r\n                                            <p>From vehicle maintenance to real-time monitoring and emergency support, your safety and peace of mind are our top priorities.</p>\r\n                                        </div>\r\n                                    </div>\r\n                                </div>\r\n\r\n                                <div class=\"col-lg-4 col-md-6\" data-aos=\"fade-up\" data-aos-delay=\"500\">\r\n                                    <div class=\"feature-card\">\r\n                                        <div class=\"feature-front\">\r\n                                            <div class=\"feature-icon\">\r\n                                                <i class=\"bi bi-recycle\"></i>\r\n                                            </div>\r\n                                            <h4>Punctual & Reliable</h4>\r\n                                            <p>Always on time, rain or shine</p>\r\n                                        </div>\r\n                                        <div class=\"feature-back\">\r\n                                            <p>We track flights in real-time and adjust schedules as needed, ensuring you never miss a departure or wait unnecessarily after arrival.</p>\r\n                                        </div>\r\n                                    </div>\r\n                                </div>\r\n\r\n                                <div class=\"col-lg-4 col-md-6\" data-aos=\"fade-up\" data-aos-delay=\"300\">\r\n                                    <div class=\"feature-card\">\r\n                                        <div class=\"feature-front\">\r\n                                            <div class=\"feature-icon\">\r\n                                                <i class=\"bi bi-sliders\"></i>\r\n                                            </div>\r\n                                            <h4>Comfortable Vehicles</h4>\r\n                                            <p>Clean, modern, and well-maintained cars</p>\r\n                                        </div>\r\n                                        <div class=\"feature-back\">\r\n                                            <p>Travel in comfort with spacious, climate-controlled vehicles equipped with Wi-Fi, charging ports, and luggage space for all your needs.</p>\r\n                                        </div>\r\n                                    </div>\r\n                                </div>\r\n\r\n                                <div class=\"col-lg-4 col-md-6\" data-aos=\"fade-up\" data-aos-delay=\"400\">\r\n                                    <div class=\"feature-card\">\r\n                                        <div class=\"feature-front\">\r\n                                            <div class=\"feature-icon\">\r\n                                                <i class=\"bi bi-shield-check\"></i>\r\n                                            </div>\r\n                                            <h4>Flexible Scheduling</h4>\r\n                                            <p>We adapt to your flight times</p>\r\n                                        </div>\r\n                                        <div class=\"feature-back\">\r\n                                            <p>Late flight? Early arrival? No problem. We offer flexible pick-up and drop-off options to fit your exact travel schedule.</p>\r\n                                        </div>\r\n                                    </div>\r\n                                </div>\r\n\r\n                                <div class=\"col-lg-4 col-md-6\" data-aos=\"fade-up\" data-aos-delay=\"500\">\r\n                                    <div class=\"feature-card\">\r\n                                        <div class=\"feature-front\">\r\n                                            <div class=\"feature-icon\">\r\n                                                <i class=\"bi bi-star\"></i>\r\n                                            </div>\r\n                                            <h4>Exceptional Experience</h4>\r\n                                            <p>Service that goes the extra mile</p>\r\n                                        </div>\r\n                                        <div class=\"feature-back\">\r\n                                            <p>From personalized greetings to assistance with luggage, we aim to make every airport transfer smooth, enjoyable, and stress-free.</p>\r\n                                        </div>\r\n                                    </div>\r\n                                </div>\r\n                            </div>\r\n                        </div>\r\n                    </div>\r\n                </div>\r\n                \r\n                <div class=\"row mt-5\">\r\n                    <div class=\"col-lg-12\">\r\n                        <div class=\"cta-banner\" data-aos=\"zoom-in\" data-aos-delay=\"300\">\r\n                            <div class=\"cta-overlay\">\r\n                                <div class=\"cta-content\">\r\n                                    <h3 class=\"about-title\" style=\"color:white;\">Your Next Adventure Awaits</h3>\r\n                                    <p>Join thousands of travelers who\'ve discovered the difference authentic, responsible travel makes.</p>\r\n                                    <div class=\"cta-buttons\">\r\n                                        <a href=\"[[~3]]\" class=\"btn btn-primary me-3\">Explore Destinations</a>\r\n                                        <a href=\"[[~5]]\" class=\"btn btn-outline\">Contact Us</a>\r\n                                    </div>\r\n                                </div>\r\n                            </div>\r\n                        </div>\r\n                    </div>\r\n                </div>\r\n            </div>\r\n        </section>\r\n        <!-- /Travel About Section -->\r\n    </main>\r\n</body>', 1, 2, 1, 1, 1, 1, 1762927892, 1, 1763355492, 0, 0, 0, 1762927920, 1, '', 0, 0, 'MODX\\Revolution\\modDocument', 'web', 1, '', 0, 0, 1, NULL, 1),
(3, 'document', 'Destinations', '', '', 'destinations', '', 1, 0, 0, 0, 0, '', '<body class=\"destinations-page\">\r\n\r\n<main class=\"main\">\r\n\r\n  <!-- Page Title -->\r\n  <div class=\"page-title dark-background\" data-aos=\"fade\" style=\"background-image: url(assets/img/travel/showcase.png);\">\r\n    <div class=\"container position-relative\">\r\n      <h1>Destinations</h1>\r\n      <p>Discover top destinations and unforgettable experiences, whether for adventure, relaxation, or culture.</p>\r\n      <nav class=\"breadcrumbs\">\r\n        <ol>\r\n          <li><a href=\"[[~1]]\">Home</a></li>\r\n          <li class=\"current\">Destinations</li>\r\n        </ol>\r\n      </nav>\r\n    </div>\r\n  </div>\r\n  <!-- End Page Title -->\r\n\r\n  <!-- Travel Destinations Section -->\r\n  <section id=\"travel-destinations\" class=\"travel-destinations section\">\r\n    <div class=\"container\" data-aos=\"fade-up\" data-aos-delay=\"100\">\r\n      <div class=\"row\">\r\n        <div class=\"col-lg-8 mx-auto text-center\">\r\n          <h2 style=\"font-weight:700; margin-bottom:16px;\">Uncover Captivating Sri Lankan Experiences</h2>\r\n          <p class=\"mb-5\">From golden beaches to misty mountains and ancient temples, explore Sri Lanka\'s diverse beauty. Let us craft unforgettable journeys tailored to your dreams.</p>\r\n        </div>\r\n      </div>\r\n\r\n      <div class=\"isotope-layout\" data-default-filter=\"*\" data-layout=\"masonry\" data-sort=\"original-order\">\r\n        <div class=\"row gy-4 isotope-container\" data-aos=\"fade-up\" data-aos-delay=\"300\">\r\n\r\n          <!-- Destination Tiles -->\r\n          <div class=\"col-lg-4 col-md-6 destination-item isotope-item filter-urban\">\r\n            <a href=\"#\" class=\"destination-tile\">\r\n              <div class=\"tile-image\">\r\n                <img src=\"assets/img/destinations/1.jpg\" alt=\"Colombo, Sri Lanka\" class=\"img-fluid\" loading=\"lazy\">\r\n                <div class=\"overlay-content\">\r\n                  <span class=\"destination-tag modern\">City Life</span>\r\n                  <div class=\"destination-info\">\r\n                    <h4>Colombo</h4>\r\n                    <p>The vibrant capital, blending colonial charm, bustling markets, and modern amenities.</p>\r\n                  </div>\r\n                </div>\r\n              </div>\r\n            </a>\r\n          </div>\r\n\r\n          <div class=\"col-lg-4 col-md-6 destination-item isotope-item filter-mountain filter-historical\">\r\n            <a href=\"#\" class=\"destination-tile\">\r\n              <div class=\"tile-image\">\r\n                <img src=\"assets/img/destinations/2.jpg\" alt=\"Kandy, Sri Lanka\" class=\"img-fluid\" loading=\"lazy\">\r\n                <div class=\"overlay-content\">\r\n                  <span class=\"destination-tag cultural\">Heritage</span>\r\n                  <div class=\"destination-info\">\r\n                    <h4>Kandy</h4>\r\n                    <p>Home to the sacred Temple of the Tooth and serene hill country vistas.</p>\r\n                  </div>\r\n                </div>\r\n              </div>\r\n            </a>\r\n          </div>\r\n\r\n          <div class=\"col-lg-4 col-md-6 destination-item isotope-item filter-historical filter-mountain\">\r\n            <a href=\"#\" class=\"destination-tile\">\r\n              <div class=\"tile-image\">\r\n                <img src=\"assets/img/destinations/3.jpg\" alt=\"Sigiriya, Sri Lanka\" class=\"img-fluid\" loading=\"lazy\">\r\n                <div class=\"overlay-content\">\r\n                  <span class=\"destination-tag ancient\">Cultural</span>\r\n                  <div class=\"destination-info\">\r\n                    <h4>Sigiriya</h4>\r\n                    <p>The ancient rock fortress with stunning frescoes and panoramic landscapes.</p>\r\n                  </div>\r\n                </div>\r\n              </div>\r\n            </a>\r\n          </div>\r\n\r\n          <div class=\"col-lg-4 col-md-6 destination-item isotope-item filter-mountain\">\r\n            <a href=\"#\" class=\"destination-tile\">\r\n              <div class=\"tile-image\">\r\n                <img src=\"assets/img/destinations/4.jpg\" alt=\"Nuwara Eliya, Sri Lanka\" class=\"img-fluid\" loading=\"lazy\">\r\n                <div class=\"overlay-content\">\r\n                  <span class=\"destination-tag scenic\">Hill Country</span>\r\n                  <div class=\"destination-info\">\r\n                    <h4>Nuwara Eliya</h4>\r\n                    <p>Lush tea plantations, rolling hills, and cool mountain air.</p>\r\n                  </div>\r\n                </div>\r\n              </div>\r\n            </a>\r\n          </div>\r\n\r\n          <div class=\"col-lg-4 col-md-6 destination-item isotope-item filter-wildlife\">\r\n            <a href=\"#\" class=\"destination-tile\">\r\n              <div class=\"tile-image\">\r\n                <img src=\"assets/img/destinations/5.jpg\" alt=\"Yala National Park, Sri Lanka\" class=\"img-fluid\" loading=\"lazy\">\r\n                <div class=\"overlay-content\">\r\n                  <span class=\"destination-tag wildlife\">Safari</span>\r\n                  <div class=\"destination-info\">\r\n                    <h4>Yala National Park</h4>\r\n                    <p>Spot leopards, elephants, and exotic wildlife on thrilling safaris.</p>\r\n                  </div>\r\n                </div>\r\n              </div>\r\n            </a>\r\n          </div>\r\n\r\n          <div class=\"col-lg-4 col-md-6 destination-item isotope-item filter-coastal filter-historical\">\r\n            <a href=\"#\" class=\"destination-tile\">\r\n              <div class=\"tile-image\">\r\n                <img src=\"assets/img/destinations/6.jpeg\" alt=\"Galle, Sri Lanka\" class=\"img-fluid\" loading=\"lazy\">\r\n                <div class=\"overlay-content\">\r\n                  <span class=\"destination-tag heritage\">Coastal</span>\r\n                  <div class=\"destination-info\">\r\n                    <h4>Galle</h4>\r\n                    <p>Colonial architecture, a charming fort, and scenic beaches along the southern coast.</p>\r\n                  </div>\r\n                </div>\r\n              </div>\r\n            </a>\r\n          </div>\r\n\r\n          <div class=\"col-lg-4 col-md-6 destination-item isotope-item filter-coastal filter-historical\">\r\n            <a href=\"#\" class=\"destination-tile\">\r\n              <div class=\"tile-image\">\r\n                <img src=\"assets/img/destinations/7.jpg\" alt=\"Anuradhapura, Sri Lanka\" class=\"img-fluid\" loading=\"lazy\">\r\n                <div class=\"overlay-content\">\r\n                  <span class=\"destination-tag heritage\">Sacred City</span>\r\n                  <div class=\"destination-info\">\r\n                    <h4>Anuradhapura</h4>\r\n                    <p>Ancient stupas and royal ruins from Sri Lanka’s first kingdom.</p>\r\n                  </div>\r\n                </div>\r\n              </div>\r\n            </a>\r\n          </div>\r\n\r\n          <div class=\"col-lg-4 col-md-6 destination-item isotope-item filter-coastal filter-historical\">\r\n            <a href=\"#\" class=\"destination-tile\">\r\n              <div class=\"tile-image\">\r\n                <img src=\"assets/img/destinations/8.jpg\" alt=\"Trincomalee, Sri Lanka\" class=\"img-fluid\" loading=\"lazy\">\r\n                <div class=\"overlay-content\">\r\n                  <span class=\"destination-tag scenic\">Beach</span>\r\n                  <div class=\"destination-info\">\r\n                    <h4>Trincomalee</h4>\r\n                    <p>Pristine beaches and vibrant marine life on the eastern coast.</p>\r\n                  </div>\r\n                </div>\r\n              </div>\r\n            </a>\r\n          </div>\r\n\r\n          <div class=\"col-lg-4 col-md-6 destination-item isotope-item filter-coastal filter-historical\">\r\n            <a href=\"#\" class=\"destination-tile\">\r\n              <div class=\"tile-image\">\r\n                <img src=\"assets/img/destinations/9.jpg\" alt=\"Ella, Sri Lanka\" class=\"img-fluid\" loading=\"lazy\">\r\n                <div class=\"overlay-content\">\r\n                  <span class=\"destination-tag ancient\">Scenic</span>\r\n                  <div class=\"destination-info\">\r\n                    <h4>Ella</h4>\r\n                    <p>Famous for the Nine Arches Bridge, tea trails, and breathtaking views.</p>\r\n                  </div>\r\n                </div>\r\n              </div>\r\n            </a>\r\n          </div>\r\n          <!-- End Destination Tiles -->\r\n\r\n        </div>\r\n      </div>\r\n\r\n      <div class=\"row mt-3\">\r\n        <div class=\"col-lg-10 mx-auto text-center\" data-aos=\"fade-up\" data-aos-delay=\"400\">\r\n          <div class=\"planning-assistance\">\r\n            <div class=\"assistance-content\">\r\n              <h3>Let Our Team Help Curate Your Perfect Sri Lankan Expedition</h3>\r\n              <p>Unsure which destination aligns with your travel dreams? Our travel experts design bespoke itineraries tailored to you.</p>\r\n              <div class=\"assistance-actions\">\r\n                <a href=\"[[~5]]\" class=\"btn btn-primary\">Contact Us</a>\r\n              </div>\r\n            </div>\r\n          </div>\r\n        </div>\r\n      </div>\r\n\r\n    </div>\r\n  </section>\r\n  <!-- /Travel Destinations Section -->\r\n</main>\r\n\r\n<!-- Destination Modal -->\r\n<div id=\"destinationModal\" class=\"modal\">\r\n  <div class=\"modal-content small-modal\">\r\n    <button class=\"modal-close-btn\">&times;</button>\r\n\r\n    <!-- Tabs -->\r\n    <div class=\"modal-tabs\">\r\n      <button class=\"tab-btn active\" data-tab=\"images\">Images</button>\r\n      <button class=\"tab-btn\" data-tab=\"details\">Details</button>\r\n      <button class=\"tab-btn\" data-tab=\"map\">Map</button>\r\n    </div>\r\n\r\n    <div class=\"modal-body\">\r\n      <!-- Images Tab -->\r\n      <div class=\"tab-content active\" id=\"tab-images\">\r\n        <div id=\"modal-carousel\" class=\"carousel\">\r\n          <button class=\"carousel-prev\">&#10094;</button>\r\n          <img id=\"modal-image\" class=\"img-fluid\">\r\n          <button class=\"carousel-next\">&#10095;</button>\r\n        </div>\r\n      </div>\r\n\r\n      <!-- Details Tab -->\r\n      <div class=\"tab-content\" id=\"tab-details\">\r\n        <h2 id=\"modal-title\"></h2>\r\n        <p id=\"modal-description\"></p>\r\n        <p id=\"modal-tags\" class=\"fw-bold\"></p>\r\n        <hr>\r\n        <h4>Best Time to Visit</h4>\r\n        <p id=\"modal-best-time\"></p>\r\n        <h4>Top Attractions</h4>\r\n        <ul id=\"modal-attractions\"></ul>\r\n        <h4>Things to Do</h4>\r\n        <ul id=\"modal-things\"></ul>\r\n        <h4>Weather Summary</h4>\r\n        <p id=\"modal-weather\"></p>\r\n        <a href=\"[[~7]]\" id=\"plan-trip-btn\" class=\"btn btn-primary w-100 mt-3\">Plan Your Trip</a>\r\n      </div>\r\n\r\n      <!-- Map Tab -->\r\n      <div class=\"tab-content\" id=\"tab-map\">\r\n        <div id=\"modal-map\" style=\"width:100%;height:280px;border-radius:10px;\"></div>\r\n      </div>\r\n    </div>\r\n  </div>\r\n</div>\r\n\r\n<script>\r\n  const modal = document.getElementById(\"destinationModal\");\r\n  const modalTitle = document.getElementById(\"modal-title\");\r\n  const modalImage = document.getElementById(\"modal-image\");\r\n  const modalDescription = document.getElementById(\"modal-description\");\r\n  const modalTags = document.getElementById(\"modal-tags\");\r\n  const modalMap = document.getElementById(\"modal-map\");\r\n  const planTripBtn = document.getElementById(\"plan-trip-btn\");\r\n  const closeBtn = document.querySelector(\".modal-close-btn\");\r\n  const tabButtons = document.querySelectorAll(\".tab-btn\");\r\n  const tabContents = document.querySelectorAll(\".tab-content\");\r\n  const carouselPrev = document.querySelector(\".carousel-prev\");\r\n  const carouselNext = document.querySelector(\".carousel-next\");\r\n  let currentImages = [];\r\n  let currentIndex = 0;\r\n\r\n  const destinationsData = {\r\n    \"Colombo\": {\r\n      images: [\r\n        \"assets/img/destinations/1.jpg\",\r\n        \"assets/img/destinations/colombo-2.jpg\",\r\n        \"assets/img/destinations/colombo-3.jpg\"\r\n      ],\r\n      description: \"The vibrant capital, blending colonial charm, bustling markets, and modern amenities.\",\r\n      tags: \"City Life\",\r\n      bestTime: \"December to March\",\r\n      attractions: [\r\n        \"Galle Face Green\",\r\n        \"Gangaramaya Temple\",\r\n        \"Colombo National Museum\",\r\n        \"Lotus Tower\",\r\n        \"Dutch Hospital Shopping Precinct\"\r\n      ],\r\n      thingsToDo: [\r\n        \"Enjoy sunset at Galle Face\",\r\n        \"Try street food & seafood\",\r\n        \"Explore Colombo’s colonial heritage\",\r\n        \"Go shopping at One Galle Face\",\r\n        \"Take a tuk-tuk city tour\"\r\n      ],\r\n      weather: \"Warm & humid year-round, with occasional rain.\",\r\n      mapCoords: { lat: 6.9271, lng: 79.8612 },\r\n      planLink: \"[[~7]]\"\r\n    },\r\n\r\n    \"Kandy\": {\r\n      images: [\r\n        \"assets/img/destinations/2.jpg\",\r\n        \"assets/img/destinations/kandy-2.jpg\",\r\n        \"assets/img/destinations/kandy-3.jpg\"\r\n      ],\r\n      description: \"Home to the sacred Temple of the Tooth and serene hill country vistas.\",\r\n      tags: \"Heritage\",\r\n      bestTime: \"December to April\",\r\n      attractions: [\r\n        \"Temple of the Tooth\",\r\n        \"Kandy Lake\",\r\n        \"Royal Botanical Gardens\",\r\n        \"Bahirawakanda Buddha Statue\",\r\n        \"Kandy Cultural Show\"\r\n      ],\r\n      thingsToDo: [\r\n        \"Watch a traditional cultural dance\",\r\n        \"Visit the Temple of the Tooth\",\r\n        \"Explore tea museums\",\r\n        \"Take a scenic walk around the lake\"\r\n      ],\r\n      weather: \"Mild and pleasant; cooler evenings.\",\r\n      mapCoords: { lat: 7.2906, lng: 80.6337 },\r\n      planLink: \"[[~7]]\"\r\n    },\r\n\r\n    \"Sigiriya\": {\r\n      images: [\r\n        \"assets/img/destinations/3.jpg\",\r\n        \"assets/img/destinations/sigiriya-2.jpg\",\r\n        \"assets/img/destinations/sigiriya-3.jpg\"\r\n      ],\r\n      description: \"The ancient rock fortress with stunning frescoes and panoramic landscapes.\",\r\n      tags: \"Cultural\",\r\n      bestTime: \"January to April\",\r\n      attractions: [\r\n        \"Sigiriya Rock Fortress\",\r\n        \"Pidurangala Rock\",\r\n        \"Sigiriya Museum\",\r\n        \"Elephant Rock Viewpoint\"\r\n      ],\r\n      thingsToDo: [\r\n        \"Sunrise hike at Pidurangala\",\r\n        \"Climb Sigiriya Rock\",\r\n        \"Explore ancient frescoes\",\r\n        \"Cycle through the village\"\r\n      ],\r\n      weather: \"Hot and dry climate; ideal for outdoor activities.\",\r\n      mapCoords: { lat: 7.9570, lng: 80.7603 },\r\n      planLink: \"[[~7]]\"\r\n    },\r\n\r\n    \"Nuwara Eliya\": {\r\n      images: [\r\n        \"assets/img/destinations/4.jpg\",\r\n        \"assets/img/destinations/nuwaraeliya-2.jpg\",\r\n        \"assets/img/destinations/nuwaraeliya-3.jpg\"\r\n      ],\r\n      description: \"Lush tea plantations, rolling hills, and cool mountain air.\",\r\n      tags: \"Hill Country\",\r\n      bestTime: \"February to April\",\r\n      attractions: [\r\n        \"Gregory Lake\",\r\n        \"Horton Plains\",\r\n        \"Devon Falls\",\r\n        \"Victoria Park\",\r\n        \"Pedro Tea Estate\"\r\n      ],\r\n      thingsToDo: [\r\n        \"Visit a tea factory\",\r\n        \"Boat ride on Gregory Lake\",\r\n        \"Hike Horton Plains & World\'s End\",\r\n        \"Explore colonial buildings\"\r\n      ],\r\n      weather: \"Cold and misty; warm clothing recommended.\",\r\n      mapCoords: { lat: 6.9497, lng: 80.7891 },\r\n      planLink: \"[[~7]]\"\r\n    },\r\n\r\n    \"Yala National Park\": {\r\n      images: [\r\n        \"assets/img/destinations/5.jpg\",\r\n        \"assets/img/destinations/yala-2.jpg\",\r\n        \"assets/img/destinations/yala-3.jpg\"\r\n      ],\r\n      description: \"Spot leopards, elephants, and exotic wildlife on thrilling safaris.\",\r\n      tags: \"Wildlife / Safari\",\r\n      bestTime: \"February to July\",\r\n      attractions: [\r\n        \"Leopard Safari\",\r\n        \"Elephant Watching\",\r\n        \"Bird Watching\",\r\n        \"Kumana National Park\"\r\n      ],\r\n      thingsToDo: [\r\n        \"Early morning safari\",\r\n        \"Photography tours\",\r\n        \"Camping under the stars\",\r\n        \"Jeep safaris\"\r\n      ],\r\n      weather: \"Hot, dry climate; peak wildlife visibility in dry months.\",\r\n      mapCoords: { lat: 6.3669, lng: 81.4994 },\r\n      planLink: \"[[~7]]\"\r\n    },\r\n\r\n    \"Galle\": {\r\n      images: [\r\n        \"assets/img/destinations/6.jpeg\",\r\n        \"assets/img/destinations/galle-2.jpg\",\r\n        \"assets/img/destinations/galle-3.jpg\"\r\n      ],\r\n      description: \"Colonial architecture, a charming fort, and scenic beaches along the southern coast.\",\r\n      tags: \"Coastal / Heritage\",\r\n      bestTime: \"December to April\",\r\n      attractions: [\r\n        \"Galle Fort\",\r\n        \"Jungle Beach\",\r\n        \"Unawatuna Beach\",\r\n        \"Lighthouse\",\r\n        \"Dutch Hospital\"\r\n      ],\r\n      thingsToDo: [\r\n        \"Walk the fort walls\",\r\n        \"Snorkeling at Unawatuna\",\r\n        \"Beach relaxation\",\r\n        \"Visit art galleries\"\r\n      ],\r\n      weather: \"Warm and sunny; occasional coastal winds.\",\r\n      mapCoords: { lat: 6.0329, lng: 80.2168 },\r\n      planLink: \"[[~7]]\"\r\n    },\r\n\r\n    \"Anuradhapura\": {\r\n      images: [\r\n        \"assets/img/destinations/7.jpg\",\r\n        \"assets/img/destinations/anuradhapura-2.jpg\",\r\n        \"assets/img/destinations/anuradhapura-3.jpg\"\r\n      ],\r\n      description: \"Ancient stupas and royal ruins from Sri Lanka’s first kingdom.\",\r\n      tags: \"Sacred City / Heritage\",\r\n      bestTime: \"April to September\",\r\n      attractions: [\r\n        \"Ruwanweliseya\",\r\n        \"Jaya Sri Maha Bodhi\",\r\n        \"Abhayagiri Monastery\",\r\n        \"Twin Ponds (Kuttam Pokuna)\"\r\n      ],\r\n      thingsToDo: [\r\n        \"Cycle through ancient ruins\",\r\n        \"Visit sacred temples\",\r\n        \"Explore ancient irrigation systems\"\r\n      ],\r\n      weather: \"Hot but dry; perfect for exploring historical sites.\",\r\n      mapCoords: { lat: 8.3114, lng: 80.4037 },\r\n      planLink: \"[[~7]]\"\r\n    },\r\n\r\n    \"Trincomalee\": {\r\n      images: [\r\n        \"assets/img/destinations/8.jpg\",\r\n        \"assets/img/destinations/trinco-2.jpg\",\r\n        \"assets/img/destinations/trinco-3.jpg\"\r\n      ],\r\n      description: \"Pristine beaches and vibrant marine life on the eastern coast.\",\r\n      tags: \"Beach / Scenic\",\r\n      bestTime: \"May to October\",\r\n      attractions: [\r\n        \"Nilaveli Beach\",\r\n        \"Marble Beach\",\r\n        \"Koneswaram Temple\",\r\n        \"Pigeon Island\"\r\n      ],\r\n      thingsToDo: [\r\n        \"Snorkeling at Pigeon Island\",\r\n        \"Whale watching\",\r\n        \"Sunbathing on Nilaveli Beach\"\r\n      ],\r\n      weather: \"Hot, sunny, and perfect for water activities.\",\r\n      mapCoords: { lat: 8.5874, lng: 81.2152 },\r\n      planLink: \"[[~7]]\"\r\n    },\r\n\r\n    \"Ella\": {\r\n      images: [\r\n        \"assets/img/destinations/9.jpg\",\r\n        \"assets/img/destinations/ella-2.jpg\",\r\n        \"assets/img/destinations/ella-3.jpg\"\r\n      ],\r\n      description: \"Famous for the Nine Arches Bridge, tea trails, and breathtaking views.\",\r\n      tags: \"Scenic / Hill Country\",\r\n      bestTime: \"February to April\",\r\n      attractions: [\r\n        \"Nine Arches Bridge\",\r\n        \"Ella Rock\",\r\n        \"Little Adam’s Peak\",\r\n        \"Ravana Falls\"\r\n      ],\r\n      thingsToDo: [\r\n        \"Hike Ella Rock\",\r\n        \"Experience the iconic train journey\",\r\n        \"Ziplining & adventure activities\",\r\n        \"Visit cafes with valley views\"\r\n      ],\r\n      weather: \"Cool mornings, warm afternoons, light showers possible.\",\r\n      mapCoords: { lat: 6.8667, lng: 81.0469 },\r\n      planLink: \"[[~7]]\"\r\n    }\r\n  };\r\n\r\n  // Open modal\r\n  document.querySelectorAll(\".destination-tile\").forEach(tile => {\r\n    tile.addEventListener(\"click\", (e) => {\r\n      e.preventDefault();\r\n      const title = tile.querySelector(\".destination-info h4\").innerText;\r\n      const data = destinationsData[title];\r\n      if (!data) return;\r\n\r\n      modalTitle.innerText = title;\r\n      currentImages = data.images;\r\n      currentIndex = 0;\r\n      modalImage.src = currentImages[0];\r\n      modalDescription.innerText = data.description;\r\n      modalTags.innerHTML = `<strong>Category:</strong> ${data.tags}`;\r\n      planTripBtn.href = data.planLink;\r\n\r\n      document.getElementById(\"modal-best-time\").innerText = data.bestTime || \"N/A\";\r\n      document.getElementById(\"modal-attractions\").innerHTML = data.attractions ? data.attractions.map(a => `<li>${a}</li>`).join(\'\') : \'\';\r\n      document.getElementById(\"modal-things\").innerHTML = data.thingsToDo ? data.thingsToDo.map(t => `<li>${t}</li>`).join(\'\') : \'\';\r\n      document.getElementById(\"modal-weather\").innerText = data.weather || \"N/A\";\r\n\r\n      // Map Tab Click\r\n      document.querySelector(\"[data-tab=\'map\']\").onclick = () => {\r\n        if (window.google) {\r\n          let map = new google.maps.Map(modalMap, { center: data.mapCoords, zoom: 12 });\r\n          new google.maps.Marker({ position: data.mapCoords, map });\r\n        }\r\n      };\r\n\r\n      modal.style.display = \"flex\";\r\n    });\r\n  });\r\n\r\n  // Carousel\r\n  carouselPrev.onclick = () => {\r\n    currentIndex = (currentIndex - 1 + currentImages.length) % currentImages.length;\r\n    modalImage.src = currentImages[currentIndex];\r\n  };\r\n  carouselNext.onclick = () => {\r\n    currentIndex = (currentIndex + 1) % currentImages.length;\r\n    modalImage.src = currentImages[currentIndex];\r\n  };\r\n\r\n  // Close modal\r\n  closeBtn.onclick = () => modal.style.display = \"none\";\r\n  window.onclick = (e) => { if (e.target === modal) modal.style.display = \"none\"; };\r\n\r\n  // Tabs\r\n  tabButtons.forEach(btn => {\r\n    btn.addEventListener(\"click\", () => {\r\n      tabButtons.forEach(b => b.classList.remove(\"active\"));\r\n      btn.classList.add(\"active\");\r\n      tabContents.forEach(c => c.classList.remove(\"active\"));\r\n      document.getElementById(\"tab-\" + btn.dataset.tab).classList.add(\"active\");\r\n    });\r\n  });\r\n</script>\r\n\r\n<!-- Google Maps API -->\r\n<script async defer src=\"https://maps.googleapis.com/maps/api/js?key=AIzaSyAHmbwBrk0OKY0Nhp9FrR_zn8HKLGZ54OU\"></script>\r\n', 1, 2, 2, 1, 1, 1, 1762928116, 1, 1763363034, 0, 0, 0, 1762928100, 1, '', 0, 0, 'MODX\\Revolution\\modDocument', 'web', 1, '', 0, 0, 1, NULL, 1),
(4, 'document', 'Gallery', '', '', 'gallery', '', 1, 0, 0, 0, 0, '', '<body class=\"gallery-page\">\r\n  <main class=\"main\">\r\n\r\n    <!-- Page Title -->\r\n    <div class=\"page-title dark-background\" data-aos=\"fade\" style=\"background-image: url(assets/img/travel/showcase-8.webp);\">\r\n      <div class=\"container position-relative\">\r\n        <h1>Gallery</h1>\r\n        <p>Esse dolorum voluptatum ullam est sint nemo et est ipsa porro placeat quibusdam quia assumenda numquam molestias.</p>\r\n        <nav class=\"breadcrumbs\">\r\n          <ol>\r\n            <li><a href=\"index.html\">Home</a></li>\r\n            <li class=\"current\">Gallery</li>\r\n          </ol>\r\n        </nav>\r\n      </div>\r\n    </div><!-- End Page Title -->\r\n\r\n    <!-- Gallery Slider Section -->\r\n    <section id=\"gallery-slider\" class=\"gallery-slider section\">\r\n\r\n      <div class=\"container\" data-aos=\"fade-up\" data-aos-delay=\"100\">\r\n\r\n        <div class=\"gallery-container\">\r\n          <div class=\"swiper init-swiper\">\r\n            <script type=\"application/json\" class=\"swiper-config\">\r\n              {\r\n                \"loop\": true,\r\n                \"speed\": 800,\r\n                \"autoplay\": {\r\n                  \"delay\": 4000\r\n                },\r\n                \"effect\": \"coverflow\",\r\n                \"grabCursor\": true,\r\n                \"centeredSlides\": true,\r\n                \"slidesPerView\": \"auto\",\r\n                \"coverflowEffect\": {\r\n                  \"rotate\": 50,\r\n                  \"stretch\": 0,\r\n                  \"depth\": 100,\r\n                  \"modifier\": 1,\r\n                  \"slideShadows\": true\r\n                },\r\n                \"pagination\": {\r\n                  \"el\": \".swiper-pagination\",\r\n                  \"type\": \"bullets\",\r\n                  \"clickable\": true\r\n                },\r\n                \"navigation\": {\r\n                  \"nextEl\": \".swiper-button-next\",\r\n                  \"prevEl\": \".swiper-button-prev\"\r\n                },\r\n                \"breakpoints\": {\r\n                  \"320\": {\r\n                    \"slidesPerView\": 1,\r\n                    \"spaceBetween\": 10\r\n                  },\r\n                  \"768\": {\r\n                    \"slidesPerView\": 2,\r\n                    \"spaceBetween\": 20\r\n                  },\r\n                  \"1024\": {\r\n                    \"slidesPerView\": 3,\r\n                    \"spaceBetween\": 30\r\n                  }\r\n                }\r\n              }\r\n            </script>\r\n            <div class=\"swiper-wrapper\">\r\n              <div class=\"swiper-slide\">\r\n                <div class=\"gallery-item\">\r\n                  <div class=\"gallery-img\">\r\n                    <a class=\"glightbox\" data-gallery=\"images-gallery\" href=\"assets/img/gallery/gallery-3.webp\">\r\n                      <img src=\"assets/img/gallery/gallery-3.webp\" class=\"img-fluid\" alt=\"\">\r\n                      <div class=\"gallery-overlay\">\r\n                        <i class=\"bi bi-plus-circle\"></i>\r\n                      </div>\r\n                    </a>\r\n                  </div>\r\n                </div>\r\n              </div>\r\n              <div class=\"swiper-slide\">\r\n                <div class=\"gallery-item\">\r\n                  <div class=\"gallery-img\">\r\n                    <a class=\"glightbox\" data-gallery=\"images-gallery\" href=\"assets/img/gallery/gallery-1.webp\">\r\n                      <img src=\"assets/img/gallery/gallery-1.webp\" class=\"img-fluid\" alt=\"\">\r\n                      <div class=\"gallery-overlay\">\r\n                        <i class=\"bi bi-plus-circle\"></i>\r\n                      </div>\r\n                    </a>\r\n                  </div>\r\n                </div>\r\n              </div>\r\n              <div class=\"swiper-slide\">\r\n                <div class=\"gallery-item\">\r\n                  <div class=\"gallery-img\">\r\n                    <a class=\"glightbox\" data-gallery=\"images-gallery\" href=\"assets/img/gallery/gallery-5.webp\">\r\n                      <img src=\"assets/img/gallery/gallery-5.webp\" class=\"img-fluid\" alt=\"\">\r\n                      <div class=\"gallery-overlay\">\r\n                        <i class=\"bi bi-plus-circle\"></i>\r\n                      </div>\r\n                    </a>\r\n                  </div>\r\n                </div>\r\n              </div>\r\n              <div class=\"swiper-slide\">\r\n                <div class=\"gallery-item\">\r\n                  <div class=\"gallery-img\">\r\n                    <a class=\"glightbox\" data-gallery=\"images-gallery\" href=\"assets/img/gallery/gallery-7.webp\">\r\n                      <img src=\"assets/img/gallery/gallery-7.webp\" class=\"img-fluid\" alt=\"\">\r\n                      <div class=\"gallery-overlay\">\r\n                        <i class=\"bi bi-plus-circle\"></i>\r\n                      </div>\r\n                    </a>\r\n                  </div>\r\n                </div>\r\n              </div>\r\n              <div class=\"swiper-slide\">\r\n                <div class=\"gallery-item\">\r\n                  <div class=\"gallery-img\">\r\n                    <a class=\"glightbox\" data-gallery=\"images-gallery\" href=\"assets/img/gallery/gallery-2.webp\">\r\n                      <img src=\"assets/img/gallery/gallery-2.webp\" class=\"img-fluid\" alt=\"\">\r\n                      <div class=\"gallery-overlay\">\r\n                        <i class=\"bi bi-plus-circle\"></i>\r\n                      </div>\r\n                    </a>\r\n                  </div>\r\n                </div>\r\n              </div>\r\n              <div class=\"swiper-slide\">\r\n                <div class=\"gallery-item\">\r\n                  <div class=\"gallery-img\">\r\n                    <a class=\"glightbox\" data-gallery=\"images-gallery\" href=\"assets/img/gallery/gallery-4.webp\">\r\n                      <img src=\"assets/img/gallery/gallery-4.webp\" class=\"img-fluid\" alt=\"\">\r\n                      <div class=\"gallery-overlay\">\r\n                        <i class=\"bi bi-plus-circle\"></i>\r\n                      </div>\r\n                    </a>\r\n                  </div>\r\n                </div>\r\n              </div>\r\n              <div class=\"swiper-slide\">\r\n                <div class=\"gallery-item\">\r\n                  <div class=\"gallery-img\">\r\n                    <a class=\"glightbox\" data-gallery=\"images-gallery\" href=\"assets/img/gallery/gallery-6.webp\">\r\n                      <img src=\"assets/img/gallery/gallery-6.webp\" class=\"img-fluid\" alt=\"\">\r\n                      <div class=\"gallery-overlay\">\r\n                        <i class=\"bi bi-plus-circle\"></i>\r\n                      </div>\r\n                    </a>\r\n                  </div>\r\n                </div>\r\n              </div>\r\n              <div class=\"swiper-slide\">\r\n                <div class=\"gallery-item\">\r\n                  <div class=\"gallery-img\">\r\n                    <a class=\"glightbox\" data-gallery=\"images-gallery\" href=\"assets/img/gallery/gallery-8.webp\">\r\n                      <img src=\"assets/img/gallery/gallery-8.webp\" class=\"img-fluid\" alt=\"\">\r\n                      <div class=\"gallery-overlay\">\r\n                        <i class=\"bi bi-plus-circle\"></i>\r\n                      </div>\r\n                    </a>\r\n                  </div>\r\n                </div>\r\n              </div>\r\n            </div>\r\n            <div class=\"swiper-pagination\"></div>\r\n            <div class=\"swiper-button-next\"></div>\r\n            <div class=\"swiper-button-prev\"></div>\r\n          </div>\r\n        </div>\r\n\r\n      </div>\r\n\r\n    </section><!-- /Gallery Slider Section -->\r\n\r\n\r\n  </main>\r\n\r\n</body>', 1, 2, 3, 1, 1, 1, 1762928317, 1, 1762928707, 0, 0, 0, 1762928340, 1, '', 0, 0, 'MODX\\Revolution\\modDocument', 'web', 1, '', 0, 0, 1, NULL, 1);
INSERT INTO `modx_site_content` (`id`, `type`, `pagetitle`, `longtitle`, `description`, `alias`, `link_attributes`, `published`, `pub_date`, `unpub_date`, `parent`, `isfolder`, `introtext`, `content`, `richtext`, `template`, `menuindex`, `searchable`, `cacheable`, `createdby`, `createdon`, `editedby`, `editedon`, `deleted`, `deletedon`, `deletedby`, `publishedon`, `publishedby`, `menutitle`, `content_dispo`, `hidemenu`, `class_key`, `context_key`, `content_type`, `uri`, `uri_override`, `hide_children_in_tree`, `show_in_tree`, `properties`, `alias_visible`) VALUES
(5, 'document', 'Contact', '', '', 'contact', '', 1, 0, 0, 0, 0, '', '<body class=\"contact-page\">\r\n\r\n    <main class=\"main\">\r\n        <div class=\"page-title dark-background\" data-aos=\"fade\" style=\"background-image: url(assets/img/travel/showcase-4.png);\">\r\n            <div class=\"container position-relative\">\r\n                <h1>Contact</h1>\r\n                <p>Book your ride with SR Transfers — safe, reliable, and hassle-free transport across Sri Lanka. Reach out today!</p>\r\n                <nav class=\"breadcrumbs\">\r\n                    <ol>\r\n                        <li><a href=\"[[~1]]\">Home</a></li>\r\n                        <li class=\"current\">Contact</li>\r\n                    </ol>\r\n                </nav>\r\n            </div>\r\n        </div>\r\n\r\n        <!-- Contact Section -->\r\n        <section id=\"contact\" class=\"contact section\">\r\n            <div class=\"container\" data-aos=\"fade-up\" data-aos-delay=\"100\">\r\n                <div class=\"row gy-4 mb-5\">\r\n                    <div class=\"col-lg-4\" data-aos=\"fade-up\" data-aos-delay=\"100\">\r\n                    <div class=\"contact-info-box\">\r\n                        <div class=\"icon-box\">\r\n                        <i class=\"bi bi-geo-alt\"></i>\r\n                        </div>\r\n                        <div class=\"info-content\">\r\n                        <h4>Our Office</h4>\r\n                        <a href=\"https://maps.app.goo.gl/AKUi53HtWCemqH8DA\" target=\"_blank\" style=\"text-decoration: none; color: inherit;\">\r\n                            SR Transfers (Pvt) Ltd<br>\r\n                            371-5,<br>\r\n                            Negombo - Colombo Main Rd,<br>\r\n                            Seeduwa Sri Lanka\r\n                        </a>\r\n                        </div>\r\n                    </div>\r\n                    </div>\r\n\r\n                    <div class=\"col-lg-4\" data-aos=\"fade-up\" data-aos-delay=\"200\">\r\n                        <div class=\"contact-info-box\">\r\n                            <div class=\"icon-box\">\r\n                            <i class=\"bi bi-envelope\"></i>\r\n                            </div>\r\n                            <div class=\"info-content\">\r\n                            <h4>Email Us</h4>\r\n                            <a href=\"mailto:info@srilankarentacar.lk\">info@srilankarentacar.lk</a>\r\n                            </div>\r\n                        </div>\r\n                    </div>\r\n\r\n                    <div class=\"col-lg-4\" data-aos=\"fade-up\" data-aos-delay=\"200\">\r\n                        <div class=\"contact-info-box\">\r\n                            <div class=\"icon-box\">\r\n                            <i class=\"bi bi-phone\"></i>\r\n                            </div>\r\n                            <div class=\"info-content\">\r\n                            <h4>Contact Us</h4>\r\n                            <a href=\"tel:+94777786729\">+94 77 778 6729</a><br>\r\n                            </div>\r\n                        </div>\r\n                    </div>\r\n                </div>\r\n            </div>\r\n\r\n            <div class=\"map-section\" data-aos=\"fade-up\" data-aos-delay=\"200\">\r\n                <iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3958.9719503939377!2d79.87315007581863!3d7.129241115826212!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3ae2f1b39f14eb6f%3A0x5a33982010ddd7e6!2sSR%20Transfers%20Sri%20Lanka!5e0!3m2!1sen!2slk!4v1762930732266!5m2!1sen!2slk\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\" width=\"100%\" height=\"500\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>\r\n            </div>\r\n\r\n            <div class=\"container form-container-overlap\">\r\n                <div class=\"row justify-content-center\" data-aos=\"fade-up\" data-aos-delay=\"300\">\r\n                    <div class=\"col-lg-10\">\r\n                        <div class=\"contact-form-wrapper\">\r\n                            <h2 class=\"text-center mb-4\">Get in Touch</h2>\r\n                            <div id=\"successMessage\" class=\"alert alert-success text-center\" style=\"display: none;\">\r\n                                Your message has been sent successfully!\r\n                            </div>\r\n                            <form id=\"contactForm\" action=\"https://formspree.io/f/xpwyrpej\"    method=\"POST\">\r\n                                <div class=\"row g-3\">\r\n                                    <div class=\"col-md-6\">\r\n                                        <div class=\"form-group\">\r\n                                            <div class=\"input-with-icon\">\r\n                                                <i class=\"bi bi-person\"></i>\r\n                                                <input type=\"text\" class=\"form-control\" name=\"name\" placeholder=\"First Name\" required=\"\">\r\n                                            </div>\r\n                                        </div>\r\n                                    </div>\r\n\r\n                                    <div class=\"col-md-6\">\r\n                                        <div class=\"form-group\">\r\n                                            <div class=\"input-with-icon\">\r\n                                                <i class=\"bi bi-envelope\"></i>\r\n                                                <input type=\"email\" class=\"form-control\" name=\"email\" placeholder=\"Email Address\" required=\"\">\r\n                                            </div>\r\n                                        </div>\r\n                                    </div>\r\n\r\n                                    <div class=\"col-md-12\">\r\n                                        <div class=\"form-group\">\r\n                                            <div class=\"input-with-icon\">\r\n                                                <i class=\"bi bi-text-left\"></i>\r\n                                                <input type=\"text\" class=\"form-control\" name=\"subject\" placeholder=\"Subject\" required=\"\">\r\n                                            </div>\r\n                                        </div>\r\n                                    </div>\r\n\r\n                                    <div class=\"col-12\">\r\n                                        <div class=\"form-group\">\r\n                                            <div class=\"input-with-icon\">\r\n                                                <i class=\"bi bi-chat-dots message-icon\"></i>\r\n                                                <textarea class=\"form-control\" name=\"message\" placeholder=\"Write Message...\" style=\"height: 180px\" required=\"\"></textarea>\r\n                                            </div>\r\n                                        </div>\r\n                                    </div>\r\n                                    <input type=\"hidden\" name=\"_subject\" value=\"SR Transfers - Contact Form\">\r\n\r\n                                    <div class=\"col-12 text-center\">\r\n                                        <button type=\"submit\" class=\"btn btn-primary btn-submit\">SEND MESSAGE</button>\r\n                                    </div>\r\n                                </div>\r\n                            </form>\r\n                        </div>\r\n                    </div>\r\n                </div>\r\n            </div>\r\n        </section>\r\n    </main>\r\n\r\n    <script>\r\n        const form = document.getElementById(\'contactForm\');\r\n        const successMessage = document.getElementById(\'successMessage\');\r\n\r\n        form.addEventListener(\'submit\', async function(e) {\r\n            e.preventDefault();\r\n            const data = new FormData(form);\r\n\r\n            try {\r\n                const resp = await fetch(form.action, {\r\n                    method: form.method,\r\n                    body: data,\r\n                    headers: {\r\n                        \'Accept\': \'application/json\'\r\n                    }\r\n                });\r\n\r\n                if (resp.ok) {\r\n                    // Show success message\r\n                    successMessage.style.display = \'block\';\r\n                    form.reset();\r\n                    successMessage.scrollIntoView({ behavior: \'smooth\', block: \'nearest\' });\r\n\r\n                    setTimeout(() => {\r\n                        successMessage.style.display = \'none\';\r\n                    }, 5000);\r\n                } else {\r\n                    let errText = \'Error sending message. Please try again later.\';\r\n                    try {\r\n                        const errJson = await resp.json();\r\n                        if (errJson && errJson.error) errText = errJson.error;\r\n                    } catch (e) {}\r\n                    alert(errText);\r\n                }\r\n            } catch (err) {\r\n                alert(\'Network error — please check your connection and try again.\');\r\n                console.error(err);\r\n            }\r\n        });\r\n    </script>\r\n</body>', 1, 2, 4, 1, 1, 1, 1762929628, 1, 1763356815, 0, 0, 0, 1762929600, 1, '', 0, 0, 'MODX\\Revolution\\modDocument', 'web', 1, '', 0, 0, 1, NULL, 1),
(6, 'document', 'FAQ', '', '', 'faq', '', 1, 0, 0, 0, 0, '', '<style>\r\n    .faq-wrapper {\r\n        display: grid;\r\n        grid-template-columns: 1fr 2fr;\r\n        gap: 40px;\r\n        align-items: start;\r\n    }\r\n\r\n    .faq-sidebar {\r\n        position: sticky;\r\n        top: 20px;\r\n    }\r\n\r\n    .faq-image {\r\n        border-radius: 12px;\r\n        margin-bottom: 30px;\r\n    }\r\n\r\n    .faq-image img {\r\n        width: 100%;\r\n        height: auto;\r\n        border-radius: 8px;\r\n    }\r\n\r\n    .contact-box {\r\n        background: #008cad;\r\n        color: white;\r\n        padding: 30px;\r\n        border-radius: 12px;\r\n        box-shadow: 0 4px 15px rgba(0, 0, 0, 0.2);\r\n    }\r\n\r\n    .contact-box h3 {\r\n        font-size: 1.5rem;\r\n        margin-bottom: 15px;\r\n        display: flex;\r\n        align-items: center;\r\n        gap: 10px;\r\n        color: white;\r\n        font-weight: 700;\r\n    }\r\n\r\n    .contact-box p {\r\n        margin-bottom: 20px;\r\n        opacity: 0.95;\r\n    }\r\n\r\n    .btn-contact {\r\n        display: inline-block;\r\n        background: white;\r\n        color: #667eea;\r\n        padding: 12px 30px;\r\n        border-radius: 25px;\r\n        text-decoration: none;\r\n        font-weight: 600;\r\n        transition: transform 0.3s ease;\r\n    }\r\n\r\n    .btn-contact:hover {\r\n        transform: translateY(-2px);\r\n        box-shadow: 0 4px 12px rgba(255, 255, 255, 0.3);\r\n    }\r\n\r\n    /* Tabs */\r\n    .faq-tabs {\r\n        background: white;\r\n        border-radius: 12px;\r\n        padding: 30px;\r\n        box-shadow: 0 2px 15px rgba(0, 0, 0, 0.08);\r\n    }\r\n\r\n    .nav-pills {\r\n        display: flex;\r\n        gap: 10px;\r\n        margin-bottom: 30px;\r\n        border-bottom: 2px solid #e9ecef;\r\n        padding-bottom: 10px;\r\n        flex-wrap: wrap;\r\n    }\r\n\r\n    .nav-pills button {\r\n        background: transparent;\r\n        border: none;\r\n        padding: 12px 24px;\r\n        border-radius: 8px;\r\n        cursor: pointer;\r\n        font-size: 0.95rem;\r\n        font-weight: 500;\r\n        color: #6c757d;\r\n        transition: all 0.3s ease;\r\n    }\r\n\r\n    .nav-pills button:hover {\r\n        background: #f8f9fa;\r\n        color: #495057;\r\n    }\r\n\r\n    .nav-pills button.active {\r\n        background: #008cad;\r\n        color: white;\r\n    }\r\n\r\n    /* Accordion */\r\n    .tab-content {\r\n        display: none;\r\n    }\r\n\r\n    .tab-content.active {\r\n        display: block;\r\n    }\r\n\r\n    .faq-item {\r\n        margin-bottom: 15px;\r\n        border: 1px solid #e9ecef;\r\n        border-radius: 8px;\r\n        overflow: hidden;\r\n        transition: box-shadow 0.3s ease;\r\n    }\r\n\r\n    .faq-item:hover {\r\n        box-shadow: 0 2px 8px rgba(0, 0, 0, 0.1);\r\n    }\r\n\r\n    .accordion-header {\r\n        margin: 0;\r\n    }\r\n\r\n    .accordion-button {\r\n        width: 100%;\r\n        background: white;\r\n        border: none;\r\n        padding: 18px 20px;\r\n        text-align: left;\r\n        font-size: 1rem;\r\n        font-weight: 600;\r\n        color: #333;\r\n        cursor: pointer;\r\n        display: flex;\r\n        justify-content: space-between;\r\n        align-items: center;\r\n        transition: background 0.3s ease;\r\n    }\r\n\r\n    .accordion-button:hover {\r\n        background: #f8f9fa;\r\n    }\r\n\r\n    .accordion-button::after {\r\n        content: \'+\';\r\n        font-size: 1.5rem;\r\n        font-weight: 300;\r\n        transition: transform 0.3s ease;\r\n    }\r\n\r\n    .accordion-button.active::after {\r\n        content: \'−\';\r\n        transform: rotate(180deg);\r\n    }\r\n\r\n    .accordion-body {\r\n        padding: 0 20px;\r\n        max-height: 0;\r\n        overflow: hidden;\r\n        transition: all 0.3s ease;\r\n        background: #f8f9fa;\r\n    }\r\n\r\n    .accordion-body.show {\r\n        padding: 20px;\r\n        max-height: 500px;\r\n        padding-top: 0;\r\n    }\r\n\r\n    .accordion-body p {\r\n        margin: 0;\r\n        color: #6c757d;\r\n        line-height: 1.7;\r\n    }\r\n\r\n    .accordion-body strong {\r\n        color: #495057;\r\n    }\r\n\r\n    /* Responsive Design */\r\n    @media (max-width: 968px) {\r\n        .faq-wrapper {\r\n            grid-template-columns: 1fr;\r\n        }\r\n\r\n        .faq-sidebar {\r\n            position: static;\r\n        }\r\n\r\n        .page-title h1 {\r\n            font-size: 2rem;\r\n        }\r\n\r\n        .nav-pills {\r\n            flex-direction: column;\r\n        }\r\n\r\n        .nav-pills button {\r\n            width: 100%;\r\n            text-align: center;\r\n        }\r\n    }\r\n\r\n    @media (max-width: 576px) {\r\n        .page-title {\r\n            padding: 60px 0 40px;\r\n        }\r\n\r\n        .page-title h1 {\r\n            font-size: 1.75rem;\r\n        }\r\n\r\n        .faq-section {\r\n            padding: 40px 0;\r\n        }\r\n\r\n        .faq-tabs {\r\n            padding: 20px;\r\n        }\r\n    }\r\n</style>\r\n\r\n<body>\r\n    <main>\r\n        <div class=\"page-title dark-background\" data-aos=\"fade\" style=\"background-image: url(assets/img/travel/showcase-3.png);\">\r\n            <div class=\"container position-relative\">\r\n                    <h1>Frequently Asked Questions</h1>\r\n                    <p>Got questions? We\'ve got answers! Learn everything you need to know about our services.</p>\r\n                    <nav class=\"breadcrumbs\">\r\n                        <ol>\r\n                            <li><a href=\"[[~1]]\">Home</a></li>\r\n                            <li class=\"current\">FAQ</li>\r\n                        </ol>\r\n                    </nav>\r\n                </div>\r\n            </div>\r\n            <!-- FAQ Section -->\r\n            <section class=\"faq-section\">\r\n                <div class=\"container\">\r\n                    <div class=\"faq-wrapper\">\r\n                        <!-- Sidebar -->\r\n                        <div class=\"faq-sidebar\">\r\n                            <div class=\"faq-image\">\r\n                                <img src=\"assets/img/illustration/illustration-5.webp\" alt=\"FAQ Illustration\">\r\n                            </div>\r\n                            <div class=\"contact-box\">\r\n                                <h3>\r\n                                    <span>🎧</span> Need Assistance?\r\n                                </h3>\r\n                                <p>Have questions about bookings, routes, or pricing? Our team is here to help you with prompt and reliable support.</p>\r\n                                <a href=\"[[~5]]\" class=\"btn-contact\">Connect with Support</a>\r\n                            </div>\r\n                        </div>\r\n                        <div class=\"faq-tabs\">\r\n                            <!-- Tabs -->\r\n                            <div class=\"nav-pills\">\r\n                                <button class=\"tab-button active\" data-tab=\"general\">General Inquiries</button>\r\n                                <button class=\"tab-button\" data-tab=\"booking\">Booking & Reservations</button>\r\n                                <button class=\"tab-button\" data-tab=\"pricing\">Payments & Policies</button>\r\n                            </div>\r\n\r\n                            <!-- GENERAL TAB -->\r\n                            <div id=\"general-tab\" class=\"tab-content active\">\r\n                                <div class=\"faq-item\">\r\n                                    <button class=\"accordion-button\" data-target=\"q1\">How do I book a transfer?</button>\r\n                                    <div class=\"accordion-body\" id=\"q1\">\r\n                                        <p>You can book a transfer easily through our website by selecting your pickup location, destination, date, and preferred vehicle type.</p>\r\n                                    </div>\r\n                                </div>\r\n\r\n                                <div class=\"faq-item\">\r\n                                    <button class=\"accordion-button\" data-target=\"q2\">What types of vehicles are available?</button>\r\n                                    <div class=\"accordion-body\" id=\"q2\">\r\n                                        <p>We offer a range of vehicles including sedans, SUVs, vans, and luxury cars to suit your travel needs. You can choose your preferred vehicle when booking your transfer.</p>\r\n                                    </div>\r\n                                </div>\r\n\r\n                                <div class=\"faq-item\">\r\n                                    <button class=\"accordion-button\" data-target=\"q3\">Can I cancel or reschedule my booking?</button>\r\n                                    <div class=\"accordion-body\" id=\"q3\">\r\n                                        <p>Yes, you can cancel or reschedule your booking. Please contact our support team at least 24 hours before your scheduled pickup to avoid any cancellation fees.</p>\r\n                                    </div>\r\n                                </div>\r\n\r\n                                <div class=\"faq-item\">\r\n                                    <button class=\"accordion-button\" data-target=\"q4\">Is my personal data safe with SR Transfers?</button>\r\n                                    <div class=\"accordion-body\" id=\"q4\">\r\n                                        <p>Yes. We take data privacy seriously. Your personal and payment information is securely stored and used only for booking purposes. We never share your data with third parties.</p>\r\n                                    </div>\r\n                                </div>\r\n\r\n                                <div class=\"faq-item\">\r\n                                    <button class=\"accordion-button\" data-target=\"q5\">How do I contact the driver or support team?</button>\r\n                                    <div class=\"accordion-body\" id=\"q5\">\r\n                                        <p>Once your booking is confirmed, you will receive the driver’s contact details. For any assistance, our support team is available via phone, email, or the “Connect with Support” button on our website.</p>\r\n                                    </div>\r\n                                </div>\r\n                            </div>\r\n\r\n                            <!-- BOOKING TAB -->\r\n                            <div id=\"booking-tab\" class=\"tab-content\">\r\n                                <div class=\"faq-item\">\r\n                                    <button class=\"accordion-button\" data-target=\"q6\">How far in advance should I book my transfer?</button>\r\n                                    <div class=\"accordion-body\" id=\"q6\">\r\n                                        <p>We recommend booking your transfer at least 24 hours in advance to ensure vehicle availability and timely confirmation. However, same-day bookings are accepted based on availability.</p>\r\n                                    </div>\r\n                                </div>\r\n                                <div class=\"faq-item\">\r\n                                    <button class=\"accordion-button\" data-target=\"q7\">Can I change my pickup time or location after booking?</button>\r\n                                    <div class=\"accordion-body\" id=\"q7\">\r\n                                        <p>Yes, you can modify your pickup time or location by contacting our support team. Please inform us at least 12 hours before your scheduled pickup to update your booking without any extra charges.</p>\r\n                                    </div>\r\n                                </div>\r\n                            </div>\r\n\r\n                            <!-- PRICING TAB -->\r\n                            <div id=\"pricing-tab\" class=\"tab-content\">\r\n                                <div class=\"faq-item\">\r\n                                    <button class=\"accordion-button\" data-target=\"q8\">What payment methods do you accept?</button>\r\n                                    <div class=\"accordion-body\" id=\"q8\">\r\n                                        <p>We currently accept <strong>cash payments only</strong>. Please make your payment directly to the driver at the end of your transfer.</p>\r\n                                    </div>\r\n                                </div>\r\n                                <div class=\"faq-item\">\r\n                                    <button class=\"accordion-button\" data-target=\"q9\">What is your cancellation and refund policy?</button>\r\n                                    <div class=\"accordion-body\" id=\"q9\">\r\n                                        <p>You can cancel your booking at least <strong>24 hours before</strong> your scheduled pickup time with no charges. Since we accept cash payments only, no online refund process is required. If you cancel after the driver has been dispatched, a small service fee may apply.</p>\r\n                                    </div>\r\n                                </div>\r\n                            </div>\r\n                        </div>\r\n                    </div>\r\n                </div>\r\n            </section>\r\n        </div>\r\n    </main>\r\n\r\n    <script>\r\n        // TAB SWITCHING\r\n        document.querySelectorAll(\'.tab-button\').forEach(btn => {\r\n            btn.addEventListener(\'click\', () => {\r\n                document.querySelectorAll(\'.tab-button\').forEach(b => b.classList.remove(\'active\'));\r\n                document.querySelectorAll(\'.tab-content\').forEach(c => c.classList.remove(\'active\'));\r\n\r\n                btn.classList.add(\'active\');\r\n                document.getElementById(btn.dataset.tab + \'-tab\').classList.add(\'active\');\r\n            });\r\n        });\r\n\r\n        document.querySelectorAll(\'.accordion-button\').forEach(btn => {\r\n            btn.addEventListener(\'click\', () => {\r\n                const tab = btn.closest(\'.tab-content\');\r\n                const body = document.getElementById(btn.dataset.target);\r\n\r\n                // Close others\r\n                tab.querySelectorAll(\'.accordion-button\').forEach(b => b !== btn && b.classList.remove(\'active\'));\r\n                tab.querySelectorAll(\'.accordion-body\').forEach(b => b !== body && b.classList.remove(\'show\'));\r\n\r\n                // Toggle clicked\r\n                btn.classList.toggle(\'active\');\r\n                body.classList.toggle(\'show\');\r\n            });\r\n        });\r\n    </script>\r\n</body>\r\n', 1, 2, 5, 1, 1, 1, 1762929996, 1, 1763378901, 0, 0, 0, 1762930200, 1, '', 0, 0, 'MODX\\Revolution\\modDocument', 'web', 1, '', 0, 0, 1, NULL, 1),
(7, 'document', 'fleet', '', '', 'fleet', '', 1, 0, 0, 0, 0, '', '<div id=\"toast\"></div>\r\n\r\n<body class=\"destinations-page\">\r\n\r\n  <main class=\"main\">\r\n\r\n    <div class=\"page-title dark-background\" data-aos=\"fade\" style=\"background-image: url(assets/img/travel/showcase-5.png);\">\r\n      <div class=\"container position-relative\">\r\n        <h1>Our Fleet</h1>\r\n        <p>Explore our selection of reliable, comfortable vehicles for any trip.</p>\r\n        <nav class=\"breadcrumbs\">\r\n          <ol>\r\n            <li><a href=\"[[~1]]\">Home</a></li>\r\n            <li class=\"current\">Fleet</li>\r\n          </ol>\r\n        </nav>\r\n      </div>\r\n    </div>\r\n\r\n    <section id=\"fleet\" style=\"padding:5rem 0; background: #f8f9fa;\">\r\n        <div class=\"container\">\r\n            <div class=\"row fleet-row\">\r\n\r\n                <div class=\"col-md-6 vehicle-detail\">\r\n                    <div class=\"vehicle-list d-grid\" style=\"gap: 20px; display:flex; flex-direction:column;\">\r\n                        [[!ShowVehicleData]]\r\n                    </div>\r\n                </div>\r\n\r\n                <div class=\"col-md-6\">\r\n                    [[!ShowSearchData]]\r\n                    <div id=\"selectedVehicle\" class=\"mt-4\" style=\"margin-top:2%;\"></div>\r\n                </div>\r\n            </div>\r\n        </div>\r\n    </section>\r\n\r\n    <script src=\"https://cdnjs.cloudflare.com/ajax/libs/jspdf/2.5.1/jspdf.umd.min.js\"></script>\r\n    <script src=\"https://cdnjs.cloudflare.com/ajax/libs/jspdf-autotable/3.5.28/jspdf.plugin.autotable.min.js\"></script>\r\n\r\n    <style>\r\n        #selectedVehicle .card {\r\n            background: #fff;\r\n            border-radius: 15px;\r\n            box-shadow: 0 8px 20px rgba(0,0,0,0.1);\r\n            padding: 7px;\r\n            transition: transform 0.3s ease, box-shadow 0.3s ease;\r\n        }\r\n        #selectedVehicle .card:hover {\r\n            transform: translateY(-3px);\r\n            box-shadow: 0 12px 25px rgba(0,0,0,0.15);\r\n        }\r\n\r\n        #selectedVehicle .vehicle-info p {\r\n            margin: 5px 0;\r\n            font-size: 14px;\r\n            margin-bottom: 0 !important;\r\n        }\r\n\r\n        .vehicle-selected-info {\r\n            display: flex;\r\n            gap: 15px;\r\n            align-items: flex-start;\r\n        }\r\n        @media (max-width: 768px) {\r\n            .vehicle-selected-info {\r\n                flex-direction: column;\r\n                align-items: center;\r\n            }\r\n        }\r\n        .vehicle-selected-info img {\r\n            width: 22rem;\r\n            max-width: 100%;\r\n            height: auto;\r\n            border-radius: 8px;\r\n        }\r\n        .booking-form {\r\n            background: #ffffff;\r\n            border-radius: 15px;\r\n            box-shadow: 0 6px 20px rgba(0,0,0,0.1);\r\n            padding: 18px;\r\n            margin-top: 20px;\r\n        }\r\n        .booking-form h5 {\r\n            margin-bottom: 10px !important;\r\n            font-weight: 600;\r\n            color: #333;\r\n        }\r\n        .booking-form .form-group {\r\n            margin-bottom: 15px;\r\n        }\r\n        .booking-form input {\r\n            width: 100%;\r\n            padding: 10px 12px;\r\n            border-radius: 10px;\r\n            border: 1px solid #ddd;\r\n            outline: none;\r\n            transition: all 0.2s ease-in-out;\r\n        }\r\n        .booking-form input:focus {\r\n            border-color: #007bff;\r\n            box-shadow: 0 0 5px rgba(0,123,255,0.3);\r\n        }\r\n        .booking-form button {\r\n            background: linear-gradient(180deg, #0a277d, #1b289da3);\r\n            color: #fff;\r\n            font-weight: 600;\r\n            border: none;\r\n            padding: 12px;\r\n            border-radius: 10px;\r\n            width: 100%;\r\n            transition: background 0.3s ease, transform 0.2s ease;\r\n        }\r\n        .booking-form button:hover {\r\n            background: linear-gradient(135deg, #0056d2, #003d99);\r\n            transform: translateY(-2px);\r\n        }\r\n        .form-row {\r\n            display: flex;\r\n            gap: 10px;\r\n        }\r\n        @media (max-width: 768px) {\r\n            .form-row {\r\n                flex-direction: column;\r\n            }\r\n        }\r\n    </style>\r\n\r\n    <script>\r\n        document.addEventListener(\"DOMContentLoaded\", () => {\r\n\r\n            const distanceDisplay = document.getElementById(\"distanceResult\");\r\n            const returnPickup = document.getElementById(\"returnPickup\");\r\n            const returnDropoff = document.getElementById(\"returnDropoff\");\r\n\r\n            // Update total price & collect add-ons\r\n            function updateTotalPrice() {\r\n                const mainDistance = parseFloat(distanceDisplay?.dataset.mainDistance || 0);\r\n                const returnDistance = parseFloat(distanceDisplay?.dataset.returnDistance || 0);\r\n                const pricePerKm = window.selectedVehiclePricePerKm || 0;\r\n\r\n                let total = (mainDistance + returnDistance) * pricePerKm;\r\n\r\n                const addons = [];\r\n                document.querySelectorAll(\".addon:checked\").forEach(cb => {\r\n                    const qtySelect = document.querySelector(`select[name=\"addons_qty[${cb.dataset.id}]\"]`);\r\n                    const qty = qtySelect ? parseInt(qtySelect.value) : 1;\r\n                    const rate = parseFloat(cb.dataset.rate || 0);\r\n                    const addonTotal = rate * qty;\r\n                    total += addonTotal;\r\n\r\n                    addons.push({ addon_name: cb.dataset.addon_name, quantity: qty, rate, total: addonTotal });\r\n                });\r\n\r\n                const totalPriceInput = document.getElementById(\"totalPrice\");\r\n                if (totalPriceInput) totalPriceInput.value = total ? \"USD \" + total.toFixed(2) : \"\";\r\n\r\n                return { total, mainDistance, returnDistance, addons };\r\n            }\r\n\r\n            // Vehicle selection listener\r\n            document.body.addEventListener(\"click\", function(e) {\r\n                if (!e.target.classList.contains(\"select-vehicle-btn\")) return;\r\n\r\n                e.preventDefault();\r\n\r\n                const btn = e.target;\r\n                const vehicleCard = btn.closest(\".vehicle-card\");\r\n                const vehicleId = btn.dataset.id;\r\n                const name = btn.dataset.name;\r\n                const pricePerKm = parseFloat(btn.dataset.price || 0);\r\n                window.selectedVehiclePricePerKm = pricePerKm;\r\n\r\n                document.querySelectorAll(\".vehicle-card\").forEach(card => card.classList.remove(\"selected\"));\r\n                if (vehicleCard) vehicleCard.classList.add(\"selected\");\r\n\r\n                const pickupLocation = document.querySelector(\"#pickupLocation\")?.value || \"\";\r\n                const dropoffLocation = document.querySelector(\"#dropoffLocation\")?.value || \"\";\r\n                const travelDate = document.querySelector(\"#date\")?.value || \"\";\r\n\r\n                const { total, mainDistance, returnDistance, addons } = updateTotalPrice();\r\n\r\n                // Render booking form\r\n                const container = document.getElementById(\"selectedVehicle\");\r\n                container.innerHTML = `\r\n                    <form class=\"booking-form\" id=\"bookingForm\">\r\n                        <h5>Enter Your Details</h5>\r\n                        <div class=\"form-group\">\r\n                            <input type=\"text\" name=\"customerName\" placeholder=\"Full Name\" required>\r\n                        </div>\r\n                        <div class=\"form-group\">\r\n                            <input type=\"email\" name=\"email\" placeholder=\"Email Address\" required>\r\n                        </div>\r\n                        <div class=\"form-group\" style=\"display: flex; gap: 10px; flex: 1;\">\r\n                            <div style=\"flex: 0 0 40%;\">[[!ShowCountries]]</div>\r\n                            <input type=\"tel\" name=\"phone\" placeholder=\"Phone Number\" required style=\"flex: 1; padding: 10px; border-radius: 6px;\">\r\n                        </div>\r\n                        <div class=\"form-row\">\r\n                            <div class=\"form-group\" style=\"flex:1;\">\r\n                                <input type=\"text\" name=\"flightNumber\" placeholder=\"Flight Number\" required>\r\n                            </div>\r\n                        </div>\r\n                        <div class=\"form-row\">\r\n                            <div class=\"form-group\" style=\"flex:1;\">\r\n                                <input type=\"number\" name=\"numPassengers\" min=\"1\" placeholder=\"Number of Passengers\" required>\r\n                            </div>\r\n                            <div class=\"form-group\" style=\"flex:1;\">\r\n                                <input type=\"number\" name=\"numLuggage\" min=\"0\" placeholder=\"Number of Suitcases\" required>\r\n                            </div>\r\n                        </div>\r\n                        <button type=\"submit\">Submit Booking</button>\r\n                    </form>\r\n                `;\r\n\r\n                // Form submit handler\r\n                document.getElementById(\"bookingForm\").addEventListener(\"submit\", async function(ev) {\r\n                    ev.preventDefault();\r\n                    if (\r\n                        !document.querySelector(\"#pickupLocation\")?.value.trim() ||\r\n                        !document.querySelector(\"#dropoffLocation\")?.value.trim() ||\r\n                        !document.querySelector(\"#date\")?.value.trim()\r\n                    ) {\r\n                        const showToast = (msg, success = true) => {\r\n                            const toast = document.getElementById(\"toast\");\r\n                            toast.innerText = msg;\r\n                            toast.style.backgroundColor = \"#dc3545\";\r\n                            toast.className = \"show\";\r\n                            setTimeout(() => toast.className = toast.className.replace(\"show\",\"\"), 3000);\r\n                        };\r\n\r\n                        showToast(\"⚠️ Please enter pickup, dropoff and date before booking!\", false);\r\n                        return;\r\n                    }\r\n\r\n                    // Get latest distances from your Google Maps distance script\r\n                    const mainDistance = parseFloat(distanceDisplay?.dataset.mainDistance || 0);\r\n                    const returnDistance = parseFloat(distanceDisplay?.dataset.returnDistance || 0);\r\n                    const pricePerKm = window.selectedVehiclePricePerKm || 0;\r\n\r\n                    // Compute main, return, total\r\n                    let mainPrice = mainDistance * pricePerKm;\r\n                    let returnPrice = returnDistance * pricePerKm;\r\n                    let total = mainPrice + returnPrice;\r\n\r\n                    // Collect add-ons again\r\n                    const addons = [];\r\n                    document.querySelectorAll(\".addon:checked\").forEach(cb => {\r\n                        const qtySelect = document.querySelector(`select[name=\"addons_qty[${cb.dataset.id}]\"]`);\r\n                        const qty = qtySelect ? parseInt(qtySelect.value) : 1;\r\n                        const rate = parseFloat(cb.dataset.rate || 0);\r\n                        const addonTotal = rate * qty;\r\n                        total += addonTotal;\r\n                        addons.push({ addon_name: cb.dataset.addon_name, quantity: qty, rate, total: addonTotal });\r\n                    });\r\n\r\n                    const selectedCountryCode = this.country?.value || \"\";\r\n                    const fullPhone = selectedCountryCode ? `${selectedCountryCode} ${this.phone.value}` : this.phone.value;\r\n\r\n                    const formData = {\r\n                        vehicle_id: vehicleId,\r\n                        vehicle_category: name,\r\n                        customer_name: this.customerName.value,\r\n                        email: this.email.value,\r\n                        phone: fullPhone,\r\n                        flight_number: this.flightNumber.value,\r\n                        total_price: total,\r\n                        number_of_passengers: this.numPassengers.value,\r\n                        number_of_luggage: this.numLuggage.value,\r\n                        price_per_km: pricePerKm,\r\n                        main_distance_km: mainDistance,\r\n                        main_price: mainPrice,\r\n                        return_distance_km: returnDistance,\r\n                        return_price: returnPrice,\r\n                        addons: addons,\r\n                        pickup_location: document.querySelector(\"#pickupLocation\")?.value || \"\",\r\n                        dropoff_location: document.querySelector(\"#dropoffLocation\")?.value || \"\",\r\n                        return_pickup_location: returnPickup?.value || \"\",\r\n                        return_dropoff_location: returnDropoff?.value || \"\",\r\n                        travel_datetime: document.querySelector(\"#date\")?.value || \"\",\r\n                        return_datetime: document.querySelector(\"#returnDate\")?.value || \"\",   \r\n                    };\r\n\r\n                    console.log(\"Booking form data being submitted:\", formData);\r\n\r\n                    try {\r\n                        const response = await fetch(\"assets/includes/save_booking.php\", {\r\n                            method: \"POST\",\r\n                            headers: { \"Content-Type\": \"application/json\" },\r\n                            body: JSON.stringify(formData)\r\n                        });\r\n\r\n                        if (!response.ok) throw new Error(await response.text());\r\n                        const result = await response.json();\r\n                        console.log(\"Server response:\", result);\r\n\r\n                        const showToast = (msg, success = true) => {\r\n                            const toast = document.getElementById(\"toast\");\r\n                            toast.innerText = msg;\r\n                            toast.style.backgroundColor = success ? \"#28a745\" : \"#dc3545\"; \r\n                            toast.className = \"show\";\r\n                            setTimeout(() => toast.className = toast.className.replace(\"show\",\"\"), 3000);\r\n                        };\r\n\r\n                        if (result.success) {\r\n                                const bookingNumber = result.booking_number;\r\n\r\n                            showToast(\"✅ Booking saved successfully!\");\r\n\r\n                            const { jsPDF } = window.jspdf;\r\n                            const doc = new jsPDF({ format: \"a4\", unit: \"pt\" });\r\n\r\n                            const pageWidth = doc.internal.pageSize.getWidth();\r\n                            const pageHeight = doc.internal.pageSize.getHeight();\r\n\r\n                            // === Header ===\r\n                            const marginX = 25;\r\n\r\n                            const imgUrl = \"assets/img/logo.png\";\r\n                            doc.addImage(imgUrl, \"PNG\", pageWidth / 2 - 35, 20, 70, 35);\r\n\r\n                            doc.setDrawColor(200, 0, 0);\r\n                            doc.setLineWidth(1);\r\n                            doc.line(marginX, 65, pageWidth - marginX, 65);\r\n\r\n                            doc.setFont(\"helvetica\", \"bold\");\r\n                            doc.setFontSize(12);\r\n                            doc.setTextColor(0, 0, 0);\r\n                            doc.text(\"SR Transfers, Sri Lanka\", pageWidth / 2, 80, { align: \"center\" });\r\n\r\n                            doc.setFont(\"helvetica\", \"normal\");\r\n                            doc.setFontSize(9);\r\n                            doc.text(\"No. 37/15, Negombo Road, Seeduwa, Sri Lanka\", pageWidth / 2, 95, { align: \"center\" });\r\n                            doc.text(\"Phone: +94 77 778 6729 | info@srilankarentacar.lk\", pageWidth / 2, 110, { align: \"center\" });\r\n                            doc.text(`Invoice Number: ${bookingNumber}`, pageWidth / 2, 126, { align: \"center\" });\r\n\r\n                            doc.setDrawColor(0, 0, 0);\r\n                            doc.setLineWidth(0.8);\r\n                            doc.line(marginX, 130, pageWidth - marginX, 130);\r\n\r\n                            doc.setFont(\"helvetica\", \"bold\");\r\n                            doc.setFontSize(14);\r\n                            doc.setTextColor(0, 0, 0); \r\n                            doc.text(\"Invoice\", pageWidth / 2, 145, { align: \"center\" }); \r\n\r\n                            const tableColumn = [\"Description\", \"Value\"];\r\n                            const tableRows = Object.keys(formData)\r\n                            .filter(k => k !== \"vehicle_id\")\r\n                            .map(k => {\r\n                                let v = formData[k];\r\n                                if (k === \"addons\" && Array.isArray(v)) {\r\n                                v = v.map(a => `${a.addon_name} (x${a.quantity})`).join(\", \");\r\n                                }\r\n                                if (k === \"price\" && v) v = `$ ${parseFloat(v).toFixed(2)}`;\r\n                                const label = k.replace(/_/g, \" \").replace(/\\b\\w/g, c => c.toUpperCase());\r\n                                return [label, v || \"\"];\r\n                            });\r\n\r\n                            doc.autoTable({\r\n                            head: [tableColumn],\r\n                            body: tableRows,\r\n                            startY: 155,\r\n                            theme: \"grid\",\r\n                            styles: { fontSize: 10, cellPadding: 4, textColor: 0 },\r\n                            headStyles: { fillColor: [194, 0, 0], textColor: 255, halign: \"center\", fontStyle: \"bold\" },\r\n                            columnStyles: {\r\n                                0: { cellWidth: 120 },\r\n                                1: { cellWidth: pageWidth - 120 - 2 * marginX }\r\n                            },\r\n                            margin: { left: marginX, right: marginX }\r\n                            });\r\n\r\n                            const tableEndY = doc.lastAutoTable.finalY + 10;\r\n\r\n                            doc.setFont(\"helvetica\", \"bold\");\r\n                            doc.setFontSize(11);\r\n                            doc.setTextColor(200, 0, 0);\r\n                            doc.text(`Total Charge: $${parseFloat(formData.total_price || 0).toFixed(2)}`, marginX, tableEndY + 15);\r\n                            doc.setFontSize(9);\r\n                            doc.setTextColor(0, 0, 0);\r\n                            doc.text(\"**Please note: A waiting charge of $15 per hour will apply in addition to the total.\", marginX, tableEndY + 30);\r\n\r\n                            doc.setFontSize(9);\r\n                            doc.setTextColor(0, 102, 0);\r\n                            doc.text(\"• Please note: This serves as your official booking confirmation.\", marginX, tableEndY + 55);\r\n\r\n                            doc.setFontSize(10);\r\n                            doc.setTextColor(0, 0, 0);\r\n                            doc.text(\"Thank you for booking with SR Transfers!\", pageWidth / 2, pageHeight - 25, { align: \"center\" });\r\n\r\n                            // === Save PDF ===\r\n                            doc.save(`${formData.customer_name}_invoice.pdf`);\r\n                            const pdfBlob = doc.output(\"blob\");\r\n                            const formDataPdf = new FormData();\r\n                            formDataPdf.append(\"invoice\", pdfBlob, `${bookingNumber}.pdf`);\r\n                            formDataPdf.append(\"booking_number\", bookingNumber);\r\n\r\n                            await fetch(\"assets/includes/save_invoice.php\", {\r\n                                method: \"POST\",\r\n                                body: formDataPdf\r\n                            });\r\n\r\n                            this.reset();\r\n                            setTimeout(() => location.reload(), 2000);\r\n                        } else {\r\n                            showToast(\"❌ Error: \" + result.message, false);\r\n                        }\r\n\r\n                    } catch (err) {\r\n                        console.error(\"Error submitting booking:\", err);\r\n                        const showToast = (msg, success = true) => {\r\n                            const toast = document.getElementById(\"toast\");\r\n                            toast.innerText = msg;\r\n                            toast.style.backgroundColor = success ? \"#28a745\" : \"#dc3545\"; \r\n                            toast.className = \"show\";\r\n                            setTimeout(() => toast.className = toast.className.replace(\"show\",\"\"), 3000);\r\n                        };\r\n                        showToast(\"⚠️ Something went wrong while submitting the booking.\", false);\r\n                    }\r\n                });\r\n            });\r\n        });\r\n    </script>\r\n\r\n</main>\r\n</body>\r\n</html>\r\n', 1, 2, 6, 1, 1, 1, 1763092038, 1, 1763356966, 0, 0, 0, 1763092020, 1, '', 0, 0, 'MODX\\Revolution\\modDocument', 'web', 1, '', 0, 0, 1, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `modx_site_htmlsnippets`
--

CREATE TABLE `modx_site_htmlsnippets` (
  `id` int(10) UNSIGNED NOT NULL,
  `source` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `property_preprocess` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `name` varchar(50) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT 'Chunk',
  `editor_type` int(11) NOT NULL DEFAULT 0,
  `category` int(11) NOT NULL DEFAULT 0,
  `cache_type` tinyint(1) NOT NULL DEFAULT 0,
  `snippet` mediumtext DEFAULT NULL,
  `locked` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `properties` text DEFAULT NULL,
  `static` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `static_file` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `modx_site_htmlsnippets`
--

INSERT INTO `modx_site_htmlsnippets` (`id`, `source`, `property_preprocess`, `name`, `description`, `editor_type`, `category`, `cache_type`, `snippet`, `locked`, `properties`, `static`, `static_file`) VALUES
(1, 1, 0, 'footer', '', 0, 0, 0, '  <footer id=\"footer\" class=\"footer position-relative dark-background\">\n\n    <!-- <div class=\"footer-newsletter\">\n      <div class=\"container\">\n        <div class=\"row justify-content-center text-center\">\n          <div class=\"col-lg-6\">\n            <h4>Join Our Newsletter</h4>\n            <p>Join our newsletter to get the latest news, airport transfer promotions, and travel updates across Sri Lanka.</p>\n            <form action=\"forms/newsletter.php\" method=\"post\" class=\"php-email-form\">\n              <div class=\"newsletter-form\"><input type=\"email\" name=\"email\"><input type=\"submit\" value=\"Subscribe\"></div>\n              <div class=\"loading\">Loading</div>\n              <div class=\"error-message\"></div>\n              <div class=\"sent-message\">Your subscription request has been sent. Thank you!</div>\n            </form>\n          </div>\n        </div>\n      </div>\n    </div> -->\n\n    <div class=\"container footer-top\">\n      <div class=\"row gy-4\">\n        <div class=\"col-lg-4 col-md-6 footer-about\">\n          <a href=\"[[~1]]\" class=\"d-flex align-items-center mb-2\">\n            <img src=\"assets/img/logo.png\" alt=\"Tour Logo\" class=\"logo me-2\" style=\"height:40px;\">\n          </a>\n          <div class=\"footer-contact pt-3\">\n            <p>SR Transfers (Pvt) Ltd</p>\n            <p>\n                <a href=\"https://maps.app.goo.gl/AKUi53HtWCemqH8DA\" target=\"_blank\" rel=\"noopener\" class=\"text-decoration-none\">\n                371-5,<br>\n                Negombo - Colombo Main Rd,<br>\n                Seeduwa, Sri Lanka\n                </a>\n            </p>\n            <p class=\"mt-3\">\n                <strong>Phone :</strong>\n                <a href=\"tel:+94777786729\" class=\"text-decoration-none\"> +94 77 778 6729</a>\n            </p>            \n            <p>\n                <strong>Email :</strong>\n                <a href=\"mailto:info@srilankarentacar.lk\" class=\"text-decoration-none\"> info@srilankarentacar.lk</a>\n            </p>          \n        </div>\n        </div>\n\n        <div class=\"col-lg-4 col-md-3 footer-links\">\n          <h4>Useful Links</h4>\n          <ul>\n            <li><i class=\"bi bi-chevron-right\"></i> <a href=\"[[~1]]\">Home</a></li>\n            <li><i class=\"bi bi-chevron-right\"></i> <a href=\"[[~3]]\">Destinations</a></li>\n            <li><i class=\"bi bi-chevron-right\"></i> <a href=\"[[~2]]\">About Us</a></li>\n            <li><i class=\"bi bi-chevron-right\"></i> <a href=\"[[~6]]\">FAQ</a></li>\n            <li><i class=\"bi bi-chevron-right\"></i> <a href=\"[[~5]]\">Contact Us</a></li>\n          </ul>\n        </div>\n\n        <div class=\"col-lg-4 col-md-12\">\n          <h4>Follow Us</h4>\n          <div class=\"social-links d-flex\">\n            <a href=\"https://www.facebook.com/srrentacar\"><i class=\"bi bi-facebook\"></i></a>\n            <a href=\"https://www.instagram.com/srrentacarsrilanka/\"><i class=\"bi bi-instagram\"></i></a>\n            <a href=\"https://www.linkedin.com/company/sr-rent-a-car/\"><i class=\"bi bi-linkedin\"></i></a>\n          </div>\n        </div>\n\n      </div>\n    </div>\n\n    <div class=\"container copyright text-center mt-4\">\n      <p>© <strong class=\"px-1 sitename\">2025 SR Transfers (Pvt) Ltd</strong> <span>All Rights Reserved</span></p>\n    </div>\n\n  </footer>\n\n  <!-- Scroll Top -->\n  <a href=\"#\" id=\"scroll-top\" class=\"scroll-top d-flex align-items-center justify-content-center\"><i class=\"bi bi-arrow-up-short\"></i></a>', 0, 'a:0:{}', 0, ''),
(2, 1, 0, 'header', '', 0, 0, 0, '<!DOCTYPE html>\n<html lang=\"en\">\n\n<head>\n  <meta charset=\"utf-8\">\n  <meta content=\"width=device-width, initial-scale=1.0\" name=\"viewport\">\n  <title>SR Transfers (Pvt) Ltd</title>\n  <meta name=\"description\" content=\"\">\n  <meta name=\"keywords\" content=\"\">\n\n  <!-- Favicons -->\n  <link href=\"assets/img/favicon.png\" rel=\"icon\">\n\n  <!-- Fonts -->\n  <link href=\"https://fonts.googleapis.com\" rel=\"preconnect\">\n  <link href=\"https://fonts.gstatic.com\" rel=\"preconnect\" crossorigin>\n  <link href=\"https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&family=Raleway:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap\" rel=\"stylesheet\">\n<link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css\">\n\n  <!-- Vendor CSS Files -->\n  <link href=\"assets/vendor/bootstrap/css/bootstrap.min.css\" rel=\"stylesheet\">\n  <link href=\"assets/vendor/bootstrap-icons/bootstrap-icons.css\" rel=\"stylesheet\">\n  <link href=\"assets/vendor/aos/aos.css\" rel=\"stylesheet\">\n  <link href=\"assets/vendor/swiper/swiper-bundle.min.css\" rel=\"stylesheet\">\n  <link href=\"assets/vendor/glightbox/css/glightbox.min.css\" rel=\"stylesheet\">\n\n  <!-- Main CSS File -->\n  <link href=\"assets/css/main.css\" rel=\"stylesheet\">\n</head>\n\n <!-- Scroll Top -->\n  <a href=\"#\" id=\"scroll-top\" class=\"scroll-top d-flex align-items-center justify-content-center\"><i class=\"bi bi-arrow-up-short\"></i></a>\n\n  <!-- Preloader -->\n  <div id=\"preloader\"></div>\n\n  <!-- Vendor JS Files -->\n  <script src=\"assets/vendor/bootstrap/js/bootstrap.bundle.min.js\"></script>\n  <script src=\"assets/vendor/php-email-form/validate.js\"></script>\n  <script src=\"assets/vendor/aos/aos.js\"></script>\n  <script src=\"assets/vendor/purecounter/purecounter_vanilla.js\"></script>\n  <script src=\"assets/vendor/swiper/swiper-bundle.min.js\"></script>\n  <script src=\"assets/vendor/isotope-layout/isotope.pkgd.min.js\"></script>\n  <script src=\"assets/vendor/imagesloaded/imagesloaded.pkgd.min.js\"></script>\n  <script src=\"assets/vendor/glightbox/js/glightbox.min.js\"></script>\n\n  <!-- Main JS File -->\n  <script src=\"assets/js/main.js\"></script>', 0, 'a:0:{}', 0, ''),
(3, 1, 0, 'navbar', '', 0, 0, 0, '<header class=\"header\">\n    <!-- Topbar -->\n    <div class=\"topbar text-center\">\n        <p class=\"mb-0\">\n  <a href=\"https://maps.app.goo.gl/AKUi53HtWCemqH8DA\" target=\"_blank\" style=\"color:white; text-decoration: none;\">\n    <i class=\"fa fa-map-marker\" style=\"color:orange; margin-right:2px;\"></i> SR Transfers, Seeduwa | Sri Lanka\n  </a>\n  &nbsp;|&nbsp;\n  <a href=\"tel:+94777786729\" style=\"color:white; text-decoration: none;\">\n    <i class=\"fa fa-phone\" style=\"color:orange; margin-right:2px;\"></i> +94 77 778 6729\n  </a>\n  &nbsp;|&nbsp;\n  <a href=\"mailto:info@srilankarentacar.lk\" style=\"color:white; text-decoration: none;\">\n    <i class=\"fa fa-envelope\" style=\"color:orange; margin-right:2px;\"></i> info@srilankarentacar.lk\n  </a>\n</p>\n\n    </div>\n\n    <!-- Navbar -->\n    <nav class=\"navbar navbar-expand-lg navbar-light\" id=\"mainNavbar\">\n        <div class=\"container\">\n<a class=\"navbar-brand\" href=\"index.html\">\n    <!-- Default Logo -->\n    <img src=\"assets/img/logo.png\" class=\"logo-default\" alt=\"Logo\">\n\n    <!-- Scrolled Logo -->\n    <img src=\"assets/img/logo-hover.png\" class=\"logo-scrolled\" alt=\"Scrolled Logo\">\n</a>\n\n\n            <!-- Offcanvas Toggle -->\n            <button class=\"navbar-toggler\" type=\"button\" data-bs-toggle=\"offcanvas\" data-bs-target=\"#mobileMenu\">\n                <span class=\"navbar-toggler-icon\"></span>\n            </button>\n\n            <!-- Offcanvas Menu -->\n            <div class=\"offcanvas offcanvas-start text-bg-dark\" tabindex=\"-1\" id=\"mobileMenu\">\n                <div class=\"offcanvas-header\">\n                    <h5 class=\"offcanvas-title\">\n                        <img src=\"assets/img/logo.png\" alt=\"Logo\" style=\"width:100px;\">\n                    </h5>\n                    <button type=\"button\" class=\"btn-close btn-close-white\" data-bs-dismiss=\"offcanvas\"></button>\n                </div>\n                <div class=\"offcanvas-body mobile-scrollable\">\n                    <ul class=\"navbar-nav ms-auto\">\n                        <li class=\"nav-item\"><a class=\"nav-link\" href=\"[[~1]]\">HOME</a></li>\n                        <li class=\"nav-item dropdown\">\n                            <a class=\"nav-link dropdown-toggle\" href=\"#\" data-bs-toggle=\"dropdown\">FLEET</a>\n                            <div class=\"dropdown-menu fleet-menu p-3 bg-transparent border-0\">\n                                <div class=\"fleet-container\">\n                                    <!-- Fleet Items -->\n                                    <div class=\"fleet-item text-center\">\n                                        <img src=\"assets/img/navbar/1.png\" alt=\"Standard Cars\" class=\"img-fluid mb-2\">\n                                        <p class=\"mb-0 text-white\">Standard Cars</p>\n                                    </div>\n                                    <div class=\"fleet-item text-center\">\n                                        <img src=\"assets/img/navbar/6.png\" alt=\"Executive Cars\" class=\"img-fluid mb-2\">\n                                        <p class=\"mb-0 text-white\">Executive Cars</p>\n                                    </div>\n                                    <div class=\"fleet-item text-center\">\n                                        <img src=\"assets/img/navbar/3.png\" alt=\"Luxury Cars\" class=\"img-fluid mb-2\">\n                                        <p class=\"mb-0 text-white\">Luxury Cars</p>\n                                    </div>\n                                    <div class=\"fleet-item text-center\">\n                                        <img src=\"assets/img/navbar/2.png\" alt=\"People Carrier\" class=\"img-fluid mb-2\">\n                                        <p class=\"mb-0 text-white\">People Carrier</p>\n                                    </div>\n                                    <div class=\"fleet-item text-center\">\n                                        <img src=\"assets/img/navbar/5.png\" alt=\"Large People Carrier\" class=\"img-fluid mb-2\">\n                                        <p class=\"mb-0 text-white\">Large People Carrier</p>\n                                    </div>\n                                    <div class=\"fleet-item text-center\">\n                                        <img src=\"assets/img/navbar/4.png\" alt=\"Luxury Coach\" class=\"img-fluid mb-2\">\n                                        <p class=\"mb-0 text-white\">Luxury Coach</p>\n                                    </div>\n                                </div>\n                                <div class=\"text-center mt-3\">\n                                    <a href=\"[[~7]]\" class=\"btn btn-primary fleet-button\">Explore Our Fleet</a>\n                                </div>\n                            </div>\n                        </li>\n                        <li class=\"nav-item\"><a class=\"nav-link\" href=\"[[~3]]\">DESTINATIONS</a></li>\n                        <li class=\"nav-item\"><a class=\"nav-link\" href=\"[[~2]]\">ABOUT US</a></li>\n                        <li class=\"nav-item\"><a class=\"nav-link\" href=\"[[~6]]\">FAQ</a></li>\n                        <li class=\"nav-item\"><a class=\"nav-link\" href=\"[[~5]]\">CONTACT US</a></li>\n                    </ul>\n                </div>\n            </div>\n        </div>\n    </nav>\n</header>\n\n<script>\n    window.addEventListener(\'scroll\', function() {\n        const header = document.querySelector(\'.header\');\n            if (window.scrollY > 50) {\n            header.classList.add(\'scrolled\');\n            } else {\n            header.classList.remove(\'scrolled\');\n        }\n    });\n</script>\n\n', 0, 'a:0:{}', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `modx_site_plugins`
--

CREATE TABLE `modx_site_plugins` (
  `id` int(10) UNSIGNED NOT NULL,
  `source` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `property_preprocess` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `name` varchar(50) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `editor_type` int(11) NOT NULL DEFAULT 0,
  `category` int(11) NOT NULL DEFAULT 0,
  `cache_type` tinyint(1) NOT NULL DEFAULT 0,
  `plugincode` mediumtext NOT NULL,
  `locked` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `properties` text DEFAULT NULL,
  `disabled` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `moduleguid` varchar(32) NOT NULL DEFAULT '',
  `static` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `static_file` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `modx_site_plugin_events`
--

CREATE TABLE `modx_site_plugin_events` (
  `pluginid` int(10) NOT NULL DEFAULT 0,
  `event` varchar(191) NOT NULL DEFAULT '',
  `priority` int(10) NOT NULL DEFAULT 0,
  `propertyset` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `modx_site_snippets`
--

CREATE TABLE `modx_site_snippets` (
  `id` int(10) UNSIGNED NOT NULL,
  `source` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `property_preprocess` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `name` varchar(50) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `editor_type` int(11) NOT NULL DEFAULT 0,
  `category` int(11) NOT NULL DEFAULT 0,
  `cache_type` tinyint(1) NOT NULL DEFAULT 0,
  `snippet` mediumtext DEFAULT NULL,
  `locked` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `properties` text DEFAULT NULL,
  `moduleguid` varchar(32) NOT NULL DEFAULT '',
  `static` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `static_file` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `modx_site_snippets`
--

INSERT INTO `modx_site_snippets` (`id`, `source`, `property_preprocess`, `name`, `description`, `editor_type`, `category`, `cache_type`, `snippet`, `locked`, `properties`, `moduleguid`, `static`, `static_file`) VALUES
(1, 1, 0, 'GoogleReviews', '', 0, 0, 0, '$apiKey = \'AIzaSyBl50Q8W4ZF2_EkOJ1lnRoVxO1IdjIupjM\';\n$placeId = \'ChIJb-sUn7Px4joR5tfdECCYM1o\';\n$cacheFile = MODX_BASE_PATH . \'assets/cache/google_reviews_cache.json\';\n$cacheTtl = 60 * 60 * 6; // 6 hours\n\n// Load from cache if still fresh\nif (file_exists($cacheFile) && (time() - filemtime($cacheFile) < $cacheTtl)) {\n    $data = json_decode(file_get_contents($cacheFile), true);\n} else {\n    $url = \"https://maps.googleapis.com/maps/api/place/details/json?place_id=\"\n        . urlencode($placeId)\n        . \"&fields=name,rating,user_ratings_total,reviews,formatted_address,website\"\n        . \"&key=\" . urlencode($apiKey);\n\n    $opts = [\"http\" => [\"timeout\" => 10]];\n    $context = stream_context_create($opts);\n    $json = @file_get_contents($url, false, $context);\n\n    if ($json !== false) {\n        $data = json_decode($json, true);\n        if ($data) {\n            file_put_contents($cacheFile, json_encode($data));\n        }\n    }\n}\n\n$output = \'\';\n$reviews = $data[\'result\'][\'reviews\'] ?? [];\n\nif (!empty($reviews)) {\n    foreach ($reviews as $r) {\n        $avatarUrl = $modx->getOption(\'site_url\') . \'assets/components/review_proxy.php?url=\' . urlencode($r[\'profile_photo_url\']);\n        $text = htmlspecialchars($r[\'text\'] ?? \'\');\n        $name = htmlspecialchars($r[\'author_name\'] ?? \'Anonymous\');\n        $rating = intval($r[\'rating\'] ?? 0);\n        $time = htmlspecialchars($r[\'relative_time_description\'] ?? \'\');\n\n        // Create star rating icons\n        $stars = str_repeat(\'<i class=\"bi bi-star-fill text-warning\"></i>\', $rating);\n        $stars .= str_repeat(\'<i class=\"bi bi-star text-warning\"></i>\', 5 - $rating);\n\n        $output .= \'\n        <div class=\"swiper-slide\">\n          <div class=\"testimonial-item\">\n            <p>\n              <i class=\"bi bi-quote quote-icon-left\"></i>\n              \' . $text . \'\n              <i class=\"bi bi-quote quote-icon-right\"></i>\n            </p>\n            <div class=\"profile mt-auto\">\n              <img src=\"\' . $avatarUrl . \'\" class=\"testimonial-img\" alt=\"\' . $name . \'\">\n              <h3>\' . $name . \'</h3>\n              <h4>\' . $stars . \' &nbsp; <small class=\"text-muted\">\' . $time . \'</small></h4>\n            </div>\n          </div>\n        </div>\';\n    }\n} else {\n    $output = \'<div class=\"swiper-slide\"><p class=\"text-center\">No reviews available yet.</p></div>\';\n}\n\nreturn $output;', 0, 'a:0:{}', '', 0, ''),
(2, 1, 0, 'ShowSearchData', '', 0, 0, 0, 'if (session_status() == PHP_SESSION_NONE) {\n    session_start();\n}\n\n// Handle form submission\nif (!empty($_POST)) {\n    unset($_SESSION[\'searchData\']);\n\n    $_SESSION[\'searchData\'] = [\n        \'pickup\'        => $_POST[\'pickupLocation\'] ?? \'\',\n        \'dropoff\'       => $_POST[\'dropoffLocation\'] ?? \'\',\n        \'date\'          => $_POST[\'date\'] ?? \'\',\n        \'returnPickup\'  => $_POST[\'returnPickup\'] ?? \'\',\n        \'returnDropoff\' => $_POST[\'returnDropoff\'] ?? \'\',\n        \'returnDate\'    => $_POST[\'returnDate\'] ?? \'\',\n        \'isRoundtrip\'   => isset($_POST[\'roundtripCheck\']) ? 1 : 0\n    ];\n}\n\n// Retrieve stored search data\n$data          = $_SESSION[\'searchData\'] ?? [];\n$pickup        = htmlspecialchars($data[\'pickup\'] ?? \'\');\n$dropoff       = htmlspecialchars($data[\'dropoff\'] ?? \'\');\n$date          = htmlspecialchars($data[\'date\'] ?? \'\');\n$returnPickup  = htmlspecialchars($data[\'returnPickup\'] ?? \'\');\n$returnDropoff = htmlspecialchars($data[\'returnDropoff\'] ?? \'\');\n$returnDate    = htmlspecialchars($data[\'returnDate\'] ?? \'\');\n$isRoundtrip   = !empty($data[\'isRoundtrip\']);\n\n// Fetch Add-ons from DB\n$conn = include MODX_BASE_PATH . \'assets/includes/db_connect.php\';\ntry {\n    $addons = $conn->query(\"SELECT `id`, `addon_name`, `rate` FROM `addons` ORDER BY `id` ASC\")\n                   ->fetchAll(PDO::FETCH_ASSOC);\n} catch (PDOException $e) {\n    $addons = [];\n}\n?>\n\n<style>\n    .search-summary-form { background:#fff; border-radius:20px; padding:20px; box-shadow:0 6px 20px rgba(0,0,0,0.1); position:relative; }\n    .search-summary-form h5 { text-align:center; margin:0 0 12px; font-weight:600; color:#333; }\n    .search-summary-form .row { display:flex; flex-direction:column; gap:12px; }\n    .search-summary-form .col { width:100%; }\n    @media(min-width:992px) {\n        .search-summary-form .row { flex-direction:row; gap:15px; }\n        .search-summary-form .col { flex:1; }\n    }\n    .form-group label{ font-weight:600; font-size:14px; display:block; margin-bottom:6px;}\n    .search-summary-form input, .search-summary-form select { width:100%; padding:10px 12px; border-radius:10px; border:1px solid #ddd; }\n    .map-wrapper { width:100%; height:200px; border-radius:15px; overflow:hidden; box-shadow:0 6px 20px rgba(0,0,0,0.08); background:#eaeaea; }\n    .map-wrapper.large { height:250px !important; }\n    #distanceResult { text-align:center; font-weight:600; color:#04366b; margin-top:6px; margin-bottom:6px; }\n</style>\n\n<form class=\"search-summary-form text-start\" method=\"post\" id=\"searchForm\">\n\n    <h5><i class=\"fa fa-search\"></i> Your Search Details</h5>\n\n    <!-- Main Trip -->\n    <div class=\"row\" style=\"position: relative;\">\n        <div class=\"col form-group\">\n            <label for=\"pickupLocation\">Pickup Airport <span class=\"text-danger\">*</span></label>\n            <input type=\"text\" id=\"pickupLocation\" name=\"pickupLocation\" value=\"<?= $pickup ?>\" required>\n        </div>\n\n        <div class=\"col form-group\">\n            <label for=\"dropoffLocation\">Dropoff Location <span class=\"text-danger\">*</span></label>\n            <input type=\"text\" id=\"dropoffLocation\" name=\"dropoffLocation\" value=\"<?= $dropoff ?>\" required>\n        </div>\n    </div>\n\n    <div class=\"row\" style=\"margin-top:10px;\">\n        <div class=\"col form-group\">\n            <label for=\"date\">Travel Date <span class=\"text-danger\">*</span></label>\n            <input type=\"datetime-local\" id=\"date\" name=\"date\" value=\"<?= $date ?>\" required>\n        </div>\n        <div class=\"col form-group\">\n            <label for=\"totalPrice\">Estimated Price</label>\n            <input type=\"text\" id=\"totalPrice\" name=\"totalPrice\" value=\"\" readonly style=\"background:#f1f1f1; font-weight:600;\">\n        </div>\n    </div>\n\n    <div class=\"form-check\" style=\"margin:12px 0;\">\n        <input type=\"checkbox\" class=\"form-check-input\" id=\"roundtripCheck\" name=\"roundtripCheck\" <?= $isRoundtrip ? \"checked\" : \"\" ?> style=\"width: auto;\">\n        <label for=\"roundtripCheck\" style=\"margin-left:8px; font-weight:600\">Round Trip</label>\n    </div>\n\n    <hr>\n\n    <div id=\"returnDetails\" style=\"display:<?= $isRoundtrip ? \'block\' : \'none\' ?>\">\n        <div class=\"row\">\n            <div class=\"col form-group\">\n                <label for=\"returnPickup\">Return Pickup Location</label>\n                <input type=\"text\" id=\"returnPickup\" name=\"returnPickup\" value=\"<?= $returnPickup ?>\">\n            </div>\n            <div class=\"col form-group\">\n                <label for=\"returnDropoff\">Return Drop-off Location</label>\n                <input type=\"text\" id=\"returnDropoff\" name=\"returnDropoff\" value=\"<?= $returnDropoff ?>\">\n            </div>\n        </div>\n\n        <div class=\"form-group\" style=\"margin-top:10px;\">\n            <label for=\"returnDate\">Return Date</label>\n            <input type=\"datetime-local\" id=\"returnDate\" name=\"returnDate\" value=\"<?= $returnDate ?>\" style=\"width: 50%;\">\n        </div>\n    </div>\n\n    <hr>\n\n    <!-- Add-ons -->\n    <?php if ($addons): ?>\n        <div class=\"form-group\">\n            <label style=\"font-weight:600;\">Select Add-ons</label>\n            <div style=\"display:grid; gap:10px;\">\n                <?php foreach ($addons as $a): $id = (int)$a[\'id\']; $rate = (float)$a[\'rate\']; $name = htmlspecialchars($a[\'addon_name\']); ?>\n                <label style=\"display:flex;align-items:center;justify-content:space-between;white-space:nowrap;\">\n                    <span style=\"display:flex;align-items:center;gap:8px;\">\n                        <input type=\"checkbox\" class=\"addon\" data-id=\"<?= $id ?>\" name=\"addons[]\" value=\"<?= $id ?>\" data-rate=\"<?= $rate ?>\" data-addon_name=\"<?= $name ?>\">\n                        <?= $name ?> (+$ <?= number_format($rate, 2) ?>)\n                    </span>\n                    <select name=\"addons_qty[<?= $id ?>]\" class=\"qty\" style=\"padding:3px 6px;border-radius:4px;width:20%;\" disabled>\n                        <?php for($i=1; $i<=3; $i++): ?>\n                            <option value=\"<?= $i ?>\"><?= $i ?></option>\n                        <?php endfor; ?>\n                    </select>\n                </label>\n                <?php endforeach; ?>\n            </div>\n        </div>\n    <?php endif; ?>\n\n    <hr style=\"margin:15px 0;\">\n\n    <div id=\"distanceResult\" style=\"display:none;\"></div>\n\n    <div class=\"map-wrapper\" id=\"mapWrapper\">\n        <div id=\"routeMap\" style=\"width:100%; height:100%;\"></div>\n    </div>\n</form>\n\n<script src=\"https://maps.googleapis.com/maps/api/js?key=AIzaSyBl50Q8W4ZF2_EkOJ1lnRoVxO1IdjIupjM&libraries=places\"></script>\n\n<script>\n    document.addEventListener(\"DOMContentLoaded\", function() {\n        const pickupInput = document.getElementById(\"pickupLocation\");\n        const dropoffInput = document.getElementById(\"dropoffLocation\");\n        const returnPickup = document.getElementById(\"returnPickup\");\n        const returnDropoff = document.getElementById(\"returnDropoff\");\n        const roundtripCheck = document.getElementById(\"roundtripCheck\");\n        const returnDetails = document.getElementById(\"returnDetails\");\n        const distanceDisplay = document.getElementById(\"distanceResult\");\n        const totalPriceInput = document.getElementById(\"totalPrice\");\n        const mapWrapper = document.getElementById(\"mapWrapper\");\n        const mapEl = document.getElementById(\"routeMap\");\n\n        let directionsRendererMain;\n        let directionsRendererReturn;\n\n        let map, directionsService, directionsRenderer;\n        let mainDistance = 0, mainDuration = \"\";\n        let returnDistance = 0, returnDuration = \"\";\n        let pricePerKm = 0;\n\n        function initMap() {\n            map = new google.maps.Map(mapEl, { zoom: 7, center: { lat: 7.8731, lng: 80.7718 } });\n            directionsService = new google.maps.DirectionsService();\n            directionsRendererMain = new google.maps.DirectionsRenderer({\n                suppressMarkers: false,\n                polylineOptions: { strokeColor: \"#1A73E8\", strokeWeight: 5 }\n            });\n            directionsRendererMain.setMap(map);\n\n            directionsRendererReturn = new google.maps.DirectionsRenderer({\n                suppressMarkers: false,\n                polylineOptions: { strokeColor: \"#34A853\", strokeWeight: 5 }\n            });\n            directionsRendererReturn.setMap(map);\n        }\n\n        function initAutocomplete() {\n            const options = { componentRestrictions: { country: \"lk\" } };\n            new google.maps.places.Autocomplete(pickupInput, options).addListener(\"place_changed\", calculateAll);\n            new google.maps.places.Autocomplete(dropoffInput, options).addListener(\"place_changed\", calculateAll);\n            if (returnPickup) new google.maps.places.Autocomplete(returnPickup, options).addListener(\"place_changed\", calculateAll);\n            if (returnDropoff) new google.maps.places.Autocomplete(returnDropoff, options).addListener(\"place_changed\", calculateAll);\n        }\n\n        initMap();\n        initAutocomplete();\n\n        async function getDistance(origin, destination) {\n            return new Promise(resolve => {\n                if (!origin || !destination) return resolve({ km:0, duration:\"\" });\n                const service = new google.maps.DistanceMatrixService();\n                service.getDistanceMatrix({\n                    origins: [origin],\n                    destinations: [destination],\n                    travelMode: google.maps.TravelMode.DRIVING,\n                    unitSystem: google.maps.UnitSystem.METRIC\n                }, (response, status) => {\n                    if (status === \"OK\") {\n                        const elem = response.rows[0].elements[0];\n                        if (elem.status === \"OK\") {\n                            let km = parseFloat(elem.distance.text.replace(\" km\", \"\"));\n                            let dur = elem.duration.text;\n                            return resolve({ km, duration: dur });\n                        }\n                    }\n                    resolve({ km:0, duration:\"\" });\n                });\n            });\n        }\n\n        async function showRouteMain(origin, destination) {\n            if (!origin || !destination) return;\n            return new Promise(resolve => {\n                directionsService.route({\n                    origin,\n                    destination,\n                    travelMode: google.maps.TravelMode.DRIVING\n                }, (result, status) => {\n                    if (status === \"OK\") {\n                        directionsRendererMain.setDirections(result);\n                    }\n                    resolve();\n                });\n            });\n        }\n\n        async function showRouteReturn(origin, destination) {\n            if (!origin || !destination) return;\n            return new Promise(resolve => {\n                directionsService.route({\n                    origin,\n                    destination,\n                    travelMode: google.maps.TravelMode.DRIVING\n                }, (result, status) => {\n                    if (status === \"OK\") {\n                        directionsRendererReturn.setDirections(result);\n                    }\n                    resolve();\n                });\n            });\n        }\n\n        async function calculateAll() {\n            const p1 = pickupInput.value.trim();\n            const d1 = dropoffInput.value.trim();\n\n            const main = await getDistance(p1, d1);\n            mainDistance = main.km;\n            mainDuration = main.duration;\n            if (mainDistance > 0) await showRouteMain(p1, d1);\n\n            if (roundtripCheck.checked) {\n                const rp = returnPickup.value.trim();\n                const rd = returnDropoff.value.trim();\n                const ret = await getDistance(rp, rd);\n                returnDistance = ret.km;\n                returnDuration = ret.duration;\n                if (returnDistance > 0) await showRouteReturn(rp, rd);\n\n            } else {\n                returnDistance = 0;\n                returnDuration = \"\";\n            }\n\n            updateDisplay();\n        }\n\n        function updateDisplay() {\n            if (mainDistance <= 0) return;\n            distanceDisplay.style.display = \"block\";\n\n            distanceDisplay.dataset.mainDistance = mainDistance;\n            distanceDisplay.dataset.returnDistance = returnDistance;\n\n            let html = `🚗 Main Trip: <strong>${mainDistance.toFixed(1)} km</strong> • ${mainDuration}`;\n            if (roundtripCheck.checked && returnDistance > 0) {\n                html += `<br>🔁 Return Trip: <strong>${returnDistance.toFixed(1)} km</strong> • ${returnDuration}`;\n                html += `<br>📏 Total Distance: <strong>${(mainDistance + returnDistance).toFixed(1)} km</strong>`;\n            }\n            distanceDisplay.innerHTML = html;\n            updateTotalPrice();\n        }\n\n\n        function updateTotalPrice() {\n            let totalKm = mainDistance + (returnDistance || 0); \n            let total = totalKm * pricePerKm;\n\n            document.querySelectorAll(\".addon:checked\").forEach(cb => {\n                const rate = parseFloat(cb.dataset.rate) || 0;\n                const qtySel = document.querySelector(`select[name=\"addons_qty[${cb.dataset.id}]\"]`);\n                const qty = qtySel ? parseInt(qtySel.value) : 1;\n                total += rate * qty;\n            });\n\n            totalPriceInput.value = total ? \"$ \" + total.toFixed(2) : \"\";\n        }\n\n        // Vehicle selection buttons\n        document.querySelectorAll(\".select-vehicle-btn\").forEach(btn => {\n            btn.addEventListener(\"click\", async () => {\n                pricePerKm = parseFloat(btn.dataset.price);\n                document.querySelectorAll(\".select-vehicle-btn\").forEach(b => b.classList.remove(\"active\"));\n                btn.classList.add(\"active\");\n                document.querySelectorAll(\".addon\").forEach(cb => {\n                    cb.checked = false;\n                    const qtySel = document.querySelector(`select[name=\"addons_qty[${cb.dataset.id}]\"]`);\n                    if(qtySel){ qtySel.disabled = true; qtySel.value = 1; }\n                });\n                await calculateAll();  \n                updateTotalPrice(); \n            });\n        });\n\n        // Inputs change listeners\n        pickupInput.addEventListener(\"change\", calculateAll);\n        dropoffInput.addEventListener(\"change\", calculateAll);\n        if(returnPickup) returnPickup.addEventListener(\"change\", calculateAll);\n        if(returnDropoff) returnDropoff.addEventListener(\"change\", calculateAll);\n\n        roundtripCheck.addEventListener(\"change\", () => {\n            returnDetails.style.display = roundtripCheck.checked ? \"block\" : \"none\";\n            calculateAll();\n        });\n\n        // Add-ons listeners\n        document.querySelectorAll(\".addon\").forEach(cb => {\n            cb.addEventListener(\"change\", () => {\n                const qtySelect = document.querySelector(`select[name=\"addons_qty[${cb.dataset.id}]\"]`);\n                if (qtySelect) qtySelect.disabled = !cb.checked;\n                updateTotalPrice();\n            });\n        });\n        document.querySelectorAll(\"select.qty\").forEach(sel => {\n            sel.addEventListener(\"change\", updateTotalPrice);\n        });\n\n        if(pickupInput.value && dropoffInput.value) calculateAll();\n    });\n</script>\n\n\n<?php return \'\';', 0, 'a:0:{}', '', 0, ''),
(3, 1, 0, 'ClearSearchSession', '', 0, 0, 0, 'if(session_status() == PHP_SESSION_NONE) {\n    session_start();\n}\n\n// Clear the search session data\nunset($_SESSION[\'searchData\']);\nreturn \'\';', 0, 'a:0:{}', '', 0, ''),
(4, 1, 0, 'ShowAddons', '', 0, 0, 0, '$conn = include MODX_BASE_PATH . \'assets/includes/db_connect.php\';\n\ntry {\n    $addons = $conn->query(\"SELECT `id`, `addon_name`, `rate` FROM `addons` ORDER BY `id` ASC\")\n                   ->fetchAll(PDO::FETCH_ASSOC);\n\n    if (!$addons) return \'<p>No add-ons found.</p>\';\n\n    $out = \'<div class=\"form-group\"><label style=\"font-weight:600;\">Select Add-ons</label>\n            <div style=\"display:grid; gap:10px;\">\';\n\n    foreach ($addons as $a) {\n        $id = (int)$a[\'id\'];\n        $rate = (float)$a[\'rate\'];\n        $name = htmlspecialchars($a[\'addon_name\']);\n        $out .= \"<label style=\'display:flex;align-items:center;justify-content:space-between;white-space:nowrap;\'>\n            <span style=\'display:flex;align-items:center;gap:8px;\'>\n                <input type=\'checkbox\' class=\'addon\' \n                       data-id=\'$id\' \n                       name=\'addons[]\' \n                       value=\'$id\' \n                       data-rate=\'$rate\' \n                       data-addon_name=\'$name\'>\n                $name (+$ \" . number_format($rate, 2) . \")\n            </span>\n            <select name=\'addons_qty[{$id}]\' class=\'qty\' style=\'padding:3px 6px;border-radius:4px;width:20%;\' disabled>\";\n\n        for ($i=1; $i<=3; $i++) $out .= \"<option value=\'$i\'>$i</option>\";\n        $out .= \"</select></label>\";\n    }\n\n\n    $out .= \'</div></div>\n    <script>\n    document.addEventListener(\"DOMContentLoaded\",()=> {\n        document.querySelectorAll(\".addon\").forEach(cb=>{\n            cb.addEventListener(\"change\",()=>{\n                const s=document.querySelector(`select[name=\"addons_qty[${cb.dataset.id}]\"]`);\n                if(s) s.disabled=!cb.checked;\n            });\n        });\n    });\n    </script>\';\n\n    return $out;\n\n} catch (PDOException $e) {\n    return \"<p style=\'color:red;\'>Database error: {$e->getMessage()}</p>\";\n}', 0, 'a:0:{}', '', 0, ''),
(5, 1, 0, 'ShowVehicleData', '', 0, 0, 0, 'include_once MODX_BASE_PATH . \'assets/includes/db_connect.php\';\n\ntry {\n    $stmt = $conn->query(\"SELECT * FROM `vehicles` ORDER BY sort_order ASC\");\n    $vehicles = $stmt->fetchAll(PDO::FETCH_ASSOC);\n\n    if ($vehicles) {\n        foreach ($vehicles as $vehicle) {\n            $hiddenClass = ($vehicle[\'id\'] > 6) ? \'hidden-vehicle\' : \'\';\n            echo \'<div class=\"vehicle-card-fleet \' . $hiddenClass . \'\">\';\n            \n            // Vehicle image\n            echo \'<div class=\"vehicle-image\">\';\n            echo \'<img src=\"assets/img/vehicles/\' . htmlspecialchars($vehicle[\'image\']) . \'\" alt=\"\' . htmlspecialchars($vehicle[\'name\']) . \'\" style=\"width:100%; border-radius:10px;\">\';\n            echo \'</div>\';\n\n            // Vehicle details\n            echo \'<div class=\"vehicle-details\">\';\n            echo \'<h5>\' . htmlspecialchars($vehicle[\'name\']) . \'</h5>\';\n            echo \'<p><i class=\"fa fa-user\"></i> \' . intval($vehicle[\'passengers\']) . \' Passengers</p>\';\necho \'<p><i class=\"fa fa-suitcase\"></i> \' \n    . intval($vehicle[\'large_suitcases\']) . \' Large | \' \n    . intval($vehicle[\'medium_suitcases\']) . \' Medium Suitcases</p>\';\n            echo \'</div>\';\n\n            // Vehicle price & total\n            echo \'<div class=\"vehicle-price text-end\">\';\n            echo \'<h4 class=\"estimated-total\" id=\"total-price-\' . intval($vehicle[\'id\']) . \'\" style=\"font-weight:600;color:#04366b;display:none; font-size:18px;\">Total: </h4>\';\n            echo \'<p style=\"color:black; font-weight:600; margin-bottom:0;\">$\' . number_format($vehicle[\'price\'], 2) . \' <small style=\"font-size:0.7em; font-weight:800; color:black;\">per KM</small></p>\';\n            echo \'<p class=\"text-success fw-bold\">Free Cancellation</p>\';\n\n            // Select button\n            echo \'<button class=\"btn btn-primary mt-2 select-vehicle-btn\"\n                data-id=\"\' . intval($vehicle[\'id\']) . \'\"\n                data-name=\"\' . htmlspecialchars($vehicle[\'name\']) . \'\"\n                data-price=\"\' . number_format($vehicle[\'price\'], 2, \'.\', \'\') . \'\">\n                Select Vehicle\n            </button>\';\n\n            echo \'</div>\'; // vehicle-price\n            echo \'</div>\'; // vehicle-card\n        }\n    } else {\n        echo \'<p>No vehicles found.</p>\';\n    }\n\n} catch (PDOException $e) {\n    echo \'<p style=\"color:red;\">Database error: \' . $e->getMessage() . \'</p>\';\n}\n?>\n\n<script>\n    document.addEventListener(\"DOMContentLoaded\", function() {\n        const pickupInput = document.getElementById(\"pickupLocation\");\n        const dropoffInput = document.getElementById(\"dropoffLocation\");\n        const returnPickup = document.getElementById(\"returnPickup\");\n        const returnDropoff = document.getElementById(\"returnDropoff\");\n        const roundtripCheck = document.getElementById(\"roundtripCheck\");\n        const distanceDisplay = document.getElementById(\"distanceResult\");\n\n        let mainDistance = 0, returnDistance = 0, mainDuration = \'\', returnDuration = \'\';\n        let selectedVehicleId = null;\n\n        function getDistance(origin, dest) {\n            return new Promise(resolve => {\n                if (!origin || !dest) return resolve({ km: 0, duration: \'\' });\n                const service = new google.maps.DistanceMatrixService();\n                service.getDistanceMatrix({\n                    origins: [origin],\n                    destinations: [dest],\n                    travelMode: google.maps.TravelMode.DRIVING,\n                    unitSystem: google.maps.UnitSystem.METRIC\n                }, (response, status) => {\n                    if (status === \"OK\") {\n                        const elem = response.rows[0].elements[0];\n                        if (elem.status === \"OK\") {\n                            const km = parseFloat(elem.distance.text.replace(\" km\",\"\"));\n                            resolve({ km, duration: elem.duration.text });\n                            return;\n                        }\n                    }\n                    resolve({ km: 0, duration: \'\' });\n                });\n            });\n        }\n\n        async function calculateAll() {\n            const mainOrigin = pickupInput.value.trim();\n            const mainDest = dropoffInput.value.trim();\n            if (!mainOrigin || !mainDest) return;\n\n            const mainRes = await getDistance(mainOrigin, mainDest);\n            mainDistance = mainRes.km;\n            mainDuration = mainRes.duration;\n\n            if (roundtripCheck.checked) {\n                const retOrigin = returnPickup.value.trim();\n                const retDest = returnDropoff.value.trim();\n                if (retOrigin && retDest) {\n                    const retRes = await getDistance(retOrigin, retDest);\n                    returnDistance = retRes.km;\n                    returnDuration = retRes.duration;\n                } else {\n                    returnDistance = 0;\n                    returnDuration = \'\';\n                }\n            } else {\n                returnDistance = 0;\n                returnDuration = \'\';\n            }\n\n            updateDisplay();\n            updateAllVehiclePrices();\n        }\n\n        function updateDisplay() {\n            if (mainDistance <= 0) {\n                distanceDisplay.style.display = \'none\';\n                return;\n            }\n            distanceDisplay.style.display = \'block\';\n\n            let html = \'\';\n            if (roundtripCheck.checked && returnDistance > 0) {\n                html += `<div style=\"display:flex; justify-content:space-around; gap:20px;\">\n                            <div>🚗 Main Trip: <strong>${mainDistance.toFixed(1)} km</strong> • ${mainDuration}</div>\n                            <div>🔁 Return Trip: <strong>${returnDistance.toFixed(1)} km</strong> • ${returnDuration}</div>\n                        </div>`;\n                html += `<div style=\"text-align:center; margin-top:5px;\">📏 Total Distance: <strong>${(mainDistance + returnDistance).toFixed(1)} km</strong></div>`;\n            } else {\n                html = `🚗 Main Trip: <strong>${mainDistance.toFixed(1)} km</strong> • ${mainDuration}`;\n            }\n            distanceDisplay.innerHTML = html;\n        }\n\n        function updateAllVehiclePrices() {\n            if (mainDistance <= 0) return;\n            const totalKm = mainDistance + returnDistance;\n\n            document.querySelectorAll(\'.vehicle-card-fleet\').forEach(card => {\n                const pricePerKm = parseFloat(card.querySelector(\'.select-vehicle-btn\').dataset.price) || 0;\n                const total = totalKm * pricePerKm;\n                const totalEl = card.querySelector(\'.estimated-total\');\n                if (totalEl) {\n                    totalEl.innerHTML = \'Total: $ \' + total.toFixed(2);\n                    totalEl.style.display = \'block\';\n                }\n\n                // Highlight selected vehicle\n                const vehicleId = card.querySelector(\'.select-vehicle-btn\').dataset.id;\n                if (vehicleId == selectedVehicleId) {\n                    card.style.border = \'2px solid #04366b\';\n                    card.style.boxShadow = \'0 4px 15px rgba(0,0,0,0.2)\';\n                } else {\n                    card.style.border = \'1px solid #ddd\';\n                    card.style.boxShadow = \'0 2px 6px rgba(0,0,0,0.1)\';\n                }\n            });\n        }\n\n        // Handle vehicle selection\n        document.querySelectorAll(\'.select-vehicle-btn\').forEach(btn => {\n            btn.addEventListener(\'click\', function() {\n                selectedVehicleId = this.dataset.id;\n                updateAllVehiclePrices();\n            });\n        });\n\n        // Recalculate distances on input changes\n        [pickupInput, dropoffInput, returnPickup, returnDropoff].forEach(input => {\n            input.addEventListener(\'change\', calculateAll);\n        });\n        roundtripCheck.addEventListener(\'change\', calculateAll);\n\n        calculateAll(); \n    });\n</script>\n\n<?php return \'\';', 0, 'a:0:{}', '', 0, ''),
(6, 1, 0, 'ShowCountries', '', 0, 0, 0, '$conn = include MODX_BASE_PATH . \'assets/includes/db_connect.php\';\n\ntry {\n    $stmt = $conn->query(\"SELECT country_name, country_code FROM country_codes ORDER BY country_name ASC\");\n    $countries = $stmt->fetchAll(PDO::FETCH_ASSOC);\n    if (!$countries) return \'<p>No countries found.</p>\';\n\n    $selectedCode = isset($selected) ? strtoupper(trim($selected)) : \'\';\n    $output = \'<div class=\"form-group\" style=\"margin-bottom:0;\">\n        <select id=\"country\" name=\"country\" style=\"width:100%;padding:8px;border-radius:6px;border:1px solid #ccc;\">\n            <option value=\"\">-- Choose a Country --</option>\';\n\n    foreach ($countries as $c) {\n        $name = htmlspecialchars($c[\'country_name\']);\n        $code = htmlspecialchars(strtoupper($c[\'country_code\']));\n        $sel = $code === $selectedCode ? \' selected\' : \'\';\n        $output .= \"<option value=\'$code\'$sel>$name ($code)</option>\";\n    }\n\n    return $output . \'</select></div>\';\n} catch (PDOException $e) {\n    return \"<p style=\'color:red;\'>Database error: {$e->getMessage()}</p>\";\n}', 0, 'a:0:{}', '', 0, ''),
(7, 1, 0, 'getFleetVehicles', '', 0, 0, 0, '// Load your custom DB connection\n$db = include MODX_BASE_PATH . \"assets/includes/db_connect.php\";\n\n// Check DB connection\nif (!$db || !($db instanceof PDO)) {\n    return \"<strong>DB ERROR:</strong> Could not connect to the database.\";\n}\n\ntry {\n    // Get vehicles\n    $stmt = $db->query(\"SELECT * FROM vehicles ORDER BY sort_order ASC\");\n    $vehicles = $stmt->fetchAll(PDO::FETCH_ASSOC);\n\n    if (!$vehicles) {\n        return \"<p>No vehicles found in database.</p>\";\n    }\n} catch (Exception $e) {\n    return \"<strong>DB QUERY ERROR:</strong> \" . $e->getMessage();\n}\n\n$output = \"\";\n\n// Build HTML for each vehicle\nforeach ($vehicles as $v) {\n\n    $output .= \'\n        <div class=\"swiper-slide\"\n            data-class=\"\' . htmlspecialchars($v[\"class\"]) . \'\"\n            data-name=\"\' . htmlspecialchars($v[\"name\"]) . \'\"\n            data-desc=\"\' . htmlspecialchars($v[\"description\"]) . \'\"\n            data-pass=\"\' . htmlspecialchars($v[\"passengers\"]) . \'\"\n            data-bags=\"\' . htmlspecialchars($v[\"suitcases\"]) . \'\"\n            data-price=\"\' . htmlspecialchars($v[\"price\"]) . \'\">\n\n            <img src=\"assets/img/vehicles/\' . htmlspecialchars($v[\"image\"]) . \'\" \n                 class=\"img-fluid\"\n                 alt=\"\' . htmlspecialchars($v[\"name\"]) . \'\">\n\n            <div class=\"vehicle-info mt-3\">\n                <h5>\' . htmlspecialchars($v[\"name\"]) . \'</h5>\n                <p>\' . htmlspecialchars($v[\"description\"]) . \'</p>\n\n                <ul class=\"list-unstyled\">\n                    <li><strong>Passengers:</strong> \' . htmlspecialchars($v[\"passengers\"]) . \'</li>\n                    <li><strong>Suitcases:</strong> \' . htmlspecialchars($v[\"suitcases\"]) . \'</li>\n                    <li><strong>Price per km:</strong> $\' . htmlspecialchars($v[\"price\"]) . \'</li>\n                </ul>\n            </div>\n        </div>\';\n}\n\nreturn $output;', 0, 'a:0:{}', '', 0, ''),
(8, 1, 0, 'faq', '', 0, 0, 0, '$faqData = [\n    \'general\' => [\n        \'title\' => \'General Inquiries\',\n        \'questions\' => [\n            [\n                \'question\' => \'How do I book a transfer?\',\n                \'answer\' => \'You can book a transfer easily through our website.\'\n            ],\n            [\n                \'question\' => \'What types of vehicles are available?\',\n                \'answer\' => \'We offer sedans, SUVs, vans, and luxury cars.\'\n            ]\n        ]\n    ],\n    \'booking\' => [\n        \'title\' => \'Booking & Reservations\',\n        \'questions\' => [\n            [\n                \'question\' => \'How far in advance should I book?\',\n                \'answer\' => \'We recommend booking at least 24 hours ahead.\'\n            ]\n        ]\n    ],\n    \'payment\' => [\n        \'title\' => \'Payments & Policies\',\n        \'questions\' => [\n            [\n                \'question\' => \'What payment methods do you accept?\',\n                \'answer\' => \'We currently accept cash only.\'\n            ]\n        ]\n    ]\n];\n\n$output = \'\';\n\n// TAB BUTTONS\n$output .= \'<div class=\"nav-pills\">\';\nforeach ($faqData as $key => $category) {\n    $active = $key === \'general\' ? \'active\' : \'\';\n    $output .= \'<button class=\"tab-button \'.$active.\'\" data-tab=\"\'.$key.\'\">\'.$category[\'title\'].\'</button>\';\n}\n$output .= \'</div>\';\n\n// TAB CONTENTS\nforeach ($faqData as $key => $category) {\n    $active = $key === \'general\' ? \'active\' : \'\';\n    $output .= \'<div class=\"tab-content \'.$active.\'\" id=\"\'.$key.\'-tab\">\';\n\n    foreach ($category[\'questions\'] as $index => $item) {\n        $show = $index === 0 ? \'show\' : \'\';\n        $activeBtn = $index === 0 ? \'active\' : \'\';\n\n        $output .= \'\n        <div class=\"faq-item\">\n            <h3 class=\"accordion-header\">\n                <button class=\"accordion-button \'.$activeBtn.\'\" data-target=\"\'.$key.\'-\'.$index.\'\">\n                    \'.$item[\'question\'].\'\n                </button>\n            </h3>\n            <div class=\"accordion-body \'.$show.\'\" id=\"\'.$key.\'-\'.$index.\'\">\n                <p>\'.$item[\'answer\'].\'</p>\n            </div>\n        </div>\';\n    }\n\n    $output .= \'</div>\';\n}\n\nreturn $output;', 0, 'a:0:{}', '', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `modx_site_templates`
--

CREATE TABLE `modx_site_templates` (
  `id` int(10) UNSIGNED NOT NULL,
  `source` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `property_preprocess` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `templatename` varchar(50) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `editor_type` int(11) NOT NULL DEFAULT 0,
  `category` int(11) NOT NULL DEFAULT 0,
  `icon` varchar(255) NOT NULL DEFAULT '',
  `template_type` int(11) NOT NULL DEFAULT 0,
  `content` mediumtext NOT NULL,
  `locked` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `properties` text DEFAULT NULL,
  `static` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `static_file` varchar(255) NOT NULL DEFAULT '',
  `preview_file` varchar(191) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `modx_site_templates`
--

INSERT INTO `modx_site_templates` (`id`, `source`, `property_preprocess`, `templatename`, `description`, `editor_type`, `category`, `icon`, `template_type`, `content`, `locked`, `properties`, `static`, `static_file`, `preview_file`) VALUES
(1, 0, 0, 'BaseTemplate', '', 0, 0, '', 0, '<!doctype html>\n<html lang=\"en\">\n<head>\n    <title>[[*pagetitle]] - [[++site_name]]</title>\n    <base href=\"[[!++site_url]]\">\n    <meta charset=\"[[++modx_charset]]\">\n    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, maximum-scale=1\">\n\n    <style>\n        body {\n            background-color: #eee;\n            font-family: sans-serif;\n            font-size: 20px;\n            line-height: 1.4em;\n            padding: 0;\n            margin: 0;\n        }\n        body.loaded {\n            font-family: \'Open Sans\', sans-serif;\n        }\n        .container {\n            display: block;\n            max-width: 960px;\n            margin: 2em auto 2em;\n            padding: 2em;\n            background: #fff;\n            border: 1px solid #ddd;\n            border-radius: 3px;\n        }\n        .container > section {\n            height: 100%;\n            width: 60%;\n            display: inline-block;\n            float: left;\n            margin-bottom: 2em;\n        }\n        .container > aside {\n            height: 100%;\n            display: inline-block;\n            width: 30%;\n            border-left: 2px dashed #eee;\n            float: right;\n            padding-left: 1.5em;\n        }\n        .logo {\n            background: url(\'[[++manager_url]]templates/default/images/modx-logo-color.svg\') no-repeat center transparent;\n            width: 220px;\n            height: 85px;\n            background-size: contain;\n            display: block;\n            position: relative;\n            text-indent: -9999px;\n            margin: 2em auto;\n        }\n        h1, h2, h3, h4, h5 {\n            color: #494949;\n            font-family: \'Open Sans\', sans-serif;\n            font-weight: 700;\n        }\n        h1 {\n            font-size: 36px;\n            color: #137899;\n        }\n        h2 {\n            font-size: 29px;\n        }\n        h3 {\n            font-size: 24px;\n        }\n        a {\n            color: #0f7096;\n        }\n        ul {\n            padding-left: 2em;\n        }\n        img {\n            max-width: 100%;\n        }\n        .cta-button {\n            display: block;\n            text-align: center;\n            vertical-align: middle;\n            -webkit-transform: translateZ(0);\n            transform: translateZ(0);\n            box-shadow: 0 0 1px rgba(0, 0, 0, 0);\n            -webkit-backface-visibility: hidden;\n            backface-visibility: hidden;\n            -moz-osx-font-smoothing: grayscale;\n            position: relative;\n            overflow: hidden;\n            margin: .2em 0;\n            padding: 1em;\n            cursor: pointer;\n            background: #67a749;\n            text-decoration: none;\n            border-radius: 3px;\n            color: #fff;\n            -webkit-tap-highlight-color: rgba(0,0,0,0);\n        }\n        .cta-button:before {\n            content: \"\";\n            position: absolute;\n            z-index: -1;\n            left: 50%;\n            right: 50%;\n            bottom: 0;\n            background: #137899;\n            height: 5px;\n            -webkit-transition-property: left, right;\n            transition-property: left, right;\n            -webkit-transition-duration: 0.3s;\n            transition-duration: 0.3s;\n            -webkit-transition-timing-function: ease-out;\n            transition-timing-function: ease-out;\n        }\n        .cta-button:hover:before, .cta-button:focus:before, .cta-button:active:before {\n            left: 0;\n            right: 0;\n        }\n        .companies {\n            clear: both;\n            display: block;\n            width: 100%;\n            padding: 1em 0 0;\n            border-top: 2px dashed #eee;\n        }\n        .companies h3 {\n            text-align: center;\n            margin: 0;\n        }\n        .companies ul {\n            margin: 0;\n            padding: 0;\n            list-style: none;\n            text-align: center;\n        }\n        .companies ul li {\n            display: inline-block;\n            padding: 0 1em;\n        }\n        .companies ul li:first-child {\n            padding-left: 0;\n        }\n        .companies ul li:last-child {\n            padding-right: 0;\n        }\n        .companies ul li a {\n            display: block;\n            position: relative;\n            text-indent: -99999px;\n            width: 200px;\n            height: 75px;\n            background-repeat: no-repeat;\n            background-size: 200px;\n            background-position: center;\n        }\n        .companies ul li.modmore a {\n            background-image: url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAfQAAABxCAMAAAAUAqFnAAADAFBMVEUgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToB8YRCjAAAA/3RSTlMAAQIDBAUGBwgJCgsMDQ4PEBESExQVFhcYGRobHB0eHyAhIiMkJSYnKCkqKywtLi8wMTIzNDU2Nzg5Ojs8PT4/QEFCQ0RFRkdISUpLTE1O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);\n        }\n        .companies ul li.extrasio a {\n            background-image: url(data:image/png;base64,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);\n        }\n        .companies ul li.modstore a {\n            background-image: url(data:image/jpeg;base64,/9j/4QAYRXhpZgAASUkqAAgAAAAAAAAAAAAAAP/sABFEdWNreQABAAQAAABQAAD/4QMxaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wLwA8P3hwYWNrZXQgYmVnaW49Iu+7vyIgaWQ9Ilc1TTBNcENlaGlIenJlU3pOVGN6a2M5ZCI/PiA8eDp4bXBtZXRhIHhtbG5zOng9ImFkb2JlOm5zOm1ldGEvIiB4OnhtcHRrPSJBZG9iZSBYTVAgQ29yZSA1LjYtYzA2NyA3OS4xNTc3NDcsIDIwMTUvMDMvMzAtMjM6NDA6NDIgICAgICAgICI+IDxyZGY6UkRGIHhtbG5zOnJkZj0iaHR0cDovL3d3dy53My5vcmcvMTk5OS8wMi8yMi1yZGYtc3ludGF4LW5zIyI+IDxyZGY6RGVzY3JpcHRpb24gcmRmOmFib3V0PSIiIHhtbG5zOnhtcD0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wLyIgeG1sbnM6eG1wTU09Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9tbS8iIHhtbG5zOnN0UmVmPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvc1R5cGUvUmVzb3VyY2VSZWYjIiB4bXA6Q3JlYXRvclRvb2w9IkFkb2JlIFBob3Rvc2hvcCBDQyAyMDE1IChNYWNpbnRvc2gpIiB4bXBNTTpJbnN0YW5jZUlEPSJ4bXAuaWlkOkM1OTk4RURBQjNCNTExRTVBNzdGRjlFOTdFNjM1MzEwIiB4bXBNTTpEb2N1bWVudElEPSJ4bXAuZGlkOkM1OTk4RURCQjNCNTExRTVBNzdGRjlFOTdFNjM1MzEwIj4gPHhtcE1NOkRlcml2ZWRGcm9tIHN0UmVmOmluc3RhbmNlSUQ9InhtcC5paWQ6RjlCOUZEN0ZCM0IwMTFFNUE3N0ZGOUU5N0U2MzUzMTAiIHN0UmVmOmRvY3VtZW50SUQ9InhtcC5kaWQ6RjlCOUZEODBCM0IwMTFFNUE3N0ZGOUU5N0U2MzUzMTAiLz4gPC9yZGY6RGVzY3JpcHRpb24+IDwvcmRmOlJERj4gPC94OnhtcG1ldGE+IDw/eHBhY2tldCBlbmQ9InIiPz7/7gAOQWRvYmUAZMAAAAAB/9sAhAACAgICAgICAgICAwIC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);\n        }\n        .companies ul li.modxextras a {\n            background-image: url(data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdCb3g9IjAgMCAyMjkuNDkgNjEuNTQiPjxkZWZzPjxzdHlsZT4uY2xzLTF7ZmlsbDojMDBiNWRlO30uY2xzLTJ7ZmlsbDojMDBkZWNjO30uY2xzLTN7ZmlsbDojZmY1NTI5O30uY2xzLTR7ZmlsbDojZmY5NjQwO30uY2xzLTV7ZmlsbDojMTAyYzUzO308L3N0eWxlPjwvZGVmcz48ZyBpZD0iTGF5ZXJfMiIgZGF0YS1uYW1lPSJMYXllciAyIj48ZyBpZD0iYnJhbmRfZ3VpZGVzIiBkYXRhLW5hbWU9ImJyYW5kIGd1aWRlcyI+PGcgaWQ9ImxvZ29fb25fbGlnaHQiIGRhdGEtbmFtZT0ibG9nbyBvbiBsaWdodCI+PHBvbHlnb24gY2xhc3M9ImNscy0xIiBwb2ludHM9IjU5LjI5IDUuOTUgMjkuNTggNS45NSAyNS41NiAxMi40IDQ2Ljk0IDI1LjcgNDYuOTQgMjUuNyA0Ni45NCAyNS43MSA1OS4yOSA1Ljk1Ii8+PHBvbHlnb24gY2xhc3M9ImNscy0yIiBwb2ludHM9IjI1LjU2IDEyLjQgNS42MiAwIDUuNjIgMjkuNzEgMTIuNDkgMzMuNzIgNDYuOTQgMjUuNyA0Ni45NCAyNS43IDI1LjU2IDEyLjQiLz48cG9seWdvbiBjbGFzcz0iY2xzLTMiIHBvaW50cz0iNDcuMDYgMjcuODIgNDcuMDYgMjcuODIgNDcuMDcgMjcuODIgNDcuMDYgMjcuODIiLz48cG9seWdvbiBjbGFzcz0iY2xzLTMiIHBvaW50cz0iNTMuNDcgMzEuODMgNDcuMDcgMjcuODIgMzMuNjUgNDkuMTUgNTMuNDcgNjEuNTQgNTMuNDcgMzEuODMiLz48cG9seWdvbiBjbGFzcz0iY2xzLTQiIHBvaW50cz0iNDcuMDcgMjcuODIgNDcuMDcgMjcuODIgNDcuMDYgMjcuODIgMTIuMzUgMzUuOTggMCA1NS40MSAyOS43MSA1NS40MSAzMy42NSA0OS4xNSA0Ny4wNyAyNy44MiA0Ny4wNyAyNy44MiIvPjxwYXRoIGNsYXNzPSJjbHMtNSIgZD0iTTEwNy42Niw0Ny44bDAtMTguODRMOTguMzcsNDQuNDhIOTUuMUw4NS45LDI5LjM3VjQ3LjhINzkuMDhWMTYuNGg2TDk2Ljg1LDM1LjkyLDEwOC40MiwxNi40aDZsLjA5LDMxLjRaIi8+PHBhdGggY2xhc3M9ImNscy01IiBkPSJNMTIxLjgyLDMyLjFjMC05LjMzLDcuMjctMTYuMjQsMTcuMTgtMTYuMjRzMTcuMTgsNi44NywxNy4xOCwxNi4yNFMxNDguODcsNDguMzQsMTM5LDQ4LjM0LDEyMS44Miw0MS40MywxMjEuODIsMzIuMVptMjcsMGMwLTYtNC4yMi0xMC05LjgzLTEwcy05LjgyLDQuMDktOS44MiwxMC4wNSw0LjIxLDEwLDkuODIsMTBTMTQ4LjgzLDM4LjA3LDE0OC44MywzMi4xWiIvPjxwYXRoIGNsYXNzPSJjbHMtNSIgZD0iTTE2My41OSwxNi40aDE0LjI2YzEwLjI3LDAsMTcuMzIsNi4xOSwxNy4zMiwxNS43cy03LDE1LjctMTcuMzIsMTUuN0gxNjMuNTlabTEzLjksMjUuNDRjNi4yNCwwLDEwLjMyLTMuNzMsMTAuMzItOS43NHMtNC4wOC05LjczLTEwLjMyLTkuNzNoLTYuNjRWNDEuODRaIi8+PHBhdGggY2xhc3M9ImNscy01IiBkPSJNMjIxLjEsNDcuOGwtNy41OC0xMC45LTcuNDUsMTAuOWgtOC4zNGwxMS42MS0xNi0xMS0xNS40M2g4LjI1bDcuMjIsMTAuMTgsNy4wOS0xMC4xOGg3Ljg1TDIxNy43OCwzMS41NiwyMjkuNDksNDcuOFoiLz48L2c+PC9nPjwvZz48L3N2Zz4=);\n        }\n        .disclaimer {\n            max-width: 960px;\n            display: block;\n            margin: 0 auto;\n            text-align: center;\n            color: #333;\n            font-size: .6em;\n        }\n        @media (min-width: 768px) and (max-width: 991px)  {\n            .container {\n                padding: 1em;\n                border: 0;\n                border-radius: 0;\n            }\n        }\n        @media (max-width: 767px)  {\n            body {\n                font-size: 16px;\n            }\n            .container {\n                padding: 1em;\n                margin: 0 0 1em;\n                border: 0;\n                border-radius: 0;\n            }\n            .container > section, .container > aside {\n                float: none;\n                width: 100%;\n            }\n            .container aside {\n                border: 0;\n                padding: 0;\n            }\n            .logo {\n                width: 100%;\n                height: 48px;\n            }\n            h1 {\n                font-size: 24px;\n            }\n            h2 {\n                font-size: 19px;\n            }\n            h3 {\n                font-size: 16px;\n            }\n            .companys ul li {\n                display: block;\n            }\n        }\n    </style>\n</head>\n<body>\n<a href=\"https://modx.com\" title=\"MODX\" class=\"logo\" target=\"_blank\">MODX</a>\n<div class=\"container\">\n    <section>\n        <h1>[[*longtitle:default=`[[*pagetitle]]`]]</h1>\n        [[*content]]\n    </section>\n    <aside>\n        <a href=\"[[++manager_url]]\" title=\"Your MODX manager\" class=\"cta-button\">Go to the&nbsp;manager</a>\n        <h3>Learn more about&nbsp;MODX</h3>\n        <ul>\n            <li><a href=\"https://docs.modx.com/3.x/en/index\" target=\"_blank\">Official&nbsp;Documentation</a></li>\n            <li><a href=\"https://docs.modx.com/3.x/en/getting-started/friendly-urls\" target=\"_blank\">Using Friendly&nbsp;URLs</a></li>\n            <li><a href=\"https://docs.modx.com/current/en/building-sites/extras\" target=\"_blank\">Package&nbsp;Management</a></li>\n            <li><a href=\"https://modx.com/blog/\" target=\"_blank\">Official MODX&nbsp;Blog</a></li>\n            <li><a href=\"http://www.discovermodx.com/\" target=\"_blank\">Discover&nbsp;MODX</a></li>\n            <li><a href=\"https://modx.today\" target=\"_blank\">MODX.today</a></li>\n        </ul>\n        <h3>Get help!</h3>\n        <ul>\n            <li><a href=\"https://community.modx.com\" target=\"_blank\">Official MODX&nbsp;Forums</a></li>\n            <li><a href=\"https://modx.org/\" target=\"_blank\">MODX on&nbsp;Slack</a></li>\n            <li><a href=\"https://twitter.com/modx\" target=\"_blank\">MODX on&nbsp;Twitter</a></li>\n            <li><a href=\"https://www.facebook.com/modxcms\" target=\"_blank\">MODX on&nbsp;Facebook</a></li>\n            <li><a href=\"https://modx.com/professionals/\" target=\"_blank\">Find a MODX&nbsp;Professional</a></li>\n        </ul>\n    </aside>\n    <div class=\"companies\">\n        <h3>Extend MODX with&nbsp;Extras</h3>\n        <ul>\n            <li class=\"modxextras\"><a href=\"https://modx.com/extras/\" title=\"MODX extras\" target=\"_blank\">MODX&nbsp;extras</a></li>\n            <li class=\"modmore\"><a href=\"https://www.modmore.com/extras/\" title=\"modmore.com\" target=\"_blank\">modmore.com</a></li>\n            <li class=\"modstore\"><a href=\"https://modstore.pro/\" title=\"modstore.pro\" target=\"_blank\">modstore.pro</a></li>\n            <li class=\"extrasio\"><a href=\"https://extras.io/extras/\" title=\"Extras.io\" target=\"_blank\">Extras.io</a></li>\n        </ul>\n    </div>\n</div>\n<footer class=\"disclaimer\">\n    <p>&copy; 2005-present the <a href=\"https://modx.com\" target=\"_blank\">MODX</a> Content Management Framework (CMF) project. All rights reserved. MODX is licensed under the GNU&nbsp;GPL.</p>\n</footer>\n\n<script>\n    // Load the Open Sans font\n    try {\n        document.addEventListener(\"DOMContentLoaded\", function() { // prevent a Flash Of Unstyled Text (FOUT)\n            document.querySelector(\'head\').innerHTML += \"<link href=\'https://fonts.googleapis.com/css?family=Open+Sans:400,700\' rel=\'stylesheet\' type=\'text/css\'>\";\n            document.body.classList.add(\'loaded\');\n        });\n    } catch (e) { }\n\n    // Shuffle the vendors to prevent favoritism of one vendor over the other\n    // with thanks to http://james.padolsey.com/javascript/shuffling-the-dom/\n    function shuffle(elems) {\n        var allElems = (function(){\n            var ret = [], l = elems.length;\n            while (l--) {\n                if (elems[l].className !== \'modxextras\') {\n                    ret[ret.length] = elems[l];\n                }\n            }\n            return ret;\n        })();\n\n        var shuffled = (function(){\n            var l = allElems.length, ret = [];\n            while (l--) {\n                var random = Math.floor(Math.random() * allElems.length),\n                        randEl = allElems[random].cloneNode(true);\n                allElems.splice(random, 1);\n                ret[ret.length] = randEl;\n            }\n            return ret;\n        })(), l = elems.length;\n\n        // To make sure the MODX logo stays #1, we lower the count by one here (shuffling 3 instead of 4 items)\n        // and refer to elems[l+1] in the loop below. This matches because allElems was also filtered to not include\n        // the official MODX logo.\n        l--;\n        while (l--) {\n            elems[l+1].parentNode.insertBefore(shuffled[l], elems[l+1].nextSibling);\n            elems[l+1].parentNode.removeChild(elems[l+1]);\n        }\n    }\n    shuffle(document.querySelectorAll(\'.companies li\'));\n</script>\n\n</body>\n</html>\n', 0, NULL, 0, '', ''),
(2, 1, 0, 'home', '', 0, 0, '', 0, '[[$header?]]\n[[$navbar?]]\n[[*content]]\n[[$footer?]]', 0, 'a:0:{}', 0, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `modx_site_tmplvars`
--

CREATE TABLE `modx_site_tmplvars` (
  `id` int(10) UNSIGNED NOT NULL,
  `source` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `property_preprocess` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `type` varchar(20) NOT NULL DEFAULT '',
  `name` varchar(50) NOT NULL DEFAULT '',
  `caption` varchar(80) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `editor_type` int(11) NOT NULL DEFAULT 0,
  `category` int(11) NOT NULL DEFAULT 0,
  `locked` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `elements` text DEFAULT NULL,
  `rank` int(11) NOT NULL DEFAULT 0,
  `display` varchar(20) NOT NULL DEFAULT '',
  `default_text` mediumtext DEFAULT NULL,
  `properties` text DEFAULT NULL,
  `input_properties` text DEFAULT NULL,
  `output_properties` text DEFAULT NULL,
  `static` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `static_file` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `modx_site_tmplvar_access`
--

CREATE TABLE `modx_site_tmplvar_access` (
  `id` int(10) UNSIGNED NOT NULL,
  `tmplvarid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `documentgroup` int(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `modx_site_tmplvar_contentvalues`
--

CREATE TABLE `modx_site_tmplvar_contentvalues` (
  `id` int(10) UNSIGNED NOT NULL,
  `tmplvarid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `contentid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `value` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `modx_site_tmplvar_templates`
--

CREATE TABLE `modx_site_tmplvar_templates` (
  `tmplvarid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `templateid` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `rank` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `modx_system_eventnames`
--

CREATE TABLE `modx_system_eventnames` (
  `name` varchar(50) NOT NULL,
  `service` tinyint(4) UNSIGNED NOT NULL DEFAULT 0,
  `groupname` varchar(20) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `modx_system_eventnames`
--

INSERT INTO `modx_system_eventnames` (`name`, `service`, `groupname`) VALUES
('OnBeforeCacheUpdate', 4, 'System'),
('OnBeforeChunkFormDelete', 1, 'Chunks'),
('OnBeforeChunkFormSave', 1, 'Chunks'),
('OnBeforeDocFormDelete', 1, 'Resources'),
('OnBeforeDocFormSave', 1, 'Resources'),
('OnBeforeEmptyTrash', 1, 'Resources'),
('OnBeforeManagerLogin', 2, 'Security'),
('OnBeforeManagerLogout', 2, 'Security'),
('OnBeforeManagerPageInit', 2, 'System'),
('OnBeforePluginFormDelete', 1, 'Plugins'),
('OnBeforePluginFormSave', 1, 'Plugins'),
('OnBeforeRegisterClientScripts', 5, 'System'),
('OnBeforeSaveWebPageCache', 4, 'System'),
('OnBeforeSnipFormDelete', 1, 'Snippets'),
('OnBeforeSnipFormSave', 1, 'Snippets'),
('OnBeforeTempFormDelete', 1, 'Templates'),
('OnBeforeTempFormSave', 1, 'Templates'),
('OnBeforeTVFormDelete', 1, 'Template Variables'),
('OnBeforeTVFormSave', 1, 'Template Variables'),
('OnBeforeUserActivate', 1, 'Users'),
('OnBeforeUserDeactivate', 1, 'Users'),
('OnBeforeUserDuplicate', 1, 'Users'),
('OnBeforeUserFormDelete', 1, 'Users'),
('OnBeforeUserFormSave', 1, 'Users'),
('OnBeforeUserGroupFormRemove', 1, 'User Groups'),
('OnBeforeUserGroupFormSave', 1, 'User Groups'),
('OnBeforeWebLogin', 3, 'Security'),
('OnBeforeWebLogout', 3, 'Security'),
('OnCacheUpdate', 4, 'System'),
('OnCategoryBeforeRemove', 1, 'Categories'),
('OnCategoryBeforeSave', 1, 'Categories'),
('OnCategoryRemove', 1, 'Categories'),
('OnCategorySave', 1, 'Categories'),
('OnChunkBeforeRemove', 1, 'Chunks'),
('OnChunkBeforeSave', 1, 'Chunks'),
('OnChunkFormDelete', 1, 'Chunks'),
('OnChunkFormPrerender', 1, 'Chunks'),
('OnChunkFormRender', 1, 'Chunks'),
('OnChunkFormSave', 1, 'Chunks'),
('OnChunkRemove', 1, 'Chunks'),
('OnChunkSave', 1, 'Chunks'),
('OnContextBeforeRemove', 1, 'Contexts'),
('OnContextBeforeSave', 1, 'Contexts'),
('OnContextFormPrerender', 2, 'Contexts'),
('OnContextFormRender', 2, 'Contexts'),
('OnContextInit', 1, 'Contexts'),
('OnContextRemove', 1, 'Contexts'),
('OnContextSave', 1, 'Contexts'),
('OnDocFormDelete', 1, 'Resources'),
('OnDocFormPrerender', 1, 'Resources'),
('OnDocFormRender', 1, 'Resources'),
('OnDocFormSave', 1, 'Resources'),
('OnDocPublished', 5, 'Resources'),
('OnDocUnPublished', 5, 'Resources'),
('OnElementNotFound', 1, 'System'),
('OnEmptyTrash', 1, 'Resources'),
('OnFileCreateFormPrerender', 1, 'System'),
('OnFileEditFormPrerender', 1, 'System'),
('OnFileManagerBeforeUpload', 1, 'System'),
('OnFileManagerDirCreate', 1, 'System'),
('OnFileManagerDirRemove', 1, 'System'),
('OnFileManagerDirRename', 1, 'System'),
('OnFileManagerFileCreate', 1, 'System'),
('OnFileManagerFileRemove', 1, 'System'),
('OnFileManagerFileRename', 1, 'System'),
('OnFileManagerFileUpdate', 1, 'System'),
('OnFileManagerMoveObject', 1, 'System'),
('OnFileManagerUpload', 1, 'System'),
('OnHandleRequest', 5, 'System'),
('OnInitCulture', 1, 'Internationalization'),
('OnLoadWebDocument', 5, 'System'),
('OnLoadWebPageCache', 4, 'System'),
('OnManagerAuthentication', 2, 'Security'),
('OnManagerLogin', 2, 'Security'),
('OnManagerLoginFormPrerender', 2, 'Security'),
('OnManagerLoginFormRender', 2, 'Security'),
('OnManagerLogout', 2, 'Security'),
('OnManagerPageAfterRender', 2, 'System'),
('OnManagerPageBeforeRender', 2, 'System'),
('OnManagerPageInit', 2, 'System'),
('OnMediaSourceBeforeFormDelete', 1, 'Media Sources'),
('OnMediaSourceBeforeFormSave', 1, 'Media Sources'),
('OnMediaSourceDuplicate', 1, 'Media Sources'),
('OnMediaSourceFormDelete', 1, 'Media Sources'),
('OnMediaSourceFormSave', 1, 'Media Sources'),
('OnMediaSourceGetProperties', 1, 'Media Sources'),
('OnMODXInit', 5, 'System'),
('OnPackageInstall', 2, 'Package Manager'),
('OnPackageRemove', 2, 'Package Manager'),
('OnPackageUninstall', 2, 'Package Manager'),
('OnPageNotFound', 1, 'System'),
('OnPageUnauthorized', 1, 'Security'),
('OnParseDocument', 5, 'System'),
('OnPluginBeforeRemove', 1, 'Plugins'),
('OnPluginBeforeSave', 1, 'Plugins'),
('OnPluginEventBeforeRemove', 1, 'Plugin Events'),
('OnPluginEventBeforeSave', 1, 'Plugin Events'),
('OnPluginEventRemove', 1, 'Plugin Events'),
('OnPluginEventSave', 1, 'Plugin Events'),
('OnPluginFormDelete', 1, 'Plugins'),
('OnPluginFormPrerender', 1, 'Plugins'),
('OnPluginFormRender', 1, 'Plugins'),
('OnPluginFormSave', 1, 'Plugins'),
('OnPluginRemove', 1, 'Plugins'),
('OnPluginSave', 1, 'Plugins'),
('OnPropertySetBeforeRemove', 1, 'Property Sets'),
('OnPropertySetBeforeSave', 1, 'Property Sets'),
('OnPropertySetRemove', 1, 'Property Sets'),
('OnPropertySetSave', 1, 'Property Sets'),
('OnResourceAddToResourceGroup', 1, 'Resources'),
('OnResourceAutoPublish', 1, 'Resources'),
('OnResourceBeforeSort', 1, 'Resources'),
('OnResourceCacheUpdate', 1, 'Resources'),
('OnResourceDelete', 1, 'Resources'),
('OnResourceDuplicate', 1, 'Resources'),
('OnResourceGroupBeforeRemove', 1, 'Security'),
('OnResourceGroupBeforeSave', 1, 'Security'),
('OnResourceGroupRemove', 1, 'Security'),
('OnResourceGroupSave', 1, 'Security'),
('OnResourceRemoveFromResourceGroup', 1, 'Resources'),
('OnResourceSort', 1, 'Resources'),
('OnResourceToolbarLoad', 1, 'Resources'),
('OnResourceTVFormPrerender', 1, 'Resources'),
('OnResourceTVFormRender', 1, 'Resources'),
('OnResourceUndelete', 1, 'Resources'),
('OnRichTextBrowserInit', 1, 'RichText Editor'),
('OnRichTextEditorInit', 1, 'RichText Editor'),
('OnRichTextEditorRegister', 1, 'RichText Editor'),
('OnSiteRefresh', 1, 'System'),
('OnSiteSettingsRender', 1, 'Settings'),
('OnSnipFormDelete', 1, 'Snippets'),
('OnSnipFormPrerender', 1, 'Snippets'),
('OnSnipFormRender', 1, 'Snippets'),
('OnSnipFormSave', 1, 'Snippets'),
('OnSnippetBeforeRemove', 1, 'Snippets'),
('OnSnippetBeforeSave', 1, 'Snippets'),
('OnSnippetRemove', 1, 'Snippets'),
('OnSnippetSave', 1, 'Snippets'),
('OnTempFormDelete', 1, 'Templates'),
('OnTempFormPrerender', 1, 'Templates'),
('OnTempFormRender', 1, 'Templates'),
('OnTempFormSave', 1, 'Templates'),
('OnTemplateBeforeRemove', 1, 'Templates'),
('OnTemplateBeforeSave', 1, 'Templates'),
('OnTemplateRemove', 1, 'Templates'),
('OnTemplateSave', 1, 'Templates'),
('OnTemplateVarBeforeRemove', 1, 'Template Variables'),
('OnTemplateVarBeforeSave', 1, 'Template Variables'),
('OnTemplateVarRemove', 1, 'Template Variables'),
('OnTemplateVarSave', 1, 'Template Variables'),
('OnTVFormDelete', 1, 'Template Variables'),
('OnTVFormPrerender', 1, 'Template Variables'),
('OnTVFormRender', 1, 'Template Variables'),
('OnTVFormSave', 1, 'Template Variables'),
('OnTVInputPropertiesList', 1, 'Template Variables'),
('OnTVInputRenderList', 1, 'Template Variables'),
('OnTVOutputRenderList', 1, 'Template Variables'),
('OnTVOutputRenderPropertiesList', 1, 'Template Variables'),
('OnUserActivate', 1, 'Users'),
('OnUserAddToGroup', 1, 'User Groups'),
('OnUserBeforeAddToGroup', 1, 'User Groups'),
('OnUserBeforeRemove', 1, 'Users'),
('OnUserBeforeRemoveFromGroup', 1, 'User Groups'),
('OnUserBeforeSave', 1, 'Users'),
('OnUserChangePassword', 1, 'Users'),
('OnUserDeactivate', 1, 'Users'),
('OnUserDuplicate', 1, 'Users'),
('OnUserFormDelete', 1, 'Users'),
('OnUserFormPrerender', 1, 'Users'),
('OnUserFormRender', 1, 'Users'),
('OnUserFormSave', 1, 'Users'),
('OnUserGroupBeforeRemove', 1, 'User Groups'),
('OnUserGroupBeforeSave', 1, 'User Groups'),
('OnUserGroupFormSave', 1, 'User Groups'),
('OnUserGroupRemove', 1, 'User Groups'),
('OnUserGroupSave', 1, 'User Groups'),
('OnUserNotFound', 1, 'Users'),
('OnUserProfileBeforeRemove', 1, 'User Profiles'),
('OnUserProfileBeforeSave', 1, 'User Profiles'),
('OnUserProfileRemove', 1, 'User Profiles'),
('OnUserProfileSave', 1, 'User Profiles'),
('OnUserRemove', 1, 'Users'),
('OnUserRemoveFromGroup', 1, 'User Groups'),
('OnUserSave', 1, 'Users'),
('OnWebAuthentication', 3, 'Security'),
('OnWebLogin', 3, 'Security'),
('OnWebLogout', 3, 'Security'),
('OnWebPageComplete', 5, 'System'),
('OnWebPageInit', 5, 'System'),
('OnWebPagePrerender', 5, 'System');

-- --------------------------------------------------------

--
-- Table structure for table `modx_system_settings`
--

CREATE TABLE `modx_system_settings` (
  `key` varchar(50) NOT NULL DEFAULT '',
  `value` text NOT NULL,
  `xtype` varchar(75) NOT NULL DEFAULT 'textfield',
  `namespace` varchar(40) NOT NULL DEFAULT 'core',
  `area` varchar(255) NOT NULL DEFAULT '',
  `editedon` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `modx_system_settings`
--

INSERT INTO `modx_system_settings` (`key`, `value`, `xtype`, `namespace`, `area`, `editedon`) VALUES
('access_category_enabled', '1', 'combo-boolean', 'core', 'authentication', NULL),
('access_context_enabled', '1', 'combo-boolean', 'core', 'authentication', NULL),
('access_resource_group_enabled', '1', 'combo-boolean', 'core', 'authentication', NULL),
('allow_forward_across_contexts', '', 'combo-boolean', 'core', 'system', NULL),
('allow_manager_login_forgot_password', '1', 'combo-boolean', 'core', 'authentication', NULL),
('allow_multiple_emails', '1', 'combo-boolean', 'core', 'authentication', NULL),
('allow_tags_in_post', '', 'combo-boolean', 'core', 'system', NULL),
('anonymous_sessions', '1', 'combo-boolean', 'core', 'session', NULL),
('archive_with', '', 'combo-boolean', 'core', 'system', NULL),
('automatic_alias', '1', 'combo-boolean', 'core', 'furls', NULL),
('automatic_template_assignment', 'sibling', 'textfield', 'core', 'site', NULL),
('auto_check_pkg_updates', '1', 'combo-boolean', 'core', 'system', NULL),
('auto_check_pkg_updates_cache_expire', '15', 'numberfield', 'core', 'system', NULL),
('auto_isfolder', '1', 'combo-boolean', 'core', 'site', NULL),
('auto_menuindex', '1', 'combo-boolean', 'core', 'site', NULL),
('base_help_url', '//docs.modx.com/help/', 'textfield', 'core', 'manager', NULL),
('blocked_minutes', '60', 'numberfield', 'core', 'authentication', NULL),
('cache_alias_map', '1', 'combo-boolean', 'core', 'caching', NULL),
('cache_context_settings', '1', 'combo-boolean', 'core', 'caching', NULL),
('cache_db', '', 'combo-boolean', 'core', 'caching', NULL),
('cache_db_expires', '0', 'numberfield', 'core', 'caching', NULL),
('cache_db_session', '', 'combo-boolean', 'core', 'caching', NULL),
('cache_db_session_lifetime', '', 'numberfield', 'core', 'caching', NULL),
('cache_default', '1', 'combo-boolean', 'core', 'caching', NULL),
('cache_expires', '0', 'numberfield', 'core', 'caching', NULL),
('cache_format', '0', 'numberfield', 'core', 'caching', NULL),
('cache_handler', 'xPDO\\Cache\\xPDOFileCache', 'textfield', 'core', 'caching', NULL),
('cache_lang_js', '1', 'combo-boolean', 'core', 'caching', NULL),
('cache_lexicon_topics', '1', 'combo-boolean', 'core', 'caching', NULL),
('cache_noncore_lexicon_topics', '1', 'combo-boolean', 'core', 'caching', NULL),
('cache_resource', '1', 'combo-boolean', 'core', 'caching', NULL),
('cache_resource_clear_partial', '', 'combo-boolean', 'core', 'caching', NULL),
('cache_resource_expires', '0', 'numberfield', 'core', 'caching', NULL),
('cache_scripts', '1', 'combo-boolean', 'core', 'caching', NULL),
('clear_cache_refresh_trees', '', 'combo-boolean', 'core', 'caching', NULL),
('compress_css', '1', 'combo-boolean', 'core', 'manager', NULL),
('compress_js', '1', 'combo-boolean', 'core', 'manager', NULL),
('confirm_navigation', '1', 'combo-boolean', 'core', 'manager', NULL),
('container_suffix', '/', 'textfield', 'core', 'furls', NULL),
('context_tree_sort', '1', 'combo-boolean', 'core', 'manager', NULL),
('context_tree_sortby', 'rank', 'textfield', 'core', 'manager', NULL),
('context_tree_sortdir', 'ASC', 'textfield', 'core', 'manager', NULL),
('cultureKey', 'en', 'modx-combo-language', 'core', 'language', NULL),
('date_timezone', '', 'textfield', 'core', 'system', NULL),
('debug', '', 'numberfield', 'core', 'system', NULL),
('default_content_type', '1', 'modx-combo-content-type', 'core', 'site', NULL),
('default_context', 'web', 'modx-combo-context', 'core', 'site', NULL),
('default_duplicate_publish_option', 'preserve', 'textfield', 'core', 'manager', NULL),
('default_media_source', '1', 'modx-combo-source', 'core', 'manager', NULL),
('default_media_source_type', 'MODX\\Revolution\\Sources\\modFileMediaSource', 'modx-combo-source-type', 'core', 'manager', NULL),
('default_per_page', '20', 'textfield', 'core', 'manager', NULL),
('default_template', '1', 'modx-combo-template', 'core', 'site', NULL),
('default_username', '(anonymous)', 'textfield', 'core', 'session', NULL),
('emailsender', 'navodyadivyanjali2@gmail.com', 'textfield', 'core', 'authentication', '2025-11-12 05:49:13'),
('enable_dragdrop', '1', 'combo-boolean', 'core', 'manager', NULL),
('enable_gravatar', '', 'combo-boolean', 'core', 'manager', NULL),
('enable_template_picker_in_tree', '1', 'combo-boolean', 'core', 'manager', NULL),
('error_log_filename', 'error.log', 'textfield', 'core', 'system', NULL),
('error_log_filepath', '', 'textfield', 'core', 'system', NULL),
('error_page', '1', 'numberfield', 'core', 'site', NULL),
('failed_login_attempts', '5', 'numberfield', 'core', 'authentication', NULL),
('feed_modx_news', 'https://feeds.feedburner.com/modx-announce', 'textfield', 'core', 'system', NULL),
('feed_modx_news_enabled', '1', 'combo-boolean', 'core', 'system', NULL),
('feed_modx_security', 'https://forums.modx.com/board.xml?board=294', 'textfield', 'core', 'system', NULL),
('feed_modx_security_enabled', '1', 'combo-boolean', 'core', 'system', NULL),
('form_customization_use_all_groups', '', 'combo-boolean', 'core', 'manager', NULL),
('forward_merge_excludes', 'type,published,class_key', 'textfield', 'core', 'system', NULL),
('friendly_alias_lowercase_only', '1', 'combo-boolean', 'core', 'furls', NULL),
('friendly_alias_max_length', '0', 'numberfield', 'core', 'furls', NULL),
('friendly_alias_realtime', '', 'combo-boolean', 'core', 'furls', NULL),
('friendly_alias_restrict_chars', 'pattern', 'textfield', 'core', 'furls', NULL),
('friendly_alias_restrict_chars_pattern', '/[\\0\\x0B\\t\\n\\r\\f\\a&=+%#<>\"~:`@\\?\\[\\]\\{\\}\\|\\^\'\\\\]/', 'textfield', 'core', 'furls', NULL),
('friendly_alias_strip_element_tags', '1', 'combo-boolean', 'core', 'furls', NULL),
('friendly_alias_translit', 'none', 'textfield', 'core', 'furls', NULL),
('friendly_alias_translit_class', 'translit.modTransliterate', 'textfield', 'core', 'furls', NULL),
('friendly_alias_translit_class_path', '{core_path}components/', 'textfield', 'core', 'furls', NULL),
('friendly_alias_trim_chars', '/.-_', 'textfield', 'core', 'furls', NULL),
('friendly_alias_word_delimiter', '-', 'textfield', 'core', 'furls', NULL),
('friendly_alias_word_delimiters', '-_', 'textfield', 'core', 'furls', NULL),
('friendly_urls', '', 'combo-boolean', 'core', 'furls', NULL),
('friendly_urls_strict', '', 'combo-boolean', 'core', 'furls', NULL),
('global_duplicate_uri_check', '', 'combo-boolean', 'core', 'furls', NULL),
('hidemenu_default', '', 'combo-boolean', 'core', 'site', NULL),
('inline_help', '1', 'combo-boolean', 'core', 'manager', NULL),
('link_tag_scheme', '-1', 'textfield', 'core', 'site', NULL),
('locale', '', 'textfield', 'core', 'language', NULL),
('lock_ttl', '360', 'numberfield', 'core', 'system', NULL),
('login_background_image', '', 'textfield', 'core', 'authentication', NULL),
('login_help_button', '', 'combo-boolean', 'core', 'authentication', NULL),
('login_logo', '', 'textfield', 'core', 'authentication', NULL),
('log_deprecated', '1', 'combo-boolean', 'core', 'system', NULL),
('log_level', '1', 'numberfield', 'core', 'system', NULL),
('log_snippet_not_found', '1', 'combo-boolean', 'core', 'site', NULL),
('log_target', 'FILE', 'textfield', 'core', 'system', NULL),
('mail_charset', 'UTF-8', 'modx-combo-charset', 'core', 'mail', NULL),
('mail_dkim_domain', '', 'textfield', 'core', 'mail', NULL),
('mail_dkim_identity', '', 'textfield', 'core', 'mail', NULL),
('mail_dkim_passphrase', '', 'text-password', 'core', 'mail', NULL),
('mail_dkim_privatekeyfile', '', 'textfield', 'core', 'mail', NULL),
('mail_dkim_privatekeystring', '', 'textfield', 'core', 'mail', NULL),
('mail_dkim_selector', '', 'textfield', 'core', 'mail', NULL),
('mail_encoding', '8bit', 'textfield', 'core', 'mail', NULL),
('mail_smtp_auth', '', 'combo-boolean', 'core', 'mail', NULL),
('mail_smtp_autotls', '1', 'combo-boolean', 'core', 'mail', NULL),
('mail_smtp_helo', '', 'textfield', 'core', 'mail', NULL),
('mail_smtp_hosts', 'localhost', 'textfield', 'core', 'mail', NULL),
('mail_smtp_keepalive', '', 'combo-boolean', 'core', 'mail', NULL),
('mail_smtp_pass', '', 'text-password', 'core', 'mail', NULL),
('mail_smtp_port', '587', 'numberfield', 'core', 'mail', NULL),
('mail_smtp_secure', '', 'textfield', 'core', 'mail', NULL),
('mail_smtp_single_to', '', 'combo-boolean', 'core', 'mail', NULL),
('mail_smtp_timeout', '10', 'numberfield', 'core', 'mail', NULL),
('mail_smtp_user', '', 'textfield', 'core', 'mail', NULL),
('mail_use_smtp', '', 'combo-boolean', 'core', 'mail', NULL),
('main_nav_parent', 'topnav', 'textfield', 'core', 'manager', NULL),
('manager_datetime_empty_value', '—', 'textfield', 'core', 'manager', NULL),
('manager_datetime_separator', ', ', 'textfield', 'core', 'manager', NULL),
('manager_date_format', 'Y-m-d', 'textfield', 'core', 'manager', NULL),
('manager_direction', 'ltr', 'textfield', 'core', 'language', NULL),
('manager_favicon_url', 'favicon.ico', 'textfield', 'core', 'manager', NULL),
('manager_login_url_alternate', '', 'textfield', 'core', 'authentication', NULL),
('manager_logo', '', 'textfield', 'core', 'manager', NULL),
('manager_theme', 'default', 'modx-combo-manager-theme', 'core', 'manager', NULL),
('manager_time_format', 'H:i', 'textfield', 'core', 'manager', NULL),
('manager_tooltip_delay', '2300', 'numberfield', 'core', 'manager', NULL),
('manager_tooltip_enable', '1', 'combo-boolean', 'core', 'manager', NULL),
('manager_use_fullname', '', 'combo-boolean', 'core', 'manager', NULL),
('manager_week_start', '0', 'numberfield', 'core', 'manager', NULL),
('mgr_source_icon', 'icon-folder-open-o', 'textfield', 'core', 'manager', NULL),
('mgr_tree_icon_context', 'tree-context', 'textfield', 'core', 'manager', NULL),
('modx_browser_default_sort', 'name', 'textfield', 'core', 'manager', NULL),
('modx_browser_default_viewmode', 'grid', 'textfield', 'core', 'manager', NULL),
('modx_browser_tree_hide_files', '1', 'combo-boolean', 'core', 'manager', NULL),
('modx_browser_tree_hide_tooltips', '1', 'combo-boolean', 'core', 'manager', NULL),
('modx_charset', 'UTF-8', 'modx-combo-charset', 'core', 'language', NULL),
('package_installer_at_top', '1', 'combo-boolean', 'core', 'manager', NULL),
('parser_recurse_uncacheable', '1', 'combo-boolean', 'core', 'system', NULL),
('passwordless_activated', '', 'combo-boolean', 'core', 'authentication', NULL),
('passwordless_expiration', '3600', 'textfield', 'core', 'authentication', NULL),
('password_generated_length', '10', 'numberfield', 'core', 'authentication', NULL),
('password_min_length', '8', 'numberfield', 'core', 'authentication', NULL),
('photo_profile_source', '', 'modx-combo-source', 'core', 'manager', NULL),
('phpthumb_allow_src_above_docroot', '', 'combo-boolean', 'core', 'phpthumb', NULL),
('phpthumb_cache_maxage', '30', 'numberfield', 'core', 'phpthumb', NULL),
('phpthumb_cache_maxfiles', '10000', 'numberfield', 'core', 'phpthumb', NULL),
('phpthumb_cache_maxsize', '100', 'numberfield', 'core', 'phpthumb', NULL),
('phpthumb_cache_source_enabled', '', 'combo-boolean', 'core', 'phpthumb', NULL),
('phpthumb_document_root', '', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_error_bgcolor', 'CCCCFF', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_error_fontsize', '1', 'numberfield', 'core', 'phpthumb', NULL),
('phpthumb_error_textcolor', 'FF0000', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_far', 'C', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_imagemagick_path', '', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_nohotlink_enabled', '1', 'combo-boolean', 'core', 'phpthumb', NULL),
('phpthumb_nohotlink_erase_image', '1', 'combo-boolean', 'core', 'phpthumb', NULL),
('phpthumb_nohotlink_text_message', 'Off-server thumbnailing is not allowed', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_nohotlink_valid_domains', '{http_host}', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_nooffsitelink_enabled', '', 'combo-boolean', 'core', 'phpthumb', NULL),
('phpthumb_nooffsitelink_erase_image', '1', 'combo-boolean', 'core', 'phpthumb', NULL),
('phpthumb_nooffsitelink_require_refer', '', 'combo-boolean', 'core', 'phpthumb', NULL),
('phpthumb_nooffsitelink_text_message', 'Off-server linking is not allowed', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_nooffsitelink_valid_domains', '{http_host}', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_nooffsitelink_watermark_src', '', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_zoomcrop', '0', 'textfield', 'core', 'phpthumb', NULL),
('preserve_menuindex', '', 'combo-boolean', 'core', 'manager', NULL),
('principal_targets', 'MODX\\Revolution\\modAccessContext,MODX\\Revolution\\modAccessResourceGroup,MODX\\Revolution\\modAccessCategory,MODX\\Revolution\\Sources\\modAccessMediaSource,MODX\\Revolution\\modAccessNamespace', 'textfield', 'core', 'authentication', NULL),
('proxy_auth_type', 'BASIC', 'textfield', 'core', 'proxy', NULL),
('proxy_host', '', 'textfield', 'core', 'proxy', NULL),
('proxy_password', '', 'text-password', 'core', 'proxy', NULL),
('proxy_port', '', 'numberfield', 'core', 'proxy', NULL),
('proxy_username', '', 'textfield', 'core', 'proxy', NULL),
('publish_default', '', 'combo-boolean', 'core', 'site', NULL),
('quick_search_in_content', '1', 'combo-boolean', 'core', 'manager', NULL),
('quick_search_result_max', '10', 'numberfield', 'core', 'manager', NULL),
('request_controller', 'index.php', 'textfield', 'core', 'gateway', NULL),
('request_method_strict', '', 'combo-boolean', 'core', 'gateway', NULL),
('request_param_alias', 'q', 'textfield', 'core', 'gateway', NULL),
('request_param_id', 'id', 'textfield', 'core', 'gateway', NULL),
('resource_static_allow_absolute', '0', 'combo-boolean', 'core', 'static_resources', NULL),
('resource_static_path', '{assets_path}', 'textfield', 'core', 'static_resources', NULL),
('resource_tree_node_name', 'pagetitle', 'textfield', 'core', 'manager', NULL),
('resource_tree_node_name_fallback', 'alias', 'textfield', 'core', 'manager', NULL),
('resource_tree_node_tooltip', '', 'textfield', 'core', 'manager', NULL),
('richtext_default', '1', 'combo-boolean', 'core', 'manager', NULL),
('search_default', '1', 'combo-boolean', 'core', 'site', NULL),
('send_poweredby_header', '', 'combo-boolean', 'core', 'system', NULL),
('server_offset_time', '0', 'numberfield', 'core', 'system', NULL),
('session_cookie_domain', '', 'textfield', 'core', 'session', NULL),
('session_cookie_httponly', '1', 'combo-boolean', 'core', 'session', NULL),
('session_cookie_lifetime', '604800', 'numberfield', 'core', 'session', NULL),
('session_cookie_path', '', 'textfield', 'core', 'session', NULL),
('session_cookie_samesite', '', 'textfield', 'core', 'session', NULL),
('session_cookie_secure', '', 'combo-boolean', 'core', 'session', NULL),
('session_gc_maxlifetime', '604800', 'textfield', 'core', 'session', NULL),
('session_handler_class', 'MODX\\Revolution\\modSessionHandler', 'textfield', 'core', 'session', NULL),
('session_name', '', 'textfield', 'core', 'session', NULL),
('settings_distro', 'traditional', 'textfield', 'core', 'system', NULL),
('settings_version', '3.1.2-pl', 'textfield', 'core', 'system', NULL),
('set_header', '1', 'combo-boolean', 'core', 'system', NULL),
('show_tv_categories_header', '1', 'combo-boolean', 'core', 'manager', NULL),
('site_name', 'MODX Revolution', 'textfield', 'core', 'site', NULL),
('site_start', '1', 'numberfield', 'core', 'site', NULL),
('site_status', '1', 'combo-boolean', 'core', 'site', NULL),
('site_unavailable_message', '[[%site_unavailable_message]]', 'textfield', 'core', 'site', NULL),
('site_unavailable_page', '0', 'numberfield', 'core', 'site', NULL),
('static_elements_automate_chunks', '', 'combo-boolean', 'core', 'static_elements', NULL),
('static_elements_automate_plugins', '', 'combo-boolean', 'core', 'static_elements', NULL),
('static_elements_automate_snippets', '', 'combo-boolean', 'core', 'static_elements', NULL),
('static_elements_automate_templates', '', 'combo-boolean', 'core', 'static_elements', NULL),
('static_elements_automate_tvs', '', 'combo-boolean', 'core', 'static_elements', NULL),
('static_elements_basepath', '', 'textfield', 'core', 'static_elements', NULL),
('static_elements_default_category', '0', 'modx-combo-category', 'core', 'static_elements', NULL),
('static_elements_default_mediasource', '0', 'modx-combo-source', 'core', 'static_elements', NULL),
('static_elements_html_extension', '.tpl', 'textfield', 'core', 'static_elements', NULL),
('symlink_merge_fields', '1', 'combo-boolean', 'core', 'site', NULL),
('syncsite_default', '1', 'combo-boolean', 'core', 'caching', NULL),
('topmenu_show_descriptions', '1', 'combo-boolean', 'core', 'manager', NULL),
('tree_default_sort', 'menuindex', 'textfield', 'core', 'manager', NULL),
('tree_root_id', '0', 'numberfield', 'core', 'manager', NULL),
('tvs_below_content', '', 'combo-boolean', 'core', 'manager', NULL),
('unauthorized_page', '1', 'numberfield', 'core', 'site', NULL),
('upload_files', 'aac,au,avi,bmp,css,css.map,doc,docx,eot,gif,gz,htm,html,ico,jpeg,jpg,js,js.map,less,md,mp3,mp4,mpeg,mpg,odb,odf,odg,odp,ods,odt,pdf,png,ppt,pptx,psd,rar,scss,svg,svgz,tar,tgz,tiff,ttf,txt,wav,webp,wmv,woff,woff2,xls,xlsx,xml,z,zip', 'textfield', 'core', 'file', NULL),
('upload_file_exists', '1', 'combo-boolean', 'core', 'file', NULL),
('upload_maxsize', '41943040', 'numberfield', 'core', 'file', '2025-11-12 05:49:13'),
('upload_translit', '1', 'combo-boolean', 'core', 'file', NULL),
('upload_translit_restrict_chars_pattern', '/[\\0\\x0B\\t\\n\\r\\f\\a&=+%#<>\"~:`@\\?\\[\\]\\{\\}\\|\\^\'\\\\]/', 'textfield', 'core', 'file', NULL),
('user_nav_parent', 'usernav', 'textfield', 'core', 'manager', NULL),
('use_alias_path', '', 'combo-boolean', 'core', 'furls', NULL),
('use_context_resource_table', '1', 'combo-boolean', 'core', 'caching', NULL),
('use_editor', '1', 'combo-boolean', 'core', 'editor', NULL),
('use_frozen_parent_uris', '', 'combo-boolean', 'core', 'furls', NULL),
('use_multibyte', '1', 'combo-boolean', 'core', 'language', '2025-11-12 05:49:13'),
('use_weblink_target', '', 'combo-boolean', 'core', 'site', NULL),
('welcome_action', 'welcome', 'textfield', 'core', 'manager', NULL),
('welcome_namespace', 'core', 'textfield', 'core', 'manager', NULL),
('welcome_screen', '', 'combo-boolean', 'core', 'manager', '2025-11-12 05:49:57'),
('welcome_screen_url', '//misc.modx.com/revolution/welcome.31.html', 'textfield', 'core', 'manager', NULL),
('which_editor', '', 'modx-combo-rte', 'core', 'editor', NULL),
('which_element_editor', '', 'modx-combo-rte', 'core', 'editor', NULL),
('xhtml_urls', '1', 'combo-boolean', 'core', 'site', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `modx_transport_packages`
--

CREATE TABLE `modx_transport_packages` (
  `signature` varchar(191) NOT NULL,
  `created` datetime NOT NULL,
  `updated` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `installed` datetime DEFAULT NULL,
  `state` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  `workspace` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `provider` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `disabled` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `source` tinytext DEFAULT NULL,
  `manifest` text DEFAULT NULL,
  `attributes` mediumtext DEFAULT NULL,
  `package_name` varchar(191) NOT NULL,
  `metadata` text DEFAULT NULL,
  `version_major` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `version_minor` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `version_patch` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `release` varchar(100) NOT NULL DEFAULT '',
  `release_index` smallint(5) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `modx_transport_providers`
--

CREATE TABLE `modx_transport_providers` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `description` mediumtext DEFAULT NULL,
  `service_url` tinytext DEFAULT NULL,
  `username` varchar(191) NOT NULL DEFAULT '',
  `api_key` varchar(191) NOT NULL DEFAULT '',
  `created` datetime NOT NULL,
  `updated` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `priority` tinyint(4) NOT NULL DEFAULT 10,
  `properties` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `modx_transport_providers`
--

INSERT INTO `modx_transport_providers` (`id`, `name`, `description`, `service_url`, `username`, `api_key`, `created`, `updated`, `active`, `priority`, `properties`) VALUES
(1, 'modx.com', 'The official MODX transport provider for 3rd party components.', 'https://rest.modx.com/extras/', '', '', '2025-04-02 10:20:59', NULL, 1, 10, '');

-- --------------------------------------------------------

--
-- Table structure for table `modx_users`
--

CREATE TABLE `modx_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(255) NOT NULL DEFAULT '',
  `cachepwd` varchar(255) NOT NULL DEFAULT '',
  `class_key` varchar(100) NOT NULL DEFAULT 'MODX\\Revolution\\modUser',
  `active` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  `remote_key` varchar(191) DEFAULT NULL,
  `remote_data` text DEFAULT NULL,
  `hash_class` varchar(100) NOT NULL DEFAULT 'MODX\\Revolution\\Hashing\\modNative',
  `salt` varchar(100) NOT NULL DEFAULT '',
  `primary_group` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `session_stale` text DEFAULT NULL,
  `sudo` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `createdon` int(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `modx_users`
--

INSERT INTO `modx_users` (`id`, `username`, `password`, `cachepwd`, `class_key`, `active`, `remote_key`, `remote_data`, `hash_class`, `salt`, `primary_group`, `session_stale`, `sudo`, `createdon`) VALUES
(1, 'admin', '$2y$10$ixcOe2b0McT/xaszCKeJmucDluHCd6u73UoodKEQ7RmmnRJL5P4f6', '', 'MODX\\Revolution\\modUser', 1, NULL, NULL, 'MODX\\Revolution\\Hashing\\modNative', '56a817a79099d29d4c84a12c4cd4cdb6', 1, NULL, 1, 1762926553),
(2, 'srimal', '$2y$10$2nm/Oqiie9S1aX5ZemYQvuLU3rVm9JKMXpzGFBWwvJQUYn24b6uIG', '', 'MODX\\Revolution\\modUser', 1, NULL, NULL, 'MODX\\Revolution\\Hashing\\modNative', 'f3585c9fb9632f9965d3918c5b0d4276', 0, NULL, 1, 1763037067);

-- --------------------------------------------------------

--
-- Table structure for table `modx_user_attributes`
--

CREATE TABLE `modx_user_attributes` (
  `id` int(10) UNSIGNED NOT NULL,
  `internalKey` int(10) UNSIGNED NOT NULL,
  `fullname` varchar(100) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `phone` varchar(100) NOT NULL DEFAULT '',
  `mobilephone` varchar(100) NOT NULL DEFAULT '',
  `blocked` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `blockeduntil` int(11) NOT NULL DEFAULT 0,
  `blockedafter` int(11) NOT NULL DEFAULT 0,
  `logincount` int(11) NOT NULL DEFAULT 0,
  `lastlogin` int(11) NOT NULL DEFAULT 0,
  `thislogin` int(11) NOT NULL DEFAULT 0,
  `failedlogincount` int(10) NOT NULL DEFAULT 0,
  `sessionid` varchar(100) NOT NULL DEFAULT '',
  `dob` int(10) NOT NULL DEFAULT 0,
  `gender` tinyint(1) NOT NULL DEFAULT 0,
  `address` text NOT NULL,
  `country` varchar(255) NOT NULL DEFAULT '',
  `city` varchar(255) NOT NULL DEFAULT '',
  `state` varchar(25) NOT NULL DEFAULT '',
  `zip` varchar(25) NOT NULL DEFAULT '',
  `fax` varchar(100) NOT NULL DEFAULT '',
  `photo` varchar(255) NOT NULL DEFAULT '',
  `comment` text NOT NULL,
  `website` varchar(255) NOT NULL DEFAULT '',
  `extended` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `modx_user_attributes`
--

INSERT INTO `modx_user_attributes` (`id`, `internalKey`, `fullname`, `email`, `phone`, `mobilephone`, `blocked`, `blockeduntil`, `blockedafter`, `logincount`, `lastlogin`, `thislogin`, `failedlogincount`, `sessionid`, `dob`, `gender`, `address`, `country`, `city`, `state`, `zip`, `fax`, `photo`, `comment`, `website`, `extended`) VALUES
(1, 1, 'Default Admin User', 'navodyadivyanjali2@gmail.com', '', '', 0, 1763303460, 0, 4, 1763091761, 1763351177, 0, '', 0, 0, '', '', '', '', '', '', '', '', '', '[]'),
(2, 2, '', 'it@explorevacations..lk', '', '', 0, 0, 0, 9, 1763300101, 1763358156, 0, '', 0, 0, '', '', '', '', '', '', '', '', '', '[]');

-- --------------------------------------------------------

--
-- Table structure for table `modx_user_group_roles`
--

CREATE TABLE `modx_user_group_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `description` mediumtext DEFAULT NULL,
  `authority` int(10) UNSIGNED NOT NULL DEFAULT 9999
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `modx_user_group_roles`
--

INSERT INTO `modx_user_group_roles` (`id`, `name`, `description`, `authority`) VALUES
(1, 'Member', NULL, 9999),
(2, 'Super User', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `modx_user_group_settings`
--

CREATE TABLE `modx_user_group_settings` (
  `group` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `key` varchar(50) NOT NULL,
  `value` text DEFAULT NULL,
  `xtype` varchar(75) NOT NULL DEFAULT 'textfield',
  `namespace` varchar(40) NOT NULL DEFAULT 'core',
  `area` varchar(255) NOT NULL DEFAULT '',
  `editedon` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `modx_user_messages`
--

CREATE TABLE `modx_user_messages` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(15) NOT NULL DEFAULT '',
  `subject` varchar(255) NOT NULL DEFAULT '',
  `message` text NOT NULL,
  `sender` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `recipient` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `private` tinyint(4) NOT NULL DEFAULT 0,
  `date_sent` datetime DEFAULT NULL,
  `read` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `modx_user_settings`
--

CREATE TABLE `modx_user_settings` (
  `user` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `key` varchar(50) NOT NULL DEFAULT '',
  `value` text DEFAULT NULL,
  `xtype` varchar(75) NOT NULL DEFAULT 'textfield',
  `namespace` varchar(40) NOT NULL DEFAULT 'core',
  `area` varchar(255) NOT NULL DEFAULT '',
  `editedon` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `modx_workspaces`
--

CREATE TABLE `modx_workspaces` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL DEFAULT '',
  `path` varchar(191) NOT NULL DEFAULT '',
  `created` datetime NOT NULL,
  `active` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `attributes` mediumtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `modx_workspaces`
--

INSERT INTO `modx_workspaces` (`id`, `name`, `path`, `created`, `active`, `attributes`) VALUES
(1, 'Default MODX workspace', '{core_path}', '2025-11-12 06:48:33', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('admin','staff') DEFAULT 'admin',
  `status` enum('active','inactive') DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `role`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@example.com', '$2y$10$2g/7RfLeKCG2p4GlFX24buZ0MbgPptZuAAyeus3WCHn5IqCXZOKW6', 'admin', 'active', '2025-10-20 06:19:02', '2025-10-20 07:17:29'),
(2, 'Dilan', 'dilan@sr.com', '$2y$10$QTyO9JgsiIHfl5XKA.J5He6GTKMfVn5MgYgSxutVP3EAe.6oHFWRu', 'staff', 'active', '2025-10-20 07:19:59', '2025-10-20 07:25:35'),
(3, 'Lakshika', 'lakshika@sr.com', '$2y$10$jsnzAecSlpNTddWngAVhtO2pLQdiC3iJNWY0CFTQI0lGg0ZZ9P8by', 'staff', 'active', '2025-10-20 07:19:59', '2025-10-20 07:50:42');

-- --------------------------------------------------------

--
-- Table structure for table `vehicles`
--

CREATE TABLE `vehicles` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `passengers` int(11) NOT NULL,
  `suitcases` int(11) NOT NULL,
  `large_suitcases` int(11) NOT NULL,
  `medium_suitcases` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `lead_time` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `sort_order` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vehicles`
--

INSERT INTO `vehicles` (`id`, `name`, `passengers`, `suitcases`, `large_suitcases`, `medium_suitcases`, `price`, `lead_time`, `image`, `description`, `sort_order`) VALUES
(1, 'Standard', 3, 2, 1, 2, 0.50, '8 ', '2.png', 'Skoda Octavia or Similar', 1),
(2, 'Executive', 2, 2, 1, 2, 2.50, '8 ', '4.png', 'Mercedes E-Class or Similar', 5),
(3, 'Luxury', 3, 3, 1, 2, 3.00, '12 ', '1.png', 'Mercedes S-Class or Similar', 6),
(4, 'People Carrier', 6, 4, 2, 2, 0.60, '12 ', '5.png', 'Peugeot 5008 or Similar', 2),
(5, 'Large People Carrier', 6, 6, 5, 2, 0.70, '12 ', '6.png', 'Ford Tourneo or Similar', 3),
(6, 'Mini Bus', 12, 12, 6, 6, 2.00, '12 ', '7.png', 'Renault Mater or Similar', 4),
(13, 'Super Luxury Coach', 45, 29, 6, 6, 6.00, '12', '3.png', '', 7);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addons`
--
ALTER TABLE `addons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `country_codes`
--
ALTER TABLE `country_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `modx_access_actiondom`
--
ALTER TABLE `modx_access_actiondom`
  ADD PRIMARY KEY (`id`),
  ADD KEY `target` (`target`),
  ADD KEY `principal_class` (`principal_class`),
  ADD KEY `principal` (`principal`),
  ADD KEY `authority` (`authority`),
  ADD KEY `policy` (`policy`);

--
-- Indexes for table `modx_access_category`
--
ALTER TABLE `modx_access_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `target` (`target`),
  ADD KEY `principal_class` (`principal_class`),
  ADD KEY `principal` (`principal`),
  ADD KEY `authority` (`authority`),
  ADD KEY `policy` (`policy`),
  ADD KEY `context_key` (`context_key`);

--
-- Indexes for table `modx_access_context`
--
ALTER TABLE `modx_access_context`
  ADD PRIMARY KEY (`id`),
  ADD KEY `target` (`target`),
  ADD KEY `principal_class` (`principal_class`),
  ADD KEY `principal` (`principal`),
  ADD KEY `authority` (`authority`),
  ADD KEY `policy` (`policy`);

--
-- Indexes for table `modx_access_elements`
--
ALTER TABLE `modx_access_elements`
  ADD PRIMARY KEY (`id`),
  ADD KEY `target` (`target`),
  ADD KEY `principal_class` (`principal_class`),
  ADD KEY `principal` (`principal`),
  ADD KEY `authority` (`authority`),
  ADD KEY `policy` (`policy`),
  ADD KEY `context_key` (`context_key`);

--
-- Indexes for table `modx_access_media_source`
--
ALTER TABLE `modx_access_media_source`
  ADD PRIMARY KEY (`id`),
  ADD KEY `target` (`target`),
  ADD KEY `principal_class` (`principal_class`),
  ADD KEY `principal` (`principal`),
  ADD KEY `authority` (`authority`),
  ADD KEY `policy` (`policy`),
  ADD KEY `context_key` (`context_key`);

--
-- Indexes for table `modx_access_menus`
--
ALTER TABLE `modx_access_menus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `target` (`target`),
  ADD KEY `principal_class` (`principal_class`),
  ADD KEY `principal` (`principal`),
  ADD KEY `authority` (`authority`),
  ADD KEY `policy` (`policy`);

--
-- Indexes for table `modx_access_namespace`
--
ALTER TABLE `modx_access_namespace`
  ADD PRIMARY KEY (`id`),
  ADD KEY `target` (`target`),
  ADD KEY `principal_class` (`principal_class`),
  ADD KEY `principal` (`principal`),
  ADD KEY `authority` (`authority`),
  ADD KEY `policy` (`policy`),
  ADD KEY `context_key` (`context_key`);

--
-- Indexes for table `modx_access_permissions`
--
ALTER TABLE `modx_access_permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `template` (`template`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `modx_access_policies`
--
ALTER TABLE `modx_access_policies`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `parent` (`parent`),
  ADD KEY `class` (`class`),
  ADD KEY `template` (`template`);

--
-- Indexes for table `modx_access_policy_templates`
--
ALTER TABLE `modx_access_policy_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `modx_access_policy_template_groups`
--
ALTER TABLE `modx_access_policy_template_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `modx_access_resources`
--
ALTER TABLE `modx_access_resources`
  ADD PRIMARY KEY (`id`),
  ADD KEY `target` (`target`),
  ADD KEY `principal_class` (`principal_class`),
  ADD KEY `principal` (`principal`),
  ADD KEY `authority` (`authority`),
  ADD KEY `policy` (`policy`),
  ADD KEY `context_key` (`context_key`);

--
-- Indexes for table `modx_access_resource_groups`
--
ALTER TABLE `modx_access_resource_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `target` (`target`),
  ADD KEY `principal_class` (`principal_class`,`target`,`principal`,`authority`),
  ADD KEY `principal` (`principal`),
  ADD KEY `authority` (`authority`),
  ADD KEY `policy` (`policy`),
  ADD KEY `context_key` (`context_key`);

--
-- Indexes for table `modx_access_templatevars`
--
ALTER TABLE `modx_access_templatevars`
  ADD PRIMARY KEY (`id`),
  ADD KEY `target` (`target`),
  ADD KEY `principal_class` (`principal_class`),
  ADD KEY `principal` (`principal`),
  ADD KEY `authority` (`authority`),
  ADD KEY `policy` (`policy`),
  ADD KEY `context_key` (`context_key`);

--
-- Indexes for table `modx_actiondom`
--
ALTER TABLE `modx_actiondom`
  ADD PRIMARY KEY (`id`),
  ADD KEY `set` (`set`),
  ADD KEY `action` (`action`),
  ADD KEY `name` (`name`),
  ADD KEY `active` (`active`),
  ADD KEY `for_parent` (`for_parent`),
  ADD KEY `rank` (`rank`);

--
-- Indexes for table `modx_actions_fields`
--
ALTER TABLE `modx_actions_fields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `action` (`action`),
  ADD KEY `type` (`type`),
  ADD KEY `tab` (`tab`);

--
-- Indexes for table `modx_active_users`
--
ALTER TABLE `modx_active_users`
  ADD PRIMARY KEY (`internalKey`);

--
-- Indexes for table `modx_categories`
--
ALTER TABLE `modx_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `category` (`parent`,`category`),
  ADD KEY `parent` (`parent`),
  ADD KEY `rank` (`rank`);

--
-- Indexes for table `modx_categories_closure`
--
ALTER TABLE `modx_categories_closure`
  ADD PRIMARY KEY (`ancestor`,`descendant`);

--
-- Indexes for table `modx_content_type`
--
ALTER TABLE `modx_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `modx_context`
--
ALTER TABLE `modx_context`
  ADD PRIMARY KEY (`key`),
  ADD KEY `name` (`name`),
  ADD KEY `rank` (`rank`);

--
-- Indexes for table `modx_context_resource`
--
ALTER TABLE `modx_context_resource`
  ADD PRIMARY KEY (`context_key`,`resource`);

--
-- Indexes for table `modx_context_setting`
--
ALTER TABLE `modx_context_setting`
  ADD PRIMARY KEY (`context_key`,`key`);

--
-- Indexes for table `modx_dashboard`
--
ALTER TABLE `modx_dashboard`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `hide_trees` (`hide_trees`);

--
-- Indexes for table `modx_dashboard_widget`
--
ALTER TABLE `modx_dashboard_widget`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `type` (`type`),
  ADD KEY `namespace` (`namespace`),
  ADD KEY `lexicon` (`lexicon`);

--
-- Indexes for table `modx_dashboard_widget_placement`
--
ALTER TABLE `modx_dashboard_widget_placement`
  ADD PRIMARY KEY (`user`,`dashboard`,`widget`),
  ADD KEY `rank` (`rank`);

--
-- Indexes for table `modx_deprecated_call`
--
ALTER TABLE `modx_deprecated_call`
  ADD PRIMARY KEY (`id`),
  ADD KEY `method` (`method`),
  ADD KEY `call_count` (`call_count`),
  ADD KEY `caller` (`caller`),
  ADD KEY `caller_file` (`caller_file`),
  ADD KEY `caller_line` (`caller_line`);

--
-- Indexes for table `modx_deprecated_method`
--
ALTER TABLE `modx_deprecated_method`
  ADD PRIMARY KEY (`id`),
  ADD KEY `definition` (`definition`);

--
-- Indexes for table `modx_documentgroup_names`
--
ALTER TABLE `modx_documentgroup_names`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `modx_document_groups`
--
ALTER TABLE `modx_document_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `document_group` (`document_group`),
  ADD KEY `document` (`document`);

--
-- Indexes for table `modx_element_property_sets`
--
ALTER TABLE `modx_element_property_sets`
  ADD PRIMARY KEY (`element`,`element_class`,`property_set`);

--
-- Indexes for table `modx_extension_packages`
--
ALTER TABLE `modx_extension_packages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `namespace` (`namespace`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `modx_fc_profiles`
--
ALTER TABLE `modx_fc_profiles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `rank` (`rank`),
  ADD KEY `active` (`active`);

--
-- Indexes for table `modx_fc_profiles_usergroups`
--
ALTER TABLE `modx_fc_profiles_usergroups`
  ADD PRIMARY KEY (`usergroup`,`profile`);

--
-- Indexes for table `modx_fc_sets`
--
ALTER TABLE `modx_fc_sets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `profile` (`profile`),
  ADD KEY `action` (`action`),
  ADD KEY `active` (`active`),
  ADD KEY `template` (`template`);

--
-- Indexes for table `modx_lexicon_entries`
--
ALTER TABLE `modx_lexicon_entries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `topic` (`topic`),
  ADD KEY `namespace` (`namespace`),
  ADD KEY `language` (`language`);

--
-- Indexes for table `modx_manager_log`
--
ALTER TABLE `modx_manager_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_occurred` (`user`,`occurred`);

--
-- Indexes for table `modx_media_sources`
--
ALTER TABLE `modx_media_sources`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `class_key` (`class_key`),
  ADD KEY `is_stream` (`is_stream`);

--
-- Indexes for table `modx_media_sources_contexts`
--
ALTER TABLE `modx_media_sources_contexts`
  ADD PRIMARY KEY (`source`,`context_key`);

--
-- Indexes for table `modx_media_sources_elements`
--
ALTER TABLE `modx_media_sources_elements`
  ADD PRIMARY KEY (`source`,`object`,`object_class`,`context_key`);

--
-- Indexes for table `modx_membergroup_names`
--
ALTER TABLE `modx_membergroup_names`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `parent` (`parent`),
  ADD KEY `rank` (`rank`),
  ADD KEY `dashboard` (`dashboard`);

--
-- Indexes for table `modx_member_groups`
--
ALTER TABLE `modx_member_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role` (`role`),
  ADD KEY `rank` (`rank`);

--
-- Indexes for table `modx_menus`
--
ALTER TABLE `modx_menus`
  ADD PRIMARY KEY (`text`),
  ADD KEY `parent` (`parent`),
  ADD KEY `action` (`action`),
  ADD KEY `namespace` (`namespace`);

--
-- Indexes for table `modx_namespaces`
--
ALTER TABLE `modx_namespaces`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `modx_property_set`
--
ALTER TABLE `modx_property_set`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `category` (`category`);

--
-- Indexes for table `modx_register_messages`
--
ALTER TABLE `modx_register_messages`
  ADD PRIMARY KEY (`topic`,`id`),
  ADD KEY `created` (`created`),
  ADD KEY `valid` (`valid`),
  ADD KEY `accessed` (`accessed`),
  ADD KEY `accesses` (`accesses`),
  ADD KEY `expires` (`expires`);

--
-- Indexes for table `modx_register_queues`
--
ALTER TABLE `modx_register_queues`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `modx_register_topics`
--
ALTER TABLE `modx_register_topics`
  ADD PRIMARY KEY (`id`),
  ADD KEY `queue` (`queue`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `modx_session`
--
ALTER TABLE `modx_session`
  ADD PRIMARY KEY (`id`),
  ADD KEY `access` (`access`);

--
-- Indexes for table `modx_site_content`
--
ALTER TABLE `modx_site_content`
  ADD PRIMARY KEY (`id`),
  ADD KEY `alias` (`alias`),
  ADD KEY `published` (`published`),
  ADD KEY `pub_date` (`pub_date`),
  ADD KEY `unpub_date` (`unpub_date`),
  ADD KEY `parent` (`parent`),
  ADD KEY `isfolder` (`isfolder`),
  ADD KEY `template` (`template`),
  ADD KEY `menuindex` (`menuindex`),
  ADD KEY `searchable` (`searchable`),
  ADD KEY `cacheable` (`cacheable`),
  ADD KEY `hidemenu` (`hidemenu`),
  ADD KEY `class_key` (`class_key`),
  ADD KEY `context_key` (`context_key`),
  ADD KEY `uri` (`uri`(191)),
  ADD KEY `uri_override` (`uri_override`),
  ADD KEY `hide_children_in_tree` (`hide_children_in_tree`),
  ADD KEY `show_in_tree` (`show_in_tree`),
  ADD KEY `cache_refresh_idx` (`parent`,`menuindex`,`id`);
ALTER TABLE `modx_site_content` ADD FULLTEXT KEY `content_ft_idx` (`pagetitle`,`longtitle`,`description`,`introtext`,`content`);

--
-- Indexes for table `modx_site_htmlsnippets`
--
ALTER TABLE `modx_site_htmlsnippets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `category` (`category`),
  ADD KEY `locked` (`locked`),
  ADD KEY `static` (`static`);

--
-- Indexes for table `modx_site_plugins`
--
ALTER TABLE `modx_site_plugins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `category` (`category`),
  ADD KEY `locked` (`locked`),
  ADD KEY `disabled` (`disabled`),
  ADD KEY `static` (`static`);

--
-- Indexes for table `modx_site_plugin_events`
--
ALTER TABLE `modx_site_plugin_events`
  ADD PRIMARY KEY (`pluginid`,`event`),
  ADD KEY `priority` (`priority`);

--
-- Indexes for table `modx_site_snippets`
--
ALTER TABLE `modx_site_snippets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `category` (`category`),
  ADD KEY `locked` (`locked`),
  ADD KEY `moduleguid` (`moduleguid`),
  ADD KEY `static` (`static`);

--
-- Indexes for table `modx_site_templates`
--
ALTER TABLE `modx_site_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `templatename` (`templatename`),
  ADD KEY `category` (`category`),
  ADD KEY `locked` (`locked`),
  ADD KEY `static` (`static`);

--
-- Indexes for table `modx_site_tmplvars`
--
ALTER TABLE `modx_site_tmplvars`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `category` (`category`),
  ADD KEY `locked` (`locked`),
  ADD KEY `rank` (`rank`),
  ADD KEY `static` (`static`);

--
-- Indexes for table `modx_site_tmplvar_access`
--
ALTER TABLE `modx_site_tmplvar_access`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tmplvar_template` (`tmplvarid`,`documentgroup`);

--
-- Indexes for table `modx_site_tmplvar_contentvalues`
--
ALTER TABLE `modx_site_tmplvar_contentvalues`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tv_cnt` (`tmplvarid`,`contentid`),
  ADD KEY `tmplvarid` (`tmplvarid`),
  ADD KEY `contentid` (`contentid`);

--
-- Indexes for table `modx_site_tmplvar_templates`
--
ALTER TABLE `modx_site_tmplvar_templates`
  ADD PRIMARY KEY (`tmplvarid`,`templateid`);

--
-- Indexes for table `modx_system_eventnames`
--
ALTER TABLE `modx_system_eventnames`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `modx_system_settings`
--
ALTER TABLE `modx_system_settings`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `modx_transport_packages`
--
ALTER TABLE `modx_transport_packages`
  ADD PRIMARY KEY (`signature`),
  ADD KEY `workspace` (`workspace`),
  ADD KEY `provider` (`provider`),
  ADD KEY `disabled` (`disabled`),
  ADD KEY `package_name` (`package_name`),
  ADD KEY `version_major` (`version_major`),
  ADD KEY `version_minor` (`version_minor`),
  ADD KEY `version_patch` (`version_patch`),
  ADD KEY `release` (`release`),
  ADD KEY `release_index` (`release_index`);

--
-- Indexes for table `modx_transport_providers`
--
ALTER TABLE `modx_transport_providers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `api_key` (`api_key`),
  ADD KEY `username` (`username`),
  ADD KEY `active` (`active`),
  ADD KEY `priority` (`priority`);

--
-- Indexes for table `modx_users`
--
ALTER TABLE `modx_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `class_key` (`class_key`),
  ADD KEY `remote_key` (`remote_key`),
  ADD KEY `primary_group` (`primary_group`);

--
-- Indexes for table `modx_user_attributes`
--
ALTER TABLE `modx_user_attributes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `internalKey` (`internalKey`);

--
-- Indexes for table `modx_user_group_roles`
--
ALTER TABLE `modx_user_group_roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD UNIQUE KEY `authority` (`authority`);

--
-- Indexes for table `modx_user_group_settings`
--
ALTER TABLE `modx_user_group_settings`
  ADD PRIMARY KEY (`group`,`key`);

--
-- Indexes for table `modx_user_messages`
--
ALTER TABLE `modx_user_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `modx_user_settings`
--
ALTER TABLE `modx_user_settings`
  ADD PRIMARY KEY (`user`,`key`);

--
-- Indexes for table `modx_workspaces`
--
ALTER TABLE `modx_workspaces`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `path` (`path`),
  ADD KEY `name` (`name`),
  ADD KEY `active` (`active`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `vehicles`
--
ALTER TABLE `vehicles`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addons`
--
ALTER TABLE `addons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `country_codes`
--
ALTER TABLE `country_codes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=164;

--
-- AUTO_INCREMENT for table `modx_access_actiondom`
--
ALTER TABLE `modx_access_actiondom`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `modx_access_category`
--
ALTER TABLE `modx_access_category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `modx_access_context`
--
ALTER TABLE `modx_access_context`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `modx_access_elements`
--
ALTER TABLE `modx_access_elements`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `modx_access_media_source`
--
ALTER TABLE `modx_access_media_source`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `modx_access_menus`
--
ALTER TABLE `modx_access_menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `modx_access_namespace`
--
ALTER TABLE `modx_access_namespace`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `modx_access_permissions`
--
ALTER TABLE `modx_access_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=229;

--
-- AUTO_INCREMENT for table `modx_access_policies`
--
ALTER TABLE `modx_access_policies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `modx_access_policy_templates`
--
ALTER TABLE `modx_access_policy_templates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `modx_access_policy_template_groups`
--
ALTER TABLE `modx_access_policy_template_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `modx_access_resources`
--
ALTER TABLE `modx_access_resources`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `modx_access_resource_groups`
--
ALTER TABLE `modx_access_resource_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `modx_access_templatevars`
--
ALTER TABLE `modx_access_templatevars`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `modx_actiondom`
--
ALTER TABLE `modx_actiondom`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `modx_actions_fields`
--
ALTER TABLE `modx_actions_fields`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `modx_categories`
--
ALTER TABLE `modx_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `modx_content_type`
--
ALTER TABLE `modx_content_type`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `modx_dashboard`
--
ALTER TABLE `modx_dashboard`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `modx_dashboard_widget`
--
ALTER TABLE `modx_dashboard_widget`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `modx_deprecated_call`
--
ALTER TABLE `modx_deprecated_call`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `modx_deprecated_method`
--
ALTER TABLE `modx_deprecated_method`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `modx_documentgroup_names`
--
ALTER TABLE `modx_documentgroup_names`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `modx_document_groups`
--
ALTER TABLE `modx_document_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `modx_extension_packages`
--
ALTER TABLE `modx_extension_packages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `modx_fc_profiles`
--
ALTER TABLE `modx_fc_profiles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `modx_fc_sets`
--
ALTER TABLE `modx_fc_sets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `modx_lexicon_entries`
--
ALTER TABLE `modx_lexicon_entries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `modx_manager_log`
--
ALTER TABLE `modx_manager_log`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=757;

--
-- AUTO_INCREMENT for table `modx_media_sources`
--
ALTER TABLE `modx_media_sources`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `modx_membergroup_names`
--
ALTER TABLE `modx_membergroup_names`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `modx_member_groups`
--
ALTER TABLE `modx_member_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `modx_property_set`
--
ALTER TABLE `modx_property_set`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `modx_register_queues`
--
ALTER TABLE `modx_register_queues`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `modx_register_topics`
--
ALTER TABLE `modx_register_topics`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `modx_site_content`
--
ALTER TABLE `modx_site_content`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `modx_site_htmlsnippets`
--
ALTER TABLE `modx_site_htmlsnippets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `modx_site_plugins`
--
ALTER TABLE `modx_site_plugins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `modx_site_snippets`
--
ALTER TABLE `modx_site_snippets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `modx_site_templates`
--
ALTER TABLE `modx_site_templates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `modx_site_tmplvars`
--
ALTER TABLE `modx_site_tmplvars`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `modx_site_tmplvar_access`
--
ALTER TABLE `modx_site_tmplvar_access`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `modx_site_tmplvar_contentvalues`
--
ALTER TABLE `modx_site_tmplvar_contentvalues`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `modx_transport_providers`
--
ALTER TABLE `modx_transport_providers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `modx_users`
--
ALTER TABLE `modx_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `modx_user_attributes`
--
ALTER TABLE `modx_user_attributes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `modx_user_group_roles`
--
ALTER TABLE `modx_user_group_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `modx_user_messages`
--
ALTER TABLE `modx_user_messages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `modx_workspaces`
--
ALTER TABLE `modx_workspaces`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `vehicles`
--
ALTER TABLE `vehicles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
