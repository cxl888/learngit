use  jobs ;
drop table if exists user;
create table user(
userId Varchar(64),
userName Varchar(64),
Password Varchar(64),
role	Varchar(64),
Status Varchar(12)
);
insert into user values("1000","张光伟","123","admin","1");

insert into user values('1001','李静','123','tea','1');
insert into user values('1002','梦灵','123','tea','1');
insert into user values('20131112111','徐国梁','123','stu','1');
insert into user values('20131112112','马凤亚','123','stu','1');
insert into user values('20131112113','张磊','123','stu','1');
insert into user values('20131112114','于克磊','123','stu','1');
insert into user values('20131112115','芳芳姐','123','stu','1');
insert into user values('20131112116','夏文平','123','stu','1');
insert into user values('20131112117','郭巍','123','stu','1');
insert into user values('20131112118','葛广飞','123','stu','1');
insert into user values('20131112119','宋雪飞','123','stu','1');
use  jobs ;
drop table if exists student;
create table student(
stuId 	Varchar(64),
stuName	Varchar(64),
Classid	Varchar(64),
eStatus	Varchar(32),
Teacherid	Varchar(64),
ExeCompany	Varchar(64),
Note	Varchar(500),
phone	Varchar(32),
Email	Varchar(32),
qq	Varchar(32)
);
insert into student values('20131112110','孙悟空','机械123','1','1001','易途','女的','18366185836','1213143830@qq.com','1213143830');
insert into student values('20131112111','徐国梁','机械123','1','1001','易途','女的','18366185836','1213143830@qq.com','1213143830');
insert into student values('20131112112','马凤亚','机械123','1','1001','易途','女的','18366185836','1213143830@qq.com','1213143830');
insert into student values('20131112113','张磊','机械123','1','1001','易途','女的','18366185836','1213143830@qq.com','1213143830');
insert into student values('20131112114','于克磊','机械123','1','1001','易途','女的','18366185836','1213143830@qq.com','1213143830');
insert into student values('20131112115','芳芳姐','机械123','1','1001','易途','女的','18366185836','1213143830@qq.com','1213143830');
insert into student values('20131112116','夏文平','机械123','1','1001','易途','女的','18366185836','1213143830@qq.com','1213143830');
insert into student values('20131112117','郭巍','机械123','1','1001','易途','女的','18366185836','1213143830@qq.com','1213143830');
insert into student values('20131112118','葛广飞','机械123','1','1001','易途','女的','18366185836','1213143830@qq.com','1213143830');
insert into student values('20131112119','宋雪飞','机械123','1','1001','易途','女的','18366185836','1213143830@qq.com','1213143830');
use  jobs ;
drop table if exists TrainTask;
create table TrainTask(
Trainid	Varchar(64),
title	Varchar(200),
Content	Varchar(1000),
TStep	Varchar(1000),
status	Varchar(64),
TeaId	Varchar(64),
stuId	Varchar(64)
);


use  jobs ;
drop table if exists Journal;
create table Journal(
stuId 	Varchar(64),
jId	Varchar(64),
week	Varchar(32),
status	Varchar(64),
CreateDate	datetime,
workContent	Varchar(1000),
 SupportAdvice	Varchar(1000),
NextWork	Varchar(1000),
TeaDeal	Varchar(1000)
);



