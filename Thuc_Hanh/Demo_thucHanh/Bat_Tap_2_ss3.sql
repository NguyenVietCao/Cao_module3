create database if not exists quan_ly_ban_hang;
use quan_ly_ban_hang;
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
-- --Hiển thị các thông tin  gồm oID, oDate, oPrice của tất cả các hóa đơn trong bảng Order;
select oID, oDate
from `order`;

-- Hiển thị danh sách các khách hàng đã mua hàng, và danh sách sản phẩm được mua bởi các khách
select customer.cName,customer.cAge,`order`.oDate,OrderDetail.odQTY,product.pName,product.pPrice
from customer
join `order` on `order`.cId = customer.cId
join OrderDetail on `order`.oId = OrderDetail.oId
join product on product.pId = OrderDetail.pId;

-- Hiển thị tên những khách hàng không mua bất kỳ một sản phẩm nào
select Customer.cId,customer.cName,customer.cAge,`order`.oId,`order`.oDate
from customer
left join `order` on `order`.cId = customer.cId
where `order`.cId   is null; 

-- Hiển thị mã hóa đơn, ngày bán và giá tiền của từng hóa đơn 
-- (giá một hóa đơn được tính bằng tổng giá bán của từng loại mặt hàng xuất hiện trong hóa đơn.
-- Giá bán của từng loại được tính = odQTY*pPrice)
select `order`.oId,`order`.oDate, sum(orderDetail.odQTY * product.pPrice)
from `order`
join orderDetail on orderDetail.oId = `order`.oId
join product on product.pId = orderDetail.pId
group by `order`.oId


