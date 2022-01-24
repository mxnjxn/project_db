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

create table caffee (
	seq int,
    caffee_name varchar(100),
    number_table int,
    number_chair int,
    address varchar(100),
    region int,
    chief_name varchar(100)
);

-- table delete
drop table member2;
drop table member;

-- data insert
insert into caffee (
	seq
	,caffee_name
	,number_table
	,number_chair
	,address
	,region
	,chief_name 
) values (
	1
    ,'별다방'
    ,1
    ,2
    ,'서울시 어디쯤'
    ,1
    ,'장동건'
);
-- varchar 는 ' 나 " 로 감싼다
-- int 는 사용 안해도 된다
-- 컴마는 앞쪽을 선호a

-- data inquiry
select * from caffee;

select * from caffee where number_table=9;

select * from caffee where caffee_name='버거킹';

select * from caffee where caffee_name= "멕도날드" and number_chair= 43 and number_table = 9;

select * from caffee where caffee_name= "이디야" or number_chair= 43;

-- int 형태에만 해당된다sss
select * from caffee where region > 4;
select * from caffee where region < 4;
select * from caffee where region >=4;
select * from caffee where region <=4;
select * from caffee where region <> 4;


-- varchar 형태메만 해당된다.
select * from caffee where caffee_name like '%디%';
select * from caffee where caffee_name like '롯데리%';
select * from caffee where caffee_name like '%데리아';
-- pk 값에는 같은 값이 들어갈 수 없음.