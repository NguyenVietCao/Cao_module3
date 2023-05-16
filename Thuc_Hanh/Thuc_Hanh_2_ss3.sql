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