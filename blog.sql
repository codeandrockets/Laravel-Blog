-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 12, 2016 at 05:12 am
-- Server version: 5.6.20
-- PHP Version: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2016_04_29_030300_create_posts_table', 1),
('2016_05_01_071710_add_slug', 1),
('2016_05_02_024622_create_products_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE IF NOT EXISTS `posts` (
`id` int(10) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=10 ;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `body`, `created_at`, `updated_at`, `slug`) VALUES
(1, 'Forget the Apple—Walk Your Dog Each Day to Keep the Doctor Away', 'Dog walking helps cut back on excess weight and the overall need to visit a physician while raising overall moderate and vigorous exercise levels among the over-60 set, investigators found.\r\n\r\nAnd the strong emotional bonds formed between owner and pet offer social benefits, encouraging increased contact with other pet owners.\r\n\r\n“There is a wealth of evidence that walking is beneficial for people’s physical health,” said study lead author Angela Curl. She is an assistant professor in the department of family studies and social work at Miami University, in Oxford, Ohio.\r\n\r\n“[And] what makes dog walking unique is the relationship between people and their dogs, as well as the ways dogs can motivate walking behavior,” she added. “Other studies have shown dogs’ needs provide a motivation to get out and walk. Our findings illustrate that the emotional bond people have with their dogs may play an important role in getting out to walk.”\r\n\r\nCurl and her colleagues discussed their work in a recent issue of The Gerontologist.\r\n\r\nThe authors noted that in 2014, the U.S. Centers for Disease Control and Prevention recommended that all adults, regardless of age, rack up a minimum of 150 minutes of moderate activity every week.\r\n\r\nWalking happens to be the most frequent exercise activity among adults 60 and up.\r\n\r\nTo explore the impact of dog ownership on that, the investigating team analyzed data involving a nationally representative sample of 771 men and women (50 years old and up) collected in 2012 by the Health and Retirement Study. That investigation was conducted at the University of Michigan, with funding from the U.S. National Institute on Aging.\r\n\r\nJust over a third of the participants (271) owned at least one dog. Pet ownership involving other types of animals was not considered.\r\n\r\nA portion of the dog owners group was asked questions to gauge pet “bonding,” including whether they considered their dog a friend, and whether they talked about their dog with others.\r\n\r\nFrequency and overall time spent walking was also assessed, as were overall walking habits, walking speed and total distance walked per week.\r\n\r\nThe result: While owning a dog was not directly associated with having better overall health among those 60 and up, it was associated with a lower body mass index (a measure of weight and obesity status); fewer physical limitations; less frequent visits to a doctor; and more routine exercise. The study didn’t prove a cause-and-effect relationship, however.\r\n\r\nBut would owning other types of pets also pay a health dividend?\r\n\r\n“Other research studies have found that cats and dogs can help reduce loneliness as well as improve health outcomes such as cortisol [stress hormone] levels, cholesterol, and systolic blood pressure,” said Curl. “However, we need a lot more research about the potential health benefits of other species of pets, and who might benefit the most [or] least from pet ownership.”', '2016-04-30 20:00:28', '2016-05-10 16:14:03', 'forgettheapple'),
(2, 'How to Make a Fat-Burning Green Smoothie', 'A vitamin-packed smoothie is a great way to start the day, or works as the perfect afternoon pick-me-up. Cassie Best shares her top tips on how to make your smoothies delicious and nutritious every time.\r\n \r\nMango & banana smoothiesGetting your ratios right\r\n\r\nStart your smoothie with two mugs full of a liquid base. This can be milk, or a dairy-free alternative such as soya or almond milk, natural or flavoured yogurt, fruit juice, or for a tropical flavoured smoothie, low-fat coconut milk or coconut water. It''s important to add the liquid to your blender before adding the fruit as this will prevent the blade from getting damaged. \r\n\r\nNext add about three quarters of a mug of your chosen fruit. Banana is a great base flavour for any smoothie, and will give you a lovely creamy texture. Other fruits that work well are berries, mango, peaches, plums, nectarines, grated apple or pear, and melon. You may have to add more fruit or liquid, depending on the type of fruit you choose. \r\n\r\nPlay around until you have a texture you like. Add a squeeze of honey, maple syrup or agave syrup if your smoothie needs it and finally add a few ice cubes to the blender for a thick and frosty smoothie. \r\nMango & banana smoothie\r\n \r\nSuper berry smoothieFreeze your fruit\r\n\r\nIf you want to make smoothies regularly, it''s a great idea to stash some fruit in the freezer. Not only will they retain their nutritional value and flavour, they will instantly chill your smoothie, so no need to add ice. Before your bananas have a chance to turn brown in the fruit bowl, peel and slice them, then freeze on a sheet of baking parchment on a tray until solid. You can then store in sandwich bags and throw into your blender whenever you need them.\r\n\r\n Even fruits that don''t usually freeze well, like strawberries and melon, are ok to freeze if you''re using them in a smoothie. \r\n\r\nMost supermarkets now sell frozen smoothie packs, which are often great value and give you a good mixture of fruit. \r\n\r\nGet creative\r\n\r\nOnce you''ve mastered the basics, try adding different flavours to your basic recipe. Add a spoonful of cocoa powder, cinnamon, grated nutmeg or vanilla essence before blending, or give your smoothie some texture with a sprinkle of flaxseeds, toasted chopped nuts or whole oats. Not only will it taste great but it will keep you fuller for longer too.\r\n\r\nBanana, honey & hazelnut smoothie\r\n\r\nIf you haven''t tried a smoothie made from a mixture of fruit and vegetables before, you may be surprised by the flavour. The sweetness of fruit blends well with lots of vegetables and makes for a delicious and super-nutritious drink. \r\n\r\nTry making a green detox smoothie with coconut water, grated apple, kiwi, banana and spinach. Other vegetables which work well are grated beetroot or carrot, kale, tomatoes and avocados.\r\nForest fruits & banana smoothieIf you''re having a smoothie for breakfast or lunch, make it a more rounded meal by adding some protein. A spoonful of protein powder, peanut or other nut butter, or some tofu will blend well with your smoothie and give you an essential protein boost. \r\n\r\nContrary to what you may have seen in Rocky, raw eggs are not a good option as we absorb the protein in eggs much better when they are cooked.\r\n', '2016-04-30 21:05:27', '2016-05-10 16:12:17', 'smoothie'),
(3, 'Top 10 Foods for Preventing Cold & Flu', 'People who are exposed to cold and flu germs every day -- doctors, flight attendants, teachers -- know a thing or two about how to stay healthy when everyone around them is sick. Their suggestions can help you, too.\r\n\r\nGet a flu shot. It''s the No. 1 thing you can do to prevent the flu.\r\n\r\nWash your hands -- a lot. No matter what line of work you’re in, if you come in contact with people who are contagious, you have to wash your hands over and over, says Alan Pocinki, MD. Pocinki practices internal medicine at the George Washington University Hospital in Washington, DC.\r\n\r\n“ Wash your hands as much as you can stand, and then some more -- especially after wrapping up a visit with someone who’s sick,” Pocinki says.\r\n\r\nIt sounds so simple, but soap and water are the constant companions of doctors and nurses. To completely get rid of viruses from your skin, you need to scrub hard for 20 seconds or more. A good way to time yourself is to sing "Happy Birthday" twice while scrubbing the backs of your hands, between your fingers, and under your nails. It doesn''t matter if the water''s hot or cold -- the very act of scrubbing will physically remove the germs.\r\n\r\nUse alcohol-based hand sanitizer. If you can’t get to soap and water, sanitizer can kill cold and flu germs.\r\n\r\nAvoid getting close to people who are sick. For example, don''t shake hands.\r\n\r\n“Doctors tend to be very cautious about hand shaking,” says Terri Remy, MD, medical director of Medical Associates at Beauregard in Alexandria, VA. “Just explain, ‘To keep transmission of colds and flu down, I’m not shaking hands. But hello! Nice to meet you!’ They understand.”\r\n\r\nKeep your surroundings clean. Arlington, VA, massage therapist Amanda Long asks clients to stay home if they feel bad. But to be safe, she sanitizes doorknobs and light switches between sessions. It''s a practice she swears by.\r\n\r\n“My hyper-vigilance has paid off,” Long says. “I was sick more often when I worked in an office, where people pawed into shared candy dishes and generally just mingled in a crowded space without much attention to germs. Now that I don''t have sick days, I don''t get paid if I don''t work. And I know my job is to heal, not pass on a cold or the flu.”', '2016-04-30 21:13:55', '2016-05-10 16:08:22', 'preventingflu'),
(4, '7 Ways to Make Yourself a Better Runner', 'Want to run faster? If you can complete up to 5 or 6 miles, you’re ready to boost your speed and your cardiovascular fitness.\r\n\r\nOur Run Faster plan will ease you into track workouts to boost your leg and lung power – and your finishing time at the next 5K or 10K race. You’ll also develop a sense of “pace awareness,” that is, how your legs and lungs feel when you’re pushing the pace, which will help you avoid the most common racing mistake: going out too fast.\r\n\r\n \r\nYOU MIGHT LIKE\r\n \r\nThese 14 Auto Show Girls Will Make Your Jaw Drop\r\nMozo Motors\r\n \r\n5 Exercises That''ll Make You Faster\r\nRunner''s World\r\n \r\n15 Things You Consider Normal That Are Illegal in Other Countries\r\nWandering Pioneer\r\n \r\nProper Running Form\r\nRunner''s World\r\n \r\nDrop the Weights. All You Need Are These 10 Bodyweight Exercises\r\nHealth Weekly\r\n \r\nYour Fastest Weight\r\nRunner''s World\r\nRecommended by\r\nDAILY NEWSLETTER\r\n\r\nEmail address\r\n Submit\r\nYou may unsubscribe at any time.\r\nPrivacy Policy | About Us\r\n(Not ready yet? Try our Run Longer plan to help you safely build up from 3 miles to 6 miles.)\r\n\r\nHere are some tips to keep in mind as you get faster.\r\n\r\nGet a baseline. Get weighed and get your body fat measured so you have some baseline that allows you to track your progress, says running coach Mindy Solkin, founder of The Running Center, in New York. “It’s tangible evidence of your success,” she says. “Seeing those improvements really helps get over the emotional hurdle when you may not otherwise notice results.”\r\n\r\nRun for the hills. Not away from them. Hills build leg and lung strength, and give you the foundation of fitness you need to get faster on the track. Once a week, incorporate into your run a variety of hills that take 30 to 60 seconds to climb. As you go up hill,  try to stay relaxed. Keep your gaze straight ahead, your shoulders down, and envision your feet pushing up and off the leg, and the road rising to meet you. On the way down, don’t let your feet slap the pavement, and avoid leaning back and braking with the quads. That will put you at risk for injury. Try to maintain an even level of effort as you’re climbing up the hill and as you’re making your descent. Avoid trying to charge the hill; you don’t want to be spent by the time you get to the top. As you get fitter, add more challenging hills with a variety of grades and lengths.\r\n\r\nPick your pace. It’s important to make sure that you’re doing your easy runs and your hard track workouts at a pace that’s appropriate for your current level of fitness. To find your 5K or 10K pace, plug a recent race time into our training calculator at runnersworld.com/tools. No recent race time? Run a 5K or you can do a time trial.  Here’s how: warm up with one mile of easy running. Then run four laps around the track – or one mile on a flat stretch of road – and note your time. Run one mile to cool down. Plug the time of your fast mile into the training calculator to get the appropriate training paces. ', '2016-04-30 21:14:15', '2016-05-10 16:04:23', 'running'),
(7, 'Reduces Stress Through Transcendental Meditation', 'Stress is a fact of life - but it doesn''t need to be.\r\n\r\nEveryone is aware of the negative effects of stress. It decreases performance, harms relationships and creates physical wear and tear. In short, it curtails enjoyment of life. Furthermore it tends to build up in the system over the course of a lifetime. Even a good night''s sleep or an extended holiday does not enable us to recover fully.\r\n\r\nThere may or may not be things we can do to reorganise our lives externally in order to help to reduce stress. But whether or not this is an option, internally Transcendental Meditation actually eliminates the effects of stress, physiologically. When practised regularly, this results in a more balanced outlook, more energy, motivation and a deeper appreciation of things.', '2016-05-03 12:37:33', '2016-05-04 15:14:51', 'transcendental'),
(8, 'No-Pain Six-Pack: Chest, Shoulder, And Arm Workout', 'If you''ve been training for a few years, chances are you''re no longer able to do all your favorite lifts, due to injury or age. But there''s no excuse to bail on hard training entirely. Instead, with a few exercise substitutions, you can continue to challenge yourself, build muscle, and burn off the fat to see your abs inside of a month. Last time, we took you through a leg workout. In this video: The chest, shoulder, and arm workout of this full-body regimen.\r\n\r\nDIRECTIONS:\r\nPerform the following workout once per week in the order shown. Exercises are performed as straight sets, so you''ll complete all prescribed sets for one move before going to the next.\r\n\r\n1. Floor Press\r\nSets: 3   Reps: 8\r\n\r\n2. Band Flye\r\nSets: As many as needed   Reps: 75 total\r\n\r\n3. Neutral-Grip Overhead Press\r\nSets: 2   Reps: 15\r\n\r\n4. Hammer Curl\r\nSets: 2   Reps: 15\r\n\r\n5. Band Pushdown\r\nSets: As many as needed   Reps: 75 total', '2016-05-03 12:39:16', '2016-05-04 15:07:45', 'sixpack'),
(9, '101 Ways To Burn Belly Fat Fast', 'Eat more protein.\r\nAbout 25%-30% of the calories in each gram of protein are burned in digestion, compared to only 6%-8% of the calories in carbs. Do the math: You save 41 calories every time you substitute 50 grams of protein for an equal amount of carbs.\r\n\r\nRead labels.\r\nAvoid foods with "high-fructose corn syrup" in the ingredients list. Since 1971, consumption of this sugar substitute—which is used to sweeten soda, commercial baked goods, and even condiments—has increased more than 350% in the U.S., paralleling the rise in obesity.\r\n\r\nGet off your ass.\r\nDo every exercise standing instead of sitting. "You''ll expend up to 30% more calories," says Joe Stankowski, C.P.T. The solution for the bench press? Dips.\r\n\r\nMix up your movements.\r\nWhen you lift, perform supersets in which you alternate between sets of lower body exercises  and upper body exercises. That way, your lower body rests while your upper body is working. "This allows you to work your muscles maximally with very little downtime between sets for a faster, more effective workout," says Craig Ballantyne, C.S.C.S.\r\n\r\nExercise blind.\r\nWhen you''re using the elliptical trainer, try letting go of the handles and closing your eyes. (Be careful!) Without the visual feedback, your core muscles will have to work harder to keep you balanced, burning more calories.', '2016-05-03 12:40:18', '2016-05-04 14:12:06', 'burnbellyfat');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE IF NOT EXISTS `products` (
`id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `amount` decimal(5,2) NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
`id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'steven', 'steven@email.com', '$2y$10$cLWLCvjPVXrFZ2mlBk040OrFZCJdW0Tc321ED6FCVjrMWZO96Ozty', 'J3GoIo18vbzUpccdiBknbwdoyIAlw1k90cVB1IQsRlRVe9dDSUgTk9ijuSzc', '2016-05-01 12:09:38', '2016-05-10 19:13:17');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
 ADD KEY `password_resets_email_index` (`email`), ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
