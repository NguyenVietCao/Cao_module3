create database student_manager;
 use student_manager;
 create table Student(
 id int primary key auto_increment,
 `name` varchar(45),
 age int,
 country varchar(45)
 );
 select * from Student;
 insert into Student(`name`,age,country)
 value ("hung",1,"viet nam");
 insert into Student (`name`,age,country)
 value ("Nguyen Viet Cao",35,"Viet Nam");
 insert into Student (`name`,age,country)
 value ("Chanh",36,"Viet Nam");
 create table class(
 id int primary key auto_increment,
 `name` varchar(45)
 );
 create table teacher(
 id int primary key auto_increment,
 `name` varchar(45),
 age int ,
 country varchar(45)
 );

