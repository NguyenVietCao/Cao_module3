SELECT * FROM QuanLyDiemThi.HocSinh;
create table student(
StudentId int primary key auto_increment,
StudentName varchar(45),
Address varchar(45),
Phone int,
`Status` int,
ClassId int,
foreign key(ClassId)references Class(ClassId)
);
INSERT INTO Student (StudentName, Address, Phone, Status, ClassId)
VALUES ('Hung', 'Ha Noi', '0912113113', 1, 1);
INSERT INTO Student (StudentName, Address, Status, ClassId)
VALUES ('Hoa', 'Hai phong', 1, 1);
INSERT INTO Student (StudentName, Address, Phone, Status, ClassId)
VALUES ('Manh', 'HCM', '0123123123', 0, 2);
create table `subject`(
SubId int primary key auto_increment,
SubName varchar(45),
Credit int,
`Status` varchar(45)
);
INSERT INTO Subject
VALUES (1, 'CF', 5, 1),
       (2, 'C', 6, 1),
       (3, 'HDJ', 5, 1),
       (4, 'RDBMS', 10, 1);
       create table Mark(
       MarkId int primary key auto_increment,
       SubId int,
       foreign key (SubId)references Subject(SubId),
       StudentId int,
       foreign key (StudentId)references Student(StudentId),
       Mark int ,
       ExamTime int
       );
       INSERT INTO Mark (SubId, StudentId, Mark, ExamTime)
VALUES (1, 1, 8, 1),
       (1, 2, 10, 2),
       (2, 1, 12, 1);
       create table 