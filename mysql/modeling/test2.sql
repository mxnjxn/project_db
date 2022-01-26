CREATE TABLE `test2` (
  `seq` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `seq2` INT NOT NULL,
  `seq3` INT NOT NULL,
  `name` INT NOT NULL,
  PRIMARY KEY (`seq`)
);

-- seq seq2 seq3 다 같을 때만 안들어감--
insert into test2 (
	seq2
    ,seq3
    ,name
    ) values (
    1
    ,3
    ,2
);

select * from test2;
