Create Table TaiKhoan(
TenDN varchar(10) primary key,
MatKhau varchar(50) not null,
Email varchar(50) 
);


select * from Taikhoan

Create table Loaihang
(
Maloai varchar (70) primary key,
Tenloai Nvarchar(70)
);

Create table Nhacungcap
(
MaNCC varchar (70) primary key,
TenNCC Nvarchar (70),
Diachi Nvarchar(200),
Email varchar (100),
Sodienthoai varchar (70)
);

Create table Hanghoa
(
MaHH varchar (70) primary key,
TenHH Nvarchar (70) not null,
MaNCC varchar (70) foreign key (MaNCC) references Nhacungcap(MaNCC),
Maloai varchar (70) foreign key (Maloai) references Loaihang(Maloai),
Soluongconlai int,
Soluongdaban int,
Giaban float,
Gianhap float,
Madonvitinh int foreign key (Madonvitinh) references Donvitinh(Madonvitinh),
Ngaynhap int,
);

Create table Donvitinh
(
Madonvitinh int identity(1,1) primary key,
TenDVT nvarchar(100),
);

Create table Phieunhap
(
Idphieunhap varchar(200) primary key,
Ngaynhap datetime
);


Create table Phieuxuat
(
Idphieuxuat varchar(200) primary key,
Ngaynhap datetime
);

Create table Thongtinphieunhap
(
Id varchar(200) primary key,
MaHH varchar (70) foreign key (MaHH) references Hanghoa(MaHH) not null,
Idphieunhap varchar (200) foreign key (Idphieunhap) references Phieunhap(Idphieunhap) not null,
Gianhap float,
Giaban float,
Soluong int,
MaNCC varchar (70) foreign key (MaNCC) references Nhacungcap(MaNCC),
);

Create table Thongtinphieuxuat
(
Id varchar(200) primary key,
MaHH varchar (70) foreign key (MaHH) references Hanghoa(MaHH) not null,
Idphieuxuat varchar (200) foreign key (Idphieuxuat) references Phieuxuat(Idphieuxuat) not null,
Giaban float,
Soluong int,
MaKh varchar (70) foreign key (MakH) references Khachhang(MakH) ,
);

Create table Khachhang
(
MakH varchar (70) primary key,
TenKh Nvarchar (70),
Email varchar (100) ,
Sodienthoai varchar (70) ,
);
