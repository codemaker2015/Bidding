USE [VBidding]
GO
/****** Object:  Table [dbo].[tblUser]    Script Date: 08/09/2018 11:50:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblUser](
	[userId] [numeric](18, 0) IDENTITY(2018100,1) NOT NULL,
	[name] [varchar](50) NULL,
	[address] [varchar](200) NULL,
	[contact] [varchar](15) NULL,
	[capital] [real] NULL,
	[type] [varchar](20) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tblUser] ON
INSERT [dbo].[tblUser] ([userId], [name], [address], [contact], [capital], [type]) VALUES (CAST(2018100 AS Numeric(18, 0)), N'uyg', N'yugyug', N'ygy', 0, N'hjb')
INSERT [dbo].[tblUser] ([userId], [name], [address], [contact], [capital], [type]) VALUES (CAST(2018101 AS Numeric(18, 0)), N'uhb', N'b', N'b', 0, N'jnj')
INSERT [dbo].[tblUser] ([userId], [name], [address], [contact], [capital], [type]) VALUES (CAST(2018102 AS Numeric(18, 0)), N'Vishnu', N'stfgrgd', N'454654', 0, N'farmar')
INSERT [dbo].[tblUser] ([userId], [name], [address], [contact], [capital], [type]) VALUES (CAST(2018103 AS Numeric(18, 0)), N'ghbjnlk', N'uynijkml;', N'678906789', 0, N'farmar')
INSERT [dbo].[tblUser] ([userId], [name], [address], [contact], [capital], [type]) VALUES (CAST(2018104 AS Numeric(18, 0)), N'cxvcbc', N'ectvgiv g
ghhgffdg 
dgdghdfhgf
fghgfhfghgfhgf
', N'2354675877698', 0, N'farmar')
INSERT [dbo].[tblUser] ([userId], [name], [address], [contact], [capital], [type]) VALUES (CAST(2018105 AS Numeric(18, 0)), N'Hema', N'Elavumkudy House
Pattimattom PO
Pattimattom', N'1234567890', 0, N'Farmer')
SET IDENTITY_INSERT [dbo].[tblUser] OFF
/****** Object:  Table [dbo].[tblSerial]    Script Date: 08/09/2018 11:50:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblSerial](
	[SlNo] [numeric](18, 0) NULL
) ON [PRIMARY]
GO
INSERT [dbo].[tblSerial] ([SlNo]) VALUES (CAST(6 AS Numeric(18, 0)))
/****** Object:  Table [dbo].[tblSales]    Script Date: 08/09/2018 11:50:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblSales](
	[sellingId] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[date] [date] NULL,
	[userId] [int] NULL,
	[itemId] [int] NULL,
	[itemName] [varchar](50) NULL,
	[quantity] [int] NULL,
	[unit] [varchar](20) NULL,
	[unitPrice] [real] NULL,
	[totalPrice] [real] NULL,
	[invoiceNo] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tblSales] ON
INSERT [dbo].[tblSales] ([sellingId], [date], [userId], [itemId], [itemName], [quantity], [unit], [unitPrice], [totalPrice], [invoiceNo]) VALUES (CAST(1 AS Numeric(18, 0)), CAST(0x723E0B00 AS Date), 2018100, 100, N'rgdg', 23, N'Nos', 44, 1012, N'MBFU/2018/7/8/11')
INSERT [dbo].[tblSales] ([sellingId], [date], [userId], [itemId], [itemName], [quantity], [unit], [unitPrice], [totalPrice], [invoiceNo]) VALUES (CAST(2 AS Numeric(18, 0)), CAST(0x723E0B00 AS Date), 2018100, 101, N'uhybkj', 45, N'Ltr', 56, 2520, N'MBFU/2018/7/8/12')
INSERT [dbo].[tblSales] ([sellingId], [date], [userId], [itemId], [itemName], [quantity], [unit], [unitPrice], [totalPrice], [invoiceNo]) VALUES (CAST(3 AS Numeric(18, 0)), CAST(0x723E0B00 AS Date), 2018100, 101, N'uhybkj', 55, N'Nos', 6, 330, N'MBFU/2018/7/8/12')
INSERT [dbo].[tblSales] ([sellingId], [date], [userId], [itemId], [itemName], [quantity], [unit], [unitPrice], [totalPrice], [invoiceNo]) VALUES (CAST(4 AS Numeric(18, 0)), CAST(0x723E0B00 AS Date), 2018100, 101, N'uhybkj', 55, N'Kg', 7777, 427735, N'MBFU/2018/7/8/12')
INSERT [dbo].[tblSales] ([sellingId], [date], [userId], [itemId], [itemName], [quantity], [unit], [unitPrice], [totalPrice], [invoiceNo]) VALUES (CAST(5 AS Numeric(18, 0)), CAST(0x723E0B00 AS Date), 2018100, 100, N'rgdg', 5, N'Ltr', 6, 30, N'MBFU/2018/7/8/12')
INSERT [dbo].[tblSales] ([sellingId], [date], [userId], [itemId], [itemName], [quantity], [unit], [unitPrice], [totalPrice], [invoiceNo]) VALUES (CAST(6 AS Numeric(18, 0)), CAST(0x723E0B00 AS Date), 2018100, 100, N'rgdg', 5, N'Ltr', 77, 385, N'MBFU/2018/7/8/12')
INSERT [dbo].[tblSales] ([sellingId], [date], [userId], [itemId], [itemName], [quantity], [unit], [unitPrice], [totalPrice], [invoiceNo]) VALUES (CAST(7 AS Numeric(18, 0)), CAST(0x723E0B00 AS Date), 2018101, 101, N'uhybkj', 45, N'Nos', 43, 1935, N'MBFU/2018/7/8/13')
INSERT [dbo].[tblSales] ([sellingId], [date], [userId], [itemId], [itemName], [quantity], [unit], [unitPrice], [totalPrice], [invoiceNo]) VALUES (CAST(8 AS Numeric(18, 0)), CAST(0x723E0B00 AS Date), 2018100, 100, N'rgdg', 3, N'Nos', 4, 12, N'MBFU/2018/7/8/14')
INSERT [dbo].[tblSales] ([sellingId], [date], [userId], [itemId], [itemName], [quantity], [unit], [unitPrice], [totalPrice], [invoiceNo]) VALUES (CAST(9 AS Numeric(18, 0)), CAST(0x723E0B00 AS Date), 2018100, 100, N'rgdg', 3, N'Nos', 23, 69, N'MBFU/2018/7/8/15')
INSERT [dbo].[tblSales] ([sellingId], [date], [userId], [itemId], [itemName], [quantity], [unit], [unitPrice], [totalPrice], [invoiceNo]) VALUES (CAST(10 AS Numeric(18, 0)), CAST(0x723E0B00 AS Date), 2018100, 100, N'rgdg', 4, N'Ltr', 6, 24, N'MBFU/2018/7/8/16')
INSERT [dbo].[tblSales] ([sellingId], [date], [userId], [itemId], [itemName], [quantity], [unit], [unitPrice], [totalPrice], [invoiceNo]) VALUES (CAST(11 AS Numeric(18, 0)), CAST(0x723E0B00 AS Date), 2018100, 100, N'rgdg', 43, N'Nos', 2, 86, N'MBFU/2018/7/8/17')
INSERT [dbo].[tblSales] ([sellingId], [date], [userId], [itemId], [itemName], [quantity], [unit], [unitPrice], [totalPrice], [invoiceNo]) VALUES (CAST(12 AS Numeric(18, 0)), CAST(0x723E0B00 AS Date), 2018100, 100, N'rgdg', 4, N'Nos', 5, 20, N'MBFU/2018/7/8/18')
INSERT [dbo].[tblSales] ([sellingId], [date], [userId], [itemId], [itemName], [quantity], [unit], [unitPrice], [totalPrice], [invoiceNo]) VALUES (CAST(13 AS Numeric(18, 0)), CAST(0x723E0B00 AS Date), 2018100, 100, N'rgdg', 5, N'Nos', 5, 25, N'MBFU/2018/7/8/25')
INSERT [dbo].[tblSales] ([sellingId], [date], [userId], [itemId], [itemName], [quantity], [unit], [unitPrice], [totalPrice], [invoiceNo]) VALUES (CAST(14 AS Numeric(18, 0)), CAST(0x913E0B00 AS Date), 2018100, 100, N'rgdg', 45, N'Nos', 50, 2250, N'MBFU/2018/8/8/27')
INSERT [dbo].[tblSales] ([sellingId], [date], [userId], [itemId], [itemName], [quantity], [unit], [unitPrice], [totalPrice], [invoiceNo]) VALUES (CAST(15 AS Numeric(18, 0)), CAST(0x913E0B00 AS Date), 2018100, 101, N'uhybkj', 10, N'Kg', 40, 400, N'MBFU/2018/8/8/27')
SET IDENTITY_INSERT [dbo].[tblSales] OFF
/****** Object:  Table [dbo].[tblPurchase]    Script Date: 08/09/2018 11:50:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblPurchase](
	[purchaseId] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[date] [date] NULL,
	[userId] [int] NULL,
	[itemId] [int] NULL,
	[itemName] [varchar](50) NULL,
	[quantity] [int] NULL,
	[unit] [varchar](20) NULL,
	[unitPrice] [real] NULL,
	[unionFee] [real] NULL,
	[TA] [real] NULL,
	[totalPrice] [real] NULL,
	[invoiceNo] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tblPurchase] ON
INSERT [dbo].[tblPurchase] ([purchaseId], [date], [userId], [itemId], [itemName], [quantity], [unit], [unitPrice], [unionFee], [TA], [totalPrice], [invoiceNo]) VALUES (CAST(1 AS Numeric(18, 0)), CAST(0x723E0B00 AS Date), 2018100, 100, N'rgdg', 76, N'Nos', 54, 0, 0, 4104, N'MBFU/2018/7/8/0')
INSERT [dbo].[tblPurchase] ([purchaseId], [date], [userId], [itemId], [itemName], [quantity], [unit], [unitPrice], [unionFee], [TA], [totalPrice], [invoiceNo]) VALUES (CAST(2 AS Numeric(18, 0)), CAST(0x723E0B00 AS Date), 2018100, 100, N'rgdg', 456, N'Nos', 88, 0, 0, 40128, N'MBFU/2018/7/8/19')
INSERT [dbo].[tblPurchase] ([purchaseId], [date], [userId], [itemId], [itemName], [quantity], [unit], [unitPrice], [unionFee], [TA], [totalPrice], [invoiceNo]) VALUES (CAST(3 AS Numeric(18, 0)), CAST(0x723E0B00 AS Date), 2018100, 100, N'rgdg', 3, N'Nos', 6, 0, 0, 18, N'MBFU/2018/7/8/20')
INSERT [dbo].[tblPurchase] ([purchaseId], [date], [userId], [itemId], [itemName], [quantity], [unit], [unitPrice], [unionFee], [TA], [totalPrice], [invoiceNo]) VALUES (CAST(4 AS Numeric(18, 0)), CAST(0x723E0B00 AS Date), 2018101, 101, N'uhybkj', 65, N'Nos', 77, 0, 0, 5005, N'MBFU/2018/7/8/21')
INSERT [dbo].[tblPurchase] ([purchaseId], [date], [userId], [itemId], [itemName], [quantity], [unit], [unitPrice], [unionFee], [TA], [totalPrice], [invoiceNo]) VALUES (CAST(5 AS Numeric(18, 0)), CAST(0x723E0B00 AS Date), 2018100, 100, N'rgdg', 4, N'Nos', 8, 0, 0, 32, N'MBFU/2018/7/8/22')
INSERT [dbo].[tblPurchase] ([purchaseId], [date], [userId], [itemId], [itemName], [quantity], [unit], [unitPrice], [unionFee], [TA], [totalPrice], [invoiceNo]) VALUES (CAST(6 AS Numeric(18, 0)), CAST(0x723E0B00 AS Date), 2018101, 100, N'rgdg', 3, N'Nos', 8, 0, 0, 24, N'MBFU/2018/7/8/23')
INSERT [dbo].[tblPurchase] ([purchaseId], [date], [userId], [itemId], [itemName], [quantity], [unit], [unitPrice], [unionFee], [TA], [totalPrice], [invoiceNo]) VALUES (CAST(7 AS Numeric(18, 0)), CAST(0x723E0B00 AS Date), 2018100, 101, N'uhybkj', 4, N'Nos', 45, 0, 0, 180, N'MBFU/2018/7/8/24')
INSERT [dbo].[tblPurchase] ([purchaseId], [date], [userId], [itemId], [itemName], [quantity], [unit], [unitPrice], [unionFee], [TA], [totalPrice], [invoiceNo]) VALUES (CAST(8 AS Numeric(18, 0)), CAST(0x723E0B00 AS Date), 2018100, 100, N'rgdg', 5, N'Nos', 5, 0, 0, 25, N'MBFU/2018/7/8/26')
INSERT [dbo].[tblPurchase] ([purchaseId], [date], [userId], [itemId], [itemName], [quantity], [unit], [unitPrice], [unionFee], [TA], [totalPrice], [invoiceNo]) VALUES (CAST(9 AS Numeric(18, 0)), CAST(0x723E0B00 AS Date), 2018100, 101, N'uhybkj', 45, N'Nos', 43, 0, 0, 1935, N'MBFU/2018/7/8/26')
INSERT [dbo].[tblPurchase] ([purchaseId], [date], [userId], [itemId], [itemName], [quantity], [unit], [unitPrice], [unionFee], [TA], [totalPrice], [invoiceNo]) VALUES (CAST(10 AS Numeric(18, 0)), CAST(0x903E0B00 AS Date), 2018100, 100, N'rgdg', 3, N'Nos', 4, 0, 0, 11.4, N'MBFU/2018/8/7/28')
INSERT [dbo].[tblPurchase] ([purchaseId], [date], [userId], [itemId], [itemName], [quantity], [unit], [unitPrice], [unionFee], [TA], [totalPrice], [invoiceNo]) VALUES (CAST(11 AS Numeric(18, 0)), CAST(0x903E0B00 AS Date), 2018100, 100, N'rgdg', 23, N'Nos', 44, 0, 0, 961.4, N'MBFU/2018/8/7/29')
INSERT [dbo].[tblPurchase] ([purchaseId], [date], [userId], [itemId], [itemName], [quantity], [unit], [unitPrice], [unionFee], [TA], [totalPrice], [invoiceNo]) VALUES (CAST(12 AS Numeric(18, 0)), CAST(0x903E0B00 AS Date), 2018100, 100, N'rgdg', 43, N'Nos', 2, 0, 0, 131.7, N'MBFU/2018/8/7/29')
SET IDENTITY_INSERT [dbo].[tblPurchase] OFF
/****** Object:  Table [dbo].[tblLogin]    Script Date: 08/09/2018 11:50:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblLogin](
	[username] [varchar](50) NULL,
	[password] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[tblLogin] ([username], [password]) VALUES (N'admin', N'admin')
/****** Object:  Table [dbo].[tblItem]    Script Date: 08/09/2018 11:50:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblItem](
	[itemId] [int] IDENTITY(100,1) NOT NULL,
	[name] [varchar](50) NULL,
	[description] [varchar](200) NULL,
	[price] [real] NULL,
	[unit] [varchar](20) NULL,
	[rank] [int] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tblItem] ON
INSERT [dbo].[tblItem] ([itemId], [name], [description], [price], [unit], [rank]) VALUES (100, N'rgdg', N'fghfh
fghgf', 5675, N'Ltr', 1)
INSERT [dbo].[tblItem] ([itemId], [name], [description], [price], [unit], [rank]) VALUES (101, N'uhybkj', N'tyubinj', 45646, N'Nos', 1)
INSERT [dbo].[tblItem] ([itemId], [name], [description], [price], [unit], [rank]) VALUES (102, N'Pineapple', N'A fruit', 150, N'Kg', 1)
INSERT [dbo].[tblItem] ([itemId], [name], [description], [price], [unit], [rank]) VALUES (103, N'Rice', N'A food Item', 40, N'Kg', 1)
SET IDENTITY_INSERT [dbo].[tblItem] OFF
/****** Object:  Table [dbo].[tblDayBook2]    Script Date: 08/09/2018 11:50:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblDayBook2](
	[dayBookId] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[date] [date] NULL,
	[sellerId] [numeric](18, 0) NULL,
	[sellerName] [varchar](50) NULL,
	[invoiceNo] [varchar](50) NULL,
	[buyerId] [numeric](18, 0) NULL,
	[buyerName] [varchar](50) NULL,
	[quantity] [real] NULL,
	[unitPrice] [real] NULL,
	[TotalPrice] [real] NULL,
	[unionFee] [real] NULL,
	[TA] [real] NULL,
	[SellerFee] [real] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tblDayBook2] ON
INSERT [dbo].[tblDayBook2] ([dayBookId], [date], [sellerId], [sellerName], [invoiceNo], [buyerId], [buyerName], [quantity], [unitPrice], [TotalPrice], [unionFee], [TA], [SellerFee]) VALUES (CAST(1 AS Numeric(18, 0)), CAST(0xB63D0B00 AS Date), CAST(100 AS Numeric(18, 0)), N'Vishnu', N'MFBU/2017/0123', CAST(200 AS Numeric(18, 0)), N'RamaKrishnan', 100, 500, 52000, 200, 50, 1850)
INSERT [dbo].[tblDayBook2] ([dayBookId], [date], [sellerId], [sellerName], [invoiceNo], [buyerId], [buyerName], [quantity], [unitPrice], [TotalPrice], [unionFee], [TA], [SellerFee]) VALUES (CAST(2 AS Numeric(18, 0)), CAST(0x903E0B00 AS Date), CAST(2018100 AS Numeric(18, 0)), N'uyg', N'MBFU/2018/8/7/29', CAST(2018100 AS Numeric(18, 0)), N'uyg', 66, 0, 1093, 54.65, 50, 1038.35)
SET IDENTITY_INSERT [dbo].[tblDayBook2] OFF
/****** Object:  Table [dbo].[tblDayBook]    Script Date: 08/09/2018 11:50:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblDayBook](
	[dayBookId] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[date] [date] NULL,
	[userId] [int] NULL,
	[itemId] [int] NULL,
	[itemName] [varchar](50) NULL,
	[quantity] [int] NULL,
	[unit] [varchar](20) NULL,
	[unitPrice] [real] NULL,
	[unionFee] [real] NULL,
	[TA] [real] NULL,
	[totalPrice] [real] NULL,
	[type] [varchar](10) NULL,
	[invoiceNo] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tblDayBook] ON
INSERT [dbo].[tblDayBook] ([dayBookId], [date], [userId], [itemId], [itemName], [quantity], [unit], [unitPrice], [unionFee], [TA], [totalPrice], [type], [invoiceNo]) VALUES (CAST(1 AS Numeric(18, 0)), CAST(0x723E0B00 AS Date), 2018100, 100, N'rgdg', 4, N'Nos', 5, 0, 0, 20, N'Sales', N'MBFU/2018/7/8/18')
INSERT [dbo].[tblDayBook] ([dayBookId], [date], [userId], [itemId], [itemName], [quantity], [unit], [unitPrice], [unionFee], [TA], [totalPrice], [type], [invoiceNo]) VALUES (CAST(2 AS Numeric(18, 0)), CAST(0x723E0B00 AS Date), 2018100, 100, N'rgdg', 456, N'Nos', 88, 0, 0, 56, N'Purchase', N'MBFU/2018/7/8/19')
INSERT [dbo].[tblDayBook] ([dayBookId], [date], [userId], [itemId], [itemName], [quantity], [unit], [unitPrice], [unionFee], [TA], [totalPrice], [type], [invoiceNo]) VALUES (CAST(3 AS Numeric(18, 0)), CAST(0x723E0B00 AS Date), 2018100, 100, N'rgdg', 3, N'Nos', 6, 0, 0, 4, N'Purchase', N'MBFU/2018/7/8/20')
INSERT [dbo].[tblDayBook] ([dayBookId], [date], [userId], [itemId], [itemName], [quantity], [unit], [unitPrice], [unionFee], [TA], [totalPrice], [type], [invoiceNo]) VALUES (CAST(4 AS Numeric(18, 0)), CAST(0x723E0B00 AS Date), 2018101, 101, N'uhybkj', 65, N'Nos', 77, 0, 0, 56, N'Purchase', N'MBFU/2018/7/8/21')
INSERT [dbo].[tblDayBook] ([dayBookId], [date], [userId], [itemId], [itemName], [quantity], [unit], [unitPrice], [unionFee], [TA], [totalPrice], [type], [invoiceNo]) VALUES (CAST(5 AS Numeric(18, 0)), CAST(0x723E0B00 AS Date), 2018100, 100, N'rgdg', 4, N'Nos', 8, 0, 0, 6, N'Purchase', N'MBFU/2018/7/8/22')
INSERT [dbo].[tblDayBook] ([dayBookId], [date], [userId], [itemId], [itemName], [quantity], [unit], [unitPrice], [unionFee], [TA], [totalPrice], [type], [invoiceNo]) VALUES (CAST(6 AS Numeric(18, 0)), CAST(0x723E0B00 AS Date), 2018101, 100, N'rgdg', 3, N'Nos', 8, 0, 0, 4, N'Purchase', N'MBFU/2018/7/8/23')
INSERT [dbo].[tblDayBook] ([dayBookId], [date], [userId], [itemId], [itemName], [quantity], [unit], [unitPrice], [unionFee], [TA], [totalPrice], [type], [invoiceNo]) VALUES (CAST(7 AS Numeric(18, 0)), CAST(0x723E0B00 AS Date), 2018100, 101, N'uhybkj', 4, N'Nos', 45, 0, 0, 55, N'Purchase', N'MBFU/2018/7/8/24')
INSERT [dbo].[tblDayBook] ([dayBookId], [date], [userId], [itemId], [itemName], [quantity], [unit], [unitPrice], [unionFee], [TA], [totalPrice], [type], [invoiceNo]) VALUES (CAST(8 AS Numeric(18, 0)), CAST(0x723E0B00 AS Date), 2018100, 100, N'rgdg', 5, N'Nos', 5, 0, 0, 25, N'Sales', N'MBFU/2018/7/8/25')
INSERT [dbo].[tblDayBook] ([dayBookId], [date], [userId], [itemId], [itemName], [quantity], [unit], [unitPrice], [unionFee], [TA], [totalPrice], [type], [invoiceNo]) VALUES (CAST(9 AS Numeric(18, 0)), CAST(0x723E0B00 AS Date), 2018100, 100, N'rgdg', 5, N'Nos', 5, 0, 0, 1.25, N'Purchase', N'MBFU/2018/7/8/26')
INSERT [dbo].[tblDayBook] ([dayBookId], [date], [userId], [itemId], [itemName], [quantity], [unit], [unitPrice], [unionFee], [TA], [totalPrice], [type], [invoiceNo]) VALUES (CAST(10 AS Numeric(18, 0)), CAST(0x723E0B00 AS Date), 2018100, 101, N'uhybkj', 45, N'Nos', 43, 0, 0, 96.75, N'Purchase', N'MBFU/2018/7/8/26')
INSERT [dbo].[tblDayBook] ([dayBookId], [date], [userId], [itemId], [itemName], [quantity], [unit], [unitPrice], [unionFee], [TA], [totalPrice], [type], [invoiceNo]) VALUES (CAST(11 AS Numeric(18, 0)), CAST(0x913E0B00 AS Date), 2018100, 100, N'rgdg', 45, N'Nos', 50, 0, 0, 2250, N'Sales', N'MBFU/2018/8/8/27')
INSERT [dbo].[tblDayBook] ([dayBookId], [date], [userId], [itemId], [itemName], [quantity], [unit], [unitPrice], [unionFee], [TA], [totalPrice], [type], [invoiceNo]) VALUES (CAST(12 AS Numeric(18, 0)), CAST(0x913E0B00 AS Date), 2018100, 101, N'uhybkj', 10, N'Kg', 40, 0, 0, 400, N'Sales', N'MBFU/2018/8/8/27')
INSERT [dbo].[tblDayBook] ([dayBookId], [date], [userId], [itemId], [itemName], [quantity], [unit], [unitPrice], [unionFee], [TA], [totalPrice], [type], [invoiceNo]) VALUES (CAST(13 AS Numeric(18, 0)), CAST(0x903E0B00 AS Date), 2018100, 100, N'rgdg', 3, N'Nos', 4, 0, 0, 0.6, N'Purchase', N'MBFU/2018/8/7/28')
INSERT [dbo].[tblDayBook] ([dayBookId], [date], [userId], [itemId], [itemName], [quantity], [unit], [unitPrice], [unionFee], [TA], [totalPrice], [type], [invoiceNo]) VALUES (CAST(14 AS Numeric(18, 0)), CAST(0x903E0B00 AS Date), 2018100, 100, N'rgdg', 23, N'Nos', 44, 0, 0, 50.6, N'Purchase', N'MBFU/2018/8/7/29')
INSERT [dbo].[tblDayBook] ([dayBookId], [date], [userId], [itemId], [itemName], [quantity], [unit], [unitPrice], [unionFee], [TA], [totalPrice], [type], [invoiceNo]) VALUES (CAST(15 AS Numeric(18, 0)), CAST(0x903E0B00 AS Date), 2018100, 100, N'rgdg', 43, N'Nos', 2, 0, 0, 4.3, N'Purchase', N'MBFU/2018/8/7/29')
SET IDENTITY_INSERT [dbo].[tblDayBook] OFF
