use world;

show tables;

create table caffee (
	seq int,
    caffee_name varchar(100),
    number_table int,
    number_chair int,
    address varchar(100),
    region int,
    chief_name varchar(100)
);

CREATE TABLE IF NOT EXISTS.`caffee` (
  `seq` INT UNSIGNED NOT NULL,
  
  `caffee_name` VARCHAR(100) NULL,
  `number_table` INT NULL,
  `number_chair` INT NULL,
  `address` VARCHAR(100) NULL,
  `region` INT NULL,
  `chief_name` VARCHAR(100) NULL,
  PRIMARY KEY (`seq`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci
