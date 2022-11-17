CREATE TABLE IF NOT EXISTS `qp_weed_plants` (
  `plantid` int(11) NOT NULL AUTO_INCREMENT,
  `stage` varchar(50) DEFAULT 'stage-a',
  `sort` varchar(50) DEFAULT NULL,
  `food` int(11) DEFAULT 100,
  `health` int(11) DEFAULT 100,
  `progress` int(11) DEFAULT 0,
  `coords` text DEFAULT NULL,
  PRIMARY KEY (`plantid`)
);