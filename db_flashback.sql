-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 09, 2018 at 07:02 PM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_flashback`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_reviews`
--

CREATE TABLE `tbl_reviews` (
  `reviews_id` smallint(5) UNSIGNED NOT NULL,
  `reviews_review` varchar(200) NOT NULL,
  `reviews_rating` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_videos`
--

CREATE TABLE `tbl_videos` (
  `videos_id` mediumint(8) UNSIGNED NOT NULL,
  `videos_thumb` varchar(80) NOT NULL,
  `videos_promothumb` varchar(80) NOT NULL,
  `videos_title` varchar(80) NOT NULL,
  `videos_details` tinytext NOT NULL,
  `videos_vid` varchar(80) NOT NULL,
  `videos_decade` varchar(20) NOT NULL,
  `videos_category` varchar(20) NOT NULL,
  `videos_type` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_videos`
--

INSERT INTO `tbl_videos` (`videos_id`, `videos_thumb`, `videos_promothumb`, `videos_title`, `videos_details`, `videos_vid`, `videos_decade`, `videos_category`, `videos_type`) VALUES
(1, '', 'the-princess-bride.jpg', 'The Princess Bride', 'A fairytale, fantasy adventure film. Action packed with romance, sword fights, Rodents of Unusual Size, and More!\r\n\r\nFollow Westley and Buttercup on their adventure, as well as all the incredible characters they cross paths with.', 'the_princess_bride.mp4', '80s', 'parent', 'featured'),
(2, '', 'thisweek-fav-50s.jpg', 'Alice in Wonderland', 'Follow Alice Down the Rabbit hole where she meets wacky and nonsense-filled characters like the mad-hatter and march hare.\r\nFollow the quest on the answer to the question of wondering \"whooooo are you?\"', 'alice_in_wonderland.mp4', '50s', 'kids', 'weeklyfav'),
(3, 'parent-tv-batman.jpg', 'thisweek-fav-60s.jpg', 'Batman', 'Follow Batman and Robin as they fight crime. ', 'batman.mp4', '60s', 'parent', 'weeklyfav'),
(4, 'parent-tv-bewitched.jpg', 'thisweek-fav-70s.jpg', 'Bewitched', 'A typical American boy bumps into a typical American girl, although this girl is a witch.', 'bewitched.mp4', '70s', 'parent', 'weeklyfav'),
(5, 'parent-mov-gremlins.jpg', 'thisweek-fav-80s.jpg', 'Gremlins', 'When Billy receives his new pet Gizmo the Gremlin, he realizes not everything is as it seems. ', 'gremlins.mp4', '80s', 'parent', 'weeklyfav'),
(6, '', 'thisweek-fav-90s.jpg', 'Power Puff Girls', 'Meet the Powerpuff Girls Blossom, Bubbles, and Buttercup. These girls are made of sugar, spice, everything nice, and chemical X.\r\n', 'power_puff_girls.mp4', '90s', 'kids', 'weeklyfav'),
(7, 'kidsmov-mary-poppins.jpg', '', 'Mary Poppins', 'The children have a new Nanny, and Mary Poppins is here name. They all go on musical adventures through this musical. ', 'mary_poppins.mp4', '60s', 'kids', 'kidsfav'),
(8, 'kidsmov-dennis-menace.jpg', '', 'Dennis the Menace', 'Dennis Menace makes his neighbour Mr. Wilson miserable with his energy and troublemaking in this comedy.', 'dennis_the_menace.mp4', '90s', 'kids', 'kidsfav'),
(9, 'kidsmov-magicschoolbus.jpg', '', 'The Magic School Bus', 'Ms. Frizzle and her class go on educational and adventure-filled field trips on the Magic School Bus.', 'the_magic_schoolbus.mp4', '90s', 'kids', 'kidsfav'),
(10, 'kidsmov-sword-stone.jpg', '', 'The Sword in the Stone', 'An orphaned child named Arther becomes the centre of an incredible honour and miracle.', 'the_sword_in_the_stone.mp4', '60s', 'kids', 'kidsfav'),
(11, 'kidsmov-all-dogs-go-to-heaven.jpg', '', 'All Dogs Go To Heaven', '', '', '80s', 'kids', 'kidsfav'),
(12, 'kidsmov-honey-shrunk-kids.jpg', '', 'Honey I Shrunk the Kids', 'When kids sneak into the upstairs lab of Inventor Wayne Szalinski to get their baseball, his experimental shrink ray miniaturizes them.', 'honey_i_shrunk_the_kids.mp4', '80s', 'kids', 'kidsfun'),
(13, 'kidsmov-harry-hendersons.jpg', 'harry-promo.jpg', 'Harry and the Hendersons', 'A family discovers a Sasquatch, which comes to live with them for a short time, can they keep the secret from the world of their discovery to protect their new friend? ', 'harry_and_the_hendersons.mp4', '80s', 'kids', 'kidsfun'),
(14, 'kidsmov-muppet-movie.jpg', '', 'The Muppet Movie', 'Kermit the Frog decides to pursue a movie career and he starts a cross-country trip from Florida to California, where he meets many friends along the way.', 'the_muppet_movie.mp4', '70s', 'kids', 'kidsfun'),
(15, 'kidsmov-veggietales.jpg', '', 'VeggieTales', 'Talking vegetables learn about and educate on honesty, kindness, and forgiveness, as well as sing some silly songs.', 'veggiestales.mp4', '90s', 'kids', 'kidsfun'),
(16, 'parent-mov-breakfast-club.jpg', '', 'The Breakfast Club', 'Five high school students from different walks of life endure a Saturday detention under a power-hungry principal.', 'breakfastclub.mp4', '80s', 'parent', 'movrec'),
(18, 'parent-mov-grease.jpg', '', 'Grease', 'Follow the friendships, romances, and adventures of a group of high school students from the 1950s.', 'grease.mp4', '70s', 'parent', 'movrec'),
(19, 'parent-mov-sound-of-music.jpg', '', 'The Sound of Music', 'A tuneful, heartwarming story, based on the real life story of the Von Trapp Family singers, one of the world\'s best known concert groups in the era immediately preceding World War 2.', 'the_sound_of_music.mp4', '60s', 'parent', 'movrec'),
(20, 'parent-mov-jurassic-park.jpg', '', 'Jurassic Park', 'Follow the adventure of what happens when a selected group of people come to an island theme park populated by dinosaurs created from prehistoric DNA.', 'jurassic_park.mp4', '90s', 'parent', 'movrec'),
(21, 'parent-tv-brady-bunch.jpg', '', 'The Brady Bunch', 'Here\'s the story of a man named Brady, an architect widower with three sons: oldest Greg, middle son Peter and youngest Bobby. He meets and marries Carol, with three daughters of her own: oldest Marcia, middle girl Jan and little one Cindy. Tending to the', 'the_brady_bunch.mp4', '70s', 'parent', 'tvrec'),
(22, 'parent-tv-gilligans-island.jpg', '', 'Gilligans Island', 'Seven people set sail, but get stranded on a tropical island together. In this comedy you will meet The Skipper, Gilligan, a Millionaire, and His Wife, the Movie Star, The Professor, and Mary Ann.', 'gilligans_island.mp4', '60s', 'parent', 'tvrec'),
(24, 'parent-tv-happy-days.jpg', '', 'Happy Days', 'A story of the Cunningham family, father Howard, mother Marion, son Richie and daughter Joanie. Richie\'s best friends are Potsie and Ralph. Fonzie is the local bad boy.', 'happydays.mp4', '70s', 'parent', 'tvrec');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_reviews`
--
ALTER TABLE `tbl_reviews`
  ADD PRIMARY KEY (`reviews_id`);

--
-- Indexes for table `tbl_videos`
--
ALTER TABLE `tbl_videos`
  ADD PRIMARY KEY (`videos_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_reviews`
--
ALTER TABLE `tbl_reviews`
  MODIFY `reviews_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_videos`
--
ALTER TABLE `tbl_videos`
  MODIFY `videos_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
