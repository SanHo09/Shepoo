
IF DB_ID('shepoo') IS NOT NULL
   DROP DATABASE Shepoo
GO

CREATE DATABASE Shepoo
GO
USE  Shepoo
GO
CREATE TABLE LoaiSanPham (
	MaLSP INT IDENTITY(1,1) PRIMARY KEY,
	TenLSP NVARCHAR(50) NOT NULL
)
Go
CREATE TABLE SanPham (
	MaSP INT IDENTITY(1,1) PRIMARY KEY,
	TenSP NVARCHAR(50) NOT NULL,
	Gia FLOAT NOT NULL,
	SoLuong INT NOT NULL,
	LoaiSanPham INT NOT NULL,
	DaBan INT NOT NULL,
	MoTa NVARCHAR(200),
	NguoiBan NVARCHAR(50) NOT NULL,
	NoiBan NVARCHAR(50) NOT NULL,
	MauSac NVARCHAR(50) NULL,
	Size NVARCHAR(50) NULL,
	XuatSu NVARCHAR(50) NULL,
	ChatLieu NVARCHAR(50) NULL,
	RATE FLOAT NOT NULL DEFAULT 0,
	Anh1 NVARCHAR(50) NULL DEFAULT 'ProductDefault',
	Anh2 NVARCHAR(50) NULL DEFAULT 'ProductDefault',
	Anh3 NVARCHAR(50) NULL DEFAULT 'ProductDefault',
	Anh4 NVARCHAR(50) NULL DEFAULT 'ProductDefault',
	Anh5 NVARCHAR(50) NULL DEFAULT 'ProductDefault'	,

	FOREIGN KEY(LoaiSanPham) REFERENCES LoaiSanPham(MaLSP)
)

GO
create table Nguoidung (
	MaND INT IDENTITY(1,1) primary key,
	UserName nvarchar(50) NOT NULL,
	TenNguoiDung nvarchar(50) NOT NULL,
	Email nvarchar(50),
	Password nvarchar(50) NOT NULL,
	SDT varchar(20) NOT NULL,
	Gioitinh bit NOT NULL,
	Ngaysinh date NOT NULL,
	Diachi nvarchar(200) NOT NULL,
	Active bit default(1),
	Vaitro bit default(0),
	Tenshop nvarchar(50) null,
	image nvarchar(50)
)
GO
create table Thongbao(
	MaTB int IDENTITY (1,1) primary key,
	Noidung nvarchar(200) NOT NULL,
	MaND INT NOT NULL,
	FOREIGN KEY (MaND) REFERENCES Nguoidung (MaND)
)

GO
CREATE TABLE GioHang(
	MaGioHang INT IDENTITY(1,1) PRIMARY KEY,
	TongGia FLOAT NOT NULL,
	MaNguoiDung INT NOT NULL
	FOREIGN KEY (MaNguoiDung) REFERENCES Nguoidung (MaND)
)
GO
CREATE TABLE ChiTietGioHAng(
	MaGioHang INT,
	MaSP INT,
	SoLuongMua INT NOT NULL,
	PRIMARY KEY(MaGioHang, MaSP),
	FOREIGN KEY(MaGioHang) REFERENCES GioHang(MaGioHang),
	FOREIGN KEY(MaSP) REFERENCES SanPham(MaSP)
)

GO
CREATE TABLE HoaDon(
	MaHD			int IDENTITY(1,1) primary key,
	MaND			INT NOT NULL,
	NgayLapHoaDon	date not null,
	TongGia			float not null,
	FOREIGN KEY(MaND) REFERENCES NguoiDung(MaND)
)
GO
CREATE TABLE ChiTietHoaDon(
	MaHD			int not null,
	MaSP			int not null,
	SoLuongMua		int not null,
	NoiBan			nvarchar(100) not null,
	NoiNhan			nvarchar(100) not null,
	PhiVanChuyen	float not null,
	primary key(MaHD, MaSP),
	foreign key (MaHD) references HoaDon(MaHD),
	foreign key (MaSP) references SanPham(MaSP)
)
GO
CREATE TABLE BinhLuan(
	[MaBinhLuan] [int] IDENTITY(1,1) NOT NULL PRIMARY KEY,
	[MaNguoiDung] [int] NOT NULL,
	[NoiDung] [nvarchar](200) NULL,
	[DanhGia] [int] NOT NULL,
	[NgayBinhLuan] [datetime] NOT NULL,
	FOREIGN KEY(MaNguoiDung) REFERENCES NGUOIDUNG(MaND)
)
GO
CREATE TABLE Anh(
	ID_Anh INT PRIMARY KEY IDENTITY(1,1),
	MaBinhLuan INT NOT NULL,
	FOREIGN KEY(MaBinhLuan) REFERENCES BinhLuan(MaBInhLuan)
)
GO
CREATE TABLE Video(
	ID_Video INT PRIMARY KEY IDENTITY(1,1),
	MaBinhLuan INT NOT NULL,
	FOREIGN KEY(MaBinhLuan) REFERENCES BinhLuan(MaBInhLuan)
)

GO
CREATE TABLE KhuyenMai (
	[MaGiamGia] [int] IDENTITY(1,1) NOT NULL,
	[NgayBatDau] [datetime] NOT NULL,
	[NgayKetThuc] [datetime] NOT NULL,
	[SoPhanTram] [int] NOT NULL,
	[MaSanPham] [INT] NOT NULL,
	[MaNguoiDung] [INT] NOT NULL,
	FOREIGN KEY(MaSanPham) REFERENCES SanPham(MaSP),
	FOREIGN KEY(MaNguoiDung) REFERENCES NguoiDung(MaND)
)
