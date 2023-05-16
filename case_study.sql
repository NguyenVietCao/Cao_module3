create database case_study;
use case_study;
create table vi_tri(
ma_vi_tri int primary key auto_increment,
ten_vi_tri varchar(45)
);
create table trinh_do(
ma_trinh_do int primary key auto_increment,
ten_trinh_do varchar(45));
create table bo_phan (
ma_bo_phan int primary key auto_increment,
ten_bo_phan varchar(45)
);
create table nhan_vien(
ma_nhan_vien int primary key auto_increment,
ho_ten varchar(45),
ngay_sinh DATE,
so_cmnd varchar(45),
luong double,
so_dien_thoai varchar(45),
email varchar(45),
dia_chi varchar(45),
ma_vi_tri int,
foreign key(ma_vi_tri)references vi_tri(ma_vi_tri),
ma_trinh_do int,
foreign key (ma_trinh_do) references trinh_do(ma_trinh_do),
ma_bo_phan int,
foreign key (ma_bo_phan) references bo_phan(ma_bo_phan)
) ;
create table loai_khach(
ma_loai_khach int primary key auto_increment,
ten_loai_khach varchar(45)
);
create table khach_hang(
ma_khach_hang int primary key auto_increment,
ma_loai_khach int,
foreign key(ma_loai_khach)references loai_khach(ma_loai_khach),
ho_ten varchar(45),
ngay_sinh date,
gioi_tinh bit(1),
so_cmnd varchar(45),
so_dien_thoai varchar(45),
email varchar(45),
dia_chi varchar(45) 
);
create table dich_vu_di_kem(
ma_dich_vu_di_kem int primary key auto_increment,
ten_dich_vu_di_kem varchar(45),
gia double,
don_vi varchar(45),
trang_thai varchar(45)
);
create table kieu_thue(
ma_kieu_thue int primary key auto_increment,
ten_kieu_thue varchar(45)
);
create table loai_dich_vu(
ma_loai_dich_vu int primary key auto_increment,
ten_loai_dich_vu varchar(45)
);
create table dich_vu(
ma_dich_vu int primary key auto_increment,
ten_dich_vu varchar(45),
dien_tich int,
chi_phi_thue double,
so_nguoi_toi_da int,
ma_kieu_thue int,
foreign key(ma_kieu_thue)references kieu_thue(ma_kieu_thue),
ma_loai_dich_vu int,
foreign key(ma_loai_dich_vu)references loai_dich_vu(ma_loai_dich_vu),
tieu_chuan_phong varchar(45),
mo_ta_tien_mghi_khac varchar(45),
dien_tich_ho_boi double,
so_tang int
);
create table hop_dong(
ma_hop_dong int primary key auto_increment,
ngay_lam_hop_dong datetime,
ngay_ket_thuc datetime,
tien_dat_coc double,
ma_nhan_vien int,
foreign key(ma_nhan_vien) references nhan_vien(ma_nhan_vien),
ma_khach_hang int,
foreign key(ma_khach_hang)references khach_hang(ma_khach_hang),
ma_dich_vu int,
foreign key(ma_dich_vu)references dich_vu(ma_dich_vu)
);
create table hop_dong_chi_tiet(
ma_hop_dong_chi_tiet int primary key auto_increment,
ma_hop_dong int,
foreign key(ma_hop_dong)references hop_dong(ma_hop_dong),
ma_dich_vu_di_kem int,
foreign key(ma_dich_vu_di_kem)references dich_vu_di_kem(ma_dich_vu_di_kem),
so_luong int
);
insert into vi_tri(ten_vi_tri)
values("Lễ tân"), ("phục vụ"), ("chuyên viên"), ("giám sát"), ("quản lý"), ("giá đốc");
insert into trinh_do(ten_trinh_do)
values ("Trung cấp"), ("Cao đẳng"), ("Đại học"), ("sau đại học");
insert into loai_khach(ten_loai_khach)
values ("Diamond"), ("Platinium"), ("Gold"), ("Silver"), ("Member");
insert into bo_phan(ten_bo_phan)
values ("Sale") ,( "Marketing"), ("Hành Chính"),( "Phục vụ"), ("Quản lý");
insert into dich_vu_di_kem(ten_dich_vu_di_kem)
value ("massage"),( "karaoke"), ("thức ăn"), ("nước uống"), ("thuê xe di chuyển tham quan resort");
insert into dich_vu(ten_dich_vu)
value("Villa"),( "House"), ("Room");
insert into nhan_vien(ho_ten,	ngay_sinh,	so_cmnd,	luong,	so_dien_thoai,	email,	dia_chi,	ma_vi_tri,	ma_trinh_do,	ma_bo_phan	)
value 											
		
	("Nguyễn Văn An",	"1970-11-07",	456231786,	10000000,	0901234121,	"annguyen@gmail.com",	"295 Nguyễn Tất Thành, Đà Nẵng"	,1,	3,	1	),
	("Lê Văn Bình",	"1997-04-09",	654231234,	7000000,	0934212314,	"binhlv@gmail.com"	,"22 Yên Bái, Đà Nẵng"	,1,	2,	2	),
	("Hồ Thị Yến",	"1995-12-12",	999231723,	14000000,	0412352315,	"thiyen@gmail.com"	,"K234/11 Điện Biên Phủ Gia Lai",	1,	3,	2	),
	("Võ Công Toản",	"1980-04-04",	123231365,	17000000	,0374443232,	"toan0404@gmail.com",	"77 Hoàng Diệu Quảng Trị",	1,	4,	4	),
	("Nguyễn Bỉnh Phát",	"1999-12-09",	454363232,	6000000,	0902341231,	"phatphat@gmail.com",	"43 Yên Bái, Đà Nẵng",	2,	1,	1	),
	("Khúc Nguyễn An Nghi",	"2000-11-08",	964542311,	7000000,	0978653213,	"annghi20@gmail.com",	"294 Nguyễn Tất Thành, Đà Nẵng",	2,	2,	3),	
	("Nguyễn Hữu Hà",	"1993-01-01",	534323231,	8000000,	0941234553,	"nhh0101@gmail.com",	"4 Nguyễn Chí Thanh, Huế",	2,	3	,2	),
	("Nguyễn Hà Đông",	"1989-09-03",	234414123	,9000000	,0642123111,	"donghanguyen@gmail.com",	"111 Hùng Vương, Hà Nội",	2,	4,	4),	
	("Tòng Hoang",	"1982-09-03",	256781231,	6000000,	0245144444,	"hoangtong@gmail.com",	"213 Hàm Nghi, Đà Nẵng"	,2,	4,	4	),
	("Nguyễn Công Đạo",	"1994-01-08",	755434343	,8000000,	0988767111,	"nguyencongdao12@gmail.com",	"6 Hoà Khánh, Đồng Nai"	,2,	3	,2);	
