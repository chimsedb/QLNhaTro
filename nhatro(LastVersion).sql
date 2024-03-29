USE [QLNhaTro]
GO
/****** Object:  Table [dbo].[ANHMOTA]    Script Date: 26/06/2019 17:30:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ANHMOTA](
	[LINKANH] [nvarchar](max) NULL,
	[MABAIDANG] [int] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BAIDANG]    Script Date: 26/06/2019 17:30:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BAIDANG](
	[GIATIEN] [nvarchar](25) NOT NULL,
	[ANHDAIDIEN] [nvarchar](max) NULL,
	[MABAIDANG] [int] NOT NULL,
	[ID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MABAIDANG] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CHITIETBD]    Script Date: 26/06/2019 17:30:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHITIETBD](
	[THUOCKHUVUC] [nvarchar](30) NULL,
	[NGAYDANG] [date] NULL,
	[MOTACHUNG] [nvarchar](max) NULL,
	[MABAIDANG] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MABAIDANG] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PHANQUYEN]    Script Date: 26/06/2019 17:30:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PHANQUYEN](
	[MAPQ] [int] NOT NULL,
	[TENPQ] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MAPQ] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TAIKHOAN]    Script Date: 26/06/2019 17:30:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TAIKHOAN](
	[MAPQ] [int] NULL,
	[TEN] [nvarchar](10) NULL,
	[TENDAYDU] [nchar](50) NULL,
	[EMAIL] [nvarchar](50) NULL,
	[PASSWORD] [nvarchar](30) NULL,
	[NGAYTAO] [date] NULL,
	[ID] [int] NOT NULL,
	[DTBan] [nvarchar](20) NULL,
	[DTDiDong] [nvarchar](20) NULL,
	[AnhDaiDien] [nvarchar](max) NULL,
	[Facebook] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[THONGTINCHINH]    Script Date: 26/06/2019 17:30:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[THONGTINCHINH](
	[VITRI] [nvarchar](100) NULL,
	[TRANGTHAI] [int] NULL,
	[DIENTICH] [int] NULL,
	[PHONGNGU] [int] NULL,
	[PHONGTAM] [int] NULL,
	[GARA] [int] NULL,
	[MABAIDANG] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MABAIDANG] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TIENICH]    Script Date: 26/06/2019 17:30:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TIENICH](
	[TENTIENICH] [nvarchar](50) NULL,
	[MABAIDANG] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TINNHAN]    Script Date: 26/06/2019 17:30:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TINNHAN](
	[MABAIDANG] [int] NOT NULL,
	[ID] [int] NOT NULL,
	[CHITIET] [nvarchar](max) NULL,
	[NGAYDANG] [date] NULL,
	[stt] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[stt] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[ANHMOTA] ([LINKANH], [MABAIDANG]) VALUES (N'/Custom/img/slide-2.jpg', 1)
INSERT [dbo].[ANHMOTA] ([LINKANH], [MABAIDANG]) VALUES (N'/Custom/img/slide-3.jpg', 1)
INSERT [dbo].[ANHMOTA] ([LINKANH], [MABAIDANG]) VALUES (N'/Custom/img/slide-1.jpg', 1)
INSERT [dbo].[ANHMOTA] ([LINKANH], [MABAIDANG]) VALUES (N'/Custom/img/house-1.jpg', 2)
INSERT [dbo].[ANHMOTA] ([LINKANH], [MABAIDANG]) VALUES (N'/Custom/img/house-2.jpg', 2)
INSERT [dbo].[ANHMOTA] ([LINKANH], [MABAIDANG]) VALUES (N'/Custom/img/house-3.jpg', 2)
INSERT [dbo].[ANHMOTA] ([LINKANH], [MABAIDANG]) VALUES (N'/Custom/img/house-4.jpg', 3)
INSERT [dbo].[ANHMOTA] ([LINKANH], [MABAIDANG]) VALUES (N'/Custom/img/house-5.jpg', 3)
INSERT [dbo].[ANHMOTA] ([LINKANH], [MABAIDANG]) VALUES (N'/Custom/img/house-6.jpg', 3)
INSERT [dbo].[ANHMOTA] ([LINKANH], [MABAIDANG]) VALUES (N'/Custom/img/house-7.jpg', 3)
INSERT [dbo].[ANHMOTA] ([LINKANH], [MABAIDANG]) VALUES (N'/Custom/img/house-8.jpg', 4)
INSERT [dbo].[ANHMOTA] ([LINKANH], [MABAIDANG]) VALUES (N'/Custom/img/house-9.jpg', 4)
INSERT [dbo].[ANHMOTA] ([LINKANH], [MABAIDANG]) VALUES (N'/Custom/img/slide-1.jpg', 4)
INSERT [dbo].[ANHMOTA] ([LINKANH], [MABAIDANG]) VALUES (N'/Custom/img/slide-3.jpg', 4)
INSERT [dbo].[ANHMOTA] ([LINKANH], [MABAIDANG]) VALUES (N'/Custom/img/slide-3.jpg', 5)
INSERT [dbo].[ANHMOTA] ([LINKANH], [MABAIDANG]) VALUES (N'/Custom/img/post-single-1.jpg', 5)
INSERT [dbo].[ANHMOTA] ([LINKANH], [MABAIDANG]) VALUES (N'/Custom/img/slide-1.jpg', 5)
INSERT [dbo].[ANHMOTA] ([LINKANH], [MABAIDANG]) VALUES (N'/Custom/img/house-3.jpg', 6)
INSERT [dbo].[ANHMOTA] ([LINKANH], [MABAIDANG]) VALUES (N'/Custom/img/house-4.jpg', 6)
INSERT [dbo].[ANHMOTA] ([LINKANH], [MABAIDANG]) VALUES (N'/Custom/img/slide-3.jpg', 6)
INSERT [dbo].[ANHMOTA] ([LINKANH], [MABAIDANG]) VALUES (N'/Custom/img/house-5.jpg', 6)
INSERT [dbo].[ANHMOTA] ([LINKANH], [MABAIDANG]) VALUES (N'/Custom/img/slide-1.jpg', 7)
INSERT [dbo].[ANHMOTA] ([LINKANH], [MABAIDANG]) VALUES (N'/Custom/img/slide-2.jpg', 7)
INSERT [dbo].[ANHMOTA] ([LINKANH], [MABAIDANG]) VALUES (N'/Custom/img/house-4.jpg', 7)
INSERT [dbo].[ANHMOTA] ([LINKANH], [MABAIDANG]) VALUES (N'/Custom/img/detail-1.jpg', 8)
INSERT [dbo].[ANHMOTA] ([LINKANH], [MABAIDANG]) VALUES (N'/Custom/img/detail-10.jpg', 8)
INSERT [dbo].[ANHMOTA] ([LINKANH], [MABAIDANG]) VALUES (N'/Custom/img/detail-2.jpg', 9)
INSERT [dbo].[ANHMOTA] ([LINKANH], [MABAIDANG]) VALUES (N'/Custom/img/detail-3.jpg', 9)
INSERT [dbo].[ANHMOTA] ([LINKANH], [MABAIDANG]) VALUES (N'/Custom/img/detail-10.jpg', 9)
INSERT [dbo].[ANHMOTA] ([LINKANH], [MABAIDANG]) VALUES (N'/Custom/img/detail-1.jpg', 9)
INSERT [dbo].[ANHMOTA] ([LINKANH], [MABAIDANG]) VALUES (N'/Custom/img/detail-8.jpg', 10)
INSERT [dbo].[ANHMOTA] ([LINKANH], [MABAIDANG]) VALUES (N'/Custom/img/detail-5.jpg', 10)
INSERT [dbo].[ANHMOTA] ([LINKANH], [MABAIDANG]) VALUES (N'/Custom/img/detail-10.jpg', 10)
INSERT [dbo].[ANHMOTA] ([LINKANH], [MABAIDANG]) VALUES (N'/Custom/img/detail-9.jpg', 11)
INSERT [dbo].[ANHMOTA] ([LINKANH], [MABAIDANG]) VALUES (N'/Custom/img/detail-8.jpg', 11)
INSERT [dbo].[ANHMOTA] ([LINKANH], [MABAIDANG]) VALUES (N'/Custom/img/detail-4.jpg', 11)
INSERT [dbo].[ANHMOTA] ([LINKANH], [MABAIDANG]) VALUES (N'/Custom/img/detail-4.jpg', 12)
INSERT [dbo].[ANHMOTA] ([LINKANH], [MABAIDANG]) VALUES (N'/Custom/img/house-9.jpg', 12)
INSERT [dbo].[BAIDANG] ([GIATIEN], [ANHDAIDIEN], [MABAIDANG], [ID]) VALUES (N'3 triệu', N'/custom/img/property-10.jpg', 1, 1)
INSERT [dbo].[BAIDANG] ([GIATIEN], [ANHDAIDIEN], [MABAIDANG], [ID]) VALUES (N'6 triệu', N'/custom/img/property-3.jpg', 2, 1)
INSERT [dbo].[BAIDANG] ([GIATIEN], [ANHDAIDIEN], [MABAIDANG], [ID]) VALUES (N'7 triệu', N'/custom/img/property-6.jpg', 3, 1)
INSERT [dbo].[BAIDANG] ([GIATIEN], [ANHDAIDIEN], [MABAIDANG], [ID]) VALUES (N'8 triệu', N'/custom/img/property-7.jpg', 4, 1)
INSERT [dbo].[BAIDANG] ([GIATIEN], [ANHDAIDIEN], [MABAIDANG], [ID]) VALUES (N'5 triệu', N'/Custom/img/property-4.jpg', 5, 2)
INSERT [dbo].[BAIDANG] ([GIATIEN], [ANHDAIDIEN], [MABAIDANG], [ID]) VALUES (N'6 triệu', N'/Custom/img/property-8.jpg', 6, 2)
INSERT [dbo].[BAIDANG] ([GIATIEN], [ANHDAIDIEN], [MABAIDANG], [ID]) VALUES (N'8 triệu', N'/Custom/img/property-9.jpg', 7, 2)
INSERT [dbo].[BAIDANG] ([GIATIEN], [ANHDAIDIEN], [MABAIDANG], [ID]) VALUES (N'6 triệu', N'/Custom/img/img-1.jpg', 8, 1)
INSERT [dbo].[BAIDANG] ([GIATIEN], [ANHDAIDIEN], [MABAIDANG], [ID]) VALUES (N'12 triệu', N'/Custom/img/img-5.jpg', 9, 3)
INSERT [dbo].[BAIDANG] ([GIATIEN], [ANHDAIDIEN], [MABAIDANG], [ID]) VALUES (N'4 triệu', N'/Custom/img/img-3.jpg', 10, 3)
INSERT [dbo].[BAIDANG] ([GIATIEN], [ANHDAIDIEN], [MABAIDANG], [ID]) VALUES (N'8 triệu', N'/Custom/img/img-2.jpg', 11, 3)
INSERT [dbo].[BAIDANG] ([GIATIEN], [ANHDAIDIEN], [MABAIDANG], [ID]) VALUES (N'2 triệu', N'/Custom/img/img-4.jpg', 12, 3)
INSERT [dbo].[CHITIETBD] ([THUOCKHUVUC], [NGAYDANG], [MOTACHUNG], [MABAIDANG]) VALUES (N'Hoàn Kiếm', CAST(N'2019-05-22' AS Date), N'Mỗi tầng chia 2 phòng, và 1 nhà vệ sinh. phòng ngoài rộng khoảng 150m. phòng trong rộng khoảng 250m. Thang máy và vệ sinh ở giữa. Gara ở tầng hầm
Mặt phố Hàng Đào là trung tâm thành phố, dân cư đông đúc, kinh doanh tấp nập, phù hợp kinh doanh nhiều loại mặt hàng hoặc là văn phòng đại diện...
cho thuê lâu dài, không nhà nghỉ, karaok, bệnh viện, không kinh doanh ăn uống ....', 1)
INSERT [dbo].[CHITIETBD] ([THUOCKHUVUC], [NGAYDANG], [MOTACHUNG], [MABAIDANG]) VALUES (N'Hoàn Kiếm', CAST(N'2019-05-30' AS Date), N'Mỗi tầng chia 2 phòng, và 1 nhà vệ sinh. phòng ngoài rộng khoảng 150m. phòng trong rộng khoảng 250m. Thang máy và vệ sinh ở giữa. Gara ở tầng hầm  Mặt phố Hàng Đào là trung tâm thành phố, dân cư đông đúc, kinh doanh tấp nập, phù hợp kinh doanh nhiều loại mặt hàng hoặc là văn phòng đại diện...  cho thuê lâu dài, không nhà nghỉ, karaok, bệnh viện, không kinh doanh ăn uống ....', 2)
INSERT [dbo].[CHITIETBD] ([THUOCKHUVUC], [NGAYDANG], [MOTACHUNG], [MABAIDANG]) VALUES (N'Hoàn Kiếm', CAST(N'2019-05-30' AS Date), N'Mỗi tầng chia 2 phòng, và 1 nhà vệ sinh. phòng ngoài rộng khoảng 150m. phòng trong rộng khoảng 250m. Thang máy và vệ sinh ở giữa. Gara ở tầng hầm  Mặt phố Hàng Đào là trung tâm thành phố, dân cư đông đúc, kinh doanh tấp nập, phù hợp kinh doanh nhiều loại mặt hàng hoặc là văn phòng đại diện...  cho thuê lâu dài, không nhà nghỉ, karaok, bệnh viện, không kinh doanh ăn uống ....', 3)
INSERT [dbo].[CHITIETBD] ([THUOCKHUVUC], [NGAYDANG], [MOTACHUNG], [MABAIDANG]) VALUES (N'Hoàng Mai', CAST(N'2019-05-30' AS Date), N'Mỗi tầng chia 2 phòng, và 1 nhà vệ sinh. phòng ngoài rộng khoảng 150m. phòng trong rộng khoảng 250m. Thang máy và vệ sinh ở giữa. Gara ở tầng hầm  Mặt phố Hàng Đào là trung tâm thành phố, dân cư đông đúc, kinh doanh tấp nập, phù hợp kinh doanh nhiều loại mặt hàng hoặc là văn phòng đại diện...  cho thuê lâu dài, không nhà nghỉ, karaok, bệnh viện, không kinh doanh ăn uống ....', 4)
INSERT [dbo].[CHITIETBD] ([THUOCKHUVUC], [NGAYDANG], [MOTACHUNG], [MABAIDANG]) VALUES (N'Hai Bà Trưng', CAST(N'2019-06-26' AS Date), N'Mỗi tầng chia 2 phòng, và 1 nhà vệ sinh. phòng ngoài rộng khoảng 150m. phòng trong rộng khoảng 250m. Thang máy và vệ sinh ở giữa. Gara ở tầng hầm  Mặt phố Hàng Đào là trung tâm thành phố, dân cư đông đúc, kinh doanh tấp nập, phù hợp kinh doanh nhiều loại mặt hàng hoặc là văn phòng đại diện...  cho thuê lâu dài, không nhà nghỉ, karaok, bệnh viện, không kinh doanh ăn uống ....', 5)
INSERT [dbo].[CHITIETBD] ([THUOCKHUVUC], [NGAYDANG], [MOTACHUNG], [MABAIDANG]) VALUES (N'Ba Đình', CAST(N'2019-06-26' AS Date), N'Mỗi tầng chia 2 phòng, và 1 nhà vệ sinh. phòng ngoài rộng khoảng 150m. phòng trong rộng khoảng 250m. Thang máy và vệ sinh ở giữa. Gara ở tầng hầm  Mặt phố Hàng Đào là trung tâm thành phố, dân cư đông đúc, kinh doanh tấp nập, phù hợp kinh doanh nhiều loại mặt hàng hoặc là văn phòng đại diện...  cho thuê lâu dài, không nhà nghỉ, karaok, bệnh viện, không kinh doanh ăn uống ....', 6)
INSERT [dbo].[CHITIETBD] ([THUOCKHUVUC], [NGAYDANG], [MOTACHUNG], [MABAIDANG]) VALUES (N'Cầu Giấy', CAST(N'2019-06-26' AS Date), N'Mỗi tầng chia 2 phòng, và 1 nhà vệ sinh. phòng ngoài rộng khoảng 150m. phòng trong rộng khoảng 250m. Thang máy và vệ sinh ở giữa. Gara ở tầng hầm  Mặt phố Hàng Đào là trung tâm thành phố, dân cư đông đúc, kinh doanh tấp nập, phù hợp kinh doanh nhiều loại mặt hàng hoặc là văn phòng đại diện...  cho thuê lâu dài, không nhà nghỉ, karaok, bệnh viện, không kinh doanh ăn uống ....', 7)
INSERT [dbo].[CHITIETBD] ([THUOCKHUVUC], [NGAYDANG], [MOTACHUNG], [MABAIDANG]) VALUES (N'Cầu Giấy', CAST(N'2019-06-26' AS Date), N'Mỗi tầng chia 2 phòng, và 1 nhà vệ sinh. phòng ngoài rộng khoảng 150m. phòng trong rộng khoảng 250m. Thang máy và vệ sinh ở giữa. Gara ở tầng hầm  Mặt phố Hàng Đào là trung tâm thành phố, dân cư đông đúc, kinh doanh tấp nập, phù hợp kinh doanh nhiều loại mặt hàng hoặc là văn phòng đại diện...  cho thuê lâu dài, không nhà nghỉ, karaok, bệnh viện, không kinh doanh ăn uống ....', 8)
INSERT [dbo].[CHITIETBD] ([THUOCKHUVUC], [NGAYDANG], [MOTACHUNG], [MABAIDANG]) VALUES (N'Hoàng Mai', CAST(N'2019-06-26' AS Date), N'Mỗi tầng chia 2 phòng, và 1 nhà vệ sinh. phòng ngoài rộng khoảng 150m. phòng trong rộng khoảng 250m. Thang máy và vệ sinh ở giữa. Gara ở tầng hầm  Mặt phố Hàng Đào là trung tâm thành phố, dân cư đông đúc, kinh doanh tấp nập, phù hợp kinh doanh nhiều loại mặt hàng hoặc là văn phòng đại diện...  cho thuê lâu dài, không nhà nghỉ, karaok, bệnh viện, không kinh doanh ăn uống ....', 9)
INSERT [dbo].[CHITIETBD] ([THUOCKHUVUC], [NGAYDANG], [MOTACHUNG], [MABAIDANG]) VALUES (N'Hai Bà Trưng', CAST(N'2019-06-26' AS Date), N'Mỗi tầng chia 2 phòng, và 1 nhà vệ sinh. phòng ngoài rộng khoảng 150m. phòng trong rộng khoảng 250m. Thang máy và vệ sinh ở giữa. Gara ở tầng hầm  Mặt phố Hàng Đào là trung tâm thành phố, dân cư đông đúc, kinh doanh tấp nập, phù hợp kinh doanh nhiều loại mặt hàng hoặc là văn phòng đại diện...  cho thuê lâu dài, không nhà nghỉ, karaok, bệnh viện, không kinh doanh ăn uống ....', 10)
INSERT [dbo].[CHITIETBD] ([THUOCKHUVUC], [NGAYDANG], [MOTACHUNG], [MABAIDANG]) VALUES (N'Ba Đình', CAST(N'2019-06-26' AS Date), N'Mỗi tầng chia 2 phòng, và 1 nhà vệ sinh. phòng ngoài rộng khoảng 150m. phòng trong rộng khoảng 250m. Thang máy và vệ sinh ở giữa. Gara ở tầng hầm  Mặt phố Hàng Đào là trung tâm thành phố, dân cư đông đúc, kinh doanh tấp nập, phù hợp kinh doanh nhiều loại mặt hàng hoặc là văn phòng đại diện...  cho thuê lâu dài, không nhà nghỉ, karaok, bệnh viện, không kinh doanh ăn uống ....', 11)
INSERT [dbo].[CHITIETBD] ([THUOCKHUVUC], [NGAYDANG], [MOTACHUNG], [MABAIDANG]) VALUES (N'Ba Đình', CAST(N'2019-06-26' AS Date), N'Mỗi tầng chia 2 phòng, và 1 nhà vệ sinh. phòng ngoài rộng khoảng 150m. phòng trong rộng khoảng 250m. Thang máy và vệ sinh ở giữa. Gara ở tầng hầm  Mặt phố Hàng Đào là trung tâm thành phố, dân cư đông đúc, kinh doanh tấp nập, phù hợp kinh doanh nhiều loại mặt hàng hoặc là văn phòng đại diện...  cho thuê lâu dài, không nhà nghỉ, karaok, bệnh viện, không kinh doanh ăn uống ....', 12)
INSERT [dbo].[PHANQUYEN] ([MAPQ], [TENPQ]) VALUES (1, N'Admin')
INSERT [dbo].[PHANQUYEN] ([MAPQ], [TENPQ]) VALUES (2, N'User')
INSERT [dbo].[TAIKHOAN] ([MAPQ], [TEN], [TENDAYDU], [EMAIL], [PASSWORD], [NGAYTAO], [ID], [DTBan], [DTDiDong], [AnhDaiDien], [Facebook]) VALUES (1, N'Hưng', N'Đặng Mạnh Hưng                                    ', N'hung@gmail.com', N'123', CAST(N'2019-05-14' AS Date), 1, N'(043) 87650 ', N'0832060897', N'/Custom/img/avatar.jpg', N'Chim Sẻ')
INSERT [dbo].[TAIKHOAN] ([MAPQ], [TEN], [TENDAYDU], [EMAIL], [PASSWORD], [NGAYTAO], [ID], [DTBan], [DTDiDong], [AnhDaiDien], [Facebook]) VALUES (1, N'Trung', N'Nguyễn XuânTrung                                  ', N'trung@gmail.com', N'123', CAST(N'2019-06-15' AS Date), 2, NULL, NULL, NULL, NULL)
INSERT [dbo].[TAIKHOAN] ([MAPQ], [TEN], [TENDAYDU], [EMAIL], [PASSWORD], [NGAYTAO], [ID], [DTBan], [DTDiDong], [AnhDaiDien], [Facebook]) VALUES (1, N'Hieu', N'Phạm TrungHieu                                    ', N'hieu@gmail.com', N'123', CAST(N'2019-06-19' AS Date), 3, NULL, NULL, NULL, NULL)
INSERT [dbo].[THONGTINCHINH] ([VITRI], [TRANGTHAI], [DIENTICH], [PHONGNGU], [PHONGTAM], [GARA], [MABAIDANG]) VALUES (N'SỐ 10 - HÀNG ĐÀO', 0, 500, 4, 2, 1, 1)
INSERT [dbo].[THONGTINCHINH] ([VITRI], [TRANGTHAI], [DIENTICH], [PHONGNGU], [PHONGTAM], [GARA], [MABAIDANG]) VALUES (N'Số 8 - HAI BÀ TRƯNG', 0, 200, 3, 2, 0, 2)
INSERT [dbo].[THONGTINCHINH] ([VITRI], [TRANGTHAI], [DIENTICH], [PHONGNGU], [PHONGTAM], [GARA], [MABAIDANG]) VALUES (N'Số 10 - NGÔ THÌ NHẦM', 0, 600, 6, 3, 1, 3)
INSERT [dbo].[THONGTINCHINH] ([VITRI], [TRANGTHAI], [DIENTICH], [PHONGNGU], [PHONGTAM], [GARA], [MABAIDANG]) VALUES (N'NGÕ 236 - ĐỊNH CÔNG', 0, 800, 6, 3, 2, 4)
INSERT [dbo].[THONGTINCHINH] ([VITRI], [TRANGTHAI], [DIENTICH], [PHONGNGU], [PHONGTAM], [GARA], [MABAIDANG]) VALUES (N'Số 8 - Bạch Mai', 0, 60, 2, 1, 0, 5)
INSERT [dbo].[THONGTINCHINH] ([VITRI], [TRANGTHAI], [DIENTICH], [PHONGNGU], [PHONGTAM], [GARA], [MABAIDANG]) VALUES (N'Số 61 - Đội Cấn', 0, 80, 3, 2, 1, 6)
INSERT [dbo].[THONGTINCHINH] ([VITRI], [TRANGTHAI], [DIENTICH], [PHONGNGU], [PHONGTAM], [GARA], [MABAIDANG]) VALUES (N'Số 12 - Cầu Giấy', 0, 100, 4, 2, 1, 7)
INSERT [dbo].[THONGTINCHINH] ([VITRI], [TRANGTHAI], [DIENTICH], [PHONGNGU], [PHONGTAM], [GARA], [MABAIDANG]) VALUES (N'Số 31 - Đê La Thành', 0, 90, 3, 2, 1, 8)
INSERT [dbo].[THONGTINCHINH] ([VITRI], [TRANGTHAI], [DIENTICH], [PHONGNGU], [PHONGTAM], [GARA], [MABAIDANG]) VALUES (N'Số 61 - Đại Từ', 0, 120, 4, 3, 2, 9)
INSERT [dbo].[THONGTINCHINH] ([VITRI], [TRANGTHAI], [DIENTICH], [PHONGNGU], [PHONGTAM], [GARA], [MABAIDANG]) VALUES (N'Số 1 - Lò Đúc', 0, 60, 2, 2, 1, 10)
INSERT [dbo].[THONGTINCHINH] ([VITRI], [TRANGTHAI], [DIENTICH], [PHONGNGU], [PHONGTAM], [GARA], [MABAIDANG]) VALUES (N'Số 9 - Liễu Giai', 0, 90, 3, 2, 1, 11)
INSERT [dbo].[THONGTINCHINH] ([VITRI], [TRANGTHAI], [DIENTICH], [PHONGNGU], [PHONGTAM], [GARA], [MABAIDANG]) VALUES (N'Số 121 - Lê Trực', 0, 40, 2, 1, 1, 12)
INSERT [dbo].[TIENICH] ([TENTIENICH], [MABAIDANG]) VALUES (N'Ban Công', 1)
INSERT [dbo].[TIENICH] ([TENTIENICH], [MABAIDANG]) VALUES (N'Bếp ngoài trời', 1)
INSERT [dbo].[TIENICH] ([TENTIENICH], [MABAIDANG]) VALUES (N'Truyền hình cáp', 1)
INSERT [dbo].[TIENICH] ([TENTIENICH], [MABAIDANG]) VALUES (N'Sân', 1)
INSERT [dbo].[TIENICH] ([TENTIENICH], [MABAIDANG]) VALUES (N'Internet', 1)
INSERT [dbo].[TIENICH] ([TENTIENICH], [MABAIDANG]) VALUES (N'Parking', 1)
INSERT [dbo].[TIENICH] ([TENTIENICH], [MABAIDANG]) VALUES (N'Phòng Ngoài Trời', 1)
INSERT [dbo].[TIENICH] ([TENTIENICH], [MABAIDANG]) VALUES (N'Sàn Gỗ Trong Nhà', 1)
INSERT [dbo].[TIENICH] ([TENTIENICH], [MABAIDANG]) VALUES (N'Sàn Bê Tông', 1)
INSERT [dbo].[TIENICH] ([TENTIENICH], [MABAIDANG]) VALUES (N'Ban Công', 2)
INSERT [dbo].[TIENICH] ([TENTIENICH], [MABAIDANG]) VALUES (N'Bếp ngoài trời', 2)
INSERT [dbo].[TIENICH] ([TENTIENICH], [MABAIDANG]) VALUES (N'Truyền hình cáp', 2)
INSERT [dbo].[TIENICH] ([TENTIENICH], [MABAIDANG]) VALUES (N'Truyền hình cáp', 2)
INSERT [dbo].[TIENICH] ([TENTIENICH], [MABAIDANG]) VALUES (N'Bể Bơi', 2)
INSERT [dbo].[TIENICH] ([TENTIENICH], [MABAIDANG]) VALUES (N'Internet', 2)
INSERT [dbo].[TIENICH] ([TENTIENICH], [MABAIDANG]) VALUES (N'Phòng Ngoài Trời', 3)
INSERT [dbo].[TIENICH] ([TENTIENICH], [MABAIDANG]) VALUES (N'Sân Đá Cầu', 3)
INSERT [dbo].[TIENICH] ([TENTIENICH], [MABAIDANG]) VALUES (N'Sàn Gỗ Trong Nhà', 3)
INSERT [dbo].[TIENICH] ([TENTIENICH], [MABAIDANG]) VALUES (N'Lò Nướng Tự Động', 3)
INSERT [dbo].[TIENICH] ([TENTIENICH], [MABAIDANG]) VALUES (N'Parking', 4)
INSERT [dbo].[TIENICH] ([TENTIENICH], [MABAIDANG]) VALUES (N'Truyền Hình Cáp', 4)
INSERT [dbo].[TIENICH] ([TENTIENICH], [MABAIDANG]) VALUES (N'Phòng Tập ', 4)
INSERT [dbo].[TIENICH] ([TENTIENICH], [MABAIDANG]) VALUES (N'Internet', 4)
INSERT [dbo].[TIENICH] ([TENTIENICH], [MABAIDANG]) VALUES (N'Sàn Bê Tông', 4)
INSERT [dbo].[TIENICH] ([TENTIENICH], [MABAIDANG]) VALUES (N'Ban Công', 4)
INSERT [dbo].[TIENICH] ([TENTIENICH], [MABAIDANG]) VALUES (N'Sàn Gỗ', 5)
INSERT [dbo].[TIENICH] ([TENTIENICH], [MABAIDANG]) VALUES (N'Internet', 5)
INSERT [dbo].[TIENICH] ([TENTIENICH], [MABAIDANG]) VALUES (N'Truyền Hình Cáp', 5)
INSERT [dbo].[TIENICH] ([TENTIENICH], [MABAIDANG]) VALUES (N'Sàn Gỗ', 6)
INSERT [dbo].[TIENICH] ([TENTIENICH], [MABAIDANG]) VALUES (N'Cầu Thang Máy ', 6)
INSERT [dbo].[TIENICH] ([TENTIENICH], [MABAIDANG]) VALUES (N'Bể Bơi', 6)
INSERT [dbo].[TIENICH] ([TENTIENICH], [MABAIDANG]) VALUES (N'Phòng Gym', 6)
INSERT [dbo].[TIENICH] ([TENTIENICH], [MABAIDANG]) VALUES (N'Internet', 6)
INSERT [dbo].[TIENICH] ([TENTIENICH], [MABAIDANG]) VALUES (N'Sàn Gỗ', 7)
INSERT [dbo].[TIENICH] ([TENTIENICH], [MABAIDANG]) VALUES (N'Internet', 7)
INSERT [dbo].[TIENICH] ([TENTIENICH], [MABAIDANG]) VALUES (N'Truyền Hình Cáp', 7)
INSERT [dbo].[TIENICH] ([TENTIENICH], [MABAIDANG]) VALUES (N'Internet', 8)
INSERT [dbo].[TIENICH] ([TENTIENICH], [MABAIDANG]) VALUES (N'Truyền Hình Cáp', 8)
INSERT [dbo].[TIENICH] ([TENTIENICH], [MABAIDANG]) VALUES (N'Phòng Gym', 8)
INSERT [dbo].[TIENICH] ([TENTIENICH], [MABAIDANG]) VALUES (N'Cầu Thang Máy', 8)
INSERT [dbo].[TIENICH] ([TENTIENICH], [MABAIDANG]) VALUES (N'Sàn Gỗ', 9)
INSERT [dbo].[TIENICH] ([TENTIENICH], [MABAIDANG]) VALUES (N'Internet', 9)
INSERT [dbo].[TIENICH] ([TENTIENICH], [MABAIDANG]) VALUES (N'Cầu Thang Máy', 9)
INSERT [dbo].[TIENICH] ([TENTIENICH], [MABAIDANG]) VALUES (N'Sân Gôn', 9)
INSERT [dbo].[TIENICH] ([TENTIENICH], [MABAIDANG]) VALUES (N'Bể Bơi', 9)
INSERT [dbo].[TIENICH] ([TENTIENICH], [MABAIDANG]) VALUES (N'Sàn Gỗ', 10)
INSERT [dbo].[TIENICH] ([TENTIENICH], [MABAIDANG]) VALUES (N'Internet', 10)
INSERT [dbo].[TIENICH] ([TENTIENICH], [MABAIDANG]) VALUES (N'Truyền Hình Cap', 10)
INSERT [dbo].[TIENICH] ([TENTIENICH], [MABAIDANG]) VALUES (N'Internet', 11)
INSERT [dbo].[TIENICH] ([TENTIENICH], [MABAIDANG]) VALUES (N'Sàn Gỗ', 11)
INSERT [dbo].[TIENICH] ([TENTIENICH], [MABAIDANG]) VALUES (N'Truyền Hình Cáp', 11)
INSERT [dbo].[TIENICH] ([TENTIENICH], [MABAIDANG]) VALUES (N'Internet', 12)
INSERT [dbo].[TIENICH] ([TENTIENICH], [MABAIDANG]) VALUES (N'Truyền Hình Cáp', 12)
INSERT [dbo].[TINNHAN] ([MABAIDANG], [ID], [CHITIET], [NGAYDANG], [stt]) VALUES (3, 1, N'Đắt vkl', CAST(N'2019-06-20' AS Date), 1)
INSERT [dbo].[TINNHAN] ([MABAIDANG], [ID], [CHITIET], [NGAYDANG], [stt]) VALUES (2, 1, N'Nhà đẹp vkl', CAST(N'2019-06-20' AS Date), 2)
INSERT [dbo].[TINNHAN] ([MABAIDANG], [ID], [CHITIET], [NGAYDANG], [stt]) VALUES (1, 1, N'Nhà đẹp vkl mà có 3 triệu á có cái loz ấy', CAST(N'2019-06-20' AS Date), 3)
INSERT [dbo].[TINNHAN] ([MABAIDANG], [ID], [CHITIET], [NGAYDANG], [stt]) VALUES (2, 2, N'T đéo muốn thuê nhà này m có bán thì liên hệ lại cho t', CAST(N'2019-06-20' AS Date), 4)
INSERT [dbo].[TINNHAN] ([MABAIDANG], [ID], [CHITIET], [NGAYDANG], [stt]) VALUES (9, 3, N'Nhà max xịn :))', CAST(N'2019-06-26' AS Date), 5)
ALTER TABLE [dbo].[ANHMOTA]  WITH CHECK ADD FOREIGN KEY([MABAIDANG])
REFERENCES [dbo].[CHITIETBD] ([MABAIDANG])
GO
ALTER TABLE [dbo].[BAIDANG]  WITH CHECK ADD FOREIGN KEY([ID])
REFERENCES [dbo].[TAIKHOAN] ([ID])
GO
ALTER TABLE [dbo].[CHITIETBD]  WITH CHECK ADD FOREIGN KEY([MABAIDANG])
REFERENCES [dbo].[BAIDANG] ([MABAIDANG])
GO
ALTER TABLE [dbo].[TAIKHOAN]  WITH CHECK ADD FOREIGN KEY([MAPQ])
REFERENCES [dbo].[PHANQUYEN] ([MAPQ])
GO
ALTER TABLE [dbo].[THONGTINCHINH]  WITH CHECK ADD FOREIGN KEY([MABAIDANG])
REFERENCES [dbo].[BAIDANG] ([MABAIDANG])
GO
ALTER TABLE [dbo].[THONGTINCHINH]  WITH CHECK ADD FOREIGN KEY([MABAIDANG])
REFERENCES [dbo].[CHITIETBD] ([MABAIDANG])
GO
ALTER TABLE [dbo].[TIENICH]  WITH CHECK ADD FOREIGN KEY([MABAIDANG])
REFERENCES [dbo].[CHITIETBD] ([MABAIDANG])
GO
ALTER TABLE [dbo].[TINNHAN]  WITH CHECK ADD FOREIGN KEY([ID])
REFERENCES [dbo].[TAIKHOAN] ([ID])
GO
ALTER TABLE [dbo].[TINNHAN]  WITH CHECK ADD FOREIGN KEY([MABAIDANG])
REFERENCES [dbo].[CHITIETBD] ([MABAIDANG])
GO
/****** Object:  StoredProcedure [dbo].[CTBAIDANG]    Script Date: 26/06/2019 17:30:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[CTBAIDANG] @id int
AS
BEGIN
	SELECT baidang.id,vitri,GIATIEN,trangthai,dientich,phongngu,phongtam,gara,motachung
	FROM CHITIETBD,THONGTINCHINH,BAIDANG
	WHERE CHITIETBD.MABAIDANG = THONGTINCHINH.MABAIDANG
	AND BAIDANG.MABAIDANG = CHITIETBD.MABAIDANG
	AND CHITIETBD.MABAIDANG = @id
END
GO
/****** Object:  StoredProcedure [dbo].[DangKy]    Script Date: 26/06/2019 17:30:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[DangKy] @tendau nvarchar(30) ,@tencuoi nvarchar(20)  ,@email nvarchar(Max)  ,@pass nvarchar(30)
as
begin
	declare @tendaydu nvarchar(MAX)
	set @tendaydu = @tendau + @tencuoi

	declare @id int
	select @id = MAX(id) +1 from TaiKhoan

	insert into TAIKHOAN(MaPQ,ten,tendaydu,email,passWord,ngaytao,id)
	values(1,@tencuoi,@tendaydu,@email,@pass,CONVERT(date, getdate()),@id)
end
GO
/****** Object:  StoredProcedure [dbo].[DSANHMOTA]    Script Date: 26/06/2019 17:30:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[DSANHMOTA] @id int
AS
BEGIN
	SELECT LINKANH
	FROM ANHMOTA,CHITIETBD
	WHERE CHITIETBD.MABAIDANG = ANHMOTA.MABAIDANG
	AND CHITIETBD.MABAIDANG = @id
END
GO
/****** Object:  StoredProcedure [dbo].[DSTIENICH]    Script Date: 26/06/2019 17:30:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[DSTIENICH] @id int
AS
BEGIN
	SELECT TENTIENICH
	FROM TIENICH,CHITIETBD
	WHERE CHITIETBD.MABAIDANG = TIENICH.MABAIDANG
	AND CHITIETBD.MABAIDANG = @id
END
GO
/****** Object:  StoredProcedure [dbo].[LayKhuVuc]    Script Date: 26/06/2019 17:30:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[LayKhuVuc] 
as
begin
	select THUOCKHUVUC from chitietbd
	group by THUOCKHUVUC
end
GO
/****** Object:  StoredProcedure [dbo].[LuuTinNhan]    Script Date: 26/06/2019 17:30:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[LuuTinNhan] @mabaidang int,@id int,@chitiet nvarchar(MAX)
as
begin
	declare @stt int

	select @stt = MAX(stt) from TINNHAN
	if @stt is null
	begin
		set @stt =1
	end
	else
	begin
		set @stt =@stt+1
	end
	select @stt
	

	insert into TINNHAN(mabaidang,id,chitiet,NGAYDANG,stt)
	values(@mabaidang,@id,@chitiet,CONVERT(date, getdate()),@stt)
end
GO
/****** Object:  StoredProcedure [dbo].[MOIDANG]    Script Date: 26/06/2019 17:30:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[MOIDANG]
AS
BEGIN
	SELECT TOP 8 BAIDANG.mabaidang,giatien,anhdaidien,vitri,dientich,phongngu,phongtam,gara,ngaydang
	FROM BAIDANG,THONGTINCHINH,CHITIETBD
	WHERE BAIDANG.MABAIDANG = THONGTINCHINH.MABAIDANG
	AND CHITIETBD.MABAIDANG = BAIDANG.MABAIDANG
	ORDER BY NGAYDANG DESC
END
GO
/****** Object:  StoredProcedure [dbo].[ThemAnhBaiViet]    Script Date: 26/06/2019 17:30:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[ThemAnhBaiViet] @linkanh nvarchar(MAX)
as
begin
	declare @mabaidang int
	select @mabaidang = MAX(MABAIDANG) from BAIDANG

	insert into anhmota
	values (@linkanh,@mabaidang)
end
GO
/****** Object:  StoredProcedure [dbo].[ThemAnhDaiDien]    Script Date: 26/06/2019 17:30:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[ThemAnhDaiDien] @linkanh nvarchar(MAX)
as
begin
	declare @mabaidang int
	select @mabaidang = MAX(MABAIDANG) from BAIDANG
	
	update baidang
	set anhdaidien = @linkanh
	where MABAIDANG = @mabaidang
end
GO
/****** Object:  StoredProcedure [dbo].[ThemBaiViet]    Script Date: 26/06/2019 17:30:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[ThemBaiViet] @id int,@giatien nvarchar(20),@kv nvarchar(50),@vitri nvarchar(50),
						@dientich int,@phongngu int , @phongtam int,@gara int
as
begin
	declare @mabaidang int
	select @mabaidang = MAX(MABAIDANG) from BAIDANG
	set @mabaidang = @mabaidang +1

	insert into baidang
	values (@giatien,null,@mabaidang,@id)

	insert into chitietbd
	values (@kv,CONVERT(date, getdate()),
	N'Mỗi tầng chia 2 phòng, và 1 nhà vệ sinh. phòng ngoài rộng khoảng 150m. phòng trong rộng khoảng 250m. Thang máy và vệ sinh ở giữa. Gara ở tầng hầm  Mặt phố Hàng Đào là trung tâm thành phố, dân cư đông đúc, kinh doanh tấp nập, phù hợp kinh doanh nhiều loại mặt hàng hoặc là văn phòng đại diện...  cho thuê lâu dài, không nhà nghỉ, karaok, bệnh viện, không kinh doanh ăn uống ....',
	@mabaidang )

	insert into thongtinchinh
	values (@vitri,0,@dientich,@phongngu,@phongtam,@gara,@mabaidang )

end
GO
/****** Object:  StoredProcedure [dbo].[ThemTienIchBaiViet]    Script Date: 26/06/2019 17:30:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[ThemTienIchBaiViet] @tienich nvarchar(20)
as
begin
	declare @mabaidang int
	select @mabaidang = MAX(MABAIDANG) from BAIDANG

	insert into tienich
	values (@tienich,@mabaidang)
end
GO
/****** Object:  StoredProcedure [dbo].[ThongKe]    Script Date: 26/06/2019 17:30:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[ThongKe]
as
begin
	select BAIDANG.MABAIDANG , VITRI,giatien,THUOCKHUVUC,NGAYDANG,TEN,PHANQUYEN.MAPQ
	from BAIDANG,THONGTINCHINH,CHITIETBD,PHANQUYEN,TAIKHOAN
	where BAIDANG.MABAIDANG = THONGTINCHINH.MABAIDANG
	and BAIDANG.MABAIDANG = CHITIETBD.MABAIDANG
	and PHANQUYEN.MAPQ = TAIKHOAN.MAPQ
	and TAIKHOAN.ID = BAIDANG.ID
end
GO
/****** Object:  StoredProcedure [dbo].[ThongKeTinNhan]    Script Date: 26/06/2019 17:30:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[ThongKeTinNhan] @id int
as
begin
	select count(*) as SoTinNhan from TAIKHOAN,BAIDANG
	where BAIDANG.ID = TAIKHOAN.ID
	and TAIKHOAN.ID = @id

end
GO
/****** Object:  StoredProcedure [dbo].[ThongTinTaiKhoan]    Script Date: 26/06/2019 17:30:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[ThongTinTaiKhoan] @id int
as 
begin
	select * from TaiKhoan where id =@id
end
GO
/****** Object:  StoredProcedure [dbo].[THUOCKHUVUC]    Script Date: 26/06/2019 17:30:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[THUOCKHUVUC]
AS
BEGIN
	SELECT THUOCKHUVUC FROM CHITIETBD
	GROUP BY THUOCKHUVUC
END
GO
/****** Object:  StoredProcedure [dbo].[TIMTHEOQUAN]    Script Date: 26/06/2019 17:30:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[TIMTHEOQUAN] @tenquan nvarchar(50)
AS
BEGIN
	SELECT TOP 8 BAIDANG.mabaidang,giatien,anhdaidien,vitri,dientich,phongngu,phongtam,gara
	FROM BAIDANG,THONGTINCHINH,CHITIETBD
	WHERE BAIDANG.MABAIDANG = THONGTINCHINH.MABAIDANG
	and CHITIETBD.mabaidang = baidang.mabaidang
	and chitietbd.thuockhuvuc = @tenquan
END
GO
/****** Object:  StoredProcedure [dbo].[TKChiTietTinNhan]    Script Date: 26/06/2019 17:30:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[TKChiTietTinNhan] @id int
as
begin
	select THONGTINCHINH.VITRI,(select EMAIL from TAIKHOAN where TAIKHOAN.ID =TINNHAN.ID) as Email,CHITIET,TINNHAN.NGAYDANG,stt
	from TAIKHOAN,BAIDANG,CHITIETBD,TINNHAN,THONGTINCHINH
	where TAIKHOAN.ID = BAIDANG.ID
	and BAIDANG.MABAIDANG = CHITIETBD.MABAIDANG
	and CHITIETBD.MABAIDANG = TINNHAN.MABAIDANG
	and THONGTINCHINH.MABAIDANG =BAIDANG.MABAIDANG
	and TAIKHOAN.ID =@id
end
GO
/****** Object:  StoredProcedure [dbo].[TOP4BAIDANG]    Script Date: 26/06/2019 17:30:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[TOP4BAIDANG]
AS
BEGIN
	SELECT TOP 4 BAIDANG.mabaidang,giatien,anhdaidien,vitri,dientich,phongngu,phongtam,gara
	FROM BAIDANG,THONGTINCHINH
	WHERE BAIDANG.MABAIDANG = THONGTINCHINH.MABAIDANG
END
GO
/****** Object:  StoredProcedure [dbo].[TOP4MOIDANG]    Script Date: 26/06/2019 17:30:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[TOP4MOIDANG]
AS
BEGIN
	SELECT TOP 4 BAIDANG.mabaidang,giatien,anhdaidien,vitri,dientich,phongngu,phongtam,gara,ngaydang
	FROM BAIDANG,THONGTINCHINH,CHITIETBD
	WHERE BAIDANG.MABAIDANG = THONGTINCHINH.MABAIDANG
	AND CHITIETBD.MABAIDANG = BAIDANG.MABAIDANG
	ORDER BY NGAYDANG DESC
END
GO
/****** Object:  StoredProcedure [dbo].[XEMNHIEU]    Script Date: 26/06/2019 17:30:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[XEMNHIEU]
AS
BEGIN
	SELECT TOP 8 BAIDANG.mabaidang,giatien,anhdaidien,vitri,dientich,phongngu,phongtam,gara
	FROM BAIDANG,THONGTINCHINH
	WHERE BAIDANG.MABAIDANG = THONGTINCHINH.MABAIDANG
END
GO
