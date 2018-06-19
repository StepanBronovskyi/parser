-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июн 18 2018 г., 17:50
-- Версия сервера: 5.7.19
-- Версия PHP: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `parser`
--

-- --------------------------------------------------------

--
-- Структура таблицы `links`
--

CREATE TABLE `links` (
  `id` int(11) NOT NULL,
  `title` varchar(400) NOT NULL,
  `url` varchar(2000) NOT NULL,
  `date_of_update` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `links`
--

INSERT INTO `links` (`id`, `title`, `url`, `date_of_update`) VALUES
(975, 'Автомобілі з якими двигунам найчастіше купують українці', '/articles/avto/_avtomobili-z-yakimi-dvigunam-najchastishe-kupuyut-ukrayinci/842956', '2018-06-18 15:17:33'),
(976, 'Справа Бабченка: підозрюваний зробив нову заяву', '/articles/np/_sprava-babchenka-pidozryuvanij-zrobiv-novu-zayavu/842957', '2018-06-18 15:17:33'),
(977, 'Швеція - Південна Корея (LIVE), перший тайм, 0:0', '/articles/sport/_sveciya-pivdenna-koreya-live-pershij-tajm-00/842932', '2018-06-18 15:17:33'),
(978, 'Бойовики на Донбасі обстріляли медиків', '/articles/donbas/_bojoviki-na-donbasi-obstrilyali-medikiv/842954', '2018-06-18 15:17:33'),
(979, 'Рибалка спіймав у Дніпрі сома розміром з людину: найцікавіші випадки6', '/articles/science-life/_ribalka-spijmav-u-dnipri-soma-rozmirom-z-lyudinu-najcikavishi-vipadki/842939', '2018-06-18 15:17:33'),
(1025, 'Росія любить спорт. Під змагання зручно влаштовувати війни - Андрухович', '/blog/50406/rosiya-lyubit-sport-pid-zmagannya-zruchno-vlashtovuvati-vijni', '2018-06-18 15:53:58'),
(1026, 'Профспілка металургів і гірників виступила проти ініціативи нардепа Усова провести в Кривому Розі гей-парад', '/articles/life/_profspilka-metalurgiv-i-girnikiv-vistupila-proti-iniciativi-nardepa-usova-provesti-v-krivomu-rozi-gejparad/842965', '2018-06-18 15:53:58'),
(1027, 'Чоловік підірвав себе у прямому ефірі', '/articles/np/_colovik-pidirvav-sebe-u-pryamomu-efiri/842967', '2018-06-18 15:53:58'),
(1028, 'У Києві знесуть багатоповерховий будинок', '/articles/real-estate/_u-kiyevi-znesut-bagatopoverhovij-budinok/842964', '2018-06-18 15:53:58'),
(1029, '\"Моє дітище\" - Порошенко розказав про найуспішнішу реформу', '/articles/politics/_moye-ditische-poroshenko-rozkazav-pro-najuspishnishu-reformu/842943', '2018-06-18 15:53:58'),
(1030, '\"Діти отримували ліки, а дорослі - помирали десятками\" - Тетяна Кулеша', '/articles/health/_diti-otrimuvali-liki-a-dorosli--pomirali-desyatkami-tetyana-kulesha/842962', '2018-06-18 16:26:47'),
(1031, 'Жінка вистрілила чоловікові у геніталії під час сварки за кондиціонер', '/articles/world-life/_zinka-vistrilila-cholovikovi-u-genitaliyi-pid-chas-svarki-za-kondicioner/842966', '2018-06-18 16:26:47'),
(1032, 'До Сущенка не пустили Денісову: почалися переговори з росіянами5', '/articles/krym/_do-suschenka-ne-pustili-denisovu-pochalisya-peregovori-z-rosiyanami/842971', '2018-06-18 16:26:47'),
(1033, 'Смакують, як у Росії: українська компанія призупинила поставки солодощів до Німеччини', '/articles/economics/_smakuyut-yak-u-rosiyi-ukrayinska-kompaniya-prizupinila-postavki-solodoschiv-do-nimechchini/842970', '2018-06-18 16:26:47'),
(1034, 'Що побачать пасажири з вікна Hyperloop', '/articles/science/_so-pobachat-pasazhiri-z-vikna-hyperloop/842972', '2018-06-18 16:26:47'),
(1035, 'Антикорсуд: Парубій пояснив позицію щодо скандальної поправки', '/articles/politics/_antikorsud-parubij-poyasniv-poziciyu-schodo-skandalnoyi-popravki/842968', '2018-06-18 16:39:50'),
(1070, 'Приїхав на відпочинок і загинув: рятувальники шукають в морі 10-річного хлопця', '/articles/np/_priyihav-na-vidpochinok-i-zaginuv-ryatuvalniki-shukayut-v-mori-10richnogo-hlopcya/843000', '2018-06-18 17:33:15'),
(1071, 'Показали \"чудо\" кустарного Донецького воєнторгу: системи \"Чебурашка\" і \"Сніжинка\" відстрілялися4', '/articles/donbas/_pokazali-chudo-kustarnogo-doneckogo-voyentorgu-sistemi-ceburashka-i-snizhinka-vidstrilyalisya/842989', '2018-06-18 17:33:15'),
(1072, 'Активісти вимагають від Генпрокуратури перевірити факти корупції екс-міністрів оборони', '/articles/politics/_aktivisti-vimagayut-vid-genprokuraturi-pereviriti-fakti-korupciyi-eksministriv-oboroni/842995', '2018-06-18 17:33:15'),
(1073, 'Кава, матюки та книжки - як пройшов міжнародний літературний фестиваль', '/articles/regions/_kava-matyuki-ta-knizhki-yak-projshov-mizhnarodnij-literaturnij-festival/842979', '2018-06-18 17:33:15'),
(1074, 'Бюджетного iPhone \"для бідних\" не буде', '/articles/science/_byudzhetnogo-iphone-dlya-bidnih-ne-bude/842983', '2018-06-18 17:33:15'),
(1075, 'Із вуха чоловіка дістали живого таргана', '/articles/world-life/_iz-vuha-cholovika-distali-zhivogo-targana/842977', '2018-06-18 17:33:15');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `links`
--
ALTER TABLE `links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `title` (`title`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `links`
--
ALTER TABLE `links`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1076;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
