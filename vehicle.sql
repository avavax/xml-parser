-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июн 16 2022 г., 22:32
-- Версия сервера: 10.4.19-MariaDB
-- Версия PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `autobase`
--

-- --------------------------------------------------------

--
-- Структура таблицы `vehicle`
--

CREATE TABLE `vehicle` (
  `id` int(10) UNSIGNED NOT NULL,
  `uin` int(11) DEFAULT NULL,
  `dealer_id` int(10) UNSIGNED DEFAULT NULL,
  `category_id` int(10) UNSIGNED DEFAULT NULL,
  `brand_id` int(10) UNSIGNED DEFAULT NULL,
  `model_id` int(10) UNSIGNED DEFAULT NULL,
  `generation_id` int(10) UNSIGNED DEFAULT NULL,
  `modification_id` int(10) UNSIGNED DEFAULT NULL,
  `body_configuration_id` int(10) UNSIGNED DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `vehicle`
--

INSERT INTO `vehicle` (`id`, `uin`, `dealer_id`, `category_id`, `brand_id`, `model_id`, `generation_id`, `modification_id`, `body_configuration_id`, `year`, `description`) VALUES
(3071961, 0, 3711, 1, 105, 1912, 9701, 64229, 8349, 2019, ''),
(3081558, 0, 3713, 1, 89, 10324, 10325, 69869, 9024, 2019, 'Прекрасный городской кроссовер.\nСостояние нового автомобиля.\nОригинальный пробег.\n1 владелец.\nПТС оригинал.\nПолный комплект ключей.\nБогатая комплектация:\nКожаный салон\nБесключевой доступ\nКлимат-контроль\nПолный привод\nЛитые диски\nМульти-руль\nКамеры кругового обзора\nСвето-диодная оптика\nЭтот автомобиль ждет именно Вас!'),
(3081565, 0, 3711, 1, 97, 6536, 9122, 56611, 3901, 2018, 'Отличный немецкий кроссовер, который подарит вам незабываемые впечатления от вождения, престиж и уважение на дороге.\nОтличное состояние полностью обслужен по регламенту\nВложений не требует\nОригинальный пробег\n1 владелец\nПтс оригинал\nБез дтп\nПолный комплект ключей \nКузов в заводском окрасе\nКлимат контроль\nСистема аварийного торможения\nПротивоугонная система.'),
(3081569, 0, 3711, 1, 46, 883, 10748, 73064, 9459, 2021, 'Отличный городской автомобиль\n1 Владелец\nАвтомобиль на гарантии\nОригинальный пробег\nВесь в заводском окрасе\nБез ДТП'),
(3081573, 0, 3711, 1, 46, 883, 10748, 73064, 9459, 2020, 'Компактный пятиместный седан B класса.\nОтличное состояние полностью обслужен по регламенту.\nВложений не требует.\nОригинальный пробег.\n1 владелец.\nПолный комплект ключей. \nБогатая комплектация.'),
(3081577, 0, 3711, 1, 105, 1912, 9701, 64229, 8349, 2019, 'Автомобиль в идеальном состоянии, один очень аккуратный собственник.\nБогатая комплектация.\nНЕ ТАКСИ!!!'),
(3081582, 0, 3711, 1, 112, 2097, 10797, 73644, 9526, 2021, ''),
(3081584, 0, 3711, 1, 14, 159, 2453, 1888, 7468, 2008, ''),
(3081585, 0, 3711, 1, 89, 1681, 5560, 48647, 4597, 2018, 'Надежный, экономичный, простой в эксплуатации.\nПрактически НОВЫЙ автомобиль, от одного владельца!'),
(3081590, 0, 3711, 1, 112, 2097, 10797, 73643, 9526, 2020, 'Отличный немецкий седан.\nПрекрасное состояние. \nПолностью обслужен по регламенту.\nВложений не требует.\nОригинальный пробег.\n2 владельца.\nПТС оригинал.\nПолный комплект ключей.\nКузов в заводском окрасе.\nХорошая комплектация.'),
(3081591, 0, 3711, 1, 46, 890, 10897, 77368, 10059, 2021, ''),
(3081594, 0, 3711, 1, 46, 883, 6696, 57879, 5789, 2019, 'Отличный,надежный и неприхотливый автомобиль\nОригинальный пробег\n2 владельца\nПтс оригинал\nБез дтп\nПолный комплект ключей \nКузов в заводском окрасе'),
(3081597, 0, 3711, 1, 105, 1951, 5106, 45097, 7892, 2014, 'Легендарный японский внедорожник.\nСалон кожа, чистый и ухоженный.\n7 местная комплектация, с камерами кругового обзора.'),
(3081599, 0, 3711, 1, 46, 883, 10748, 73064, 9459, 2020, ''),
(3081600, 0, 3711, 1, 97, 1780, 10642, 72260, 9354, 2020, 'Один собственник по птс, два ключа, без дтп и вложений, зеленая автотека. Климат контроль, мультируль, литые диски, бесключевой доступ. Обслуживалась у дилера'),
(3081605, 0, 3711, 1, 46, 883, 6696, 57879, 5789, 2019, 'Проверена специалистами\nГотова к эксплуатации\nВыгодная цена\nПродиагностирована\n2 Владельца\n65000 пробег'),
(3081606, 0, 3711, 1, 68, 1250, 3425, 23889, 7115, 2012, ''),
(3081608, 0, 3711, 1, 89, 10324, 10325, 69869, 9024, 2019, 'Мульти-руль, Климат, Безключевой доступ, Полный привод, Подсветка салона(8-цветов), Литые диски, Старт-стоп, Камера заднего вида, задние парктроники, современная оптика. Отличное состояние, маленький пробег. Рено Аркана, ваш лучший выбор! Экономичная, привлекательный дизайн.'),
(3081609, 0, 3711, 1, 97, 1780, 7692, 58931, 5219, 2019, 'Отличное состояние полностью обслужен по регламенту\nВложений не требует\nОригинальный пробег\n3 владельца\nПтс оригинал\nБез дтп\nПолный комплект ключей \nКузов в заводском окрасе'),
(3081611, 0, 3711, 1, 68, 1259, 3446, 23106, 7842, 2011, ''),
(3081612, 0, 3711, 1, 68, 5017, 5038, 44479, 4852, 2013, 'Красивый, мощный, настоящий Mercedes-Benz CL-6.3 AMG\nКузов в родной краске, все системы работают исправно.\nСалон автомобиля в идеальном состоянии.'),
(3081614, 0, 3711, 1, 46, 6209, 53956, 77532, 10086, 2021, 'Отличный городской кроссовер.\nВесь в заводском окрасе.\nС гарантией 5лет или 150т.км'),
(3081616, 0, 3711, 1, 112, 2088, 10448, 71799, 9152, 2020, 'Отличный немецкий седан который подарит вам незабываемые впечатления от вождения\nОтличное состояние полностью обслужен по регламенту\nВложений не требует\nОригинальный пробег\n1 владелец\nПтс оригинал\nБез дтп\nПолный комплект ключей \nКузов в заводском окрасе\nКондиционер\nКруиз контроль/Активный круиз контроль'),
(3081618, 0, 3711, 1, 14, 155, 10328, 70578, 9028, 2020, ''),
(3081620, 0, 3711, 1, 14, 149, 2432, 2135, 5528, 2013, 'Отличный немецкий седан который подарит вам незабываемые впечатления от вождения, престиж и уважение на дороге.\nХорошее состояние полностью обслужен по регламенту\nОригинальный пробег\nПолный комплект ключей \nКлимат контроль 2х зонный\nСалон кожа\nЭлектро привод сидений\nКруиз контроль'),
(3081621, 0, 3711, 1, 9, 83, 5113, 733, 2222, 2011, 'Отличный, компактный автомобиль\nХорошее состояние\nПтс оригинал\n3 хозяина\nПолный комплект ключей\nСветлый салон'),
(3081622, 0, 3711, 1, 46, 883, 10748, 73064, 9459, 2021, 'Отличный городской автомобиль\n1 Владелец\nАвтомобиль на гарантии\nОригинальный пробег\nВесь в заводском окрасе\nБез ДТП'),
(3081625, 0, 3711, 1, 68, 1259, 3446, 23107, 7844, 2013, ''),
(3081628, 0, 3711, 1, 46, 6209, 6237, 56219, 1969, 2019, 'Отличный корейский кроссовер, который подарит вам незабываемые впечатления от вождения, престиж и уважение на дороге.\nОтличное состояние полностью обслужен по регламенту\nВложений не требует\nОригинальный пробег\n1 владелец\nПтс оригинал\nПолный комплект ключей \nКузов в заводском окрасе \nБогатая комплектация\nКлимат контроль 1 зонный\nСалон ткань\nПротивоугонная система\nЛитые диски 16\"\nНавигация\nМультимедия'),
(3081629, 0, 3711, 1, 46, 883, 10748, 73064, 9459, 2021, 'Свежий автомобиль.\nНЕ работал в такси.'),
(3081633, 0, 3711, 1, 97, 1780, 7691, 51216, 5317, 2016, 'ŠKODA HOCKEY EDITION \nклимат контроль\nлитые диски \nтканевый салон\nоригинал птс'),
(3081634, 0, 3711, 1, 55, 995, 7677, 58871, 5070, 2018, 'Надежный корейский седан.\nОтличное состояние.\nПолностью обслужен.\nОригинальный пробег.\n3 владельца.\nПТС оригинал.\nБез ДТП.\nПолный комплект ключей.\nКузов в заводском окрасе.\nНадежная коробка автомат.\nМульти-руль.'),
(3081636, 0, 3711, 1, 97, 1780, 10642, 72261, 9354, 2020, ''),
(3081637, 0, 3711, 1, 46, 890, 10897, 77367, 10059, 2021, ''),
(3081645, 0, 3711, 1, 73, 1351, 3544, 34890, 6420, 2014, ''),
(3081648, 0, 3711, 1, 55, 1002, 5771, 54601, 5939, 2016, 'Отличное техническое состояние, хорошая комплектация и надежность, все эти качества присущи данному автомобилю.  Большой клиренс огромный ресурс и мощный двигатель позволят вам путешествовать и получать удовольствие от езды как повседневной так и поездок на природу. Главное своевременное обслуживание и автомобиль прослужит вам долгие годы.'),
(3081650, 0, 3711, 1, 55, 1002, 10052, 68088, 8729, 2019, 'Отличный автомобиль для любителей бездорожья и красот природы. также отлично подходит для города.\nПросторный салон, отличное состояние.'),
(3081651, 0, 3711, 1, 112, 2097, 10797, 73642, 9526, 2020, 'Отличный городской автомобиль\n1 Владелец\nАвтомобиль на гарантии\nОригинальный пробег\nВесь в заводском окрасе'),
(3081656, 0, 3711, 1, 118, 2193, 22319, 75627, 9816, 2021, 'Состояние нового автомобиля, без окрасов и дтп, технически в идеале. Один собственник, два ключа, 7 мест, кондиционер, камера заднего вида'),
(3081662, 0, 3711, 1, 46, 884, 7820, 59931, 5998, 2018, ''),
(3081666, 0, 3711, 1, 118, 5814, 6517, 56909, 4115, 2017, 'Отличный автомобиль.\nХорошее состояние.\nОригинальный пробег.\n2 владельца.\nПТС оригинал.\nБез дтп.\nКузов в заводском окрасе.'),
(3081669, 0, 3711, 1, 9, 96, 4596, 47504, 6556, 2015, 'Без окрасов, без вложений по технической части автомобиля, два ключа, климат-контроль'),
(3081671, 0, 3711, 1, 55, 7811, 10869, 74104, 9596, 2021, 'Представляем вашему вниманию Kia K5, надежный автомобиль, состояние отличное!\nПо кузову в заводском окрасе, 1 владелец за все время.\nКомплектация: салон ткань, 2-зонный климат-контроль, круиз-контроль, парктроники в круг, камера заднего вида, эл обогрев передних сидений, зеркал заднего вида.'),
(3081673, 0, 3711, 1, 68, 1252, 3434, 9408, 7397, 2015, 'Престижный немецкий автомобиль с богатой комплектацией. Панорама, камера 360 градусов, массаж и память сидений. Премиальная музыка Burmester. AMG пакет. В отличном техническом состоянии, вложений не требует'),
(3081679, 0, 3711, 1, 97, 1779, 6664, 57780, 3989, 2017, 'Проверенный временем автомобиль.\nСамое надежное сочетание двигатель и коробка.\nСвоевременное обслуживание.'),
(3081680, 0, 3711, 1, 105, 1952, 10888, 74290, 9622, 2021, ''),
(3081683, 0, 3711, 1, 112, 2097, 4462, 52935, 7202, 2020, 'Самая надежная комплектация, классический автомат и А\\С.\nНе использовался в такси.\nЧистый ухоженный автомобиль.'),
(3081684, 0, 3711, 1, 55, 999, 9801, 62757, 8436, 2019, 'Комплектация Premium+ 7 мест\nКоричневый кожаный салон, навигация, камера кругового обзора, эл привод водительского сиденья с памятью положения, вентиляция передних сидений, подогрев передних/задних сидений, климат-контроль 2-зонный, круиз-контроль, панорама, музыка Harman/kordon'),
(3081687, 0, 3711, 1, 55, 995, 7677, 60560, 5107, 2019, 'Отличный городской автомобиль\n1 Владелец\nАвтомобиль на гарантии\nОригинальный пробег'),
(3081688, 0, 3711, 1, 97, 6536, 9122, 56608, 3901, 2019, ''),
(3084317, 0, 3711, 1, 112, 2103, 10985, 74966, 9720, 2021, '1 собственник, без дтп и окрасов. Без вложений по технической части, автомобиль на гарантии'),
(3084321, 0, 3711, 1, 55, 999, 10786, 74465, 9506, 2021, ''),
(3084329, 0, 3711, 1, 112, 2097, 10797, 73644, 9526, 2021, ''),
(3084337, 0, 3711, 1, 55, 1003, 5285, 7496, 6236, 2013, ''),
(3084341, 0, 3711, 1, 118, 2192, 4513, 28069, 3407, 2017, 'Комплектация: кондиционер, 2 эл стеклоподъемника'),
(3084421, 0, 3711, 1, 68, 5067, 7696, 58986, 7613, 2017, ''),
(3084426, 0, 3711, 1, 105, 1981, 4327, 33930, 8059, 2013, ''),
(3084429, 0, 3711, 1, 9, 6128, 10384, 73360, 9094, 2020, ''),
(3084432, 0, 3711, 1, 9, 85, 6392, 55945, 2404, 2018, ''),
(3084438, 0, 3711, 1, 55, 989, 6706, 58002, 4688, 2017, 'Комплектация: кондиционер, датчик света, система курсовой устойчивости, мультируль'),
(3084440, 0, 3711, 1, 9, 85, 10765, 77031, 9507, 2021, ''),
(3084455, 0, 3711, 1, 9, 97, 10833, 76813, 9563, 2021, ''),
(3086544, 0, 3711, 1, 97, 1780, 7692, 58581, 5219, 2019, 'Отличный немецкий автомобиль, который зарекомендовал себя как надежный и безотказный.\nОтличное состояние полностью обслужен по регламенту\nВложений не требует\nОригинальный пробег\n2 владельца\nПтс оригинал\nБез дтп\nПолный комплект ключей \nКузов в заводском окрасе \nБогатая комплектация\nКлимат контроль 1 зонный\nСалон ткань\nПротивоугонная система\nШтатная аудиосистема'),
(3086545, 0, 3711, 1, 46, 883, 6696, 57879, 5789, 2018, 'Отличный корейский седан, который зарекомендовал себя как надежный и безотказный.\nОтличное состояние полностью обслужен по регламенту\nВложений не требует\nОригинальный пробег\n1 владельца\nПтс оригинал\nБез дтп\nПолный комплект ключей \nКузов в заводском окрасе\nКомплектация COMFORT \nКондиционер\nСалон ткань\nПротивоугонная система\nШтатная аудиосистема'),
(3087121, 0, 3711, 1, 118, 2191, 4590, 67734, 8751, 2019, '1 владелец, оригинальный пробег, автомат\nКомплектация: 2 эл стеклоподъемника, кондиционер, подогрев передних сидений'),
(3089277, 0, 3711, 1, 105, 1912, 9701, 64230, 8349, 2019, 'Максимальная комплектация! Executive Safety! +Зимний пакет!\nПроекция, новая оптика(включая задние стопы (LED)), мультимедия, навигация, вентиляция передних сидений, кожа, задний подлокотник с регулируемой панелью приборов, климата и подогрева, навигатор, электронная приборная панель, литые фирменные диски(не стандартные), отличная история, камеры 360*.'),
(3089669, 0, 3711, 1, 14, 150, 7670, 59013, 6290, 2018, ''),
(3096077, 0, 3711, 1, 46, 883, 10748, 73064, 9459, 2020, ''),
(3096424, 0, 3711, 1, 76, 1467, 7718, 69432, 7390, 2020, 'Комплектация: кожаный салон, бесключевой доступ, запуск с кнопки, фароомыватели, люк, обогрев ветрового стекла, датчик света, дождя, климат, круиз-контроль, камеры кругового обзора, навигация, эл привод водительского сидения, мультируль, подогрев передних сидений, зеркал заднего вида'),
(3098267, 0, 3711, 1, 105, 1912, 9701, 64229, 8349, 2019, ''),
(3098920, 0, 3711, 1, 112, 2103, 5802, 57354, 7580, 2020, ''),
(3099056, 0, 3711, 1, 68, 1250, 3425, 23887, 7115, 2014, '3 Владельца, отличное состояние, небольшой пробег.\nКлимат многозонный, кожан салон, кожан руль,  подогрев передних сидений, 6 подушек безопасности, мульти-руль, ксенон, 4элстекл, парктроники перед и зад, круиз-контроль, пневмо-подвеска.'),
(3099059, 0, 3711, 1, 46, 883, 10748, 73064, 9459, 2021, 'Отличный автомобиль, который подарит вам незабываемые впечатления от вождения.\nОтличное состояние, полностью обслужен по регламенту.\nВложений не требует\nОригинальный пробег\n1 владелец\nПТС оригинал\nПолный комплект ключей \nКондиционер, подогрев передних сидений, подушки безопасности водителя и пассажира, 15 стальные диски.'),
(3099212, 0, 3711, 1, 14, 158, 9978, 66635, 8636, 2020, ''),
(3100581, 0, 3711, 1, 46, 890, 10036, 67338, 8698, 2019, ''),
(3100699, 0, 3711, 1, 60, 1071, 3274, 31970, 3501, 2014, ''),
(3100732, 0, 3711, 1, 55, 979, 10075, 67825, 8762, 2021, ''),
(3100982, 0, 3711, 1, 9, 86, 5591, 48774, 4013, 2018, ''),
(3106236, 0, 3711, 1, 60, 1061, 10022, 67073, 8677, 2019, ''),
(3107720, 0, 3711, 1, 83, 1640, 10882, 74212, 9611, 2021, ''),
(3109075, 0, 3711, 1, 14, 148, 6455, 1752, 5191, 2014, ''),
(3111961, 0, 3711, 1, 118, 5814, 6517, 59886, 4148, 2021, ''),
(3113590, 0, 3711, 1, 105, 1912, 7655, 58776, 5200, 2017, ''),
(3113591, 0, 3711, 1, 105, 1912, 44751, 76858, 9997, 2021, ''),
(3113592, 0, 3711, 1, 55, 995, 7677, 58871, 5070, 2018, ''),
(3113599, 0, 3711, 1, 60, 1071, 10420, 70624, 9129, 2021, 'Отличный автомобиль в комплектации Premium!'),
(3113600, 0, 3711, 1, 9, 88, 10676, 74505, 9380, 2021, ''),
(3113605, 0, 3711, 1, 55, 979, 10075, 67825, 8762, 2018, ''),
(3114014, 0, 3711, 1, 112, 2103, 5802, 57353, 7580, 2017, 'Отличный немецкий кроссовер.\nВложений не требует.\nОригинальный пробег.\n2 владельца.\nПТС оригинал.\nПолный комплект ключей.\nБогатая комплектация:\nДвух зонный климат контроль\nПарктроник\nКруиз контроль\nПодогрев сидений\nМультимедиа \nМульти-руль\nРегулируемая по высоте и вылету рулевая колонка'),
(3115239, 0, 3711, 1, 113, 2132, 4491, 18626, 5255, 2008, 'Отличный шведский седан, в хорошем состоянии.\nОригинальный пробег\nПолный комплект ключей \nБогатая комплектация\nКлимат контроль 2х зонный\nСалон кожа\nЭлектро привод сидений\nКамера заднего вида\nКруиз контроль\nПротивоугонная система\nШтатная аудиосистема'),
(3116518, 0, 3711, 1, 112, 2103, 10985, 74966, 9720, 2021, ''),
(3116519, 0, 3711, 1, 100, 1846, 10058, 67602, 8736, 2020, ''),
(3116817, 0, 3711, 1, 118, 5814, 6517, 54203, 4115, 2020, 'Состояние нового автомобиля! Состояние кузова (без окрасов), техническое состояние отличное! Состояние салона отличное! Комплектация: Мульти-руль, Камера заднего вида, Мульти-медия, Кондиционер.'),
(3116974, 0, 3711, 1, 46, 885, 9827, 66758, 8463, 2019, ''),
(3117688, 0, 3711, 1, 46, 6209, 6237, 58164, 1969, 2017, ''),
(3118630, 0, 3711, 1, 58, 1049, 7926, 60572, 2308, 2018, ''),
(3119613, 0, 3711, 1, 9, 86, 10350, 70191, 9064, 2021, ''),
(3119739, 0, 3711, 1, 112, 2097, 10797, 73644, 9526, 2020, 'Отличный немецкий автомобиль. \nПолностью обслужен по регламенту у официального дилера.\nВложений не требует.\nОригинальный пробег.\n1 владелец.\nПолный комплект ключей.\nБогатая комплектация:\nКлимат контроль\nКамера заднего вида\nПротивоугонная система\nНавигация\nЗимний пакет\nПарктроник\nАвтомобиль на гарантии у официального дилера'),
(3119921, 0, 3711, 1, 118, 5814, 6517, 59887, 4148, 2018, ''),
(3119922, 0, 3711, 1, 46, 6209, 6237, 56219, 1969, 2018, ''),
(3120165, 0, 3711, 1, 105, 1981, 4327, 33931, 8059, 2013, ''),
(3120166, 0, 3711, 1, 14, 4973, 4994, 44103, 7510, 2010, ''),
(3121473, NULL, 3711, 2, 120, 7544, NULL, NULL, NULL, 2019, 'Отличный отечественный грузопассажирский автомобиль который будет настоящим помощником в хозяйстве и в бизнесе.\nОтличное состояние полностью обслужен по регламенту\nВложений не требует\nОригинальный пробег\n2 владельца\nПтс оригинал\nПолный комплект ключей \nЛюк'),
(3123609, 0, 3711, 1, 46, 6209, 6237, 56221, 1969, 2019, ''),
(3124468, 0, 3711, 1, 78, 1515, 3807, 12126, 2913, 2013, ''),
(3126497, 0, 3711, 1, 38, 664, 2838, 21641, 5830, 2007, ''),
(3126933, 0, 3711, 1, 55, 995, 7677, 58871, 5070, 2018, ''),
(3131001, 0, 3711, 1, 118, 5814, 6517, 59886, 4148, 2021, ''),
(3131420, 0, 3711, 1, 9, 88, 10676, 74504, 9379, 2020, ''),
(3131421, 0, 3711, 1, 55, 995, 7677, 60560, 5107, 2018, 'Отличный корейский хэтчбек.\nПрекрасное состояние.\nПолностью обслужен по регламенту.\nВложений не требует.\nОригинальный пробег.\n1 владелец.\nПТС оригинал.\nБез ДТП.\nПолный комплект ключей. \nКузов в заводском окрасе.\nБогатая комплектация:\nСистема курсовой устойчивости\nАнтиблокировочная система\nДатчик давления в шинах\nКондиционер\nМульти-руль\nМедиа система\nДатчик давления в шинах\nЗимний пакет:\nПодогрев руля\nПодогрев сидений\nОбогрев зеркал'),
(3132162, 0, 3711, 1, 55, 995, 10889, 74301, 9624, 2021, 'Замечательный, практически новый автомобиль, в комплектации Luxe, станет Вашим верным другом и помощником!'),
(3132163, 0, 3711, 1, 112, 2097, 4462, 56528, 7202, 2019, ''),
(3134717, 0, 3711, 1, 46, 868, 4748, 40078, 4901, 2011, ''),
(3135063, 0, 3711, 1, 46, 863, 6191, 54996, 3854, 2007, ''),
(3136662, 0, 3711, 1, 55, 1000, 6698, 57905, 5766, 2017, 'Отличный автомобиль, который подарит вам незабываемые впечатления от вождения!\nОтличное состояние полностью обслужен по регламенту\nВложений не требует\nОригинальный пробег\n1владелец\nПтс оригинал\nБез дтп\nПолный комплект ключей \nКузов в заводском окрасе\nБогатая комплектация\nСалон комбинированный\nЭлектро привод сидения водителя\nБесключевой доступ\nКамера заднего вида\nКруиз контроль\nПротивоугонная система\nНавигация'),
(3138670, NULL, 3711, 1, 9, 10010, NULL, 69410, 8658, 2019, NULL),
(3140104, 0, 3711, 1, 55, 978, 5770, 50727, 1447, 2016, ''),
(3140322, 0, 3711, 1, 89, 6368, 10799, 73655, 9528, 2021, ''),
(3140420, 0, 3711, 1, 46, 884, 10579, 71813, 9293, 2021, ''),
(3140421, 0, 3711, 1, 9, 91, 2358, 811, 6153, 2011, 'Отличный немецкий авто, который подарит вам незабываемые впечатления от вождения\nХорошее состояние полностью обслужен по регламенту\nОригинальный пробег\n3 владельца\nПтс оригинал\nПолный комплект ключей \nКлимат контроль 2х зонный\nСалон кожа\nЭлектро привод сидений\nПамять водительского сидения\nБесключевой доступ\nДоводчики на дверях\nКруиз контроль'),
(3140505, 0, 3711, 1, 89, 1681, 5560, 48651, 4597, 2017, 'Легендарный Duster, несокрушимый вездеходный автомобиль на дизельном моторе, полном приводе, полностью проверен, находится в идеальном состоянии. Без ДТП, 2 владельца, Отличная история, в заводском окрасе. Однозначно рекомендуем к покупке.'),
(3140596, 0, 3711, 1, 55, 979, 6641, 57358, 2517, 2018, ''),
(3140737, 0, 3711, 1, 14, 149, 10804, 73721, 9535, 2020, ''),
(3140865, 0, 3711, 1, 112, 2097, 4462, 52935, 7202, 2016, ''),
(3141498, 0, 3711, 1, 105, 1902, 4166, 15962, 4518, 2005, ''),
(3141777, 0, 3711, 1, 105, 1912, 4181, 16347, 5309, 2014, ''),
(3142954, 0, 3711, 1, 60, 1069, 7933, 60616, 3306, 2021, ''),
(3142957, 0, 3711, 1, 112, 2103, 4470, 17667, 7596, 2015, ''),
(3143031, 0, 3711, 1, 67, 1191, 6710, 58855, 5736, 2017, ''),
(3143175, 0, 3711, 1, 55, 988, 10033, 67225, 8696, 2019, ''),
(3143555, 0, 3711, 1, 46, 6209, 10772, 73310, 9488, 2021, 'Отличный кроссовер на полном приводе.\nПолностью обслужен по регламенту.\nВложений не требует, состояние нового авто.\nОригинальный пробег.\n2 владельца.\nПТС оригинал.\nБез ДТП.\nПолный комплект ключей.\nКузов в заводском окрасе.\nБогатая комплектация:\nКлимат контроль\nБесключевой доступ\nЗапуск двигателя с кнопки\nКамера заднего вида\nПодогрев сидений\nПодогрев руля\nКруиз контроль\nАнтиблокировочная система\nАнтипробуксовочная система\nСистема курсовой устойчивости\nДатчик давления в шинах\nНавигационная система\nБортовой компьютер'),
(3143556, 0, 3711, 1, 97, 7636, 9115, 74467, 3853, 2021, ''),
(3144757, 0, 3711, 1, 118, 2191, 4590, 67733, 8751, 2020, ''),
(3144970, 0, 3711, 1, 14, 149, 6578, 56812, 5345, 2018, ''),
(3145424, 0, 3711, 1, 100, 1844, 4112, 26909, 4438, 2006, 'Компактный автомобиль, с высоким уровнем проходимости по бездорожью!'),
(3145834, 0, 3711, 1, 97, 1779, 4035, 14701, 4240, 2014, ''),
(3145955, 0, 3711, 1, 55, 988, 5444, 54234, 4484, 2018, ''),
(3147014, 0, 3711, 1, 78, 1521, 3817, 35693, 5301, 2012, ''),
(3147015, 0, 3711, 1, 118, 2193, 6516, 28075, 3755, 2015, ''),
(3147285, 0, 3711, 1, 112, 2103, 5802, 53962, 7580, 2020, ''),
(3149474, 0, 3711, 1, 97, 6536, 9122, 56606, 3901, 2019, ''),
(3149475, 0, 3711, 1, 55, 995, 7677, 60560, 5107, 2018, ''),
(3149575, 0, 3711, 1, 46, 883, 3070, 6487, 5862, 2015, ''),
(3149588, 0, 3711, 1, 55, 999, 3210, 7344, 5576, 2016, ''),
(3151714, 0, 3711, 1, 73, 1341, 4838, 41461, 5358, 2007, ''),
(3151731, 0, 3711, 1, 60, 1069, 7932, 31997, 3338, 2016, ''),
(3152055, 0, 3711, 1, 15, 10387, 10388, 70455, 9096, 2019, 'Отличный китайский кроссовер, который подарит вам незабываемые впечатления от вождения.\nХорошее состояние полностью обслужен по регламенту\nВложений не требует\nОригинальный пробег\n1 владелец\nПтс оригинал\nПолный комплект ключей  \nБогатая комплектация\nКондиционер\nСалон кожа\nШтатная аудиосистема.'),
(3152056, 0, 3711, 1, 89, 1681, 5559, 13319, 4987, 2014, 'Отличное состояние, выгодная цена, надежный автомобиль, полностью проверен и готов к эксплуатации. Рекомендуем к покупке.'),
(3152311, 0, 3711, 1, 46, 883, 6696, 57879, 5789, 2020, ''),
(3153663, 0, 3711, 1, 60, 1065, 3261, 31947, 2010, 2014, ''),
(3154321, 0, 3711, 1, 46, 883, 6696, 57876, 5789, 2019, ''),
(3154747, 0, 3711, 1, 68, 1246, 5582, 48725, 6473, 2016, 'Отличный немецкий внедорожник который подарит вам незабываемые впечатления от вождения, престиж и уважение на дороге.\nОтличное состояние полностью обслужен по регламенту\nОригинальный пробег\nПолный комплект ключей \nКузов в заводском окрасе \nБогатая комплектация\nПакет АMG\nКлимат контроль 3х зонный\nЭксклюзивный Салон кожа Designo\nЭлектро привод сидений\nПамять водительского-пасажирского сидений\nВентиляция  передних сидений\nКамера заднего вида\nКруиз контроль\nПротивоугонная система\nПредпусковой подогреватель Webasto\nНавигация\nДиодные фары\nLed фары'),
(3155750, 0, 3711, 1, 105, 1981, 5801, 51994, 8058, 2017, ''),
(3157490, 0, 3711, 1, 55, 995, 7677, 58871, 5070, 2018, ''),
(3157534, 0, 3711, 1, 55, 995, 5335, 46725, 5127, 2015, ''),
(3158760, 0, 3711, 1, 73, 1341, 3520, 10278, 5169, 2012, ''),
(3160835, 0, 3711, 1, 112, 2092, 4452, 17149, 6613, 2011, ''),
(3161184, 0, 3711, 1, 105, 1912, 9701, 64230, 8349, 2018, ''),
(3161330, 0, 3711, 1, 46, 6209, 6237, 56221, 1969, 2018, ''),
(3161331, 0, 3711, 1, 46, 857, 3046, 6930, 2416, 2013, ''),
(3161987, 0, 3711, 1, 97, 1780, 7691, 48769, 5317, 2016, ''),
(3164274, 0, 3711, 1, 97, 1780, 10642, 72262, 9354, 2020, ''),
(3164337, 0, 3711, 1, 45, 825, 4909, 43062, 6450, 2013, 'Отличный полноприводный 7-местный автомобиль, который подарит вам незабываемые впечатления от вождения, комфорт, престиж и уважение на дороге!'),
(3164390, 0, 3711, 1, 46, 883, 10748, 73061, 9459, 2020, ''),
(3166318, 0, 3711, 1, 46, 871, 6595, 53638, 5121, 2015, ''),
(3166319, 0, 3711, 1, 38, 664, 2840, 21975, 5674, 2008, ''),
(3166453, 0, 3711, 1, 46, 883, 3069, 6377, 5904, 2014, ''),
(3166970, NULL, 3711, 1, 183, 5548, NULL, 48552, 1304, 2018, NULL),
(3167864, 0, 3711, 1, 55, 7811, 10869, 74104, 9596, 2021, ''),
(3168350, 0, 3711, 1, 118, 2194, 4515, 41212, 3858, 2017, ''),
(3168459, 0, 3711, 1, 112, 2097, 10797, 73644, 9526, 2020, ''),
(3168506, 0, 3711, 1, 46, 6209, 6237, 56219, 1969, 2018, ''),
(3168721, 0, 3711, 1, 46, 880, 22352, 76732, 9857, 2021, 'Отличное состояние полностью обслужен по регламенту\nВложений не требует\nОригинальный пробег\n1 владелец\nПтс оригинал\nБез дтп\nПолный комплект ключей \nКузов в заводском окрасе\nМаксимальная комплектация \nПанорманая крыша-люк\nКлимат контроль \nСалон кожа\nЭлектро привод сидений\nПамять водительского сидения\nВентиляция сидений\nБесключевой доступ\nКамера - 360\nДоводчики на дверях\nПроэкция на лобовое стекло'),
(3168722, 0, 3711, 1, 68, 1238, 3400, 9130, 2840, 2014, ''),
(3169060, 0, 3711, 1, 14, 4971, 4991, 44078, 7007, 2016, ''),
(3170148, 0, 3711, 1, 9, 96, 4595, 1483, 6571, 2012, ''),
(3170264, 0, 3711, 1, 55, 978, 5770, 49759, 1447, 2018, ''),
(3170911, 0, 3711, 1, 47, 897, 3088, 22002, 548, 2012, ''),
(3170912, 0, 3711, 1, 105, 1912, 44751, 76859, 9997, 2021, 'Отличный автомобиль, который подарит вам незабываемые впечатления от вождения, престиж и уважение на дороге!\nОтличное состояние, практически новый авто!\nВложений не требует\nОригинальный пробег\nКомплектация GR Sport !\n1 владелец\nПТС оригинал\nБез дтп\nПолный комплект ключей \nКузов в заводском окрасе\nКлимат-контроль \nСалон кожа\nБесключевой доступ\nКамера заднего вида\nЛитые 18 диски\nНомер X333BK123 в подарок'),
(3171063, 0, 3711, 1, 112, 2103, 5802, 57354, 7580, 2017, ''),
(3171923, 0, 3711, 1, 97, 1776, 4670, 45718, 2628, 2013, ''),
(3172029, 0, 3711, 1, 60, 1061, 10022, 67075, 8677, 2019, ''),
(3172130, NULL, 3711, 2, 68, 7700, NULL, NULL, NULL, 2015, NULL),
(3172236, 0, 3711, 1, 105, 1981, 5801, 51996, 8058, 2019, ''),
(3172636, 0, 3711, 1, 55, 978, 9863, 67441, 8516, 2021, ''),
(3172637, NULL, 3711, 1, 22, 299, NULL, 20613, 5347, 2011, NULL),
(3172668, 0, 3711, 1, 14, 147, 2426, 2220, 2237, 2014, ''),
(3172760, 0, 3711, 1, 105, 1935, 7724, 59046, 7635, 2019, ''),
(3174996, 0, 3711, 1, 118, 5814, 6517, 56908, 4115, 2018, ''),
(3175214, 0, 3711, 1, 14, 147, 4887, 46394, 2838, 2011, ''),
(3175746, 0, 3711, 1, 78, 1515, 3805, 33244, 3715, 2008, ''),
(3175907, 0, 3711, 1, 55, 995, 7677, 58871, 5070, 2018, ''),
(3179387, NULL, 3711, 1, 68, 1242, NULL, 8727, 5088, 2009, NULL),
(3179515, 0, 3711, 1, 14, 147, 2426, 2251, 2237, 2013, ''),
(3179637, 0, 3711, 1, 46, 883, 10748, 73064, 9459, 2020, ''),
(3180068, 0, 3711, 1, 46, 883, 3070, 6488, 5891, 2015, ''),
(3181873, 0, 3711, 1, 73, 1351, 5387, 47430, 6377, 2016, ''),
(3181874, 0, 3711, 1, 46, 884, 10579, 71813, 9293, 2021, ''),
(3182142, 0, 3711, 1, 105, 1981, 10235, 70818, 8936, 2020, ''),
(3182267, 0, 3711, 1, 55, 995, 10889, 74803, 9694, 2021, 'Отличный корейский хэтчбек, который подарит вам незабываемые впечатления от вождения.\nОтличное состояние полностью обслужен по регламенту\nВложений не требует\nОригинальный пробег\n1 владельца\nПтс оригинал\nБез дтп\nПолный комплект ключей \nКузов в заводском окрасе\nБогатая комплектация \nКондиционер\nСалон тканевый\nКамера заднего вида\nLed фары'),
(3182268, 0, 3711, 1, 105, 1981, 10235, 70818, 8936, 2021, 'Отличный японский кроссовер, который подарит вам незабываемые впечатления от вождения, престиж и уважение на дороге.\nОтличное состояние полностью обслужен по регламенту\nВложений не требует\nОригинальный пробег\n2 владельца\nПтс оригинал\nБез дтп\nПолный комплект ключей \nКузов в заводском окрасе и затянут броне плёнкой.\nБогатая комплектация \nКлимат контроль 2х зонный\nСалон тканевый\nБесключевой доступ\nКамера заднего вида\nКруиз контроль\nНавигация\nПремиальная музыка\nLed фары\nКсенон'),
(3182519, 0, 3711, 1, 113, 2139, 4498, 18426, 5987, 2011, ''),
(3182656, 0, 3711, 1, 46, 883, 6696, 57879, 5789, 2020, 'Надежный корейский седан.\nХорошее состояние. \nОригинальный пробег\n1 владелец\nПтс оригинал\nПолный комплект ключей \nКомплектация КОМФОРТ \nКондиционер\nШтатная аудиосистема.\nУстановлено и зарегистрировано газовое оборудование.'),
(3182657, 0, 3711, 1, 105, 1912, 44751, 76860, 9997, 2021, ''),
(3182787, 0, 3711, 1, 112, 2103, 5802, 53960, 7580, 2017, ''),
(3182788, 0, 3711, 1, 46, 883, 6696, 57878, 5789, 2019, ''),
(3184047, 0, 3711, 1, 14, 149, 2432, 2105, 5528, 2011, ''),
(3184141, 0, 3711, 1, 46, 883, 6696, 57879, 5789, 2018, 'Автомобиль в заводском окрасе, с оригинальным ПТС по очень выгодной цене!'),
(3184274, 0, 3711, 1, 38, 5120, 5133, 45263, 6350, 2008, ''),
(3184275, 0, 3711, 1, 46, 871, 6595, 50156, 5121, 2014, ''),
(3184411, 0, 3711, 1, 68, 1245, 3414, 9208, 5587, 2016, 'Отличный немецкий седан, который подарит вам незабываемые впечатления от вождения, престиж и уважение на дороге.\nОтличное состояние полностью обслужен по регламенту\nВложений не требует\nБез дтп\nПолный комплект ключей \nБогатая комплектация \nКлимат контроль 2х зонный\nСалон кожа\nЭлектро привод сидений\nКамера заднего вида\nКруиз контроль\nНавигация\nПремиальная музыка\nLed фары\nПоворотный ксенон'),
(3186202, 0, 3711, 1, 105, 1912, 4181, 16335, 5309, 2013, ''),
(3186947, NULL, 3711, 1, 73, 1338, NULL, 75089, 4915, 2009, 'Отличный японский автомобиль с электродвигателем, который подарит вам незабываемые впечатления от вождения.\nОтличное состояние полностью обслужен по регламенту\nОригинальный пробег\n2 владельца\nПтс оригинал\nБез дтп\nПолный комплект ключей \nКузов в заводском окрасе\nХорошая комплектация\nКондиционер.'),
(3188124, 0, 3711, 1, 112, 2103, 4470, 17648, 7596, 2012, ''),
(3188347, 0, 3711, 1, 68, 1252, 3434, 9410, 7406, 2014, ''),
(3188579, 0, 3711, 1, 21, 265, 6636, 2944, 1367, 2014, 'Отличный китайский кроссовер который подарит вам незабываемые впечатления от вождения, престиж и уважение на дороге.\nОтличное состояние полностью обслужен по регламенту\nОригинальный пробег\nБез дтп\nПолный комплект ключей \nКузов в заводском окрасе\n(Богатая комплектация)\nКлимат контроль 1-зонный\nСалон кожа\nБесключевой доступ\nКруиз контроль\nЛазерная оптика'),
(3189464, 0, 3711, 1, 76, 5393, 5396, 47471, 7488, 2013, ''),
(3189705, 0, 3711, 1, 38, 664, 2838, 21629, 5942, 2007, ''),
(3190042, 0, 3711, 1, 14, 149, 2433, 2190, 5397, 2014, ''),
(3190418, 0, 3711, 1, 9, 97, 10833, 76813, 9563, 2021, ''),
(3190694, NULL, 3711, 1, 209, 246, NULL, 2887, 223, 2018, 'Надежный китайский кроссовер.\nОтличное состояние полностью обслужен по регламенту\nВложений не требует\nОригинальный пробег\n2 владельца\nПтс оригинал\nБез дтп\nПолный комплект ключей \nКузов в заводском окрасе\nХорошая комплектация\nКондиционер\nКамера заднего вида\nПротивоугонная система\nШтатная аудиосистема'),
(3191011, 0, 3711, 1, 68, 1250, 4757, 40306, 7133, 2008, 'Отличный немецкий внедорожник, который подарит вам незабываемые впечатления от вождения, престиж и уважение на дороге.\nОтличное состояние полностью обслужен по регламенту\n3 владельца\nПтс оригинал\nБез дтп\nПолный комплект ключей \nМаксимальная комплектация \nКлимат контроль 2х зонный\nСалон Designo- кожа Nappa\nЭлектро привод сидений\nПамять водительского-пасажирского сидений\nКруиз контроль\nПневмоподвеска\nПремиальная музыка\nКсенон\nПакет АMG'),
(3191012, NULL, 3711, 1, 105, 1902, NULL, NULL, 4453, 2007, NULL),
(3191094, 0, 3711, 1, 55, 979, 3186, 7235, 2708, 2012, 'Автомобили с пробегом, направление автохолдинга то:\n✅ Продажа;\n☄️ Обмен;\n⏳ Срочный выкуп;\n⚡ Комиссия;\n✈️ Юридическая чистота сделки;\n☔ Страховка ОСАГО и КАСКО на месте.\n\nСегодня ляется официальным дилером 31 автомобильного бренда и насчитывает 102 современных автоцентра. Обширная дилерская сеть едставлена в 19 крупных городах страны.'),
(3191271, 0, 3711, 1, 76, 1433, 3644, 10596, 5543, 2011, ''),
(3191315, 0, 3711, 1, 46, 851, 3032, 69893, 793, 2008, ''),
(3192368, 0, 3711, 1, 68, 1245, 3414, 9209, 5648, 2013, ''),
(3192369, 0, 3711, 1, 9, 89, 9855, 70144, 8508, 2021, ''),
(3192530, 0, 3711, 1, 118, 5568, 6050, 56910, 4179, 2018, ''),
(3192593, 0, 3711, 1, 105, 1981, 10235, 70818, 8936, 2021, 'Отличный японский внедорожник, который подарит вам незабываемые впечатления от вождения, престиж и уважение на дороге.\nОтличное состояние полностью обслужен по регламенту\nВложений не требует\nОригинальный пробег\n1 владельца\nПтс оригинал\nБез дтп\nПолный комплект ключей \nКузов в заводском окрасе\nБогатая комплектация \nКлимат контроль 2х зонный\nСалон кожа-алькантара\nБесключевой доступ\nКруиз контроль\nПротивоугонная система\nНавигация\nПремиальная музыка\nДиодные фары\nПакет Style'),
(3192831, 0, 3711, 1, 112, 2091, 10742, 73002, 9452, 2020, ''),
(3193234, 0, 3711, 1, 105, 1912, 7655, 58776, 5200, 2017, ''),
(3193266, 0, 3711, 1, 14, 156, 2447, 28642, 7209, 2013, ''),
(3193267, 0, 3711, 1, 105, 6630, 6635, 66706, 5005, 2018, ''),
(3193381, 0, 3711, 1, 46, 883, 3070, 6484, 5862, 2015, ''),
(3194735, 0, 3711, 1, 68, 1250, 3425, 23886, 7115, 2014, ''),
(3194832, 0, 3711, 1, 76, 1465, 3708, 24495, 7157, 2006, ''),
(3194847, 0, 3711, 1, 97, 1780, 7692, 58933, 5219, 2019, ''),
(3194944, NULL, 3711, 1, 46, 884, 10579, NULL, 9293, 2020, NULL),
(3195108, 0, 3711, 1, 55, 7811, 10869, 74105, 9596, 2020, ''),
(3195355, 0, 3711, 1, 55, 978, 5770, 49767, 1557, 2017, ''),
(3195356, NULL, 3711, 1, 112, 2104, 9930, NULL, 8585, 2021, NULL);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `vehicle`
--
ALTER TABLE `vehicle`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vehicles_dealer_id_foreign` (`dealer_id`),
  ADD KEY `vehicles_category_id_foreign` (`category_id`),
  ADD KEY `vehicles_body_configuration_id_foreign` (`body_configuration_id`),
  ADD KEY `vehicles_brand_id_foreign` (`brand_id`),
  ADD KEY `vehicles_model_id_foreign` (`model_id`),
  ADD KEY `vehicles_modification_id_foreign` (`modification_id`),
  ADD KEY `vehicles_generation_id_foreign` (`generation_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `vehicle`
--
ALTER TABLE `vehicle`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3195357;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `vehicle`
--
ALTER TABLE `vehicle`
  ADD CONSTRAINT `vehicles_body_configuration_id_foreign` FOREIGN KEY (`body_configuration_id`) REFERENCES `body_configuration` (`id`),
  ADD CONSTRAINT `vehicles_brand_id_foreign` FOREIGN KEY (`brand_id`) REFERENCES `brand` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `vehicles_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `vehicles_dealer_id_foreign` FOREIGN KEY (`dealer_id`) REFERENCES `dealer` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `vehicles_generation_id_foreign` FOREIGN KEY (`generation_id`) REFERENCES `generation` (`id`),
  ADD CONSTRAINT `vehicles_model_id_foreign` FOREIGN KEY (`model_id`) REFERENCES `model` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `vehicles_modification_id_foreign` FOREIGN KEY (`modification_id`) REFERENCES `modification` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
