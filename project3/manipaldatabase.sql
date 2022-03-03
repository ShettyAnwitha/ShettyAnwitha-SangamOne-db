create schema manipal;
use manipal;
create table institution(insid varchar(20) primary key,insname varchar(20)) ;
desc institution;
insert into institution values('M1','HealthScience');
insert into institution values('E1','Engineering');
insert into institution values('I1','ITandsoftware');
insert into institution values('N1','Nursing');
insert into institution values('A1','Aviation');
Create table courses(courseid varchar(20)primary key, instutid varchar(20),foreign key(instutid) references institution(insid),coursename varchar(50), noofyears bigint);
Insert into courses values('c101','M1','BPharm',4);
Insert into courses values('c102','M1','MPharm',2);
Insert into courses values('c103','M1','MSC',2);

Insert into courses values('E101','E1','BE',4);
Insert into courses values('E102','E1','BTECH',4);
Insert into courses values('E103','E1','MTECH',2);

Insert into courses values('I101','I1','BTechinCS',4);
Insert into courses values('I102','I1','BHM',3);
Insert into courses values('I103','I1','MCA',2);

Insert into courses values('N101','N1','BSC',3);
Insert into courses values('N102','N1','MSC',2);
Insert into courses values('N103','N1','Diploma',3);

Insert into courses values('A101','A1','Aeronautics',4);
Insert into courses values('A102','A1','AME',5);
Insert into courses values('A103','A1','Aircraft',4);

select * from institution;
select * from courses;

Create table students(rollno varchar(10) primary key,firstname varchar(30),lastname varchar(30), gender varchar(1), corsid varchar(20), foreign key(corsid) references courses(courseid)ON DELETE SET NULL, yearofadm bigint, clgid varchar(20), univid bigint);
insert into students values('S101','Shinmitha' ,'Bhat', 'F','c101',2018,'I333',7899);
insert into students values('S102','Ankith' ,'Rao', 'M','A101',2017,'I567',8745);
insert into students values('S103','Prajwal' ,'Rao', 'M','E103',2021,'I657',9645);
insert into students values('S104','Aditya' ,'Rao', 'M','N103',2015,'I523',5672);
insert into students values('S104','Pradeep' ,'Rao', 'M','I103',2020,'I675',8745);
insert into students values('S105','Suresh' ,'Rao', 'M','E102',2021,'I678',4325);
insert into students values('S106','Pradeep' ,'Rao', 'M','I103',2020,'I675',8745);
insert into students values('S107','Deepthi' ,'Shetty', 'F','A102',2016,'I612',3489);
insert into students values('S108','Nadira' ,'Sheikh', 'F','E101',2019,'I456',2678);
insert into students values('S109','Anu' ,'Bhat', 'F','N102',2021,'I789',4567);

select * from students;
select * from students where lastname="Rao" and Gender='M';
select * from students where Gender='F' and corsid="c101" and yearofadm='2018';

