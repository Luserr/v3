CREATE TABLE `710_bonds` (
	`id` INT(11) NOT NULL AUTO_INCREMENT,
	`pid` VARCHAR(255) NULL DEFAULT NULL COLLATE 'utf8_general_ci',
	`name` VARCHAR(255) NULL DEFAULT NULL COLLATE 'utf8_general_ci',
	`warrantinfo` TEXT NULL DEFAULT 'No info provided.' COLLATE 'utf8_general_ci',
	`warranttype` VARCHAR(255) NULL DEFAULT 'warrant' COLLATE 'utf8_general_ci',
	`amount` INT(11) NULL DEFAULT '0',
	PRIMARY KEY (`id`) USING BTREE
)
COLLATE='utf8_general_ci'
ENGINE=InnoDB
AUTO_INCREMENT=1
;



ALTER TABLE `710_users`
	ADD COLUMN `warrants` INT NULL DEFAULT '0';




/* ESX ONLY MAKE SURE TO REMOVE THIS BELOW IF YOU ARENT USING ESX!!!!!!!!! */
/* ESX ONLY MAKE SURE TO REMOVE THIS BELOW IF YOU ARENT USING ESX!!!!!!!!! */
/* ESX ONLY MAKE SURE TO REMOVE THIS BELOW IF YOU ARENT USING ESX!!!!!!!!! */
/* ESX ONLY MAKE SURE TO REMOVE THIS BELOW IF YOU ARENT USING ESX!!!!!!!!! */

INSERT INTO `jobs` (`name`, `label`, `whitelisted`) VALUES ('bondsman', 'Bondsman', '1');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES (2026, 'bondsman', 0, 'bondagent', 'Bond Agent', 0, '{}', '{}');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES (2027, 'bondsman', 1, 'bondsman', 'Bond Dealer', 0, '{}', '{}');

