create database thuc_hanh;
use thuc_hanh;
create table don_dat_hang(
STT int primary key auto_increment,
`Số đơn hàng (Số ĐH)` int,
`Tên đơn vị đặt hàng (Tên ĐV)`varchar(45),
`Địa chỉ` varchar(45),
`Điện thoại` int,
`Ngày đặt`date,
`Tên hàng` varchar(45),
`Mô tả`varchar(45),
`Đơn vị tính (Đv tính)` varchar(45),
`Số lượng` int,
`Người đặt hàng (Họ tên NĐ)` varchar(45)
);

create table phieu_giao_hang(
STT int primary key auto_increment,
`Số phiếu giao hàng (Số PG)`int,
`Tên đơn vị đặt hàng (Tên ĐV)` varchar(45),
`Địa chỉ` varchar(45),
`Nơi giao hàng (Tên nơi GH)` varchar(45),
`Ngày giao` date,
`Tên hàng` varchar(45),
`Đơn vị tính (Đv tính)`varchar(45),
`Số lượng`int,
`Đơn giá`int,
`Thành tiền`int,
`Tên người nhận (Họ tên NN)` varchar(45),
`Tên người giao (Họ tên NG)`varchar(45)
);
create table don_vi_dh(
`Mã ĐV` int primary key auto_increment,
`Tên ĐV` varchar(45),
`Địa chỉ` varchar(45),
`Điện thoại`int
);
create table don_vi_kh(
`Mã ĐV` int primary key auto_increment,
`Tên ĐV` varchar(45),
`Địa chỉ`varchar(45),
`Điện thoại`int
);
create table hang(
`Mã hàng` int primary key auto_increment,
`Tên hàng` varchar(45),
`Đv tính` varchar(45),
`Mô tả hàng` varchar(45)
);
create table nguoi_dat(
`Mã số NĐ` int primary key auto_increment,
`Họ tên NĐ`varchar(45)
);
create table noi_giao(
`Mã số ĐĐG` int primary key auto_increment,
`Tên nơi giao` varchar(45)
);
create table nguoi_nhan(
`Mã số NN` int primary key auto_increment,
`Họ tên NN` varchar(45)
);
create table nguoi_giao(
`Mã số NG`int primary key auto_increment,
`Họ tên NG` varchar(45)
);
