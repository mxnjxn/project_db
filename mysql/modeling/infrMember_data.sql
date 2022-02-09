
INSERT INTO `nct`.`infrmember`
(
`ifmmAdminNy`,
`ifmmDormancyNy`,
`ifmmName`,
`ifmmId`,
`ifmmPasssword`,
`ifmmPwdModDate`,
`ifmmGenderCd`,
`ifmmDob`,
`ifmmSavedCd`,
`ifmmMarriageCd`,
`ifmmMarriageDate`,
`ifmmChildrenNum`,
`ifmmFavoriteColor`,
`ifmmRecommenderSeq`,
`ifmmEmailConsentNy`,
`ifmmSmsConsentNy`,
`ifmmPushConsentNy`,
`ifmmDesc`,
`ifmmDelNy`,
`regDateTime`,
`regDateTimeSvr`,
`modDateTime`,
`modDateTimeSvr`)
VALUES
(
0,
0,
"강은숙",
"mixnjsn2033",
"HelloWorld!",
now(),
2,
"1972-12-25",
2,
1,
Null,
0,
'보라색',
0,
1,
1,
1,
"관리자 계정입니다.",
0,
now(),
now(),
now(),
now());

select * from infrmember;

INSERT INTO `nct`.`infrmember` ( `ifmmAdminNy`, `ifmmDormancyNy`, `ifmmName`, `ifmmId`, `ifmmPasssword`, `ifmmPwdModDate`, `ifmmGenderCd`, `ifmmDob`, `ifmmSavedCd`, `ifmmMarriageCd`, `ifmmMarriageDate`, `ifmmChildrenNum`, `ifmmFavoriteColor`, `ifmmRecommenderSeq`, `ifmmEmailConsentNy`, `ifmmSmsConsentNy`, `ifmmPushConsentNy`, `ifmmDesc`, `ifmmDelNy`, `regDateTime`, `regDateTimeSvr`, `modDateTime`, `modDateTimeSvr`) VALUES ( 1, 0, "최민준", "herry2015", "234djdjfadc", now(), 1, 2003-10-03, 3, 1, "", 0, '보라색', "", 1, 1, 1, "관리자 계정입니다.", 0, now(), now(), now(), now())
