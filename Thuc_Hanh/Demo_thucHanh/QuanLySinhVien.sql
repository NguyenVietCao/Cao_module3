create database QuanLySinhVien;
use QuanLySinhVien;
-- Bảng Class
create table Class(
ClassId int not null primary key auto_increment  ,
className varchar(60) not null,
StartDate Datetime not null,
Status bit
);
-- Bảng Student
create table Student(
StudentId int not null primary key auto_increment,
StudentName varchar(30) not null,
Address varchar(50),
Phone varchar(20),
Status bit,
ClassId int not null,
foreign key(ClassId)references class(classId)
);
-- Bảng subject
create table `subject`(
subId int not null primary key auto_increment,
SubName varchar(30) not null,
Credit tinyint not null default 1,
check (Credit >=1),
`Status` bit default 1
);
-- Bảng Mark
create table mark(
MarkId int not null primary key auto_increment,
SubId int not null unique,
foreign key (SubId)references `subject`(SubId),
StudentId int not null unique,
foreign key (StudentId)references student(studentId),
Mark float default 0,
--  check between( credit >=0 and credit <= 100)
 ExamTimes Tinyint default 1
);
-- Thêm lần lượt các bản ghi vào trong bảng Class như trong mô tả ở trên:
INSERT INTO Class
VALUES (1, 'A1', '2008-12-20', 1);
INSERT INTO Class
VALUES (2, 'A2', '2008-12-22', 1);
INSERT INTO Class
VALUES (3, 'B3', current_date, 0);

-- Thêm dữ liệu vào trong bảng Student bằng các câu lệnh insert into như sau:
INSERT INTO Student (StudentName, Address, Phone, Status, ClassId)
VALUES ('Hung', 'Ha Noi', '0912113113', 1, 1);
INSERT INTO Student (StudentName, Address, Status, ClassId)
VALUES ('Hoa', 'Hai phong', 1, 1);
INSERT INTO Student (StudentName, Address, Phone, Status, ClassId)
VALUES ('Manh', 'HCM', '0123123123', 0, 2);

-- Thêm dữ liệu nhanh vào trong bảng Subject:
INSERT INTO Subject
VALUES (1, 'CF', 5, 1),
       (2, 'C', 6, 1),
       (3, 'HDJ', 5, 1),
       (4, 'RDBMS', 10, 1);
       
       --  Thêm dữ liệu vào trong bảng Mark bằng câu lệnh insert into như sau:
       INSERT INTO Mark (SubId, StudentId, Mark, ExamTimes)
VALUES (1, 3, 8, 1),
       (3, 2, 10, 2),
       (2, 1, 12, 1);
       -- Sử dụng câu lệnh Select * và lấy dữ liệu học viên từ bảng Student để hiển thị danh sách tất cả các học viên như sau:
       SELECT *
FROM Student;
-- Để hiển thị danh sách học viên đang theo học cần phải sử dụng câu lệnh select ... from kèm theo where để xét điều kiện truy vấn như sau:
SELECT *
FROM Student
WHERE Status = true;
-- Sử dụng điều kiện where Credit < 10 và from Subject để lấy ra danh sách các môn học có thời gian học nhỏ hơn 10:
SELECT *
FROM Subject
WHERE Credit < 10;
-- Sử dụng câu lệnh Join và where để hiển thị danh sách học viên lớp A1
SELECT S.StudentId, S.StudentName, C.ClassName
FROM Student S join Class C on S.ClassId = C.ClassID;
-- Sử dụng câu lệnh Where C.ClassName ='A1' để hiển thị danh sách học viên lớp A1
SELECT S.StudentId, S.StudentName, C.ClassName
FROM Student S join Class C on S.ClassId = C.ClassID
WHERE C.ClassName = 'A1';
-- Hiển thị tất cả các điểm đang có của học viên
SELECT S.StudentId, S.StudentName, Sub.SubName, M.Mark
FROM Student S join Mark M on S.StudentId = M.StudentId join Subject Sub on M.SubId = Sub.SubId
-- Sử dụng câu lệnh Where để hiển thị điểm môn CF của các học viên
SELECT S.StudentId, S.StudentName, Sub.SubName, M.Mark
FROM Student S join Mark M on S.StudentId = M.StudentId join Subject Sub on M.SubId = Sub.SubId
WHERE Sub.SubName = 'CF';
--  Sử dụng hàm count để hiển thị số lượng sinh viên ở từng nơi
SELECT Address, COUNT(StudentId) AS 'Số lượng học viên'
FROM Student
GROUP BY Address;
-- Tính điểm trung bình các môn học của mỗi học viên bằng cách sử dụng hàm AVG
SELECT S.StudentId,S.StudentName, AVG(Mark)
FROM Student S join Mark M on S.StudentId = M.StudentId
GROUP BY S.StudentId, S.StudentName;
-- Đầu tiên hiển thị điểm trung bình các môn học của mỗi học viên
SELECT S.StudentId,S.StudentName, AVG(Mark)
FROM Student S join Mark M on S.StudentId = M.StudentId
GROUP BY S.StudentId, S.StudentName;
-- Sử dụng having để xét điều kiện điểm trung bình các môn học phải lớn hơn 15
SELECT S.StudentId,S.StudentName, AVG(Mark)
FROM Student S join Mark M on S.StudentId = M.StudentId
GROUP BY S.StudentId, S.StudentName
HAVING AVG(Mark) > 15;
-- Hiển thị danh sách điểm trung bình của các học viên
SELECT S.StudentId, S.StudentName, AVG(Mark)
FROM Student S join Mark M on S.StudentId = M.StudentId
GROUP BY S.StudentId, S.StudentName;
-- Sử dụng Having và All để tìm học viên có điểm trung bình lớn nhất
SELECT S.StudentId, S.StudentName, AVG(Mark)
FROM Student S join Mark M on S.StudentId = M.StudentId
GROUP BY S.StudentId, S.StudentName
HAVING AVG(Mark) >= ALL (SELECT AVG(Mark) FROM Mark GROUP BY Mark.StudentId);
-- Hiển thị tất cả các thông tin môn học (bảng subject) có credit lớn nhất.
select subject.subName ,max(`subject`.credit) as max_credit
from subject
group by subject.subId;
-- Hiển thị các thông tin môn học có điểm thi lớn nhất.
select subject.subName,Mark.mark
from subject,mark
where mark = (select max(mark) from mark);
-- Hiển thị các thông tin sinh viên và điểm trung bình của mỗi sinh viên, xếp hạng theo thứ tự điểm giảm dần
select student.studentName,mark,avg(mark)
from student
join mark on student.studentId = mark.studentId
group by student.studentId
order by mark desc;

