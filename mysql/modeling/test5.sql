use world;

CREATE TABLE IF NOT EXISTS `codeGroup` (
  `seq` VARCHAR(50) NOT NULL,
  `name` VARCHAR(45) NULL,
  PRIMARY KEY (`seq`)
);

CREATE TABLE IF NOT EXISTS `code` (
  `code` VARCHAR(50) NOT NULL,
  `name` VARCHAR(45) NULL,
  `codeGroup_seq` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`code`, `codeGroup_seq`),
  INDEX `fk_code_codeGroup1_idx` (`codeGroup_seq` ASC) VISIBLE,
  CONSTRAINT `fk_code_codeGroup1`
    FOREIGN KEY (`codeGroup_seq`)
    REFERENCES `codeGroup` (`seq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
);

insert into codeGroup (
	seq
    ,name 
    ) values (
    'infra002'
    ,'통신사'
);

select * from codeGroup;
select * from code;

insert into code(
	code
    ,name
    ,codeGroup_seq
    ) values (
    '3'
    ,'u+'
    ,'infra002'
);

select
	a.seq
    ,a.name
    ,b.code
    ,b.name
    ,b.codeGroup_seq
from codeGroup a
left join code b on b.codeGroup_seq = a.seq
