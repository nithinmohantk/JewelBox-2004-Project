if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[LoginDelecte]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[LoginDelecte]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[LoginInsert]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[LoginInsert]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[LoginSelect]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[LoginSelect]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[LoginUpdate]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[LoginUpdate]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[BILL]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[BILL]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Exchange]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[Exchange]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Login]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[Login]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Purchase]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[Purchase]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Rate]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[Rate]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[ReOrder]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[ReOrder]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Received]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[Received]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Sales]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[Sales]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[SalesMan]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[SalesMan]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Stock]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[Stock]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[StockLevel]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[StockLevel]
GO

CREATE TABLE [dbo].[BILL] (
	[BILLNO] [numeric](18, 0) NOT NULL ,
	[ITEMNO] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[ITEMTYPE] [nvarchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[JEWELTYPE] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[ITEMQTY] [int] NOT NULL ,
	[SALESMANID] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[DATE] [datetime] NOT NULL ,
	[TIME] [nvarchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[BILLTYPE] [nvarchar] (12) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[AMOUNT] [decimal](24, 0) NOT NULL ,
	[NAME] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[ADDRESS] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[COUNTER] [int] NULL ,
	[GWEIGHT] [real] NULL ,
	[ERATE] [real] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[Exchange] (
	[DATE] [datetime] NOT NULL ,
	[ITEMTYPE] [nvarchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[ITEMQTY] [int] NULL ,
	[AMOUNT] [money] NOT NULL ,
	[RATE] [real] NOT NULL ,
	[BILLNO] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[GWEIGHT] [real] NULL ,
	[TIME] [nvarchar] (12) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[JEWELTYPE] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[ITEMNO] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[Login] (
	[SALESMANID] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[LOGINID] [nvarchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[PASSWORD] [nvarchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[EXPIRED] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[Purchase] (
	[ORDERNO] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[DATE] [datetime] NOT NULL ,
	[ITEMNO] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[ITEMQTY] [int] NOT NULL ,
	[AMOUNT] [money] NULL ,
	[TOWHOM] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[BACKORDER] [int] NULL ,
	[UPDATED] [int] NULL ,
	[TIME] [nvarchar] (12) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[Rate] (
	[DATE] [datetime] NOT NULL ,
	[GOLD22CT] [real] NOT NULL ,
	[GOLD24CT] [real] NOT NULL ,
	[SILVER] [real] NOT NULL ,
	[PLATINUM] [real] NOT NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[ReOrder] (
	[ITEMNO] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[CURRENT_STK] [int] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[Received] (
	[ORDERNO] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[ITEMQTY] [int] NULL ,
	[DATE] [datetime] NULL ,
	[ITEMNO] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[Sales] (
	[SALESMANID] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[DATE] [datetime] NOT NULL ,
	[ITEMNO] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[BILLNO] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[AMOUNT] [money] NOT NULL ,
	[COUNTER] [int] NULL ,
	[TIME] [nvarchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[NAME] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[ADDRESS] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[UPDATED] [int] NULL ,
	[ITEMQTY] [int] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[SalesMan] (
	[SALESMANID] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[FIRSTNAME] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[LASTNAME] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[ADDRESS] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[CITY] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[STATE] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[AGE] [int] NOT NULL ,
	[ZIPCODE] [nvarchar] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[PHONENO] [nvarchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[DATEOFBIRTH] [datetime] NULL ,
	[DATEOFJOIN] [datetime] NULL ,
	[DATEOFLEAVE] [datetime] NULL ,
	[STATUS] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[GENDER] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[Stock] (
	[DATE] [datetime] NOT NULL ,
	[ITEMTYPE] [nvarchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[ITEMNO] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[DESCRIPTION] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[GROSSWEIGHT] [real] NOT NULL ,
	[STONEWEIGHT] [real] NULL ,
	[STONEAMT] [real] NULL ,
	[LABOURCHARGE] [real] NULL ,
	[ITEMQTY] [real] NULL ,
	[NETWEIGHT] [real] NOT NULL ,
	[STATUS] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[JEWELTYPE] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[StockLevel] (
	[id] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[REORDER] [int] NOT NULL ,
	[SURPLUS] [int] NOT NULL ,
	[SAFE] [int] NOT NULL ,
	[EMPTY] [int] NOT NULL ,
	[DANGER] [int] NOT NULL 
) ON [PRIMARY]
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

CREATE PROCEDURE dbo.LoginDelecte
(
	@Original_SALESMANID nvarchar(10),
	@Original_EXPIRED char(10),
	@Original_LOGINID nvarchar(15),
	@Original_PASSWORD nvarchar(15)
)
AS
	SET NOCOUNT OFF;
DELETE FROM Login WHERE (SALESMANID = @Original_SALESMANID) AND (EXPIRED = @Original_EXPIRED OR @Original_EXPIRED IS NULL AND EXPIRED IS NULL) AND (LOGINID = @Original_LOGINID) AND (PASSWORD = @Original_PASSWORD OR @Original_PASSWORD IS NULL AND PASSWORD IS NULL)
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

CREATE PROCEDURE dbo.LoginInsert
(
	@SALESMANID nvarchar(10),
	@LOGINID nvarchar(15),
	@PASSWORD nvarchar(15),
	@EXPIRED char(10)
)
AS
	SET NOCOUNT OFF;
INSERT INTO Login(SALESMANID, LOGINID, PASSWORD, EXPIRED) VALUES (@SALESMANID, @LOGINID, @PASSWORD, @EXPIRED);
	SELECT SALESMANID, LOGINID, PASSWORD, EXPIRED FROM Login WHERE (SALESMANID = @SALESMANID)
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

CREATE PROCEDURE dbo.LoginSelect
AS
	SET NOCOUNT ON;
SELECT SALESMANID, LOGINID, PASSWORD, EXPIRED FROM Login
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

CREATE PROCEDURE dbo.LoginUpdate
(
	@SALESMANID nvarchar(10),
	@LOGINID nvarchar(15),
	@PASSWORD nvarchar(15),
	@EXPIRED char(10),
	@Original_SALESMANID nvarchar(10),
	@Original_EXPIRED char(10),
	@Original_LOGINID nvarchar(15),
	@Original_PASSWORD nvarchar(15)
)
AS
	SET NOCOUNT OFF;
UPDATE Login SET SALESMANID = @SALESMANID, LOGINID = @LOGINID, PASSWORD = @PASSWORD, EXPIRED = @EXPIRED WHERE (SALESMANID = @Original_SALESMANID) AND (EXPIRED = @Original_EXPIRED OR @Original_EXPIRED IS NULL AND EXPIRED IS NULL) AND (LOGINID = @Original_LOGINID) AND (PASSWORD = @Original_PASSWORD OR @Original_PASSWORD IS NULL AND PASSWORD IS NULL);
	SELECT SALESMANID, LOGINID, PASSWORD, EXPIRED FROM Login WHERE (SALESMANID = @SALESMANID)
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

