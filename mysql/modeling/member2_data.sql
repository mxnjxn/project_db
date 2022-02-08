INSERT INTO `nct`.`infrcodegroup`
(
`ifcgName`,
`ifcgUseNy`,
`ifcgOrder`,
`DelNy`,
`regDateTime`,
`regDateTimeSvr`,
`modDateTime`,
`modDateTimeSvr`)
VALUES
(
'회원 보안 질문, 구분',
1,
14,
0,
now(),
now(),
now(),
now()
);

truncate infrcodegroup;
select * from infrcodegroup;
DELETE FROM `nct`.`infrcodegroup` WHERE (`ifcgseq` = '7');
UPDATE `nct`.`infrcodegroup` SET `ifcgseq` = '7', `ifcgName` = '회원 전화. 구분', `ifcgOrder` = '7' WHERE (`ifcgseq` = '8');
UPDATE `nct`.`infrcodegroup` SET `ifcgseq` = '8', `ifcgName` = '회원 전화. 장비', `ifcgOrder` = '8' WHERE (`ifcgseq` = '9');
UPDATE `nct`.`infrcodegroup` SET `ifcgseq` = '9', `ifcgSeqAnother` = '', `ifcgName` = '회원 전화. 통신사', `ifcgOrder` = '9' WHERE (`ifcgseq` = '10');
UPDATE `nct`.`infrcodegroup` SET `ifcgseq` = '10', `ifcgName` = '회원 주소 온라인, 구분', `ifcgOrder` = '10' WHERE (`ifcgseq` = '11');
UPDATE `nct`.`infrcodegroup` SET `ifcgseq` = '11', `ifcgName` = '회원 주소 온라인. sns', `ifcgOrder` = '11' WHERE (`ifcgseq` = '12');
UPDATE `nct`.`infrcodegroup` SET `ifcgseq` = '12', `ifcgName` = '회원 취미, 구분', `ifcgOrder` = '12' WHERE (`ifcgseq` = '13');
UPDATE `nct`.`infrcodegroup` SET `ifcgseq` = '13', `ifcgName` = '회원 주소, 구분', `ifcgOrder` = '13' WHERE (`ifcgseq` = '14');
UPDATE `nct`.`infrcodegroup` SET `ifcgseq` = '14', `ifcgName` = '회원 보안 질문, 구분', `ifcgOrder` = '14' WHERE (`ifcgseq` = '15');
UPDATE `nct`.`infrcodegroup` SET `ifcgseq` = '', `ifcgName` = '', `ifcgUseNy` = '', `ifcgOrder` = '' WHERE (`ifcgseq` = '16');
UPDATE `nct`.`infrcodegroup` SET `ifcgName` = '회원 이메일 구분', `ifcgOrder` = '5' WHERE (`ifcgseq` = '5');
UPDATE `nct`.`infrcodegroup` SET `ifcgName` = '회원 이메일. 도메인', `ifcgOrder` = '6' WHERE (`ifcgseq` = '6');
UPDATE `nct`.`infrcodegroup` SET `ifcgOrder` = '4' WHERE (`ifcgseq` = '4');
DELETE FROM `nct`.`infrcodegroup` WHERE (`ifcgseq` = '7');
UPDATE `nct`.`infrcodegroup` SET `ifcgseq` = '7', `ifcgName` = '회원 전화. 구분', `ifcgOrder` = '7' WHERE (`ifcgseq` = '8');
UPDATE `nct`.`infrcodegroup` SET `ifcgseq` = '8', `ifcgName` = '회원 전화. 장비', `ifcgOrder` = '8' WHERE (`ifcgseq` = '9');
UPDATE `nct`.`infrcodegroup` SET `ifcgseq` = '9', `ifcgSeqAnother` = '', `ifcgName` = '회원 전화. 통신사', `ifcgOrder` = '9' WHERE (`ifcgseq` = '10');
UPDATE `nct`.`infrcodegroup` SET `ifcgseq` = '10', `ifcgName` = '회원 주소 온라인, 구분', `ifcgOrder` = '10' WHERE (`ifcgseq` = '11');
UPDATE `nct`.`infrcodegroup` SET `ifcgseq` = '11', `ifcgName` = '회원 주소 온라인. sns', `ifcgOrder` = '11' WHERE (`ifcgseq` = '12');
UPDATE `nct`.`infrcodegroup` SET `ifcgseq` = '12', `ifcgName` = '회원 취미, 구분', `ifcgOrder` = '12' WHERE (`ifcgseq` = '13');
UPDATE `nct`.`infrcodegroup` SET `ifcgseq` = '13', `ifcgName` = '회원 주소, 구분', `ifcgOrder` = '13' WHERE (`ifcgseq` = '14');
UPDATE `nct`.`infrcodegroup` SET `ifcgseq` = '14', `ifcgName` = '회원 보안 질문, 구분', `ifcgOrder` = '14' WHERE (`ifcgseq` = '15');
UPDATE `nct`.`infrcodegroup` SET `ifcgseq` = '', `ifcgName` = '', `ifcgUseNy` = '', `ifcgOrder` = '' WHERE (`ifcgseq` = '16');
UPDATE `nct`.`infrcodegroup` SET `ifcgName` = '회원 이메일 구분', `ifcgOrder` = '5' WHERE (`ifcgseq` = '5');
UPDATE `nct`.`infrcodegroup` SET `ifcgName` = '회원 이메일. 도메인', `ifcgOrder` = '6' WHERE (`ifcgseq` = '6');
UPDATE `nct`.`infrcodegroup` SET `ifcgOrder` = '4' WHERE (`ifcgseq` = '4');

select * from infrcodegroup;
UPDATE `nct`.`infrcodegroup` SET `ifcgOrder` = '4' WHERE (`ifcgseq` = '4');
UPDATE `nct`.`infrcodegroup` SET `ifcgseq` = '', `ifcgName` = '', `ifcgUseNy` = '', `ifcgOrder` = '' WHERE (`ifcgseq` = '16');
select * from infrcodegroup;

INSERT INTO `nct`.`infrcode`
(
`ifcdName`,
`ifcdUseNy`,
`ifcdOrder`,
`ifcdDelNy`,
`regDateTime`,
`regDateTimeSvr`,
`modDateTime`,
`modDateTimeSvr`,
`infrCodeGroup_ifcgseq`)
VALUES
(
"가보고 싶은 나라?",
1,
4,
0,
now(),
now(),
now(),
now(),
14);

select * from infrcode;

select
a.ifcgseq
,a.ifcgName
,b.ifcdseq
,b.ifcdName
,b.ifcdOrder
from infrcodegroup a
	left join infrcode b on b.infrCodeGroup_ifcgseq = a.ifcgseq
order by a.ifcgseq, b.ifcdOrder;

select 
a.ifcgseq
,a.ifcgName
,b.ifcdseq
,b.ifcdName
,b.ifcdOrder
from infrcodegroup a
	left join infrcode b on b.infrCodeGroup_ifcgseq = a.ifcgseq
order by a.ifcgseq, b.ifcdOrder;

