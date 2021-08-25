-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июл 22 2021 г., 09:40
-- Версия сервера: 8.0.24
-- Версия PHP: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `isop.loc`
--

-- --------------------------------------------------------

--
-- Структура таблицы `attribute_group`
--

CREATE TABLE `attribute_group` (
  `id` int UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `attribute_group`
--

INSERT INTO `attribute_group` (`id`, `title`) VALUES
(1, 'Механизм'),
(2, 'Стекло'),
(3, 'Ремешок'),
(4, 'Корпус'),
(5, 'Индикация');

-- --------------------------------------------------------

--
-- Структура таблицы `attribute_product`
--

CREATE TABLE `attribute_product` (
  `attr_id` int UNSIGNED NOT NULL,
  `product_id` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `attribute_product`
--

INSERT INTO `attribute_product` (`attr_id`, `product_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 45),
(1, 46),
(2, 1),
(2, 4),
(4, 3),
(4, 27),
(4, 28),
(5, 1),
(5, 2),
(5, 3),
(5, 4),
(5, 5),
(5, 12),
(5, 13),
(5, 20),
(5, 45),
(6, 2),
(6, 29),
(6, 30),
(6, 31),
(6, 32),
(6, 33),
(6, 46),
(7, 3),
(7, 6),
(8, 1),
(8, 2),
(8, 3),
(8, 4),
(8, 21),
(8, 45),
(9, 2),
(9, 14),
(10, 4),
(10, 5),
(10, 13),
(11, 7),
(11, 8),
(11, 9),
(11, 10),
(12, 1),
(12, 2),
(12, 24),
(12, 25),
(12, 26),
(12, 45),
(14, 3),
(16, 1),
(16, 4),
(16, 5),
(18, 45);

-- --------------------------------------------------------

--
-- Структура таблицы `attribute_value`
--

CREATE TABLE `attribute_value` (
  `id` int UNSIGNED NOT NULL,
  `value` varchar(255) NOT NULL,
  `attr_group_id` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `attribute_value`
--

INSERT INTO `attribute_value` (`id`, `value`, `attr_group_id`) VALUES
(1, 'Механика с автоподзаводом', 1),
(2, 'Механика с ручным заводом', 1),
(3, 'Кварцевый от батарейки', 1),
(4, 'Кварцевый от солнечного аккумулятора', 1),
(5, 'Сапфировое', 2),
(6, 'Минеральное', 2),
(7, 'Полимерное', 2),
(8, 'Стальной', 3),
(9, 'Кожаный', 3),
(10, 'Каучуковый', 3),
(11, 'Полимерный', 3),
(12, 'Нержавеющая сталь', 4),
(13, 'Титановый сплав', 4),
(14, 'Латунь', 4),
(15, 'Полимер', 4),
(16, 'Керамика', 4),
(17, 'Алюминий', 4),
(18, 'Аналоговые', 5),
(19, 'Цифровые', 5);

-- --------------------------------------------------------

--
-- Структура таблицы `brand`
--

CREATE TABLE `brand` (
  `id` int UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL DEFAULT 'brand_no_image.jpg',
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `brand`
--

INSERT INTO `brand` (`id`, `title`, `alias`, `img`, `description`) VALUES
(1, 'Casio', 'casio', 'abt-1.jpg', 'In sit amet sapien eros Integer dolore magna aliqua'),
(2, 'Citizen', 'citizen', 'abt-2.jpg', 'In sit amet sapien eros Integer dolore magna aliqua'),
(3, 'Royal London', 'royal-london', 'abt-3.jpg', 'In sit amet sapien eros Integer dolore magna aliqua'),
(4, 'Seiko', 'seiko', 'seiko.png', NULL),
(5, 'Diesel', 'diesel', 'diesel.png', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `category`
--

CREATE TABLE `category` (
  `id` int UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `parent_id` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `keywords` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `category`
--

INSERT INTO `category` (`id`, `title`, `alias`, `parent_id`, `keywords`, `description`) VALUES
(1, 'Men', 'men', 0, 'Men', 'Men'),
(2, 'Women', 'women', 0, 'Women', 'Women'),
(3, 'Kids', 'kids', 0, 'Kids', 'Kids'),
(4, 'Электронные', 'elektronnye', 1, 'Электронные', 'Электронные'),
(5, 'Механические', 'mehanicheskie', 1, 'mehanicheskie', 'mehanicheskie'),
(6, 'Casio', 'casio', 4, 'Casio', 'Casio'),
(7, 'Citizen', 'citizen', 4, 'Citizen', 'Citizen'),
(8, 'Royal London', 'royal-london', 5, 'Royal London', 'Royal London'),
(9, 'Seiko', 'seiko', 5, 'Seiko', 'Seiko'),
(10, 'Epos', 'epos', 5, 'Epos', 'Epos'),
(11, 'Электронные', 'elektronnye-11', 2, 'Электронные', 'Электронные'),
(12, 'Механические', 'mehanicheskie-12', 2, 'Механические', 'Механические'),
(13, 'Adriatica', 'adriatica', 11, 'Adriatica', 'Adriatica'),
(14, 'Anne Klein', 'anne-klein', 12, 'Anne Klein', 'Anne Klein'),
(19, 'Тестовая категория', 'testovaya-kategoriya', 0, '123', 'тест'),
(20, 'Тестовая категория 2', 'testovaya-kategoriya-2', 19, '111', 'тест'),
(22, 'Diesel', 'diesel', 4, 'diesel', 'diesel dizayn');

-- --------------------------------------------------------

--
-- Структура таблицы `currency`
--

CREATE TABLE `currency` (
  `id` int UNSIGNED NOT NULL,
  `title` varchar(50) NOT NULL,
  `code` varchar(3) NOT NULL,
  `symbol_left` varchar(10) NOT NULL,
  `symbol_right` varchar(10) NOT NULL,
  `value` float(15,2) NOT NULL,
  `base` enum('0','1') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `currency`
--

INSERT INTO `currency` (`id`, `title`, `code`, `symbol_left`, `symbol_right`, `value`, `base`) VALUES
(1, 'Рубль', 'RUB', '', 'руб.', 25.80, '0'),
(2, 'Доллар', 'USD', '$', '', 1.00, '1'),
(3, 'Евро', 'EUR', '€', '', 0.88, '0');

-- --------------------------------------------------------

--
-- Структура таблицы `gallery`
--

CREATE TABLE `gallery` (
  `id` int UNSIGNED NOT NULL,
  `product_id` int UNSIGNED NOT NULL,
  `img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `gallery`
--

INSERT INTO `gallery` (`id`, `product_id`, `img`) VALUES
(1, 2, 's-1.jpg'),
(2, 2, 's-2.jpg'),
(3, 2, 's-3.jpg'),
(5, 46, 'd73dd50261b0e96d1611fdc28d5f64d1.jpg'),
(9, 47, 'b9b2db2c8f939a3af52fc06fd17ca6c8.jpg'),
(13, 46, '1c0266d43589dedbe04619f9b62e7a24.jpg');

-- --------------------------------------------------------

--
-- Структура таблицы `modification`
--

CREATE TABLE `modification` (
  `id` int UNSIGNED NOT NULL,
  `product_id` int UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `price` float NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `modification`
--

INSERT INTO `modification` (`id`, `product_id`, `title`, `price`) VALUES
(1, 1, 'Silver', 300),
(2, 1, 'Black', 300),
(3, 1, 'Dark Black', 305),
(4, 1, 'Red', 310),
(5, 2, 'Silver', 80),
(6, 2, 'Red', 70);

-- --------------------------------------------------------

--
-- Структура таблицы `order`
--

CREATE TABLE `order` (
  `id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `status` enum('0','1') NOT NULL DEFAULT '0',
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_at` timestamp NULL DEFAULT NULL,
  `currency` varchar(10) NOT NULL,
  `note` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `order`
--

INSERT INTO `order` (`id`, `user_id`, `status`, `date`, `update_at`, `currency`, `note`) VALUES
(10, 1, '0', '2021-07-19 07:43:31', NULL, 'RUB', ''),
(11, 1, '0', '2021-07-19 07:43:47', NULL, 'USD', '');

-- --------------------------------------------------------

--
-- Структура таблицы `order_product`
--

CREATE TABLE `order_product` (
  `id` int UNSIGNED NOT NULL,
  `order_id` int UNSIGNED NOT NULL,
  `product_id` int UNSIGNED NOT NULL,
  `qty` int NOT NULL,
  `title` varchar(255) NOT NULL,
  `price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `order_product`
--

INSERT INTO `order_product` (`id`, `order_id`, `product_id`, `qty`, `title`, `price`) VALUES
(10, 10, 1, 1, 'Casio MRP-700-1AVEF', 7740),
(11, 11, 3, 1, 'Casio GA-1000-1AER', 400);

-- --------------------------------------------------------

--
-- Структура таблицы `product`
--

CREATE TABLE `product` (
  `id` int UNSIGNED NOT NULL,
  `category_id` tinyint UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `content` text,
  `price` float NOT NULL DEFAULT '0',
  `old_price` float NOT NULL DEFAULT '0',
  `status` enum('0','1') NOT NULL DEFAULT '1',
  `keywords` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `img` varchar(255) NOT NULL DEFAULT 'no_image.jpg',
  `hit` enum('0','1') NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `product`
--

INSERT INTO `product` (`id`, `category_id`, `title`, `alias`, `content`, `price`, `old_price`, `status`, `keywords`, `description`, `img`, `hit`) VALUES
(1, 6, 'Casio MRP-700-1AVEF', 'casio-mrp-700-1avef', NULL, 300, 0, '1', NULL, NULL, 'p-1.png', '1'),
(2, 6, 'Casio MQ-24-7BUL', 'casio-mq-24-7bul', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam tristique, diam in consequat iaculis, est purus iaculis mauris, imperdiet facilisis ante ligula at nulla. Quisque volutpat nulla risus, id maximus ex aliquet ut. Suspendisse potenti. Nulla varius lectus id turpis dignissim porta. Quisque magna arcu, blandit quis felis vehicula, feugiat gravida diam. Nullam nec turpis ligula. Aliquam quis blandit elit, ac sodales nisl. Aliquam eget dolor eget elit malesuada aliquet. In varius lorem lorem, semper bibendum lectus lobortis ac.</p>\n\n                                            <p>Mauris placerat vitae lorem gravida viverra. Mauris in fringilla ex. Nulla facilisi. Etiam scelerisque tincidunt quam facilisis lobortis. In malesuada pulvinar neque a consectetur. Nunc aliquam gravida purus, non malesuada sem accumsan in. Morbi vel sodales libero.</p>', 70, 80, '1', NULL, NULL, 'p-2.png', '1'),
(3, 6, 'Casio GA-1000-1AER', 'casio-ga-1000-1aer', NULL, 400, 0, '1', NULL, NULL, 'p-3.png', '1'),
(4, 7, 'Citizen JP1010-00E', 'citizen-jp1010-00e', NULL, 400, 0, '1', NULL, NULL, 'p-4.png', '1'),
(5, 7, 'Citizen BJ2111-08E', 'citizen-bj2111-08e', 'Test', 500, 0, '1', NULL, NULL, 'p-5.png', '1'),
(6, 7, 'Citizen AT0696-59E', 'citizen-at0696-59e', NULL, 350, 355, '1', NULL, NULL, 'p-6.png', '1'),
(7, 6, 'Q&Q Q956J302Y', 'q-and-q-q956j302y', NULL, 20, 0, '1', NULL, NULL, 'p-7.png', '1'),
(8, 6, 'Royal London 41040-01', 'royal-london-41040-01', '', 90, 0, '1', '', '', 'p-8.png', '1'),
(9, 6, 'Royal London 20034-02', 'royal-london-20034-02', NULL, 110, 0, '1', NULL, NULL, 'no_image.jpg', '0'),
(10, 6, 'Royal London 41156-02', 'royal-london-41156-02', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam tristique, diam in consequat iaculis, est purus iaculis mauris, imperdiet facilisis ante ligula at nulla. Quisque volutpat nulla risus, id maximus ex aliquet ut. Suspendisse potenti. Nulla varius lectus id turpis dignissim porta. Quisque magna arcu, blandit quis felis vehicula, feugiat gravida diam. Nullam nec turpis ligula. Aliquam quis blandit elit, ac sodales nisl. Aliquam eget dolor eget elit malesuada aliquet. In varius lorem lorem, semper bibendum lectus lobortis ac.</p>\n\n                                            <p>Mauris placerat vitae lorem gravida viverra. Mauris in fringilla ex. Nulla facilisi. Etiam scelerisque tincidunt quam facilisis lobortis. In malesuada pulvinar neque a consectetur. Nunc aliquam gravida purus, non malesuada sem accumsan in. Morbi vel sodales libero.</p>', 100, 0, '1', NULL, NULL, 'no_image.jpg', '1'),
(11, 3, 'Тестовый товар', 'testovyy-tovar', 'контент...', 10, 0, '1', NULL, NULL, 'no_image.jpg', '0'),
(12, 7, 'Часы 1', 'chasy-1', NULL, 100, 0, '1', NULL, NULL, 'no_image.jpg', '0'),
(13, 7, 'Часы 2', 'chasy-2', NULL, 105, 0, '1', NULL, NULL, 'no_image.jpg', '0'),
(14, 7, 'Часы 3', 'chasy-3', NULL, 110, 0, '1', NULL, NULL, 'no_image.jpg', '0'),
(15, 7, 'Часы 4', 'chasy-4', NULL, 115, 0, '1', NULL, NULL, 'no_image.jpg', '0'),
(16, 7, 'Часы 5', 'chasy-5', NULL, 115, 0, '1', NULL, NULL, 'no_image.jpg', '0'),
(17, 7, 'Часы 6', 'chasy-6', NULL, 120, 0, '1', NULL, NULL, 'no_image.jpg', '0'),
(20, 7, 'Часы 7', 'chasy-7', NULL, 120, 0, '1', NULL, NULL, 'no_image.jpg', '0'),
(21, 7, 'Часы 8', 'chasy-8', NULL, 120, 0, '1', NULL, NULL, 'no_image.jpg', '0'),
(22, 7, 'Часы 9', 'chasy-9', NULL, 125, 0, '1', NULL, NULL, 'no_image.jpg', '0'),
(23, 7, 'Часы 10', 'chasy-10', NULL, 125, 0, '1', NULL, NULL, 'no_image.jpg', '0'),
(24, 7, 'Часы 11', 'chasy-11', NULL, 125, 0, '1', NULL, NULL, 'no_image.jpg', '0'),
(25, 7, 'Часы 12', 'chasy-12', NULL, 125, 0, '1', NULL, NULL, 'no_image.jpg', '0'),
(26, 7, 'Часы 13', 'chasy-13', NULL, 125, 0, '1', NULL, NULL, 'no_image.jpg', '0'),
(27, 7, 'Часы 14', 'chasy-14', NULL, 125, 0, '1', NULL, NULL, 'no_image.jpg', '0'),
(28, 7, 'Часы 15', 'chasy-15', NULL, 125, 0, '1', NULL, NULL, 'no_image.jpg', '0'),
(29, 7, 'Часы 16', 'chasy-16', NULL, 125, 0, '1', NULL, NULL, 'no_image.jpg', '0'),
(30, 7, 'Часы 17', 'chasy-17', NULL, 125, 0, '1', NULL, NULL, 'no_image.jpg', '0'),
(31, 7, 'Часы 18', 'chasy-18', NULL, 125, 0, '1', NULL, NULL, 'no_image.jpg', '0'),
(32, 7, 'Часы 19', 'chasy-19', NULL, 125, 0, '1', NULL, NULL, 'no_image.jpg', '0'),
(33, 7, 'Часы 20', 'chasy-20', NULL, 125, 0, '1', NULL, NULL, 'no_image.jpg', '0'),
(41, 20, 'новый', 'novyy', '<p>новый<br></p>', 20, 60, '1', 'новый', 'новый', 'no_image.jpg', '1'),
(42, 20, 'новый', 'novyy-42', '<p>новый<br></p>', 60, 30, '1', 'новый', 'новый', 'no_image.jpg', '1'),
(44, 20, 'Test', 'test', '<p>test</p>\r\n', 100, 100, '1', 'test', 'test', 'no_image.jpg', '1'),
(46, 22, 'Diesel Disain', 'diesel-disain', '', 1000, 500, '1', '', '', '28791eb77782b55bdc8a98f576415a69.jpg', '0');

-- --------------------------------------------------------

--
-- Структура таблицы `related_product`
--

CREATE TABLE `related_product` (
  `product_id` int UNSIGNED NOT NULL,
  `related_id` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `related_product`
--

INSERT INTO `related_product` (`product_id`, `related_id`) VALUES
(1, 2),
(1, 5),
(2, 5),
(2, 10),
(5, 1),
(5, 7),
(5, 8),
(46, 3),
(46, 6);

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

CREATE TABLE `user` (
  `id` int UNSIGNED NOT NULL,
  `login` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `role` enum('user','admin') NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`id`, `login`, `password`, `email`, `name`, `address`, `role`) VALUES
(1, 'admin', '$2y$10$LOaOkhVlEJ/4ZLONycXKguQ1cmdj4yjx/8GYBMF1Q3a1aZjx47Upe', 'admin@admin.loc', 'admin', 'Rus', 'admin'),
(2, 'user', '$2y$10$233pN1U6dKNmITik/V28SeBOPx.eK.5.4veBIlkXKzMqmIw9QNUBa', '1@1.com', 'user1', 'Rus', 'user'),
(4, 'User3', '$2y$10$RwAB4a/ozKjqsP2UnjZoPOt291USFH/EDBsxV.pe17hXQjzszPUO.', '3@3.com', 'User3', 'Rus', 'user'),
(6, 'test', '$2y$10$yRIGNs7xmLsxTA.k9DDcbulzAcYWrvxK2FljvWaV3Om/YtCkrNo9.', 'test@test.test', 'Test', 'Rus', 'user');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `attribute_group`
--
ALTER TABLE `attribute_group`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `attribute_product`
--
ALTER TABLE `attribute_product`
  ADD PRIMARY KEY (`attr_id`,`product_id`);

--
-- Индексы таблицы `attribute_value`
--
ALTER TABLE `attribute_value`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `value` (`value`),
  ADD KEY `attr_group_id` (`attr_group_id`);

--
-- Индексы таблицы `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `alias` (`alias`);

--
-- Индексы таблицы `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `alias` (`alias`);

--
-- Индексы таблицы `currency`
--
ALTER TABLE `currency`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `modification`
--
ALTER TABLE `modification`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `order_product`
--
ALTER TABLE `order_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`);

--
-- Индексы таблицы `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `alias` (`alias`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `hit` (`hit`);

--
-- Индексы таблицы `related_product`
--
ALTER TABLE `related_product`
  ADD PRIMARY KEY (`product_id`,`related_id`);

--
-- Индексы таблицы `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `login` (`login`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `attribute_group`
--
ALTER TABLE `attribute_group`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `attribute_value`
--
ALTER TABLE `attribute_value`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT для таблицы `brand`
--
ALTER TABLE `brand`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `category`
--
ALTER TABLE `category`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT для таблицы `currency`
--
ALTER TABLE `currency`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT для таблицы `modification`
--
ALTER TABLE `modification`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `order`
--
ALTER TABLE `order`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT для таблицы `order_product`
--
ALTER TABLE `order_product`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT для таблицы `product`
--
ALTER TABLE `product`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT для таблицы `user`
--
ALTER TABLE `user`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `order_product`
--
ALTER TABLE `order_product`
  ADD CONSTRAINT `order_product_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `order` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
