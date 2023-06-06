select* 
from Student;
select *
from student
where status = true;
select *
from suBject
where Credit < 10;
SELECT S.StudentId, S.StudentName, C.ClassName
FROM Student S join Class C on S.ClassId = C.ClassID;
SELECT S.StudentId, S.StudentName, C.ClassName
FROM Student S join Class C on S.ClassId = C.ClassID
WHERE C.ClassName = 'A1';
SELECT S.StudentId, S.StudentName, Sub.SubName, M.Mark
FROM Student S join Mark M on S.StudentId = M.StudentId join Subject Sub on M.SubId = Sub.SubId;
SELECT S.StudentId, S.StudentName, Sub.SubName, M.Mark
FROM Student S join Mark M on S.StudentId = M.StudentId join Subject Sub on M.SubId = Sub.SubId
WHERE Sub.SubName = 'CF';

select StudentName 
from student
where studentName like 'H%';

select StartDate
from Class
where month(StartDate) = 12;

select credit 
from subject
where credit >= 3 and credit <= 5;

SET SQL_SAFE_UPDATES = 0;
update student
set classId = 2
where student.studentName = 'Hung';
SET SQL_SAFE_UPDATES = 1;

select StudentName, SubName,Mark
from student, subject,mark
order by Mark DESC , SubName ASC;

create table Customer(
cId int primary key auto_increment,
cName varchar(25),
cAge tinyint
);
insert into Customer(cName,cAge)
value ("Minh Quan",10),
("Ngoc Oanh",20),
("Hong Ha",50);
create table `Order`(
oID int primary key auto_increment,
cID int ,
foreign key (cId)references customer(cId),
oDate datetime,
oTaltlePrime int
);
insert into `order`(cID,oDate,oTaltlePrime)
value (1,"2006-03-21",null),
(2,"2006-03-23",null),
(1,"2006-03-16",null);
create table product(
pId int primary key auto_increment,
pName varchar(45),
pPrice int
);
insert into product(pName,pPrice)
value ("May Giat",3),
("Tu Lanh",5),
("Dieu Hoa",7),
("Quat",1),
("Bep Dien",2);
create table OrderDetail(
oId int,
foreign key(oId)references `order`(oID),
pId int,
foreign key(pId)references product(pId),
odQTY int
);

insert into OrderDetail(oID,pId,odQTY)
value (1,1,3),
(1,3,7),
(1,4,2),
(2,1,1),
(3,1,8),
(2,5,4),
(2,3,3);
select * from product;
select * from `Order`;