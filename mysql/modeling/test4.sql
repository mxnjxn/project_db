use world;

CREATE TABLE IF NOT EXISTS `book7` (
  `no` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`no`)
);

CREATE TABLE IF NOT EXISTS `writer` (
  `no` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `comment` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`no`)
);

CREATE TABLE IF NOT EXISTS `book7_writer` (
  `no` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `comment` VARCHAR(100) NOT NULL,
  `book7_no` INT UNSIGNED NOT NULL,
  `writer_no` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`no`),
  INDEX `fk_book7_writer_book71_idx` (`book7_no` ASC) VISIBLE,
  INDEX `fk_book7_writer_writer1_idx` (`writer_no` ASC) VISIBLE,
  CONSTRAINT `fk_book7_writer_book71`
    FOREIGN KEY (`book7_no`)
    REFERENCES `book7` (`no`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_book7_writer_writer1`
    FOREIGN KEY (`writer_no`)
    REFERENCES `writer` (`no`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
);

insert into book7 (
	name
	) values (
	'잠이 온다 '
);

desc book7;
select * from book7;

alter table writer change comment name varchar(50);
desc writer;

insert into writer (
	name
    ) values (
    '안젤리나 존슨'
);

select * from writer;

alter table book7_writer drop comment;
desc book7_writer; 

insert into book7_writer (
	book7_no
    ,writer_no
    ) values (
    3
    ,3
);

select 
a.no
,a.name
,b.book7_no
,b.writer_no
,c.no
,c.name 
from book7 a -- master table
left join book7_writer b on b.book7_no = a.no
left join writer c on c.no = b.writer_no
;