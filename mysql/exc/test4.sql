use world;

CREATE TABLE `book4` (
  `no` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  `publisher_cd` INT NULL,
  PRIMARY KEY (`no`)
);

CREATE TABLE `review` (
  `no` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `book4_no` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`no`),
  INDEX `fk_publisher_book4_idx` (`book4_no` ASC) VISIBLE,
  CONSTRAINT `fk_publisher_book4`
    FOREIGN KEY (`book4_no`)
    REFERENCES `book4` (`no`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
);

desc book4;

insert into book4 (
	name
    ,publisher_cd
    ) values (
    '잠이 온다'
    ,4
);

select * from book4;

desc review;

alter table review change name comment varchar(100);

insert into review (
	comment
    , book4_no -- foreign key -- 모든 키는 데이터가 들어와야 한다.
    ) values ( 
    'The book is to fun to read'
    ,6
);

select * from review;



