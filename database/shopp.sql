-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Мар 22 2022 г., 09:18
-- Версия сервера: 10.4.22-MariaDB
-- Версия PHP: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `shopp`
--

-- --------------------------------------------------------

--
-- Структура таблицы `about_us`
--

CREATE TABLE `about_us` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle1` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body1` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image1` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle2` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body2` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image2` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `about_us`
--

INSERT INTO `about_us` (`id`, `title1`, `subtitle1`, `body1`, `image1`, `title2`, `subtitle2`, `body2`, `image2`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Мы стремимся к лучшему сервису', 'Мы - ИнаиШоп', 'Благодаря нашему сервису, быстрой доставке и низким ценам, наши товары доступны каждому', 'https://www.pngplay.com/wp-content/uploads/6/E-Commerce-Logo-Transparent-File.png', 'Наша главная цель - радовать людей', 'Заходи на сайт и найдешь много чего интересного', 'Мы предлагаем лучшие услуги в городе', 'http://fpprso.ru/wp-content/uploads/2020/11/e-commerce-link-building-1520x800-1.png', '2022-03-13 05:18:13', '2022-03-19 06:08:11', NULL),
(2, 'ыаыфафыа', 'аыфафыаыф', 'афыафы', 'Упвыпы', 'НУ ДОПУСТИМ ТАК', 'афыыыыыыыыыыыыыы', 'ууууууууууууууууууууууууууууууууууууууу', 'fasfasf', '2022-03-13 05:30:25', '2022-03-14 07:13:43', '2022-03-14 07:13:43'),
(3, 'safasfasfsa', 'sfasfasfsaf', 'asfasfasfas', 'fasfasfasf', 'asfasfasfas', 'fasfasfasfasfsfsa', 'fasfasfasfasf', 'fasfasfasfasfs', '2022-03-14 02:55:55', '2022-03-14 07:13:37', '2022-03-14 07:13:37');

-- --------------------------------------------------------

--
-- Структура таблицы `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `blogs`
--

INSERT INTO `blogs` (`id`, `title`, `body`, `image`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'ssaffas', 'fsafsa', 'sfasfasf', '2022-03-08 07:58:07', '2022-03-09 12:47:35', '2022-03-09 12:47:35'),
(2, 'safassaf', 'fsafasfasf', 'fasfasfas', '2022-03-09 12:33:36', '2022-03-09 13:05:13', '2022-03-09 13:05:13'),
(3, 'Добрый денб', 'афыафыафыа', 'ыаффыафыа', '2022-03-09 12:46:46', '2022-03-15 01:16:48', '2022-03-15 01:16:48'),
(4, 'УРА', 'УААРАА', 'https://s.a-5.ru/p/4c/cf/4ccf955c95fdb8bd.jpg', '2022-03-09 13:09:31', '2022-03-09 13:21:22', '2022-03-09 13:21:22'),
(5, 'fasfasfsa', 'fasfasfas', 'fasfsafsa', '2022-03-09 13:21:29', '2022-03-15 01:11:33', '2022-03-15 01:11:33'),
(6, 'fsafsafa', 'fasfsafsa', 'fsafasfas', '2022-03-09 13:32:00', '2022-03-15 01:11:40', '2022-03-15 01:11:40'),
(7, 'sfasfasf', 'fsafasfasf', 'https://assets.swappie.com/cdn-cgi/image/width=600,height=600,dpr=2,fit=contain,format=auto/swappie-iphone-x-space-gray.png', '2022-03-09 13:32:19', '2022-03-15 01:11:42', '2022-03-15 01:11:42'),
(8, 'FSSSSSS', 'fsaffasf', 'fasfasfas', '2022-03-12 07:20:28', '2022-03-15 01:11:43', '2022-03-15 01:11:43'),
(9, 'Iphone 8', 'В последние месяцы об iPhone 8, который станет для Apple юбилейным iPhonе\'ом, не высказывался только ленивый. Да что уж там, даже Тим Кук был вынужден упомянуть iPhone 8 отчитываясь перед аналитиками и инвесторами о  незначительном снижении продаж iPhone 7 и 7 Plus. iPhone 8 - девайс из-за которого многие готовы отложить покупку смартфона на  неопределённое время, тк доподлинно не известно когда же гаджет поступит в продажу. Слухи очень разнятся, одни источники утверждают что Apple  не собирается отступать от привычного графика, и, следовательно, iPhone 8 появится в продаже уже в середине сентября, в то время как другие называют конец ноября - начало декабря наиболее вероятным периодом начала продаж.\r\n\r\nОт нового поколения iPhone ждут очень многого. Помимо привычного наращивания мощности, от iPhone 8 еще ждут и существенно переработанного внешнего вида. Одним из наиболее серьёзных нововведений считается безрамочный 5,5\" OLED экран со встроенным сканером отпечатков пальцев. Так же к наиболее ожидаемым \"обновкам\" можно отнести беспроводную зарядку и 3д камеру. Слухи обо всех иновациях iPhone 8 курсируют уже достаточно давно, но днях аналитикам удалось выяснить какой ценник Apple планирует поставить на свой будущий флагман.\r\nПо данным экспертов Goldman Sachs, стоимость нового iPhone 8 впервые достигнет $1000, что сделает его самым дорогим смартфоном Apple в \"минимальной\" конфигурации. Цена модели с объемом памяти 128 ГБ составит $999, тогда как за модель с 256 ГБ придется выложить $1099. Вполне закономерным явлением на фоне таких ценников будет увеличение валовой прибыль компании, что в итоге приведет повышению капитализации компании и курса ее акций. Улучшение прогноза привело к повышению целевой стоимости ценных бумаг Apple со $164 до $170.\r\nВ то же время, Apple не планирует отказываться от порядкового обновления своих гаджетов. Таким образом, обновленный модельный ряд iPhone\'ов 2017 года скорее всего будет состоять из трех моделей: iPhone 8, iPhone 7s, и iPhone 7s Plus; логично было бы предположить, что цена на модели с индексом \"s\" не изменится.\r\niPhone 8 не дойдя до прилавков уже наделал много шума, прежде всего своими передовыми техническими решениями, но стоит ли он действительно своих денег? Готовы ли пользователи платить за гаджеты по 1000$? И не создаст ли это прецедент, который спровоцирует рост средней цены на смартфоны в целом? Ответы на эти вопросы нас ждут уже этой осенью....', 'https://www.iguides.ru/upload/resize_cache/main/378/800_800_1/378b074ded44cdf4e8d14dc34b1ca06c.JPG', '2022-03-15 01:17:21', '2022-03-15 01:17:21', NULL),
(10, 'Очередная новинка Xiaomi, похожая на продукт Apple', 'Известный инсайдер Мукул Шарма (Mukul Sharma) опубликовал изображения и характеристики беспроводных наушников Xiaomi Buds 3T Pro. \r\n\r\nСогласно данным информатора, новинка будет выполнена в схожем с AirPods Pro дизайне. Наушники получат поддержку Bluetooth 5.2, защиту от влаги (IP55), активное шумоподавление, игровой режим и поддержку голосовых ассистентов. \r\n\r\nВ основе будут лежать 10-миллиметровые излучатели. Также сообщается о поддержке кодеков SBC и LHDC. Автономность с отключенным шумоподавлением должно составлять 6 часов для самих наушников и 24 часа с учётом футляра. На полную зарядку будет необходимо около часа.', 'https://www.ixbt.com/img/n1/news/2022/2/2/FN2wm3cWQAURJHi_large.png', '2022-03-15 01:21:56', '2022-03-15 01:31:49', NULL),
(11, 'Каким будет iPhone 14', 'Новый смартфон от Apple, судя по всему, традиционно представят в сентябре. Однако даже сейчас известны некоторые подробности о следующих айфонах, которые могут подтвердиться уже этой осенью. Собрали все главные слухи и утечки об iPhone 14, актуальные на сегодня.\r\n\r\nГлавное отличие по сравнению с предыдущим годом — наличие новой модели. В сентябре Apple может впервые представить «увеличенную» версию базового айфона — iPhone 14 Max. Судя по названию и отличию в цене от стандартной модели, речь идет об увеличенной диагонали экрана, как в случае с Pro / Pro Max.\r\n\r\nВ двух предыдущих поколениях Apple помимо базовой и двух «профессиональных» моделей выпускала уменьшенную версию — iPhone 12 mini и iPhone 13 mini. Теперь же компания, судя по всему, решила пойти по пути увеличения размеров.', 'https://img.gazeta.ru/files3/757/14064757/6e6ac92666044a99a1993575ccb5c0d6-pic_32ratio_900x600-900x600-8969.jpg', '2022-03-22 01:08:43', '2022-03-22 01:08:43', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name_en` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description_en` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id`, `name`, `code`, `description`, `image`, `created_at`, `updated_at`, `name_en`, `description_en`) VALUES
(4, 'Техника', 'technik', 'раздел с техникой', NULL, '2022-03-14 00:49:31', '2022-03-14 00:49:31', 'Technik', 'razdel s technikoi'),
(5, 'Мобильные телефоны', 'mobile_phones', 'Страница с мобильными телефонами', NULL, '2022-03-19 08:10:54', '2022-03-19 08:10:54', 'Mobile phones', 'Page with mobile phones'),
(6, 'Телевизоры', 'tvs', 'Страница с телевизорами', NULL, '2022-03-20 14:04:42', '2022-03-20 14:04:42', 'TV\'s', 'Page with TV\'s'),
(7, 'Ноутбуки', 'notebooks', 'Раздел с ноутбуками', NULL, '2022-03-20 14:06:21', '2022-03-20 14:06:21', 'Notebooks', 'Page with notebooks'),
(8, 'Планшеты', 'tablets', 'Раздел с планшетами', NULL, '2022-03-20 14:07:12', '2022-03-20 14:07:12', 'tablets', 'Page with tablets');

-- --------------------------------------------------------

--
-- Структура таблицы `contactus`
--

CREATE TABLE `contactus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `contactus`
--

INSERT INTO `contactus` (`id`, `name`, `email`, `subject`, `message`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Сара', 'sara.2000year14@gmail.com', 'gk', 'sfkafkas', '2022-03-06 20:15:22', '2022-03-06 20:15:22', NULL),
(4, 'Сара', 'sara@mail.ru', 'dsads', 'dsad', '2022-03-07 23:16:33', '2022-03-07 23:16:33', NULL),
(5, 'Сара', 'sara@mail.ru', 'dsads', 'dsad', '2022-03-07 23:16:47', '2022-03-07 23:16:47', NULL),
(6, 'Сара', 'sara@mail.ru', 'dsads', 'dsad', '2022-03-07 23:17:18', '2022-03-07 23:17:18', NULL),
(7, 'Портативная колонка «Otto»', 'admin@example.com', 'das', 'dsa', '2022-03-07 23:19:39', '2022-03-07 23:19:39', NULL),
(8, 'Сара', 'admin@example.com', 'gk', 'fasfasfas', '2022-03-07 23:25:24', '2022-03-07 23:25:24', NULL),
(9, 'Сара', 'admin@example.com', 'gk', 'fasfasfas', '2022-03-07 23:25:41', '2022-03-07 23:25:41', NULL),
(10, 'Сара', 'admin@example.com', 'gk', 'fasfasfas', '2022-03-07 23:25:45', '2022-03-07 23:25:45', NULL),
(11, 'Сара', 'admin@example.com', 'gk', 'fasfasfas', '2022-03-07 23:26:58', '2022-03-07 23:26:58', NULL),
(12, 'Хер в пальто', 'dsadas@mail.ru', 'ыфафыа', 'УРАААААА', '2022-03-07 23:27:41', '2022-03-07 23:27:41', NULL),
(13, 'asfa', 'fasfas@mail.ru', 'fsafas', 'fasfsafas', '2022-03-07 23:28:44', '2022-03-07 23:28:44', NULL),
(14, 'УРАААААА', 'ura@mail.ru', 'safa', 'asfasfsa', '2022-03-07 23:31:48', '2022-03-07 23:31:48', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` double NOT NULL,
  `type` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `currency_id` int(10) UNSIGNED DEFAULT NULL,
  `only_once` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `expired_at` timestamp NULL DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `coupons`
--

INSERT INTO `coupons` (`id`, `code`, `value`, `type`, `currency_id`, `only_once`, `expired_at`, `description`, `created_at`, `updated_at`) VALUES
(1, 'coupon', 800, 1, 1, 1, '2022-04-19 18:00:00', 'Подарок судьбы', '2022-03-14 22:54:44', '2022-03-14 22:54:44');

-- --------------------------------------------------------

--
-- Структура таблицы `currencies`
--

CREATE TABLE `currencies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `symbol` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_main` tinyint(4) NOT NULL DEFAULT 0,
  `rate` double NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `currencies`
--

INSERT INTO `currencies` (`id`, `code`, `symbol`, `is_main`, `rate`, `created_at`, `updated_at`) VALUES
(1, 'C', 'c', 1, 1, '2022-02-28 22:53:58', '2022-02-28 22:53:58');

-- --------------------------------------------------------

--
-- Структура таблицы `merchants`
--

CREATE TABLE `merchants` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `merchants`
--

INSERT INTO `merchants` (`id`, `name`, `email`, `token`, `created_at`, `updated_at`) VALUES
(2, 'Сара', 'admin@example.com', NULL, '2022-03-12 07:41:30', '2022-03-12 07:41:30');

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2019_11_02_161404_create_products_table', 1),
(3, '2019_11_02_161758_create_categories_table', 1),
(4, '2019_11_06_095115_create_orders_table', 1),
(5, '2019_11_06_095303_create_order_product_table', 1),
(6, '2019_11_06_115820_update_order_product_table', 1),
(7, '2019_11_14_080828_alter_table_users', 1),
(8, '2019_11_14_081710_alter_table_orders', 1),
(9, '2019_11_28_192415_alter_table_products', 1),
(10, '2019_12_21_191204_alter_table_products_count', 1),
(11, '2020_02_07_160146_create_subscriptions_table', 1),
(12, '2020_02_16_182835_localization_products', 1),
(13, '2020_02_16_182908_localization_categories', 1),
(14, '2020_02_28_180947_create_currencies_table', 1),
(15, '2020_03_03_183358_alter_table_orders_add_currency_id_and_sum', 1),
(16, '2020_03_03_183424_alter_order_product_add_price', 1),
(17, '2020_03_28_092334_create_skus_table', 1),
(18, '2020_03_28_092351_create_properties_table', 1),
(19, '2020_03_28_092358_create_property_options_table', 1),
(20, '2020_03_28_092541_create_sku_property_option_table', 1),
(21, '2020_03_28_092617_create_property_product', 1),
(22, '2020_03_30_173754_alter_table_products_drop_columns_count_and_price', 1),
(23, '2020_04_08_174422_alter_subscription_table', 1),
(24, '2020_04_08_175205_order_sku', 1),
(25, '2020_04_08_181123_alter_skus_soft_deletes', 1),
(26, '2020_06_06_144232_alter_orders_table', 1),
(27, '2020_06_06_144254_create_coupons_table', 1),
(28, '2020_07_16_194704_create_merchants_table', 1),
(29, '2022_03_07_015349_create_contact_us_table', 2),
(30, '2022_03_08_092019_create_blog', 3),
(31, '2022_03_08_105208_create_blogs', 4),
(32, '2022_03_08_135027_create_blogs', 5),
(33, '2022_03_10_135018_create_abouts_table', 6),
(34, '2022_03_12_070632_create_about_us_table', 7),
(35, '2022_03_13_111310_create_about_us_table', 8);

-- --------------------------------------------------------

--
-- Структура таблицы `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `currency_id` int(11) NOT NULL,
  `sum` double NOT NULL,
  `coupon_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `orders`
--

INSERT INTO `orders` (`id`, `status`, `name`, `phone`, `created_at`, `updated_at`, `user_id`, `currency_id`, `sum`, `coupon_id`) VALUES
(1, 1, 'Сара', '+996 707204154', '2022-03-01 01:11:11', '2022-03-01 01:11:11', 1, 1, 9278, NULL),
(2, 1, 'Сара', '+996 707204154', '2022-03-05 14:29:14', '2022-03-05 14:29:14', NULL, 1, 50318, NULL),
(3, 1, 'Сара', '+996 707204154', '2022-03-07 15:57:33', '2022-03-07 15:57:33', 1, 1, 50318, NULL),
(4, 1, 'Сара', '+996 707204154', '2022-03-13 10:15:36', '2022-03-13 10:15:36', 1, 1, 50318, NULL),
(5, 1, 'Сара', '+996 707204154', '2022-03-14 22:58:05', '2022-03-14 22:58:05', 1, 1, 49518, 1),
(6, 1, 'Мирлан', '+996 707204154', '2022-03-15 02:08:15', '2022-03-15 02:08:15', 4, 1, 50318, NULL),
(7, 1, 'Сара', '+996557719104', '2022-03-19 08:09:09', '2022-03-19 08:09:09', 1, 1, 130597, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `order_sku`
--

CREATE TABLE `order_sku` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `sku_id` int(11) NOT NULL,
  `count` int(11) NOT NULL,
  `price` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `order_sku`
--

INSERT INTO `order_sku` (`id`, `order_id`, `sku_id`, `count`, `price`, `created_at`, `updated_at`) VALUES
(1, 1, 4, 1, 9278, '2022-03-01 01:11:11', '2022-03-01 01:11:11'),
(2, 2, 1, 1, 50318, '2022-03-05 14:29:14', '2022-03-05 14:29:14'),
(3, 3, 1, 1, 50318, '2022-03-07 15:57:33', '2022-03-07 15:57:33'),
(4, 4, 1, 1, 50318, '2022-03-13 10:15:36', '2022-03-13 10:15:36'),
(5, 5, 1, 1, 50318, '2022-03-14 22:58:05', '2022-03-14 22:58:05'),
(6, 6, 1, 1, 50318, '2022-03-15 02:08:15', '2022-03-15 02:08:15'),
(7, 7, 1, 1, 50318, '2022-03-19 08:09:09', '2022-03-19 08:09:09'),
(8, 7, 29, 1, 10030, '2022-03-19 08:09:09', '2022-03-19 08:09:09'),
(9, 7, 9, 1, 9460, '2022-03-19 08:09:09', '2022-03-19 08:09:09'),
(10, 7, 23, 1, 60789, '2022-03-19 08:09:09', '2022-03-19 08:09:09');

-- --------------------------------------------------------

--
-- Структура таблицы `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `new` tinyint(4) NOT NULL DEFAULT 0,
  `hit` tinyint(4) NOT NULL DEFAULT 0,
  `recommend` tinyint(4) NOT NULL DEFAULT 0,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `name_en` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description_en` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `products`
--

INSERT INTO `products` (`id`, `category_id`, `name`, `code`, `description`, `image`, `created_at`, `updated_at`, `new`, `hit`, `recommend`, `deleted_at`, `name_en`, `description_en`) VALUES
(1, 5, 'iPhone X', 'iphone_x', 'iPhone X — новый смартфон от Apple c 5,8-дюймовым экраном, без кнопки Home, но с системой распознавания лиц. Устройство имеет OLED-дисплей без рамок, беспроводную зарядку, а также интерактивную сенсорную поверхность. Главная особенность новинки — система Face ID, включающая в себя камеру высокого разрешения и систему датчиков TrueDepth, которая сканирует лицо пользователя и использует его для биометрической идентификации. Двойная тыльная камера смартфона расположена вертикально и призвана расширить функциональность устройства в сфере дополненной реальности.', 'https://assets.swappie.com/cdn-cgi/image/width=600,height=600,dpr=2,fit=contain,format=auto/swappie-iphone-x-space-gray.png', '2022-02-28 22:53:58', '2022-03-19 08:11:16', 0, 0, 0, NULL, 'iPhone X', 'iPhone X is a new smartphone from Apple with a 5.8-inch screen, without a Home button, but with a facial recognition system. The device has an OLED display without frames, wireless charging, as well as an interactive touch surface. The main feature of the novelty is the Face ID system, which includes a high-resolution camera and a TrueDepth sensor system that scans the user\'s face and uses it for biometric identification. The dual rear camera of the smartphone is located vertically and is designed to expand the functionality of the device in the field of augmented reality.'),
(2, 5, 'iPhone XL', 'iphone_xl', 'Огромный продвинутый телефон', 'https://megaobzor.com/uploads/stories/139134/iphone_xl_camera.jpg', '2022-02-28 22:53:58', '2022-03-19 08:11:42', 0, 0, 0, NULL, 'iPhone XL', 'The best huge phone'),
(3, 5, 'HTC One S', 'htc_one_s', 'Зачем платить за лишнее? Легендарный HTC One S', 'https://3dnews.ru/assets/external/illustrations/2013/05/30/646038/htc-one-google.jpg', '2022-02-28 22:53:58', '2022-03-19 08:11:53', 0, 0, 0, NULL, 'HTC One S', 'Why do you need to pay more? Legendary HTC One S'),
(4, 5, 'iPhone 5SE', 'iphone_5se', 'Отличный классический iPhone', 'https://svetofor.info/images/detailed/104/apple-iphone-se-32gb-seryy-kosmos.jpg', '2022-02-28 22:53:58', '2022-03-19 08:12:08', 0, 0, 0, NULL, 'iPhone 5SE', 'The best classic iPhone'),
(5, 1, 'Samsung Galaxy J6', 'samsung_j6', 'Современный телефон начального уровня', 'products/samsung_j6.jpg', '2022-02-28 22:53:58', '2022-02-28 23:13:26', 1, 0, 0, '2022-02-28 23:13:26', 'Samsung Galaxy J6', 'Modern phone of basic level'),
(7, 4, 'Камера GoPro', 'gopro', 'Снимай самые яркие моменты с помощью этой камеры', 'https://static.gopro.com/assets/blta2b8522e5372af40/blt8f19f29add8612bb/60d62634063bbd63cd737e9c/pdp-max-gallery-angle2-1920-2x.png', '2022-02-28 22:53:58', '2022-03-14 01:03:12', 0, 0, 0, NULL, 'Camera GoPro', 'Capture the best moments of your life with that camera'),
(8, 4, 'Камера Panasonic HC-V770', 'panasonic_hc-v770', 'Для серьёзной видео съемки нужна серьёзная камера....', 'products/video_panasonic.jpg', NULL, '2022-03-20 07:37:49', 0, 0, 0, '2022-03-20 07:37:49', 'Camera Panasonic HC-V770', 'For serious video you need the profession camera. ...'),
(9, 4, 'Кофемашина DeLongi', 'delongi', 'Хорошее утро начинается с хорошего кофе!', 'products/delongi.jpg', '2022-02-28 22:53:58', '2022-03-20 07:42:38', 1, 0, 1, NULL, 'Coffee machine DeLongi', 'Good morning starts with a good coffee!'),
(10, 3, 'Холодильник Haier', 'haier', 'Для большой семьи большой холодильник!', 'products/haier.jpg', '2022-02-28 22:53:58', '2022-02-28 22:53:58', 1, 0, 1, NULL, 'Refrigerator Haier', 'The huge refrigerator for a big family!'),
(11, 3, 'Блендер Moulinex', 'moulinex', 'Для самых смелых идей', 'products/moulinex.jpg', '2022-02-28 22:53:58', '2022-02-28 22:53:58', 1, 0, 0, NULL, 'Blender Moulinex', 'For best ideas'),
(12, 3, 'Мясорубка Bosch', 'bosch', 'Любите домашние котлеты? Вам определенно стоит посмотреть на эту мясорубку!', 'products/bosch.jpg', '2022-02-28 22:53:58', '2022-03-07 23:52:48', 0, 0, 0, '2022-03-07 23:52:48', 'Food processor Bosch', 'Do you like home cutlets? You need to see that combine!'),
(13, 1, 'Iphone 13 PRO', '1241', 'Lorem', NULL, '2022-02-28 23:12:16', '2022-03-08 00:53:05', 0, 0, 0, '2022-03-08 00:53:05', 'Iphone 13 PRO', 'Lorem'),
(14, 3, 'Портативная колонка «Otto»', '189', 'ewrqrwqw', 'https://s.a-5.ru/p/4c/cf/4ccf955c95fdb8bd.jpg', '2022-03-01 00:49:41', '2022-03-14 01:03:29', 0, 0, 0, NULL, 'Portable speaker \"Otto\"', 'rwqrqw'),
(15, 4, 'iphone 12', 'iphone 12', 'iphone 12', 'data:image/jpeg;base64,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', '2022-03-08 05:45:20', '2022-03-20 14:01:41', 0, 0, 0, NULL, 'iphone 12', 'iphone 12');

-- --------------------------------------------------------

--
-- Структура таблицы `properties`
--

CREATE TABLE `properties` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `properties`
--

INSERT INTO `properties` (`id`, `name`, `name_en`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Цвет', 'Color', '2022-02-28 22:53:58', '2022-02-28 22:53:58', NULL),
(2, 'Внутренняя память', 'Memory', '2022-02-28 22:53:58', '2022-02-28 22:53:58', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `property_options`
--

CREATE TABLE `property_options` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `property_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `property_options`
--

INSERT INTO `property_options` (`id`, `property_id`, `name`, `name_en`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'Белый', 'White', '2022-02-28 22:53:58', '2022-02-28 22:53:58', NULL),
(2, 1, 'Черный', 'Black', '2022-02-28 22:53:58', '2022-02-28 22:53:58', NULL),
(3, 1, 'Серебристый', 'Silver', '2022-02-28 22:53:58', '2022-02-28 22:53:58', NULL),
(4, 1, 'Золотой', 'Gold', '2022-02-28 22:53:58', '2022-02-28 22:53:58', NULL),
(5, 1, 'Красный', 'Red', '2022-02-28 22:53:58', '2022-02-28 22:53:58', NULL),
(6, 1, 'Синий', 'Blue', '2022-02-28 22:53:58', '2022-02-28 22:53:58', NULL),
(7, 2, '32гб', '32gb', '2022-02-28 22:53:58', '2022-02-28 22:53:58', NULL),
(8, 2, '64гб', '64gb', '2022-02-28 22:53:58', '2022-02-28 22:53:58', NULL),
(9, 2, '128гб', '128gb', '2022-02-28 22:53:58', '2022-02-28 22:53:58', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `property_product`
--

CREATE TABLE `property_product` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `property_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `property_product`
--

INSERT INTO `property_product` (`id`, `product_id`, `property_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2022-02-28 22:53:58', '2022-02-28 22:53:58'),
(2, 1, 2, '2022-02-28 22:53:58', '2022-02-28 22:53:58'),
(3, 2, 1, '2022-02-28 22:53:58', '2022-02-28 22:53:58'),
(4, 2, 2, '2022-02-28 22:53:58', '2022-02-28 22:53:58'),
(5, 3, 1, '2022-02-28 22:53:58', '2022-02-28 22:53:58'),
(6, 3, 2, '2022-02-28 22:53:58', '2022-02-28 22:53:58'),
(7, 4, 1, '2022-02-28 22:53:58', '2022-02-28 22:53:58'),
(8, 4, 2, '2022-02-28 22:53:58', '2022-02-28 22:53:58'),
(9, 5, 1, '2022-02-28 22:53:58', '2022-02-28 22:53:58'),
(10, 5, 2, '2022-02-28 22:53:58', '2022-02-28 22:53:58'),
(11, 6, 1, '2022-02-28 22:53:58', '2022-02-28 22:53:58'),
(12, 9, 1, '2022-02-28 22:53:58', '2022-02-28 22:53:58'),
(13, 10, 1, '2022-02-28 22:53:58', '2022-02-28 22:53:58'),
(14, 8, 1, '2022-03-20 02:23:26', '2022-03-20 02:23:26'),
(15, 8, 2, '2022-03-20 02:23:26', '2022-03-20 02:23:26');

-- --------------------------------------------------------

--
-- Структура таблицы `skus`
--

CREATE TABLE `skus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `count` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `price` double NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `skus`
--

INSERT INTO `skus` (`id`, `product_id`, `count`, `price`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 72, 50318, '2022-02-28 22:53:58', '2022-03-19 08:09:09', NULL),
(2, 1, 41, 14081, '2022-02-28 22:53:58', '2022-02-28 22:53:58', NULL),
(3, 1, 4, 24442, '2022-02-28 22:53:58', '2022-02-28 22:53:58', NULL),
(4, 1, 51, 9278, '2022-02-28 22:53:58', '2022-03-01 01:11:11', NULL),
(5, 1, 52, 72731, '2022-02-28 22:53:58', '2022-02-28 22:53:58', NULL),
(6, 1, 19, 55662, '2022-02-28 22:53:58', '2022-02-28 22:53:58', NULL),
(7, 1, 74, 95158, '2022-02-28 22:53:58', '2022-02-28 22:53:58', NULL),
(8, 1, 85, 30133, '2022-02-28 22:53:58', '2022-02-28 22:53:58', NULL),
(10, 2, 76, 31628, '2022-02-28 22:53:58', '2022-02-28 22:53:58', NULL),
(11, 2, 30, 38641, '2022-02-28 22:53:58', '2022-02-28 22:53:58', NULL),
(12, 2, 9, 80642, '2022-02-28 22:53:58', '2022-02-28 22:53:58', NULL),
(13, 2, 25, 72918, '2022-02-28 22:53:58', '2022-02-28 22:53:58', NULL),
(14, 2, 7, 67979, '2022-02-28 22:53:58', '2022-02-28 22:53:58', NULL),
(15, 2, 31, 29803, '2022-02-28 22:53:58', '2022-02-28 22:53:58', NULL),
(16, 2, 38, 13910, '2022-02-28 22:53:58', '2022-02-28 22:53:58', NULL),
(17, 3, 34, 23293, '2022-02-28 22:53:58', '2022-02-28 22:53:58', NULL),
(18, 3, 11, 39226, '2022-02-28 22:53:58', '2022-02-28 22:53:58', NULL),
(19, 4, 18, 24747, '2022-02-28 22:53:58', '2022-02-28 22:53:58', NULL),
(20, 4, 6, 11453, '2022-02-28 22:53:58', '2022-02-28 22:53:58', NULL),
(21, 4, 32, 71280, '2022-02-28 22:53:58', '2022-02-28 22:53:58', NULL),
(22, 4, 19, 96650, '2022-02-28 22:53:58', '2022-02-28 22:53:58', NULL),
(23, 4, 92, 60789, '2022-02-28 22:53:58', '2022-03-19 08:09:09', NULL),
(24, 4, 86, 11580, '2022-02-28 22:53:58', '2022-02-28 22:53:58', NULL),
(25, 5, 34, 9550, '2022-02-28 22:53:58', '2022-02-28 22:53:58', NULL),
(29, 7, 65, 10030, '2022-02-28 22:53:58', '2022-03-19 08:09:09', NULL),
(30, 8, 42, 86401, '2022-02-28 22:53:58', '2022-03-20 07:37:38', '2022-03-20 07:37:38'),
(31, 9, 80, 92616, '2022-02-28 22:53:58', '2022-02-28 22:53:58', NULL),
(32, 9, 98, 35934, '2022-02-28 22:53:58', '2022-02-28 22:53:58', NULL),
(33, 9, 14, 69110, '2022-02-28 22:53:58', '2022-02-28 22:53:58', NULL),
(34, 10, 17, 19769, '2022-02-28 22:53:58', '2022-02-28 22:53:58', NULL),
(35, 10, 5, 69053, '2022-02-28 22:53:58', '2022-02-28 22:53:58', NULL),
(36, 10, 23, 92662, '2022-02-28 22:53:58', '2022-02-28 22:53:58', NULL),
(37, 11, 14, 92420, '2022-02-28 22:53:58', '2022-02-28 22:53:58', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `sku_property_option`
--

CREATE TABLE `sku_property_option` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `property_option_id` int(10) UNSIGNED NOT NULL,
  `sku_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `sku_property_option`
--

INSERT INTO `sku_property_option` (`id`, `property_option_id`, `sku_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2022-02-28 22:53:58', '2022-02-28 22:53:58'),
(2, 7, 1, '2022-02-28 22:53:58', '2022-02-28 22:53:58'),
(3, 1, 2, '2022-02-28 22:53:58', '2022-02-28 22:53:58'),
(4, 8, 2, '2022-02-28 22:53:58', '2022-02-28 22:53:58'),
(5, 2, 3, '2022-02-28 22:53:58', '2022-02-28 22:53:58'),
(6, 7, 3, '2022-02-28 22:53:58', '2022-02-28 22:53:58'),
(7, 2, 4, '2022-02-28 22:53:58', '2022-02-28 22:53:58'),
(8, 8, 4, '2022-02-28 22:53:58', '2022-02-28 22:53:58'),
(9, 3, 5, '2022-02-28 22:53:58', '2022-02-28 22:53:58'),
(10, 7, 5, '2022-02-28 22:53:58', '2022-02-28 22:53:58'),
(11, 3, 6, '2022-02-28 22:53:58', '2022-02-28 22:53:58'),
(12, 8, 6, '2022-02-28 22:53:58', '2022-02-28 22:53:58'),
(13, 4, 7, '2022-02-28 22:53:58', '2022-02-28 22:53:58'),
(14, 7, 7, '2022-02-28 22:53:58', '2022-02-28 22:53:58'),
(15, 4, 8, '2022-02-28 22:53:58', '2022-02-28 22:53:58'),
(16, 8, 8, '2022-02-28 22:53:58', '2022-02-28 22:53:58'),
(17, 1, 9, '2022-02-28 22:53:58', '2022-02-28 22:53:58'),
(18, 8, 9, '2022-02-28 22:53:58', '2022-02-28 22:53:58'),
(19, 1, 10, '2022-02-28 22:53:58', '2022-02-28 22:53:58'),
(20, 9, 10, '2022-02-28 22:53:58', '2022-02-28 22:53:58'),
(21, 2, 11, '2022-02-28 22:53:58', '2022-02-28 22:53:58'),
(22, 8, 11, '2022-02-28 22:53:58', '2022-02-28 22:53:58'),
(23, 2, 12, '2022-02-28 22:53:58', '2022-02-28 22:53:58'),
(24, 9, 12, '2022-02-28 22:53:58', '2022-02-28 22:53:58'),
(25, 3, 13, '2022-02-28 22:53:58', '2022-02-28 22:53:58'),
(26, 8, 13, '2022-02-28 22:53:58', '2022-02-28 22:53:58'),
(27, 3, 14, '2022-02-28 22:53:58', '2022-02-28 22:53:58'),
(28, 9, 14, '2022-02-28 22:53:58', '2022-02-28 22:53:58'),
(29, 4, 15, '2022-02-28 22:53:58', '2022-02-28 22:53:58'),
(30, 8, 15, '2022-02-28 22:53:58', '2022-02-28 22:53:58'),
(31, 4, 16, '2022-02-28 22:53:58', '2022-02-28 22:53:58'),
(32, 9, 16, '2022-02-28 22:53:58', '2022-02-28 22:53:58'),
(33, 2, 17, '2022-02-28 22:53:58', '2022-02-28 22:53:58'),
(34, 7, 17, '2022-02-28 22:53:58', '2022-02-28 22:53:58'),
(35, 2, 18, '2022-02-28 22:53:58', '2022-02-28 22:53:58'),
(36, 8, 18, '2022-02-28 22:53:58', '2022-02-28 22:53:58'),
(37, 1, 19, '2022-02-28 22:53:58', '2022-02-28 22:53:58'),
(38, 7, 19, '2022-02-28 22:53:58', '2022-02-28 22:53:58'),
(39, 1, 20, '2022-02-28 22:53:58', '2022-02-28 22:53:58'),
(40, 8, 20, '2022-02-28 22:53:58', '2022-02-28 22:53:58'),
(41, 3, 21, '2022-02-28 22:53:58', '2022-02-28 22:53:58'),
(42, 7, 21, '2022-02-28 22:53:58', '2022-02-28 22:53:58'),
(43, 3, 22, '2022-02-28 22:53:58', '2022-02-28 22:53:58'),
(44, 8, 22, '2022-02-28 22:53:58', '2022-02-28 22:53:58'),
(45, 4, 23, '2022-02-28 22:53:58', '2022-02-28 22:53:58'),
(46, 7, 23, '2022-02-28 22:53:58', '2022-02-28 22:53:58'),
(47, 4, 24, '2022-02-28 22:53:58', '2022-02-28 22:53:58'),
(48, 8, 24, '2022-02-28 22:53:58', '2022-02-28 22:53:58'),
(49, 4, 25, '2022-02-28 22:53:58', '2022-02-28 22:53:58'),
(50, 7, 25, '2022-02-28 22:53:58', '2022-02-28 22:53:58'),
(51, 2, 26, '2022-02-28 22:53:58', '2022-02-28 22:53:58'),
(52, 5, 27, '2022-02-28 22:53:58', '2022-02-28 22:53:58'),
(53, 6, 28, '2022-02-28 22:53:58', '2022-02-28 22:53:58'),
(54, 2, 31, '2022-02-28 22:53:58', '2022-02-28 22:53:58'),
(55, 5, 32, '2022-02-28 22:53:58', '2022-02-28 22:53:58'),
(56, 6, 33, '2022-02-28 22:53:58', '2022-02-28 22:53:58'),
(57, 1, 34, '2022-02-28 22:53:58', '2022-02-28 22:53:58'),
(58, 2, 35, '2022-02-28 22:53:58', '2022-02-28 22:53:58'),
(59, 3, 36, '2022-02-28 22:53:58', '2022-02-28 22:53:58'),
(60, 1, 30, '2022-03-20 07:37:29', '2022-03-20 07:37:29'),
(61, 7, 30, '2022-03-20 07:37:29', '2022-03-20 07:37:29');

-- --------------------------------------------------------

--
-- Структура таблицы `subscriptions`
--

CREATE TABLE `subscriptions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `sku_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_admin` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `is_admin`) VALUES
(1, 'Администратор', 'admin@example.com', NULL, '$2y$10$Hy1hsP8NjYegVR4i8tqxoexY5aLJxJMfSOFnItr4NwCDxcutbPJsy', NULL, NULL, NULL, 1),
(2, 'Сара', 'sara.2000year14@gmail.com', NULL, '$2y$10$dEWx6KtDVLsoUQm.0MzVf.Us4S1zbIbeScuY4cFpao4BFUJWd34S2', NULL, '2022-03-01 01:18:43', '2022-03-01 01:18:43', 0),
(4, 'Mirlan', 'mirlan@mail.ru', NULL, '$2y$10$fhrSuaaOUYKyp.Fbf1E9fOnqviCZPNuNP7v4FYHfxBxBquoCE9OQS', NULL, '2022-03-15 01:53:46', '2022-03-15 01:53:46', 0);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `about_us`
--
ALTER TABLE `about_us`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `contactus`
--
ALTER TABLE `contactus`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `merchants`
--
ALTER TABLE `merchants`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `order_sku`
--
ALTER TABLE `order_sku`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `properties`
--
ALTER TABLE `properties`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `property_options`
--
ALTER TABLE `property_options`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `property_product`
--
ALTER TABLE `property_product`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `skus`
--
ALTER TABLE `skus`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `sku_property_option`
--
ALTER TABLE `sku_property_option`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `about_us`
--
ALTER TABLE `about_us`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `contactus`
--
ALTER TABLE `contactus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT для таблицы `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `merchants`
--
ALTER TABLE `merchants`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT для таблицы `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `order_sku`
--
ALTER TABLE `order_sku`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT для таблицы `properties`
--
ALTER TABLE `properties`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `property_options`
--
ALTER TABLE `property_options`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `property_product`
--
ALTER TABLE `property_product`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT для таблицы `skus`
--
ALTER TABLE `skus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT для таблицы `sku_property_option`
--
ALTER TABLE `sku_property_option`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT для таблицы `subscriptions`
--
ALTER TABLE `subscriptions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
