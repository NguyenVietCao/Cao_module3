create database Bai_Tap_1_ss2;
use Bai_Tap_1_ss2;
create table phieu_xuat(
SoPX int primary key,
NgayXuat datetime
);
create table chi_tiet_phieu_xuat(
DGxuat int,
SLxuat int,
SoPX int,
MaVTU varchar(45),
primary key(SoPX,MaVTU),
foreign key (SoPX)references phieu_xuat(SoPX),
foreign key (MaVTU)references vat_tu(MaVTU) 
);
create table vat_tu(
MaVTU varchar(45)primary key,
TenVTU varchar(45)
);
create table chi_tiet_phieu_nhap(
DGnhap int,
SLnhap int,
MaVTU varchar(45),
SoPN int,
primary key(MaVTU,SoPN),
foreign key (MaVTU)references vat_tu(MaVTU),
foreign key(SoPN)references phieu_nhap(SoPN)
);
create table phieu_nhap(
SoPN int primary key ,
NgayNhap datetime
);
create table chi_tiet_don_dat_hang(
MaVTU varchar(45),
SoDH int,
primary key(MaVTU,SoDH),
foreign key (MaVTU)references vat_tu(MaVTU),
foreign key (SoDH)references don_dat_hang(SoDH)
);
create table don_dat_hang(
SoDH int primary key,
NgayDH datetime,
MaNCC varchar(45),
foreign key(MaNCC)references NhaCC(MaNCC)
);

create table NhaCC(
MaNCC varchar(45) primary key,
TenNCC varchar(45),
DiaChi varchar(45)
);
create table SDT(
sdt int primary key,
MaNCC varchar(45),
foreign key (MaNCC)references NhaCC(MaNCC)
);