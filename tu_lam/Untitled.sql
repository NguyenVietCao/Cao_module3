create database tu_lam;
create table Product(
id int primary key auto_increment,
productName varchar(50),
productPrice varchar(50),
productDescription varchar(50),
productImage varchar(50) 
);
insert into Product(productName,productPrice,productDescription,productImage)
value("white coffee",12000,"cà phê sữa","a"),
("black coffee",15000,"cà phê đen","b")

