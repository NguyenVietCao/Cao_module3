create database Bai_Tap_2_ss2;
use Bai_Tap_2_ss2;
create table Customer(
cID int primary key ,
cName varchar(45),
cAge varchar(45)
);
create table Oder(
oID int primary key ,
cID int,
foreign key (cID)references Customer(cID),
oDate datetime,
oTotalPrice int
);
create table product(
pID int primary key,
pName varchar(45),
pPrice varchar(45)
);
create table OrderDetail(
pID int,
oID int,
primary key(pID,oID),
foreign key (pID)references product(pID),
foreign key (oID)references Oder(oID)
);