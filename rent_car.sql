USE [ThueXe]
GO
/****** Object:  Table [dbo].[HangSanXuat]    Script Date: 5/24/2023 3:22:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HangSanXuat](
	[IDHSX] [int] NOT NULL,
	[TenHangSanXuat] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[IDHSX] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiXe]    Script Date: 5/24/2023 3:22:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiXe](
	[IDLoaiXe] [int] NOT NULL,
	[TenLoaiXe] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[IDLoaiXe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NguoiDung]    Script Date: 5/24/2023 3:22:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NguoiDung](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Ten] [nvarchar](250) NULL,
	[TaiKhoan] [varchar](50) NULL,
	[MatKhau] [varchar](50) NULL,
	[CCCD] [varchar](50) NULL,
	[NgaySinh] [date] NULL,
	[GioiTinh] [nvarchar](10) NULL,
	[SoDienThoai] [varchar](10) NULL,
	[Email] [varchar](50) NULL,
	[BangLaiXe] [bit] NULL,
	[ImgBangLai] [varchar](250) NULL,
	[ImgCCCD] [varchar](250) NULL,
	[role] [bit] NULL,
	[DiaChi] [nvarchar](250) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 5/24/2023 3:22:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[MaNhanVien] [varchar](20) NOT NULL,
	[TenNhanVien] [nvarchar](50) NULL,
	[NgaySinh] [date] NULL,
	[GioiTinh] [nvarchar](10) NULL,
	[DiaChi] [nvarchar](200) NULL,
	[SodienThoai] [varchar](15) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNhanVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Xe]    Script Date: 5/24/2023 3:22:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Xe](
	[MaXe] [varchar](10) NOT NULL,
	[TenXe] [varchar](100) NULL,
	[IDLoaiXe] [int] NULL,
	[IDHSX] [int] NULL,
	[SoGhe] [int] NULL,
	[LoaiNhienLieu] [nvarchar](10) NULL,
	[MauSac] [nvarchar](20) NULL,
	[TrangThai] [nvarchar](50) NULL,
	[TinhTrangXe] [nvarchar](50) NULL,
	[NamSanXuat] [varchar](5) NULL,
	[Img] [varchar](255) NULL,
	[GiaThueNgay] [int] NULL,
	[GiaThueGio] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaXe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[HangSanXuat] ([IDHSX], [TenHangSanXuat]) VALUES (1, N'Toyota')
INSERT [dbo].[HangSanXuat] ([IDHSX], [TenHangSanXuat]) VALUES (2, N'Chevrolet')
INSERT [dbo].[HangSanXuat] ([IDHSX], [TenHangSanXuat]) VALUES (3, N'Ford')
INSERT [dbo].[HangSanXuat] ([IDHSX], [TenHangSanXuat]) VALUES (4, N'Honda')
INSERT [dbo].[HangSanXuat] ([IDHSX], [TenHangSanXuat]) VALUES (5, N'Hyundai')
INSERT [dbo].[HangSanXuat] ([IDHSX], [TenHangSanXuat]) VALUES (6, N'Kia')
INSERT [dbo].[HangSanXuat] ([IDHSX], [TenHangSanXuat]) VALUES (7, N'Mitsubishi')
INSERT [dbo].[HangSanXuat] ([IDHSX], [TenHangSanXuat]) VALUES (8, N'Mazda')
INSERT [dbo].[HangSanXuat] ([IDHSX], [TenHangSanXuat]) VALUES (9, N'Peugeot')
INSERT [dbo].[HangSanXuat] ([IDHSX], [TenHangSanXuat]) VALUES (10, N'Mercedes')
GO
INSERT [dbo].[LoaiXe] ([IDLoaiXe], [TenLoaiXe]) VALUES (1, N'Sedan')
INSERT [dbo].[LoaiXe] ([IDLoaiXe], [TenLoaiXe]) VALUES (2, N'SUV')
INSERT [dbo].[LoaiXe] ([IDLoaiXe], [TenLoaiXe]) VALUES (3, N'HatchBack')
INSERT [dbo].[LoaiXe] ([IDLoaiXe], [TenLoaiXe]) VALUES (4, N'Roadster')
INSERT [dbo].[LoaiXe] ([IDLoaiXe], [TenLoaiXe]) VALUES (5, N'Pickup')
INSERT [dbo].[LoaiXe] ([IDLoaiXe], [TenLoaiXe]) VALUES (6, N'Van')
INSERT [dbo].[LoaiXe] ([IDLoaiXe], [TenLoaiXe]) VALUES (7, N'Coupe')
INSERT [dbo].[LoaiXe] ([IDLoaiXe], [TenLoaiXe]) VALUES (8, N'Supercar')
INSERT [dbo].[LoaiXe] ([IDLoaiXe], [TenLoaiXe]) VALUES (9, N'Cabriolet')
INSERT [dbo].[LoaiXe] ([IDLoaiXe], [TenLoaiXe]) VALUES (10, N'MiniVan')
GO
SET IDENTITY_INSERT [dbo].[NguoiDung] ON 

INSERT [dbo].[NguoiDung] ([ID], [Ten], [TaiKhoan], [MatKhau], [CCCD], [NgaySinh], [GioiTinh], [SoDienThoai], [Email], [BangLaiXe], [ImgBangLai], [ImgCCCD], [role], [DiaChi]) VALUES (2, N'Admin', N'admin', N'admin12345', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL)
INSERT [dbo].[NguoiDung] ([ID], [Ten], [TaiKhoan], [MatKhau], [CCCD], [NgaySinh], [GioiTinh], [SoDienThoai], [Email], [BangLaiXe], [ImgBangLai], [ImgCCCD], [role], [DiaChi]) VALUES (3, N'Nguyễn Đình Nhật', N'dinhnhat', N'dinhnhat12345', N'192111453', CAST(N'2002-09-09' AS Date), N'Nam', N'0936152782', N'nhatndder160347@gmail.com', 1, NULL, NULL, 1, N'Thừa Thiên Huế')
INSERT [dbo].[NguoiDung] ([ID], [Ten], [TaiKhoan], [MatKhau], [CCCD], [NgaySinh], [GioiTinh], [SoDienThoai], [Email], [BangLaiXe], [ImgBangLai], [ImgCCCD], [role], [DiaChi]) VALUES (4, NULL, N'quocnam', N'nam123456', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL)
INSERT [dbo].[NguoiDung] ([ID], [Ten], [TaiKhoan], [MatKhau], [CCCD], [NgaySinh], [GioiTinh], [SoDienThoai], [Email], [BangLaiXe], [ImgBangLai], [ImgCCCD], [role], [DiaChi]) VALUES (5, NULL, N'nhatphong', N'phong12345', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL)
INSERT [dbo].[NguoiDung] ([ID], [Ten], [TaiKhoan], [MatKhau], [CCCD], [NgaySinh], [GioiTinh], [SoDienThoai], [Email], [BangLaiXe], [ImgBangLai], [ImgCCCD], [role], [DiaChi]) VALUES (6, NULL, N'nhatnguyen', N'nhat12345', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL)
INSERT [dbo].[NguoiDung] ([ID], [Ten], [TaiKhoan], [MatKhau], [CCCD], [NgaySinh], [GioiTinh], [SoDienThoai], [Email], [BangLaiXe], [ImgBangLai], [ImgCCCD], [role], [DiaChi]) VALUES (7, NULL, N'nguoidung', N'12345', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL)
INSERT [dbo].[NguoiDung] ([ID], [Ten], [TaiKhoan], [MatKhau], [CCCD], [NgaySinh], [GioiTinh], [SoDienThoai], [Email], [BangLaiXe], [ImgBangLai], [ImgCCCD], [role], [DiaChi]) VALUES (8, NULL, N'nhatnguyen', N'nhat12345', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL)
INSERT [dbo].[NguoiDung] ([ID], [Ten], [TaiKhoan], [MatKhau], [CCCD], [NgaySinh], [GioiTinh], [SoDienThoai], [Email], [BangLaiXe], [ImgBangLai], [ImgCCCD], [role], [DiaChi]) VALUES (9, NULL, N'dinhnhat1', N'123', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL)
SET IDENTITY_INSERT [dbo].[NguoiDung] OFF
GO
INSERT [dbo].[Xe] ([MaXe], [TenXe], [IDLoaiXe], [IDHSX], [SoGhe], [LoaiNhienLieu], [MauSac], [TrangThai], [TinhTrangXe], [NamSanXuat], [Img], [GiaThueNgay], [GiaThueGio]) VALUES (N'HDCRV22', N'HONDA CR-V', 2, 4, 7, N'Petrol', N'White', N'Chưa Thuê', N'New', N'2022', N'crv22.jpg', 1800, 100)
INSERT [dbo].[Xe] ([MaXe], [TenXe], [IDLoaiXe], [IDHSX], [SoGhe], [LoaiNhienLieu], [MauSac], [TrangThai], [TinhTrangXe], [NamSanXuat], [Img], [GiaThueNgay], [GiaThueGio]) VALUES (N'HDCRV222', N'HONDA CR-V', 2, 4, 7, N'Petrol', N'Black', N'Chưa Thuê', N'New', N'2022', N'crvden.jpg', 1800, 100)
INSERT [dbo].[Xe] ([MaXe], [TenXe], [IDLoaiXe], [IDHSX], [SoGhe], [LoaiNhienLieu], [MauSac], [TrangThai], [TinhTrangXe], [NamSanXuat], [Img], [GiaThueNgay], [GiaThueGio]) VALUES (N'HDCT21', N'HONDA CITY', 1, 4, 5, N'Gasoline', N'Red', N'Chưa Thuê', N'New', N'2021', N'Honda-City-2.jpg', 700, 38)
INSERT [dbo].[Xe] ([MaXe], [TenXe], [IDLoaiXe], [IDHSX], [SoGhe], [LoaiNhienLieu], [MauSac], [TrangThai], [TinhTrangXe], [NamSanXuat], [Img], [GiaThueNgay], [GiaThueGio]) VALUES (N'HDCT211', N'HONDA CITY', 1, 4, 5, N'Gasoline', N'White', N'Chưa Thuê', N'New', N'2021', N'F4.png', 700, 38)
INSERT [dbo].[Xe] ([MaXe], [TenXe], [IDLoaiXe], [IDHSX], [SoGhe], [LoaiNhienLieu], [MauSac], [TrangThai], [TinhTrangXe], [NamSanXuat], [Img], [GiaThueNgay], [GiaThueGio]) VALUES (N'HDCT212', N'HONDA CITY', 1, 4, 5, N'Gasoline', N'White', N'Chưa Thuê', N'New', N'2021', N'city-den.jpg', 700, 38)
INSERT [dbo].[Xe] ([MaXe], [TenXe], [IDLoaiXe], [IDHSX], [SoGhe], [LoaiNhienLieu], [MauSac], [TrangThai], [TinhTrangXe], [NamSanXuat], [Img], [GiaThueNgay], [GiaThueGio]) VALUES (N'HDR23', N'HONDA CIVIC TYPE R', 3, 4, 4, N'Gasoline', N'White', N'Chưa Thuê', N'New', N'2023', N'c3_r.jpg', 900, 50)
INSERT [dbo].[Xe] ([MaXe], [TenXe], [IDLoaiXe], [IDHSX], [SoGhe], [LoaiNhienLieu], [MauSac], [TrangThai], [TinhTrangXe], [NamSanXuat], [Img], [GiaThueNgay], [GiaThueGio]) VALUES (N'HDR231', N'HONDA CIVIC TYPE R', 3, 4, 4, N'Gasoline', N'Black', N'Chưa Thuê', N'New', N'2023', N'civicden.jpg', 900, 50)
INSERT [dbo].[Xe] ([MaXe], [TenXe], [IDLoaiXe], [IDHSX], [SoGhe], [LoaiNhienLieu], [MauSac], [TrangThai], [TinhTrangXe], [NamSanXuat], [Img], [GiaThueNgay], [GiaThueGio]) VALUES (N'HDR232', N'HONDA CIVIC TYPE R', 3, 4, 4, N'Gasoline', N'Red', N'Chưa Thuê', N'New', N'2023', N'2017_honda_civic_type-r-1_7643.jpg', 900, 36)
INSERT [dbo].[Xe] ([MaXe], [TenXe], [IDLoaiXe], [IDHSX], [SoGhe], [LoaiNhienLieu], [MauSac], [TrangThai], [TinhTrangXe], [NamSanXuat], [Img], [GiaThueNgay], [GiaThueGio]) VALUES (N'HYA23', N'HUYNDAI ACCENT', 1, 5, 5, N'Gasoline', N'Red', N'Chưa Thuê', N'New', N'2023', N'accentdo.jpg', 650, 36)
INSERT [dbo].[Xe] ([MaXe], [TenXe], [IDLoaiXe], [IDHSX], [SoGhe], [LoaiNhienLieu], [MauSac], [TrangThai], [TinhTrangXe], [NamSanXuat], [Img], [GiaThueNgay], [GiaThueGio]) VALUES (N'HYA232', N'HUYNDAI ACCENT', 1, 5, 5, N'Gasoline', N'White', N'Chưa Thuê', N'New', N'2023', N'acctrang.png', 650, 36)
INSERT [dbo].[Xe] ([MaXe], [TenXe], [IDLoaiXe], [IDHSX], [SoGhe], [LoaiNhienLieu], [MauSac], [TrangThai], [TinhTrangXe], [NamSanXuat], [Img], [GiaThueNgay], [GiaThueGio]) VALUES (N'HYA233', N'HUYNDAI ACCENT', 1, 5, 5, N'Gasoline', N'Black', N'Chưa Thuê', N'New', N'2023', N'accden.png', 650, 47)
INSERT [dbo].[Xe] ([MaXe], [TenXe], [IDLoaiXe], [IDHSX], [SoGhe], [LoaiNhienLieu], [MauSac], [TrangThai], [TinhTrangXe], [NamSanXuat], [Img], [GiaThueNgay], [GiaThueGio]) VALUES (N'HYE22', N'HUYNDAI ELANTRA', 1, 5, 5, N'Gasoline', N'White', N'Chưa Thuê', N'New', N'2022', N'elantratrang.jpeg', 850, 47)
INSERT [dbo].[Xe] ([MaXe], [TenXe], [IDLoaiXe], [IDHSX], [SoGhe], [LoaiNhienLieu], [MauSac], [TrangThai], [TinhTrangXe], [NamSanXuat], [Img], [GiaThueNgay], [GiaThueGio]) VALUES (N'HYE222', N'HUYNDAI ELANTRA', 1, 5, 5, N'Gasoline', N'White', N'Chưa Thuê', N'New', N'2022', N'elantraden.png', 850, 61)
INSERT [dbo].[Xe] ([MaXe], [TenXe], [IDLoaiXe], [IDHSX], [SoGhe], [LoaiNhienLieu], [MauSac], [TrangThai], [TinhTrangXe], [NamSanXuat], [Img], [GiaThueNgay], [GiaThueGio]) VALUES (N'HYK23', N'HYUNDAI KONA', 2, 5, 7, N'Gasoline', N'Black', N'Chưa Thuê', N'New', N'2023', N'konaden.jpg', 1100, 72)
INSERT [dbo].[Xe] ([MaXe], [TenXe], [IDLoaiXe], [IDHSX], [SoGhe], [LoaiNhienLieu], [MauSac], [TrangThai], [TinhTrangXe], [NamSanXuat], [Img], [GiaThueNgay], [GiaThueGio]) VALUES (N'HYS21', N'HUYNDAI SANTA FE', 2, 5, 7, N'Petrol', N'Blue', N'Chưa Thuê', N'New', N'2021', N'santafrxanhduong.jpg', 1300, 72)
INSERT [dbo].[Xe] ([MaXe], [TenXe], [IDLoaiXe], [IDHSX], [SoGhe], [LoaiNhienLieu], [MauSac], [TrangThai], [TinhTrangXe], [NamSanXuat], [Img], [GiaThueNgay], [GiaThueGio]) VALUES (N'HYS212', N'HUYNDAI SANTA FE', 2, 5, 7, N'Petrol', N'White', N'Chưa Thuê', N'New', N'2021', N'santafetrang.jpg', 1300, 78)
INSERT [dbo].[Xe] ([MaXe], [TenXe], [IDLoaiXe], [IDHSX], [SoGhe], [LoaiNhienLieu], [MauSac], [TrangThai], [TinhTrangXe], [NamSanXuat], [Img], [GiaThueNgay], [GiaThueGio]) VALUES (N'HYT22', N'HYUNDAI TUCSON', 2, 5, 7, N'Gasoline', N'Grey', N'Chưa Thuê', N'New', N'2022', N'tucsonxam.png', 1000, 55)
INSERT [dbo].[Xe] ([MaXe], [TenXe], [IDLoaiXe], [IDHSX], [SoGhe], [LoaiNhienLieu], [MauSac], [TrangThai], [TinhTrangXe], [NamSanXuat], [Img], [GiaThueNgay], [GiaThueGio]) VALUES (N'HYT222', N'HYUNDAI TUCSON', 2, 5, 7, N'Gasoline', N'White', N'Chưa Thuê', N'New', N'2022', N'tucsontrang.png', 1000, 95)
INSERT [dbo].[Xe] ([MaXe], [TenXe], [IDLoaiXe], [IDHSX], [SoGhe], [LoaiNhienLieu], [MauSac], [TrangThai], [TinhTrangXe], [NamSanXuat], [Img], [GiaThueNgay], [GiaThueGio]) VALUES (N'KC22', N'KIA CARNIVAL', 2, 6, 7, N'Gasoline', N'White', N'Chưa Thuê', N'New', N'2022', N'carnivalden.png', 1700, 95)
INSERT [dbo].[Xe] ([MaXe], [TenXe], [IDLoaiXe], [IDHSX], [SoGhe], [LoaiNhienLieu], [MauSac], [TrangThai], [TinhTrangXe], [NamSanXuat], [Img], [GiaThueNgay], [GiaThueGio]) VALUES (N'KC222', N'KIA CARNIVAL', 2, 6, 7, N'Gasoline', N'White', N'Chưa Thuê', N'New', N'2022', N'carnivaldo.png', 1700, 44)
INSERT [dbo].[Xe] ([MaXe], [TenXe], [IDLoaiXe], [IDHSX], [SoGhe], [LoaiNhienLieu], [MauSac], [TrangThai], [TinhTrangXe], [NamSanXuat], [Img], [GiaThueNgay], [GiaThueGio]) VALUES (N'KK3', N'KIA K3', 1, 6, 5, N'Gasoline', N'Grey', N'Chưa Thuê', N'New', N'2023', N'kiak3xam.jpg', 800, 44)
INSERT [dbo].[Xe] ([MaXe], [TenXe], [IDLoaiXe], [IDHSX], [SoGhe], [LoaiNhienLieu], [MauSac], [TrangThai], [TinhTrangXe], [NamSanXuat], [Img], [GiaThueNgay], [GiaThueGio]) VALUES (N'KK32', N'KIA K3', 1, 6, 5, N'Gasoline', N'Red', N'Chưa Thuê', N'New', N'2023', N'KIA-K3-Mau-Do.jpg', 800, 44)
INSERT [dbo].[Xe] ([MaXe], [TenXe], [IDLoaiXe], [IDHSX], [SoGhe], [LoaiNhienLieu], [MauSac], [TrangThai], [TinhTrangXe], [NamSanXuat], [Img], [GiaThueNgay], [GiaThueGio]) VALUES (N'KK33', N'KIA K3', 1, 6, 5, N'Gasoline', N'White', N'Chưa Thuê', N'New', N'2023', N'kia-k3-xanh.jpg', 800, 77)
INSERT [dbo].[Xe] ([MaXe], [TenXe], [IDLoaiXe], [IDHSX], [SoGhe], [LoaiNhienLieu], [MauSac], [TrangThai], [TinhTrangXe], [NamSanXuat], [Img], [GiaThueNgay], [GiaThueGio]) VALUES (N'KK5', N'KIA K5', 1, 6, 5, N'Gasoline', N'Grey', N'Chưa Thuê', N'New', N'2023', N'k5-xam.png', 1400, 77)
INSERT [dbo].[Xe] ([MaXe], [TenXe], [IDLoaiXe], [IDHSX], [SoGhe], [LoaiNhienLieu], [MauSac], [TrangThai], [TinhTrangXe], [NamSanXuat], [Img], [GiaThueNgay], [GiaThueGio]) VALUES (N'KK52', N'KIA K5', 1, 6, 5, N'Gasoline', N'Red', N'Chưa Thuê', N'New', N'2023', N'k5-do.png', 1400, 195)
INSERT [dbo].[Xe] ([MaXe], [TenXe], [IDLoaiXe], [IDHSX], [SoGhe], [LoaiNhienLieu], [MauSac], [TrangThai], [TinhTrangXe], [NamSanXuat], [Img], [GiaThueNgay], [GiaThueGio]) VALUES (N'MC300', N'Mercedes-BENZ C300 AMG', 1, 10, 5, N'Gasoline', N'White', N'Chưa Thuê', N'New', N'2022', N'c300trang.jpg', 3500, 195)
INSERT [dbo].[Xe] ([MaXe], [TenXe], [IDLoaiXe], [IDHSX], [SoGhe], [LoaiNhienLieu], [MauSac], [TrangThai], [TinhTrangXe], [NamSanXuat], [Img], [GiaThueNgay], [GiaThueGio]) VALUES (N'MC3002', N'Mercedes-BENZ C300 AMG', 1, 10, 5, N'Gasoline', N'Black', N'Chưa Thuê', N'New', N'2022', N'c300den.png', 3500, 350)
INSERT [dbo].[Xe] ([MaXe], [TenXe], [IDLoaiXe], [IDHSX], [SoGhe], [LoaiNhienLieu], [MauSac], [TrangThai], [TinhTrangXe], [NamSanXuat], [Img], [GiaThueNgay], [GiaThueGio]) VALUES (N'MCS450', N'Mercedes-BENZ S450', 1, 10, 4, N'Gasoline', N'Black', N'Chưa Thuê', N'New', N'2022', N's450den.jpg', 5500, 83)
INSERT [dbo].[Xe] ([MaXe], [TenXe], [IDLoaiXe], [IDHSX], [SoGhe], [LoaiNhienLieu], [MauSac], [TrangThai], [TinhTrangXe], [NamSanXuat], [Img], [GiaThueNgay], [GiaThueGio]) VALUES (N'PG23', N'PEUGEOT 2008 Active ', 2, 9, 7, N'Gasoline', N'White', N'Chưa Thuê', N'New', N'2023', N'pgtrang.jpg', 1500, 83)
INSERT [dbo].[Xe] ([MaXe], [TenXe], [IDLoaiXe], [IDHSX], [SoGhe], [LoaiNhienLieu], [MauSac], [TrangThai], [TinhTrangXe], [NamSanXuat], [Img], [GiaThueNgay], [GiaThueGio]) VALUES (N'PG232', N'PEUGEOT 2008 Active ', 2, 9, 7, N'Gasoline', N'Black', N'Chưa Thuê', N'New', N'2023', N'pgden.png', 1500, 83)
INSERT [dbo].[Xe] ([MaXe], [TenXe], [IDLoaiXe], [IDHSX], [SoGhe], [LoaiNhienLieu], [MauSac], [TrangThai], [TinhTrangXe], [NamSanXuat], [Img], [GiaThueNgay], [GiaThueGio]) VALUES (N'PG233', N'PEUGEOT 2008 Active ', 2, 9, 7, N'Gasoline', N'Oganre', N'Chưa Thuê', N'New', N'2023', N'pgcam.png', 1500, 100)
INSERT [dbo].[Xe] ([MaXe], [TenXe], [IDLoaiXe], [IDHSX], [SoGhe], [LoaiNhienLieu], [MauSac], [TrangThai], [TinhTrangXe], [NamSanXuat], [Img], [GiaThueNgay], [GiaThueGio]) VALUES (N'PG3008', N'Peugeot 3008 Active ', 2, 9, 7, N'Gasoline', N'Black', N'Chưa Thuê', N'New', N'2023', N'pg3den.png', 1800, 100)
INSERT [dbo].[Xe] ([MaXe], [TenXe], [IDLoaiXe], [IDHSX], [SoGhe], [LoaiNhienLieu], [MauSac], [TrangThai], [TinhTrangXe], [NamSanXuat], [Img], [GiaThueNgay], [GiaThueGio]) VALUES (N'PG30082', N'Peugeot 3008 Active ', 2, 9, 7, N'Gasoline', N'Black', N'Chưa Thuê', N'New', N'2023', N'pg3den.png', 1800, 44)
INSERT [dbo].[Xe] ([MaXe], [TenXe], [IDLoaiXe], [IDHSX], [SoGhe], [LoaiNhienLieu], [MauSac], [TrangThai], [TinhTrangXe], [NamSanXuat], [Img], [GiaThueNgay], [GiaThueGio]) VALUES (N'TYA23', N'TOYOTA COROLLA ALTIS', 1, 1, 5, N'Gasoline', N'Blue gray', N'Chưa Thuê', N'New', N'2023', N'tyca23.png', 800, 44)
INSERT [dbo].[Xe] ([MaXe], [TenXe], [IDLoaiXe], [IDHSX], [SoGhe], [LoaiNhienLieu], [MauSac], [TrangThai], [TinhTrangXe], [NamSanXuat], [Img], [GiaThueNgay], [GiaThueGio]) VALUES (N'TYA232', N'TOYOTA COROLLA ALTIS', 1, 1, 5, N'Gasoline', N'White', N'Chưa Thuê', N'New', N'2023', N'tyctrang.png', 800, 55)
INSERT [dbo].[Xe] ([MaXe], [TenXe], [IDLoaiXe], [IDHSX], [SoGhe], [LoaiNhienLieu], [MauSac], [TrangThai], [TinhTrangXe], [NamSanXuat], [Img], [GiaThueNgay], [GiaThueGio]) VALUES (N'TYC1901', N'TOYOTA CAMRY 2.0G', 1, 1, 5, N'Gasoline', N'Red', N'Chưa Thuê', N'New', N'2019', N'camry219do.png', 1000, 50)
INSERT [dbo].[Xe] ([MaXe], [TenXe], [IDLoaiXe], [IDHSX], [SoGhe], [LoaiNhienLieu], [MauSac], [TrangThai], [TinhTrangXe], [NamSanXuat], [Img], [GiaThueNgay], [GiaThueGio]) VALUES (N'TYC2301', N'TOYOTA CAMRY', 1, 1, 5, N'Gasoline', N'White', N'Chưa Thuê', N'New', N'2023', N'camry23.png', 1200, 66)
INSERT [dbo].[Xe] ([MaXe], [TenXe], [IDLoaiXe], [IDHSX], [SoGhe], [LoaiNhienLieu], [MauSac], [TrangThai], [TinhTrangXe], [NamSanXuat], [Img], [GiaThueNgay], [GiaThueGio]) VALUES (N'TYC2302', N'TOYOTA CAMRY 2.0G', 1, 1, 5, N'Gasoline', N'Black', N'Chưa Thuê', N'New', N'2023', N'camry23den.png', 1200, 66)
INSERT [dbo].[Xe] ([MaXe], [TenXe], [IDLoaiXe], [IDHSX], [SoGhe], [LoaiNhienLieu], [MauSac], [TrangThai], [TinhTrangXe], [NamSanXuat], [Img], [GiaThueNgay], [GiaThueGio]) VALUES (N'TYF2301', N'TOYOTA FOTUNER', 2, 1, 7, N'Gasoline', N'White', N'Chưa Thuê', N'New', N'2023', N'ft23trang.jpg', 1300, 72)
INSERT [dbo].[Xe] ([MaXe], [TenXe], [IDLoaiXe], [IDHSX], [SoGhe], [LoaiNhienLieu], [MauSac], [TrangThai], [TinhTrangXe], [NamSanXuat], [Img], [GiaThueNgay], [GiaThueGio]) VALUES (N'TYH23', N'TOYOTA HILUX 2.4L', 5, 1, 5, N'Petrol', N'Blue', N'Chưa Thuê', N'New', N'2023', N'tyh23.png', 900, 50)
INSERT [dbo].[Xe] ([MaXe], [TenXe], [IDLoaiXe], [IDHSX], [SoGhe], [LoaiNhienLieu], [MauSac], [TrangThai], [TinhTrangXe], [NamSanXuat], [Img], [GiaThueNgay], [GiaThueGio]) VALUES (N'TYLC22', N'TOYOTA LAND CRUISER', 2, 1, 7, N'Gasoline', N'Black', N'Chưa Thuê', N'New', N'2022', N'tlc22den.jpg', 4000, 220)
INSERT [dbo].[Xe] ([MaXe], [TenXe], [IDLoaiXe], [IDHSX], [SoGhe], [LoaiNhienLieu], [MauSac], [TrangThai], [TinhTrangXe], [NamSanXuat], [Img], [GiaThueNgay], [GiaThueGio]) VALUES (N'TYV23', N'TOYOTA VIOS 1.5G-CVT', 1, 1, 7, N'Gasoline', N'Red', N'Chưa Thuê', N'New', N'2023', N'tyv23do.png', 750, 41)
INSERT [dbo].[Xe] ([MaXe], [TenXe], [IDLoaiXe], [IDHSX], [SoGhe], [LoaiNhienLieu], [MauSac], [TrangThai], [TinhTrangXe], [NamSanXuat], [Img], [GiaThueNgay], [GiaThueGio]) VALUES (N'TYV232', N'TOYOTA VIOS 1.5G-CVT', 1, 1, 5, N'Gasoline', N'Red', N'Chưa Thuê', N'New', N'2023', N'tyvios23.png', 750, 41)
GO
ALTER TABLE [dbo].[Xe]  WITH CHECK ADD  CONSTRAINT [FK_IDHSX] FOREIGN KEY([IDHSX])
REFERENCES [dbo].[HangSanXuat] ([IDHSX])
GO
ALTER TABLE [dbo].[Xe] CHECK CONSTRAINT [FK_IDHSX]
GO
ALTER TABLE [dbo].[Xe]  WITH CHECK ADD  CONSTRAINT [FK_IDLoaiXE] FOREIGN KEY([IDLoaiXe])
REFERENCES [dbo].[LoaiXe] ([IDLoaiXe])
GO
ALTER TABLE [dbo].[Xe] CHECK CONSTRAINT [FK_IDLoaiXE]
GO
