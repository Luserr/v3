CREATE TABLE `head_bag_heist` (
    `id` VARCHAR (50) NULL DEFAULT NULL,
    `steam` VARCHAR (50) NULL DEFAULT NULL,
    `citizenid` VARCHAR (50) NULL DEFAULT NULL,
    `rewards` VARCHAR (50) NULL DEFAULT NULL,
    `outcome` VARCHAR (50) NULL DEFAULT NULL,
    `availability` VARCHAR (50) NULL DEFAULT NULL
)

COLLATE='latin1_swedish_ci'
ENGINE=InnoDB
;