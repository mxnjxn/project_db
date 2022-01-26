use world;

CREATE TABLE IF NOT EXISTS `book6` (
  `no` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`no`)
);

CREATE TABLE IF NOT EXISTS `review6` (
  `no` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `comment` VARCHAR(100) NOT NULL,
  `book6_no` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`no`, `book6_no`),
  INDEX `fk_review5_copy1_copy1_book61_idx` (`book6_no` ASC) VISIBLE,
  CONSTRAINT `fk_review5_copy1_copy1_book61`
    FOREIGN KEY (`book6_no`)
    REFERENCES `book6` (`no`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
);
	
desc book6;
    
insert into book6 (
	name
	) values ( 
    "sdfsd"
);

select * from book6;

insert into review6 (
	comment
    ,book6_no
    ) values (
    'The book is fucking fun to read' 
    ,6
);

select * from review6;

-- 점선: nonidetifying: 부모자식 관계 : 개발하기 좀 불편하다
-- 실선: identififying: ??? : 개발 용이성 높다.

desc review6;

select
a.name
,(select count(no) from review6 where book6_no = a.no) as count
from book6 a
;

select 
a.no
,a.name
,b.no
,b.comment
from book6 a
left join review6 b on b.book6_no = a.no
-- inner join review6 b on b.book6_no = a.no
;
