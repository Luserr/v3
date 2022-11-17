
--
-- Dumping data for table `job_grades`
--

INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
(307, 'news', 0, 'news_1', 'Stringer', 20, '{}', '{}');



INSERT INTO `jobs` (`name`, `label`, `whitelisted`) VALUES
('news', 'Weazel News', 1);


INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`, `limit`) VALUES
('news_camera', 'News Camera', 1, 0, 1, 1);