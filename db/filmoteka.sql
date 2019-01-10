-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Хост: localhost:9001
-- Время создания: Янв 10 2019 г., 14:15
-- Версия сервера: 5.7.23
-- Версия PHP: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- База данных: `WD05-filmoteka-zhuravleva`
--

-- --------------------------------------------------------

--
-- Структура таблицы `films`
--

CREATE TABLE `films` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `genre` text NOT NULL,
  `year` int(11) NOT NULL,
  `description` text NOT NULL,
  `photo` char(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `films`
--

INSERT INTO `films` (`id`, `title`, `genre`, `year`, `description`, `photo`) VALUES
(17, 'Властелин Колец', 'фантастика', 2016, 'Будущее, 2154 год. Земля страдает от перенаселения, болезней и войн. Самые богатые жители Земли покинули её и переселились на космическую станцию «Элизиум» с чистой окружающей средой и высшим уровнем здравоохранения, лечением, любых, вплоть до излечения рака, лучевой болезни, отращивания потерянных конечностей и т.д. Кроме того жители Элизиума, вероятно, бессмертны или могут жить гораздо дольше обычных людей, т.к. омолаживают свой организм. Остальные живут в трущобах на Земле, где вынуждены бороться за выживание, в опасных и вредных условиях окружающей среды и труда. ', '65086742.jpg'),
(19, 'Мстители', 'фантастика', 2016, '', '51562110.jpg'),
(21, 'Такси 4', 'боевик', 2018, 'Молодой таксист Даниэль помешан на быстрой езде. Как ураган, проносится он по извилистым улицам Марселя на своём мощном ревущем звере «Пежо», пугая пассажиров и прохожих. Неподкупный полицейский Эмильен вынуждает его помочь в поимке банды грабителей, ускользающих от полиции на своих неуловимых «Мерседесах». И до самого конца не ясно, кто же сможет удержаться на крутом вираже.', '61549748.jpg'),
(24, 'Интерстеллар', 'фантастика', 2014, 'Когда засуха приводит человечество к продовольственному кризису, коллектив исследователей и учёных отправляется сквозь червоточину (которая предположительно соединяет области пространства-времени через большое расстояние) в путешествие, чтобы превзойти прежние ограничения для космических путешествий человека и переселить человечество на другую планету.', '67863423.jpg'),
(25, 'Элизиум ', 'фантастика', 2016, '$db_file_name', '92217651.jpg'),
(47, 'Большой куш', 'фантастика', 2020, '', '52279497.jpg');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `films`
--
ALTER TABLE `films`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `films`
--
ALTER TABLE `films`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;