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
-- unique, primary, foreign key: 유일한 데이터
-- pk; primary key : 중복되는 데이터 불허 --> 여러개 만들 수 있음
-- nn: not null: null 값을 허용하지 않는다.(데이터 무조건 들어가야 한다)
-- uq: unique: 중복되는 데이터 불허(세로)
-- b: binary--> 0,1 (바이너리 파일 저장)
-- un: unsigned: 양수만 0~255 / (-128~0~127)
-- zerofill: 5.7 -> 00005.7 ---앞에 남은 자리에 0 채워줌
-- ai: auto increment; 자동 증가
-- g: auto increment 의 다른 형태alter

-- DDL: data definition language: db, table : 관리자, 선임
-- DML: data manipulation language : data ; 후임들
-- DCL: data control language: 접근 권한, 커밋/ 롤백, 개방자 , 시스템에 의존

-- insert, update, delete -> data 바로 영향 미침 -- > oracle 은 아님. mysql 은 커밋 까지 이뤄짐.

-- **** 테이블 수정 ****
-- 칼럼 추가
alter table test add tel varchar(50);
desc test;

-- 칼럼 삭제
alter table test drop tel;

-- 칼럼 이름 변경
alter table test change tel tele1 int;

-- 칼럼 타입 변경
alter table test modify tele1 int; 
-- desc test --> table 구조 보이는 명령어.

insert into test (
	name 
    ,tele1
    ) values (
    "Tony"
    ,1111
    
);
select * from test;
desc test;

-- 데이터 수정
update test set
	name = "Andrew"
    ,tel = "22"
where 1=1
	and seq= 2; 


-- 데이터 삭제
delete from test
where 1=1
	and seq=1;

-- 데이터 전체 삭제
truncate test;
