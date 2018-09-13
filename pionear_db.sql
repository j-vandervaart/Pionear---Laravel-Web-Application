-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 25, 2018 at 10:49 AM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pionear_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `directions`
--

CREATE TABLE `directions` (
  `id` int(100) UNSIGNED NOT NULL,
  `name` varchar(1000) NOT NULL,
  `preserve_id` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `directions`
--

INSERT INTO `directions` (`id`, `name`, `preserve_id`) VALUES
(1, 'Prepare the jars: Wash the jars, lids, and rings in warm, soapy water and rinse well. Set aside to dry or dry completely by hand.', 1),
(2, 'Prepare the beans: Rinse the beans under cool running water and drain well. Trim the stem ends from the beans and halve them if using 2 pint-sized jars. Leave them whole if using a quart jar.', 1),
(3, 'Add the spices to the jars: Place the garlic, red pepper flakes, and mustard seeds in the jar(s).', 1),
(4, 'Pack the green beans into the jars: Place the jar on its side. Place the sprigs of dill down first, then stack the beans in the jar, orienting them so that they will stand up straight when the jar stands upright. Pack the jar as tightly as possible. A full pound will fit in one quart jar, or you can divide the beans into 2 pint jars.', 1),
(5, 'Make the pickling brine: Combine the vinegar, water, and salt in a small saucepan over high heat and bring to a boil. Pour the brine over the green beans, filling each jar to within 1/2 inch of the top. You might not use all the brine.', 1),
(6, 'Remove the air bubbles: Gently tap the jars against the counter a few times to remove all the air bubbles. Top off with more pickling brine if needed. Place the lids over the jars and screw on the rings until tight.', 1),
(7, 'Cool and refrigerate: Let the jars cool to room temperature. Store the pickles in the refrigerator. The pickles will improve with flavor as they age — try to wait at least 48 hours before cracking them open.', 1),
(8, 'Preheat oven to 400°F. Mix flour and salt in large bowl. Cut in shortening with pastry blender or 2 knives until mixture resembles coarse crumbs.', 2),
(9, 'Add water, 1 Tbsp. at a time, mixing lightly with fork until flour mixture is evenly moistened and clings together when pressed into a ball. Divide dough in half; shape each into 1/2 in. thick round. Wrap each dough round in plastic wrap; refrigerate 10 to 15 min.', 2),
(10, 'Meanwhile, toss apples with sugar, corn starch, cinnamon, nutmeg and lemon juice in large bowl; set aside. Place 1 dough round between 2 large sheets of plastic wrap; roll out dough with rolling pin to flatten slightly, working from centre of dough to the edge. Turn over; continue rolling until dough round is about 2 in. larger than diameter of inverted 9-in. pie plate.', 2),
(11, 'Peel off top piece of plastic wrap; invert dough into pie plate. Peel off remaining piece of plastic wrap: press dough evenly onto bottom and up side of pie plate, being careful not to stretch the dough. Trim any excess dough hanging over edge of pie plate with sharp knife or kitchen scissors; reserve trimmings.', 2),
(12, 'Fill with apple mixture; set aside. Roll out remaining dough as directed; place over filling. Trim top crust about 1/2 in. beyond edge of pie plate. Fold edge of top crust under edge of bottom crust; pinch edges together to form a ridge. Flute edge. Cut several slits near centre of pie to allow steam to escape. Bake 45 to 50 min. or until juices form bubbles that burst slowly. Cool.', 2),
(13, 'Prepare the strawberries by wiping them with a piece of damp kitchen paper. (Wiping the strawberries rather than washing them ensures the fruit doesn’t absorb lots of water – too much water and the jam won’t set easily.) To hull the fruit, use a knife to cut a cone shape into the strawberry and remove the stem. Cut any large berries in half.', 3),
(14, 'Put the strawberries in a bowl and gently toss through the sugar. Leave uncovered at room temperature for 12 hrs or overnight. This process helps the sugar to dissolve, ensures the fruit doesn’t disintegrate too much and helps to keep its vibrant colour.', 3),
(15, 'Before starting the jam, put 2 saucers in the freezer. Tip the strawberry mixture into a preserving pan with the lemon juice. Set over a low heat and cook very gently. If any sugar remains on the sides of the pan, dip a pastry brush in hot water and brush the sugar away.', 3),
(16, 'When you can no longer feel any grains of sugar remaining, turn up the heat to start bubbling the jam and bringing it to the boil. (The sugar must be completely dissolved before increasing the heat, otherwise it will be difficult for the jam to set, and it may contain crystallised lumps of sugar.)', 3),
(17, 'Boil hard for 5-10 mins until the jam has reached 105C on a preserving or digital thermometer, then turn off the heat. If you don’t have a thermometer, spoon a little jam onto one of the cold saucers. Leave for 30 secs, then push with your finger; if the jam wrinkles and doesn’t flood to fill the gap, it is ready. If not, turn the heat back on and boil for 2 mins more, then turn off the heat and do the wrinkle test again. Repeat until ready.', 3),
(18, 'Use a spoon to skim any scum that has risen to the surface and discard this. Do this only once at the end, rather than constantly during the boiling stage, to reduce wastage.', 3),
(19, 'Add a knob of butter, if you like, to the finished jam, and stir in to melt. This will help to dissolve any remaining scum that you haven’t managed to spoon off the top. Leave the jam to settle for 15 mins – this will ensure that the fruit stays suspended in the mixture and doesn’t all float to the top of the jam jar. Meanwhile, sterilise your jars.', 3),
(20, 'Ladle into warm jars, filling to just below the rim. Place a wax disc on top of the jam (this prevents mildew forming), then cover with a lid or a cellophane circle and elastic band. Pop on a label (include the date), plus a pretty fabric top, if you like. The jam can be stored for up to 1 year in a cool, dry place. Refrigerate after opening.', 3),
(22, 'Grate the cucumbers and onions into a large bowl using the large holes of a box grater. Sprinkle the pickling salt over the top. Cover tightly, and allow to rest at room temperature overnight.', 4),
(23, 'Squeeze as much liquid as possible out of the cucumber mixture; set aside. Whisk together the sugar, flour, turmeric, ginger, and celery seed. Heat the vinegar and water in a large, heavy pot over medium-high heat. Whisk in the sugar mixture until smooth. Stir in the cucumber mixture. Bring to a boil and cook, stirring frequently, until thickened, about 15 minutes.', 4),
(24, 'Sterilize the jars and lids in boiling water for at least 5 minutes. Pack the relish into the hot, sterilized jars, filling the jars to within 1/4 inch of the top. Run a knife or a thin spatula around the insides of the jars after they have been filled to remove any air bubbles. Wipe the rims of the jars with a moist paper towel to remove any food residue. Top with lids, and screw on rings.', 4),
(25, 'Place a rack in the bottom of a large stockpot and fill halfway with water. Bring to a boil over high heat, then carefully lower the jars into the pot using a holder. Leave a 2 inch space between the jars. Pour in more boiling water if necessary until the water level is at least 1 inch above the tops of the jars. Bring the water to a full boil, cover the pot, and process pint jars for 10 minutes.', 4),
(26, 'Remove the jars from the stockpot and place onto a cloth-covered or wood surface, several inches apart, until cool. Once cool, press the top of each lid with a finger, ensuring that the seal is tight (lid does not move up or down at all). Store in a cool, dark area.', 4);

-- --------------------------------------------------------

--
-- Table structure for table `gardens`
--

CREATE TABLE `gardens` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `h_size` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `w_size` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `archive` int(2) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gardens`
--

INSERT INTO `gardens` (`id`, `name`, `h_size`, `w_size`, `archive`, `user_id`, `created_at`, `updated_at`) VALUES
(43, 'mo\'s garden', '30', '30', 2, 1, '2018-04-18 04:20:24', '2018-04-19 21:18:02'),
(46, 'sdf', '4', '4', 2, 1, '2018-04-18 21:02:32', '2018-04-25 12:43:16'),
(55, 'Momo\'s gogo', '20', '30', 1, 1, '2018-04-24 23:00:10', '2018-04-24 23:00:10');

-- --------------------------------------------------------

--
-- Table structure for table `ingredients`
--

CREATE TABLE `ingredients` (
  `id` int(100) UNSIGNED NOT NULL,
  `name` varchar(200) NOT NULL,
  `preserve_id` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ingredients`
--

INSERT INTO `ingredients` (`id`, `name`, `preserve_id`) VALUES
(1, '1 pound green, yellow, or purple string beans', 1),
(2, '2 cloves garlic', 1),
(3, '1/2 teaspoon red pepper flakes', 1),
(4, '1/2 teaspoon yellow mustard seeds', 1),
(5, '2 fresh dill sprigs', 1),
(6, '1 cup distilled white vinegar', 1),
(7, '1 cup water', 1),
(8, '1 tablespoon kosher salt or 2 teaspoons pickling salt', 1),
(11, '2-1/4 cups flour', 2),
(12, '1 tsp. salt', 2),
(13, '1 cup shortening', 2),
(14, '5 to 7 Tbsp. ice cold water', 2),
(15, '6 cups thinly sliced peeled tart apples, such a Granny Smith (about 4 large apples)', 2),
(16, '3/4 cup sugar', 2),
(17, '1 Tbsp. lemon juice', 2),
(18, '1 Tbsp. corn starch', 2),
(19, '1/4 tsp. ground nutmeg', 2),
(20, '1/2 tsp. ground cinnamon', 2),
(21, '1kg hulled strawberry', 3),
(22, '750g jam sugar', 3),
(23, 'juice 1 lemon', 3),
(24, 'small knob of butter', 3),
(26, '4 large sweet onions, peeled', 4),
(27, '1/4 cup pickling salt', 4),
(28, '7 large English cucumbers', 4),
(29, '3 cups white sugar', 4),
(30, '1/2 cup all-purpose flour', 4),
(31, '1 teaspoon ground turmeric', 4),
(32, '3 cups distilled white vinegar', 4),
(33, '1 teaspoon ground ginger', 4),
(34, '1 teaspoon celery seed', 4),
(35, '1 cup water', 4),
(36, '4 (1 pint) canning jars with lids and rings', 4);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_03_07_013120_create_plants_table', 1),
(4, '2018_03_07_013146_create_plant_types_table', 1),
(5, '2018_03_07_013225_create_preserves_table', 1),
(6, '2018_03_07_013317_create_preserve_types_table', 1),
(7, '2018_03_07_013430_create_gardens_table', 1),
(8, '2018_03_07_013551_create_squares_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('jessy@aol.com', '$2y$10$pjV1gZkf6vD0ZQvkFLhCA.iVJ5YpP80URQ27i5aeF/FgF4z5H9QY6', '2018-04-25 09:28:06');

-- --------------------------------------------------------

--
-- Table structure for table `plants`
--

CREATE TABLE `plants` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `planting` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `care` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `harvest` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(100) NOT NULL,
  `quantString` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `classify` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `yield` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `plant_type_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `plants`
--

INSERT INTO `plants` (`id`, `name`, `desc`, `planting`, `care`, `harvest`, `quantity`, `quantString`, `classify`, `yield`, `plant_type_id`, `created_at`, `updated_at`) VALUES
(1, 'cabbage', 'Cabbage or headed cabbage (comprising several cultivars of Brassica oleracea) is a leafy green, red (purple), or white (pale green) biennial plant grown as an annual vegetable crop for its dense-leaved heads. It is descended from the wild cabbage, B. oleracea var. oleracea, and belongs to the \"cole crops\".', 'For a continual harvest of cabbages, set out the plants in wide rows three to four weeks before the\r\nlast spring frost date. Sow more cabbage seeds in early summer, some in the garden and some in flats\r\nin partial shade outdoors.', 'If cabbage heads start to crack, they are probably growing too fast in the center (often caused by\r\nheavy-handed fertilizing). If you see a cracked head, hold it and twist the whole plant halfway around,\r\nlike turning a faucet. This breaks off some of the roots and slows the inner top growth of the plant.', 'In midsummer, set the seedlings in the garden; these will produce heads big\r\nenough to eat from late summer until the ground freezes.', 1, '1', 'cabbage plant(s)', '1', 11, NULL, NULL),
(2, 'zucchini', 'is a summer squash which can reach nearly a metre in length, but is usually harvested immature at 15 to 25 cm (6 to 10 in).[1] In Britain and Ireland a fully grown zucchini is referred to as a marrow. In South Africa it is known as a baby marrow.', 'Plant seeds about one-inch deep and 2 to 3 feet apart in a traditional garden bed. Alternatively, plant as a “hill” of 3 or 4 seeds sown close together on a small mound; this is helpful in northern climates, as the soil is warmer off the ground. Allow 5 to 6 feet between hills.', 'Mulch plants to protect shallow roots, discourage weeds, and retain moisture. When the first blooms appear, apply a small amount of fertilizer as a side dress application. For all type of squash, frequent and consistent watering is recommended. Water most diligently when fruits form and throughout their growth period.', 'Harvest summer squash when small and tender for best flavor. Most varieties average 60 days to maturity, and are ready as soon as a week after flowering. Check plants everyday for new produce. Cut the gourds off the vine rather than breaking them off.', 1, '1/2', 'zucchini plant(s)', '15', 5, NULL, NULL),
(4, 'celery', 'Celery likes fertile soil, cool temperatures, and constant moisture. It will not tolerate heat and can be hard to transplant. Summer crops in the north and winter crops in the south make celery a year-round producer. All the hard work is worth it when you finally get to harvest crunchy, green stalks.', 'Celery seeds should always be started indoors for the best success rate, 8 to 10 weeks before the average last frost date for your area. For summer gardeners, a late summer direct sowing is possible. Be sure that temps will stay between 55 and 70ºF throughout the growing period. Transplant seedlings 10 to 12 inches apart, direct sow seeds ¼ inch deep. These will need to be thinned to 12 inches apart when they reach about six inches high.', 'Celery is a heavy feeder and requires lots of water. Make sure to provide plenty of water during the entire growing season, especially during hot, dry weather. If celery does not get enough water, the stalks will be dry and small. Add plenty of compost and mulch around the plants to retain moisture.', 'The parts of celery that are harvested are mainly the stalks, which will be above ground. Harvest stalks from the outside in. You may begin harvesting when stalks are about 8 inches tall. Celery can be kept in the garden for up to a month if soil is built up around it to maintain an ideal temperature. Celery will tolerate a light frost, but not consecutive frosts.', 1, '1', 'celery plant(s)', '10', 11, NULL, NULL),
(5, 'carrot', 'Most varieties of carrots are resistant to pests and diseases, and they are also a good late-season crop that can tolerate frost. In fact, they prefer to be grown during the cooler ends of the growing season—spring and fall.\r\n\r\nCarrots’ root is rich in sugar, and a great source of vitamins and carotene. Not all carrots are orange; varieties vary in color from purple to white.', 'Plant carrot seeds 3 to 4 inches apart in rows. Rows should be at least a foot apart. Carrots are slow to germinate. They may take 3 or more weeks to show any signs of life, so don’t panic if your carrots don’t appear right away. Keep the soil moist, not wet, but don’t let it dry out, either.', 'Gently mulch to retain moisture, speed germination, and block the sun from hitting the roots directly. Once plants are an inch tall, thin so that they stand 3 inches apart. Snip them with scissors instead of pulling them out to prevent damage to the roots of the remaining plants. Water at least one inch per week.', 'Carrots should be mature and ready for harvest after about 2–4 months, or when they reach at least ½ inch in diameter. You may harvest whenever desired maturity is reached.', 4, '4', 'carrot(s)', '1', 6, NULL, NULL),
(6, 'tomato', 'Tomato, (Solanum lycopersicum), flowering plant of the nightshade family (Solanaceae), cultivated extensively for its edible fruits. Labelled as a vegetable for nutritional purposes, tomatoes are a good source of vitamin C and the phytochemical lycopene. The fruits are commonly eaten raw in salads, served as a cooked vegetable, used as an ingredient of various prepared dishes, and pickled. ', 'To start plants indoors, begin six to seven weeks before the last spring frost. Harden them off\r\nbefore setting them out. Spacing in the garden depends on your method of growing. If you’re going to\r\nlet them sprawl on the ground, each plant needs 4 square feet. For those that will be staked, 3 square\r\nfeet is adequate. If your soil is wet, set each plant on a mound 4 to 6 inches high. If your soil is dry;\r\ncreate a depression for each plant. Water plants well an hour before transplanting.', 'If plants are leggy (much stem and few leaves), lay down the plant on its side and bury part of\r\nthe stem along with the roots. Prune the lower leaves off, leaving just the top leaves exposed. Roots\r\nwill form later on the stem.\r\nImmediately after transplanting, water the plants well. Mulch four to six weeks later, when the soil\r\nis nice and warm. If you let tomato plants sprawl on the ground, a mulch is not necessary.', 'Leave your tomatoes on the vine as long as possible. If any fall off before they appear ripe, place them in a paper bag with the stem up and store them in a cool, dark place. The perfect tomato for picking will be firm and very red in color, regardless of size, with perhaps some yellow remaining around the stem. A ripe tomato will be only slightly soft. If your tomato plant still has fruit when the first hard frost threatens, pull up the entire plant and hang it upside down in the basement or garage. Pick tomatoes as they redden.', 1, '1/4', 'tomato plant(s)', '20', 3, NULL, NULL),
(7, 'strawberry', 'If there is one fruit every homesteader and suburbanite should\r\ncultivate, it is strawberries. No matter where you live, there is a\r\nvariety that will thrive in your area. Though they do best in cool,\r\nmoist regions, they can be grown in hot, dry climates, especially\r\nwhere windbreaks are provided and supplemental watering is\r\npossible during July, August, and September.', 'Because your strawberry plants will be growing in the same spot for\r\nat least two years, prepare the ground well. The small, shallowrooted\r\nplants will have to receive all their moisture and nourishment\r\nfrom the top few inches of soil.\r\nThis soil should be light, rich, slightly acidic (pH of 5.5 to 6.0), and full of rich humus (aged manure,\r\ncompost, or peat) that will hold moisture even during the driest weather. Strawberries grow best in\r\nmoist soil in full sun.', 'Set rows of strawberry\r\nplants 12 inches apart. Let the plants put forth as many runners as they can. As the runners form,\r\narrange them in a roughly circular pattern around the mother plant. Once you’ve achieved strawberry\r\nplants every 3 to 4 inches, snip off additional runners so the plants don’t become overcrowded.\r\nAlthough this system produces good crops, the berries are smaller than those grown using the double\r\nhill system.', 'When is it time to pick the berries? As strawberries ripen, the fruit changes color, from white to pink\r\nto red. As the color changes, sugars are deposited in the fruit. Berries picked before they are fully\r\nready will not have as much sugar as ripe ones. Pick in the cool of the morning, when the berries are\r\nfirm.', 1, '1', 'strawberry plant(s)', '25', 9, NULL, NULL),
(8, 'spinach', 'It is an annual plant (rarely biennial) growing as tall as 30 cm (1 ft). Spinach may survive over winter in temperate regions. The leaves are alternate, simple, ovate to triangular, and very variable in size from about 2–30 cm (1–12 in) long and 1–15 cm (0.4–5.9 in) broad, with larger leaves at the base of the plant and small leaves higher on the flowering stem.', 'Spinach is a cool-weather plant and should be direct-sown about one month before the last spring\r\nfrost; direct-sow fall crops about one month before the first autumn frost. Set the seeds about 2 inches\r\napart (1 inch in fall) in shallow rows about 18 inches apart. Thin the seedlings to about 4 inches\r\napart.', 'Repeat sowings every 10 to 14 days to ensure a continual supply. Spinach responds well to\r\nfertilizers. Try regular applications of fish emulsion.\r\nPick the outer leaves as needed or cut the entire plan.', ' Harvest in the cool of the morning and store\r\nspinach in the refrigerator until you’re ready to use it.', 1, '1', 'spinach plant(s)', '1', 4, NULL, NULL),
(9, 'watermelon', 'Their culture is similar to\r\nthat of other members of the squash family. Plants are generally grown in mounds 6 inches apart and\r\nare thinned to two or three plants per mound.', 'Work the soil, and then warm it with black plastic mulch. You can direct-sow or transplant melons.\r\nSow in shallow rows or hills. If planting in rows, place the seeds 1½ to 2 inches deep in groups of\r\nthree, spacing the groups 18 inches apart. Thin to about 2½ feet by cutting the stems at the soil line.\r\nAvoid planting until the soil warms to 65 to 70°F (18 to 22°C) in the daytime.', 'Make sure the fruits are supported by a sturdy trellis. Melons thrive in a well-drained, rich, light\r\nsoil and full sun, and they are sensitive to frost. Their seasons are long, which can be a limiting factor\r\nin northern climates. To get them off to a good start, use hot caps or plastic tunnels in the spring to\r\ntrap heat. Water them deeply at least once a week; when they blossom, side-dress with a tablespoon\r\nof 5-10-10 fertilizer in a band 3 to 4 inches from a plant’s stem. Keep leaves from touching the\r\nfertilizer by covering it with soil.', 'When a melon is ripe, its belly will go from near white to creamy yellow.', 1, '1/2', 'watermelon plant(s)', '3', 8, NULL, NULL),
(10, 'eggplant', 'Ever wondered how to grow eggplant? These warm-weather vegetables are grown as annuals but are actually perennials. Also known as aubergine, eggplants can be grown in a traditional row garden or in containers. They make lovely ornamental borders, too.', 'Use a covering of black plastic mulch to warm heavy clay soils before setting out transplants. If transplanting, set 3- to 4-inch tall seedlings 24 to 30 inches apart in well-prepared beds.', 'Eggplant will fall over once loaded with fruit. Be sure to stake plants 24 inches tall or use a cage to keep the plants upright. If growing eggplant in containers, stake the stems before the fruit forms. Water well without letting the soil get soggy. Consistent watering is best, and a soaker hose or drip system at ground level is ideal.', 'Harvest 16 to 24 weeks after sowing when the skin of the fruit is shiny and unwrinkled. Don’t wait too long to harvest! As soon as the skin does not rebound to gentle pressure from your finger, it’s ripe.', 1, '1/2', 'eggplant plant(s)', '3', 3, NULL, NULL),
(11, 'potato', ' The taste and the texture of homegrown potatoes are far superior to those of store-bought spuds, especially the early varieties. Here’s how to plant, grow, and harvest potatoes in your garden.', 'Potatoes can be started 0 to 2 weeks after last spring frost. You may plant earlier, as soon as soil can be worked, but be aware that some crops may be ruined by a frost or wet soil. With a hoe or round-point shovel, dig a trench about 6 inches wide and 8 inches deep, tapering the bottom to about 3 inches wide. Potatoes are best grown in rows. Space rows about 3 feet apart.', 'Do not allow sunlight to fall on the tubers, which develop under the surface of the soil, or they will turn green. Do the hilling in the morning, when plants are at their tallest. During the heat of the day, plants start drooping. Maintain even moisture, especially from the time when sprouts appear until several weeks after they blossom. The plants need 1 to 2 inches of water per week. If you water too much right after planting and not enough as the potatoes begin to form, the tubers can become misshapen.', 'Dig potatoes on a dry day. Dig up gently, being careful not to puncture the tubers. Avoid cutting or bruising potato skin. The soil should not be compact, so digging should be easy. If the soil is very wet, let the potatoes air-dry as much as possible before putting them in bags or baskets.', 1, '1', 'potato(es)', '1', 3, NULL, NULL),
(12, 'lettuce', 'Lettuce is cool-season crop that grows well in the spring and fall in most regions. Lettuce seedlings will even tolerate a light frost. Temperatures between 45°F and 65°F are ideal. Because lettuce grows quickly, the best approach is to plant a small amount at a time, staggering your plantings', 'Direct sowing is recommended as soon as the ground can be worked. Plant seeds ½ inch deep. Snow won’t hurt them, but a desiccating cold wind will. Plant 6 inches apart. Your rows of plants should be 12 to 15 inches across.', 'You should be able to sow additional seeds every two weeks for a continuous harvest throughout the growing season. Fertilize 3 weeks after transplanting. Lettuce prefers soil that is high in humus, with plenty of compost and a steady supply of nitrogen to keep if growing fast. Use organic alfalfa meal or a slow-release fertilizer.', 'Lettuce should be harvested when full size, but just before maturity. You want it young and tender. Before maturity, you can harvest leaf lettuce by simply removing outer leaves so that the center leaves can continue to grow. Butterhead or romaine types can be harvested by removing the outer leaves, digging up the whole plant or cutting the plant about an inch above the soil surface. A second harvest is often possible this way. Crisphead lettuce is picked when the center is firm.', 2, '2', 'lettuce plant(s)', '1', 4, NULL, NULL),
(13, 'peas', 'Peas are one of the first crops we plant. Plant as soon as the ground can be worked—even if snow falls after you plant them', 'Sow seeds outdoors 4 to 6 weeks before last spring frost, when soil temperatures reach 45 degrees F. Plant 1 inch deep (deeper if soil is dry) and 2 inches apart', 'Make sure that you have well-drained, humus-rich soil. Poke in any seeds that wash out. (A chopstick is an ideal tool for this.) Be sure, too, that you don’t fertilize the soil too much. Peas are especially sensitive to too much nitrogen, but they may like a little bonemeal, for the phosphorus content.', 'Keep your peas well picked to encourage more pods to develop. Pick peas in the morning after the dew has dried. They are crispiest then. Always use two hands when you pick peas. Secure the vine with one hand and pull the peas off with your other hand.', 3, '3', 'pea plant(s)', '5', 5, NULL, NULL),
(14, 'onion', 'We recommend using onion sets, which can be planted without worry of frost damage and have a higher success rate than direct seed or transplants.', 'Plant onions as soon as the ground can be worked in the spring, usually late March or April. Make sure outdoor temperatures don’t dip below 20°F (-6°C). For sets or transplants, space plants 4 to 5 inches apart in rows 12 to 18 inches apart.', 'Fertilize every few weeks with nitrogen to get big bulbs. Cease fertilizing when the onions push the soil away and the bulbing process has started. Do not put the soil back around the onions; the bulb needs to emerge above the soil. Generally, onion plants do not need consistent watering if mulch is used. About one inch of water per week (including rain water) is sufficient. If you want sweeter onions, water more.', 'Pull any onions that send up flower stalks; this means that the onions have stopped growing. These onions will not store well but can be used in recipes within a few days. When onions start to mature, the tops (foliage) become yellow and begin to fall over. At that point, bend the tops down or even stomp on them to speed the final ripening process.', 2, '2', 'onion(s)', '1', 6, NULL, NULL),
(15, 'cucumber', 'An easy-care vegetable that loves sun and water, cucumbers grow quickly as long as they receive consistent watering. Most varieties will grow in any amount of space, thanks to the plant’s ability to climb.', 'Cucumber plants are seeded or transplanted outside in the ground no earlier than 2 weeks after last frost date. Cucumbers are extremely susceptible to frost damage; the soil must be at least 70ºF for germination. Plant seedlings one inch deep and about 36 to 60 inches apart, depending on variety. For vines trained on a trellis, space plants 1 foot apart.', 'The main plant care requirement for cucumbers is water—consistent watering! They need one inch of water per week (more if temperatures are sky high). Put your finger in the soil and when it is dry past the first joint of your finger, it is time to water. Inconsistent watering leads to bitter-tasting fruit. Water slowly in the morning or early afternoon, avoiding the leaves so that you don’t get leaf diseases which will ruin the plant. If possible, water your cucumbers with a soaker hose or drip irrigation to keep the foliage dry.', 'Don’t let cucumbers get too large or the will taste bitter. At peak harvesting time, you should be picking cucumbers every couple of days. They’ll grow quickly! Harvest regular slicing cucumbers when they about 6 to 8 inches long ', 1, '1/2', 'cucumber plant(s)', '10', 8, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `plant_square`
--

CREATE TABLE `plant_square` (
  `id` int(20) UNSIGNED NOT NULL,
  `plant_id` int(20) NOT NULL,
  `square_id` int(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `plant_types`
--

CREATE TABLE `plant_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `plant_types`
--

INSERT INTO `plant_types` (`id`, `name`, `img`, `created_at`, `updated_at`) VALUES
(3, 'nightshades', 'tomato.svg', NULL, NULL),
(4, 'leafy greens', 'kale.svg', NULL, NULL),
(5, 'legumes', 'peas.svg', NULL, NULL),
(6, 'root vegetables', 'onion.svg', NULL, NULL),
(8, 'vine crops', 'watermelon.svg', NULL, NULL),
(9, 'Garden Fruits', 'strawberry.svg', NULL, NULL),
(11, 'brassicas', 'cabbage.svg', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `preserves`
--

CREATE TABLE `preserves` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `preserve_type_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `preserves`
--

INSERT INTO `preserves` (`id`, `name`, `img`, `desc`, `preserve_type_id`, `created_at`, `updated_at`) VALUES
(1, 'Dill Beans', 'dillbeans.jpg', 'Dilly beans are green beans, suspended in a vinegar-based pickling liquid and seasoned simply with garlic, black peppercorns and either dill heads or seeds. Because beans are sturdy little suckers, they retain their crispness through the boiling water bath process. Even months after canning, dilly beans will be crunchy and intensely flavorful.', 1, NULL, NULL),
(2, 'Apple Pie', 'applepie.jpg', 'The name says it all in this apple pie recipe. This truly is The Perfect Apple Pie - we\'ll show you how to make a tender crust and a luscious apple filling.', 2, NULL, NULL),
(3, 'Strawberry Jam', 'strawberryjam.jpg', 'Turn summer\'s bounty into Strawberry Jam in under an hour!', 3, NULL, NULL),
(4, 'Dill Pickle Relish', 'dillpicklerelish.jpg', 'Easy Homemade Dill Pickle Relish\r\nwritten on 15 august, 2014\r\n\r\nThis post contains affiliate links.\r\neasy homemade dill pickle relish canning recipeSave\r\nIt’s relish like this that makes eating a sandwich or hot dog just that much better.   It also adds a wonderful dimension to your pasta and potato salads. Last Summer I posted my recipe for Sweet Pickle Relish and here is the more savory version with a more pronounced dill flavor.', 4, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `preserve_types`
--

CREATE TABLE `preserve_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `preserve_types`
--

INSERT INTO `preserve_types` (`id`, `name`, `img`, `created_at`, `updated_at`) VALUES
(1, 'pickles', 'pickles.svg', NULL, NULL),
(2, 'pies', 'bowl.svg', NULL, NULL),
(3, 'Jams', 'jam.svg', NULL, NULL),
(4, 'Relishes', 'relish.svg', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `squares`
--

CREATE TABLE `squares` (
  `id` int(10) UNSIGNED NOT NULL,
  `plant_id` int(100) NOT NULL,
  `htmlId` int(100) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `garden_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `squares`
--

INSERT INTO `squares` (`id`, `plant_id`, `htmlId`, `name`, `garden_id`, `created_at`, `updated_at`) VALUES
(665, 5, 98, 'carrot', 43, NULL, NULL),
(666, 2, 70, 'zucchini', 43, NULL, NULL),
(667, 4, 63, 'celery', 43, NULL, NULL),
(668, 2, 122, 'zucchini', 43, NULL, NULL),
(669, 4, 244, 'celery', 43, NULL, NULL),
(670, 6, 363, 'tomato', 43, NULL, NULL),
(671, 1, 425, 'cabbage', 43, NULL, NULL),
(672, 6, 35, 'tomato', 43, NULL, NULL),
(673, 5, 31, 'carrot', 43, NULL, NULL),
(674, 1, 120, 'cabbage', 43, NULL, NULL),
(1586, 6, 0, 'tomato', 55, NULL, NULL),
(1587, 8, 2, 'spinach', 55, NULL, NULL),
(1588, 2, 4, 'zucchini', 55, NULL, NULL),
(1589, 2, 6, 'zucchini', 55, NULL, NULL),
(1590, 1, 8, 'cabbage', 55, NULL, NULL),
(1591, 4, 9, 'celery', 55, NULL, NULL),
(1592, 10, 11, 'eggplant', 55, NULL, NULL),
(1593, 10, 13, 'eggplant', 55, NULL, NULL),
(1594, 10, 15, 'eggplant', 55, NULL, NULL),
(1595, 12, 17, 'lettuce', 55, NULL, NULL),
(1596, 12, 18, 'lettuce', 55, NULL, NULL),
(1597, 12, 19, 'lettuce', 55, NULL, NULL),
(1598, 12, 20, 'lettuce', 55, NULL, NULL),
(1599, 12, 21, 'lettuce', 55, NULL, NULL),
(1600, 12, 22, 'lettuce', 55, NULL, NULL),
(1601, 12, 23, 'lettuce', 55, NULL, NULL),
(1602, 12, 24, 'lettuce', 55, NULL, NULL),
(1603, 8, 32, 'spinach', 55, NULL, NULL),
(1604, 1, 38, 'cabbage', 55, NULL, NULL),
(1605, 4, 39, 'celery', 55, NULL, NULL),
(1606, 13, 58, 'peas', 55, NULL, NULL),
(1607, 13, 59, 'peas', 55, NULL, NULL),
(1608, 6, 60, 'tomato', 55, NULL, NULL),
(1609, 8, 62, 'spinach', 55, NULL, NULL),
(1610, 2, 64, 'zucchini', 55, NULL, NULL),
(1611, 2, 66, 'zucchini', 55, NULL, NULL),
(1612, 1, 68, 'cabbage', 55, NULL, NULL),
(1613, 4, 69, 'celery', 55, NULL, NULL),
(1614, 10, 71, 'eggplant', 55, NULL, NULL),
(1615, 10, 73, 'eggplant', 55, NULL, NULL),
(1616, 10, 75, 'eggplant', 55, NULL, NULL),
(1617, 13, 88, 'peas', 55, NULL, NULL),
(1618, 13, 89, 'peas', 55, NULL, NULL),
(1619, 8, 92, 'spinach', 55, NULL, NULL),
(1620, 1, 98, 'cabbage', 55, NULL, NULL),
(1621, 4, 99, 'celery', 55, NULL, NULL),
(1622, 14, 107, 'onion', 55, NULL, NULL),
(1623, 14, 108, 'onion', 55, NULL, NULL),
(1624, 14, 109, 'onion', 55, NULL, NULL),
(1625, 14, 110, 'onion', 55, NULL, NULL),
(1626, 13, 118, 'peas', 55, NULL, NULL),
(1627, 13, 119, 'peas', 55, NULL, NULL),
(1628, 6, 120, 'tomato', 55, NULL, NULL),
(1629, 8, 122, 'spinach', 55, NULL, NULL),
(1630, 2, 124, 'zucchini', 55, NULL, NULL),
(1631, 2, 126, 'zucchini', 55, NULL, NULL),
(1632, 1, 128, 'cabbage', 55, NULL, NULL),
(1633, 4, 129, 'celery', 55, NULL, NULL),
(1634, 11, 132, 'potato', 55, NULL, NULL),
(1635, 11, 135, 'potato', 55, NULL, NULL),
(1636, 14, 137, 'onion', 55, NULL, NULL),
(1637, 14, 138, 'onion', 55, NULL, NULL),
(1638, 14, 139, 'onion', 55, NULL, NULL),
(1639, 14, 140, 'onion', 55, NULL, NULL),
(1640, 13, 148, 'peas', 55, NULL, NULL),
(1641, 13, 149, 'peas', 55, NULL, NULL),
(1642, 8, 152, 'spinach', 55, NULL, NULL),
(1643, 11, 162, 'potato', 55, NULL, NULL),
(1644, 11, 165, 'potato', 55, NULL, NULL),
(1645, 14, 167, 'onion', 55, NULL, NULL),
(1646, 14, 168, 'onion', 55, NULL, NULL),
(1647, 14, 169, 'onion', 55, NULL, NULL),
(1648, 14, 170, 'onion', 55, NULL, NULL),
(1649, 13, 178, 'peas', 55, NULL, NULL),
(1650, 13, 179, 'peas', 55, NULL, NULL),
(1651, 6, 180, 'tomato', 55, NULL, NULL),
(1652, 8, 182, 'spinach', 55, NULL, NULL),
(1653, 5, 184, 'carrot', 55, NULL, NULL),
(1654, 5, 185, 'carrot', 55, NULL, NULL),
(1655, 9, 187, 'watermelon', 55, NULL, NULL),
(1656, 9, 190, 'watermelon', 55, NULL, NULL),
(1657, 11, 192, 'potato', 55, NULL, NULL),
(1658, 11, 195, 'potato', 55, NULL, NULL),
(1659, 13, 208, 'peas', 55, NULL, NULL),
(1660, 13, 209, 'peas', 55, NULL, NULL),
(1661, 8, 212, 'spinach', 55, NULL, NULL),
(1662, 5, 214, 'carrot', 55, NULL, NULL),
(1663, 5, 215, 'carrot', 55, NULL, NULL),
(1664, 11, 222, 'potato', 55, NULL, NULL),
(1665, 11, 225, 'potato', 55, NULL, NULL),
(1666, 15, 229, 'cucumber', 55, NULL, NULL),
(1667, 15, 231, 'cucumber', 55, NULL, NULL),
(1668, 15, 233, 'cucumber', 55, NULL, NULL),
(1669, 13, 238, 'peas', 55, NULL, NULL),
(1670, 13, 239, 'peas', 55, NULL, NULL),
(1671, 6, 240, 'tomato', 55, NULL, NULL),
(1672, 8, 242, 'spinach', 55, NULL, NULL),
(1673, 5, 244, 'carrot', 55, NULL, NULL),
(1674, 5, 245, 'carrot', 55, NULL, NULL),
(1675, 11, 252, 'potato', 55, NULL, NULL),
(1676, 11, 255, 'potato', 55, NULL, NULL),
(1677, 13, 268, 'peas', 55, NULL, NULL),
(1678, 13, 269, 'peas', 55, NULL, NULL),
(1679, 8, 272, 'spinach', 55, NULL, NULL),
(1680, 5, 274, 'carrot', 55, NULL, NULL),
(1681, 5, 275, 'carrot', 55, NULL, NULL),
(1682, 9, 277, 'watermelon', 55, NULL, NULL),
(1683, 9, 280, 'watermelon', 55, NULL, NULL),
(1684, 11, 282, 'potato', 55, NULL, NULL),
(1685, 11, 285, 'potato', 55, NULL, NULL),
(1686, 15, 287, 'cucumber', 55, NULL, NULL),
(1687, 15, 289, 'cucumber', 55, NULL, NULL),
(1688, 15, 291, 'cucumber', 55, NULL, NULL),
(1689, 15, 293, 'cucumber', 55, NULL, NULL),
(1690, 6, 300, 'tomato', 55, NULL, NULL),
(1691, 8, 302, 'spinach', 55, NULL, NULL),
(1692, 5, 304, 'carrot', 55, NULL, NULL),
(1693, 5, 305, 'carrot', 55, NULL, NULL),
(1694, 11, 312, 'potato', 55, NULL, NULL),
(1695, 11, 315, 'potato', 55, NULL, NULL),
(1696, 11, 342, 'potato', 55, NULL, NULL),
(1697, 11, 345, 'potato', 55, NULL, NULL),
(1698, 12, 114, 'lettuce', 55, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Jessy', 'jessy@aol.com', '$2y$10$y2s5B9IiJFZQ/xuXshrGb.MPMsEnNKo/eQHNRT9bugOTKGj9oUk02', 'RWJEGIgbnCYQ3H4PazJIiWFNOSBMLWePAEBsBus9AmU6Y3GlmI09N0HOovq7', '2018-03-26 23:43:15', '2018-03-26 23:43:15'),
(2, 'Moragh', 'moragh@aol.com', '$2y$10$LVv20/SpNQWCULutWg1AHu9neNQdWeXQPjHZAzHjaPswXzxY3pI82', 'GKwj9UyCsLoo4YuEYUvCrs2cuj8YABcEDdUwcZw9y8JnIIfSyPr87CnX6vq8', '2018-03-28 05:37:28', '2018-03-28 05:37:28'),
(3, 'Amy', 'a.rosedickson@gmail.com', '$2y$10$Go7ESrrZwMKmtpB50.iywexRESQDH/iZ8TU9hy9skreVEiR1Mbx/m', NULL, '2018-03-29 18:25:38', '2018-03-29 18:25:38'),
(4, 'danielle', 'danielle@aol.com', '$2y$10$Xwu0axTcfja/AmSksyKlEOe40abFl8RfWhxr1hq7R/6QsIfu7htnO', 'VzzVdIUpGvkVmo30WfAUIrexVdqoQjHn2ls0ol6E9UXTJnT6AePhfIRRSXei', '2018-04-04 03:49:48', '2018-04-04 03:49:48'),
(5, 'Allan', 'allan@hotmail.com', '$2y$10$UNAWS5nsKGOqJEpUzcq7XOo1B7N.t1NyydvrVQIc2G6DCtC9AwuJi', 'xyLzQlNA1xtsOdUmRWBbx69punxTLpc5xbMQZzkla6uWS6Ly33tAGWWqdL0x', '2018-04-06 04:53:33', '2018-04-06 04:53:33'),
(6, 'lucas', 'lucas@aol.com', '$2y$10$Y1Fq88YBmPTrwuZvUsVxw.47QXxN5QrvORAmfQlFNxKNlBX1XSeRK', 'seLct4LZXSkvninyiAxGNRBb8KOP5Jt9ZFmGwgbFjXQHfRmEY7FWQTcJmCuw', '2018-04-06 23:38:16', '2018-04-06 23:38:16');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `directions`
--
ALTER TABLE `directions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gardens`
--
ALTER TABLE `gardens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ingredients`
--
ALTER TABLE `ingredients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `plants`
--
ALTER TABLE `plants`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `plant_square`
--
ALTER TABLE `plant_square`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `plant_types`
--
ALTER TABLE `plant_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `preserves`
--
ALTER TABLE `preserves`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `preserve_types`
--
ALTER TABLE `preserve_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `squares`
--
ALTER TABLE `squares`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `directions`
--
ALTER TABLE `directions`
  MODIFY `id` int(100) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `gardens`
--
ALTER TABLE `gardens`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `ingredients`
--
ALTER TABLE `ingredients`
  MODIFY `id` int(100) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `plants`
--
ALTER TABLE `plants`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `plant_square`
--
ALTER TABLE `plant_square`
  MODIFY `id` int(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `plant_types`
--
ALTER TABLE `plant_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `preserves`
--
ALTER TABLE `preserves`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `preserve_types`
--
ALTER TABLE `preserve_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `squares`
--
ALTER TABLE `squares`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1699;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
