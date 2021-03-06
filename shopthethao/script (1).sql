GO
/****** Object:  Table [dbo].[db_ChiTietDonDatHang]    Script Date: 12/22/2018 9:51:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[db_ChiTietDonDatHang](
	[MaSP] [int] NOT NULL,
	[MaDonDatHang] [int] NOT NULL,
	[SoLuongDat] [int] NULL,
	[DonGiaDat] [float] NULL,
 CONSTRAINT [PK_ChiTietDonDatHang] PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC,
	[MaDonDatHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[db_ChiTietDonHang]    Script Date: 12/22/2018 9:51:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[db_ChiTietDonHang](
	[MaHD] [int] NOT NULL,
	[MaSP] [int] NOT NULL,
	[SoLuong] [int] NULL,
	[DonGia] [float] NULL,
 CONSTRAINT [PK_ChiTietDonHang] PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC,
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[db_DangKy]    Script Date: 12/22/2018 9:51:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[db_DangKy](
	[TenDangNhap] [varchar](50) NOT NULL,
	[MatKhau] [nvarchar](50) NOT NULL,
	[EmailDK] [varchar](50) NULL,
	[DiaChiDK] [nvarchar](100) NULL,
	[TenDayDu] [nvarchar](50) NULL,
	[CauHoiBaoMat] [nvarchar](100) NULL,
	[NgaySinh] [date] NULL,
	[GioiTinhDK] [nchar](10) NULL,
	[MaQuyen] [int] NULL,
 CONSTRAINT [PK_db_DangKy] PRIMARY KEY CLUSTERED 
(
	[TenDangNhap] ASC,
	[MatKhau] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[db_DanhMuc]    Script Date: 12/22/2018 9:51:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[db_DanhMuc](
	[MaDM] [int] NOT NULL,
	[TenDM] [nvarchar](50) NULL,
	[AnhDaiDien] [nvarchar](100) NULL,
	[ThuTu] [int] NULL,
	[MaDMCha] [int] NULL,
 CONSTRAINT [PK_DanhMuc] PRIMARY KEY CLUSTERED 
(
	[MaDM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[db_DanhMucTin]    Script Date: 12/22/2018 9:51:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[db_DanhMucTin](
	[MaDM] [int] NOT NULL,
	[TenDM] [nvarchar](100) NULL,
	[AnhDaiDien] [nvarchar](100) NULL,
	[ThuTu] [int] NULL,
	[MaDMCha] [int] NULL,
 CONSTRAINT [PK_db_DanhMucTin] PRIMARY KEY CLUSTERED 
(
	[MaDM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[db_DonDatHang]    Script Date: 12/22/2018 9:51:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[db_DonDatHang](
	[MaDonDatHang] [int] IDENTITY(1,1) NOT NULL,
	[NgayTao] [datetime] NULL,
	[ThanhTienDH] [float] NULL,
	[TinhTrangDonHang] [nvarchar](300) NULL,
	[MaKH] [int] NULL,
	[TenKH] [varchar](50) NULL,
	[sdtKH] [varchar](15) NULL,
	[EmailKH] [varchar](50) NULL,
 CONSTRAINT [PK_db_DonDatHang] PRIMARY KEY CLUSTERED 
(
	[MaDonDatHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[db_HoaDon]    Script Date: 12/22/2018 9:51:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[db_HoaDon](
	[MaHD] [int] NOT NULL,
	[NgayLap] [datetime] NULL,
	[ThanhTien] [float] NULL,
	[MaNV] [int] NULL,
	[TenNV] [nvarchar](70) NULL,
	[MaKH] [int] NULL,
	[TenKH] [nvarchar](50) NULL,
 CONSTRAINT [PK_HoaDon] PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[db_KhachHang]    Script Date: 12/22/2018 9:51:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[db_KhachHang](
	[MaKH] [int] IDENTITY(1,1) NOT NULL,
	[TenKH] [nvarchar](50) NULL,
	[DiaChiKH] [nvarchar](100) NULL,
	[sdtKH] [varchar](15) NULL,
	[EmailKH] [varchar](50) NULL,
	[MatKhau] [nvarchar](50) NULL,
 CONSTRAINT [PK_KhachHang] PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[db_Menu]    Script Date: 12/22/2018 9:51:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[db_Menu](
	[MaMenu] [int] NOT NULL,
	[TenMenu] [nvarchar](50) NULL,
	[LienKet] [varchar](200) NULL,
	[MaMenuCha] [int] NULL,
	[ThuTuMenu] [int] NULL,
 CONSTRAINT [PK_Menu] PRIMARY KEY CLUSTERED 
(
	[MaMenu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[db_NhomQuangCao]    Script Date: 12/22/2018 9:51:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[db_NhomQuangCao](
	[NhomQuangCaoID] [int] NOT NULL,
	[TenNhomQuangCao] [nvarchar](50) NULL,
	[ViTriQC] [nvarchar](30) NULL,
	[ThuTuNhomQC] [int] NULL,
	[AnhDaiDienQC] [nvarchar](100) NULL,
 CONSTRAINT [PK_NhomQuangCao] PRIMARY KEY CLUSTERED 
(
	[NhomQuangCaoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[db_NhomSanPham]    Script Date: 12/22/2018 9:51:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[db_NhomSanPham](
	[NhomID] [int] NOT NULL,
	[TenNhom] [nvarchar](100) NULL,
	[AnhDaiDien] [nvarchar](100) NULL,
	[ThuTu] [int] NULL,
	[SoSPHienThi] [int] NULL,
 CONSTRAINT [PK_NhomSanPham] PRIMARY KEY CLUSTERED 
(
	[NhomID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[db_QuangCao]    Script Date: 12/22/2018 9:51:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[db_QuangCao](
	[QuangCaoID] [int] NOT NULL,
	[TenQC] [nvarchar](50) NULL,
	[LoaiQC] [nvarchar](20) NULL,
	[AnhQC] [nvarchar](100) NULL,
	[LienKet] [varchar](50) NULL,
	[ThuTuQC] [int] NULL,
	[NhomQuangCaoID] [int] NULL,
 CONSTRAINT [PK_QuangCao] PRIMARY KEY CLUSTERED 
(
	[QuangCaoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[db_QuyenDangNhap]    Script Date: 12/22/2018 9:51:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[db_QuyenDangNhap](
	[MaQuyen] [int] NOT NULL,
	[TenQuyen] [nvarchar](10) NULL,
 CONSTRAINT [PK_QuyenDangNhap] PRIMARY KEY CLUSTERED 
(
	[MaQuyen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[db_SanPham]    Script Date: 12/22/2018 9:51:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[db_SanPham](
	[MaSP] [int] NOT NULL,
	[TenSP] [nvarchar](100) NULL,
	[AnhSP] [nvarchar](100) NULL,
	[SoLuongSP] [int] NULL,
	[GiaSP] [float] NULL,
	[MoTaSP] [nvarchar](max) NULL,
	[NgayTao] [datetime] NULL,
	[NgayHuy] [datetime] NULL,
	[MaDM] [int] NULL,
	[NhomID] [int] NULL,
 CONSTRAINT [PK_SanPham] PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[db_TinTuc]    Script Date: 12/22/2018 9:51:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[db_TinTuc](
	[TinTucID] [int] NOT NULL,
	[TieuDe] [nvarchar](200) NULL,
	[AnhDaiDien] [nvarchar](200) NULL,
	[MoTa] [nvarchar](max) NULL,
	[NgayDang] [datetime] NULL,
	[LuotXem] [int] NULL,
	[ChiTiet] [nvarchar](max) NULL,
	[ThuTu] [int] NULL,
	[MaDM] [int] NULL,
 CONSTRAINT [PK_db_TinTuc] PRIMARY KEY CLUSTERED 
(
	[TinTucID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
INSERT [dbo].[db_ChiTietDonDatHang] ([MaSP], [MaDonDatHang], [SoLuongDat], [DonGiaDat]) VALUES (1, 3, 1, 100000)
INSERT [dbo].[db_ChiTietDonDatHang] ([MaSP], [MaDonDatHang], [SoLuongDat], [DonGiaDat]) VALUES (4, 3, 1, 950000)
INSERT [dbo].[db_ChiTietDonDatHang] ([MaSP], [MaDonDatHang], [SoLuongDat], [DonGiaDat]) VALUES (12, 3, 1, 45000)
INSERT [dbo].[db_ChiTietDonDatHang] ([MaSP], [MaDonDatHang], [SoLuongDat], [DonGiaDat]) VALUES (14, 3, 1, 1450000)
INSERT [dbo].[db_DangKy] ([TenDangNhap], [MatKhau], [EmailDK], [DiaChiDK], [TenDayDu], [CauHoiBaoMat], [NgaySinh], [GioiTinhDK], [MaQuyen]) VALUES (N'admin', N'admin', N'admin@gmail.com', N'Bình Dương', N'Quản Trị Viên', NULL, CAST(N'1997-10-16' AS Date), N'Nam       ', 1)
INSERT [dbo].[db_DanhMuc] ([MaDM], [TenDM], [AnhDaiDien], [ThuTu], [MaDMCha]) VALUES (1, N'Quần Áo Thi Đấu', N'roa.jpg', 1, 0)
INSERT [dbo].[db_DanhMuc] ([MaDM], [TenDM], [AnhDaiDien], [ThuTu], [MaDMCha]) VALUES (2, N'Giày', N'roa.jpg', 2, 0)
INSERT [dbo].[db_DanhMuc] ([MaDM], [TenDM], [AnhDaiDien], [ThuTu], [MaDMCha]) VALUES (3, N'Găng Tay', N'roa.jpg', 3, 0)
INSERT [dbo].[db_DanhMuc] ([MaDM], [TenDM], [AnhDaiDien], [ThuTu], [MaDMCha]) VALUES (4, N'Vớ', N'roa.jpg', 4, 0)
INSERT [dbo].[db_DanhMuc] ([MaDM], [TenDM], [AnhDaiDien], [ThuTu], [MaDMCha]) VALUES (5, N'Banh', N'roa.jpg', 5, 0)
INSERT [dbo].[db_DanhMucTin] ([MaDM], [TenDM], [AnhDaiDien], [ThuTu], [MaDMCha]) VALUES (1, N'Giới thiệu Công ty', N'roa2.jpg', 1, 0)
SET IDENTITY_INSERT [dbo].[db_DonDatHang] ON 

INSERT [dbo].[db_DonDatHang] ([MaDonDatHang], [NgayTao], [ThanhTienDH], [TinhTrangDonHang], [MaKH], [TenKH], [sdtKH], [EmailKH]) VALUES (3, CAST(N'2018-05-20 19:33:13.000' AS DateTime), 2545000, N'636624415934920310', 1, N'H? Thái An', N'0925772552', N'hothaian1997@gmail.com')
SET IDENTITY_INSERT [dbo].[db_DonDatHang] OFF
SET IDENTITY_INSERT [dbo].[db_KhachHang] ON 

INSERT [dbo].[db_KhachHang] ([MaKH], [TenKH], [DiaChiKH], [sdtKH], [EmailKH], [MatKhau]) VALUES (1, N'Hồ Thái An', N'Bình Dương', N'0925772552', N'hothaian1997@gmail.com', N'12345')
SET IDENTITY_INSERT [dbo].[db_KhachHang] OFF
INSERT [dbo].[db_Menu] ([MaMenu], [TenMenu], [LienKet], [MaMenuCha], [ThuTuMenu]) VALUES (1, N'Trang Chủ', N'/Default.aspx', 0, 1)
INSERT [dbo].[db_Menu] ([MaMenu], [TenMenu], [LienKet], [MaMenuCha], [ThuTuMenu]) VALUES (2, N'Sản Phẩm', N'/Default.aspx?modul=SanPham', 0, 2)
INSERT [dbo].[db_Menu] ([MaMenu], [TenMenu], [LienKet], [MaMenuCha], [ThuTuMenu]) VALUES (3, N'Liên Hệ', N'Default.aspx?modul=TinTuc&modulphu=ChiTietTinTuc&id=1', 0, 3)
INSERT [dbo].[db_Menu] ([MaMenu], [TenMenu], [LienKet], [MaMenuCha], [ThuTuMenu]) VALUES (4, N'Giới Thiệu', N'Default.aspx?modul=TinTuc&modulphu=ChiTietTinTuc&id=2', 0, 4)
INSERT [dbo].[db_Menu] ([MaMenu], [TenMenu], [LienKet], [MaMenuCha], [ThuTuMenu]) VALUES (5, N'Thanh Toán', N'Default.aspx?modul=TinTuc&modulphu=ChiTietTinTuc&id=3', 0, 5)
INSERT [dbo].[db_Menu] ([MaMenu], [TenMenu], [LienKet], [MaMenuCha], [ThuTuMenu]) VALUES (6, N'Quản Trị', N'/Login.aspx', 0, 6)
INSERT [dbo].[db_NhomQuangCao] ([NhomQuangCaoID], [TenNhomQuangCao], [ViTriQC], [ThuTuNhomQC], [AnhDaiDienQC]) VALUES (1, N'Logo', N'logo', 1, N'anhduc.jpg')
INSERT [dbo].[db_NhomQuangCao] ([NhomQuangCaoID], [TenNhomQuangCao], [ViTriQC], [ThuTuNhomQC], [AnhDaiDienQC]) VALUES (2, N'Banner', N'banner', 2, N'bannerweb.jpg')
INSERT [dbo].[db_NhomQuangCao] ([NhomQuangCaoID], [TenNhomQuangCao], [ViTriQC], [ThuTuNhomQC], [AnhDaiDienQC]) VALUES (5, N'Slide trang chủ', N'slide', 3, N'bona1.jpg')
INSERT [dbo].[db_NhomSanPham] ([NhomID], [TenNhom], [AnhDaiDien], [ThuTu], [SoSPHienThi]) VALUES (1, N'Sản Phẩm Mới Về', N'roa1.jpg', 1, 3)
INSERT [dbo].[db_NhomSanPham] ([NhomID], [TenNhom], [AnhDaiDien], [ThuTu], [SoSPHienThi]) VALUES (2, N'Sản Phẩm Được Mua Nhiều Nhất', N'roa1.jpg', 2, 3)
INSERT [dbo].[db_NhomSanPham] ([NhomID], [TenNhom], [AnhDaiDien], [ThuTu], [SoSPHienThi]) VALUES (3, N'Sản Phẩm Giảm Giá', N'roa1.jpg', 3, 3)
INSERT [dbo].[db_QuangCao] ([QuangCaoID], [TenQC], [LoaiQC], [AnhQC], [LienKet], [ThuTuQC], [NhomQuangCaoID]) VALUES (1, N'Logo web', NULL, N'anhduc.jpg', N'/                                                 ', 1, 1)
INSERT [dbo].[db_QuangCao] ([QuangCaoID], [TenQC], [LoaiQC], [AnhQC], [LienKet], [ThuTuQC], [NhomQuangCaoID]) VALUES (2, N'Banner web', NULL, N'bannerweb.jpg', N'                                                  ', 1, 2)
INSERT [dbo].[db_QuangCao] ([QuangCaoID], [TenQC], [LoaiQC], [AnhQC], [LienKet], [ThuTuQC], [NhomQuangCaoID]) VALUES (3, N'Slide 1', NULL, N'slide1.jpg', N'                                                  ', 1, 5)
INSERT [dbo].[db_QuangCao] ([QuangCaoID], [TenQC], [LoaiQC], [AnhQC], [LienKet], [ThuTuQC], [NhomQuangCaoID]) VALUES (4, N'Slide 2', NULL, N'slide2.jpg', N'                                                  ', 2, 5)
INSERT [dbo].[db_QuangCao] ([QuangCaoID], [TenQC], [LoaiQC], [AnhQC], [LienKet], [ThuTuQC], [NhomQuangCaoID]) VALUES (5, N'Slide 3', NULL, N'slide3.jpg', N'                                                  ', 3, 5)
INSERT [dbo].[db_QuyenDangNhap] ([MaQuyen], [TenQuyen]) VALUES (1, N'QuanTri')
INSERT [dbo].[db_SanPham] ([MaSP], [TenSP], [AnhSP], [SoLuongSP], [GiaSP], [MoTaSP], [NgayTao], [NgayHuy], [MaDM], [NhomID]) VALUES (1, N'Áo thi đấu Real Madrid sân nhà ', N'realsannha.jpg', 100, 100000, N'<div>
	Chất liệu: Cotton&nbsp;</div>
<div>
	Màu: Trắng&nbsp;</div>
<div>
	Size: S, M, L, XL&nbsp;</div>
<div>
	Xuất Xứ: Việt Nam<br />
	&nbsp;</div>
<div style="text-align: center;">
	<img src="../pic/SanPham/realsannha1.jpg" alt="Áo Real"/></div>
	<img src="../pic/SanPham/realsannha2.jpg" alt="Áo Real"/></div>', CAST(N'2018-04-22 00:00:00.000' AS DateTime), CAST(N'2018-04-22 00:00:00.000' AS DateTime), 1, 1)
INSERT [dbo].[db_SanPham] ([MaSP], [TenSP], [AnhSP], [SoLuongSP], [GiaSP], [MoTaSP], [NgayTao], [NgayHuy], [MaDM], [NhomID]) VALUES (2, N'Áo thi đấu Manchester United sân khách', N'musankhach.jpg', 50, 100000, N'<div>
	Chất liệu: Cotton&nbsp;</div>
<div>
	Màu: Đen xám&nbsp;</div>
<div>
	Size: S, M, L, XL&nbsp;</div>
<div>
	Xuất Xứ: Việt Nam<br />
	&nbsp;</div>
<div style="text-align: center;">
	<img src="../pic/SanPham/mukhach1.jpg" alt="Áo MU"/></div>
	<img src="../pic/SanPham/mukhach2.jpg" alt="Áo MU"/></div>', CAST(N'2018-04-22 00:00:00.000' AS DateTime), CAST(N'2018-04-22 00:00:00.000' AS DateTime), 1, 2)
INSERT [dbo].[db_SanPham] ([MaSP], [TenSP], [AnhSP], [SoLuongSP], [GiaSP], [MoTaSP], [NgayTao], [NgayHuy], [MaDM], [NhomID]) VALUES (3, N'Áo thi đấu Barcelona sân nhà', N'barsannha.jpg', 50, 100000, N'<div>
	Chất liệu: Cotton&nbsp;</div>
<div>
	Màu: Xanh Tím&nbsp;</div>
<div>
	Size: S, M, L, XL&nbsp;</div>
<div>
	Xuất Xứ: Việt Nam<br />
	&nbsp;</div>
<div style="text-align: center;">
	<img src="../pic/SanPham/barsannha1.jpg" alt="Áo BAR"/></div>
	<img src="../pic/SanPham/barsannha2.jpg" alt="Áo BAR"/></div>', CAST(N'2018-04-22 00:00:00.000' AS DateTime), CAST(N'2018-04-22 00:00:00.000' AS DateTime), 1, 3)
INSERT [dbo].[db_SanPham] ([MaSP], [TenSP], [AnhSP], [SoLuongSP], [GiaSP], [MoTaSP], [NgayTao], [NgayHuy], [MaDM], [NhomID]) VALUES (4, N'Giày thi đấu Nike F90', N'nike3.jpg', 25, 950000, N'<div>
	Chất liệu: Da tổng hợp&nbsp;</div>
<div>
	Màu: Đen&nbsp;</div>
<div>
	Size: 38, 39, 40, 41, 42&nbsp;</div>
<div>
	Xuất Xứ: Việt Nam<br />
	&nbsp;</div>
<div style="text-align: center;">
	<img alt="Giày Nike F90 đen" src="nike3.jpg" /></div>', CAST(N'2018-04-22 00:00:00.000' AS DateTime), CAST(N'2018-04-22 00:00:00.000' AS DateTime), 2, 1)
INSERT [dbo].[db_SanPham] ([MaSP], [TenSP], [AnhSP], [SoLuongSP], [GiaSP], [MoTaSP], [NgayTao], [NgayHuy], [MaDM], [NhomID]) VALUES (5, N'Giày thi đấu Nike F90 Tím', N'nike4.jpg', 25, 950000, N'<div>
	Chất liệu: Da tổng hợp&nbsp;</div>
<div>
	Màu: Tím&nbsp;</div>
<div>
	Size: 38, 39, 40, 41, 42&nbsp;</div>
<div>
	Xuất Xứ: Việt Nam<br />
	&nbsp;</div>
<div style="text-align: center;">
	<img alt="Giày Nike F90 tím" src="nike4.jpg" /></div>', CAST(N'2018-04-22 00:00:00.000' AS DateTime), CAST(N'2018-04-22 00:00:00.000' AS DateTime), 2, 2)
INSERT [dbo].[db_SanPham] ([MaSP], [TenSP], [AnhSP], [SoLuongSP], [GiaSP], [MoTaSP], [NgayTao], [NgayHuy], [MaDM], [NhomID]) VALUES (6, N'Giày thi đấu Nike cổ cao F1', N'nike2.jpg', 25, 1000000, N'<div>
	Chất liệu: Da tổng hợp&nbsp;</div>
<div>
	Màu: Xanh dạ quang&nbsp;</div>
<div>
	Size: 38, 39, 40, 41, 42&nbsp;</div>
<div>
	Xuất Xứ: Việt Nam<br />
	&nbsp;</div>
<div style="text-align: center;">
	<img alt="Giày Nike F1" src="nike2.jpg" /></div>', CAST(N'2018-04-22 00:00:00.000' AS DateTime), CAST(N'2018-04-22 00:00:00.000' AS DateTime), 2, 3)
INSERT [dbo].[db_SanPham] ([MaSP], [TenSP], [AnhSP], [SoLuongSP], [GiaSP], [MoTaSP], [NgayTao], [NgayHuy], [MaDM], [NhomID]) VALUES (7, N'Găng tay thủ môn Adidas T1', N'gang3.jpg', 25, 300000, N'<div>
	Chất liệu: Da tổng hợp&nbsp;</div>
<div>
	Màu: Vàng đen&nbsp;</div>
<div>
	Size: 38, 39, 40, 41, 42&nbsp;</div>
<div>
	Xuất Xứ: Việt Nam<br />
	&nbsp;</div>
<div style="text-align: center;">
	<img alt="Găng tay thủ môn Adidas F1" src="gang3.jpg" /></div>
', CAST(N'2018-04-22 00:00:00.000' AS DateTime), CAST(N'2018-04-22 00:00:00.000' AS DateTime), 3, 1)
INSERT [dbo].[db_SanPham] ([MaSP], [TenSP], [AnhSP], [SoLuongSP], [GiaSP], [MoTaSP], [NgayTao], [NgayHuy], [MaDM], [NhomID]) VALUES (8, N'Găng tay thủ môn Adidas F20', N'gang1.jpg', 25, 250000, N'<div>
	Chất liệu: Da tổng hợp&nbsp;</div>
<div>
	Màu: Xanh trắng&nbsp;</div>
<div>
	Size: 38, 39, 40, 41, 42&nbsp;</div>
<div>
	Xuất Xứ: Việt Nam<br />
	&nbsp;</div>
<div style="text-align: center;">
	<img alt="Găng tay thủ môn Adidas F20" src="gang1.jpg" /></div>
', CAST(N'2018-04-22 00:00:00.000' AS DateTime), CAST(N'2018-04-22 00:00:00.000' AS DateTime), 3, 2)
INSERT [dbo].[db_SanPham] ([MaSP], [TenSP], [AnhSP], [SoLuongSP], [GiaSP], [MoTaSP], [NgayTao], [NgayHuy], [MaDM], [NhomID]) VALUES (9, N'Găng tay thủ môn Janus', N'gang4.jpg', 25, 275000, N'<div>
	Chất liệu: Da tổng hợp&nbsp;</div>
<div>
	Màu: Xanh trắng&nbsp;</div>
<div>
	Size: 38, 39, 40, 41, 42&nbsp;</div>
<div>
	Xuất Xứ: Việt Nam<br />
	&nbsp;</div>
<div style="text-align: center;">
	<img alt="Găng tay thủ môn Janus" src="gang4.jpg" /></div>', CAST(N'2018-04-22 00:00:00.000' AS DateTime), CAST(N'2018-04-22 00:00:00.000' AS DateTime), 3, 3)
INSERT [dbo].[db_SanPham] ([MaSP], [TenSP], [AnhSP], [SoLuongSP], [GiaSP], [MoTaSP], [NgayTao], [NgayHuy], [MaDM], [NhomID]) VALUES (10, N'Vớ bóng đá Nike Barca', N'vo3.jpeg', 50, 50000, N'<div>
	Chất liệu: Cotton&nbsp;</div>
<div>
	Màu: Hồng&nbsp;</div>
<div>
	Size: Free&nbsp;</div>
<div>
	Xuất Xứ: Việt Nam<br />
	&nbsp;</div>
<div style="text-align: center;">
	<img alt="Vớ bóng đá Nike Barca" src="vo3.jepg" /></div>', CAST(N'2018-04-22 00:00:00.000' AS DateTime), CAST(N'2018-04-22 00:00:00.000' AS DateTime), 4, 1)
INSERT [dbo].[db_SanPham] ([MaSP], [TenSP], [AnhSP], [SoLuongSP], [GiaSP], [MoTaSP], [NgayTao], [NgayHuy], [MaDM], [NhomID]) VALUES (11, N'Vớ bóng đá Nike 1', N'vo2.jpg', 50, 40000, N'<div>
	Chất liệu: Cotton&nbsp;</div>
<div>
	Màu: Đỏ đô&nbsp;</div>
<div>
	Size: Free&nbsp;</div>
<div>
	Xuất Xứ: Việt Nam<br />
	&nbsp;</div>
<div style="text-align: center;">
	<img alt="Vớ bóng đá Nike 1" src="vo2.jpg" /></div>
', CAST(N'2018-04-22 00:00:00.000' AS DateTime), CAST(N'2018-04-22 00:00:00.000' AS DateTime), 4, 2)
INSERT [dbo].[db_SanPham] ([MaSP], [TenSP], [AnhSP], [SoLuongSP], [GiaSP], [MoTaSP], [NgayTao], [NgayHuy], [MaDM], [NhomID]) VALUES (12, N'Vớ bóng đá Adidas', N'vo4.jpg', 50, 45000, N'<div>
	Chất liệu: Cotton&nbsp;</div>
<div>
	Màu: Đen&nbsp;</div>
<div>
	Size: Free&nbsp;</div>
<div>
	Xuất Xứ: Việt Nam<br />
	&nbsp;</div>
<div style="text-align: center;">
	<img alt="Vớ bóng đá Adidas" src="vo4.jpg" /></div>', CAST(N'2018-04-22 00:00:00.000' AS DateTime), CAST(N'2018-04-22 00:00:00.000' AS DateTime), 4, 3)
INSERT [dbo].[db_SanPham] ([MaSP], [TenSP], [AnhSP], [SoLuongSP], [GiaSP], [MoTaSP], [NgayTao], [NgayHuy], [MaDM], [NhomID]) VALUES (13, N'Banh WC 2014 Adidas', N'banh2.jpg', 10, 1500000, N'<div>
	Chất liệu: Da tổng hợp&nbsp;</div>
<div>
	Size: 5&nbsp;</div>
<div>
	Xuất Xứ: Việt Nam<br />
	&nbsp;</div>
<div style="text-align: center;">
	<img alt="Banh WC 2014 Adidas" src="banh2.jpg" /></div>', CAST(N'2018-04-22 00:00:00.000' AS DateTime), CAST(N'2018-04-22 00:00:00.000' AS DateTime), 5, 1)
INSERT [dbo].[db_SanPham] ([MaSP], [TenSP], [AnhSP], [SoLuongSP], [GiaSP], [MoTaSP], [NgayTao], [NgayHuy], [MaDM], [NhomID]) VALUES (14, N'Banh UEFA Champion League', N'banh3.jpg', 10, 1450000, N'<div>
	Chất liệu: Da tổng hợp&nbsp;</div>
<div>
	Size: 5&nbsp;</div>
<div>
	Xuất Xứ: Việt Nam<br />
	&nbsp;</div>
<div style="text-align: center;">
	<img alt="Banh UEFA Champion League" src="banh3.jpg" /></div>', CAST(N'2018-04-22 00:00:00.000' AS DateTime), CAST(N'2018-04-22 00:00:00.000' AS DateTime), 5, 2)
INSERT [dbo].[db_SanPham] ([MaSP], [TenSP], [AnhSP], [SoLuongSP], [GiaSP], [MoTaSP], [NgayTao], [NgayHuy], [MaDM], [NhomID]) VALUES (15, N'Banh V-League', N'banh4.jpg', 5, 1000000, N'<div>
	Chất liệu: Da tổng hợp&nbsp;</div>
<div>
	Size: 5&nbsp;</div>
<div>
	Xuất Xứ: Việt Nam<br />
	&nbsp;</div>
<div style="text-align: center;">
	<img alt="Banh V-league" src="banh4.jpg" /></div>', CAST(N'2018-04-22 00:00:00.000' AS DateTime), CAST(N'2018-04-22 00:00:00.000' AS DateTime), 5, 3)
INSERT [dbo].[db_SanPham] ([MaSP], [TenSP], [AnhSP], [SoLuongSP], [GiaSP], [MoTaSP], [NgayTao], [NgayHuy], [MaDM], [NhomID]) VALUES (16, N'Áo thi đấu Chelsea sân nhà', N'chesannha.jpeg', 50, 100000, N'<div>
	Chất liệu: Cotton&nbsp;</div>
<div>
	Màu: Xanh Dương&nbsp;</div>
<div>
	Size: S, M, L, XL&nbsp;</div>
<div>
	Xuất Xứ: Việt Nam<br />
	&nbsp;</div>
<div style="text-align: center;">
	<img src="../pic/SanPham/che1.jpg" alt="Áo Chelsea"/></div>
	<img src="../pic/SanPham/che2.jpg" alt="Áo Chelsea"/></div>', CAST(N'2018-04-22 00:00:00.000' AS DateTime), CAST(N'2018-04-22 00:00:00.000' AS DateTime), 1, NULL)
INSERT [dbo].[db_SanPham] ([MaSP], [TenSP], [AnhSP], [SoLuongSP], [GiaSP], [MoTaSP], [NgayTao], [NgayHuy], [MaDM], [NhomID]) VALUES (17, N'Áo thi đấu Tottenham sân nhà', N'totsannha.jpg', 50, 100000, N'<div>
	Chất liệu: Cotton&nbsp;</div>
<div>
	Màu: Trắng&nbsp;</div>
<div>
	Size: S, M, L, XL&nbsp;</div>
<div>
	Xuất Xứ: Việt Nam<br />
	&nbsp;</div>
<div style="text-align: center;">
	<img src="../pic/SanPham/tot1.jpg" alt="Áo Tottenham"/></div>
	<img src="../pic/SanPham/tot2.jpg" alt="Áo Tottenham"/></div>', CAST(N'2018-04-22 00:00:00.000' AS DateTime), CAST(N'2018-04-22 00:00:00.000' AS DateTime), 1, NULL)
INSERT [dbo].[db_SanPham] ([MaSP], [TenSP], [AnhSP], [SoLuongSP], [GiaSP], [MoTaSP], [NgayTao], [NgayHuy], [MaDM], [NhomID]) VALUES (18, N'Áo thi đấu Tây Ban Nha', N'tbn.jpg', 50, 100000, N'<div>
	Chất liệu: Cotton&nbsp;</div>
<div>
	Màu: Trắng&nbsp;</div>
<div>
	Size: S, M, L, XL&nbsp;</div>
<div>
	Xuất Xứ: Việt Nam<br />
	&nbsp;</div>
<div style="text-align: center;">
	<img src="../pic/SanPham/tbn1.jpg" alt="Áo Tây Ban Nha"/></div>
	<img src="../pic/SanPham/tbn2.jpg" alt="Áo Tây Ban Nha"/></div>', CAST(N'2018-04-22 00:00:00.000' AS DateTime), CAST(N'2018-04-22 00:00:00.000' AS DateTime), 1, NULL)
INSERT [dbo].[db_SanPham] ([MaSP], [TenSP], [AnhSP], [SoLuongSP], [GiaSP], [MoTaSP], [NgayTao], [NgayHuy], [MaDM], [NhomID]) VALUES (19, N'Áo thi đấu Alectico Madrid sân nhà', N'atmsannha.jpg', 50, 100000, N'<div>
	Chất liệu: Cotton&nbsp;</div>
<div>
	Màu: Trắng Đỏ&nbsp;</div>
<div>
	Size: S, M, L, XL&nbsp;</div>
<div>
	Xuất Xứ: Việt Nam<br />
	&nbsp;</div>
<div style="text-align: center;">
	<img src="../pic/SanPham/atm1.jpg" alt="Áo ATM"/></div>
	<img src="../pic/SanPham/atm2.jpg" alt="Áo ATM"/></div>', CAST(N'2018-04-22 00:00:00.000' AS DateTime), CAST(N'2018-04-22 00:00:00.000' AS DateTime), 1, NULL)
INSERT [dbo].[db_SanPham] ([MaSP], [TenSP], [AnhSP], [SoLuongSP], [GiaSP], [MoTaSP], [NgayTao], [NgayHuy], [MaDM], [NhomID]) VALUES (20, N'Áo thi đấu Belgium sân khách', N'bel.jpg', 50, 100000, N'<div>
	Chất liệu: Cotton&nbsp;</div>
<div>
	Màu: Xanh&nbsp;</div>
<div>
	Size: S, M, L, XL&nbsp;</div>
<div>
	Xuất Xứ: Việt Nam<br />
	&nbsp;</div>
<div style="text-align: center;">
	<img src="../pic/SanPham/bel1.jpg" alt="Áo Belgium"/></div>
	<img src="../pic/SanPham/bel2.jpg" alt="Áo Belgium"/></div>', CAST(N'2018-04-22 00:00:00.000' AS DateTime), CAST(N'2018-04-22 00:00:00.000' AS DateTime), 1, NULL)
INSERT [dbo].[db_SanPham] ([MaSP], [TenSP], [AnhSP], [SoLuongSP], [GiaSP], [MoTaSP], [NgayTao], [NgayHuy], [MaDM], [NhomID]) VALUES (21, N'Áo thi đấu Real sân khách', N'realsankhach.jpg', 50, 100000, N'<div>
	Chất liệu: Cotton&nbsp;</div>
<div>
	Màu: Xanh rêu&nbsp;</div>
<div>
	Size: S, M, L, XL&nbsp;</div>
<div>
	Xuất Xứ: Việt Nam<br />
	&nbsp;</div>
<div style="text-align: center;">
	<img src="../pic/SanPham/realkhach1.jpg" alt="Áo Real"/></div>
	<img src="../pic/SanPham/realkhach2.jpg" alt="Áo Real"/></div>', CAST(N'2018-04-22 00:00:00.000' AS DateTime), CAST(N'2018-04-22 00:00:00.000' AS DateTime), 1, NULL)
INSERT [dbo].[db_SanPham] ([MaSP], [TenSP], [AnhSP], [SoLuongSP], [GiaSP], [MoTaSP], [NgayTao], [NgayHuy], [MaDM], [NhomID]) VALUES (22, N'Áo thi đấu Mu sân nhà', N'musannha.jpg', 50, 100000, N'<div>
	Chất liệu: Cotton&nbsp;</div>
<div>
	Màu: Đỏ&nbsp;</div>
<div>
	Size: S, M, L, XL&nbsp;</div>
<div>
	Xuất Xứ: Việt Nam<br />
	&nbsp;</div>
<div style="text-align: center;">
	<img src="../pic/SanPham/munha1.jpg" alt="Áo MU"/></div>
	<img src="../pic/SanPham/munha2.jpg" alt="Áo MU"/></div>', CAST(N'2018-04-22 00:00:00.000' AS DateTime), CAST(N'2018-04-22 00:00:00.000' AS DateTime), 1, NULL)
INSERT [dbo].[db_SanPham] ([MaSP], [TenSP], [AnhSP], [SoLuongSP], [GiaSP], [MoTaSP], [NgayTao], [NgayHuy], [MaDM], [NhomID]) VALUES (23, N'Giày thi đấu adidas X1', N'adidas1.jpg', 25, 980000, N'<div>
	Chất liệu: Da tổng hợp&nbsp;</div>
<div>
	Màu: Xanh&nbsp;</div>
<div>
	Size: 38, 39, 40, 41, 42&nbsp;</div>
<div>
	Xuất Xứ: Việt Nam<br />
	&nbsp;</div>
', CAST(N'2018-04-22 00:00:00.000' AS DateTime), CAST(N'2018-04-22 00:00:00.000' AS DateTime), 2, NULL)
INSERT [dbo].[db_SanPham] ([MaSP], [TenSP], [AnhSP], [SoLuongSP], [GiaSP], [MoTaSP], [NgayTao], [NgayHuy], [MaDM], [NhomID]) VALUES (24, N'Giày thi đấu adidas 3 sọc', N'adidas2.jpg', 25, 850000, N'<div>
	Chất liệu: Da tổng hợp&nbsp;</div>
<div>
	Màu: Đen trắng&nbsp;</div>
<div>
	Size: 38, 39, 40, 41, 42&nbsp;</div>
<div>
	Xuất Xứ: Việt Nam<br />
	&nbsp;</div>
', CAST(N'2018-04-22 00:00:00.000' AS DateTime), CAST(N'2018-04-22 00:00:00.000' AS DateTime), 2, NULL)
INSERT [dbo].[db_SanPham] ([MaSP], [TenSP], [AnhSP], [SoLuongSP], [GiaSP], [MoTaSP], [NgayTao], [NgayHuy], [MaDM], [NhomID]) VALUES (25, N'Giày thi đấu adidas R1', N'adidas3.jpg', 25, 965000, N'<div>
	Chất liệu: Da tổng hợp&nbsp;</div>
<div>
	Màu: Xám&nbsp;</div>
<div>
	Size: 38, 39, 40, 41, 42&nbsp;</div>
<div>
	Xuất Xứ: Việt Nam<br />
	&nbsp;</div>
', CAST(N'2018-04-22 00:00:00.000' AS DateTime), CAST(N'2018-04-22 00:00:00.000' AS DateTime), 2, NULL)
INSERT [dbo].[db_SanPham] ([MaSP], [TenSP], [AnhSP], [SoLuongSP], [GiaSP], [MoTaSP], [NgayTao], [NgayHuy], [MaDM], [NhomID]) VALUES (26, N'Vớ bóng đá Adidas', N'vo1.jpg', 50, 65000, N'<div>
	Chất liệu: Cotton&nbsp;</div>
<div>
	Màu: Xanh&nbsp;</div>
<div>
	Size: Free&nbsp;</div>
<div>
	Xuất Xứ: Việt Nam<br />
	&nbsp;</div>
', CAST(N'2018-04-22 00:00:00.000' AS DateTime), CAST(N'2018-04-22 00:00:00.000' AS DateTime), 4, NULL)
INSERT [dbo].[db_SanPham] ([MaSP], [TenSP], [AnhSP], [SoLuongSP], [GiaSP], [MoTaSP], [NgayTao], [NgayHuy], [MaDM], [NhomID]) VALUES (27, N'ajfksd', N'atmsankhach.jpg', 100, 1000000, N'aaa', CAST(N'2018-12-22 02:07:40.000' AS DateTime), CAST(N'2018-12-22 02:07:40.000' AS DateTime), 1, 1)
INSERT [dbo].[db_TinTuc] ([TinTucID], [TieuDe], [AnhDaiDien], [MoTa], [NgayDang], [LuotXem], [ChiTiet], [ThuTu], [MaDM]) VALUES (1, N'Liên hệ với chúng tôi', N'bona.jpg', N'Thông tin liên hệ', CAST(N'2018-04-22 00:00:00.000' AS DateTime), 46, N'<div>
Mọi nhu cầu liên hệ của quý khách, vui lòng liên hệ với chúng tôi theo thông tin dưới đây.<br/>

<b>CÔNG TY TNHH MTV ANH ĐỨC SPORTS</b><br/>

Địa chỉ : 280 Đường 30/4, P.Chánh Nghĩa, Tp.Thủ Dầu Một, Bình Dương.<br/>

Điện thoại Khách lẻ: 0274 6514 811 hoặc 0915.654.439<br/>

Điện thoại khách Sỉ : 0937 020 973 hoặc 0909.588.098   <br/> 

Email :depdocla86@gmail.com<br/>

Rất hân hạnh được phục vụ quý khách!<br/>
</div>', 3, 1)
INSERT [dbo].[db_TinTuc] ([TinTucID], [TieuDe], [AnhDaiDien], [MoTa], [NgayDang], [LuotXem], [ChiTiet], [ThuTu], [MaDM]) VALUES (2, N'Giới thiệu công ty', N'gioithieu.jpg', N'CÔNG TY TNHH MTV ANH ĐỨC SPORTS

Công Ty TNHH MTV Anh Đức Sports  tiền thân là Shop Thể Thao Anh Đức được thành lập chính xác là từ ngày 25/09/2009 và tính đến nay cũng đã được 7 năm.

Quy mô ban đầu của Công ty chỉ là một văn phòng nhỏ, với hơn 04 cán bộ công nhân viên, và số vốn ít ỏi, bất chấp khó khăn, gian khổ, làm việc trong điều kiện hết sức khó khăn, thiếu thốn đủ đường, Lãnh đạo Công ty cùng với cán bộ công nhân viên đã động viên nhau làm động lực “khởi nghiệp” từ những ngõ ngách nẽo đường nhỏ nhất để tìm kiếm khách hàng, có những lúc quên ăn quên ngủ nhưng Công ty vẫn quyết tâm thực hiện, trước nhất là vì mục tiêu tồn tại và sau đó là khẳng định uy tín và thương hiệu của mình.

Trong suốt quá trình hoạt động, không thể kể hết những khó khăn chồng chất cũng như những trở ngại không lường mà tập thể cán bộ công nhân viên Công ty phải vượt qua từ những ngày tháng khởi nghiệp, đổi lại đến nay công ty đã khẳng định được uy tín, thương hiệu của mình trong ngành nghề thể thao. Trải qua 6 năm xây dựng và phát triển, đến ngày 24/06/2015 tại địa chỉ số 280 đường 30/4,phường chánh nghĩa, tp thủ dầu một, Bình Dương công ty được chính thức thành lập với thương hiệu là Công Ty TNHH MTV Anh Đức Sports đã và đang ngày càng không chỉ khẳng định được vị thế của mình trong lĩnh vực thể thao tại thị trường Bình Dương, mà còn trên cả thị trường Việt Nam và sẽ còn vươn tầm xa hơn nữa ra thị trường quốc tế trong tương lai. Một hành trình phát triển liên tục không ngừng, Công ty đã gặt hái được nhiều thành tích đáng kể như  tốc độ tăng trưởng kinh doanh đều đạt 120% so với năm trước, quy mô và đội ngũ nhân sự tăng trưởng mạnh, số lượng khách hàng tăng cao, hệ thống đối tác dịch vụ đa dạng và hợp tác chặt chẽ.

Với slogan “TIẾP LỬA ĐAM MÊ” Công ty chúng tôi luôn hướng đến sứ mệnh nâng cao giá trị cuộc sống và sức khỏe con người thông qua việc cung cấp các dụng cụ trang phục tập luyện thể thao tốt nhất, chuyên  nghiệp nhất.

Để tồn tại trên thị trường cạnh tranh ngày càng khốc liệt và đáp ứng được yêu cầu ngày càng cao của thị trường cũng như sự phát triển không ngừng của đất nước, Công ty đã xây dựng chiến lược cho riêng mình, trong đó trọng tâm là đầu tư vào nguồn nhân lực chất lượng cao, bồi dưỡng, nâng cao trình độ cho cán bộ công nhân viên. Công ty TNHH MTV  Anh Đức Sports cung ứng trên 1000 sản phẩm như là các sản phẩm thể thao cao cấp chính hãng về bóng đá,chạy bộ, bơi lội, cầu lông…của các nhãn hàng nổi tiếng, uy tín trên thế giới: Nike, Adidas, Wilson…Bên cạnh đó, công ty còn sản xuất, và nhận may gia công theo yêu cầu với số lượng lớn. 

Đến với Anh Đức Sports  bạn sẽ được đội ngũ nhân viên nhiệt tình, năng động, có kinh nghiệm, tư vấn tận tình để dể lựa chọn được sản phẩm phù hợp nhất,chất lượng cao với giá cả hợp lý nhất. Chúng tôi mong muốn đưa sản phẩm cao cấp của công ty và các nhãn hàng nổi tiếng trên thế giới đến tận tay khách hàng.

Với hơn 200 đại lý phân phối trên toàn quốc, chúng tôi tin Anh Đức Sports  là sự  lựa chọn tốt nhất cho các khách hàng cũng như các đối tác. Anh Đức Sports là một kênh phân phối tin cậy giúp quý khách hàng tiếp cận dễ dàng hơn với những sản phẩm chính hãng và sản xuất gia công chất lượng, thông qua nhiều đại lý phân phối trên khắp cả nước. Công ty Anh Đức Sports không ngừng đổi mới công nghệ, trang bị máy móc, phương thức tổ chức và kết nối dịch vụ hiện đại, ứng dụng tiến bộ khoa học kỹ thuật vào đổi mới biện pháp quảng bá và kinh doanh  theo hướng thương mại điện tử. Qua đó, đã tạo được uy tín với các đối tác cung ứng dịch vụ, đồng thời tạo được nền móng vững chắc để Công ty phát triển trong điều kiện mới.

Có được những kết quả trên, không chỉ có sự nỗ lực cố gắng của Ban lãnh đạo và toàn thể cán bộ công nhân viên của Công ty mà còn là sự quan tâm, tạo điều kiện của các cơ quan, chính quyền địa phương, các đơn vị đối tác cả nước và trên hết là những khách hàng thân quen. Nhờ đó Công ty có thêm nhiều cơ hội để khẳng định vị thế của mình, không ngừng lớn mạnh, vươn cao, xây dựng hình ảnh doanh nghiệp có uy tín, góp phần vào sự phát triển thể thao và nền kinh tế Việt Nam. Đây cũng chính là động lực để Lãnh đạo, cán bộ công nhân viên Công ty tiếp tục vươn lên, gặt hái được nhiều thành tích cao hơn nữa trong thời gian tới.

Anh Đức Sports  luôn nỗ lực phát triển để trở thành một công ty thể thao hàng đầu Việt Nam. Hơn 2000 khách hàng lẻ thân thiết đã chọn và đến với chúng tôi hàng giờ, hàng ngày, hàng tháng, hàng năm. Đừng chần chờ nữa hãy đến với chúng tôi để được trãi nghiệm và cảm nhận sự hài lòng nhất.', CAST(N'2018-04-22 00:00:00.000' AS DateTime), 95, N'<div>
<b>CÔNG TY TNHH MTV ANH ĐỨC SPORTS</b></br>

Công Ty TNHH MTV Anh Đức Sports  tiền thân là Shop Thể Thao Anh Đức được thành lập chính xác là từ ngày 25/09/2009 và tính đến nay cũng đã được 7 năm.</br>

Quy mô ban đầu của Công ty chỉ là một văn phòng nhỏ, với hơn 04 cán bộ công nhân viên, và số vốn ít ỏi, bất chấp khó khăn, gian khổ, làm việc trong điều kiện hết sức khó khăn, thiếu thốn đủ đường, Lãnh đạo Công ty cùng với cán bộ công nhân viên đã động viên nhau làm động lực “khởi nghiệp” từ những ngõ ngách nẽo đường nhỏ nhất để tìm kiếm khách hàng, có những lúc quên ăn quên ngủ nhưng Công ty vẫn quyết tâm thực hiện, trước nhất là vì mục tiêu tồn tại và sau đó là khẳng định uy tín và thương hiệu của mình.</br>

Trong suốt quá trình hoạt động, không thể kể hết những khó khăn chồng chất cũng như những trở ngại không lường mà tập thể cán bộ công nhân viên Công ty phải vượt qua từ những ngày tháng khởi nghiệp, đổi lại đến nay công ty đã khẳng định được uy tín, thương hiệu của mình trong ngành nghề thể thao. Trải qua 6 năm xây dựng và phát triển, đến ngày 24/06/2015 tại địa chỉ số 280 đường 30/4,phường chánh nghĩa, tp thủ dầu một, Bình Dương công ty được chính thức thành lập với thương hiệu là Công Ty TNHH MTV Anh Đức Sports đã và đang ngày càng không chỉ khẳng định được vị thế của mình trong lĩnh vực thể thao tại thị trường Bình Dương, mà còn trên cả thị trường Việt Nam và sẽ còn vươn tầm xa hơn nữa ra thị trường quốc tế trong tương lai. Một hành trình phát triển liên tục không ngừng, Công ty đã gặt hái được nhiều thành tích đáng kể như  tốc độ tăng trưởng kinh doanh đều đạt 120% so với năm trước, quy mô và đội ngũ nhân sự tăng trưởng mạnh, số lượng khách hàng tăng cao, hệ thống đối tác dịch vụ đa dạng và hợp tác chặt chẽ.</br>

Với slogan “TIẾP LỬA ĐAM MÊ” Công ty chúng tôi luôn hướng đến sứ mệnh nâng cao giá trị cuộc sống và sức khỏe con người thông qua việc cung cấp các dụng cụ trang phục tập luyện thể thao tốt nhất, chuyên  nghiệp nhất.</br>

Để tồn tại trên thị trường cạnh tranh ngày càng khốc liệt và đáp ứng được yêu cầu ngày càng cao của thị trường cũng như sự phát triển không ngừng của đất nước, Công ty đã xây dựng chiến lược cho riêng mình, trong đó trọng tâm là đầu tư vào nguồn nhân lực chất lượng cao, bồi dưỡng, nâng cao trình độ cho cán bộ công nhân viên. Công ty TNHH MTV  Anh Đức Sports cung ứng trên 1000 sản phẩm như là các sản phẩm thể thao cao cấp chính hãng về bóng đá,chạy bộ, bơi lội, cầu lông…của các nhãn hàng nổi tiếng, uy tín trên thế giới: Nike, Adidas, Wilson…Bên cạnh đó, công ty còn sản xuất, và nhận may gia công theo yêu cầu với số lượng lớn. </br>

Đến với Anh Đức Sports  bạn sẽ được đội ngũ nhân viên nhiệt tình, năng động, có kinh nghiệm, tư vấn tận tình để dể lựa chọn được sản phẩm phù hợp nhất,chất lượng cao với giá cả hợp lý nhất. Chúng tôi mong muốn đưa sản phẩm cao cấp của công ty và các nhãn hàng nổi tiếng trên thế giới đến tận tay khách hàng.</br>

Với hơn 200 đại lý phân phối trên toàn quốc, chúng tôi tin Anh Đức Sports  là sự  lựa chọn tốt nhất cho các khách hàng cũng như các đối tác. Anh Đức Sports là một kênh phân phối tin cậy giúp quý khách hàng tiếp cận dễ dàng hơn với những sản phẩm chính hãng và sản xuất gia công chất lượng, thông qua nhiều đại lý phân phối trên khắp cả nước. Công ty Anh Đức Sports không ngừng đổi mới công nghệ, trang bị máy móc, phương thức tổ chức và kết nối dịch vụ hiện đại, ứng dụng tiến bộ khoa học kỹ thuật vào đổi mới biện pháp quảng bá và kinh doanh  theo hướng thương mại điện tử. Qua đó, đã tạo được uy tín với các đối tác cung ứng dịch vụ, đồng thời tạo được nền móng vững chắc để Công ty phát triển trong điều kiện mới.</br>

Có được những kết quả trên, không chỉ có sự nỗ lực cố gắng của Ban lãnh đạo và toàn thể cán bộ công nhân viên của Công ty mà còn là sự quan tâm, tạo điều kiện của các cơ quan, chính quyền địa phương, các đơn vị đối tác cả nước và trên hết là những khách hàng thân quen. Nhờ đó Công ty có thêm nhiều cơ hội để khẳng định vị thế của mình, không ngừng lớn mạnh, vươn cao, xây dựng hình ảnh doanh nghiệp có uy tín, góp phần vào sự phát triển thể thao và nền kinh tế Việt Nam. Đây cũng chính là động lực để Lãnh đạo, cán bộ công nhân viên Công ty tiếp tục vươn lên, gặt hái được nhiều thành tích cao hơn nữa trong thời gian tới.</br>

Anh Đức Sports  luôn nỗ lực phát triển để trở thành một công ty thể thao hàng đầu Việt Nam. Hơn 2000 khách hàng lẻ thân thiết đã chọn và đến với chúng tôi hàng giờ, hàng ngày, hàng tháng, hàng năm. Đừng chần chờ nữa hãy đến với chúng tôi để được trãi nghiệm và cảm nhận sự hài lòng nhất.</br>
</div>', 1, 1)
INSERT [dbo].[db_TinTuc] ([TinTucID], [TieuDe], [AnhDaiDien], [MoTa], [NgayDang], [LuotXem], [ChiTiet], [ThuTu], [MaDM]) VALUES (3, N'Hướng dẫn thanh toán, đặt hàng', N'bona.jpg', N'Quý khách có thể đặt hàng trên website thông qua các bước sau:
1. Tìm kiểm sản phảm
2. Chọn đặt hàng hoặc thêm vào giỏ hàng
3. Kiểm tra thông tin giỏ hàng, điền thông tin liên hệ
4. Gửi yêu cầu đặ', CAST(N'2018-04-22 00:00:00.000' AS DateTime), 119, N'<div>
Quý khách có thể đặt hàng trên website thông qua các bước sau:</br>
1. Tìm kiểm sản phẩm.</br>
2. Chọn đặt hàng hoặc thêm vào giỏ hàng.</br>
3. Kiểm tra thông tin giỏ hàng, điền thông tin liên hệ.</br>
4. Gửi yêu cầu đặt hàng.</br>
</div>', 2, 1)
ALTER TABLE [dbo].[db_ChiTietDonDatHang]  WITH CHECK ADD  CONSTRAINT [FK_db_ChiTietDonDatHang_db_SanPham] FOREIGN KEY([MaSP])
REFERENCES [dbo].[db_SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[db_ChiTietDonDatHang] CHECK CONSTRAINT [FK_db_ChiTietDonDatHang_db_SanPham]
GO
ALTER TABLE [dbo].[db_ChiTietDonHang]  WITH CHECK ADD  CONSTRAINT [FK_db_ChiTietDonHang_db_HoaDon] FOREIGN KEY([MaHD])
REFERENCES [dbo].[db_HoaDon] ([MaHD])
GO
ALTER TABLE [dbo].[db_ChiTietDonHang] CHECK CONSTRAINT [FK_db_ChiTietDonHang_db_HoaDon]
GO
ALTER TABLE [dbo].[db_ChiTietDonHang]  WITH CHECK ADD  CONSTRAINT [FK_db_ChiTietDonHang_db_SanPham] FOREIGN KEY([MaSP])
REFERENCES [dbo].[db_SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[db_ChiTietDonHang] CHECK CONSTRAINT [FK_db_ChiTietDonHang_db_SanPham]
GO
ALTER TABLE [dbo].[db_HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_db_HoaDon_db_KhachHang] FOREIGN KEY([MaKH])
REFERENCES [dbo].[db_KhachHang] ([MaKH])
GO
ALTER TABLE [dbo].[db_HoaDon] CHECK CONSTRAINT [FK_db_HoaDon_db_KhachHang]
GO
ALTER TABLE [dbo].[db_SanPham]  WITH CHECK ADD  CONSTRAINT [FK_db_SanPham_db_DanhMuc] FOREIGN KEY([MaDM])
REFERENCES [dbo].[db_DanhMuc] ([MaDM])
GO
ALTER TABLE [dbo].[db_SanPham] CHECK CONSTRAINT [FK_db_SanPham_db_DanhMuc]
GO
ALTER TABLE [dbo].[db_SanPham]  WITH CHECK ADD  CONSTRAINT [FK_db_SanPham_db_NhomSanPham] FOREIGN KEY([NhomID])
REFERENCES [dbo].[db_NhomSanPham] ([NhomID])
GO
ALTER TABLE [dbo].[db_SanPham] CHECK CONSTRAINT [FK_db_SanPham_db_NhomSanPham]
GO
ALTER TABLE [dbo].[db_TinTuc]  WITH CHECK ADD  CONSTRAINT [FK_db_TinTuc_db_DanhMucTin] FOREIGN KEY([MaDM])
REFERENCES [dbo].[db_DanhMucTin] ([MaDM])
GO
ALTER TABLE [dbo].[db_TinTuc] CHECK CONSTRAINT [FK_db_TinTuc_db_DanhMucTin]
GO
/****** Object:  StoredProcedure [dbo].[CapNhatLuotXemTinTuc]    Script Date: 12/22/2018 9:51:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[CapNhatLuotXemTinTuc]
@id int
as
update db_TinTuc set LuotXem=LuotXem+1 where TinTucID=@id
GO
/****** Object:  StoredProcedure [dbo].[chitietdondathang_delete]    Script Date: 12/22/2018 9:51:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[chitietdondathang_delete]
@masp int,
@madondathang int
AS
BEGIN
	delete db_ChiTietDonDatHang where MaSP=@masp and MaDonDatHang=@madondathang
END


GO
/****** Object:  StoredProcedure [dbo].[chitietdondathang_inser]    Script Date: 12/22/2018 9:51:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[chitietdondathang_inser]
@masp int,
@madondathang int,
@soluongdat int,
@dongiadat float,
@ret int out
AS
BEGIN
	set @ret=1
	if(not exists(select * from db_ChiTietDonDatHang where @masp=MaSP and @madondathang=MaDonDatHang))
	begin
	insert into db_ChiTietDonDatHang(MaSP,MaDonDatHang,SoLuongDat,DonGiaDat) values(@masp,@madondathang,@soluongdat,@dongiadat)
	set @ret=2
	end
END


GO
/****** Object:  StoredProcedure [dbo].[chitietdondathang_update]    Script Date: 12/22/2018 9:51:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[chitietdondathang_update]
@masp int,
@madondathang int,
@soluongdat int,
@dongiadat float
AS
BEGIN
	update db_ChiTietDonDatHang set SoLuongDat=@soluongdat,DonGiaDat=@dongiadat where MaSP=@masp and MaDonDatHang=@madondathang
END


GO
/****** Object:  StoredProcedure [dbo].[chitietdonhang_delete]    Script Date: 12/22/2018 9:51:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[chitietdonhang_delete]
@masp int,
@mahoadon int
AS
BEGIN
	delete db_ChiTietDonHang where MaSP=@masp and MaHD=@mahoadon
END



GO
/****** Object:  StoredProcedure [dbo].[chitietdonhang_inser]    Script Date: 12/22/2018 9:51:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[chitietdonhang_inser]
@masp int,
@mahoadon int,
@soluong int,
@dongia float,
@ret int out
AS
BEGIN
	set @ret=1
	if(not exists(select * from db_ChiTietDonHang where @masp=MaSP and @mahoadon=MaHD))
	begin
	insert into db_ChiTietDonHang(MaHD,MaSP,SoLuong,DonGia) values(@mahoadon,@masp,@soluong,@dongia)
	set @ret=2
	end
END


GO
/****** Object:  StoredProcedure [dbo].[chitietdonhang_update]    Script Date: 12/22/2018 9:51:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[chitietdonhang_update]
@masp int,
@mahoadon int,
@soluong int,
@dongia float
AS
BEGIN
	update db_ChiTietDonHang set SoLuong=@soluong,DonGia=@dongia where MaSP=@masp and MaHD=@mahoadon
END


GO
/****** Object:  StoredProcedure [dbo].[dangky_delete]    Script Date: 12/22/2018 9:51:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[dangky_delete]
@tendangnhap varchar(50)
AS
BEGIN
	delete from db_DangKy where TenDangNhap=@tendangnhap
END


GO
/****** Object:  StoredProcedure [dbo].[dangky_inser]    Script Date: 12/22/2018 9:51:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[dangky_inser]
@tendangnhap varchar(50),
@matkhau varchar(50) ,
@emaildk varchar(50),
@diachidk nvarchar(50),
@tendaydu nvarchar(50),
@cauhoibaomat nvarchar(100),
@ngaysinh date,
@gioitinhdk nvarchar(10),
@maquyen int,
@ret int out
AS
BEGIN
	set @ret=1
	if(not exists(select * from db_DangKy where @tendangnhap=TenDangNhap))
	begin
	insert into db_DangKy(TenDangNhap,MatKhau,EmailDK,DiaChiDK,TenDayDu,CauHoiBaoMat,NgaySinh,GioiTinhDK,MaQuyen) values(@tendangnhap,@matkhau,@emaildk,@diachidk,@tendaydu,@cauhoibaomat,@ngaysinh,@gioitinhdk,@maquyen)
	set @ret=2
	end
END


GO
/****** Object:  StoredProcedure [dbo].[dangky_update]    Script Date: 12/22/2018 9:51:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[dangky_update]
@tendangnhap varchar(50),
@matkhau varchar(50) ,
@emaildk varchar(50),
@diachidk nvarchar(50),
@tendaydu nvarchar(50),
@cauhoibaomat nvarchar(100),
@ngaysinh date,
@gioitinhdk nvarchar(10),
@maquyen int
AS
BEGIN
	update db_DangKy set MatKhau=@matkhau,EmailDK=@emaildk,DiaChiDK=@diachidk,TenDayDu=@tendaydu,CauHoiBaoMat=@cauhoibaomat,NgaySinh=@ngaysinh,GioiTinhDK=@gioitinhdk,MaQuyen=@maquyen where TenDangNhap=@tendangnhap
END


GO
/****** Object:  StoredProcedure [dbo].[danhmuc_delete]    Script Date: 12/22/2018 9:51:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[danhmuc_delete]
@madm int
AS
BEGIN
	delete from db_DanhMuc where MaDM=@madm
	delete from db_SanPham where MaDM=@madm
END


GO
/****** Object:  StoredProcedure [dbo].[danhmuc_inser]    Script Date: 12/22/2018 9:51:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[danhmuc_inser]
@tendm nvarchar(50),
@anhdaidien nvarchar(100),
@thutu int,
@maDMcha int,
@ret int out
AS
BEGIN
	set @ret=1
	if(not exists(select * from db_DanhMuc where @tendm=TenDM))
	begin
	insert into db_DanhMuc(TenDM,AnhDaiDien,ThuTu,MaDMCha) values(@tendm,@anhdaidien,@thutu,@maDMcha)
	set @ret=2
	end
END


GO
/****** Object:  StoredProcedure [dbo].[danhmuc_update]    Script Date: 12/22/2018 9:51:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[danhmuc_update]
@madm int,
@tendm nvarchar(50),
@anhdaidien nvarchar(100),
@thutu int,
@maDMcha int
AS
BEGIN
	update db_DanhMuc set TenDM=@tendm,AnhDaiDien=@anhdaidien,ThuTu=@thutu,MaDMCha=@maDMcha where MaDM=@madm
END
GO
/****** Object:  StoredProcedure [dbo].[danhmuctin_delete]    Script Date: 12/22/2018 9:51:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[danhmuctin_delete]
@madm int
AS
BEGIN
	delete from db_DanhMucTin where MaDM=@madm
	delete from db_TinTuc where MaDM=@madm
END


GO
/****** Object:  StoredProcedure [dbo].[danhmuctin_inser]    Script Date: 12/22/2018 9:51:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[danhmuctin_inser]
@tendm nvarchar(50),
@anhdaidien nvarchar(100),
@thutu int,
@maDMcha int,
@ret int out
AS
BEGIN
	set @ret=1
	if(not exists(select * from db_DanhMuc where @tendm=TenDM))
	begin
	insert into db_DanhMucTin(TenDM,AnhDaiDien,ThuTu,MaDMCha) values(@tendm,@anhdaidien,@thutu,@maDMcha)
	set @ret=2
	end
END


GO
/****** Object:  StoredProcedure [dbo].[danhmuctin_update]    Script Date: 12/22/2018 9:51:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[danhmuctin_update]
@madm int,
@tendm nvarchar(50),
@anhdaidien nvarchar(100),
@thutu int,
@maDMcha int
AS
BEGIN
	update db_DanhMucTin set TenDM=@tendm,AnhDaiDien=@anhdaidien,ThuTu=@thutu,MaDMCha=@maDMcha where MaDM=@madm
END


GO
/****** Object:  StoredProcedure [dbo].[dondathang_delete]    Script Date: 12/22/2018 9:51:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[dondathang_delete]
@madondathang int
AS
BEGIN
	delete from db_ChiTietDonDatHang where MaDonDatHang=@madondathang
	delete from db_DonDatHang where MaDonDatHang=@madondathang
END


GO
/****** Object:  StoredProcedure [dbo].[dondathang_inser]    Script Date: 12/22/2018 9:51:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[dondathang_inser]
@ngaytao datetime,
@thanhtienhd float,
@tinhtrangdonhang nvarchar(300),
@makh int,
@tenkh nvarchar(50),
@sdtkh varchar(15),
@emailkh varchar(50),
@ret int out
AS
BEGIN
	set @ret=1
	begin
	insert into db_DonDatHang(NgayTao,ThanhTienDH,TinhTrangDonHang,MaKH,TenKH,sdtKH,EmailKH) values(@ngaytao,@thanhtienhd,@tinhtrangdonhang,@makh,@tenkh,@sdtkh,@emailkh)
	set @ret=2
	end
END


GO
/****** Object:  StoredProcedure [dbo].[dondathang_update]    Script Date: 12/22/2018 9:51:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[dondathang_update]
@madondathang int,
@ngaytao datetime,
@thanhtienhd float,
@tinhtrangdonhang nvarchar(300),
@makh int,
@tenkh nvarchar(50),
@sdtkh varchar(15),
@emailkh varchar(50)
AS
BEGIN
	update db_DonDatHang set NgayTao=@ngaytao,ThanhTienDH=@thanhtienhd,TinhTrangDonHang=@tinhtrangdonhang,MaKH=@makh,TenKH=@tenkh,sdtKH=@sdtkh,EmailKH=@emailkh where MaDonDatHang=@madondathang
END


GO
/****** Object:  StoredProcedure [dbo].[hoadon_delete]    Script Date: 12/22/2018 9:51:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[hoadon_delete]
@mahoadon int
AS
BEGIN
	delete from db_HoaDon where MaHD=@mahoadon
	delete from db_ChiTietDonHang where MaHD=@mahoadon
END


GO
/****** Object:  StoredProcedure [dbo].[hoadon_inser]    Script Date: 12/22/2018 9:51:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[hoadon_inser]
@ngaylap datetime,
@thanhtien float,
@manv int,
@tennv nvarchar(70),
@makh int,
@tenkh nvarchar(70),
@ret int out
AS
BEGIN
	set @ret=1
	begin
	insert into db_HoaDon(NgayLap,ThanhTien,MaNV,TenNV,MaKH,TenKH) values(@ngaylap,@thanhtien,@manv,@tennv,@makh,@makh)
	set @ret=2
	end
END


GO
/****** Object:  StoredProcedure [dbo].[hoadon_update]    Script Date: 12/22/2018 9:51:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[hoadon_update]
@mahoadon int,
@ngaylap datetime,
@thanhtien float,
@manv int,
@tennv nvarchar(70),
@makh int,
@tenkh nvarchar(70)
AS
BEGIN
	update db_HoaDon set NgayLap=@ngaylap,ThanhTien=@thanhtien,MaNV=@manv,TenNV=@tennv,MaKH=@makh,TenKH=@tenkh where MaHD=@mahoadon
END


GO
/****** Object:  StoredProcedure [dbo].[khachang_delete]    Script Date: 12/22/2018 9:51:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[khachang_delete]
@makh int
AS
BEGIN
	delete from db_KhachHang where MaKH=@makh
END


GO
/****** Object:  StoredProcedure [dbo].[khachang_inser]    Script Date: 12/22/2018 9:51:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[khachang_inser]
@tenkh nvarchar(50),
@diachikh nvarchar(100),
@sdtkh varchar(15),
@emailkh varchar(50),
@matkhau nvarchar(50),
@ret int out
AS
BEGIN
	set @ret=1
	begin
	insert into db_KhachHang(TenKh,DiaChiKH,sdtKH,EmailKH,MatKhau) values(@tenkh,@diachikh,@sdtkh,@emailkh,@matkhau)
	set @ret=2
	end
END


GO
/****** Object:  StoredProcedure [dbo].[khachang_update]    Script Date: 12/22/2018 9:51:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[khachang_update]
@makh int,
@tenkh nvarchar(50),
@diachikh nvarchar(100),
@sdtkh varchar(15),
@emailkh varchar(50),
@matkhau nvarchar(50)
AS
BEGIN
	update db_KhachHang set TenKh=@tenkh,DiaChiKH=@diachikh,sdtKH=@sdtkh,EmailKH=@emailkh, MatKhau=@matkhau where MaKH=@makh
END


GO
/****** Object:  StoredProcedure [dbo].[menu_delete]    Script Date: 12/22/2018 9:51:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[menu_delete]
@mamenu int
AS
BEGIN
	delete from db_Menu where MaMenu=@mamenu
END


GO
/****** Object:  StoredProcedure [dbo].[menu_inser]    Script Date: 12/22/2018 9:51:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[menu_inser]
@tenmenu nvarchar(50),
@lienket varchar(200),
@mamenucha int,
@thutumenu int,
@ret int out
AS
BEGIN
	set @ret=1
	if(not exists(select * from db_Menu where @tenmenu=TenMenu))
	begin
	insert into db_Menu(TenMenu,LienKet,MaMenuCha,ThuTuMenu) values(@tenmenu,@lienket,@mamenucha,@thutumenu)
	set @ret=2
	end
END


GO
/****** Object:  StoredProcedure [dbo].[menu_update]    Script Date: 12/22/2018 9:51:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[menu_update]
@mamenu int,
@tenmenu nvarchar(50),
@lienket varchar(200),
@mamenucha int,
@thutumenu int
AS
BEGIN
	update db_Menu set TenMenu=@tenmenu,LienKet=@lienket,MaMenuCha=@mamenucha,ThuTuMenu=@thutumenu where MaMenu=@mamenu
END


GO
/****** Object:  StoredProcedure [dbo].[nhomsanpham_delete]    Script Date: 12/22/2018 9:51:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[nhomsanpham_delete]
@nhomid int
AS
BEGIN
	delete from db_NhomSanPham where NhomID=@nhomid
END


GO
/****** Object:  StoredProcedure [dbo].[nhomsanpham_inser]    Script Date: 12/22/2018 9:51:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[nhomsanpham_inser]
@tennhom nvarchar(100),
@anhdaidien nvarchar(100),
@thutu int,
@soSPhienthi int,
@ret int out
AS
BEGIN
	set @ret=1
	if(not exists(select * from db_NhomSanPham where @tennhom=TenNhom))
	begin
	insert into db_NhomSanPham(TenNhom,AnhDaiDien,ThuTu,SoSPHienThi) values(@tennhom,@anhdaidien,@thutu,@soSPhienthi)
	set @ret=2
	end
END


GO
/****** Object:  StoredProcedure [dbo].[nhomsanpham_update]    Script Date: 12/22/2018 9:51:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[nhomsanpham_update]
@nhomid int,
@tennhom nvarchar(100),
@anhdadien nvarchar(100),
@thutu int,
@solanhienthi int
AS
BEGIN
	update db_NhomSanPham set TenNhom=@tennhom,AnhDaiDien=@anhdadien,ThuTu=@thutu,SoSPHienThi=@solanhienthi where NhomID=@nhomid
END

GO
/****** Object:  StoredProcedure [dbo].[sanpham_delete]    Script Date: 12/22/2018 9:51:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sanpham_delete]
@masp int
AS
BEGIN
	delete from db_SanPham where MaSP=@masp
END


GO
/****** Object:  StoredProcedure [dbo].[sanpham_inser]    Script Date: 12/22/2018 9:51:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sanpham_inser]
@tensp nvarchar(100),
@anhsanpham nvarchar(100),
@soluongsp int,
@giasp float,
@motasp nvarchar(MAX),
@ngaytao datetime,
@ngayhuy datetime,
@maDM int,
@nhomID int,
@ret int out
AS
BEGIN
	set @ret=1
	if(not exists(select * from db_SanPham where @tensp=TenSP))
	BEGIN
    DECLARE @masp INT = 0
	SELECT @masp = MAX(MaSP) + 1 FROM dbo.db_SanPham 
	insert into db_SanPham(MaSP,TenSP,AnhSP,SoLuongSP,GiaSP,MotaSP,NgayTao,NgayHuy,MaDM,NhomID) values(@masp,@tensp,@anhsanpham,@soluongsp,@giasp,@motasp,@ngaytao,@ngayhuy,@maDM,@nhomID)
	set @ret=2
	end
END


GO
/****** Object:  StoredProcedure [dbo].[sanpham_update]    Script Date: 12/22/2018 9:51:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sanpham_update]
@masp int,
@tensp nvarchar(100),
@anhsp nvarchar(100),
@soluongsp int,
@giasp float,
@motasp nvarchar(MAX),
@ngaytao datetime,
@ngayhuy datetime,
@madm int,
@nhomid int
AS
BEGIN
	update db_SanPham set TenSP=@tensp,AnhSP=@anhsp,SoLuongSP=@soluongsp,GiaSP=@giasp,MotaSP=@motasp,NgayTao=@ngaytao,NgayHuy=@ngayhuy,MaDM=@madm,NhomID=@nhomid where MaSP=@masp
END
GO
/****** Object:  StoredProcedure [dbo].[thongtin_chitietdondathang_by_madondathang]    Script Date: 12/22/2018 9:51:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [dbo].[thongtin_chitietdondathang_by_madondathang]
(
@madondathang int
)
AS
BEGIN
	select * from db_ChiTietDonDatHang where MaDonDatHang=@madondathang
END
GO
/****** Object:  StoredProcedure [dbo].[thongtin_dangky]    Script Date: 12/22/2018 9:51:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[thongtin_dangky]
AS
BEGIN
	select * from db_DangKy
END



GO
/****** Object:  StoredProcedure [dbo].[thongtin_dangky_by_id]    Script Date: 12/22/2018 9:51:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[thongtin_dangky_by_id]
@TenDangNhap varchar(50)
AS
BEGIN
	select * from db_DangKy where TenDangNhap=@TenDangNhap
END



GO
/****** Object:  StoredProcedure [dbo].[thongtin_dangky_by_id_matkhau]    Script Date: 12/22/2018 9:51:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[thongtin_dangky_by_id_matkhau]
@TenDangNhap varchar(50),
@MatKhau varchar(50)
AS
BEGIN
	select * from db_DangKy where TenDangNhap=@TenDangNhap and MatKhau=@MatKhau
END


GO
/****** Object:  StoredProcedure [dbo].[thongtin_danhmuc]    Script Date: 12/22/2018 9:51:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[thongtin_danhmuc]
AS
BEGIN
	select * from db_DanhMuc order by ThuTu
END


GO
/****** Object:  StoredProcedure [dbo].[thongtin_danhmuc_by_id]    Script Date: 12/22/2018 9:51:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure  [dbo].[thongtin_danhmuc_by_id]
(
@MaDM INT
)
AS
BEGIN
	select * from db_DanhMuc where MaDM=@MaDM
END


GO
/****** Object:  StoredProcedure [dbo].[thongtin_danhmuc_by_MaDMCha]    Script Date: 12/22/2018 9:51:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure  [dbo].[thongtin_danhmuc_by_MaDMCha]
(
@MaDMCha INT
)
AS
BEGIN
	select * from db_DanhMuc where MaDMCha=@MaDMCha
END
GO
/****** Object:  StoredProcedure [dbo].[thongtin_danhmuctin]    Script Date: 12/22/2018 9:51:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[thongtin_danhmuctin]
AS
BEGIN
	select * from  db_DanhMucTin order by ThuTu
END


GO
/****** Object:  StoredProcedure [dbo].[thongtin_danhmuctin_by_id]    Script Date: 12/22/2018 9:51:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure  [dbo].[thongtin_danhmuctin_by_id]
(
@MaDM INT
)
AS
BEGIN
	select * from db_DanhMucTin where MaDM=@MaDM
END


GO
/****** Object:  StoredProcedure [dbo].[thongtin_danhmuctin_by_MaDMCha]    Script Date: 12/22/2018 9:51:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure  [dbo].[thongtin_danhmuctin_by_MaDMCha]
(
@MaDMCha INT
)
AS
BEGIN
	select * from db_DanhMucTin where MaDMCha=@MaDMCha
END


GO
/****** Object:  StoredProcedure [dbo].[thongtin_dondathang]    Script Date: 12/22/2018 9:51:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[thongtin_dondathang]
AS
BEGIN
	select * from db_DonDatHang
END


GO
/****** Object:  StoredProcedure [dbo].[thongtin_dondathang_by_id]    Script Date: 12/22/2018 9:51:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[thongtin_dondathang_by_id]
@MaDonDatHang int
AS
BEGIN
	select * from db_DonDatHang where MaDonDatHang=@MaDonDatHang
END


GO
/****** Object:  StoredProcedure [dbo].[thongtin_dondathang_by_mathanhtoan]    Script Date: 12/22/2018 9:51:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[thongtin_dondathang_by_mathanhtoan]
@mathanhtoan nvarchar(300)
AS
BEGIN
	select * from db_DonDatHang where TinhTrangDonHang=@mathanhtoan
END



GO
/****** Object:  StoredProcedure [dbo].[thongtin_dondathang_desc]    Script Date: 12/22/2018 9:51:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[thongtin_dondathang_desc]
AS
BEGIN
	select * from db_DonDatHang order by MaDonDatHang desc
END


GO
/****** Object:  StoredProcedure [dbo].[thongtin_khachhang]    Script Date: 12/22/2018 9:51:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[thongtin_khachhang]
AS
BEGIN
	select * from db_KhachHang
END


GO
/****** Object:  StoredProcedure [dbo].[thongtin_khachhang_by_emailkh]    Script Date: 12/22/2018 9:51:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[thongtin_khachhang_by_emailkh]
@emailkh nvarchar(50)
AS
BEGIN
	select * from db_KhachHang where EmailKH=@emailkh
END


GO
/****** Object:  StoredProcedure [dbo].[thongtin_khachhang_by_emailkh_matkhau]    Script Date: 12/22/2018 9:51:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[thongtin_khachhang_by_emailkh_matkhau]
@emailkh nvarchar(50),
@matkhau nvarchar(50)
AS
BEGIN
	select * from db_KhachHang where EmailKH=@emailkh and MatKhau=@matkhau
END


GO
/****** Object:  StoredProcedure [dbo].[thongtin_khachhang_by_makh]    Script Date: 12/22/2018 9:51:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[thongtin_khachhang_by_makh]
@makh nvarchar(50)
AS
BEGIN
	select * from db_KhachHang where MaKH=@makh
END
GO
/****** Object:  StoredProcedure [dbo].[thongtin_menu]    Script Date: 12/22/2018 9:51:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[thongtin_menu]
AS
BEGIN
	select * from db_Menu
END



GO
/****** Object:  StoredProcedure [dbo].[thongtin_menu_by_id]    Script Date: 12/22/2018 9:51:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[thongtin_menu_by_id]
@MaMenu int
AS
BEGIN
	select * from db_Menu where MaMenu=@MaMenu
END



GO
/****** Object:  StoredProcedure [dbo].[thongtin_menu_by_mamenucha]    Script Date: 12/22/2018 9:51:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[thongtin_menu_by_mamenucha]
@MaMenuCha int
AS
BEGIN
	select * from db_Menu where MaMenuCha=@MaMenuCha
END

GO
/****** Object:  StoredProcedure [dbo].[thongtin_nhomquangcao]    Script Date: 12/22/2018 9:51:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[thongtin_nhomquangcao]
AS
BEGIN
	select * from db_NhomQuangCao
END



GO
/****** Object:  StoredProcedure [dbo].[thongtin_nhomquangcao_by_id]    Script Date: 12/22/2018 9:51:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[thongtin_nhomquangcao_by_id]
@NhomQuangCaoID int
AS
BEGIN
	select * from db_NhomQuangCao where NhomQuangCaoID=@NhomQuangCaoID
END


GO
/****** Object:  StoredProcedure [dbo].[thongtin_nhomquangcao_by_vitriqc]    Script Date: 12/22/2018 9:51:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[thongtin_nhomquangcao_by_vitriqc]
@ViTriQC nvarchar(30)
AS
BEGIN
	select * from db_NhomQuangCao where ViTriQC=@ViTriQC
END


GO
/****** Object:  StoredProcedure [dbo].[thongtin_nhomsp]    Script Date: 12/22/2018 9:51:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[thongtin_nhomsp]
AS
BEGIN
	select * from db_NhomSanPham order by ThuTu
END



GO
/****** Object:  StoredProcedure [dbo].[thongtin_nhomsp_by_id]    Script Date: 12/22/2018 9:51:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[thongtin_nhomsp_by_id]
@NhomID int
AS
BEGIN
	select * from db_NhomSanPham where NhomID=@NhomID
END
GO
/****** Object:  StoredProcedure [dbo].[thongtin_quangcao]    Script Date: 12/22/2018 9:51:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[thongtin_quangcao]
AS
BEGIN
	select * from db_QuangCao
END



GO
/****** Object:  StoredProcedure [dbo].[thongtin_quangcao_by_id]    Script Date: 12/22/2018 9:51:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[thongtin_quangcao_by_id]
@QuangCaoID int
AS
BEGIN
	select * from db_QuangCao where QuangCaoID=@QuangCaoID
END


GO
/****** Object:  StoredProcedure [dbo].[thongtin_quangcao_by_nhomquangcaoid]    Script Date: 12/22/2018 9:51:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[thongtin_quangcao_by_nhomquangcaoid]
@NhomQuangCaoID int
AS
BEGIN
	select * from db_QuangCao where NhomQuangCaoID=@NhomQuangCaoID
END



GO
/****** Object:  StoredProcedure [dbo].[thongtin_quyendangnhap]    Script Date: 12/22/2018 9:51:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].[thongtin_quyendangnhap]
AS
BEGIN
	select * from db_QuyenDangNhap
END


GO
/****** Object:  StoredProcedure [dbo].[thongtin_quyendangnhap_by_id]    Script Date: 12/22/2018 9:51:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[thongtin_quyendangnhap_by_id]
@MaQuyen int
AS
BEGIN
	select * from db_QuyenDangNhap where MaQuyen=@MaQuyen
END

GO
/****** Object:  StoredProcedure [dbo].[thongtin_sanpham]    Script Date: 12/22/2018 9:51:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[thongtin_sanpham]
AS
BEGIN
	select * from db_SanPham
END


GO
/****** Object:  StoredProcedure [dbo].[thongtin_sanpham_by_id]    Script Date: 12/22/2018 9:51:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[thongtin_sanpham_by_id]
@MaSP INT
AS
BEGIN
	select * from db_SanPham where MaSP=@MaSP
END


GO
/****** Object:  StoredProcedure [dbo].[thongtin_sanpham_by_madm]    Script Date: 12/22/2018 9:51:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[thongtin_sanpham_by_madm]
@MaMD INT
AS
BEGIN
	select top 3 * from db_SanPham where MaDM=@MaMD
END


GO
/****** Object:  StoredProcedure [dbo].[thongtin_sanpham_by_madm_tatca]    Script Date: 12/22/2018 9:51:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[thongtin_sanpham_by_madm_tatca]
@MaMD INT
AS
BEGIN
	select * from db_SanPham where MaDM=@MaMD
END


GO
/****** Object:  StoredProcedure [dbo].[thongtin_sanpham_by_nhomid]    Script Date: 12/22/2018 9:51:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[thongtin_sanpham_by_nhomid]
@NhomID INT,
@SoSPHienThi INT
AS
BEGIN
	declare @sql nvarchar(300)
	set @sql='select top '+ CAST(@SoSPHienThi as varchar(10)) +' * from db_SanPham where NhomID='+CAST(@NhomID as varchar(10))
	exec sp_executesql @sql
END


GO
/****** Object:  StoredProcedure [dbo].[thongtin_sanpham_by_tukhoa]    Script Date: 12/22/2018 9:51:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[thongtin_sanpham_by_tukhoa]
@TuKhoa nvarchar(100)
AS
BEGIN
	select * from db_SanPham where TenSP like N'%'+@TuKhoa+'%'
END
GO
/****** Object:  StoredProcedure [dbo].[thongtin_tintuc]    Script Date: 12/22/2018 9:51:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [dbo].[thongtin_tintuc]
AS
BEGIN
	select * from db_TinTuc order by ThuTu
END



GO
/****** Object:  StoredProcedure [dbo].[thongtin_tintuc_by_id]    Script Date: 12/22/2018 9:51:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [dbo].[thongtin_tintuc_by_id]
@TinTucID INT
AS
BEGIN
	select * from db_TinTuc where TinTucID=@TinTucID
END



GO
/****** Object:  StoredProcedure [dbo].[thongtin_tintuc_by_madm]    Script Date: 12/22/2018 9:51:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [dbo].[thongtin_tintuc_by_madm]
@MaMD INT
AS
BEGIN
	select top 6 * from db_TinTuc where MaDM=@MaMD
END



GO
/****** Object:  StoredProcedure [dbo].[thongtin_tintuc_by_madm_tatca]    Script Date: 12/22/2018 9:51:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [dbo].[thongtin_tintuc_by_madm_tatca]
@MaMD INT
AS
BEGIN
	select * from db_TinTuc where MaDM=@MaMD
END
GO
/****** Object:  StoredProcedure [dbo].[USP_GetMaSPMax]    Script Date: 12/22/2018 9:51:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[USP_GetMaSPMax]
AS
BEGIN 
	SELECT MAX(MaSP) FROM dbo.db_SanPham 
END

GO
