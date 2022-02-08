INSERT INTO `nct`.`infrnationality`
(
`ifnaName`,
`ifnaCode2Char`,
`ifnaCode3char`,
`ifnaUseNy`,
`ifnaOrder`,
`ifnaDelNy`,
`regDateTime`,
`regDateTimeSvr`,
`ModDateTime`,
`ModDateTimeSvr`)
VALUES
(
"한국"
,"kr"
,"kor"
,1
,1
,0
,now()
,now()
,now()
,now()
);

select * from infrnationality;
