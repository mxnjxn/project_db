use world;

show tables;


create table member (
	seq int, 
    name varchar(100),
    id varchar(100),
    regdate datetime
);

create table member2 (
	seq int, 
    name varchar(100),
    id varchar(100),
    regdate datetime
);

drop table member2;
drop table member;