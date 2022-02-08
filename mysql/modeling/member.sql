use world;

CREATE TABLE IF NOT EXISTS `infr_code_group` (
  `cg_seq` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `sex_cd` VARCHAR(45) NOT NULL,
  `nationality_cd` VARCHAR(45) NOT NULL,
  `child_cd` VARCHAR(45) NOT NULL,
  `personal_inf_exp_cd` VARCHAR(45) NOT NULL,
  `member_type_cd` VARCHAR(45) NOT NULL,
  `status_cd` VARCHAR(45) NOT NULL,
  `sns_type_cd` VARCHAR(45) NOT NULL,
  `email_type_cd` VARCHAR(45) NOT NULL,
  `mobile_cd` VARCHAR(45) NOT NULL,
  `email_cd` VARCHAR(45) NOT NULL,
  `contact_type` VARCHAR(45) NOT NULL,
  `default_contact_cd` VARCHAR(45) NOT NULL,
  `fax_type_cd` VARCHAR(45) NOT NULL,
  `default_fax_cd` VARCHAR(45) NOT NULL,
  `address_type_cd` VARCHAR(45) NOT NULL,
  `default_address_cd` VARCHAR(45) NOT NULL,
  `zipcode_type_cd` VARCHAR(45) NOT NULL,
  `default_zipcode_cd` VARCHAR(45) NOT NULL,
  `infr_code_groupcol` VARCHAR(45) NOT NULL,
  `infr_code_groupcol1` VARCHAR(45) NOT NULL,
  `pw_q_cd1` VARCHAR(45) NOT NULL,
  `pw_q_cd2` VARCHAR(45) NOT NULL,
  `pw_q_cd3` VARCHAR(45) NOT NULL,
  `occupation_type_cd` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`cg_seq`)
);

CREATE TABLE IF NOT EXISTS `infra_code` (
  `code` INT NOT NULL,
  `name` VARCHAR(50) NOT NULL,
  `infr_code_group_cg_seq` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`code`, `infr_code_group_cg_seq`),
  INDEX `fk_infra_code_infr_code_group1_idx` (`infr_code_group_cg_seq` ASC) VISIBLE,
  CONSTRAINT `fk_infra_code_infr_code_group1`
    FOREIGN KEY (`infr_code_group_cg_seq`)
    REFERENCES `infr_code_group` (`cg_seq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
);

CREATE TABLE IF NOT EXISTS `infra_member` (
  `seq` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `image_url` VARCHAR(100) NOT NULL,
  `member_type_cd` INT NOT NULL,
  `status_cd` INT NOT NULL,
  `name` VARCHAR(50) NOT NULL,
  `sex_cd` INT NOT NULL,
  `dob` DATE NOT NULL,
  `nationality_cd` INT NOT NULL,
  `occupation_name` VARCHAR(50) NOT NULL,
  `occupation_type_cd` INT NOT NULL,
  `id` VARCHAR(50) NOT NULL,
  `pw` VARCHAR(100) NOT NULL,
  `pw_q_cd1` INT NOT NULL,
  `pw_q_cd2` INT NOT NULL,
  `pw_q_cd3` INT NOT NULL,
  `pw_a1` VARCHAR(50) NOT NULL,
  `pw_a2` VARCHAR(50) NOT NULL,
  `pw_a3` VARCHAR(50) NOT NULL,
  `marital_ny` INT NOT NULL,
  `marry_date` VARCHAR(45) NOT NULL,
  `child_cd` INT NOT NULL,
  `color` VARCHAR(45) NOT NULL,
  `recommendation` VARCHAR(45) NULL,
  `homepage_url` VARCHAR(45) NULL,
  `approve_moblie_cd` INT NOT NULL,
  `approve_email_cd` INT NOT NULL,
  `personal_inf_exp_cd` INT NOT NULL,
  `Introduce_yourself` LONGTEXT CHARACTER SET 'utf8mb4' COLLATE 'utf8mb4_unicode_ci' NOT NULL,
  PRIMARY KEY (`seq`, `id`)
);

CREATE TABLE IF NOT EXISTS `infra_sns` (
  `seq` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `default_sns` VARCHAR(45) NOT NULL,
  `sns_type_cd` INT NOT NULL,
  `url` VARCHAR(100) NOT NULL,
  `infra_member_seq` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`seq`, `infra_member_seq`),
  INDEX `fk_sns_infra_member1_idx` (`infra_member_seq` ASC) VISIBLE,
  CONSTRAINT `fk_sns_infra_member1`
    FOREIGN KEY (`infra_member_seq`)
    REFERENCES `infra_member` (`seq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
);

CREATE TABLE IF NOT EXISTS `infra_email` (
  `seq` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `email_default_cd` INT NOT NULL,
  `email` VARCHAR(100) NOT NULL,
  `email_type_cd` INT NOT NULL,
  `infra_member_seq` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`seq`),
  INDEX `fk_email_infra_member1_idx` (`infra_member_seq` ASC) VISIBLE,
  CONSTRAINT `fk_email_infra_member1`
    FOREIGN KEY (`infra_member_seq`)
    REFERENCES `infra_member` (`seq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
);

CREATE TABLE IF NOT EXISTS `infra_project` (
  `seq` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(50) NOT NULL,
  `start_date` DATE NOT NULL,
  `orderer` VARCHAR(50) NOT NULL,
  `role` VARCHAR(50) NOT NULL,
  `endate` DATE NOT NULL,
  `infra_member_seq` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`seq`),
  INDEX `fk_infra_project_infra_member1_idx` (`infra_member_seq` ASC) VISIBLE,
  CONSTRAINT `fk_infra_project_infra_member1`
    FOREIGN KEY (`infra_member_seq`)
    REFERENCES `infra_member` (`seq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
);

CREATE TABLE IF NOT EXISTS `infra_address` (
  `seq` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `default_address_cd` INT NOT NULL,
  `address` VARCHAR(100) NOT NULL,
  `address_type_cd` INT NOT NULL,
  `zipcode` INT NOT NULL,
  `default_zipcode_cd` INT NOT NULL,
  `zipcode_type_cd` INT NOT NULL,
  `infra_member_seq` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`seq`, `infra_member_seq`),
  INDEX `fk_address_infra_member1_idx` (`infra_member_seq` ASC) VISIBLE,
  CONSTRAINT `fk_address_infra_member1`
    FOREIGN KEY (`infra_member_seq`)
    REFERENCES `infra_member` (`seq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
);

CREATE TABLE IF NOT EXISTS `infra_contact` (
  `seq` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `phone_n` INT NOT NULL,
  `contact_type` INT NOT NULL,
  `default_n_cd` INT NOT NULL,
  `infra_member_seq` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`seq`),
  INDEX `fk_contact_infra_member1_idx` (`infra_member_seq` ASC) VISIBLE,
  CONSTRAINT `fk_contact_infra_member1`
    FOREIGN KEY (`infra_member_seq`)
    REFERENCES `infra_member` (`seq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
);

CREATE TABLE IF NOT EXISTS `infra_fax` (
  `seq` INT UNSIGNED NOT NULL,
  `fax` INT NOT NULL,
  `fax_type_cd` INT NOT NULL,
  `default_fax_cd` INT NOT NULL,
  `infra_member_seq` INT UNSIGNED NOT NULL,
  INDEX `fk_infra_fax_infra_member1_idx` (`infra_member_seq` ASC, `seq` ASC) VISIBLE,
  PRIMARY KEY (`seq`),
  CONSTRAINT `fk_infra_fax_infra_member1`
    FOREIGN KEY (`infra_member_seq` , `seq`)
    REFERENCES `infra_member` (`seq` , `id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
);

insert into table 