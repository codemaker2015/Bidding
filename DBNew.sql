USE [VBidding]
GO
/****** Object:  Table [dbo].[tblUser]    Script Date: 08/10/2018 12:10:08 ******/
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
/****** Object:  Table [dbo].[tblSerial]    Script Date: 08/10/2018 12:10:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblSerial](
	[SlNo] [numeric](18, 0) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblSales]    Script Date: 08/10/2018 12:10:08 ******/
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
/****** Object:  Table [dbo].[tblPurchase]    Script Date: 08/10/2018 12:10:08 ******/
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
/****** Object:  Table [dbo].[tblLogin]    Script Date: 08/10/2018 12:10:08 ******/
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
/****** Object:  Table [dbo].[tblItem]    Script Date: 08/10/2018 12:10:08 ******/
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
/****** Object:  Table [dbo].[tblDayBook2]    Script Date: 08/10/2018 12:10:08 ******/
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
/****** Object:  Table [dbo].[tblDayBook]    Script Date: 08/10/2018 12:10:08 ******/
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
/****** Object:  Table [dbo].[tblBLFO]    Script Date: 08/10/2018 12:10:08 ******/
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
/****** Object:  Table [dbo].[tblBank]    Script Date: 08/10/2018 12:10:08 ******/
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
