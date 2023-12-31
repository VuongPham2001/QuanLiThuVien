USE [QLTV]
GO
/****** Object:  Table [dbo].[Books]    Script Date: 17////06//2023 1:30:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Books](
	[IDSach] [nvarchar](50) NOT NULL,
	[Tensach] [nvarchar](255) NOT NULL,
	[Theloai] [nvarchar](255) NOT NULL,
	[Tacgia] [nvarchar](255) NOT NULL,
	[NhaXB] [nvarchar](255) NOT NULL,
	[NamXB] [int] NOT NULL,
	[Soluong] [int] NOT NULL,
 CONSTRAINT [PK__Books__EA684DE3CE2A55BA] PRIMARY KEY CLUSTERED 
(
	[IDSach] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BorrowReturns]    Script Date: 17////06//2023 1:30:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BorrowReturns](
	[IDphieu] [nvarchar](50) NOT NULL,
	[IDdocgia] [nvarchar](50) NOT NULL,
	[IDSach] [nvarchar](50) NOT NULL,
	[Soluong] [int] NULL,
	[Ngaymuon] [date] NULL,
	[Ngaytra] [date] NULL,
	[Tinhtrang] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_BorrowReturns] PRIMARY KEY CLUSTERED 
(
	[IDphieu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Login]    Script Date: 17////06//2023 1:30:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Login](
	[uid] [nvarchar](255) NOT NULL,
	[pass] [nvarchar](255) NULL,
 CONSTRAINT [PK_Login] PRIMARY KEY CLUSTERED 
(
	[uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Readers]    Script Date: 17////06//2023 1:30:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Readers](
	[IDdocgia] [nvarchar](50) NOT NULL,
	[Hoten] [nvarchar](255) NOT NULL,
	[Diachi] [nvarchar](255) NOT NULL,
	[Gioitinh] [nvarchar](10) NULL,
	[Email] [nvarchar](255) NOT NULL,
	[Phone] [varchar](50) NOT NULL,
 CONSTRAINT [PK__Readers__2447E049FE9252AC] PRIMARY KEY CLUSTERED 
(
	[IDdocgia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Books] ([IDSach], [Tensach], [Theloai], [Tacgia], [NhaXB], [NamXB], [Soluong]) VALUES (N'CN1', N'Công nghệ thông tin', N'Học thuật', N'HAU', N'HAU', 2015, 250)
INSERT [dbo].[Books] ([IDSach], [Tensach], [Theloai], [Tacgia], [NhaXB], [NamXB], [Soluong]) VALUES (N'CN2', N'Điện toán đám mây', N'Học thuật', N'HAU', N'HAU', 2016, 2000)
INSERT [dbo].[Books] ([IDSach], [Tensach], [Theloai], [Tacgia], [NhaXB], [NamXB], [Soluong]) VALUES (N'CN3', N'Lập trình C#', N'Học thuật', N'HAU', N'HAU', 2014, 100)
INSERT [dbo].[Books] ([IDSach], [Tensach], [Theloai], [Tacgia], [NhaXB], [NamXB], [Soluong]) VALUES (N'CN4', N'Lập trình C', N'Học thuật', N'HAU', N'HAU', 2014, 222)
INSERT [dbo].[Books] ([IDSach], [Tensach], [Theloai], [Tacgia], [NhaXB], [NamXB], [Soluong]) VALUES (N'CN5  ', N'Lập trình C++', N'Học thuật', N'HAU', N'HAU', 2014, 150)
INSERT [dbo].[Books] ([IDSach], [Tensach], [Theloai], [Tacgia], [NhaXB], [NamXB], [Soluong]) VALUES (N'CN6', N'Lập trình Python', N'Học thuật', N'HAU', N'HAU', 2014, 222)
INSERT [dbo].[Books] ([IDSach], [Tensach], [Theloai], [Tacgia], [NhaXB], [NamXB], [Soluong]) VALUES (N'CN7', N'Nhập môn CNTTT', N'Học thuật', N'HAU', N'HAU', 2014, 222)
INSERT [dbo].[Books] ([IDSach], [Tensach], [Theloai], [Tacgia], [NhaXB], [NamXB], [Soluong]) VALUES (N'CN8', N'Lập trình Web', N'Học thuật', N'HAU', N'HAU', 2015, 200)
INSERT [dbo].[Books] ([IDSach], [Tensach], [Theloai], [Tacgia], [NhaXB], [NamXB], [Soluong]) VALUES (N'CN9', N'Nhập môn lập trình', N'Học thuật', N'HAU', N'HAU', 2015, 100)
INSERT [dbo].[Books] ([IDSach], [Tensach], [Theloai], [Tacgia], [NhaXB], [NamXB], [Soluong]) VALUES (N'HH1', N'Doraemon', N'Truyện tranh ', N'Fujiko Fujio', N'Kim Đồng', 1992, 150)
INSERT [dbo].[Books] ([IDSach], [Tensach], [Theloai], [Tacgia], [NhaXB], [NamXB], [Soluong]) VALUES (N'HH2', N'Shin cậu bé bút chì', N'Truyện tranh ', N'Usui Yoshito', N'Kim Đồng', 1990, 150)
INSERT [dbo].[Books] ([IDSach], [Tensach], [Theloai], [Tacgia], [NhaXB], [NamXB], [Soluong]) VALUES (N'TT1', N'Sherlock Holmes', N'Trinh thám ', N'Arthur Conan Doyle', N' The Strand Magazine', 1892, 1000)
GO
INSERT [dbo].[BorrowReturns] ([IDphieu], [IDdocgia], [IDSach], [Soluong], [Ngaymuon], [Ngaytra], [Tinhtrang]) VALUES (N'PM1', N'DG1', N'CN2', 3, CAST(N'2019-03-15' AS Date), CAST(N'2023-06-09' AS Date), N'Đã trả')
INSERT [dbo].[BorrowReturns] ([IDphieu], [IDdocgia], [IDSach], [Soluong], [Ngaymuon], [Ngaytra], [Tinhtrang]) VALUES (N'PM2', N'DG1', N'CN2', 3, CAST(N'2019-03-15' AS Date), CAST(N'2023-06-01' AS Date), N'Đã trả')
INSERT [dbo].[BorrowReturns] ([IDphieu], [IDdocgia], [IDSach], [Soluong], [Ngaymuon], [Ngaytra], [Tinhtrang]) VALUES (N'PM3', N'DG3', N'CN7', 2, CAST(N'2021-06-09' AS Date), NULL, N'Đang mượn')
INSERT [dbo].[BorrowReturns] ([IDphieu], [IDdocgia], [IDSach], [Soluong], [Ngaymuon], [Ngaytra], [Tinhtrang]) VALUES (N'PM4', N'DG1', N'CN2', 3, CAST(N'2019-03-15' AS Date), CAST(N'2023-06-09' AS Date), N'Đã trả')
INSERT [dbo].[BorrowReturns] ([IDphieu], [IDdocgia], [IDSach], [Soluong], [Ngaymuon], [Ngaytra], [Tinhtrang]) VALUES (N'PM5', N'DG1', N'CN3', 3, CAST(N'2019-03-15' AS Date), NULL, N'Đang mượn')
INSERT [dbo].[BorrowReturns] ([IDphieu], [IDdocgia], [IDSach], [Soluong], [Ngaymuon], [Ngaytra], [Tinhtrang]) VALUES (N'PM6', N'DG5', N'CN8', 3, CAST(N'2019-03-15' AS Date), NULL, N'Đang mượn')
GO
INSERT [dbo].[Login] ([uid], [pass]) VALUES (N'a', N'1')
INSERT [dbo].[Login] ([uid], [pass]) VALUES (N'admin', N'123456')
GO
INSERT [dbo].[Readers] ([IDdocgia], [Hoten], [Diachi], [Gioitinh], [Email], [Phone]) VALUES (N'DG1', N'Phạm Thị Trang', N'Hải Dương', N'Nữ', N'trang@gmail.com', N'065465448')
INSERT [dbo].[Readers] ([IDdocgia], [Hoten], [Diachi], [Gioitinh], [Email], [Phone]) VALUES (N'DG2', N'Phạm Thanh Thu', N'Hải Phòng', N'Nữ', N'Thu@gmail.com', N'0321546549')
INSERT [dbo].[Readers] ([IDdocgia], [Hoten], [Diachi], [Gioitinh], [Email], [Phone]) VALUES (N'DG3', N'Trần Hoài Đức', N'Hải Phòng', N'Nam', N'duc@gmail.com', N'045648775')
INSERT [dbo].[Readers] ([IDdocgia], [Hoten], [Diachi], [Gioitinh], [Email], [Phone]) VALUES (N'DG4', N' Nguyễn Hoàng Long', N'Hà Nội', N'Nam', N'long12@gmail.com', N'01546789')
INSERT [dbo].[Readers] ([IDdocgia], [Hoten], [Diachi], [Gioitinh], [Email], [Phone]) VALUES (N'DG5', N' Nguyễn Hoàng Hà', N'Hà Nội', N'Nam', N'ha12@gmail.com', N'06574657')
GO
ALTER TABLE [dbo].[BorrowReturns]  WITH CHECK ADD  CONSTRAINT [FK__BorrowRet__Mã DG__3C69FB99] FOREIGN KEY([IDdocgia])
REFERENCES [dbo].[Readers] ([IDdocgia])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[BorrowReturns] CHECK CONSTRAINT [FK__BorrowRet__Mã DG__3C69FB99]
GO
ALTER TABLE [dbo].[BorrowReturns]  WITH CHECK ADD  CONSTRAINT [FK__BorrowRet__Mã sá__3B75D760] FOREIGN KEY([IDSach])
REFERENCES [dbo].[Books] ([IDSach])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[BorrowReturns] CHECK CONSTRAINT [FK__BorrowRet__Mã sá__3B75D760]
GO
