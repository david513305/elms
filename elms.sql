-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Май 05 2023 г., 04:23
-- Версия сервера: 10.4.11-MariaDB
-- Версия PHP: 7.2.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `elms`
--

-- --------------------------------------------------------

--
-- Структура таблицы `authors`
--

CREATE TABLE `authors` (
  `author_id` int(11) NOT NULL,
  `author_name` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `authors`
--

INSERT INTO `authors` (`author_id`, `author_name`, `created_at`, `updated_at`) VALUES
(1, 'Amorto Sen', '2017-02-06 22:27:30', '2018-05-19 10:45:27'),
(2, 'J.K Rowling', '2017-02-07 08:40:44', '2017-02-07 08:45:20'),
(4, 'Joseph Glioterao', '2017-02-07 08:45:56', '2017-02-07 08:46:08'),
(5, 'E.Balaguruswamy', '2017-02-07 08:53:32', '2017-02-07 08:53:32'),
(6, 'Herbert Schildt', '2017-02-07 08:53:55', '2017-02-07 08:53:55'),
(10, 'Pierre Richardson', '2017-02-07 15:30:04', '2017-02-07 15:30:04'),
(11, 'Jenelina', '2017-02-07 19:58:10', '2023-05-05 04:15:55'),
(13, 'Azarenka', '2017-02-08 09:33:02', '2017-04-14 14:50:25'),
(14, 'Henry', '2017-02-08 09:41:21', '2017-02-08 09:41:21'),
(15, 'Charles Darwin', '2017-02-13 00:24:24', '2017-02-13 00:24:24'),
(16, 'Fardin', '2017-02-13 00:36:05', '2018-05-20 14:28:01'),
(19, 'Steve Jones', '2017-02-13 10:36:03', '2017-02-13 10:36:03'),
(22, 'Harun or rashid', '2017-08-04 22:35:43', '2017-08-04 22:35:43'),
(25, 'Viernier', '2017-08-05 16:04:26', '2017-08-05 16:04:26'),
(33, 'Tarikul Islam', '2018-05-19 12:22:25', '2018-05-19 12:22:25');

-- --------------------------------------------------------

--
-- Структура таблицы `books`
--

CREATE TABLE `books` (
  `book_id` int(11) NOT NULL,
  `book_name` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL,
  `isbn_number` int(11) NOT NULL,
  `price` double NOT NULL,
  `piece_of_books` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `books`
--

INSERT INTO `books` (`book_id`, `book_name`, `category_id`, `isbn_number`, `price`, `piece_of_books`, `created_at`, `updated_at`) VALUES
(1, 'Java Programming', 19, 999, 1000, 10, '2018-05-19 12:19:36', '2018-05-20 00:47:56'),
(2, 'Objective C', 24, 777, 550, 5, '2018-05-19 12:22:25', '2018-05-19 12:22:25'),
(4, 'Arts and Practice II', 17, 666, 490, 11, '2018-05-19 13:04:28', '2018-05-19 13:04:28'),
(5, 'Python Programming', 19, 555, 500, 27, '2018-05-20 14:07:50', '2018-05-20 14:07:50'),
(6, 'Artificial Intelligence', 24, 222, 650, 49, '2018-05-20 14:08:31', '2018-05-20 14:08:31'),
(7, 'Computer Networks And Securities', 19, 444, 700, 29, '2018-05-20 14:09:32', '2018-05-20 14:09:32'),
(8, 'Arabian Prehistory', 17, 611, 800, 18, '2018-05-20 14:10:44', '2018-05-20 14:10:44'),
(9, 'The Endless Rose', 23, 211, 740, 10, '2018-05-20 14:11:32', '2018-05-20 14:11:32'),
(10, 'The King of the Forest', 22, 311, 510, 18, '2018-05-20 14:12:06', '2018-05-20 14:12:06'),
(12, 'The King of the Forest', 22, 3111, 510, 18, '2018-05-20 14:13:23', '2018-05-20 14:13:23'),
(13, 'The Lottery Man', 23, 411, 400, 13, '2018-05-20 14:13:57', '2018-05-20 14:13:57'),
(14, 'Railroad Perfection', 23, 511, 360, 16, '2018-05-20 14:14:44', '2018-05-20 14:14:44'),
(15, 'The Origin of Species', 24, 111, 350, 17, '2018-05-20 14:15:37', '2018-05-20 14:15:37'),
(16, 'The Language of the Genes', 17, 333, 400, 19, '2018-05-20 14:16:32', '2018-05-20 14:16:32'),
(17, 'Cherish The Fairy', 22, 811, 245, 21, '2018-05-20 14:17:40', '2018-05-20 14:17:40'),
(18, 'Life Of Flora And Fauna', 24, 911, 450, 25, '2018-05-20 14:18:37', '2018-05-20 14:18:37'),
(19, 'Machine Learning', 19, 1111, 520, 15, '2018-05-20 14:19:30', '2018-05-20 14:19:30'),
(20, 'Cyber crime II', 17, 1112, 340, 26, '2018-05-20 14:20:25', '2018-05-20 14:20:25'),
(21, 'Angry birds', 22, 2111, 1200, 27, '2018-05-20 14:21:10', '2018-05-20 14:21:10'),
(22, 'ss', 22, 4322, 444, 2, '2018-05-29 09:25:22', '2018-05-29 09:25:22');

-- --------------------------------------------------------

--
-- Структура таблицы `books_author`
--

CREATE TABLE `books_author` (
  `book_id` int(11) NOT NULL,
  `author_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `books_author`
--

INSERT INTO `books_author` (`book_id`, `author_id`) VALUES
(1, 5),
(2, 33),
(4, 1),
(5, 10),
(6, 4),
(7, 14),
(8, 15),
(9, 2),
(12, 13),
(13, 11),
(14, 11),
(15, 15),
(16, 4),
(17, 2),
(18, 19),
(19, 14),
(20, 10),
(21, 2),
(22, 4);

-- --------------------------------------------------------

--
-- Структура таблицы `book_issues`
--

CREATE TABLE `book_issues` (
  `id` int(11) NOT NULL,
  `issue_date` date NOT NULL,
  `student_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `issue_details` varchar(10000) NOT NULL,
  `submitted_date` date NOT NULL,
  `late_charge` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `category_name` varchar(100) NOT NULL,
  `parent` varchar(20) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `parent`, `status`) VALUES
(17, 'Arts', 'Management', 1),
(19, 'Engineering Books', 'Arts', 1),
(22, 'Fictions', 'Fictions', 1),
(23, 'Non-Fictions', 'Arts', 1),
(24, 'Science', 'Management', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `disciplines`
--

CREATE TABLE `disciplines` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `short_name` varchar(10) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `disciplines`
--

INSERT INTO `disciplines` (`id`, `name`, `short_name`, `created_at`, `updated_at`) VALUES
(11, 'Electronics and Communication ', 'ECE', '2016-11-27 21:24:59', '2016-11-27 21:24:59'),
(12, 'Mathematics Discipline', 'Math', '2016-11-27 21:25:24', '2016-11-27 21:25:24'),
(13, 'Architecture', 'Arch', '2016-11-27 21:25:46', '2016-11-27 21:25:46'),
(15, 'Chemistry', 'Chem', '2016-11-27 21:26:17', '2016-11-27 21:26:17'),
(16, 'Physics2', 'Phy', '2016-11-27 21:26:38', '2016-11-27 21:26:38'),
(17, 'Statistics', 'Stat', '2016-11-27 21:26:53', '2016-11-27 21:26:53'),
(21, 'Agrotechnology', 'AT', '2016-11-27 21:28:05', '2016-11-27 21:28:05'),
(22, 'Environmental Science', 'ES', '2016-11-27 21:28:28', '2017-08-03 23:09:39'),
(23, 'Pharmacy', 'Phar', '2016-11-27 21:28:43', '2016-11-27 21:28:43'),
(25, 'Business Administration', 'BAD', '2016-11-27 21:29:24', '2016-11-27 21:29:24'),
(26, 'English', 'EN', '2016-11-27 21:29:42', '2023-05-04 22:08:22');

-- --------------------------------------------------------

--
-- Структура таблицы `librarians`
--

CREATE TABLE `librarians` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `librarians`
--

INSERT INTO `librarians` (`id`, `user_id`, `created_at`, `updated_at`) VALUES
(4, 55, '2017-04-12 15:16:23', '2017-04-12 15:16:23');

-- --------------------------------------------------------

--
-- Структура таблицы `sessions`
--

CREATE TABLE `sessions` (
  `id` int(11) NOT NULL,
  `session_name` varchar(15) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `sessions`
--

INSERT INTO `sessions` (`id`, `session_name`, `created_at`, `updated_at`) VALUES
(21, '2020-2021', '2017-02-27 19:20:58', '2017-02-27 19:20:58'),
(23, '2021-2022', '2017-08-04 20:32:04', '2017-08-04 20:32:04'),
(24, '2022-2023', '2017-08-04 20:32:18', '2017-08-04 21:41:09');

-- --------------------------------------------------------

--
-- Структура таблицы `students`
--

CREATE TABLE `students` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `discipline_id` int(11) NOT NULL,
  `session_id` int(11) NOT NULL,
  `roll_no` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `students`
--

INSERT INTO `students` (`id`, `user_id`, `discipline_id`, `session_id`, `roll_no`, `created_at`, `updated_at`) VALUES
(5, 11, 26, 13, 2147483644, '2016-11-28 19:51:22', '2016-11-28 19:51:22'),
(7, 13, 23, 19, 2147483646, '2016-11-28 19:56:24', '2016-11-28 19:56:24'),
(8, 14, 18, 14, 2147483647, '2016-11-28 20:11:40', '2016-11-28 20:11:40'),
(9, 15, 23, 16, 20154742, '2016-11-28 20:37:47', '2016-11-28 20:37:47'),
(10, 16, 14, 13, 2147483640, '2016-11-28 21:02:42', '2016-11-28 21:02:42'),
(11, 17, 14, 13, 2147483641, '2016-11-28 21:10:32', '2016-11-28 21:10:32'),
(14, 22, 19, 16, 20167689, '2017-02-13 00:09:53', '2017-02-13 00:09:53'),
(15, 23, 23, 17, 201752589, '2017-02-15 13:39:19', '2017-02-15 13:39:19'),
(16, 24, 21, 16, 201624569, '2017-02-15 13:41:09', '2017-02-15 13:41:09'),
(17, 25, 19, 16, 2016895623, '2017-02-15 13:42:31', '2017-02-15 13:42:31'),
(25, 54, 20, 19, 96325874, '2017-04-12 15:12:22', '2017-04-12 15:12:22'),
(30, 60, 12, 13, 666666, '2017-07-27 15:54:37', '2017-07-27 15:54:37'),
(31, 61, 16, 14, 2147483645, '2017-08-03 13:43:25', '2017-08-03 13:43:25'),
(32, 62, 0, 0, 1, '2023-05-05 00:26:13', '2023-05-05 00:26:13');

-- --------------------------------------------------------

--
-- Структура таблицы `teachers`
--

CREATE TABLE `teachers` (
  `id` int(11) NOT NULL,
  `designation` varchar(20) NOT NULL,
  `discipline_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `teachers`
--

INSERT INTO `teachers` (`id`, `designation`, `discipline_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Other', 19, 18, '2016-11-28 22:22:22', '2016-11-28 22:22:22'),
(2, 'Professor', 19, 19, '2016-11-28 23:40:02', '2016-11-28 23:40:02'),
(5, 'Lecturer', 15, 53, '2017-04-12 15:11:02', '2017-04-12 15:11:02');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(20) NOT NULL,
  `last_name` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` int(11) NOT NULL,
  `phone` varchar(16) NOT NULL,
  `status` int(11) NOT NULL,
  `image` varchar(50) NOT NULL,
  `confirmation_code` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `password`, `role`, `phone`, `status`, `image`, `confirmation_code`, `created_at`, `updated_at`) VALUES
(1, 'admin', ' ', 'admin@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 1, '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'David', 'Dovydenko', 'David513305@gmail.com', '202cb962ac59075b964b07152d234b70', 2, '380938581688', 0, '', '', '2023-05-05 00:26:13', '2023-05-05 00:26:13'),
(11, 'student', '', 'student@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 2, '12121212', 0, '', '', '2016-11-28 19:51:22', '2016-11-28 19:51:22'),
(18, 'Teacher', '', 'teacher@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 3, '01926228700', 0, '', '', '2023-05-04 22:22:22', '2023-05-04 22:22:23'),
(55, 'Librarian', ' ', 'Librarian@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 4, '6256485', 0, '', '', '2017-04-12 15:16:23', '2017-04-12 15:16:23');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`author_id`);

--
-- Индексы таблицы `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`book_id`),
  ADD UNIQUE KEY `isbn_number` (`isbn_number`);

--
-- Индексы таблицы `books_author`
--
ALTER TABLE `books_author`
  ADD KEY `book_id` (`book_id`),
  ADD KEY `author_id` (`author_id`);

--
-- Индексы таблицы `book_issues`
--
ALTER TABLE `book_issues`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `student_id` (`student_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `disciplines`
--
ALTER TABLE `disciplines`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `librarians`
--
ALTER TABLE `librarians`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roll_no` (`roll_no`);

--
-- Индексы таблицы `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `phone` (`phone`),
  ADD UNIQUE KEY `email_2` (`email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `authors`
--
ALTER TABLE `authors`
  MODIFY `author_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT для таблицы `books`
--
ALTER TABLE `books`
  MODIFY `book_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT для таблицы `book_issues`
--
ALTER TABLE `book_issues`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT для таблицы `disciplines`
--
ALTER TABLE `disciplines`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT для таблицы `librarians`
--
ALTER TABLE `librarians`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `sessions`
--
ALTER TABLE `sessions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT для таблицы `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT для таблицы `teachers`
--
ALTER TABLE `teachers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `books_author`
--
ALTER TABLE `books_author`
  ADD CONSTRAINT `books_author_ibfk_1` FOREIGN KEY (`book_id`) REFERENCES `books` (`book_id`),
  ADD CONSTRAINT `books_author_ibfk_2` FOREIGN KEY (`author_id`) REFERENCES `authors` (`author_id`);

--
-- Ограничения внешнего ключа таблицы `book_issues`
--
ALTER TABLE `book_issues`
  ADD CONSTRAINT `book_issues_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
