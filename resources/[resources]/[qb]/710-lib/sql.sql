CREATE TABLE `710_users` (
	`pid` VARCHAR(255) NOT NULL COLLATE 'utf8_general_ci',
	`name` VARCHAR(255) NULL DEFAULT NULL COLLATE 'utf8_general_ci',
	PRIMARY KEY (`pid`) USING BTREE
)
COLLATE='utf8_general_ci'
ENGINE=InnoDB
;