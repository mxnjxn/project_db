use world;

desc book3;
desc publisher;

CREATE TABLE `book3` (
  `no` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `publisher_cd` INT,
  PRIMARY KEY (`no`)
);

CREATE TABLE IF NOT EXISTS `publisher` (
  `no` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`no`)
);

insert into book3 (
	name
    ,publisher_cd
    ) values (
    '잘래'
    ,null
);
    
insert into publisher (
	name
    ) values (
    "princeton review"
    );

select * from book3;
select * from publisher;

-- 데이터 한개 이상 불러올때 는 무조건 join--
select
a.no
,a.name
,a.publisher_cd
,b.no 
,b.name
from book3 as a  -- master table
left join publisher as b on b.no = a.publisher_cd; -- on = where(update)  --slave --left: 데이터 없는거랑, master table   inner: 맞는 것만 보여줌 --
-- inner join publisher as b on b.no = a.publisher_cd;
-- 테이블 조인을 해야 되면 테이블 이름에 알리어스를 넣는다. (alias)

-- 하나 불러 올때는 쿼리문으로- 
select
	a.no
    ,a.name
    ,a.publisher_cd
    ,(select name from publisher where no = a.publisher_cd) -- publisher--> no
from book3 as a;

select
	a.no
    ,a.name
    ,a.publisher_cd
    ,(select name from publisher where no= a.publisher_cd) as publisher_name  -- as 는 영향을 끼치지 않는다/ 보여주는거-- 
from book3 as a;

select 
	a.no
    ,a.name
    ,a.publisher_cd
    ,getPublisherName -- 함수, function
from book3 as a;

