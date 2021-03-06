USE [VBidding]
GO
/****** Object:  Table [dbo].[tblUser]    Script Date: 09/27/2018 01:29:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblUser](
	[userId] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NULL,
	[address] [varchar](200) NULL,
	[contact] [varchar](15) NULL,
	[capital] [real] NULL,
	[type] [varchar](20) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblSerial]    Script Date: 09/27/2018 01:29:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblSerial](
	[SlNo] [numeric](18, 0) NULL
) ON [PRIMARY]
GO
INSERT [dbo].[tblSerial] ([SlNo]) VALUES (CAST(26 AS Numeric(18, 0)))
/****** Object:  Table [dbo].[tblSales]    Script Date: 09/27/2018 01:29:16 ******/
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
	[serialNo] [numeric](18, 0) NULL,
	[itemId] [int] NULL,
	[itemName] [varchar](50) NULL,
	[count] [real] NULL,
	[unitPrice] [real] NULL,
	[quantity] [real] NULL,
	[totalPrice] [real] NULL,
	[invoiceNo] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblPurchase]    Script Date: 09/27/2018 01:29:16 ******/
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
	[serialNo] [numeric](18, 0) NULL,
	[itemId] [int] NULL,
	[itemName] [varchar](50) NULL,
	[count] [numeric](18, 0) NULL,
	[unitPrice] [real] NULL,
	[quantity] [real] NULL,
	[totalPrice] [real] NULL,
	[invoiceNo] [varchar](50) NULL,
	[unionFee] [numeric](18, 0) NULL,
	[TA] [numeric](18, 0) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblLogin]    Script Date: 09/27/2018 01:29:16 ******/
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
/****** Object:  Table [dbo].[tblItem]    Script Date: 09/27/2018 01:29:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblItem](
	[itemId] [int] IDENTITY(1,1) NOT NULL,
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
INSERT [dbo].[tblItem] ([itemId], [name], [description], [price], [unit], [rank]) VALUES (1, N'Etthakkula', N'Food', 0, N'Kg', 1)
INSERT [dbo].[tblItem] ([itemId], [name], [description], [price], [unit], [rank]) VALUES (2, N'Fashion Fruit', N'Lot Item', 0, N'Other', 1)
INSERT [dbo].[tblItem] ([itemId], [name], [description], [price], [unit], [rank]) VALUES (3, N'Rabuttan', N'Lot', 0, N'Other', 1)
INSERT [dbo].[tblItem] ([itemId], [name], [description], [price], [unit], [rank]) VALUES (4, N'Mambazham', N'Lot', 0, N'Other', 1)
INSERT [dbo].[tblItem] ([itemId], [name], [description], [price], [unit], [rank]) VALUES (19, N'Palen', N'Vegitable', 0, N'Other', 1)
INSERT [dbo].[tblItem] ([itemId], [name], [description], [price], [unit], [rank]) VALUES (5, N'Pappaya', N'Lot', 0, N'Other', 1)
INSERT [dbo].[tblItem] ([itemId], [name], [description], [price], [unit], [rank]) VALUES (6, N'Perakka', N'Fruit', 0, N'Other', 1)
INSERT [dbo].[tblItem] ([itemId], [name], [description], [price], [unit], [rank]) VALUES (7, N'Atha', N'Fruit', 0, N'Other', 1)
INSERT [dbo].[tblItem] ([itemId], [name], [description], [price], [unit], [rank]) VALUES (8, N'Mullatha', N'Fruit', 0, N'Other', 1)
INSERT [dbo].[tblItem] ([itemId], [name], [description], [price], [unit], [rank]) VALUES (9, N'Cheru Naranga', N'Vegitable', 0, N'Other', 1)
INSERT [dbo].[tblItem] ([itemId], [name], [description], [price], [unit], [rank]) VALUES (10, N'Kari Naranga', N'Vegitable', 0, N'Other', 1)
INSERT [dbo].[tblItem] ([itemId], [name], [description], [price], [unit], [rank]) VALUES (11, N'Babloos', N'Vegitable', 0, N'Other', 1)
INSERT [dbo].[tblItem] ([itemId], [name], [description], [price], [unit], [rank]) VALUES (12, N'Payar', N'Vegitable', 0, N'Kg', 1)
INSERT [dbo].[tblItem] ([itemId], [name], [description], [price], [unit], [rank]) VALUES (13, N'Kanthari Mulaku', N'Vegitable', 0, N'Other', 1)
INSERT [dbo].[tblItem] ([itemId], [name], [description], [price], [unit], [rank]) VALUES (14, N'Kovakka', N'Vegitable', 0, N'Other', 1)
INSERT [dbo].[tblItem] ([itemId], [name], [description], [price], [unit], [rank]) VALUES (15, N'Vendakka', N'Vegitable', 0, N'Other', 1)
SET IDENTITY_INSERT [dbo].[tblItem] OFF
/****** Object:  Table [dbo].[tblDayBook2]    Script Date: 09/27/2018 01:29:16 ******/
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
/****** Object:  Table [dbo].[tblDayBook]    Script Date: 09/27/2018 01:29:16 ******/
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
	[serialNo] [numeric](18, 0) NULL,
	[itemId] [int] NULL,
	[itemName] [varchar](50) NULL,
	[count] [numeric](18, 0) NULL,
	[unitPrice] [real] NULL,
	[quantity] [real] NULL,
	[unionFee] [real] NULL,
	[TA] [real] NULL,
	[totalPrice] [real] NULL,
	[type] [varchar](10) NULL,
	[invoiceNo] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblBLFO]    Script Date: 09/27/2018 01:29:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblBLFO](
	[serialNo] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[year] [numeric](18, 0) NULL,
	[seedMoney] [real] NULL,
	[transCost] [real] NULL,
	[oprCost] [real] NULL,
	[infras] [real] NULL,
	[revolving] [real] NULL,
	[total] [real] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblBank]    Script Date: 09/27/2018 01:29:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblBank](
	[serialNo] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[transDate] [date] NULL,
	[purpose] [varchar](200) NULL,
	[amount] [real] NULL,
	[transType] [varchar](10) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblBalance]    Script Date: 09/27/2018 01:29:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblBalance](
	[balanceId] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[userId] [numeric](18, 0) NULL,
	[name] [varchar](50) NULL,
	[date] [date] NULL,
	[totalAmount] [real] NULL,
	[amountPaid] [real] NULL,
	[balanceAmount] [real] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
