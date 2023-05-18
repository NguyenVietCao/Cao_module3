create database demo;
use demo;
create table product(
Id int primary key auto_increment,
productCode int,
productName varchar(45),
productPrice int,
productAmount int,
productDescription varchar(45),
productStatus bit
);
-- Tạo Unique Index trên bảng Products (sử dụng cột productCode để tạo chỉ mục)
create unique index index_product on product(productCode);
-- Tạo Composite Index trên bảng Products (sử dụng 2 cột productName và productPrice)
create unique index index_product_composite on product(productName,productCode);
-- Sử dụng câu lệnh EXPLAIN để biết được câu lệnh SQL của bạn thực thi như nào
explain select * from product;

-- Tạo view lấy về các thông tin: productCode, productName, productPrice, productStatus từ bảng products.
create view product_view as
select productCode, productName, productPrice, productStatus
from product;
  select * from product_view;
  -- Sửa đổi view
  create or replace view product_view as
  select productCode, productName, productPrice, productStatus
  from product;
  -- Xoá view
  drop view product_view;
  
  -- Tạo store procedure lấy tất cả thông tin của tất cả các sản phẩm trong bảng product
  
delimiter //
create procedure findAllProduct()
begin 
select * from product;
end //
delimiter ;

-- Tạo store procedure thêm một sản phẩm mới
delimiter //
create procedure addNewProduct(
in p_productCode int,
in p_productName varchar(45),
in p_productPrice int,
in p_productAmount int,
in p_productDescription int,
in p_productStatus int)
begin
insert into Product(productCode,
productName,
productPrice,
productAmount,
productDescription,
productStatus)
value(p_productCode,p_productName,p_productPrice,p_productAmount,p_productDescription,p_productStatus);
end //
delimiter ;
