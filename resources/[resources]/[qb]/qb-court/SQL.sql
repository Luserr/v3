CREATE TABLE IF NOT EXISTS `ap_bar` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner` varchar(100) NOT NULL,
  `name` varchar(100) CHARACTER SET latin1 NOT NULL DEFAULT 'Name',
  `mobile` varchar(30) CHARACTER SET latin1 NOT NULL DEFAULT 'Phone Number',
  `job` varchar(30) CHARACTER SET latin1 NOT NULL DEFAULT 'Job',
  `bar_id` varchar(100) CHARACTER SET latin1 NOT NULL DEFAULT '0000000',
  `bar_date` varchar(100) CHARACTER SET latin1 NOT NULL DEFAULT '01 JAN 2022',
  `bar_r_reason` varchar(100) CHARACTER SET latin1 NOT NULL DEFAULT 'Reason',
  `bar_state` int(11) NOT NULL DEFAULT 0,
  `app_state` int(11) NOT NULL DEFAULT 0,
  `app_reason` varchar(100) CHARACTER SET latin1 NOT NULL DEFAULT 'Reason',
  `app_date` varchar(100) CHARACTER SET latin1 NOT NULL DEFAULT 'Date',
  `jury_state` int(11) NOT NULL DEFAULT 0,
  `jury_pay` int(11) NOT NULL DEFAULT 0,
  `jury_case` int(11) NOT NULL DEFAULT 0,
  `jury_v_state` int(11) NOT NULL DEFAULT 0,
  `jury_case_date` varchar(50) CHARACTER SET latin1 NOT NULL DEFAULT 'Court Date',
  `jury_removal` varchar(100) CHARACTER SET latin1 NOT NULL DEFAULT 'Removal Reason',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

CREATE TABLE IF NOT EXISTS `ap_cases` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `judgeid` varchar(100) NOT NULL DEFAULT 'Judge ID',
  `judgen` varchar(35) NOT NULL DEFAULT 'Add To Case',
  `defendantid` varchar(100) NOT NULL DEFAULT 'Defendant ID',
  `defendantn` varchar(35) NOT NULL DEFAULT 'Add To Case',
  `defenseid` varchar(100) NOT NULL DEFAULT 'Defense ID',
  `defensen` varchar(35) NOT NULL DEFAULT 'Add To Case',
  `casename` varchar(100) CHARACTER SET latin1 NOT NULL DEFAULT 'Case Name',
  `job_request` varchar(100) CHARACTER SET latin1 NOT NULL DEFAULT 'Job Name',
  `courtfees` int(11) DEFAULT 0,
  `courtdate` varchar(100) CHARACTER SET latin1 NOT NULL DEFAULT 'Date & Time',
  `outcome` varchar(100) CHARACTER SET latin1 NOT NULL DEFAULT 'Court Outcome',
  `guilty` int(11) DEFAULT 0,
  `not_guilty` int(11) DEFAULT 0,
  `no_show_state` int(11) DEFAULT 0,
  `settlement_state` int(11) DEFAULT 0,
  `state` int(11) DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

CREATE TABLE IF NOT EXISTS `ap_criminalarchives` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(50) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `data` longtext DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

CREATE TABLE IF NOT EXISTS `ap_judgeexam` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question` longtext DEFAULT 'Question',
  `a` longtext DEFAULT 'Answer A',
  `b` longtext DEFAULT 'Answer B',
  `c` longtext DEFAULT 'Answer C',
  `d` longtext DEFAULT 'Answer D',
  `answer` longtext DEFAULT 'Correct Answer',
  `last_changed_by` varchar(70) DEFAULT 'Judge Name',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

INSERT INTO `ap_judgeexam` (`id`, `question`, `a`, `b`, `c`, `d`, `answer`, `last_changed_by`) VALUES
	(1, 'Question Example #1', 'Answer A Example', 'Answer B Example', 'Answer C Example', 'Answer D Example', 'a', 'Judge Name'),
	(2, 'Question Example #2', 'Answer A Example', 'Answer B Example', 'Answer C Example', 'Answer D Example', 'a', 'Judge Name'),
	(3, 'Question Example #3', 'Answer A Example', 'Answer B Example', 'Answer C Example', 'Answer D Example', 'a', 'Judge Name'),
	(4, 'Question Example #4', 'Answer A Example', 'Answer B Example', 'Answer C Example', 'Answer D Example', 'a', 'Judge Name'),
	(5, 'Question Example #5', 'Answer A Example', 'Answer B Example', 'Answer C Example', 'Answer D Example', 'a', 'Judge Name'),
	(6, 'Question Example #6', 'Answer A Example', 'Answer B Example', 'Answer C Example', 'Answer D Example', 'a', 'Judge Name');
