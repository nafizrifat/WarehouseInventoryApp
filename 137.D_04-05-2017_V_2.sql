USE [master]
GO
/****** Object:  Database [RetailSalesManagement]    Script Date: 5/4/2017 9:42:37 PM ******/
CREATE DATABASE [RetailSalesManagement]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'RetailSalesManagement', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER2014\MSSQL\DATA\RetailSalesManagement.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'RetailSalesManagement_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER2014\MSSQL\DATA\RetailSalesManagement_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [RetailSalesManagement] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [RetailSalesManagement].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [RetailSalesManagement] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [RetailSalesManagement] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [RetailSalesManagement] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [RetailSalesManagement] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [RetailSalesManagement] SET ARITHABORT OFF 
GO
ALTER DATABASE [RetailSalesManagement] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [RetailSalesManagement] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [RetailSalesManagement] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [RetailSalesManagement] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [RetailSalesManagement] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [RetailSalesManagement] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [RetailSalesManagement] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [RetailSalesManagement] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [RetailSalesManagement] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [RetailSalesManagement] SET  DISABLE_BROKER 
GO
ALTER DATABASE [RetailSalesManagement] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [RetailSalesManagement] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [RetailSalesManagement] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [RetailSalesManagement] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [RetailSalesManagement] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [RetailSalesManagement] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [RetailSalesManagement] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [RetailSalesManagement] SET RECOVERY FULL 
GO
ALTER DATABASE [RetailSalesManagement] SET  MULTI_USER 
GO
ALTER DATABASE [RetailSalesManagement] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [RetailSalesManagement] SET DB_CHAINING OFF 
GO
ALTER DATABASE [RetailSalesManagement] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [RetailSalesManagement] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [RetailSalesManagement] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'RetailSalesManagement', N'ON'
GO
USE [RetailSalesManagement]
GO
/****** Object:  Table [dbo].[InvAddress]    Script Date: 5/4/2017 9:42:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[InvAddress](
	[AddressId] [int] IDENTITY(1,1) NOT NULL,
	[AddressCode] [varchar](50) NULL,
	[HomeAddress1] [varchar](350) NULL,
	[HomeAddress2] [varchar](350) NULL,
	[HomeCityId] [int] NULL,
	[HomePostalCode] [varchar](50) NULL,
	[HomeDistrictId] [int] NULL,
	[OfficeAddress1] [varchar](350) NULL,
	[OfficeAddress2] [varchar](350) NULL,
	[OfficeCityId] [int] NULL,
	[OfficePostalCode] [varchar](50) NULL,
	[OfficeDistrictId] [int] NULL,
	[AddressTypeName] [varchar](50) NULL,
	[IsActive] [bit] NULL,
	[IsDeleted] [bit] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedDate] [datetime] NULL,
 CONSTRAINT [PK_InvAddress] PRIMARY KEY CLUSTERED 
(
	[AddressId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[InvCategory]    Script Date: 5/4/2017 9:42:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[InvCategory](
	[CategoryId] [int] IDENTITY(1,1) NOT NULL,
	[CategoryCode] [varchar](50) NULL,
	[CategoryName] [varchar](50) NULL,
	[CategoryDetails] [varchar](350) NULL,
	[IsActive] [bit] NULL,
	[IsDeleted] [bit] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedDate] [datetime] NULL,
 CONSTRAINT [PK_InvCategory] PRIMARY KEY CLUSTERED 
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[InvCityList]    Script Date: 5/4/2017 9:42:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[InvCityList](
	[CityId] [int] IDENTITY(1,1) NOT NULL,
	[CityName] [varchar](50) NULL,
	[CityDetails] [varchar](350) NULL,
	[IsActive] [bit] NULL,
	[IsDeleted] [bit] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedDate] [datetime] NULL,
 CONSTRAINT [PK_InvLocationList] PRIMARY KEY CLUSTERED 
(
	[CityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[InvColor]    Script Date: 5/4/2017 9:42:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[InvColor](
	[ColorId] [int] IDENTITY(1,1) NOT NULL,
	[ColorCode] [varchar](50) NULL,
	[ColorName] [varchar](50) NULL,
	[ColorDetails] [varchar](350) NULL,
	[IsActive] [bit] NULL,
	[IsDeleted] [bit] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedDate] [datetime] NULL,
 CONSTRAINT [PK_InvColor_1] PRIMARY KEY CLUSTERED 
(
	[ColorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[InvDiscount]    Script Date: 5/4/2017 9:42:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[InvDiscount](
	[DiscountId] [int] IDENTITY(1,1) NOT NULL,
	[DiscountCode] [varchar](50) NULL,
	[DiscountName] [varchar](50) NULL,
	[IsDiscountPercent] [bit] NULL,
	[DiscountFixedAmount] [decimal](18, 2) NULL,
	[IsActive] [bit] NULL,
	[IsDeleted] [bit] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedDate] [datetime] NULL,
 CONSTRAINT [PK_InvDiscount_1] PRIMARY KEY CLUSTERED 
(
	[DiscountId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[InvDistrictList]    Script Date: 5/4/2017 9:42:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[InvDistrictList](
	[DistrictId] [int] IDENTITY(1,1) NOT NULL,
	[DistrictName] [varchar](50) NULL,
	[DistrictShortName] [varchar](50) NULL,
	[IsActive] [bit] NULL,
	[IsDeleted] [bit] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedDate] [datetime] NULL,
 CONSTRAINT [PK_InvDistrictList] PRIMARY KEY CLUSTERED 
(
	[DistrictId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[InvFactory]    Script Date: 5/4/2017 9:42:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[InvFactory](
	[FactoryId] [int] IDENTITY(1,1) NOT NULL,
	[AddressId] [int] NULL,
	[FactoryName] [varchar](50) NULL,
	[FactoryCode] [varchar](50) NULL,
	[FactoryNumber] [varchar](50) NULL,
	[FactoryDetails] [varchar](350) NULL,
	[IsActive] [bit] NULL,
	[IsDeleted] [bit] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedDate] [datetime] NULL,
 CONSTRAINT [PK_InvFactory] PRIMARY KEY CLUSTERED 
(
	[FactoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[InvGroup]    Script Date: 5/4/2017 9:42:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[InvGroup](
	[GroupId] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [varchar](50) NULL,
	[GroupCode] [varchar](50) NULL,
	[GroupName] [varchar](50) NULL,
	[GroupDetails] [varchar](350) NULL,
	[CategoryCode] [varchar](50) NULL,
	[IsActive] [bit] NULL,
	[IsDeleted] [bit] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedDate] [datetime] NULL,
 CONSTRAINT [PK_InvGroup_1] PRIMARY KEY CLUSTERED 
(
	[GroupId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[InvItem]    Script Date: 5/4/2017 9:42:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[InvItem](
	[ItemId] [int] IDENTITY(1,1) NOT NULL,
	[ItemCode] [varchar](50) NULL,
	[ItemName] [varchar](50) NULL,
	[ItemDetails] [varchar](350) NULL,
	[GroupCode] [varchar](50) NULL,
	[Ex1] [varchar](50) NULL,
	[IsActive] [bit] NULL,
	[IsDeleted] [bit] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedDate] [datetime] NULL,
 CONSTRAINT [PK_InvItem_1] PRIMARY KEY CLUSTERED 
(
	[ItemId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[InvOutlet]    Script Date: 5/4/2017 9:42:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[InvOutlet](
	[OutletId] [int] IDENTITY(1,1) NOT NULL,
	[AddressId] [int] NULL,
	[OutletName] [varchar](50) NULL,
	[OutletCode] [varchar](50) NULL,
	[OutletNumber] [varchar](50) NULL,
	[OutletRegistrationNumber] [varchar](50) NULL,
	[OutletDetails] [varchar](350) NULL,
	[IsActive] [bit] NULL,
	[IsDeleted] [bit] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedDate] [datetime] NULL,
 CONSTRAINT [PK_InvOutletes] PRIMARY KEY CLUSTERED 
(
	[OutletId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[InvOutletInvoiceDetail]    Script Date: 5/4/2017 9:42:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[InvOutletInvoiceDetail](
	[OutletInvoiceDetailsId] [int] IDENTITY(1,1) NOT NULL,
	[OutletInvoiceMasterId] [int] NOT NULL,
	[ProductId] [int] NULL,
	[ProductQuantity] [float] NULL,
	[Discount] [float] NULL,
	[DiscountPercent] [int] NULL,
	[UnitPrice] [float] NULL,
	[TotalPrice] [float] NULL,
	[Note] [varchar](100) NULL,
	[Status] [int] NULL,
	[IsActive] [bit] NULL,
	[IsChanged] [bit] NULL,
	[IsDeleted] [bit] NULL,
	[IsEdited] [bit] NULL,
	[IsReceived] [bit] NULL,
	[IsReturned] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedDate] [datetime] NULL,
 CONSTRAINT [PK_InvOutletInvoiceDetail] PRIMARY KEY CLUSTERED 
(
	[OutletInvoiceDetailsId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[InvOutletInvoiceHistory]    Script Date: 5/4/2017 9:42:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[InvOutletInvoiceHistory](
	[OutletInvoiceHistoryId] [int] IDENTITY(1,1) NOT NULL,
	[OutletInvoiceId] [int] NOT NULL,
	[OutletPODetailsId] [int] NULL,
	[OutletId] [int] NULL,
	[WarehouseId] [int] NULL,
	[TotalProducts] [float] NULL,
	[TotalPrice] [float] NULL,
	[Status] [int] NULL,
	[IsChanged] [nchar](10) NULL,
	[IsActive] [bit] NULL,
	[IsDeleted] [bit] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedDate] [datetime] NULL,
 CONSTRAINT [PK_Table_1] PRIMARY KEY CLUSTERED 
(
	[OutletInvoiceHistoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[InvOutletInvoiceMaster]    Script Date: 5/4/2017 9:42:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[InvOutletInvoiceMaster](
	[OutletInvoiceMasterId] [int] IDENTITY(1,1) NOT NULL,
	[OutletId] [int] NULL,
	[SalePersonId] [int] NULL,
	[CustomerId] [int] NULL,
	[OutletSaleInvoiceNo] [int] NULL,
	[PaymentMode] [varchar](50) NULL,
	[TotalItem] [float] NULL,
	[VAT] [float] NULL,
	[TotalGrandPrice] [float] NULL,
	[PayableAmount] [float] NULL,
	[Cash] [float] NULL,
	[Credit] [float] NULL,
	[Discount] [float] NULL,
	[Rounding] [float] NULL,
	[PaidAmount] [float] NULL,
	[DueOrRefund] [float] NULL,
	[Note] [varchar](100) NULL,
	[Status] [int] NULL,
	[IsActive] [bit] NULL,
	[IsChanged] [bit] NULL,
	[IsDeleted] [bit] NULL,
	[IsEdited] [bit] NULL,
	[IsFullPaid] [bit] NULL,
	[IsReturned] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedDate] [datetime] NULL,
	[PreviousInvoice] [varchar](50) NULL,
	[NewInvoice] [varchar](50) NULL,
 CONSTRAINT [PK_InvOutletInvoiceMaster] PRIMARY KEY CLUSTERED 
(
	[OutletInvoiceMasterId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[InvOutletPODetail]    Script Date: 5/4/2017 9:42:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[InvOutletPODetail](
	[OutletPODetailsId] [int] IDENTITY(1,1) NOT NULL,
	[OutletPOMasterId] [int] NULL,
	[ProductId] [int] NULL,
	[ProductQuantity] [float] NULL,
	[Note] [varchar](100) NULL,
	[Status] [int] NULL,
	[IsActive] [bit] NULL,
	[IsChanged] [bit] NULL,
	[IsDeleted] [bit] NULL,
	[IsEdited] [bit] NULL,
	[IsReceived] [bit] NULL,
	[IsReturned] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedDate] [datetime] NULL,
 CONSTRAINT [PK_InvOutletPODetail] PRIMARY KEY CLUSTERED 
(
	[OutletPODetailsId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[InvOutletPOInvoiceDetail]    Script Date: 5/4/2017 9:42:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[InvOutletPOInvoiceDetail](
	[OutletPOInvoiceDetailsId] [int] NOT NULL,
	[OutletPOInvoiceMasterId] [int] NULL,
	[Original_OutletPODetailsId] [int] NULL,
	[ProductId] [int] NULL,
	[ProductQuantity] [float] NULL,
	[Status] [int] NULL,
	[Note] [varchar](100) NULL,
	[IsEdited] [bit] NULL,
	[IsReceived] [bit] NULL,
	[IsReturned] [bit] NULL,
	[IsActive] [bit] NULL,
	[IsDeleted] [bit] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedDate] [datetime] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[InvOutletPOInvoiceMaster]    Script Date: 5/4/2017 9:42:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[InvOutletPOInvoiceMaster](
	[OutletPOInvoiceMasterId] [int] IDENTITY(1,1) NOT NULL,
	[Original_OutletPOMasterId] [int] NULL,
	[OutletPOInvoiceNo] [varchar](50) NULL,
	[WarehouseId] [int] NULL,
	[OutletId] [int] NULL,
	[UniqueId] [int] NULL,
	[POReference] [varchar](50) NULL,
	[Status] [int] NULL,
	[Note] [varchar](100) NULL,
	[IsEdited] [bit] NULL,
	[IsReturned] [bit] NULL,
	[IsActive] [bit] NULL,
	[IsDeleted] [bit] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedDate] [datetime] NULL,
 CONSTRAINT [PK_InvOutletPOInvoiceMaster_1] PRIMARY KEY CLUSTERED 
(
	[OutletPOInvoiceMasterId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[InvOutletPOMaster]    Script Date: 5/4/2017 9:42:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[InvOutletPOMaster](
	[OutletPOMasterId] [int] IDENTITY(1,1) NOT NULL,
	[OutletId] [int] NULL,
	[WarehouseId] [int] NULL,
	[Extra1_WarehouseName] [varchar](50) NULL,
	[Note] [varchar](100) NULL,
	[Status] [int] NULL,
	[IsActive] [bit] NULL,
	[IsChanged] [bit] NULL,
	[IsDeleted] [bit] NULL,
	[IsEdited] [bit] NULL,
	[IsReceived] [bit] NULL,
	[IsReturned] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedDate] [datetime] NULL,
 CONSTRAINT [PK_InvOutletPOMaster] PRIMARY KEY CLUSTERED 
(
	[OutletPOMasterId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[InvOutletPOReturnDetail]    Script Date: 5/4/2017 9:42:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[InvOutletPOReturnDetail](
	[OutletPOReturnDetailsId] [int] IDENTITY(1,1) NOT NULL,
	[OutletPOReturnMasterId] [int] NULL,
	[Original_OutletPODetailsId] [int] NULL,
	[ProductId] [int] NULL,
	[ProductQuantity] [float] NULL,
	[Note] [varchar](100) NULL,
	[Status] [int] NULL,
	[IsActive] [bit] NULL,
	[IsChanged] [bit] NULL,
	[IsDeleted] [bit] NULL,
	[IsEdited] [bit] NULL,
	[IsReceived] [bit] NULL,
	[IsReturned] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedDate] [datetime] NULL,
 CONSTRAINT [PK_InvOutletPOInvoiceDetail] PRIMARY KEY CLUSTERED 
(
	[OutletPOReturnDetailsId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[InvOutletPOReturnMaster]    Script Date: 5/4/2017 9:42:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[InvOutletPOReturnMaster](
	[OutletPOReturnMasterId] [int] IDENTITY(1,1) NOT NULL,
	[Original_OutletPOMasterId] [int] NULL,
	[OutletPOInvoiceNo] [varchar](50) NULL,
	[OutletId] [int] NULL,
	[WarehouseId] [int] NULL,
	[Extra1] [varchar](50) NULL,
	[Note] [varchar](100) NULL,
	[RepairCost] [int] NULL,
	[RepairReturnDate] [datetime] NULL,
	[Status] [int] NULL,
	[IsActive] [bit] NULL,
	[IsChanged] [bit] NULL,
	[IsDeleted] [bit] NULL,
	[IsEdited] [bit] NULL,
	[IsReceived] [bit] NULL,
	[IsReturned] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedDate] [datetime] NULL,
 CONSTRAINT [PK_InvOutletPOInvoiceMaster] PRIMARY KEY CLUSTERED 
(
	[OutletPOReturnMasterId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[InvOutletStock]    Script Date: 5/4/2017 9:42:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[InvOutletStock](
	[OutletStockId] [int] IDENTITY(1,1) NOT NULL,
	[WarehouseId] [int] NULL,
	[OutletId] [int] NULL,
	[ProductId] [int] NULL,
	[OutletStockQuantity] [float] NULL,
	[InOut] [int] NULL,
	[AdjustedReason] [varchar](50) NULL,
	[Note] [varchar](100) NULL,
	[Status] [int] NULL,
	[IsActive] [bit] NULL,
	[IsChanged] [bit] NULL,
	[IsDeleted] [bit] NULL,
	[IsEdited] [bit] NULL,
	[IsReceived] [bit] NULL,
	[IsReturned] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedDate] [datetime] NULL,
 CONSTRAINT [PK_InvOutletStock] PRIMARY KEY CLUSTERED 
(
	[OutletStockId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[InvOutletWarrentyRepair]    Script Date: 5/4/2017 9:42:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[InvOutletWarrentyRepair](
	[OutletWarrentyRepairId] [int] IDENTITY(1,1) NOT NULL,
	[OutletInvoiceDetailsId] [int] NULL,
	[OutletSaleInvoiceNo] [varchar](50) NULL,
	[RepairTokenNo] [varchar](50) NULL,
	[WarehouseId] [int] NULL,
	[OutletId] [int] NULL,
	[ProductId] [int] NULL,
	[ProductQuantity] [float] NULL,
	[Problem] [varchar](400) NULL,
	[WarrentyType] [varchar](50) NULL,
	[PurchaseDate] [datetime] NULL,
	[EstimatedReturnDate] [datetime] NULL,
	[ReturnDate] [datetime] NULL,
	[RepairCost] [float] NULL,
	[RepairStatus] [varchar](50) NULL,
	[Note] [varchar](100) NULL,
	[Status] [int] NULL,
	[IsActive] [bit] NULL,
	[IsChanged] [bit] NULL,
	[IsDeleted] [bit] NULL,
	[IsEdited] [bit] NULL,
	[IsReceived] [bit] NULL,
	[IsRepaired] [bit] NULL,
	[IsReturned] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedDate] [datetime] NULL,
 CONSTRAINT [PK_InvOutletWarrentyRepair] PRIMARY KEY CLUSTERED 
(
	[OutletWarrentyRepairId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[InvPackageDetail]    Script Date: 5/4/2017 9:42:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[InvPackageDetail](
	[PackageDetailsId] [int] IDENTITY(1,1) NOT NULL,
	[PackageMasterId] [int] NULL,
	[ProductId] [int] NULL,
	[ProductQuantity] [float] NULL,
	[IsActive] [bit] NULL,
	[IsDeleted] [bit] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedDate] [datetime] NULL,
 CONSTRAINT [PK_InvProductPackageDetails] PRIMARY KEY CLUSTERED 
(
	[PackageDetailsId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[InvPackageMaster]    Script Date: 5/4/2017 9:42:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[InvPackageMaster](
	[PackageMasterId] [int] IDENTITY(1,1) NOT NULL,
	[PackageCode] [varchar](50) NULL,
	[PackageName] [varchar](50) NULL,
	[IsActive] [bit] NULL,
	[IsDeleted] [bit] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedDate] [datetime] NULL,
 CONSTRAINT [PK_InvProductPackage] PRIMARY KEY CLUSTERED 
(
	[PackageMasterId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[InvProduct]    Script Date: 5/4/2017 9:42:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[InvProduct](
	[ProductId] [int] IDENTITY(1,1) NOT NULL,
	[FactoryId] [int] NULL,
	[ItemId] [int] NULL,
	[SizeId] [int] NULL,
	[ColorId] [int] NULL,
	[UoMId] [int] NULL,
	[ProductCode] [varchar](50) NULL,
	[ProductName] [varchar](50) NULL,
	[ProductMainBarcode] [varchar](50) NULL,
	[ProductFactoryBarcode] [varchar](50) NULL,
	[IsFactoryBarCode] [int] NULL,
	[MinimumStock] [float] NULL,
	[ProductFrontImage] [varchar](350) NULL,
	[ProductBackImage] [varchar](350) NULL,
	[IsActive] [bit] NULL,
	[IsDeleted] [bit] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedDate] [datetime] NULL,
 CONSTRAINT [PK_InvProduct] PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[InvProductPrice]    Script Date: 5/4/2017 9:42:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[InvProductPrice](
	[ProductPriceId] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [int] NULL,
	[ProductCode] [varchar](50) NULL,
	[CostPrice] [float] NULL,
	[WholeSalePrice] [float] NULL,
	[RetailPrice] [float] NULL,
	[PriceSetupDate] [datetime] NULL,
	[IsActive] [bit] NULL,
	[IsDeleted] [bit] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedDate] [datetime] NULL,
 CONSTRAINT [PK_InvProductPrice] PRIMARY KEY CLUSTERED 
(
	[ProductPriceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[InvProductPurchase]    Script Date: 5/4/2017 9:42:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[InvProductPurchase](
	[ProductPurchaseId] [int] IDENTITY(1,1) NOT NULL,
	[FactoryId] [int] NULL,
	[ItemId] [int] NULL,
	[UoMId] [int] NULL,
	[SizeId] [int] NULL,
	[ColorId] [int] NULL,
	[ProductCode] [varchar](50) NULL,
	[ProductName] [varchar](50) NULL,
	[ProductMainBarcode] [int] NULL,
	[ProductFactoryBarcode] [int] NULL,
	[MinimumStock] [float] NULL,
	[CurrentStock] [float] NULL,
	[NewStock] [float] NULL,
	[PurchaseQuantity] [float] NULL,
	[CostPrice] [float] NULL,
	[WholeSalePrice] [float] NULL,
	[RetailPrice] [float] NULL,
	[IsActive] [bit] NULL,
	[IsDeleted] [bit] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedDate] [datetime] NULL,
 CONSTRAINT [PK_InvPurchaseProduct] PRIMARY KEY CLUSTERED 
(
	[ProductPurchaseId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[InvProductWarrenty]    Script Date: 5/4/2017 9:42:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[InvProductWarrenty](
	[ProductWarrentyId] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [int] NULL,
	[IsReplacementWarrenty] [bit] NULL,
	[WarrentyPeriodId] [int] NULL,
	[WarrentyExpireDate] [datetime] NULL,
	[ServicePeriod] [int] NULL,
	[WarrentyDescription] [varchar](350) NULL,
	[Ex1] [varchar](50) NULL,
	[IsActive] [bit] NULL,
	[IsDeleted] [bit] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedDate] [datetime] NULL,
 CONSTRAINT [PK_InvProductWarrenty] PRIMARY KEY CLUSTERED 
(
	[ProductWarrentyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[InvSize]    Script Date: 5/4/2017 9:42:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[InvSize](
	[SizeId] [int] IDENTITY(1,1) NOT NULL,
	[SizeCode] [varchar](50) NULL,
	[SizeName] [varchar](50) NULL,
	[SizeDetails] [varchar](350) NULL,
	[IsActive] [bit] NULL,
	[IsDeleted] [bit] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedDate] [datetime] NULL,
 CONSTRAINT [PK_InvSize] PRIMARY KEY CLUSTERED 
(
	[SizeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[InvSupplier]    Script Date: 5/4/2017 9:42:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[InvSupplier](
	[SupplierId] [int] IDENTITY(1,1) NOT NULL,
	[SupplierCode] [varchar](50) NULL,
	[SupplierName] [varchar](50) NULL,
	[SupplierDetails] [varchar](350) NULL,
	[SupplierNumber] [int] NULL,
	[AddressCode] [varchar](50) NULL,
	[Ex1] [varchar](50) NULL,
	[IsActive] [bit] NULL,
	[IsDeleted] [bit] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedDate] [datetime] NULL,
 CONSTRAINT [PK_InvSupplier_1] PRIMARY KEY CLUSTERED 
(
	[SupplierId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[InvTax]    Script Date: 5/4/2017 9:42:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[InvTax](
	[TaxId] [int] IDENTITY(1,1) NOT NULL,
	[TaxCode] [varchar](50) NULL,
	[TaxName] [varchar](50) NULL,
	[IsPercent] [bit] NULL,
	[PercentAmount] [decimal](18, 2) NULL,
	[FixedAmount] [decimal](18, 2) NULL,
	[IsActive] [bit] NULL,
	[IsDeleted] [bit] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedDate] [datetime] NULL,
 CONSTRAINT [PK_InvTax_1] PRIMARY KEY CLUSTERED 
(
	[TaxId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[InvUoM]    Script Date: 5/4/2017 9:42:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[InvUoM](
	[UoMId] [int] IDENTITY(1,1) NOT NULL,
	[UoMCode] [varchar](50) NULL,
	[UoMShortName] [varchar](50) NULL,
	[UoMDetails] [varchar](350) NULL,
	[Ex1] [varchar](50) NULL,
	[IsActive] [bit] NULL,
	[IsDeleted] [bit] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedDate] [datetime] NULL,
 CONSTRAINT [PK_InvUoM_1] PRIMARY KEY CLUSTERED 
(
	[UoMId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[InvWarehouse]    Script Date: 5/4/2017 9:42:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[InvWarehouse](
	[WarehouseId] [int] IDENTITY(1,1) NOT NULL,
	[WarehouseCode] [varchar](50) NULL,
	[WarehouseName] [varchar](50) NULL,
	[WarehouseDetails] [varchar](350) NULL,
	[WarehouseNumber] [int] NULL,
	[AddressCode] [varchar](50) NULL,
	[Ex1] [varchar](50) NULL,
	[IsActive] [bit] NULL,
	[IsDeleted] [bit] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedDate] [datetime] NULL,
 CONSTRAINT [PK_InvWarehouse] PRIMARY KEY CLUSTERED 
(
	[WarehouseId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[InvWarehousePODetail]    Script Date: 5/4/2017 9:42:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[InvWarehousePODetail](
	[WarehousePODetailsId] [int] IDENTITY(1,1) NOT NULL,
	[WarehousePOMasterId] [int] NULL,
	[ProductId] [int] NULL,
	[ProductQuantity] [float] NULL,
	[Status] [int] NULL,
	[Note] [varchar](100) NULL,
	[IsEdited] [bit] NULL,
	[IsReturned] [bit] NULL,
	[IsActive] [bit] NULL,
	[IsDeleted] [bit] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedDate] [datetime] NULL,
 CONSTRAINT [PK_InvWarehousePODetails] PRIMARY KEY CLUSTERED 
(
	[WarehousePODetailsId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[InvWarehousePOInvoiceDetail]    Script Date: 5/4/2017 9:42:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[InvWarehousePOInvoiceDetail](
	[WarehousePOInvoiceDetailsId] [int] IDENTITY(1,1) NOT NULL,
	[WarehousePOInvoiceMasterId] [int] NULL,
	[Original_WarehousePODetailsId] [int] NULL,
	[ProductId] [int] NULL,
	[ProductQuantity] [float] NULL,
	[Status] [int] NULL,
	[Note] [varchar](100) NULL,
	[IsEdited] [bit] NULL,
	[IsReturned] [bit] NULL,
	[IsActive] [bit] NULL,
	[IsDeleted] [bit] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedDate] [datetime] NULL,
 CONSTRAINT [PK_InvWarehousePOInvoiceDetail] PRIMARY KEY CLUSTERED 
(
	[WarehousePOInvoiceDetailsId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[InvWarehousePOInvoiceMaster]    Script Date: 5/4/2017 9:42:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[InvWarehousePOInvoiceMaster](
	[WarehousePOInvoiceMasterId] [int] IDENTITY(1,1) NOT NULL,
	[Original_WarehousePOMasterId] [int] NULL,
	[WarehousePOInvoiceNo] [varchar](50) NULL,
	[SupplierId] [int] NULL,
	[WarehouseId] [int] NULL,
	[UniqueId] [int] NULL,
	[POReference] [varchar](50) NULL,
	[Status] [int] NULL,
	[Note] [varchar](100) NULL,
	[IsEdited] [bit] NULL,
	[IsReturned] [bit] NULL,
	[IsActive] [bit] NULL,
	[IsDeleted] [bit] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedDate] [datetime] NULL,
 CONSTRAINT [PK_InvWarehousePOInvoiceMaster] PRIMARY KEY CLUSTERED 
(
	[WarehousePOInvoiceMasterId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[InvWarehousePOItemReceived]    Script Date: 5/4/2017 9:42:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[InvWarehousePOItemReceived](
	[WarehousePOItemReceivedId] [int] IDENTITY(1,1) NOT NULL,
	[WarehousePOMasterId] [int] NULL,
	[WarehousePODetailsId] [int] NULL,
	[ItemReceivedQuantity] [float] NULL,
	[Note] [varchar](100) NULL,
	[Status] [int] NULL,
	[IsActive] [bit] NULL,
	[IsDeleted] [bit] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedDate] [datetime] NULL,
 CONSTRAINT [PK_InvWarehousePOItemReceived] PRIMARY KEY CLUSTERED 
(
	[WarehousePOItemReceivedId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[InvWarehousePOMaster]    Script Date: 5/4/2017 9:42:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[InvWarehousePOMaster](
	[WarehousePOMasterId] [int] IDENTITY(1,1) NOT NULL,
	[SupplierId] [int] NULL,
	[WarehouseId] [int] NULL,
	[UniqueId] [int] NULL,
	[POReference] [varchar](50) NULL,
	[Status] [int] NULL,
	[Note] [varchar](100) NULL,
	[IsEdited] [bit] NULL,
	[IsReturned] [bit] NULL,
	[IsActive] [bit] NULL,
	[IsDeleted] [bit] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedDate] [datetime] NULL,
 CONSTRAINT [PK_WarehousePOMaster] PRIMARY KEY CLUSTERED 
(
	[WarehousePOMasterId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[InvWarehouseStock]    Script Date: 5/4/2017 9:42:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[InvWarehouseStock](
	[WarehouseStockId] [int] IDENTITY(1,1) NOT NULL,
	[WarehouseId] [int] NULL,
	[OutletId] [int] NULL,
	[ProductId] [int] NULL,
	[WarehouseStockQuantity] [float] NULL,
	[AdjustedReason] [int] NULL,
	[Note] [varchar](100) NULL,
	[Status] [int] NULL,
	[InOut] [int] NULL,
	[IsActive] [bit] NULL,
	[IsChanged] [bit] NULL,
	[IsDeleted] [bit] NULL,
	[IsEdited] [bit] NULL,
	[IsReceived] [bit] NULL,
	[IsReturned] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedDate] [datetime] NULL,
 CONSTRAINT [PK_InvWarehouseStock] PRIMARY KEY CLUSTERED 
(
	[WarehouseStockId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[InvWarrentyPeriod]    Script Date: 5/4/2017 9:42:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[InvWarrentyPeriod](
	[WarrentyPeriodId] [int] IDENTITY(1,1) NOT NULL,
	[WarrentyName] [varchar](50) NOT NULL,
	[WarrentyDays] [int] NULL,
	[WarrentyDetails] [varchar](350) NULL,
	[IsActive] [bit] NULL,
	[IsDeleted] [bit] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedDate] [datetime] NULL,
 CONSTRAINT [PK_InvWarrentyPeriod] PRIMARY KEY CLUSTERED 
(
	[WarrentyPeriodId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TestStudent]    Script Date: 5/4/2017 9:42:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TestStudent](
	[StudentId] [int] IDENTITY(1,1) NOT NULL,
	[StudentName] [varchar](50) NULL,
	[StudentPhone] [varchar](50) NULL,
	[IsActive] [bit] NULL,
	[IsDeleted] [bit] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedDate] [datetime] NULL,
 CONSTRAINT [PK_TestStudent] PRIMARY KEY CLUSTERED 
(
	[StudentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TestStudentAddress]    Script Date: 5/4/2017 9:42:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TestStudentAddress](
	[StudentAddressId] [int] IDENTITY(1,1) NOT NULL,
	[StudentId] [int] NULL,
	[Address] [varchar](50) NULL,
	[Country] [varchar](50) NULL,
	[IsActive] [bit] NULL,
	[IsDeleted] [bit] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedDate] [datetime] NULL,
 CONSTRAINT [PK_TestStudentAddress] PRIMARY KEY CLUSTERED 
(
	[StudentAddressId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TestStudentHistory]    Script Date: 5/4/2017 9:42:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TestStudentHistory](
	[HistoryId] [int] IDENTITY(1,1) NOT NULL,
	[StudentId] [int] NULL,
	[HistoryTitle] [varchar](50) NULL,
	[HistoryDetials] [varchar](350) NULL,
	[IsActive] [bit] NULL,
	[IsDeleted] [bit] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedDate] [datetime] NULL,
 CONSTRAINT [PK_TestStudentHistory] PRIMARY KEY CLUSTERED 
(
	[HistoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[InvAddress] ON 

INSERT [dbo].[InvAddress] ([AddressId], [AddressCode], [HomeAddress1], [HomeAddress2], [HomeCityId], [HomePostalCode], [HomeDistrictId], [OfficeAddress1], [OfficeAddress2], [OfficeCityId], [OfficePostalCode], [OfficeDistrictId], [AddressTypeName], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (1, N'1', N'Dhanmondi', N'Subahanbug', 1200, N'1207', 34, N'Romna', N'Kakrail', 1201, N'1207', 2000, N'trst', 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[InvAddress] ([AddressId], [AddressCode], [HomeAddress1], [HomeAddress2], [HomeCityId], [HomePostalCode], [HomeDistrictId], [OfficeAddress1], [OfficeAddress2], [OfficeCityId], [OfficePostalCode], [OfficeDistrictId], [AddressTypeName], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (3, N'pfwpfwpw', N'Gazipur', N'Sripur', 213, N'2312fwqsarscrtsrt', 45435, N'Dhaka', N'Mirpur', 675, N'tsddtnhdnd', 12, N'bvkbmbkm', 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[InvAddress] ([AddressId], [AddressCode], [HomeAddress1], [HomeAddress2], [HomeCityId], [HomePostalCode], [HomeDistrictId], [OfficeAddress1], [OfficeAddress2], [OfficeCityId], [OfficePostalCode], [OfficeDistrictId], [AddressTypeName], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (4, N'234235', N'dtsdtsd', N'tsdstd', 12, N'stdstd', 21, N'dstdtsd', N'stdtsdts', 32, N'srtrstrst', 34, N'srtrstsrrs', 1, NULL, NULL, CAST(N'2016-12-20 17:19:56.757' AS DateTime), NULL, NULL)
INSERT [dbo].[InvAddress] ([AddressId], [AddressCode], [HomeAddress1], [HomeAddress2], [HomeCityId], [HomePostalCode], [HomeDistrictId], [OfficeAddress1], [OfficeAddress2], [OfficeCityId], [OfficePostalCode], [OfficeDistrictId], [AddressTypeName], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (5, N'21', N'tsddts', N'tsdtsh', 544, N'dthdthdt', 78, N'htdhtd', N'bvkvkvb', 8, N'dhdthtdh', 8, N'hdndhndh', 0, NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[InvAddress] OFF
SET IDENTITY_INSERT [dbo].[InvCategory] ON 

INSERT [dbo].[InvCategory] ([CategoryId], [CategoryCode], [CategoryName], [CategoryDetails], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (1, N'1', N'Men''s Ware', N'All kinds of Men''s Ware', 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[InvCategory] ([CategoryId], [CategoryCode], [CategoryName], [CategoryDetails], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (2, N'2', N'Women''s Ware', N'All kinds of Women''s Ware', 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[InvCategory] ([CategoryId], [CategoryCode], [CategoryName], [CategoryDetails], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (3, N'3', N'Computer', N'All kinds of Computer', 1, NULL, NULL, CAST(N'2016-12-24 10:14:21.950' AS DateTime), NULL, NULL)
INSERT [dbo].[InvCategory] ([CategoryId], [CategoryCode], [CategoryName], [CategoryDetails], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (4, N'4', N'Flash Drive/ Removable Disk', N'All kinds of Flash Drive/ Removable Disk', 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[InvCategory] ([CategoryId], [CategoryCode], [CategoryName], [CategoryDetails], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (5, N'5', N'Modem', N'All kinds of modem', 1, NULL, NULL, CAST(N'2016-12-24 10:25:42.053' AS DateTime), NULL, NULL)
SET IDENTITY_INSERT [dbo].[InvCategory] OFF
SET IDENTITY_INSERT [dbo].[InvCityList] ON 

INSERT [dbo].[InvCityList] ([CityId], [CityName], [CityDetails], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (1, N'Dhaka', N'Dhaka North and Dhaka Southe', 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[InvCityList] ([CityId], [CityName], [CityDetails], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (2, N'Mirpur1', N'Mirpur all', 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[InvCityList] ([CityId], [CityName], [CityDetails], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (3, N'Gazipur', N'Gazipur all', 1, NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[InvCityList] OFF
SET IDENTITY_INSERT [dbo].[InvColor] ON 

INSERT [dbo].[InvColor] ([ColorId], [ColorCode], [ColorName], [ColorDetails], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (1, N'1', N'Red', N'Red All', 1, NULL, NULL, CAST(N'2016-12-12 18:18:45.160' AS DateTime), NULL, NULL)
INSERT [dbo].[InvColor] ([ColorId], [ColorCode], [ColorName], [ColorDetails], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (2, N'2', N'Green', N'All green Color', 1, NULL, NULL, CAST(N'2016-12-12 18:19:15.127' AS DateTime), NULL, NULL)
INSERT [dbo].[InvColor] ([ColorId], [ColorCode], [ColorName], [ColorDetails], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (3, N'3', N'Blue', N'All Blues', 1, NULL, NULL, CAST(N'2016-12-12 18:20:06.750' AS DateTime), NULL, NULL)
INSERT [dbo].[InvColor] ([ColorId], [ColorCode], [ColorName], [ColorDetails], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (4, N'4', N'Black', N'Black all', 1, NULL, NULL, CAST(N'2016-12-12 18:32:29.507' AS DateTime), NULL, NULL)
INSERT [dbo].[InvColor] ([ColorId], [ColorCode], [ColorName], [ColorDetails], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (5, N'5', N'White', N'White all', 1, NULL, NULL, CAST(N'2016-12-12 18:32:50.437' AS DateTime), NULL, NULL)
INSERT [dbo].[InvColor] ([ColorId], [ColorCode], [ColorName], [ColorDetails], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (6, N'6', N'Lame', N'Light Lame', 1, NULL, NULL, CAST(N'2017-02-17 10:22:05.867' AS DateTime), NULL, NULL)
SET IDENTITY_INSERT [dbo].[InvColor] OFF
SET IDENTITY_INSERT [dbo].[InvDiscount] ON 

INSERT [dbo].[InvDiscount] ([DiscountId], [DiscountCode], [DiscountName], [IsDiscountPercent], [DiscountFixedAmount], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (1, N'1', N'Wkkjjk', NULL, CAST(100.00 AS Decimal(18, 2)), 1, NULL, NULL, CAST(N'2017-04-28 12:33:28.900' AS DateTime), NULL, NULL)
SET IDENTITY_INSERT [dbo].[InvDiscount] OFF
SET IDENTITY_INSERT [dbo].[InvDistrictList] ON 

INSERT [dbo].[InvDistrictList] ([DistrictId], [DistrictName], [DistrictShortName], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (1, N'Mymensingh', N'Mm', 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[InvDistrictList] ([DistrictId], [DistrictName], [DistrictShortName], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (2, N'Gazipur', N'Gz', 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[InvDistrictList] ([DistrictId], [DistrictName], [DistrictShortName], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (3, N'Tangail', N'Tg', 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[InvDistrictList] ([DistrictId], [DistrictName], [DistrictShortName], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (4, N'Bandarban', N'Bb', 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[InvDistrictList] ([DistrictId], [DistrictName], [DistrictShortName], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (5, N'Bhola', N'Bla', 1, NULL, NULL, CAST(N'2017-01-03 14:55:18.433' AS DateTime), NULL, NULL)
SET IDENTITY_INSERT [dbo].[InvDistrictList] OFF
SET IDENTITY_INSERT [dbo].[InvFactory] ON 

INSERT [dbo].[InvFactory] ([FactoryId], [AddressId], [FactoryName], [FactoryCode], [FactoryNumber], [FactoryDetails], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (1, NULL, N'Dird Group', N'1', N'1', N'Mirpur, Outlet', 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[InvFactory] ([FactoryId], [AddressId], [FactoryName], [FactoryCode], [FactoryNumber], [FactoryDetails], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (2, NULL, N'Square', N'2', N'2', N'Masterbari, Valoka', 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[InvFactory] ([FactoryId], [AddressId], [FactoryName], [FactoryCode], [FactoryNumber], [FactoryDetails], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (3, NULL, N'Royal Group', N'3', N'1', N'An International Brand of All Products', 1, NULL, NULL, CAST(N'2016-12-24 10:20:29.177' AS DateTime), NULL, NULL)
SET IDENTITY_INSERT [dbo].[InvFactory] OFF
SET IDENTITY_INSERT [dbo].[InvGroup] ON 

INSERT [dbo].[InvGroup] ([GroupId], [CategoryName], [GroupCode], [GroupName], [GroupDetails], [CategoryCode], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (1, NULL, N'1', N'Man''s Shirt', N'All  Men''s Shirt', NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[InvGroup] ([GroupId], [CategoryName], [GroupCode], [GroupName], [GroupDetails], [CategoryCode], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (2, NULL, N'2', N'Women''s Shirt', N'All kinds of Women''s Shirt', NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[InvGroup] ([GroupId], [CategoryName], [GroupCode], [GroupName], [GroupDetails], [CategoryCode], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (3, NULL, N'3', N'Transand Flash Drive/Removable Disk', N'All kinds of Transand Flash Drive/Removable Disk', NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[InvGroup] ([GroupId], [CategoryName], [GroupCode], [GroupName], [GroupDetails], [CategoryCode], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (4, NULL, N'4', N'Huawei Modem', N'All brand New Huawei Modem', NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[InvGroup] ([GroupId], [CategoryName], [GroupCode], [GroupName], [GroupDetails], [CategoryCode], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (5, NULL, N'5', N'HP ', N'All kinds of HP Desktop & Laptop', NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[InvGroup] ([GroupId], [CategoryName], [GroupCode], [GroupName], [GroupDetails], [CategoryCode], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (6, NULL, N'6', N'Toshiba ', N'All kinds of Toshiba Desktop & Laptop', NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[InvGroup] ([GroupId], [CategoryName], [GroupCode], [GroupName], [GroupDetails], [CategoryCode], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (7, NULL, N'7', N'srtrs', N'rstrst', NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[InvGroup] ([GroupId], [CategoryName], [GroupCode], [GroupName], [GroupDetails], [CategoryCode], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (8, NULL, N'8', N'fgfpgfpw', N'gfpgfpg', NULL, 0, NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[InvGroup] OFF
SET IDENTITY_INSERT [dbo].[InvItem] ON 

INSERT [dbo].[InvItem] ([ItemId], [ItemCode], [ItemName], [ItemDetails], [GroupCode], [Ex1], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (1, N'12345678', N'HP Laptop', N'All Kinds of HP Laptop', N'5', NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[InvItem] ([ItemId], [ItemCode], [ItemName], [ItemDetails], [GroupCode], [Ex1], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (2, N'1253', N'Tosiba Laptop', N'All brand Laptop of  Laptop', N'6', NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[InvItem] ([ItemId], [ItemCode], [ItemName], [ItemDetails], [GroupCode], [Ex1], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (3, N'10', N'GP Modem', N'3G GP modem', N'4', NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[InvItem] ([ItemId], [ItemCode], [ItemName], [ItemDetails], [GroupCode], [Ex1], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (4, N'1325', N'Transand', N'all kinds of  flash drive', N'3', NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[InvItem] ([ItemId], [ItemCode], [ItemName], [ItemDetails], [GroupCode], [Ex1], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (5, N'658', N'Man''s Formal Shirt', N'All man''s  Formal Shirt', N'1', NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[InvItem] ([ItemId], [ItemCode], [ItemName], [ItemDetails], [GroupCode], [Ex1], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (6, N'2558', N'Men''s  Casual Shirt', N'All kinds of Men''s  Casual Shirt', N'1', NULL, 1, NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[InvItem] OFF
SET IDENTITY_INSERT [dbo].[InvOutlet] ON 

INSERT [dbo].[InvOutlet] ([OutletId], [AddressId], [OutletName], [OutletCode], [OutletNumber], [OutletRegistrationNumber], [OutletDetails], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (1, NULL, N'Cats Eye', N'1', N'1', N'101', N'Mirpu, Dhaka', 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[InvOutlet] ([OutletId], [AddressId], [OutletName], [OutletCode], [OutletNumber], [OutletRegistrationNumber], [OutletDetails], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (2, NULL, N'Moonson', N'2', N'2', N'102', N'Mirpur, Dhaka', 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[InvOutlet] ([OutletId], [AddressId], [OutletName], [OutletCode], [OutletNumber], [OutletRegistrationNumber], [OutletDetails], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (3, NULL, N'Richman', N'3', N'3', N'103', N'Mirpur, Dhaka', 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[InvOutlet] ([OutletId], [AddressId], [OutletName], [OutletCode], [OutletNumber], [OutletRegistrationNumber], [OutletDetails], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (4, NULL, N'Lubnan', N'4', N'4', N'104', N'Mirpur, Dhaka', 1, NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[InvOutlet] OFF
SET IDENTITY_INSERT [dbo].[InvOutletInvoiceDetail] ON 

INSERT [dbo].[InvOutletInvoiceDetail] ([OutletInvoiceDetailsId], [OutletInvoiceMasterId], [ProductId], [ProductQuantity], [Discount], [DiscountPercent], [UnitPrice], [TotalPrice], [Note], [Status], [IsActive], [IsChanged], [IsDeleted], [IsEdited], [IsReceived], [IsReturned], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (4065, 4044, 1004, 1, 0, NULL, 15000, 15000, N'Sold', NULL, 1, 0, 0, 0, NULL, -1, NULL, CAST(N'2017-04-26 16:45:12.827' AS DateTime), NULL, NULL)
INSERT [dbo].[InvOutletInvoiceDetail] ([OutletInvoiceDetailsId], [OutletInvoiceMasterId], [ProductId], [ProductQuantity], [Discount], [DiscountPercent], [UnitPrice], [TotalPrice], [Note], [Status], [IsActive], [IsChanged], [IsDeleted], [IsEdited], [IsReceived], [IsReturned], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (4066, 4044, 1005, 1, 0, NULL, 150, 150, N'Sold', NULL, 0, 0, 0, 0, NULL, -1, NULL, CAST(N'2017-04-26 16:45:12.827' AS DateTime), NULL, NULL)
INSERT [dbo].[InvOutletInvoiceDetail] ([OutletInvoiceDetailsId], [OutletInvoiceMasterId], [ProductId], [ProductQuantity], [Discount], [DiscountPercent], [UnitPrice], [TotalPrice], [Note], [Status], [IsActive], [IsChanged], [IsDeleted], [IsEdited], [IsReceived], [IsReturned], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (4067, 4044, 1006, 1, 0, NULL, 1900, 1900, N'Sold', NULL, 1, 0, 0, 0, NULL, -1, NULL, CAST(N'2017-04-26 16:45:12.827' AS DateTime), NULL, NULL)
INSERT [dbo].[InvOutletInvoiceDetail] ([OutletInvoiceDetailsId], [OutletInvoiceMasterId], [ProductId], [ProductQuantity], [Discount], [DiscountPercent], [UnitPrice], [TotalPrice], [Note], [Status], [IsActive], [IsChanged], [IsDeleted], [IsEdited], [IsReceived], [IsReturned], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (4068, 4045, 1008, 1, 0, NULL, 600, 600, N'Sold', NULL, 1, 0, 0, 0, NULL, -1, NULL, CAST(N'2017-04-26 16:47:25.033' AS DateTime), NULL, NULL)
INSERT [dbo].[InvOutletInvoiceDetail] ([OutletInvoiceDetailsId], [OutletInvoiceMasterId], [ProductId], [ProductQuantity], [Discount], [DiscountPercent], [UnitPrice], [TotalPrice], [Note], [Status], [IsActive], [IsChanged], [IsDeleted], [IsEdited], [IsReceived], [IsReturned], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (4069, 4045, 1009, 1, 0, NULL, 2300, 2300, N'Sold', NULL, 1, 0, 0, 0, NULL, -1, NULL, CAST(N'2017-04-26 16:47:25.033' AS DateTime), NULL, NULL)
INSERT [dbo].[InvOutletInvoiceDetail] ([OutletInvoiceDetailsId], [OutletInvoiceMasterId], [ProductId], [ProductQuantity], [Discount], [DiscountPercent], [UnitPrice], [TotalPrice], [Note], [Status], [IsActive], [IsChanged], [IsDeleted], [IsEdited], [IsReceived], [IsReturned], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (4070, 4046, 1009, 1, 0, NULL, 2300, 2300, N'Sold', NULL, 1, 0, 0, 0, NULL, -1, NULL, CAST(N'2017-04-26 16:50:36.483' AS DateTime), NULL, NULL)
INSERT [dbo].[InvOutletInvoiceDetail] ([OutletInvoiceDetailsId], [OutletInvoiceMasterId], [ProductId], [ProductQuantity], [Discount], [DiscountPercent], [UnitPrice], [TotalPrice], [Note], [Status], [IsActive], [IsChanged], [IsDeleted], [IsEdited], [IsReceived], [IsReturned], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (4071, 4046, 1006, 1, 0, NULL, 1900, 1900, N'Sold', NULL, 1, 0, 0, 0, NULL, -1, NULL, CAST(N'2017-04-26 16:50:36.483' AS DateTime), NULL, NULL)
INSERT [dbo].[InvOutletInvoiceDetail] ([OutletInvoiceDetailsId], [OutletInvoiceMasterId], [ProductId], [ProductQuantity], [Discount], [DiscountPercent], [UnitPrice], [TotalPrice], [Note], [Status], [IsActive], [IsChanged], [IsDeleted], [IsEdited], [IsReceived], [IsReturned], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (4072, 4047, 1004, 1, 0, NULL, 15000, 15000, N'Sold', NULL, 1, 0, 0, 0, NULL, -1, NULL, CAST(N'2017-04-27 12:52:44.910' AS DateTime), NULL, NULL)
INSERT [dbo].[InvOutletInvoiceDetail] ([OutletInvoiceDetailsId], [OutletInvoiceMasterId], [ProductId], [ProductQuantity], [Discount], [DiscountPercent], [UnitPrice], [TotalPrice], [Note], [Status], [IsActive], [IsChanged], [IsDeleted], [IsEdited], [IsReceived], [IsReturned], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (4073, 4047, 1005, 1, 0, NULL, 150, 150, N'Sold', NULL, 1, 0, 0, 0, NULL, -1, NULL, CAST(N'2017-04-27 12:53:00.297' AS DateTime), NULL, NULL)
INSERT [dbo].[InvOutletInvoiceDetail] ([OutletInvoiceDetailsId], [OutletInvoiceMasterId], [ProductId], [ProductQuantity], [Discount], [DiscountPercent], [UnitPrice], [TotalPrice], [Note], [Status], [IsActive], [IsChanged], [IsDeleted], [IsEdited], [IsReceived], [IsReturned], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (4074, 4048, 1007, 1, 0, NULL, 1200, 1200, N'Sold', NULL, 1, 0, 0, 0, NULL, -1, NULL, CAST(N'2017-04-27 12:55:44.167' AS DateTime), NULL, NULL)
INSERT [dbo].[InvOutletInvoiceDetail] ([OutletInvoiceDetailsId], [OutletInvoiceMasterId], [ProductId], [ProductQuantity], [Discount], [DiscountPercent], [UnitPrice], [TotalPrice], [Note], [Status], [IsActive], [IsChanged], [IsDeleted], [IsEdited], [IsReceived], [IsReturned], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (4075, 4048, 1008, 1, 0, NULL, 600, 600, N'Sold', NULL, 1, 0, 0, 0, NULL, -1, NULL, CAST(N'2017-04-27 12:55:44.173' AS DateTime), NULL, NULL)
INSERT [dbo].[InvOutletInvoiceDetail] ([OutletInvoiceDetailsId], [OutletInvoiceMasterId], [ProductId], [ProductQuantity], [Discount], [DiscountPercent], [UnitPrice], [TotalPrice], [Note], [Status], [IsActive], [IsChanged], [IsDeleted], [IsEdited], [IsReceived], [IsReturned], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (4076, 4048, 1009, 1, 0, NULL, 2300, 2300, N'Sold', NULL, 1, 0, 0, 0, NULL, -1, NULL, CAST(N'2017-04-27 12:55:44.173' AS DateTime), NULL, NULL)
INSERT [dbo].[InvOutletInvoiceDetail] ([OutletInvoiceDetailsId], [OutletInvoiceMasterId], [ProductId], [ProductQuantity], [Discount], [DiscountPercent], [UnitPrice], [TotalPrice], [Note], [Status], [IsActive], [IsChanged], [IsDeleted], [IsEdited], [IsReceived], [IsReturned], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (4077, 4049, 1009, 1, 0, NULL, 2300, 2300, N'Sold', NULL, 1, 0, 0, 0, NULL, -1, NULL, CAST(N'2017-04-27 15:53:32.480' AS DateTime), NULL, NULL)
INSERT [dbo].[InvOutletInvoiceDetail] ([OutletInvoiceDetailsId], [OutletInvoiceMasterId], [ProductId], [ProductQuantity], [Discount], [DiscountPercent], [UnitPrice], [TotalPrice], [Note], [Status], [IsActive], [IsChanged], [IsDeleted], [IsEdited], [IsReceived], [IsReturned], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (4078, 4049, 1008, 1, 0, NULL, 600, 600, N'Sold', NULL, 1, 0, 0, 0, NULL, -1, NULL, CAST(N'2017-04-27 15:53:32.480' AS DateTime), NULL, NULL)
INSERT [dbo].[InvOutletInvoiceDetail] ([OutletInvoiceDetailsId], [OutletInvoiceMasterId], [ProductId], [ProductQuantity], [Discount], [DiscountPercent], [UnitPrice], [TotalPrice], [Note], [Status], [IsActive], [IsChanged], [IsDeleted], [IsEdited], [IsReceived], [IsReturned], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (4079, 4049, 1007, 1, 0, NULL, 1200, 1200, N'Sold', NULL, 1, 0, 0, 0, NULL, -1, NULL, CAST(N'2017-04-27 15:53:32.480' AS DateTime), NULL, NULL)
INSERT [dbo].[InvOutletInvoiceDetail] ([OutletInvoiceDetailsId], [OutletInvoiceMasterId], [ProductId], [ProductQuantity], [Discount], [DiscountPercent], [UnitPrice], [TotalPrice], [Note], [Status], [IsActive], [IsChanged], [IsDeleted], [IsEdited], [IsReceived], [IsReturned], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (4080, 4053, 1004, 1, 0, NULL, 15000, 15000, N'Sold', NULL, 1, 0, 0, 0, NULL, -1, NULL, CAST(N'2017-04-27 15:53:32.480' AS DateTime), NULL, NULL)
INSERT [dbo].[InvOutletInvoiceDetail] ([OutletInvoiceDetailsId], [OutletInvoiceMasterId], [ProductId], [ProductQuantity], [Discount], [DiscountPercent], [UnitPrice], [TotalPrice], [Note], [Status], [IsActive], [IsChanged], [IsDeleted], [IsEdited], [IsReceived], [IsReturned], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (4081, 4053, 1009, 1, 0, NULL, 2300, 2300, N'Sold', NULL, 1, 0, 0, 0, NULL, -1, NULL, CAST(N'2017-04-27 15:53:43.473' AS DateTime), NULL, NULL)
INSERT [dbo].[InvOutletInvoiceDetail] ([OutletInvoiceDetailsId], [OutletInvoiceMasterId], [ProductId], [ProductQuantity], [Discount], [DiscountPercent], [UnitPrice], [TotalPrice], [Note], [Status], [IsActive], [IsChanged], [IsDeleted], [IsEdited], [IsReceived], [IsReturned], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (5072, 5054, 1004, 1, 0, NULL, 15000, 15000, N'Sold', NULL, 1, 0, 0, 0, NULL, -1, NULL, CAST(N'2017-04-27 18:53:21.420' AS DateTime), NULL, NULL)
INSERT [dbo].[InvOutletInvoiceDetail] ([OutletInvoiceDetailsId], [OutletInvoiceMasterId], [ProductId], [ProductQuantity], [Discount], [DiscountPercent], [UnitPrice], [TotalPrice], [Note], [Status], [IsActive], [IsChanged], [IsDeleted], [IsEdited], [IsReceived], [IsReturned], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (5073, 5055, 1005, 1, 0, NULL, 150, 150, N'Sold', NULL, 1, 0, 0, 0, NULL, -1, NULL, CAST(N'2017-04-27 18:54:26.120' AS DateTime), NULL, NULL)
INSERT [dbo].[InvOutletInvoiceDetail] ([OutletInvoiceDetailsId], [OutletInvoiceMasterId], [ProductId], [ProductQuantity], [Discount], [DiscountPercent], [UnitPrice], [TotalPrice], [Note], [Status], [IsActive], [IsChanged], [IsDeleted], [IsEdited], [IsReceived], [IsReturned], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (5074, 5056, 1007, 1, 0, NULL, 1200, 1200, N'Sold', NULL, 1, 0, 0, 0, NULL, -1, NULL, CAST(N'2017-04-27 18:55:12.600' AS DateTime), NULL, NULL)
INSERT [dbo].[InvOutletInvoiceDetail] ([OutletInvoiceDetailsId], [OutletInvoiceMasterId], [ProductId], [ProductQuantity], [Discount], [DiscountPercent], [UnitPrice], [TotalPrice], [Note], [Status], [IsActive], [IsChanged], [IsDeleted], [IsEdited], [IsReceived], [IsReturned], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (5075, 5057, 1007, 1, 0, NULL, 1200, 1200, N'Sold', NULL, 1, 0, 0, 0, NULL, -1, NULL, CAST(N'2017-04-27 18:57:48.960' AS DateTime), NULL, NULL)
INSERT [dbo].[InvOutletInvoiceDetail] ([OutletInvoiceDetailsId], [OutletInvoiceMasterId], [ProductId], [ProductQuantity], [Discount], [DiscountPercent], [UnitPrice], [TotalPrice], [Note], [Status], [IsActive], [IsChanged], [IsDeleted], [IsEdited], [IsReceived], [IsReturned], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (5076, 5058, 1005, 1, 0, NULL, 150, 150, N'Sold', NULL, 1, 0, 0, 0, NULL, -1, NULL, CAST(N'2017-04-27 19:21:12.047' AS DateTime), NULL, NULL)
INSERT [dbo].[InvOutletInvoiceDetail] ([OutletInvoiceDetailsId], [OutletInvoiceMasterId], [ProductId], [ProductQuantity], [Discount], [DiscountPercent], [UnitPrice], [TotalPrice], [Note], [Status], [IsActive], [IsChanged], [IsDeleted], [IsEdited], [IsReceived], [IsReturned], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (5077, 5059, 1004, 1, 0, NULL, 15000, 15000, N'Sold', NULL, 1, 0, 0, 0, NULL, -1, NULL, CAST(N'2017-04-27 19:28:01.910' AS DateTime), NULL, NULL)
INSERT [dbo].[InvOutletInvoiceDetail] ([OutletInvoiceDetailsId], [OutletInvoiceMasterId], [ProductId], [ProductQuantity], [Discount], [DiscountPercent], [UnitPrice], [TotalPrice], [Note], [Status], [IsActive], [IsChanged], [IsDeleted], [IsEdited], [IsReceived], [IsReturned], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (5078, 5060, 1006, 1, 0, NULL, 1900, 1900, N'Sold', NULL, 1, 0, 0, 0, NULL, -1, NULL, CAST(N'2017-04-27 19:28:40.310' AS DateTime), NULL, NULL)
INSERT [dbo].[InvOutletInvoiceDetail] ([OutletInvoiceDetailsId], [OutletInvoiceMasterId], [ProductId], [ProductQuantity], [Discount], [DiscountPercent], [UnitPrice], [TotalPrice], [Note], [Status], [IsActive], [IsChanged], [IsDeleted], [IsEdited], [IsReceived], [IsReturned], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (5079, 5061, 1004, 1, 0, NULL, 15000, 15000, N'Sold', NULL, 1, 0, 0, 0, NULL, -1, NULL, CAST(N'2017-04-27 22:38:19.473' AS DateTime), NULL, NULL)
INSERT [dbo].[InvOutletInvoiceDetail] ([OutletInvoiceDetailsId], [OutletInvoiceMasterId], [ProductId], [ProductQuantity], [Discount], [DiscountPercent], [UnitPrice], [TotalPrice], [Note], [Status], [IsActive], [IsChanged], [IsDeleted], [IsEdited], [IsReceived], [IsReturned], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (5080, 5061, 1008, 1, 0, NULL, 600, 600, N'Sold', NULL, 1, 0, 0, 0, NULL, -1, NULL, CAST(N'2017-04-27 22:38:19.567' AS DateTime), NULL, NULL)
INSERT [dbo].[InvOutletInvoiceDetail] ([OutletInvoiceDetailsId], [OutletInvoiceMasterId], [ProductId], [ProductQuantity], [Discount], [DiscountPercent], [UnitPrice], [TotalPrice], [Note], [Status], [IsActive], [IsChanged], [IsDeleted], [IsEdited], [IsReceived], [IsReturned], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (5081, 5061, 1009, 1, 0, NULL, 2300, 2300, N'Sold', NULL, 1, 0, 0, 0, NULL, -1, NULL, CAST(N'2017-04-27 22:38:19.577' AS DateTime), NULL, NULL)
INSERT [dbo].[InvOutletInvoiceDetail] ([OutletInvoiceDetailsId], [OutletInvoiceMasterId], [ProductId], [ProductQuantity], [Discount], [DiscountPercent], [UnitPrice], [TotalPrice], [Note], [Status], [IsActive], [IsChanged], [IsDeleted], [IsEdited], [IsReceived], [IsReturned], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (5082, 5062, 1004, 1, 0, NULL, 15000, 15000, N'Sold', NULL, 1, 0, 0, 0, NULL, -1, NULL, CAST(N'2017-04-27 22:48:31.680' AS DateTime), NULL, NULL)
INSERT [dbo].[InvOutletInvoiceDetail] ([OutletInvoiceDetailsId], [OutletInvoiceMasterId], [ProductId], [ProductQuantity], [Discount], [DiscountPercent], [UnitPrice], [TotalPrice], [Note], [Status], [IsActive], [IsChanged], [IsDeleted], [IsEdited], [IsReceived], [IsReturned], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (5083, 5062, 1005, 1, 0, NULL, 150, 150, N'Sold', NULL, 1, 0, 0, 0, NULL, -1, NULL, CAST(N'2017-04-27 22:49:01.547' AS DateTime), NULL, NULL)
INSERT [dbo].[InvOutletInvoiceDetail] ([OutletInvoiceDetailsId], [OutletInvoiceMasterId], [ProductId], [ProductQuantity], [Discount], [DiscountPercent], [UnitPrice], [TotalPrice], [Note], [Status], [IsActive], [IsChanged], [IsDeleted], [IsEdited], [IsReceived], [IsReturned], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (5084, 5063, 1004, 1, 0, NULL, 15000, 15000, N'Sold', NULL, 1, 0, 0, 0, NULL, -1, NULL, CAST(N'2017-04-27 22:54:00.090' AS DateTime), NULL, NULL)
INSERT [dbo].[InvOutletInvoiceDetail] ([OutletInvoiceDetailsId], [OutletInvoiceMasterId], [ProductId], [ProductQuantity], [Discount], [DiscountPercent], [UnitPrice], [TotalPrice], [Note], [Status], [IsActive], [IsChanged], [IsDeleted], [IsEdited], [IsReceived], [IsReturned], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (5085, 5063, 1005, 1, 0, NULL, 150, 150, N'Sold', NULL, 1, 0, 0, 0, NULL, -1, NULL, CAST(N'2017-04-27 22:54:17.300' AS DateTime), NULL, NULL)
INSERT [dbo].[InvOutletInvoiceDetail] ([OutletInvoiceDetailsId], [OutletInvoiceMasterId], [ProductId], [ProductQuantity], [Discount], [DiscountPercent], [UnitPrice], [TotalPrice], [Note], [Status], [IsActive], [IsChanged], [IsDeleted], [IsEdited], [IsReceived], [IsReturned], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (5086, 5064, 1004, 1, 0, NULL, 15000, 15000, N'Sold', NULL, 1, 0, 0, 0, NULL, -1, NULL, CAST(N'2017-04-27 23:20:48.227' AS DateTime), NULL, NULL)
INSERT [dbo].[InvOutletInvoiceDetail] ([OutletInvoiceDetailsId], [OutletInvoiceMasterId], [ProductId], [ProductQuantity], [Discount], [DiscountPercent], [UnitPrice], [TotalPrice], [Note], [Status], [IsActive], [IsChanged], [IsDeleted], [IsEdited], [IsReceived], [IsReturned], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (5087, 5064, 1009, 1, 0, NULL, 2300, 2300, N'Sold', NULL, 1, 0, 0, 0, NULL, -1, NULL, CAST(N'2017-04-27 23:20:48.343' AS DateTime), NULL, NULL)
INSERT [dbo].[InvOutletInvoiceDetail] ([OutletInvoiceDetailsId], [OutletInvoiceMasterId], [ProductId], [ProductQuantity], [Discount], [DiscountPercent], [UnitPrice], [TotalPrice], [Note], [Status], [IsActive], [IsChanged], [IsDeleted], [IsEdited], [IsReceived], [IsReturned], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (5088, 5065, 1004, 1, 0, NULL, 15000, 15000, N'Sold', NULL, 1, 0, 0, 0, NULL, -1, NULL, CAST(N'2017-04-27 23:29:48.057' AS DateTime), NULL, NULL)
INSERT [dbo].[InvOutletInvoiceDetail] ([OutletInvoiceDetailsId], [OutletInvoiceMasterId], [ProductId], [ProductQuantity], [Discount], [DiscountPercent], [UnitPrice], [TotalPrice], [Note], [Status], [IsActive], [IsChanged], [IsDeleted], [IsEdited], [IsReceived], [IsReturned], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (5089, 5065, 1005, 1, 0, NULL, 150, 150, N'Sold', NULL, 1, 0, 0, 0, NULL, -1, NULL, CAST(N'2017-04-27 23:29:48.217' AS DateTime), NULL, NULL)
INSERT [dbo].[InvOutletInvoiceDetail] ([OutletInvoiceDetailsId], [OutletInvoiceMasterId], [ProductId], [ProductQuantity], [Discount], [DiscountPercent], [UnitPrice], [TotalPrice], [Note], [Status], [IsActive], [IsChanged], [IsDeleted], [IsEdited], [IsReceived], [IsReturned], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (5090, 5066, 1004, 1, 0, NULL, 15000, 15000, N'Sold', NULL, 1, 0, 0, 0, NULL, -1, NULL, CAST(N'2017-04-27 23:52:34.250' AS DateTime), NULL, NULL)
INSERT [dbo].[InvOutletInvoiceDetail] ([OutletInvoiceDetailsId], [OutletInvoiceMasterId], [ProductId], [ProductQuantity], [Discount], [DiscountPercent], [UnitPrice], [TotalPrice], [Note], [Status], [IsActive], [IsChanged], [IsDeleted], [IsEdited], [IsReceived], [IsReturned], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (5091, 5067, 1008, 1, 0, NULL, 600, 600, N'Sold', NULL, 1, 0, 0, 0, NULL, -1, NULL, CAST(N'2017-04-27 23:54:46.557' AS DateTime), NULL, NULL)
INSERT [dbo].[InvOutletInvoiceDetail] ([OutletInvoiceDetailsId], [OutletInvoiceMasterId], [ProductId], [ProductQuantity], [Discount], [DiscountPercent], [UnitPrice], [TotalPrice], [Note], [Status], [IsActive], [IsChanged], [IsDeleted], [IsEdited], [IsReceived], [IsReturned], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (5092, 5068, 1005, 1, 0, NULL, 150, 150, N'Sold', NULL, 1, 0, 0, 0, NULL, -1, NULL, CAST(N'2017-04-28 00:08:36.720' AS DateTime), NULL, NULL)
INSERT [dbo].[InvOutletInvoiceDetail] ([OutletInvoiceDetailsId], [OutletInvoiceMasterId], [ProductId], [ProductQuantity], [Discount], [DiscountPercent], [UnitPrice], [TotalPrice], [Note], [Status], [IsActive], [IsChanged], [IsDeleted], [IsEdited], [IsReceived], [IsReturned], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (5093, 5069, 1005, 1, 0, NULL, 150, 150, N'Sold', NULL, 1, 0, 0, 0, NULL, -1, NULL, CAST(N'2017-04-28 00:39:47.993' AS DateTime), NULL, NULL)
INSERT [dbo].[InvOutletInvoiceDetail] ([OutletInvoiceDetailsId], [OutletInvoiceMasterId], [ProductId], [ProductQuantity], [Discount], [DiscountPercent], [UnitPrice], [TotalPrice], [Note], [Status], [IsActive], [IsChanged], [IsDeleted], [IsEdited], [IsReceived], [IsReturned], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (5094, 5070, 1004, 1, 0, NULL, 15000, 15000, N'Sold', NULL, 1, 0, 0, 0, NULL, -1, NULL, CAST(N'2017-04-28 01:34:05.867' AS DateTime), NULL, NULL)
INSERT [dbo].[InvOutletInvoiceDetail] ([OutletInvoiceDetailsId], [OutletInvoiceMasterId], [ProductId], [ProductQuantity], [Discount], [DiscountPercent], [UnitPrice], [TotalPrice], [Note], [Status], [IsActive], [IsChanged], [IsDeleted], [IsEdited], [IsReceived], [IsReturned], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (5095, 5071, 1004, 1, 0, NULL, 15000, 15000, N'Sold', NULL, 1, 0, 0, 0, NULL, -1, NULL, CAST(N'2017-04-28 01:34:09.513' AS DateTime), NULL, NULL)
INSERT [dbo].[InvOutletInvoiceDetail] ([OutletInvoiceDetailsId], [OutletInvoiceMasterId], [ProductId], [ProductQuantity], [Discount], [DiscountPercent], [UnitPrice], [TotalPrice], [Note], [Status], [IsActive], [IsChanged], [IsDeleted], [IsEdited], [IsReceived], [IsReturned], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (5096, 5072, 1005, 1, 0, NULL, 150, 150, N'Sold', NULL, 1, 0, 0, 0, NULL, -1, NULL, CAST(N'2017-04-28 01:35:12.830' AS DateTime), NULL, NULL)
INSERT [dbo].[InvOutletInvoiceDetail] ([OutletInvoiceDetailsId], [OutletInvoiceMasterId], [ProductId], [ProductQuantity], [Discount], [DiscountPercent], [UnitPrice], [TotalPrice], [Note], [Status], [IsActive], [IsChanged], [IsDeleted], [IsEdited], [IsReceived], [IsReturned], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (5097, 5073, 1005, 1, 0, NULL, 150, 150, N'Sold', NULL, 1, 0, 0, 0, NULL, -1, NULL, CAST(N'2017-04-28 01:35:16.650' AS DateTime), NULL, NULL)
INSERT [dbo].[InvOutletInvoiceDetail] ([OutletInvoiceDetailsId], [OutletInvoiceMasterId], [ProductId], [ProductQuantity], [Discount], [DiscountPercent], [UnitPrice], [TotalPrice], [Note], [Status], [IsActive], [IsChanged], [IsDeleted], [IsEdited], [IsReceived], [IsReturned], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (5098, 5074, 1006, 1, 0, NULL, 1900, 1900, N'Sold', NULL, 1, 0, 0, 0, NULL, -1, NULL, CAST(N'2017-04-28 01:38:59.797' AS DateTime), NULL, NULL)
INSERT [dbo].[InvOutletInvoiceDetail] ([OutletInvoiceDetailsId], [OutletInvoiceMasterId], [ProductId], [ProductQuantity], [Discount], [DiscountPercent], [UnitPrice], [TotalPrice], [Note], [Status], [IsActive], [IsChanged], [IsDeleted], [IsEdited], [IsReceived], [IsReturned], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (5099, 5075, 1006, 1, 0, NULL, 1900, 1900, N'Sold', NULL, 1, 0, 0, 0, NULL, -1, NULL, CAST(N'2017-04-28 01:39:14.780' AS DateTime), NULL, NULL)
SET IDENTITY_INSERT [dbo].[InvOutletInvoiceDetail] OFF
SET IDENTITY_INSERT [dbo].[InvOutletInvoiceMaster] ON 

INSERT [dbo].[InvOutletInvoiceMaster] ([OutletInvoiceMasterId], [OutletId], [SalePersonId], [CustomerId], [OutletSaleInvoiceNo], [PaymentMode], [TotalItem], [VAT], [TotalGrandPrice], [PayableAmount], [Cash], [Credit], [Discount], [Rounding], [PaidAmount], [DueOrRefund], [Note], [Status], [IsActive], [IsChanged], [IsDeleted], [IsEdited], [IsFullPaid], [IsReturned], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [PreviousInvoice], [NewInvoice]) VALUES (4044, 1, 1, 1, 1704260001, N'Cash & Credit', 3, 2557.5, 17050, 19550, 500, 19000, 57.5, 0, 19500, 50, N'Sold', 2, 1, 0, 0, 0, 0, -1, NULL, CAST(N'2017-04-26 16:45:12.827' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[InvOutletInvoiceMaster] ([OutletInvoiceMasterId], [OutletId], [SalePersonId], [CustomerId], [OutletSaleInvoiceNo], [PaymentMode], [TotalItem], [VAT], [TotalGrandPrice], [PayableAmount], [Cash], [Credit], [Discount], [Rounding], [PaidAmount], [DueOrRefund], [Note], [Status], [IsActive], [IsChanged], [IsDeleted], [IsEdited], [IsFullPaid], [IsReturned], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [PreviousInvoice], [NewInvoice]) VALUES (4045, 1, 1, 1, 1704260002, N'Cash & Credit', 2, 435, 2900, 3320, 500, 3000, 15, 0, 3500, -180, N'Sold', 2, 1, 0, 0, 0, 1, -1, NULL, CAST(N'2017-04-26 16:47:25.033' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[InvOutletInvoiceMaster] ([OutletInvoiceMasterId], [OutletId], [SalePersonId], [CustomerId], [OutletSaleInvoiceNo], [PaymentMode], [TotalItem], [VAT], [TotalGrandPrice], [PayableAmount], [Cash], [Credit], [Discount], [Rounding], [PaidAmount], [DueOrRefund], [Note], [Status], [IsActive], [IsChanged], [IsDeleted], [IsEdited], [IsFullPaid], [IsReturned], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [PreviousInvoice], [NewInvoice]) VALUES (4046, 1, 1, 1, 1704260003, N'None', 2, 630, 4200, 4800, 4800, 0, 30, 0, 4800, 0, N'Sold', 2, 1, 0, 0, 0, 1, -1, NULL, CAST(N'2017-04-26 16:50:36.483' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[InvOutletInvoiceMaster] ([OutletInvoiceMasterId], [OutletId], [SalePersonId], [CustomerId], [OutletSaleInvoiceNo], [PaymentMode], [TotalItem], [VAT], [TotalGrandPrice], [PayableAmount], [Cash], [Credit], [Discount], [Rounding], [PaidAmount], [DueOrRefund], [Note], [Status], [IsActive], [IsChanged], [IsDeleted], [IsEdited], [IsFullPaid], [IsReturned], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [PreviousInvoice], [NewInvoice]) VALUES (4047, 1, 1, 1, 1704270001, N'Cash', 2, 2272.5, 15150, 17400, 17400, 0, 22.5, 0, 17400, 0, N'Sold', 2, 1, 0, 0, 0, 1, -1, NULL, CAST(N'2017-04-27 12:51:58.613' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[InvOutletInvoiceMaster] ([OutletInvoiceMasterId], [OutletId], [SalePersonId], [CustomerId], [OutletSaleInvoiceNo], [PaymentMode], [TotalItem], [VAT], [TotalGrandPrice], [PayableAmount], [Cash], [Credit], [Discount], [Rounding], [PaidAmount], [DueOrRefund], [Note], [Status], [IsActive], [IsChanged], [IsDeleted], [IsEdited], [IsFullPaid], [IsReturned], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [PreviousInvoice], [NewInvoice]) VALUES (4048, 1, 1, 1, 1704270002, N'Credit', 3, 615, 4100, 4700, 0, 4700, 15, 0, 4700, 0, N'Sold', 2, 1, 0, 0, 0, 1, -1, NULL, CAST(N'2017-04-27 12:55:40.453' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[InvOutletInvoiceMaster] ([OutletInvoiceMasterId], [OutletId], [SalePersonId], [CustomerId], [OutletSaleInvoiceNo], [PaymentMode], [TotalItem], [VAT], [TotalGrandPrice], [PayableAmount], [Cash], [Credit], [Discount], [Rounding], [PaidAmount], [DueOrRefund], [Note], [Status], [IsActive], [IsChanged], [IsDeleted], [IsEdited], [IsFullPaid], [IsReturned], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [PreviousInvoice], [NewInvoice]) VALUES (4049, 1, 1, 1, 1704270003, N'None', 3, 615, 4100, 4715, 0, 0, 0, 0, 0, 4715, N'Sold', 2, 1, 0, 0, 0, 0, -1, NULL, CAST(N'2017-04-27 13:15:29.820' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[InvOutletInvoiceMaster] ([OutletInvoiceMasterId], [OutletId], [SalePersonId], [CustomerId], [OutletSaleInvoiceNo], [PaymentMode], [TotalItem], [VAT], [TotalGrandPrice], [PayableAmount], [Cash], [Credit], [Discount], [Rounding], [PaidAmount], [DueOrRefund], [Note], [Status], [IsActive], [IsChanged], [IsDeleted], [IsEdited], [IsFullPaid], [IsReturned], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [PreviousInvoice], [NewInvoice]) VALUES (4053, 1, 1, 1, 1704270004, N'Cash & Credit', 2, 2595, 17300, 19800, 1000, 19000, 95, 0, 20000, -200, N'Sold', 2, 1, 0, 0, 0, 1, -1, NULL, CAST(N'2017-04-27 15:53:14.837' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[InvOutletInvoiceMaster] ([OutletInvoiceMasterId], [OutletId], [SalePersonId], [CustomerId], [OutletSaleInvoiceNo], [PaymentMode], [TotalItem], [VAT], [TotalGrandPrice], [PayableAmount], [Cash], [Credit], [Discount], [Rounding], [PaidAmount], [DueOrRefund], [Note], [Status], [IsActive], [IsChanged], [IsDeleted], [IsEdited], [IsFullPaid], [IsReturned], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [PreviousInvoice], [NewInvoice]) VALUES (5054, 1, 1, 1, 1704270005, N'None', 1, 2250, 15000, 17250, 0, 0, 0, 0, 0, 17250, N'Sold', 2, 1, 0, 0, 0, 0, -1, NULL, CAST(N'2017-04-27 18:53:21.127' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[InvOutletInvoiceMaster] ([OutletInvoiceMasterId], [OutletId], [SalePersonId], [CustomerId], [OutletSaleInvoiceNo], [PaymentMode], [TotalItem], [VAT], [TotalGrandPrice], [PayableAmount], [Cash], [Credit], [Discount], [Rounding], [PaidAmount], [DueOrRefund], [Note], [Status], [IsActive], [IsChanged], [IsDeleted], [IsEdited], [IsFullPaid], [IsReturned], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [PreviousInvoice], [NewInvoice]) VALUES (5055, 1, 1, 1, 1704270006, N'None', 1, 22.5, 150, 172.5, 0, 0, 0, 0, 0, 172.5, N'Sold', 2, 1, 0, 0, 0, 0, -1, NULL, CAST(N'2017-04-27 18:54:26.117' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[InvOutletInvoiceMaster] ([OutletInvoiceMasterId], [OutletId], [SalePersonId], [CustomerId], [OutletSaleInvoiceNo], [PaymentMode], [TotalItem], [VAT], [TotalGrandPrice], [PayableAmount], [Cash], [Credit], [Discount], [Rounding], [PaidAmount], [DueOrRefund], [Note], [Status], [IsActive], [IsChanged], [IsDeleted], [IsEdited], [IsFullPaid], [IsReturned], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [PreviousInvoice], [NewInvoice]) VALUES (5056, 1, 1, 1, 1704270007, N'None', 1, 180, 1200, 1380, 0, 0, 0, 0, 0, 1380, N'Sold', 2, 1, 0, 0, 0, 0, -1, NULL, CAST(N'2017-04-27 18:55:12.597' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[InvOutletInvoiceMaster] ([OutletInvoiceMasterId], [OutletId], [SalePersonId], [CustomerId], [OutletSaleInvoiceNo], [PaymentMode], [TotalItem], [VAT], [TotalGrandPrice], [PayableAmount], [Cash], [Credit], [Discount], [Rounding], [PaidAmount], [DueOrRefund], [Note], [Status], [IsActive], [IsChanged], [IsDeleted], [IsEdited], [IsFullPaid], [IsReturned], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [PreviousInvoice], [NewInvoice]) VALUES (5057, 1, 1, 1, 1704270008, N'None', 1, 180, 1200, 1380, 0, 0, 0, 0, 0, 1380, N'Sold', 2, 1, 0, 0, 0, 0, -1, NULL, CAST(N'2017-04-27 18:57:48.953' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[InvOutletInvoiceMaster] ([OutletInvoiceMasterId], [OutletId], [SalePersonId], [CustomerId], [OutletSaleInvoiceNo], [PaymentMode], [TotalItem], [VAT], [TotalGrandPrice], [PayableAmount], [Cash], [Credit], [Discount], [Rounding], [PaidAmount], [DueOrRefund], [Note], [Status], [IsActive], [IsChanged], [IsDeleted], [IsEdited], [IsFullPaid], [IsReturned], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [PreviousInvoice], [NewInvoice]) VALUES (5058, 1, 1, 1, 1704270009, N'None', 1, 22.5, 150, 172.5, 0, 0, 0, 0, 0, 172.5, N'Sold', 2, 1, 0, 0, 0, 0, -1, NULL, CAST(N'2017-04-27 19:21:12.040' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[InvOutletInvoiceMaster] ([OutletInvoiceMasterId], [OutletId], [SalePersonId], [CustomerId], [OutletSaleInvoiceNo], [PaymentMode], [TotalItem], [VAT], [TotalGrandPrice], [PayableAmount], [Cash], [Credit], [Discount], [Rounding], [PaidAmount], [DueOrRefund], [Note], [Status], [IsActive], [IsChanged], [IsDeleted], [IsEdited], [IsFullPaid], [IsReturned], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [PreviousInvoice], [NewInvoice]) VALUES (5059, 1, 1, 1, 1704270010, N'None', 1, 2250, 15000, 17250, 0, 0, 0, 0, 0, 17250, N'Sold', 2, 1, 0, 0, 0, 0, -1, NULL, CAST(N'2017-04-27 19:28:01.903' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[InvOutletInvoiceMaster] ([OutletInvoiceMasterId], [OutletId], [SalePersonId], [CustomerId], [OutletSaleInvoiceNo], [PaymentMode], [TotalItem], [VAT], [TotalGrandPrice], [PayableAmount], [Cash], [Credit], [Discount], [Rounding], [PaidAmount], [DueOrRefund], [Note], [Status], [IsActive], [IsChanged], [IsDeleted], [IsEdited], [IsFullPaid], [IsReturned], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [PreviousInvoice], [NewInvoice]) VALUES (5060, 1, 1, 1, 1704270011, N'None', 1, 285, 1900, 2185, 0, 0, 0, 0, 0, 2185, N'Sold', 2, 1, 0, 0, 0, 0, -1, NULL, CAST(N'2017-04-27 19:28:40.307' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[InvOutletInvoiceMaster] ([OutletInvoiceMasterId], [OutletId], [SalePersonId], [CustomerId], [OutletSaleInvoiceNo], [PaymentMode], [TotalItem], [VAT], [TotalGrandPrice], [PayableAmount], [Cash], [Credit], [Discount], [Rounding], [PaidAmount], [DueOrRefund], [Note], [Status], [IsActive], [IsChanged], [IsDeleted], [IsEdited], [IsFullPaid], [IsReturned], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [PreviousInvoice], [NewInvoice]) VALUES (5061, 1, 1, 1, 1704270012, N'Cash & Credit', 3, 2685, 17900, 20485, 2000, 15000, 100, 0, 17000, 3485, N'Sold', 2, 1, 0, 0, 0, 0, -1, NULL, CAST(N'2017-04-27 22:38:19.163' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[InvOutletInvoiceMaster] ([OutletInvoiceMasterId], [OutletId], [SalePersonId], [CustomerId], [OutletSaleInvoiceNo], [PaymentMode], [TotalItem], [VAT], [TotalGrandPrice], [PayableAmount], [Cash], [Credit], [Discount], [Rounding], [PaidAmount], [DueOrRefund], [Note], [Status], [IsActive], [IsChanged], [IsDeleted], [IsEdited], [IsFullPaid], [IsReturned], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [PreviousInvoice], [NewInvoice]) VALUES (5062, 1, 1, 1, 1704270013, N'None', 2, 2272.5, 15150, 17422.5, 0, 0, 0, 0, 0, 17422.5, N'Sold', 2, 1, 0, 0, 0, 0, -1, NULL, CAST(N'2017-04-27 22:46:42.267' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[InvOutletInvoiceMaster] ([OutletInvoiceMasterId], [OutletId], [SalePersonId], [CustomerId], [OutletSaleInvoiceNo], [PaymentMode], [TotalItem], [VAT], [TotalGrandPrice], [PayableAmount], [Cash], [Credit], [Discount], [Rounding], [PaidAmount], [DueOrRefund], [Note], [Status], [IsActive], [IsChanged], [IsDeleted], [IsEdited], [IsFullPaid], [IsReturned], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [PreviousInvoice], [NewInvoice]) VALUES (5063, 1, 1, 1, 1704270014, N'None', 2, 2272.5, 15150, 17422.5, 0, 0, 0, 0, 0, 17422.5, N'Sold', 2, 1, 0, 0, 0, 0, -1, NULL, CAST(N'2017-04-27 22:53:27.610' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[InvOutletInvoiceMaster] ([OutletInvoiceMasterId], [OutletId], [SalePersonId], [CustomerId], [OutletSaleInvoiceNo], [PaymentMode], [TotalItem], [VAT], [TotalGrandPrice], [PayableAmount], [Cash], [Credit], [Discount], [Rounding], [PaidAmount], [DueOrRefund], [Note], [Status], [IsActive], [IsChanged], [IsDeleted], [IsEdited], [IsFullPaid], [IsReturned], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [PreviousInvoice], [NewInvoice]) VALUES (5064, 1, 1, 1, 1704270015, N'Cash & Credit', 2, 2595, 17300, 19895, 6765, 469, 0, 0, 7234, 12661, N'Sold', 2, 1, 0, 0, 0, 0, -1, NULL, CAST(N'2017-04-27 23:20:01.883' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[InvOutletInvoiceMaster] ([OutletInvoiceMasterId], [OutletId], [SalePersonId], [CustomerId], [OutletSaleInvoiceNo], [PaymentMode], [TotalItem], [VAT], [TotalGrandPrice], [PayableAmount], [Cash], [Credit], [Discount], [Rounding], [PaidAmount], [DueOrRefund], [Note], [Status], [IsActive], [IsChanged], [IsDeleted], [IsEdited], [IsFullPaid], [IsReturned], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [PreviousInvoice], [NewInvoice]) VALUES (5065, 1, 1, 1, 1704270016, N'None', 2, 2272.5, 15150, 17422.5, 0, 0, 0, 0, 0, 17422.5, N'Sold', 2, 1, 0, 0, 0, 0, -1, NULL, CAST(N'2017-04-27 23:29:47.930' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[InvOutletInvoiceMaster] ([OutletInvoiceMasterId], [OutletId], [SalePersonId], [CustomerId], [OutletSaleInvoiceNo], [PaymentMode], [TotalItem], [VAT], [TotalGrandPrice], [PayableAmount], [Cash], [Credit], [Discount], [Rounding], [PaidAmount], [DueOrRefund], [Note], [Status], [IsActive], [IsChanged], [IsDeleted], [IsEdited], [IsFullPaid], [IsReturned], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [PreviousInvoice], [NewInvoice]) VALUES (5066, 1, 1, 1, 1704270017, N'None', 1, 2250, 15000, 17250, 0, 0, 0, 0, 0, 17250, N'Sold', 2, 1, 0, 0, 0, 0, -1, NULL, CAST(N'2017-04-27 23:52:32.943' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[InvOutletInvoiceMaster] ([OutletInvoiceMasterId], [OutletId], [SalePersonId], [CustomerId], [OutletSaleInvoiceNo], [PaymentMode], [TotalItem], [VAT], [TotalGrandPrice], [PayableAmount], [Cash], [Credit], [Discount], [Rounding], [PaidAmount], [DueOrRefund], [Note], [Status], [IsActive], [IsChanged], [IsDeleted], [IsEdited], [IsFullPaid], [IsReturned], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [PreviousInvoice], [NewInvoice]) VALUES (5067, 1, 1, 1, 1704270018, N'None', 1, 90, 600, 690, 0, 0, 0, 0, 0, 690, N'Sold', 2, 1, 0, 0, 0, 0, -1, NULL, CAST(N'2017-04-27 23:54:46.490' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[InvOutletInvoiceMaster] ([OutletInvoiceMasterId], [OutletId], [SalePersonId], [CustomerId], [OutletSaleInvoiceNo], [PaymentMode], [TotalItem], [VAT], [TotalGrandPrice], [PayableAmount], [Cash], [Credit], [Discount], [Rounding], [PaidAmount], [DueOrRefund], [Note], [Status], [IsActive], [IsChanged], [IsDeleted], [IsEdited], [IsFullPaid], [IsReturned], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [PreviousInvoice], [NewInvoice]) VALUES (5068, 1, 1, 1, 1704280001, N'None', 1, 22.5, 150, 172.5, 0, 0, 0, 0, 0, 172.5, N'Sold', 2, 1, 0, 0, 0, 0, -1, NULL, CAST(N'2017-04-28 00:08:36.497' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[InvOutletInvoiceMaster] ([OutletInvoiceMasterId], [OutletId], [SalePersonId], [CustomerId], [OutletSaleInvoiceNo], [PaymentMode], [TotalItem], [VAT], [TotalGrandPrice], [PayableAmount], [Cash], [Credit], [Discount], [Rounding], [PaidAmount], [DueOrRefund], [Note], [Status], [IsActive], [IsChanged], [IsDeleted], [IsEdited], [IsFullPaid], [IsReturned], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [PreviousInvoice], [NewInvoice]) VALUES (5069, 1, 1, 1, 1704280002, N'None', 1, 22.5, 150, 172.5, 0, 0, 0, 0, 0, 172.5, N'Sold', 2, 1, 0, 0, 0, 0, -1, NULL, CAST(N'2017-04-28 00:39:47.717' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[InvOutletInvoiceMaster] ([OutletInvoiceMasterId], [OutletId], [SalePersonId], [CustomerId], [OutletSaleInvoiceNo], [PaymentMode], [TotalItem], [VAT], [TotalGrandPrice], [PayableAmount], [Cash], [Credit], [Discount], [Rounding], [PaidAmount], [DueOrRefund], [Note], [Status], [IsActive], [IsChanged], [IsDeleted], [IsEdited], [IsFullPaid], [IsReturned], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [PreviousInvoice], [NewInvoice]) VALUES (5070, 1, 1, 1, 1704280003, N'None', 1, 2250, 15000, 17250, 0, 0, 0, 0, 0, 17250, N'Sold', 2, 1, 0, 0, 0, 0, -1, NULL, CAST(N'2017-04-28 01:34:05.450' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[InvOutletInvoiceMaster] ([OutletInvoiceMasterId], [OutletId], [SalePersonId], [CustomerId], [OutletSaleInvoiceNo], [PaymentMode], [TotalItem], [VAT], [TotalGrandPrice], [PayableAmount], [Cash], [Credit], [Discount], [Rounding], [PaidAmount], [DueOrRefund], [Note], [Status], [IsActive], [IsChanged], [IsDeleted], [IsEdited], [IsFullPaid], [IsReturned], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [PreviousInvoice], [NewInvoice]) VALUES (5071, 1, 1, 1, 1704280004, N'None', 1, 2250, 15000, 17250, 0, 0, 0, 0, 0, 17250, N'Sold', 2, 1, 0, 0, 0, 0, -1, NULL, CAST(N'2017-04-28 01:34:09.493' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[InvOutletInvoiceMaster] ([OutletInvoiceMasterId], [OutletId], [SalePersonId], [CustomerId], [OutletSaleInvoiceNo], [PaymentMode], [TotalItem], [VAT], [TotalGrandPrice], [PayableAmount], [Cash], [Credit], [Discount], [Rounding], [PaidAmount], [DueOrRefund], [Note], [Status], [IsActive], [IsChanged], [IsDeleted], [IsEdited], [IsFullPaid], [IsReturned], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [PreviousInvoice], [NewInvoice]) VALUES (5072, 1, 1, 1, 1704280005, N'None', 1, 22.5, 150, 172.5, 0, 0, 0, 0, 0, 172.5, N'Sold', 2, 1, 0, 0, 0, 0, -1, NULL, CAST(N'2017-04-28 01:35:12.817' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[InvOutletInvoiceMaster] ([OutletInvoiceMasterId], [OutletId], [SalePersonId], [CustomerId], [OutletSaleInvoiceNo], [PaymentMode], [TotalItem], [VAT], [TotalGrandPrice], [PayableAmount], [Cash], [Credit], [Discount], [Rounding], [PaidAmount], [DueOrRefund], [Note], [Status], [IsActive], [IsChanged], [IsDeleted], [IsEdited], [IsFullPaid], [IsReturned], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [PreviousInvoice], [NewInvoice]) VALUES (5073, 1, 1, 1, 1704280006, N'None', 1, 22.5, 150, 172.5, 0, 0, 0, 0, 0, 172.5, N'Sold', 2, 1, 0, 0, 0, 0, -1, NULL, CAST(N'2017-04-28 01:35:16.640' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[InvOutletInvoiceMaster] ([OutletInvoiceMasterId], [OutletId], [SalePersonId], [CustomerId], [OutletSaleInvoiceNo], [PaymentMode], [TotalItem], [VAT], [TotalGrandPrice], [PayableAmount], [Cash], [Credit], [Discount], [Rounding], [PaidAmount], [DueOrRefund], [Note], [Status], [IsActive], [IsChanged], [IsDeleted], [IsEdited], [IsFullPaid], [IsReturned], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [PreviousInvoice], [NewInvoice]) VALUES (5074, 1, 1, 1, 1704280007, N'None', 1, 285, 1900, 2185, 0, 0, 0, 0, 0, 2185, N'Sold', 2, 1, 0, 0, 0, 0, -1, NULL, CAST(N'2017-04-28 01:38:59.787' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[InvOutletInvoiceMaster] ([OutletInvoiceMasterId], [OutletId], [SalePersonId], [CustomerId], [OutletSaleInvoiceNo], [PaymentMode], [TotalItem], [VAT], [TotalGrandPrice], [PayableAmount], [Cash], [Credit], [Discount], [Rounding], [PaidAmount], [DueOrRefund], [Note], [Status], [IsActive], [IsChanged], [IsDeleted], [IsEdited], [IsFullPaid], [IsReturned], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [PreviousInvoice], [NewInvoice]) VALUES (5075, 1, 1, 1, 1704280008, N'None', 1, 285, 1900, 2185, 0, 0, 0, 0, 0, 2185, N'Sold', 2, 1, 0, 0, 0, 0, -1, NULL, CAST(N'2017-04-28 01:39:14.773' AS DateTime), NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[InvOutletInvoiceMaster] OFF
SET IDENTITY_INSERT [dbo].[InvOutletPODetail] ON 

INSERT [dbo].[InvOutletPODetail] ([OutletPODetailsId], [OutletPOMasterId], [ProductId], [ProductQuantity], [Note], [Status], [IsActive], [IsChanged], [IsDeleted], [IsEdited], [IsReceived], [IsReturned], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (1, 1, 1004, 12, NULL, 22, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-03-17 12:23:33.957' AS DateTime), NULL, CAST(N'2017-03-20 19:33:55.770' AS DateTime))
INSERT [dbo].[InvOutletPODetail] ([OutletPODetailsId], [OutletPOMasterId], [ProductId], [ProductQuantity], [Note], [Status], [IsActive], [IsChanged], [IsDeleted], [IsEdited], [IsReceived], [IsReturned], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (2, 1, 1005, 15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-03-17 12:23:33.957' AS DateTime), NULL, CAST(N'2017-03-17 12:33:48.977' AS DateTime))
INSERT [dbo].[InvOutletPODetail] ([OutletPODetailsId], [OutletPOMasterId], [ProductId], [ProductQuantity], [Note], [Status], [IsActive], [IsChanged], [IsDeleted], [IsEdited], [IsReceived], [IsReturned], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (3, 2, 1004, 6, NULL, 4, NULL, NULL, NULL, NULL, NULL, 1, NULL, CAST(N'2017-04-13 16:30:38.960' AS DateTime), NULL, CAST(N'2017-04-19 10:46:20.583' AS DateTime))
INSERT [dbo].[InvOutletPODetail] ([OutletPODetailsId], [OutletPOMasterId], [ProductId], [ProductQuantity], [Note], [Status], [IsActive], [IsChanged], [IsDeleted], [IsEdited], [IsReceived], [IsReturned], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (4, 2, 1005, 25, NULL, 4, NULL, NULL, NULL, NULL, NULL, 1, NULL, CAST(N'2017-04-13 16:30:38.960' AS DateTime), NULL, CAST(N'2017-04-19 10:46:20.583' AS DateTime))
INSERT [dbo].[InvOutletPODetail] ([OutletPODetailsId], [OutletPOMasterId], [ProductId], [ProductQuantity], [Note], [Status], [IsActive], [IsChanged], [IsDeleted], [IsEdited], [IsReceived], [IsReturned], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (5, 4, 1005, 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-01-30 15:26:24.827' AS DateTime), NULL, CAST(N'2017-02-23 19:33:01.080' AS DateTime))
INSERT [dbo].[InvOutletPODetail] ([OutletPODetailsId], [OutletPOMasterId], [ProductId], [ProductQuantity], [Note], [Status], [IsActive], [IsChanged], [IsDeleted], [IsEdited], [IsReceived], [IsReturned], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (6, 5, 1004, 8, NULL, 22, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-03-17 12:24:38.127' AS DateTime), NULL, CAST(N'2017-03-20 19:31:45.113' AS DateTime))
INSERT [dbo].[InvOutletPODetail] ([OutletPODetailsId], [OutletPOMasterId], [ProductId], [ProductQuantity], [Note], [Status], [IsActive], [IsChanged], [IsDeleted], [IsEdited], [IsReceived], [IsReturned], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (5055, 5029, 1009, 2, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, CAST(N'2017-04-17 19:11:34.313' AS DateTime), NULL, NULL)
INSERT [dbo].[InvOutletPODetail] ([OutletPODetailsId], [OutletPOMasterId], [ProductId], [ProductQuantity], [Note], [Status], [IsActive], [IsChanged], [IsDeleted], [IsEdited], [IsReceived], [IsReturned], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (5056, 5029, 1008, 3, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, CAST(N'2017-04-17 19:11:34.313' AS DateTime), NULL, NULL)
INSERT [dbo].[InvOutletPODetail] ([OutletPODetailsId], [OutletPOMasterId], [ProductId], [ProductQuantity], [Note], [Status], [IsActive], [IsChanged], [IsDeleted], [IsEdited], [IsReceived], [IsReturned], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (6035, 6018, 1004, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, CAST(N'2017-04-17 20:19:52.157' AS DateTime), NULL, NULL)
INSERT [dbo].[InvOutletPODetail] ([OutletPODetailsId], [OutletPOMasterId], [ProductId], [ProductQuantity], [Note], [Status], [IsActive], [IsChanged], [IsDeleted], [IsEdited], [IsReceived], [IsReturned], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (6036, 6018, 1005, 2, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, CAST(N'2017-04-17 20:19:52.157' AS DateTime), NULL, NULL)
INSERT [dbo].[InvOutletPODetail] ([OutletPODetailsId], [OutletPOMasterId], [ProductId], [ProductQuantity], [Note], [Status], [IsActive], [IsChanged], [IsDeleted], [IsEdited], [IsReceived], [IsReturned], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (6037, 6018, 1006, 3, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, CAST(N'2017-04-17 20:19:52.157' AS DateTime), NULL, NULL)
INSERT [dbo].[InvOutletPODetail] ([OutletPODetailsId], [OutletPOMasterId], [ProductId], [ProductQuantity], [Note], [Status], [IsActive], [IsChanged], [IsDeleted], [IsEdited], [IsReceived], [IsReturned], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (6038, 6019, 1005, 1, NULL, 22, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-03-16 21:15:01.083' AS DateTime), NULL, CAST(N'2017-03-20 18:01:17.737' AS DateTime))
INSERT [dbo].[InvOutletPODetail] ([OutletPODetailsId], [OutletPOMasterId], [ProductId], [ProductQuantity], [Note], [Status], [IsActive], [IsChanged], [IsDeleted], [IsEdited], [IsReceived], [IsReturned], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (6039, 6019, 1006, 3, NULL, 22, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-03-16 21:15:01.083' AS DateTime), NULL, CAST(N'2017-03-20 17:34:26.630' AS DateTime))
INSERT [dbo].[InvOutletPODetail] ([OutletPODetailsId], [OutletPOMasterId], [ProductId], [ProductQuantity], [Note], [Status], [IsActive], [IsChanged], [IsDeleted], [IsEdited], [IsReceived], [IsReturned], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (6040, 6020, 1004, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-03-20 17:44:31.590' AS DateTime), NULL, NULL)
INSERT [dbo].[InvOutletPODetail] ([OutletPODetailsId], [OutletPOMasterId], [ProductId], [ProductQuantity], [Note], [Status], [IsActive], [IsChanged], [IsDeleted], [IsEdited], [IsReceived], [IsReturned], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (6041, 6020, 1005, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-03-20 17:44:31.590' AS DateTime), NULL, NULL)
INSERT [dbo].[InvOutletPODetail] ([OutletPODetailsId], [OutletPOMasterId], [ProductId], [ProductQuantity], [Note], [Status], [IsActive], [IsChanged], [IsDeleted], [IsEdited], [IsReceived], [IsReturned], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (6042, 6020, 1008, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-03-20 17:44:31.590' AS DateTime), NULL, NULL)
INSERT [dbo].[InvOutletPODetail] ([OutletPODetailsId], [OutletPOMasterId], [ProductId], [ProductQuantity], [Note], [Status], [IsActive], [IsChanged], [IsDeleted], [IsEdited], [IsReceived], [IsReturned], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (6043, 6021, 1009, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-03-20 19:23:44.057' AS DateTime), NULL, NULL)
INSERT [dbo].[InvOutletPODetail] ([OutletPODetailsId], [OutletPOMasterId], [ProductId], [ProductQuantity], [Note], [Status], [IsActive], [IsChanged], [IsDeleted], [IsEdited], [IsReceived], [IsReturned], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (6044, 6021, 1008, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-03-20 19:23:44.057' AS DateTime), NULL, NULL)
INSERT [dbo].[InvOutletPODetail] ([OutletPODetailsId], [OutletPOMasterId], [ProductId], [ProductQuantity], [Note], [Status], [IsActive], [IsChanged], [IsDeleted], [IsEdited], [IsReceived], [IsReturned], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (6045, 5029, 1009, 2, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, CAST(N'2017-04-17 19:11:34.313' AS DateTime), NULL, NULL)
INSERT [dbo].[InvOutletPODetail] ([OutletPODetailsId], [OutletPOMasterId], [ProductId], [ProductQuantity], [Note], [Status], [IsActive], [IsChanged], [IsDeleted], [IsEdited], [IsReceived], [IsReturned], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (6046, 5029, 1008, 3, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, CAST(N'2017-04-17 19:11:34.313' AS DateTime), NULL, NULL)
INSERT [dbo].[InvOutletPODetail] ([OutletPODetailsId], [OutletPOMasterId], [ProductId], [ProductQuantity], [Note], [Status], [IsActive], [IsChanged], [IsDeleted], [IsEdited], [IsReceived], [IsReturned], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (6049, 6022, 1004, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-04-13 20:04:59.693' AS DateTime), NULL, NULL)
INSERT [dbo].[InvOutletPODetail] ([OutletPODetailsId], [OutletPOMasterId], [ProductId], [ProductQuantity], [Note], [Status], [IsActive], [IsChanged], [IsDeleted], [IsEdited], [IsReceived], [IsReturned], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (6050, 6022, 1005, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-04-13 20:04:59.693' AS DateTime), NULL, NULL)
INSERT [dbo].[InvOutletPODetail] ([OutletPODetailsId], [OutletPOMasterId], [ProductId], [ProductQuantity], [Note], [Status], [IsActive], [IsChanged], [IsDeleted], [IsEdited], [IsReceived], [IsReturned], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (6051, 6022, 1007, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-04-13 20:04:59.693' AS DateTime), NULL, NULL)
INSERT [dbo].[InvOutletPODetail] ([OutletPODetailsId], [OutletPOMasterId], [ProductId], [ProductQuantity], [Note], [Status], [IsActive], [IsChanged], [IsDeleted], [IsEdited], [IsReceived], [IsReturned], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (6052, 6023, 1004, 5, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-04-21 09:51:48.190' AS DateTime), NULL, NULL)
INSERT [dbo].[InvOutletPODetail] ([OutletPODetailsId], [OutletPOMasterId], [ProductId], [ProductQuantity], [Note], [Status], [IsActive], [IsChanged], [IsDeleted], [IsEdited], [IsReceived], [IsReturned], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (6053, 6023, 1005, 5, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-04-21 09:51:48.190' AS DateTime), NULL, NULL)
INSERT [dbo].[InvOutletPODetail] ([OutletPODetailsId], [OutletPOMasterId], [ProductId], [ProductQuantity], [Note], [Status], [IsActive], [IsChanged], [IsDeleted], [IsEdited], [IsReceived], [IsReturned], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (6054, 6023, 1006, 5, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-04-21 09:51:48.190' AS DateTime), NULL, NULL)
INSERT [dbo].[InvOutletPODetail] ([OutletPODetailsId], [OutletPOMasterId], [ProductId], [ProductQuantity], [Note], [Status], [IsActive], [IsChanged], [IsDeleted], [IsEdited], [IsReceived], [IsReturned], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (6055, 6024, 1004, 3, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-05-04 19:25:11.620' AS DateTime), NULL, NULL)
INSERT [dbo].[InvOutletPODetail] ([OutletPODetailsId], [OutletPOMasterId], [ProductId], [ProductQuantity], [Note], [Status], [IsActive], [IsChanged], [IsDeleted], [IsEdited], [IsReceived], [IsReturned], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (6056, 6024, 1006, 5, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-05-04 19:25:11.620' AS DateTime), NULL, NULL)
INSERT [dbo].[InvOutletPODetail] ([OutletPODetailsId], [OutletPOMasterId], [ProductId], [ProductQuantity], [Note], [Status], [IsActive], [IsChanged], [IsDeleted], [IsEdited], [IsReceived], [IsReturned], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (6057, 6024, 1008, 6, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-05-04 19:25:11.620' AS DateTime), NULL, NULL)
SET IDENTITY_INSERT [dbo].[InvOutletPODetail] OFF
SET IDENTITY_INSERT [dbo].[InvOutletPOMaster] ON 

INSERT [dbo].[InvOutletPOMaster] ([OutletPOMasterId], [OutletId], [WarehouseId], [Extra1_WarehouseName], [Note], [Status], [IsActive], [IsChanged], [IsDeleted], [IsEdited], [IsReceived], [IsReturned], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (1, 1, 1, NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-03-17 12:23:33.957' AS DateTime), NULL, CAST(N'2017-04-25 15:22:32.987' AS DateTime))
INSERT [dbo].[InvOutletPOMaster] ([OutletPOMasterId], [OutletId], [WarehouseId], [Extra1_WarehouseName], [Note], [Status], [IsActive], [IsChanged], [IsDeleted], [IsEdited], [IsReceived], [IsReturned], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (2, 2, 2, N'Mirpur Warehouse', N'Return', 4, 1, NULL, NULL, NULL, NULL, 1, NULL, CAST(N'2017-01-30 11:19:46.760' AS DateTime), NULL, CAST(N'2017-04-19 10:46:20.583' AS DateTime))
INSERT [dbo].[InvOutletPOMaster] ([OutletPOMasterId], [OutletId], [WarehouseId], [Extra1_WarehouseName], [Note], [Status], [IsActive], [IsChanged], [IsDeleted], [IsEdited], [IsReceived], [IsReturned], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (4, 3, 3, N'Gazipur Warehouse', NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-01-30 15:26:24.827' AS DateTime), NULL, CAST(N'2017-04-25 15:22:34.223' AS DateTime))
INSERT [dbo].[InvOutletPOMaster] ([OutletPOMasterId], [OutletId], [WarehouseId], [Extra1_WarehouseName], [Note], [Status], [IsActive], [IsChanged], [IsDeleted], [IsEdited], [IsReceived], [IsReturned], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (5, 1, 1, NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-03-17 12:24:38.127' AS DateTime), NULL, CAST(N'2017-04-25 15:22:35.157' AS DateTime))
INSERT [dbo].[InvOutletPOMaster] ([OutletPOMasterId], [OutletId], [WarehouseId], [Extra1_WarehouseName], [Note], [Status], [IsActive], [IsChanged], [IsDeleted], [IsEdited], [IsReceived], [IsReturned], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (5029, 1, 1, N'1', N'', 4, 1, NULL, 1, NULL, 0, 1, NULL, CAST(N'2017-03-17 12:24:38.127' AS DateTime), NULL, CAST(N'2017-04-18 18:14:22.067' AS DateTime))
INSERT [dbo].[InvOutletPOMaster] ([OutletPOMasterId], [OutletId], [WarehouseId], [Extra1_WarehouseName], [Note], [Status], [IsActive], [IsChanged], [IsDeleted], [IsEdited], [IsReceived], [IsReturned], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (6018, 1, 1, NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, 1, NULL, CAST(N'2017-03-16 20:49:42.143' AS DateTime), NULL, CAST(N'2017-04-17 20:19:52.157' AS DateTime))
INSERT [dbo].[InvOutletPOMaster] ([OutletPOMasterId], [OutletId], [WarehouseId], [Extra1_WarehouseName], [Note], [Status], [IsActive], [IsChanged], [IsDeleted], [IsEdited], [IsReceived], [IsReturned], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (6019, 1, 1, NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-03-16 21:15:01.083' AS DateTime), NULL, CAST(N'2017-04-25 15:22:36.153' AS DateTime))
INSERT [dbo].[InvOutletPOMaster] ([OutletPOMasterId], [OutletId], [WarehouseId], [Extra1_WarehouseName], [Note], [Status], [IsActive], [IsChanged], [IsDeleted], [IsEdited], [IsReceived], [IsReturned], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (6020, 1, 1, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-03-20 17:44:31.590' AS DateTime), NULL, CAST(N'2017-03-29 12:57:10.343' AS DateTime))
INSERT [dbo].[InvOutletPOMaster] ([OutletPOMasterId], [OutletId], [WarehouseId], [Extra1_WarehouseName], [Note], [Status], [IsActive], [IsChanged], [IsDeleted], [IsEdited], [IsReceived], [IsReturned], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (6021, 1, 1, NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-03-20 19:23:44.057' AS DateTime), NULL, CAST(N'2017-04-25 15:22:40.150' AS DateTime))
INSERT [dbo].[InvOutletPOMaster] ([OutletPOMasterId], [OutletId], [WarehouseId], [Extra1_WarehouseName], [Note], [Status], [IsActive], [IsChanged], [IsDeleted], [IsEdited], [IsReceived], [IsReturned], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (6022, 1, 1, NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-04-13 20:04:59.693' AS DateTime), NULL, CAST(N'2017-04-25 15:22:38.213' AS DateTime))
INSERT [dbo].[InvOutletPOMaster] ([OutletPOMasterId], [OutletId], [WarehouseId], [Extra1_WarehouseName], [Note], [Status], [IsActive], [IsChanged], [IsDeleted], [IsEdited], [IsReceived], [IsReturned], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (6023, 1, 1, NULL, NULL, 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-04-21 09:51:48.190' AS DateTime), NULL, CAST(N'2017-04-21 10:10:05.467' AS DateTime))
INSERT [dbo].[InvOutletPOMaster] ([OutletPOMasterId], [OutletId], [WarehouseId], [Extra1_WarehouseName], [Note], [Status], [IsActive], [IsChanged], [IsDeleted], [IsEdited], [IsReceived], [IsReturned], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (6024, 1, 1, NULL, NULL, 2, 1, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-05-04 19:25:11.620' AS DateTime), NULL, CAST(N'2017-05-04 19:27:02.580' AS DateTime))
SET IDENTITY_INSERT [dbo].[InvOutletPOMaster] OFF
SET IDENTITY_INSERT [dbo].[InvOutletPOReturnDetail] ON 

INSERT [dbo].[InvOutletPOReturnDetail] ([OutletPOReturnDetailsId], [OutletPOReturnMasterId], [Original_OutletPODetailsId], [ProductId], [ProductQuantity], [Note], [Status], [IsActive], [IsChanged], [IsDeleted], [IsEdited], [IsReceived], [IsReturned], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (1, 1, 6052, 1004, 2, NULL, NULL, 1, 0, 0, 0, 0, 1, NULL, CAST(N'2017-04-21 10:34:51.463' AS DateTime), NULL, NULL)
INSERT [dbo].[InvOutletPOReturnDetail] ([OutletPOReturnDetailsId], [OutletPOReturnMasterId], [Original_OutletPODetailsId], [ProductId], [ProductQuantity], [Note], [Status], [IsActive], [IsChanged], [IsDeleted], [IsEdited], [IsReceived], [IsReturned], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (2, 1, 6053, 1005, 3, NULL, NULL, 1, 0, 0, 0, 0, 1, NULL, CAST(N'2017-04-21 10:34:51.463' AS DateTime), NULL, NULL)
INSERT [dbo].[InvOutletPOReturnDetail] ([OutletPOReturnDetailsId], [OutletPOReturnMasterId], [Original_OutletPODetailsId], [ProductId], [ProductQuantity], [Note], [Status], [IsActive], [IsChanged], [IsDeleted], [IsEdited], [IsReceived], [IsReturned], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (3, 2, 1, 1004, 3, NULL, NULL, 1, 0, 0, 0, 0, 1, NULL, CAST(N'2017-04-28 10:07:10.157' AS DateTime), NULL, NULL)
INSERT [dbo].[InvOutletPOReturnDetail] ([OutletPOReturnDetailsId], [OutletPOReturnMasterId], [Original_OutletPODetailsId], [ProductId], [ProductQuantity], [Note], [Status], [IsActive], [IsChanged], [IsDeleted], [IsEdited], [IsReceived], [IsReturned], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (4, 2, 2, 1005, 4, NULL, NULL, 1, 0, 0, 0, 0, 1, NULL, CAST(N'2017-04-28 10:07:10.157' AS DateTime), NULL, NULL)
SET IDENTITY_INSERT [dbo].[InvOutletPOReturnDetail] OFF
SET IDENTITY_INSERT [dbo].[InvOutletPOReturnMaster] ON 

INSERT [dbo].[InvOutletPOReturnMaster] ([OutletPOReturnMasterId], [Original_OutletPOMasterId], [OutletPOInvoiceNo], [OutletId], [WarehouseId], [Extra1], [Note], [RepairCost], [RepairReturnDate], [Status], [IsActive], [IsChanged], [IsDeleted], [IsEdited], [IsReceived], [IsReturned], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (1, 6023, NULL, 1, 1, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, 1, NULL, CAST(N'2017-04-21 10:34:51.463' AS DateTime), NULL, NULL)
INSERT [dbo].[InvOutletPOReturnMaster] ([OutletPOReturnMasterId], [Original_OutletPOMasterId], [OutletPOInvoiceNo], [OutletId], [WarehouseId], [Extra1], [Note], [RepairCost], [RepairReturnDate], [Status], [IsActive], [IsChanged], [IsDeleted], [IsEdited], [IsReceived], [IsReturned], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (2, 1, NULL, 1, 1, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, 1, NULL, CAST(N'2017-04-28 10:07:10.157' AS DateTime), NULL, NULL)
SET IDENTITY_INSERT [dbo].[InvOutletPOReturnMaster] OFF
SET IDENTITY_INSERT [dbo].[InvOutletStock] ON 

INSERT [dbo].[InvOutletStock] ([OutletStockId], [WarehouseId], [OutletId], [ProductId], [OutletStockQuantity], [InOut], [AdjustedReason], [Note], [Status], [IsActive], [IsChanged], [IsDeleted], [IsEdited], [IsReceived], [IsReturned], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (5052, NULL, 1, 1004, 12, 1, NULL, N'ReceivedFromWarehouse', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-04-25 15:22:33.000' AS DateTime), NULL, NULL)
INSERT [dbo].[InvOutletStock] ([OutletStockId], [WarehouseId], [OutletId], [ProductId], [OutletStockQuantity], [InOut], [AdjustedReason], [Note], [Status], [IsActive], [IsChanged], [IsDeleted], [IsEdited], [IsReceived], [IsReturned], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (5053, NULL, 1, 1005, 15, 1, NULL, N'ReceivedFromWarehouse', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-04-25 15:22:33.027' AS DateTime), NULL, NULL)
INSERT [dbo].[InvOutletStock] ([OutletStockId], [WarehouseId], [OutletId], [ProductId], [OutletStockQuantity], [InOut], [AdjustedReason], [Note], [Status], [IsActive], [IsChanged], [IsDeleted], [IsEdited], [IsReceived], [IsReturned], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (5054, NULL, 3, 1005, 20, 1, NULL, N'ReceivedFromWarehouse', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-04-25 15:22:34.243' AS DateTime), NULL, NULL)
INSERT [dbo].[InvOutletStock] ([OutletStockId], [WarehouseId], [OutletId], [ProductId], [OutletStockQuantity], [InOut], [AdjustedReason], [Note], [Status], [IsActive], [IsChanged], [IsDeleted], [IsEdited], [IsReceived], [IsReturned], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (5055, NULL, 1, 1004, 8, 1, NULL, N'ReceivedFromWarehouse', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-04-25 15:22:35.163' AS DateTime), NULL, NULL)
INSERT [dbo].[InvOutletStock] ([OutletStockId], [WarehouseId], [OutletId], [ProductId], [OutletStockQuantity], [InOut], [AdjustedReason], [Note], [Status], [IsActive], [IsChanged], [IsDeleted], [IsEdited], [IsReceived], [IsReturned], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (5056, NULL, 1, 1005, 7, 1, NULL, N'ReceivedFromWarehouse', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-04-25 15:22:36.157' AS DateTime), NULL, NULL)
INSERT [dbo].[InvOutletStock] ([OutletStockId], [WarehouseId], [OutletId], [ProductId], [OutletStockQuantity], [InOut], [AdjustedReason], [Note], [Status], [IsActive], [IsChanged], [IsDeleted], [IsEdited], [IsReceived], [IsReturned], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (5057, NULL, 1, 1006, 12, 1, NULL, N'ReceivedFromWarehouse', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-04-25 15:22:36.157' AS DateTime), NULL, NULL)
INSERT [dbo].[InvOutletStock] ([OutletStockId], [WarehouseId], [OutletId], [ProductId], [OutletStockQuantity], [InOut], [AdjustedReason], [Note], [Status], [IsActive], [IsChanged], [IsDeleted], [IsEdited], [IsReceived], [IsReturned], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (5058, NULL, 1, 1004, 5, 1, NULL, N'ReceivedFromWarehouse', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-04-25 15:22:38.217' AS DateTime), NULL, NULL)
INSERT [dbo].[InvOutletStock] ([OutletStockId], [WarehouseId], [OutletId], [ProductId], [OutletStockQuantity], [InOut], [AdjustedReason], [Note], [Status], [IsActive], [IsChanged], [IsDeleted], [IsEdited], [IsReceived], [IsReturned], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (5059, NULL, 1, 1005, 5, 1, NULL, N'ReceivedFromWarehouse', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-04-25 15:22:38.217' AS DateTime), NULL, NULL)
INSERT [dbo].[InvOutletStock] ([OutletStockId], [WarehouseId], [OutletId], [ProductId], [OutletStockQuantity], [InOut], [AdjustedReason], [Note], [Status], [IsActive], [IsChanged], [IsDeleted], [IsEdited], [IsReceived], [IsReturned], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (5060, NULL, 1, 1007, 5, 1, NULL, N'ReceivedFromWarehouse', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-04-25 15:22:38.217' AS DateTime), NULL, NULL)
INSERT [dbo].[InvOutletStock] ([OutletStockId], [WarehouseId], [OutletId], [ProductId], [OutletStockQuantity], [InOut], [AdjustedReason], [Note], [Status], [IsActive], [IsChanged], [IsDeleted], [IsEdited], [IsReceived], [IsReturned], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (5061, NULL, 1, 1009, 9, 1, NULL, N'ReceivedFromWarehouse', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-04-25 15:22:40.153' AS DateTime), NULL, NULL)
INSERT [dbo].[InvOutletStock] ([OutletStockId], [WarehouseId], [OutletId], [ProductId], [OutletStockQuantity], [InOut], [AdjustedReason], [Note], [Status], [IsActive], [IsChanged], [IsDeleted], [IsEdited], [IsReceived], [IsReturned], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (5062, NULL, 1, 1008, 5, 1, NULL, N'ReceivedFromWarehouse', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-04-25 15:22:40.153' AS DateTime), NULL, NULL)
INSERT [dbo].[InvOutletStock] ([OutletStockId], [WarehouseId], [OutletId], [ProductId], [OutletStockQuantity], [InOut], [AdjustedReason], [Note], [Status], [IsActive], [IsChanged], [IsDeleted], [IsEdited], [IsReceived], [IsReturned], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (6068, NULL, 1, 1004, 1, 2, NULL, N'Sale', NULL, 1, 0, 0, 0, NULL, -1, NULL, CAST(N'2017-04-26 16:30:05.360' AS DateTime), NULL, NULL)
INSERT [dbo].[InvOutletStock] ([OutletStockId], [WarehouseId], [OutletId], [ProductId], [OutletStockQuantity], [InOut], [AdjustedReason], [Note], [Status], [IsActive], [IsChanged], [IsDeleted], [IsEdited], [IsReceived], [IsReturned], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (6069, NULL, 1, 1005, 1, 2, NULL, N'Sale', NULL, 1, 0, 0, 0, NULL, -1, NULL, CAST(N'2017-04-26 16:30:05.377' AS DateTime), NULL, NULL)
INSERT [dbo].[InvOutletStock] ([OutletStockId], [WarehouseId], [OutletId], [ProductId], [OutletStockQuantity], [InOut], [AdjustedReason], [Note], [Status], [IsActive], [IsChanged], [IsDeleted], [IsEdited], [IsReceived], [IsReturned], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (6070, NULL, 1, 1006, 1, 2, NULL, N'Sale', NULL, 1, 0, 0, 0, NULL, -1, NULL, CAST(N'2017-04-26 16:30:05.377' AS DateTime), NULL, NULL)
INSERT [dbo].[InvOutletStock] ([OutletStockId], [WarehouseId], [OutletId], [ProductId], [OutletStockQuantity], [InOut], [AdjustedReason], [Note], [Status], [IsActive], [IsChanged], [IsDeleted], [IsEdited], [IsReceived], [IsReturned], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (6071, NULL, 1, 1004, 1, 2, NULL, N'Sale', NULL, 1, 0, 0, 0, NULL, -1, NULL, CAST(N'2017-04-26 16:45:12.957' AS DateTime), NULL, NULL)
INSERT [dbo].[InvOutletStock] ([OutletStockId], [WarehouseId], [OutletId], [ProductId], [OutletStockQuantity], [InOut], [AdjustedReason], [Note], [Status], [IsActive], [IsChanged], [IsDeleted], [IsEdited], [IsReceived], [IsReturned], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (6072, NULL, 1, 1005, 1, 2, NULL, N'Sale', NULL, 1, 0, 0, 0, NULL, -1, NULL, CAST(N'2017-04-26 16:45:12.970' AS DateTime), NULL, NULL)
INSERT [dbo].[InvOutletStock] ([OutletStockId], [WarehouseId], [OutletId], [ProductId], [OutletStockQuantity], [InOut], [AdjustedReason], [Note], [Status], [IsActive], [IsChanged], [IsDeleted], [IsEdited], [IsReceived], [IsReturned], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (6073, NULL, 1, 1006, 1, 2, NULL, N'Sale', NULL, 1, 0, 0, 0, NULL, -1, NULL, CAST(N'2017-04-26 16:45:12.970' AS DateTime), NULL, NULL)
INSERT [dbo].[InvOutletStock] ([OutletStockId], [WarehouseId], [OutletId], [ProductId], [OutletStockQuantity], [InOut], [AdjustedReason], [Note], [Status], [IsActive], [IsChanged], [IsDeleted], [IsEdited], [IsReceived], [IsReturned], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (6074, NULL, 1, 1008, 1, 2, NULL, N'Sale', NULL, 1, 0, 0, 0, NULL, -1, NULL, CAST(N'2017-04-26 16:47:25.047' AS DateTime), NULL, NULL)
INSERT [dbo].[InvOutletStock] ([OutletStockId], [WarehouseId], [OutletId], [ProductId], [OutletStockQuantity], [InOut], [AdjustedReason], [Note], [Status], [IsActive], [IsChanged], [IsDeleted], [IsEdited], [IsReceived], [IsReturned], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (6075, NULL, 1, 1009, 1, 2, NULL, N'Sale', NULL, 1, 0, 0, 0, NULL, -1, NULL, CAST(N'2017-04-26 16:47:25.050' AS DateTime), NULL, NULL)
INSERT [dbo].[InvOutletStock] ([OutletStockId], [WarehouseId], [OutletId], [ProductId], [OutletStockQuantity], [InOut], [AdjustedReason], [Note], [Status], [IsActive], [IsChanged], [IsDeleted], [IsEdited], [IsReceived], [IsReturned], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (6076, NULL, 1, 1009, 1, 2, NULL, N'Sale', NULL, 1, 0, 0, 0, NULL, -1, NULL, CAST(N'2017-04-26 16:50:36.493' AS DateTime), NULL, NULL)
INSERT [dbo].[InvOutletStock] ([OutletStockId], [WarehouseId], [OutletId], [ProductId], [OutletStockQuantity], [InOut], [AdjustedReason], [Note], [Status], [IsActive], [IsChanged], [IsDeleted], [IsEdited], [IsReceived], [IsReturned], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (6077, NULL, 1, 1006, 1, 2, NULL, N'Sale', NULL, 1, 0, 0, 0, NULL, -1, NULL, CAST(N'2017-04-26 16:50:36.497' AS DateTime), NULL, NULL)
INSERT [dbo].[InvOutletStock] ([OutletStockId], [WarehouseId], [OutletId], [ProductId], [OutletStockQuantity], [InOut], [AdjustedReason], [Note], [Status], [IsActive], [IsChanged], [IsDeleted], [IsEdited], [IsReceived], [IsReturned], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (6078, NULL, 1, 1004, 1, 2, NULL, N'Sold', NULL, 1, 0, 0, 0, NULL, -1, NULL, CAST(N'2017-04-27 12:52:49.033' AS DateTime), NULL, NULL)
INSERT [dbo].[InvOutletStock] ([OutletStockId], [WarehouseId], [OutletId], [ProductId], [OutletStockQuantity], [InOut], [AdjustedReason], [Note], [Status], [IsActive], [IsChanged], [IsDeleted], [IsEdited], [IsReceived], [IsReturned], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (6079, NULL, 1, 1005, 1, 2, NULL, N'Sold', NULL, 1, 0, 0, 0, NULL, -1, NULL, CAST(N'2017-04-27 12:53:02.947' AS DateTime), NULL, NULL)
INSERT [dbo].[InvOutletStock] ([OutletStockId], [WarehouseId], [OutletId], [ProductId], [OutletStockQuantity], [InOut], [AdjustedReason], [Note], [Status], [IsActive], [IsChanged], [IsDeleted], [IsEdited], [IsReceived], [IsReturned], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (6080, NULL, 1, 1007, 1, 2, NULL, N'Sold', NULL, 1, 0, 0, 0, NULL, -1, NULL, CAST(N'2017-04-27 12:55:44.170' AS DateTime), NULL, NULL)
INSERT [dbo].[InvOutletStock] ([OutletStockId], [WarehouseId], [OutletId], [ProductId], [OutletStockQuantity], [InOut], [AdjustedReason], [Note], [Status], [IsActive], [IsChanged], [IsDeleted], [IsEdited], [IsReceived], [IsReturned], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (6081, NULL, 1, 1008, 1, 2, NULL, N'Sold', NULL, 1, 0, 0, 0, NULL, -1, NULL, CAST(N'2017-04-27 12:55:44.173' AS DateTime), NULL, NULL)
INSERT [dbo].[InvOutletStock] ([OutletStockId], [WarehouseId], [OutletId], [ProductId], [OutletStockQuantity], [InOut], [AdjustedReason], [Note], [Status], [IsActive], [IsChanged], [IsDeleted], [IsEdited], [IsReceived], [IsReturned], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (6082, NULL, 1, 1009, 1, 2, NULL, N'Sold', NULL, 1, 0, 0, 0, NULL, -1, NULL, CAST(N'2017-04-27 12:55:44.177' AS DateTime), NULL, NULL)
INSERT [dbo].[InvOutletStock] ([OutletStockId], [WarehouseId], [OutletId], [ProductId], [OutletStockQuantity], [InOut], [AdjustedReason], [Note], [Status], [IsActive], [IsChanged], [IsDeleted], [IsEdited], [IsReceived], [IsReturned], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (6083, NULL, 1, 1009, 1, 2, NULL, N'Sold', NULL, 1, 0, 0, 0, NULL, -1, NULL, CAST(N'2017-04-27 13:15:29.947' AS DateTime), NULL, NULL)
INSERT [dbo].[InvOutletStock] ([OutletStockId], [WarehouseId], [OutletId], [ProductId], [OutletStockQuantity], [InOut], [AdjustedReason], [Note], [Status], [IsActive], [IsChanged], [IsDeleted], [IsEdited], [IsReceived], [IsReturned], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (6084, NULL, 1, 1008, 1, 2, NULL, N'Sold', NULL, 1, 0, 0, 0, NULL, -1, NULL, CAST(N'2017-04-27 13:15:29.967' AS DateTime), NULL, NULL)
INSERT [dbo].[InvOutletStock] ([OutletStockId], [WarehouseId], [OutletId], [ProductId], [OutletStockQuantity], [InOut], [AdjustedReason], [Note], [Status], [IsActive], [IsChanged], [IsDeleted], [IsEdited], [IsReceived], [IsReturned], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (6085, NULL, 1, 1007, 1, 2, NULL, N'Sold', NULL, 1, 0, 0, 0, NULL, -1, NULL, CAST(N'2017-04-27 13:15:29.970' AS DateTime), NULL, NULL)
INSERT [dbo].[InvOutletStock] ([OutletStockId], [WarehouseId], [OutletId], [ProductId], [OutletStockQuantity], [InOut], [AdjustedReason], [Note], [Status], [IsActive], [IsChanged], [IsDeleted], [IsEdited], [IsReceived], [IsReturned], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (6086, NULL, 1, 1004, 1, 2, NULL, N'Sold', NULL, 1, 0, 0, 0, NULL, -1, NULL, CAST(N'2017-04-27 15:53:43.457' AS DateTime), NULL, NULL)
INSERT [dbo].[InvOutletStock] ([OutletStockId], [WarehouseId], [OutletId], [ProductId], [OutletStockQuantity], [InOut], [AdjustedReason], [Note], [Status], [IsActive], [IsChanged], [IsDeleted], [IsEdited], [IsReceived], [IsReturned], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (6087, NULL, 1, 1009, 1, 2, NULL, N'Sold', NULL, 1, 0, 0, 0, NULL, -1, NULL, CAST(N'2017-04-27 15:53:43.477' AS DateTime), NULL, NULL)
INSERT [dbo].[InvOutletStock] ([OutletStockId], [WarehouseId], [OutletId], [ProductId], [OutletStockQuantity], [InOut], [AdjustedReason], [Note], [Status], [IsActive], [IsChanged], [IsDeleted], [IsEdited], [IsReceived], [IsReturned], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (7078, NULL, 1, 1004, 1, 2, NULL, N'Sold', NULL, 1, 0, 0, 0, NULL, -1, NULL, CAST(N'2017-04-27 18:53:21.443' AS DateTime), NULL, NULL)
INSERT [dbo].[InvOutletStock] ([OutletStockId], [WarehouseId], [OutletId], [ProductId], [OutletStockQuantity], [InOut], [AdjustedReason], [Note], [Status], [IsActive], [IsChanged], [IsDeleted], [IsEdited], [IsReceived], [IsReturned], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (7079, NULL, 1, 1005, 1, 2, NULL, N'Sold', NULL, 1, 0, 0, 0, NULL, -1, NULL, CAST(N'2017-04-27 18:54:26.127' AS DateTime), NULL, NULL)
INSERT [dbo].[InvOutletStock] ([OutletStockId], [WarehouseId], [OutletId], [ProductId], [OutletStockQuantity], [InOut], [AdjustedReason], [Note], [Status], [IsActive], [IsChanged], [IsDeleted], [IsEdited], [IsReceived], [IsReturned], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (7080, NULL, 1, 1007, 1, 2, NULL, N'Sold', NULL, 1, 0, 0, 0, NULL, -1, NULL, CAST(N'2017-04-27 18:55:12.603' AS DateTime), NULL, NULL)
INSERT [dbo].[InvOutletStock] ([OutletStockId], [WarehouseId], [OutletId], [ProductId], [OutletStockQuantity], [InOut], [AdjustedReason], [Note], [Status], [IsActive], [IsChanged], [IsDeleted], [IsEdited], [IsReceived], [IsReturned], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (7081, NULL, 1, 1007, 1, 2, NULL, N'Sold', NULL, 1, 0, 0, 0, NULL, -1, NULL, CAST(N'2017-04-27 18:57:48.967' AS DateTime), NULL, NULL)
INSERT [dbo].[InvOutletStock] ([OutletStockId], [WarehouseId], [OutletId], [ProductId], [OutletStockQuantity], [InOut], [AdjustedReason], [Note], [Status], [IsActive], [IsChanged], [IsDeleted], [IsEdited], [IsReceived], [IsReturned], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (7082, NULL, 1, 1005, 1, 2, NULL, N'Sold', NULL, 1, 0, 0, 0, NULL, -1, NULL, CAST(N'2017-04-27 19:21:12.050' AS DateTime), NULL, NULL)
INSERT [dbo].[InvOutletStock] ([OutletStockId], [WarehouseId], [OutletId], [ProductId], [OutletStockQuantity], [InOut], [AdjustedReason], [Note], [Status], [IsActive], [IsChanged], [IsDeleted], [IsEdited], [IsReceived], [IsReturned], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (7083, NULL, 1, 1004, 1, 2, NULL, N'Sold', NULL, 1, 0, 0, 0, NULL, -1, NULL, CAST(N'2017-04-27 19:28:01.917' AS DateTime), NULL, NULL)
INSERT [dbo].[InvOutletStock] ([OutletStockId], [WarehouseId], [OutletId], [ProductId], [OutletStockQuantity], [InOut], [AdjustedReason], [Note], [Status], [IsActive], [IsChanged], [IsDeleted], [IsEdited], [IsReceived], [IsReturned], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (7084, NULL, 1, 1006, 1, 2, NULL, N'Sold', NULL, 1, 0, 0, 0, NULL, -1, NULL, CAST(N'2017-04-27 19:28:40.313' AS DateTime), NULL, NULL)
INSERT [dbo].[InvOutletStock] ([OutletStockId], [WarehouseId], [OutletId], [ProductId], [OutletStockQuantity], [InOut], [AdjustedReason], [Note], [Status], [IsActive], [IsChanged], [IsDeleted], [IsEdited], [IsReceived], [IsReturned], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (7085, NULL, 1, 1004, 1, 2, NULL, N'Sold', NULL, 1, 0, 0, 0, NULL, -1, NULL, CAST(N'2017-04-27 22:38:19.520' AS DateTime), NULL, NULL)
INSERT [dbo].[InvOutletStock] ([OutletStockId], [WarehouseId], [OutletId], [ProductId], [OutletStockQuantity], [InOut], [AdjustedReason], [Note], [Status], [IsActive], [IsChanged], [IsDeleted], [IsEdited], [IsReceived], [IsReturned], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (7086, NULL, 1, 1008, 1, 2, NULL, N'Sold', NULL, 1, 0, 0, 0, NULL, -1, NULL, CAST(N'2017-04-27 22:38:19.573' AS DateTime), NULL, NULL)
INSERT [dbo].[InvOutletStock] ([OutletStockId], [WarehouseId], [OutletId], [ProductId], [OutletStockQuantity], [InOut], [AdjustedReason], [Note], [Status], [IsActive], [IsChanged], [IsDeleted], [IsEdited], [IsReceived], [IsReturned], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (7087, NULL, 1, 1009, 1, 2, NULL, N'Sold', NULL, 1, 0, 0, 0, NULL, -1, NULL, CAST(N'2017-04-27 22:38:19.577' AS DateTime), NULL, NULL)
INSERT [dbo].[InvOutletStock] ([OutletStockId], [WarehouseId], [OutletId], [ProductId], [OutletStockQuantity], [InOut], [AdjustedReason], [Note], [Status], [IsActive], [IsChanged], [IsDeleted], [IsEdited], [IsReceived], [IsReturned], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (7088, NULL, 1, 1004, 1, 2, NULL, N'Sold', NULL, 1, 0, 0, 0, NULL, -1, NULL, CAST(N'2017-04-27 22:48:40.490' AS DateTime), NULL, NULL)
INSERT [dbo].[InvOutletStock] ([OutletStockId], [WarehouseId], [OutletId], [ProductId], [OutletStockQuantity], [InOut], [AdjustedReason], [Note], [Status], [IsActive], [IsChanged], [IsDeleted], [IsEdited], [IsReceived], [IsReturned], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (7089, NULL, 1, 1005, 1, 2, NULL, N'Sold', NULL, 1, 0, 0, 0, NULL, -1, NULL, CAST(N'2017-04-27 22:49:09.977' AS DateTime), NULL, NULL)
INSERT [dbo].[InvOutletStock] ([OutletStockId], [WarehouseId], [OutletId], [ProductId], [OutletStockQuantity], [InOut], [AdjustedReason], [Note], [Status], [IsActive], [IsChanged], [IsDeleted], [IsEdited], [IsReceived], [IsReturned], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (7090, NULL, 1, 1004, 1, 2, NULL, N'Sold', NULL, 1, 0, 0, 0, NULL, -1, NULL, CAST(N'2017-04-27 22:54:05.477' AS DateTime), NULL, NULL)
INSERT [dbo].[InvOutletStock] ([OutletStockId], [WarehouseId], [OutletId], [ProductId], [OutletStockQuantity], [InOut], [AdjustedReason], [Note], [Status], [IsActive], [IsChanged], [IsDeleted], [IsEdited], [IsReceived], [IsReturned], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (7091, NULL, 1, 1005, 1, 2, NULL, N'Sold', NULL, 1, 0, 0, 0, NULL, -1, NULL, CAST(N'2017-04-27 22:54:20.667' AS DateTime), NULL, NULL)
INSERT [dbo].[InvOutletStock] ([OutletStockId], [WarehouseId], [OutletId], [ProductId], [OutletStockQuantity], [InOut], [AdjustedReason], [Note], [Status], [IsActive], [IsChanged], [IsDeleted], [IsEdited], [IsReceived], [IsReturned], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (7092, NULL, 1, 1004, 1, 2, NULL, N'Sold', NULL, 1, 0, 0, 0, NULL, -1, NULL, CAST(N'2017-04-27 23:20:48.310' AS DateTime), NULL, NULL)
INSERT [dbo].[InvOutletStock] ([OutletStockId], [WarehouseId], [OutletId], [ProductId], [OutletStockQuantity], [InOut], [AdjustedReason], [Note], [Status], [IsActive], [IsChanged], [IsDeleted], [IsEdited], [IsReceived], [IsReturned], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (7093, NULL, 1, 1009, 1, 2, NULL, N'Sold', NULL, 1, 0, 0, 0, NULL, -1, NULL, CAST(N'2017-04-27 23:20:48.350' AS DateTime), NULL, NULL)
INSERT [dbo].[InvOutletStock] ([OutletStockId], [WarehouseId], [OutletId], [ProductId], [OutletStockQuantity], [InOut], [AdjustedReason], [Note], [Status], [IsActive], [IsChanged], [IsDeleted], [IsEdited], [IsReceived], [IsReturned], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (7094, NULL, 1, 1004, 1, 2, NULL, N'Sold', NULL, 1, 0, 0, 0, NULL, -1, NULL, CAST(N'2017-04-27 23:29:48.153' AS DateTime), NULL, NULL)
INSERT [dbo].[InvOutletStock] ([OutletStockId], [WarehouseId], [OutletId], [ProductId], [OutletStockQuantity], [InOut], [AdjustedReason], [Note], [Status], [IsActive], [IsChanged], [IsDeleted], [IsEdited], [IsReceived], [IsReturned], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (7095, NULL, 1, 1005, 1, 2, NULL, N'Sold', NULL, 1, 0, 0, 0, NULL, -1, NULL, CAST(N'2017-04-27 23:29:48.237' AS DateTime), NULL, NULL)
INSERT [dbo].[InvOutletStock] ([OutletStockId], [WarehouseId], [OutletId], [ProductId], [OutletStockQuantity], [InOut], [AdjustedReason], [Note], [Status], [IsActive], [IsChanged], [IsDeleted], [IsEdited], [IsReceived], [IsReturned], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (7096, NULL, 1, 1004, 1, 2, NULL, N'Sold', NULL, 1, 0, 0, 0, NULL, -1, NULL, CAST(N'2017-04-27 23:52:34.287' AS DateTime), NULL, NULL)
INSERT [dbo].[InvOutletStock] ([OutletStockId], [WarehouseId], [OutletId], [ProductId], [OutletStockQuantity], [InOut], [AdjustedReason], [Note], [Status], [IsActive], [IsChanged], [IsDeleted], [IsEdited], [IsReceived], [IsReturned], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (7097, NULL, 1, 1008, 1, 2, NULL, N'Sold', NULL, 1, 0, 0, 0, NULL, -1, NULL, CAST(N'2017-04-27 23:54:46.613' AS DateTime), NULL, NULL)
INSERT [dbo].[InvOutletStock] ([OutletStockId], [WarehouseId], [OutletId], [ProductId], [OutletStockQuantity], [InOut], [AdjustedReason], [Note], [Status], [IsActive], [IsChanged], [IsDeleted], [IsEdited], [IsReceived], [IsReturned], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (7098, NULL, 1, 1005, 1, 2, NULL, N'Sold', NULL, 1, 0, 0, 0, NULL, -1, NULL, CAST(N'2017-04-28 00:08:36.757' AS DateTime), NULL, NULL)
INSERT [dbo].[InvOutletStock] ([OutletStockId], [WarehouseId], [OutletId], [ProductId], [OutletStockQuantity], [InOut], [AdjustedReason], [Note], [Status], [IsActive], [IsChanged], [IsDeleted], [IsEdited], [IsReceived], [IsReturned], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (7099, NULL, 1, 1005, 1, 2, NULL, N'Sold', NULL, 1, 0, 0, 0, NULL, -1, NULL, CAST(N'2017-04-28 00:39:48.047' AS DateTime), NULL, NULL)
INSERT [dbo].[InvOutletStock] ([OutletStockId], [WarehouseId], [OutletId], [ProductId], [OutletStockQuantity], [InOut], [AdjustedReason], [Note], [Status], [IsActive], [IsChanged], [IsDeleted], [IsEdited], [IsReceived], [IsReturned], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (7100, NULL, 1, 1004, 1, 2, NULL, N'Sold', NULL, 1, 0, 0, 0, NULL, -1, NULL, CAST(N'2017-04-28 01:34:05.920' AS DateTime), NULL, NULL)
INSERT [dbo].[InvOutletStock] ([OutletStockId], [WarehouseId], [OutletId], [ProductId], [OutletStockQuantity], [InOut], [AdjustedReason], [Note], [Status], [IsActive], [IsChanged], [IsDeleted], [IsEdited], [IsReceived], [IsReturned], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (7101, NULL, 1, 1004, 1, 2, NULL, N'Sold', NULL, 1, 0, 0, 0, NULL, -1, NULL, CAST(N'2017-04-28 01:34:09.537' AS DateTime), NULL, NULL)
INSERT [dbo].[InvOutletStock] ([OutletStockId], [WarehouseId], [OutletId], [ProductId], [OutletStockQuantity], [InOut], [AdjustedReason], [Note], [Status], [IsActive], [IsChanged], [IsDeleted], [IsEdited], [IsReceived], [IsReturned], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (7102, NULL, 1, 1005, 1, 2, NULL, N'Sold', NULL, 1, 0, 0, 0, NULL, -1, NULL, CAST(N'2017-04-28 01:35:12.837' AS DateTime), NULL, NULL)
INSERT [dbo].[InvOutletStock] ([OutletStockId], [WarehouseId], [OutletId], [ProductId], [OutletStockQuantity], [InOut], [AdjustedReason], [Note], [Status], [IsActive], [IsChanged], [IsDeleted], [IsEdited], [IsReceived], [IsReturned], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (7103, NULL, 1, 1005, 1, 2, NULL, N'Sold', NULL, 1, 0, 0, 0, NULL, -1, NULL, CAST(N'2017-04-28 01:35:16.657' AS DateTime), NULL, NULL)
INSERT [dbo].[InvOutletStock] ([OutletStockId], [WarehouseId], [OutletId], [ProductId], [OutletStockQuantity], [InOut], [AdjustedReason], [Note], [Status], [IsActive], [IsChanged], [IsDeleted], [IsEdited], [IsReceived], [IsReturned], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (7104, NULL, 1, 1006, 1, 2, NULL, N'Sold', NULL, 1, 0, 0, 0, NULL, -1, NULL, CAST(N'2017-04-28 01:38:59.807' AS DateTime), NULL, NULL)
INSERT [dbo].[InvOutletStock] ([OutletStockId], [WarehouseId], [OutletId], [ProductId], [OutletStockQuantity], [InOut], [AdjustedReason], [Note], [Status], [IsActive], [IsChanged], [IsDeleted], [IsEdited], [IsReceived], [IsReturned], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (7105, NULL, 1, 1006, 1, 2, NULL, N'Sold', NULL, 1, 0, 0, 0, NULL, -1, NULL, CAST(N'2017-04-28 01:39:14.790' AS DateTime), NULL, NULL)
SET IDENTITY_INSERT [dbo].[InvOutletStock] OFF
SET IDENTITY_INSERT [dbo].[InvOutletWarrentyRepair] ON 

INSERT [dbo].[InvOutletWarrentyRepair] ([OutletWarrentyRepairId], [OutletInvoiceDetailsId], [OutletSaleInvoiceNo], [RepairTokenNo], [WarehouseId], [OutletId], [ProductId], [ProductQuantity], [Problem], [WarrentyType], [PurchaseDate], [EstimatedReturnDate], [ReturnDate], [RepairCost], [RepairStatus], [Note], [Status], [IsActive], [IsChanged], [IsDeleted], [IsEdited], [IsReceived], [IsRepaired], [IsReturned], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (2005, NULL, N'1704270001', N'1705040001', NULL, 1, 1004, 1, N'Keyboard not working', N'Available', CAST(N'2017-04-27 00:00:00.000' AS DateTime), NULL, CAST(N'2017-05-11 00:00:00.000' AS DateTime), 2600, N'Sent to Repar', NULL, NULL, 1, NULL, NULL, NULL, 1, 0, 1, NULL, CAST(N'2017-05-04 15:20:49.893' AS DateTime), NULL, CAST(N'2017-05-04 16:05:39.140' AS DateTime))
SET IDENTITY_INSERT [dbo].[InvOutletWarrentyRepair] OFF
SET IDENTITY_INSERT [dbo].[InvPackageDetail] ON 

INSERT [dbo].[InvPackageDetail] ([PackageDetailsId], [PackageMasterId], [ProductId], [ProductQuantity], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (7, 21, 1004, 2, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[InvPackageDetail] ([PackageDetailsId], [PackageMasterId], [ProductId], [ProductQuantity], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (8, 21, 1004, 3, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[InvPackageDetail] ([PackageDetailsId], [PackageMasterId], [ProductId], [ProductQuantity], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (9, 21, 1005, 4, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[InvPackageDetail] ([PackageDetailsId], [PackageMasterId], [ProductId], [ProductQuantity], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (10, 1003, 1004, 2, NULL, NULL, NULL, CAST(N'2017-01-31 12:56:32.020' AS DateTime), NULL, NULL)
INSERT [dbo].[InvPackageDetail] ([PackageDetailsId], [PackageMasterId], [ProductId], [ProductQuantity], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (1010, 2002, 1004, 2, NULL, NULL, NULL, CAST(N'2017-01-31 20:35:32.690' AS DateTime), NULL, NULL)
SET IDENTITY_INSERT [dbo].[InvPackageDetail] OFF
SET IDENTITY_INSERT [dbo].[InvPackageMaster] ON 

INSERT [dbo].[InvPackageMaster] ([PackageMasterId], [PackageCode], [PackageName], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (21, NULL, N'Package# 1', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[InvPackageMaster] ([PackageMasterId], [PackageCode], [PackageName], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (1002, NULL, N'Package# 1', NULL, NULL, NULL, CAST(N'2017-01-31 12:55:57.587' AS DateTime), NULL, NULL)
INSERT [dbo].[InvPackageMaster] ([PackageMasterId], [PackageCode], [PackageName], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (1003, NULL, N'Package# 1', NULL, NULL, NULL, CAST(N'2017-01-31 12:56:32.020' AS DateTime), NULL, NULL)
INSERT [dbo].[InvPackageMaster] ([PackageMasterId], [PackageCode], [PackageName], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (2002, NULL, N'Package# 1', NULL, NULL, NULL, CAST(N'2017-01-31 20:35:32.690' AS DateTime), NULL, NULL)
SET IDENTITY_INSERT [dbo].[InvPackageMaster] OFF
SET IDENTITY_INSERT [dbo].[InvProduct] ON 

INSERT [dbo].[InvProduct] ([ProductId], [FactoryId], [ItemId], [SizeId], [ColorId], [UoMId], [ProductCode], [ProductName], [ProductMainBarcode], [ProductFactoryBarcode], [IsFactoryBarCode], [MinimumStock], [ProductFrontImage], [ProductBackImage], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (1004, 1, 1, 1, 1, 1, N'1', N'HP Lap', N'120010001', NULL, NULL, 10, NULL, NULL, 1, NULL, NULL, CAST(N'2017-01-20 15:57:36.983' AS DateTime), NULL, NULL)
INSERT [dbo].[InvProduct] ([ProductId], [FactoryId], [ItemId], [SizeId], [ColorId], [UoMId], [ProductCode], [ProductName], [ProductMainBarcode], [ProductFactoryBarcode], [IsFactoryBarCode], [MinimumStock], [ProductFrontImage], [ProductBackImage], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (1005, 2, 1, 2, 2, 2, N'sad', N'sadasdasd', N'123002001', NULL, NULL, 50, NULL, NULL, 1, NULL, NULL, CAST(N'2017-02-27 11:03:03.157' AS DateTime), NULL, NULL)
INSERT [dbo].[InvProduct] ([ProductId], [FactoryId], [ItemId], [SizeId], [ColorId], [UoMId], [ProductCode], [ProductName], [ProductMainBarcode], [ProductFactoryBarcode], [IsFactoryBarCode], [MinimumStock], [ProductFrontImage], [ProductBackImage], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (1006, 3, 3, 2, 4, 1, N'3', N'GP Huawei', N'100020001', NULL, NULL, 90, NULL, NULL, 1, NULL, NULL, CAST(N'2017-02-08 13:05:22.367' AS DateTime), NULL, NULL)
INSERT [dbo].[InvProduct] ([ProductId], [FactoryId], [ItemId], [SizeId], [ColorId], [UoMId], [ProductCode], [ProductName], [ProductMainBarcode], [ProductFactoryBarcode], [IsFactoryBarCode], [MinimumStock], [ProductFrontImage], [ProductBackImage], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (1007, 1, 4, 1, 2, 2, N'RAM001', N'Transend Ram 4GB', N'132010001', NULL, NULL, 100, NULL, NULL, 1, NULL, NULL, CAST(N'2017-03-03 10:22:19.690' AS DateTime), NULL, NULL)
INSERT [dbo].[InvProduct] ([ProductId], [FactoryId], [ItemId], [SizeId], [ColorId], [UoMId], [ProductCode], [ProductName], [ProductMainBarcode], [ProductFactoryBarcode], [IsFactoryBarCode], [MinimumStock], [ProductFrontImage], [ProductBackImage], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (1008, 1, 5, 3, 1, 1, N'S001', N'Formal Shirt', N'68030001', NULL, NULL, 20, NULL, NULL, 1, NULL, NULL, CAST(N'2017-03-13 14:06:26.887' AS DateTime), NULL, NULL)
INSERT [dbo].[InvProduct] ([ProductId], [FactoryId], [ItemId], [SizeId], [ColorId], [UoMId], [ProductCode], [ProductName], [ProductMainBarcode], [ProductFactoryBarcode], [IsFactoryBarCode], [MinimumStock], [ProductFrontImage], [ProductBackImage], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (1009, 3, 3, 1, 2, 1, N'MDM12', N'GP Modem A', N'10010001', NULL, NULL, 10, NULL, NULL, 1, NULL, NULL, CAST(N'2017-03-03 10:24:28.857' AS DateTime), NULL, NULL)
SET IDENTITY_INSERT [dbo].[InvProduct] OFF
SET IDENTITY_INSERT [dbo].[InvProductPrice] ON 

INSERT [dbo].[InvProductPrice] ([ProductPriceId], [ProductId], [ProductCode], [CostPrice], [WholeSalePrice], [RetailPrice], [PriceSetupDate], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (1067, 1, NULL, 49000, 51000, 55500, NULL, 0, NULL, NULL, CAST(N'2016-12-31 14:56:11.577' AS DateTime), NULL, CAST(N'2017-01-10 19:32:00.347' AS DateTime))
INSERT [dbo].[InvProductPrice] ([ProductPriceId], [ProductId], [ProductCode], [CostPrice], [WholeSalePrice], [RetailPrice], [PriceSetupDate], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (1068, 2, NULL, 49000, 51000, 55500, NULL, 0, NULL, NULL, CAST(N'2016-12-31 14:56:11.577' AS DateTime), NULL, CAST(N'2017-01-10 19:35:15.257' AS DateTime))
INSERT [dbo].[InvProductPrice] ([ProductPriceId], [ProductId], [ProductCode], [CostPrice], [WholeSalePrice], [RetailPrice], [PriceSetupDate], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (1069, 3, NULL, 49000, 51000, 55500, NULL, 1, NULL, NULL, CAST(N'2016-12-31 14:56:11.577' AS DateTime), NULL, NULL)
INSERT [dbo].[InvProductPrice] ([ProductPriceId], [ProductId], [ProductCode], [CostPrice], [WholeSalePrice], [RetailPrice], [PriceSetupDate], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (1070, 4, NULL, 49000, 51000, 55500, NULL, 1, NULL, NULL, CAST(N'2016-12-31 14:56:11.577' AS DateTime), NULL, NULL)
INSERT [dbo].[InvProductPrice] ([ProductPriceId], [ProductId], [ProductCode], [CostPrice], [WholeSalePrice], [RetailPrice], [PriceSetupDate], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (1071, 5, NULL, 49000, 51000, 55500, NULL, 1, NULL, NULL, CAST(N'2016-12-31 14:56:11.577' AS DateTime), NULL, NULL)
INSERT [dbo].[InvProductPrice] ([ProductPriceId], [ProductId], [ProductCode], [CostPrice], [WholeSalePrice], [RetailPrice], [PriceSetupDate], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (1072, 6, NULL, 49000, 51000, 55500, NULL, 1, NULL, NULL, CAST(N'2016-12-31 14:56:11.577' AS DateTime), NULL, NULL)
INSERT [dbo].[InvProductPrice] ([ProductPriceId], [ProductId], [ProductCode], [CostPrice], [WholeSalePrice], [RetailPrice], [PriceSetupDate], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (2068, 1, NULL, 48000, 51000, 55500, NULL, 1, NULL, NULL, CAST(N'2017-01-10 19:32:00.347' AS DateTime), NULL, NULL)
INSERT [dbo].[InvProductPrice] ([ProductPriceId], [ProductId], [ProductCode], [CostPrice], [WholeSalePrice], [RetailPrice], [PriceSetupDate], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (2069, 2, NULL, 48100, 51000, 55500, NULL, 1, NULL, NULL, CAST(N'2017-01-10 19:35:15.257' AS DateTime), NULL, NULL)
INSERT [dbo].[InvProductPrice] ([ProductPriceId], [ProductId], [ProductCode], [CostPrice], [WholeSalePrice], [RetailPrice], [PriceSetupDate], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (3068, 1002, NULL, 50, 60, 80, NULL, 1, NULL, NULL, CAST(N'2017-01-20 12:29:47.640' AS DateTime), NULL, NULL)
INSERT [dbo].[InvProductPrice] ([ProductPriceId], [ProductId], [ProductCode], [CostPrice], [WholeSalePrice], [RetailPrice], [PriceSetupDate], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (3069, 1003, NULL, 12321, 232, 23223, NULL, 1, NULL, NULL, CAST(N'2017-01-20 12:37:01.557' AS DateTime), NULL, NULL)
INSERT [dbo].[InvProductPrice] ([ProductPriceId], [ProductId], [ProductCode], [CostPrice], [WholeSalePrice], [RetailPrice], [PriceSetupDate], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (3070, 1004, NULL, 10000, 12000, 15000, NULL, 1, NULL, NULL, CAST(N'2017-01-20 15:57:36.983' AS DateTime), NULL, NULL)
INSERT [dbo].[InvProductPrice] ([ProductPriceId], [ProductId], [ProductCode], [CostPrice], [WholeSalePrice], [RetailPrice], [PriceSetupDate], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (3071, 1005, NULL, 100, 120, 150, NULL, 1, NULL, NULL, CAST(N'2017-01-27 11:40:31.533' AS DateTime), NULL, NULL)
INSERT [dbo].[InvProductPrice] ([ProductPriceId], [ProductId], [ProductCode], [CostPrice], [WholeSalePrice], [RetailPrice], [PriceSetupDate], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (3072, 1006, NULL, 1200, 1500, 1700, NULL, 0, NULL, NULL, CAST(N'2017-02-08 12:36:07.613' AS DateTime), NULL, CAST(N'2017-02-08 12:51:26.733' AS DateTime))
INSERT [dbo].[InvProductPrice] ([ProductPriceId], [ProductId], [ProductCode], [CostPrice], [WholeSalePrice], [RetailPrice], [PriceSetupDate], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (3073, 1006, NULL, 1200, 1500, 1800, NULL, 0, NULL, NULL, CAST(N'2017-02-08 12:51:26.733' AS DateTime), NULL, CAST(N'2017-02-08 13:05:22.367' AS DateTime))
INSERT [dbo].[InvProductPrice] ([ProductPriceId], [ProductId], [ProductCode], [CostPrice], [WholeSalePrice], [RetailPrice], [PriceSetupDate], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (3074, 1006, NULL, 1200, 1500, 1900, NULL, 1, NULL, NULL, CAST(N'2017-02-08 13:05:22.367' AS DateTime), NULL, NULL)
INSERT [dbo].[InvProductPrice] ([ProductPriceId], [ProductId], [ProductCode], [CostPrice], [WholeSalePrice], [RetailPrice], [PriceSetupDate], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (3075, 1007, NULL, 1000, 1100, 1200, NULL, 1, NULL, NULL, CAST(N'2017-03-03 10:22:19.690' AS DateTime), NULL, NULL)
INSERT [dbo].[InvProductPrice] ([ProductPriceId], [ProductId], [ProductCode], [CostPrice], [WholeSalePrice], [RetailPrice], [PriceSetupDate], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (3076, 1008, NULL, 500, 550, 600, NULL, 1, NULL, NULL, CAST(N'2017-03-03 10:23:33.350' AS DateTime), NULL, NULL)
INSERT [dbo].[InvProductPrice] ([ProductPriceId], [ProductId], [ProductCode], [CostPrice], [WholeSalePrice], [RetailPrice], [PriceSetupDate], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (3077, 1009, NULL, 2000, 2200, 2300, NULL, 1, NULL, NULL, CAST(N'2017-03-03 10:24:28.857' AS DateTime), NULL, NULL)
SET IDENTITY_INSERT [dbo].[InvProductPrice] OFF
SET IDENTITY_INSERT [dbo].[InvProductPurchase] ON 

INSERT [dbo].[InvProductPurchase] ([ProductPurchaseId], [FactoryId], [ItemId], [UoMId], [SizeId], [ColorId], [ProductCode], [ProductName], [ProductMainBarcode], [ProductFactoryBarcode], [MinimumStock], [CurrentStock], [NewStock], [PurchaseQuantity], [CostPrice], [WholeSalePrice], [RetailPrice], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (11, 1, 2, 2, 2, 2, N'vxct', N'rstsrts', 100097854, 0, 2, 2, 3, 21, 2, 43, 534656, NULL, NULL, NULL, CAST(N'2016-12-24 18:16:28.603' AS DateTime), NULL, NULL)
INSERT [dbo].[InvProductPurchase] ([ProductPurchaseId], [FactoryId], [ItemId], [UoMId], [SizeId], [ColorId], [ProductCode], [ProductName], [ProductMainBarcode], [ProductFactoryBarcode], [MinimumStock], [CurrentStock], [NewStock], [PurchaseQuantity], [CostPrice], [WholeSalePrice], [RetailPrice], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (12, 1, 1, 1, 1, 4, N'66', N'34324', 100987876, 0, 3, 1, 3, 3, 32, 34, 565465, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[InvProductPurchase] ([ProductPurchaseId], [FactoryId], [ItemId], [UoMId], [SizeId], [ColorId], [ProductCode], [ProductName], [ProductMainBarcode], [ProductFactoryBarcode], [MinimumStock], [CurrentStock], [NewStock], [PurchaseQuantity], [CostPrice], [WholeSalePrice], [RetailPrice], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (13, 1, 2, 2, 2, 2, N'tsdts', N'3434', 197047985, 0, 6, 13, 2, 21, 32, 4, 6565, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[InvProductPurchase] ([ProductPurchaseId], [FactoryId], [ItemId], [UoMId], [SizeId], [ColorId], [ProductCode], [ProductName], [ProductMainBarcode], [ProductFactoryBarcode], [MinimumStock], [CurrentStock], [NewStock], [PurchaseQuantity], [CostPrice], [WholeSalePrice], [RetailPrice], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (14, 2, 2, 2, 2, 2, N'3123', N'Toshiba Laptop', 177632747, 0, 13, 2, 3, 3, 2, 32, 65465, NULL, NULL, NULL, CAST(N'2016-12-24 18:39:12.073' AS DateTime), NULL, NULL)
INSERT [dbo].[InvProductPurchase] ([ProductPurchaseId], [FactoryId], [ItemId], [UoMId], [SizeId], [ColorId], [ProductCode], [ProductName], [ProductMainBarcode], [ProductFactoryBarcode], [MinimumStock], [CurrentStock], [NewStock], [PurchaseQuantity], [CostPrice], [WholeSalePrice], [RetailPrice], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (16, 1, 2, 3, 4, 4, N'std', N'tdts', 23423423, 0, 21, 4, 4, 2, 2, 5, 6546, NULL, NULL, NULL, CAST(N'2016-12-31 11:05:34.867' AS DateTime), NULL, NULL)
INSERT [dbo].[InvProductPurchase] ([ProductPurchaseId], [FactoryId], [ItemId], [UoMId], [SizeId], [ColorId], [ProductCode], [ProductName], [ProductMainBarcode], [ProductFactoryBarcode], [MinimumStock], [CurrentStock], [NewStock], [PurchaseQuantity], [CostPrice], [WholeSalePrice], [RetailPrice], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (17, 1, 2, 2, 2, 4, N'1', N'fdgfdg', 32423, 0, 4, 4, 30, 2, 11, 5, 55656, NULL, NULL, NULL, CAST(N'2016-12-31 11:48:22.157' AS DateTime), NULL, NULL)
INSERT [dbo].[InvProductPurchase] ([ProductPurchaseId], [FactoryId], [ItemId], [UoMId], [SizeId], [ColorId], [ProductCode], [ProductName], [ProductMainBarcode], [ProductFactoryBarcode], [MinimumStock], [CurrentStock], [NewStock], [PurchaseQuantity], [CostPrice], [WholeSalePrice], [RetailPrice], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (18, 2, 2, 2, 2, 2, N'cxvcxvcx', N'xcvxcv', 54, 0, 32, 3, 2, 1, 34, 4, 6546, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[InvProductPurchase] ([ProductPurchaseId], [FactoryId], [ItemId], [UoMId], [SizeId], [ColorId], [ProductCode], [ProductName], [ProductMainBarcode], [ProductFactoryBarcode], [MinimumStock], [CurrentStock], [NewStock], [PurchaseQuantity], [CostPrice], [WholeSalePrice], [RetailPrice], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (19, 2, 2, 1, 2, 3, N'sartrat', N'rstvrstrst', 65, 0, 52, 3, 2, 123, 2, 4, 5665, NULL, NULL, NULL, CAST(N'2017-01-01 16:29:58.183' AS DateTime), NULL, NULL)
INSERT [dbo].[InvProductPurchase] ([ProductPurchaseId], [FactoryId], [ItemId], [UoMId], [SizeId], [ColorId], [ProductCode], [ProductName], [ProductMainBarcode], [ProductFactoryBarcode], [MinimumStock], [CurrentStock], [NewStock], [PurchaseQuantity], [CostPrice], [WholeSalePrice], [RetailPrice], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (20, 3, 2, 1, 2, 4, N'srtsrtsr', N'trtsrtsr', 4, 0, 3, 5, 32, 21, 33, 34, 6546, NULL, NULL, NULL, CAST(N'2017-01-01 16:32:04.790' AS DateTime), NULL, NULL)
INSERT [dbo].[InvProductPurchase] ([ProductPurchaseId], [FactoryId], [ItemId], [UoMId], [SizeId], [ColorId], [ProductCode], [ProductName], [ProductMainBarcode], [ProductFactoryBarcode], [MinimumStock], [CurrentStock], [NewStock], [PurchaseQuantity], [CostPrice], [WholeSalePrice], [RetailPrice], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (22, 1, 2, 1, 2, 4, N'213', N'tsrsr', 32324, 0, 6, 20, 30, 3, 3, 32, 150, NULL, NULL, NULL, CAST(N'2017-01-04 10:11:58.527' AS DateTime), NULL, NULL)
INSERT [dbo].[InvProductPurchase] ([ProductPurchaseId], [FactoryId], [ItemId], [UoMId], [SizeId], [ColorId], [ProductCode], [ProductName], [ProductMainBarcode], [ProductFactoryBarcode], [MinimumStock], [CurrentStock], [NewStock], [PurchaseQuantity], [CostPrice], [WholeSalePrice], [RetailPrice], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (23, 1, 2, 1, 2, 4, N'jljgl', N'jgljgl', 234, 0, 3, 45, 3, 21, 4, 43, 565, NULL, NULL, NULL, CAST(N'2017-01-06 10:25:51.580' AS DateTime), NULL, NULL)
INSERT [dbo].[InvProductPurchase] ([ProductPurchaseId], [FactoryId], [ItemId], [UoMId], [SizeId], [ColorId], [ProductCode], [ProductName], [ProductMainBarcode], [ProductFactoryBarcode], [MinimumStock], [CurrentStock], [NewStock], [PurchaseQuantity], [CostPrice], [WholeSalePrice], [RetailPrice], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (2023, 1, 2, 3, 4, 5, N'1', N'HP Probook 4540s', 32, 0, 65, 2, 43, 32, 32, 24, 55500, NULL, NULL, NULL, CAST(N'2017-01-13 11:26:37.217' AS DateTime), NULL, NULL)
INSERT [dbo].[InvProductPurchase] ([ProductPurchaseId], [FactoryId], [ItemId], [UoMId], [SizeId], [ColorId], [ProductCode], [ProductName], [ProductMainBarcode], [ProductFactoryBarcode], [MinimumStock], [CurrentStock], [NewStock], [PurchaseQuantity], [CostPrice], [WholeSalePrice], [RetailPrice], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (2024, 1, 1, 2, 2, 3, N'3432', N'HP Probook 4540s', 4234, 0, 4, 3, 4, 3, 4, 32, NULL, NULL, NULL, NULL, CAST(N'2017-01-13 15:38:46.113' AS DateTime), NULL, NULL)
SET IDENTITY_INSERT [dbo].[InvProductPurchase] OFF
SET IDENTITY_INSERT [dbo].[InvSize] ON 

INSERT [dbo].[InvSize] ([SizeId], [SizeCode], [SizeName], [SizeDetails], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (1, N'1', N'Small', N'Asian Small Size', 1, NULL, NULL, CAST(N'2016-12-12 18:22:12.190' AS DateTime), NULL, NULL)
INSERT [dbo].[InvSize] ([SizeId], [SizeCode], [SizeName], [SizeDetails], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (2, N'2', N'Medium', N'Asian Medium', 1, NULL, NULL, CAST(N'2016-12-12 18:22:39.007' AS DateTime), NULL, NULL)
INSERT [dbo].[InvSize] ([SizeId], [SizeCode], [SizeName], [SizeDetails], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (3, N'3', N'Large', N'Asian Large', 1, NULL, NULL, CAST(N'2016-12-12 18:23:06.740' AS DateTime), NULL, NULL)
SET IDENTITY_INSERT [dbo].[InvSize] OFF
SET IDENTITY_INSERT [dbo].[InvSupplier] ON 

INSERT [dbo].[InvSupplier] ([SupplierId], [SupplierCode], [SupplierName], [SupplierDetails], [SupplierNumber], [AddressCode], [Ex1], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (1, N'1', N'Shirin Export Import Industry Ltd.', N'An International Supplier', 1, N'1', NULL, 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[InvSupplier] ([SupplierId], [SupplierCode], [SupplierName], [SupplierDetails], [SupplierNumber], [AddressCode], [Ex1], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (2, N'2', N'Recant International Ltd.', N'Provide All Kinds of Legal Product ', 2, N'2', NULL, 1, NULL, NULL, CAST(N'2017-02-22 01:07:10.403' AS DateTime), NULL, NULL)
INSERT [dbo].[InvSupplier] ([SupplierId], [SupplierCode], [SupplierName], [SupplierDetails], [SupplierNumber], [AddressCode], [Ex1], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (3, N'3', N'Bhondhon IT Ltd.', N'Provides All IT Products', 3, N'3', NULL, 1, NULL, NULL, CAST(N'2017-02-22 01:10:23.103' AS DateTime), NULL, NULL)
INSERT [dbo].[InvSupplier] ([SupplierId], [SupplierCode], [SupplierName], [SupplierDetails], [SupplierNumber], [AddressCode], [Ex1], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (4, N'4', N'Rose Garments', N'All garments product provider', 4, N'4', NULL, 0, NULL, NULL, CAST(N'2017-02-22 01:15:24.850' AS DateTime), NULL, NULL)
SET IDENTITY_INSERT [dbo].[InvSupplier] OFF
SET IDENTITY_INSERT [dbo].[InvUoM] ON 

INSERT [dbo].[InvUoM] ([UoMId], [UoMCode], [UoMShortName], [UoMDetails], [Ex1], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (1, N'1', N'Pcs', N'Only a Pice', NULL, 1, NULL, NULL, CAST(N'2016-12-12 18:24:21.200' AS DateTime), NULL, NULL)
INSERT [dbo].[InvUoM] ([UoMId], [UoMCode], [UoMShortName], [UoMDetails], [Ex1], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (2, N'2', N'Doz', N'For 1Dozon', NULL, 1, NULL, NULL, CAST(N'2016-12-12 18:24:54.907' AS DateTime), NULL, NULL)
INSERT [dbo].[InvUoM] ([UoMId], [UoMCode], [UoMShortName], [UoMDetails], [Ex1], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (3, N'3', N'KG', N'Kilogram', NULL, 1, NULL, NULL, CAST(N'2016-12-12 18:25:29.387' AS DateTime), NULL, NULL)
SET IDENTITY_INSERT [dbo].[InvUoM] OFF
SET IDENTITY_INSERT [dbo].[InvWarehouse] ON 

INSERT [dbo].[InvWarehouse] ([WarehouseId], [WarehouseCode], [WarehouseName], [WarehouseDetails], [WarehouseNumber], [AddressCode], [Ex1], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (1, N'101', N'Dhaka Warehouse', N'Gulshan,Dhaka', 1, N'1200', NULL, 1, NULL, NULL, CAST(N'2017-01-31 11:13:46.143' AS DateTime), NULL, NULL)
INSERT [dbo].[InvWarehouse] ([WarehouseId], [WarehouseCode], [WarehouseName], [WarehouseDetails], [WarehouseNumber], [AddressCode], [Ex1], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (2, N'102', N'Mirpur Warehouse', N'Mirpur,Dhaka', 2, N'1200', NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[InvWarehouse] ([WarehouseId], [WarehouseCode], [WarehouseName], [WarehouseDetails], [WarehouseNumber], [AddressCode], [Ex1], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (3, N'103', N'Gazipur Warehouse', N'Tongi, Gazipur', 3, N'1200', NULL, 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[InvWarehouse] ([WarehouseId], [WarehouseCode], [WarehouseName], [WarehouseDetails], [WarehouseNumber], [AddressCode], [Ex1], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (4, N'104', N'Chittagong Warehouse', N'Chittagong', 4, N'1200', NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[InvWarehouse] ([WarehouseId], [WarehouseCode], [WarehouseName], [WarehouseDetails], [WarehouseNumber], [AddressCode], [Ex1], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (5, N'105', N'Mymensingh Warehouse', N'Mymensingh, Dhaka', 5, N'1200', NULL, 0, NULL, NULL, CAST(N'2017-02-08 15:16:26.017' AS DateTime), NULL, NULL)
SET IDENTITY_INSERT [dbo].[InvWarehouse] OFF
SET IDENTITY_INSERT [dbo].[InvWarehousePODetail] ON 

INSERT [dbo].[InvWarehousePODetail] ([WarehousePODetailsId], [WarehousePOMasterId], [ProductId], [ProductQuantity], [Status], [Note], [IsEdited], [IsReturned], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (1, 1, 1004, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-03-14 11:03:23.647' AS DateTime), NULL, NULL)
INSERT [dbo].[InvWarehousePODetail] ([WarehousePODetailsId], [WarehousePOMasterId], [ProductId], [ProductQuantity], [Status], [Note], [IsEdited], [IsReturned], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (2, 1, 1005, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-03-14 11:03:23.647' AS DateTime), NULL, NULL)
INSERT [dbo].[InvWarehousePODetail] ([WarehousePODetailsId], [WarehousePOMasterId], [ProductId], [ProductQuantity], [Status], [Note], [IsEdited], [IsReturned], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (3, 1, 1006, 14, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-03-14 11:03:23.647' AS DateTime), NULL, NULL)
INSERT [dbo].[InvWarehousePODetail] ([WarehousePODetailsId], [WarehousePOMasterId], [ProductId], [ProductQuantity], [Status], [Note], [IsEdited], [IsReturned], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (4, 2, 1006, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-03-14 15:54:47.807' AS DateTime), NULL, NULL)
INSERT [dbo].[InvWarehousePODetail] ([WarehousePODetailsId], [WarehousePOMasterId], [ProductId], [ProductQuantity], [Status], [Note], [IsEdited], [IsReturned], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (5, 2, 1005, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-03-14 15:54:47.807' AS DateTime), NULL, NULL)
INSERT [dbo].[InvWarehousePODetail] ([WarehousePODetailsId], [WarehousePOMasterId], [ProductId], [ProductQuantity], [Status], [Note], [IsEdited], [IsReturned], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (6, 3, 1004, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-03-14 15:06:21.483' AS DateTime), NULL, NULL)
INSERT [dbo].[InvWarehousePODetail] ([WarehousePODetailsId], [WarehousePOMasterId], [ProductId], [ProductQuantity], [Status], [Note], [IsEdited], [IsReturned], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (7, 3, 1005, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-03-14 15:06:21.483' AS DateTime), NULL, NULL)
INSERT [dbo].[InvWarehousePODetail] ([WarehousePODetailsId], [WarehousePOMasterId], [ProductId], [ProductQuantity], [Status], [Note], [IsEdited], [IsReturned], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (8, 4, 1005, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-03-14 14:50:07.443' AS DateTime), NULL, NULL)
INSERT [dbo].[InvWarehousePODetail] ([WarehousePODetailsId], [WarehousePOMasterId], [ProductId], [ProductQuantity], [Status], [Note], [IsEdited], [IsReturned], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (9, 4, 1006, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-03-14 14:50:07.443' AS DateTime), NULL, NULL)
INSERT [dbo].[InvWarehousePODetail] ([WarehousePODetailsId], [WarehousePOMasterId], [ProductId], [ProductQuantity], [Status], [Note], [IsEdited], [IsReturned], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (10, 5, 1004, 11, NULL, NULL, NULL, NULL, 0, NULL, NULL, CAST(N'2017-02-23 15:35:18.200' AS DateTime), NULL, CAST(N'2017-02-27 14:31:10.243' AS DateTime))
INSERT [dbo].[InvWarehousePODetail] ([WarehousePODetailsId], [WarehousePOMasterId], [ProductId], [ProductQuantity], [Status], [Note], [IsEdited], [IsReturned], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (11, 5, 1005, 22, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-02-23 15:35:18.200' AS DateTime), NULL, NULL)
INSERT [dbo].[InvWarehousePODetail] ([WarehousePODetailsId], [WarehousePOMasterId], [ProductId], [ProductQuantity], [Status], [Note], [IsEdited], [IsReturned], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (12, 5, 1006, 33, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-02-23 15:35:18.200' AS DateTime), NULL, NULL)
INSERT [dbo].[InvWarehousePODetail] ([WarehousePODetailsId], [WarehousePOMasterId], [ProductId], [ProductQuantity], [Status], [Note], [IsEdited], [IsReturned], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (13, 6, 1005, 4, NULL, NULL, 0, 0, 1, 0, NULL, CAST(N'2017-04-18 21:09:43.837' AS DateTime), NULL, NULL)
INSERT [dbo].[InvWarehousePODetail] ([WarehousePODetailsId], [WarehousePOMasterId], [ProductId], [ProductQuantity], [Status], [Note], [IsEdited], [IsReturned], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (14, 6, 1004, 5, NULL, NULL, 0, 0, 1, 0, NULL, CAST(N'2017-04-18 21:09:43.837' AS DateTime), NULL, NULL)
SET IDENTITY_INSERT [dbo].[InvWarehousePODetail] OFF
SET IDENTITY_INSERT [dbo].[InvWarehousePOInvoiceDetail] ON 

INSERT [dbo].[InvWarehousePOInvoiceDetail] ([WarehousePOInvoiceDetailsId], [WarehousePOInvoiceMasterId], [Original_WarehousePODetailsId], [ProductId], [ProductQuantity], [Status], [Note], [IsEdited], [IsReturned], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (1, 1, 13, 1005, 4, 0, NULL, 0, 0, 1, 0, NULL, CAST(N'2017-05-04 21:26:20.737' AS DateTime), NULL, NULL)
INSERT [dbo].[InvWarehousePOInvoiceDetail] ([WarehousePOInvoiceDetailsId], [WarehousePOInvoiceMasterId], [Original_WarehousePODetailsId], [ProductId], [ProductQuantity], [Status], [Note], [IsEdited], [IsReturned], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (2, 1, 14, 1004, 5, 0, NULL, 0, 0, 1, 0, NULL, CAST(N'2017-05-04 21:26:20.737' AS DateTime), NULL, NULL)
SET IDENTITY_INSERT [dbo].[InvWarehousePOInvoiceDetail] OFF
SET IDENTITY_INSERT [dbo].[InvWarehousePOInvoiceMaster] ON 

INSERT [dbo].[InvWarehousePOInvoiceMaster] ([WarehousePOInvoiceMasterId], [Original_WarehousePOMasterId], [WarehousePOInvoiceNo], [SupplierId], [WarehouseId], [UniqueId], [POReference], [Status], [Note], [IsEdited], [IsReturned], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (1, 6, N'1705040001', NULL, 1, NULL, NULL, 0, NULL, 0, 0, 1, 0, NULL, CAST(N'2017-05-04 21:26:20.737' AS DateTime), NULL, NULL)
SET IDENTITY_INSERT [dbo].[InvWarehousePOInvoiceMaster] OFF
SET IDENTITY_INSERT [dbo].[InvWarehousePOItemReceived] ON 

INSERT [dbo].[InvWarehousePOItemReceived] ([WarehousePOItemReceivedId], [WarehousePOMasterId], [WarehousePODetailsId], [ItemReceivedQuantity], [Note], [Status], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (1, 1, 1, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[InvWarehousePOItemReceived] ([WarehousePOItemReceivedId], [WarehousePOMasterId], [WarehousePODetailsId], [ItemReceivedQuantity], [Note], [Status], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (2, 1, 2, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[InvWarehousePOItemReceived] ([WarehousePOItemReceivedId], [WarehousePOMasterId], [WarehousePODetailsId], [ItemReceivedQuantity], [Note], [Status], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (3, 1, 3, 10, NULL, NULL, 0, NULL, NULL, NULL, NULL, CAST(N'2017-03-02 09:54:20.747' AS DateTime))
INSERT [dbo].[InvWarehousePOItemReceived] ([WarehousePOItemReceivedId], [WarehousePOMasterId], [WarehousePODetailsId], [ItemReceivedQuantity], [Note], [Status], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (4, 2, 4, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[InvWarehousePOItemReceived] ([WarehousePOItemReceivedId], [WarehousePOMasterId], [WarehousePODetailsId], [ItemReceivedQuantity], [Note], [Status], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (5, 2, 5, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[InvWarehousePOItemReceived] ([WarehousePOItemReceivedId], [WarehousePOMasterId], [WarehousePODetailsId], [ItemReceivedQuantity], [Note], [Status], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (6, 3, 6, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, CAST(N'2017-03-02 09:42:52.330' AS DateTime))
INSERT [dbo].[InvWarehousePOItemReceived] ([WarehousePOItemReceivedId], [WarehousePOMasterId], [WarehousePODetailsId], [ItemReceivedQuantity], [Note], [Status], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (7, 3, 7, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[InvWarehousePOItemReceived] ([WarehousePOItemReceivedId], [WarehousePOMasterId], [WarehousePODetailsId], [ItemReceivedQuantity], [Note], [Status], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (8, 4, 8, 3, NULL, NULL, 0, NULL, NULL, NULL, NULL, CAST(N'2017-03-17 09:54:34.147' AS DateTime))
INSERT [dbo].[InvWarehousePOItemReceived] ([WarehousePOItemReceivedId], [WarehousePOMasterId], [WarehousePODetailsId], [ItemReceivedQuantity], [Note], [Status], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (9, 5, 9, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[InvWarehousePOItemReceived] ([WarehousePOItemReceivedId], [WarehousePOMasterId], [WarehousePODetailsId], [ItemReceivedQuantity], [Note], [Status], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (10, 5, 10, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[InvWarehousePOItemReceived] ([WarehousePOItemReceivedId], [WarehousePOMasterId], [WarehousePODetailsId], [ItemReceivedQuantity], [Note], [Status], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (11, 5, 11, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[InvWarehousePOItemReceived] ([WarehousePOItemReceivedId], [WarehousePOMasterId], [WarehousePODetailsId], [ItemReceivedQuantity], [Note], [Status], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (12, 5, 12, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[InvWarehousePOItemReceived] ([WarehousePOItemReceivedId], [WarehousePOMasterId], [WarehousePODetailsId], [ItemReceivedQuantity], [Note], [Status], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (13, 6, 13, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[InvWarehousePOItemReceived] ([WarehousePOItemReceivedId], [WarehousePOMasterId], [WarehousePODetailsId], [ItemReceivedQuantity], [Note], [Status], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (14, 6, 14, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[InvWarehousePOItemReceived] OFF
SET IDENTITY_INSERT [dbo].[InvWarehousePOMaster] ON 

INSERT [dbo].[InvWarehousePOMaster] ([WarehousePOMasterId], [SupplierId], [WarehouseId], [UniqueId], [POReference], [Status], [Note], [IsEdited], [IsReturned], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (1, 0, 1, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-03-14 11:03:23.647' AS DateTime), NULL, NULL)
INSERT [dbo].[InvWarehousePOMaster] ([WarehousePOMasterId], [SupplierId], [WarehouseId], [UniqueId], [POReference], [Status], [Note], [IsEdited], [IsReturned], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (2, 2, 1, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-03-14 15:54:47.807' AS DateTime), NULL, NULL)
INSERT [dbo].[InvWarehousePOMaster] ([WarehousePOMasterId], [SupplierId], [WarehouseId], [UniqueId], [POReference], [Status], [Note], [IsEdited], [IsReturned], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (3, 0, 1, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-03-14 15:06:21.483' AS DateTime), NULL, NULL)
INSERT [dbo].[InvWarehousePOMaster] ([WarehousePOMasterId], [SupplierId], [WarehouseId], [UniqueId], [POReference], [Status], [Note], [IsEdited], [IsReturned], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (4, 4, 1, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-03-14 14:50:07.443' AS DateTime), NULL, NULL)
INSERT [dbo].[InvWarehousePOMaster] ([WarehousePOMasterId], [SupplierId], [WarehouseId], [UniqueId], [POReference], [Status], [Note], [IsEdited], [IsReturned], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (5, 2, 2, 0, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-02-23 15:35:18.200' AS DateTime), NULL, CAST(N'2017-03-09 19:04:38.067' AS DateTime))
INSERT [dbo].[InvWarehousePOMaster] ([WarehousePOMasterId], [SupplierId], [WarehouseId], [UniqueId], [POReference], [Status], [Note], [IsEdited], [IsReturned], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (6, 1, 1, 0, NULL, 4, NULL, 0, 0, 1, 0, NULL, CAST(N'2017-04-18 21:09:43.837' AS DateTime), NULL, CAST(N'2017-05-04 21:26:20.737' AS DateTime))
SET IDENTITY_INSERT [dbo].[InvWarehousePOMaster] OFF
SET IDENTITY_INSERT [dbo].[InvWarehouseStock] ON 

INSERT [dbo].[InvWarehouseStock] ([WarehouseStockId], [WarehouseId], [OutletId], [ProductId], [WarehouseStockQuantity], [AdjustedReason], [Note], [Status], [InOut], [IsActive], [IsChanged], [IsDeleted], [IsEdited], [IsReceived], [IsReturned], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (2, 1, NULL, 1009, 2, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-03-16 21:17:53.477' AS DateTime), NULL, NULL)
INSERT [dbo].[InvWarehouseStock] ([WarehouseStockId], [WarehouseId], [OutletId], [ProductId], [WarehouseStockQuantity], [AdjustedReason], [Note], [Status], [InOut], [IsActive], [IsChanged], [IsDeleted], [IsEdited], [IsReceived], [IsReturned], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (3, 1, NULL, 1008, 3, NULL, NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-03-16 21:18:00.483' AS DateTime), NULL, NULL)
INSERT [dbo].[InvWarehouseStock] ([WarehouseStockId], [WarehouseId], [OutletId], [ProductId], [WarehouseStockQuantity], [AdjustedReason], [Note], [Status], [InOut], [IsActive], [IsChanged], [IsDeleted], [IsEdited], [IsReceived], [IsReturned], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (4, 1, NULL, 1004, 1, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-03-16 21:20:38.827' AS DateTime), NULL, NULL)
INSERT [dbo].[InvWarehouseStock] ([WarehouseStockId], [WarehouseId], [OutletId], [ProductId], [WarehouseStockQuantity], [AdjustedReason], [Note], [Status], [InOut], [IsActive], [IsChanged], [IsDeleted], [IsEdited], [IsReceived], [IsReturned], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (5, 1, NULL, 1005, 2, NULL, NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-03-16 21:20:38.830' AS DateTime), NULL, NULL)
INSERT [dbo].[InvWarehouseStock] ([WarehouseStockId], [WarehouseId], [OutletId], [ProductId], [WarehouseStockQuantity], [AdjustedReason], [Note], [Status], [InOut], [IsActive], [IsChanged], [IsDeleted], [IsEdited], [IsReceived], [IsReturned], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (6, 1, NULL, 1006, 3, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-03-16 21:20:38.833' AS DateTime), NULL, NULL)
INSERT [dbo].[InvWarehouseStock] ([WarehouseStockId], [WarehouseId], [OutletId], [ProductId], [WarehouseStockQuantity], [AdjustedReason], [Note], [Status], [InOut], [IsActive], [IsChanged], [IsDeleted], [IsEdited], [IsReceived], [IsReturned], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (7, 1, NULL, 1004, 1, NULL, NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-03-29 12:57:10.653' AS DateTime), NULL, NULL)
INSERT [dbo].[InvWarehouseStock] ([WarehouseStockId], [WarehouseId], [OutletId], [ProductId], [WarehouseStockQuantity], [AdjustedReason], [Note], [Status], [InOut], [IsActive], [IsChanged], [IsDeleted], [IsEdited], [IsReceived], [IsReturned], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (8, 1, NULL, 1005, 2, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-03-29 12:57:10.680' AS DateTime), NULL, NULL)
INSERT [dbo].[InvWarehouseStock] ([WarehouseStockId], [WarehouseId], [OutletId], [ProductId], [WarehouseStockQuantity], [AdjustedReason], [Note], [Status], [InOut], [IsActive], [IsChanged], [IsDeleted], [IsEdited], [IsReceived], [IsReturned], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (9, 1, NULL, 1008, 3, NULL, NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-03-29 12:57:10.683' AS DateTime), NULL, NULL)
INSERT [dbo].[InvWarehouseStock] ([WarehouseStockId], [WarehouseId], [OutletId], [ProductId], [WarehouseStockQuantity], [AdjustedReason], [Note], [Status], [InOut], [IsActive], [IsChanged], [IsDeleted], [IsEdited], [IsReceived], [IsReturned], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (10, NULL, 2, 1004, 6, NULL, N'ReturnReceived', NULL, 1, 1, NULL, NULL, NULL, 1, NULL, NULL, CAST(N'2017-04-18 13:33:02.063' AS DateTime), NULL, NULL)
INSERT [dbo].[InvWarehouseStock] ([WarehouseStockId], [WarehouseId], [OutletId], [ProductId], [WarehouseStockQuantity], [AdjustedReason], [Note], [Status], [InOut], [IsActive], [IsChanged], [IsDeleted], [IsEdited], [IsReceived], [IsReturned], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (11, NULL, 2, 1005, 25, NULL, N'ReturnReceived', NULL, 1, 1, NULL, NULL, NULL, 1, NULL, NULL, CAST(N'2017-04-18 13:33:07.247' AS DateTime), NULL, NULL)
INSERT [dbo].[InvWarehouseStock] ([WarehouseStockId], [WarehouseId], [OutletId], [ProductId], [WarehouseStockQuantity], [AdjustedReason], [Note], [Status], [InOut], [IsActive], [IsChanged], [IsDeleted], [IsEdited], [IsReceived], [IsReturned], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (1010, 1, NULL, 1004, 5, NULL, N'SentToOutlet', NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-04-21 09:53:10.260' AS DateTime), NULL, NULL)
INSERT [dbo].[InvWarehouseStock] ([WarehouseStockId], [WarehouseId], [OutletId], [ProductId], [WarehouseStockQuantity], [AdjustedReason], [Note], [Status], [InOut], [IsActive], [IsChanged], [IsDeleted], [IsEdited], [IsReceived], [IsReturned], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (1011, 1, NULL, 1005, 5, NULL, N'SentToOutlet', NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-04-21 09:53:10.307' AS DateTime), NULL, NULL)
INSERT [dbo].[InvWarehouseStock] ([WarehouseStockId], [WarehouseId], [OutletId], [ProductId], [WarehouseStockQuantity], [AdjustedReason], [Note], [Status], [InOut], [IsActive], [IsChanged], [IsDeleted], [IsEdited], [IsReceived], [IsReturned], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (1012, 1, NULL, 1006, 5, NULL, N'SentToOutlet', NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-04-21 09:53:10.307' AS DateTime), NULL, NULL)
INSERT [dbo].[InvWarehouseStock] ([WarehouseStockId], [WarehouseId], [OutletId], [ProductId], [WarehouseStockQuantity], [AdjustedReason], [Note], [Status], [InOut], [IsActive], [IsChanged], [IsDeleted], [IsEdited], [IsReceived], [IsReturned], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (1013, 1, NULL, 1009, 5, NULL, N'SentToOutlet', NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-04-25 15:21:00.063' AS DateTime), NULL, NULL)
INSERT [dbo].[InvWarehouseStock] ([WarehouseStockId], [WarehouseId], [OutletId], [ProductId], [WarehouseStockQuantity], [AdjustedReason], [Note], [Status], [InOut], [IsActive], [IsChanged], [IsDeleted], [IsEdited], [IsReceived], [IsReturned], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (1014, 1, NULL, 1008, 5, NULL, N'SentToOutlet', NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-04-25 15:21:00.283' AS DateTime), NULL, NULL)
INSERT [dbo].[InvWarehouseStock] ([WarehouseStockId], [WarehouseId], [OutletId], [ProductId], [WarehouseStockQuantity], [AdjustedReason], [Note], [Status], [InOut], [IsActive], [IsChanged], [IsDeleted], [IsEdited], [IsReceived], [IsReturned], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (1015, 1, NULL, 1004, 1, NULL, N'SentToOutlet', NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-04-25 15:21:07.193' AS DateTime), NULL, NULL)
INSERT [dbo].[InvWarehouseStock] ([WarehouseStockId], [WarehouseId], [OutletId], [ProductId], [WarehouseStockQuantity], [AdjustedReason], [Note], [Status], [InOut], [IsActive], [IsChanged], [IsDeleted], [IsEdited], [IsReceived], [IsReturned], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (1016, 1, NULL, 1005, 1, NULL, N'SentToOutlet', NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-04-25 15:21:07.197' AS DateTime), NULL, NULL)
INSERT [dbo].[InvWarehouseStock] ([WarehouseStockId], [WarehouseId], [OutletId], [ProductId], [WarehouseStockQuantity], [AdjustedReason], [Note], [Status], [InOut], [IsActive], [IsChanged], [IsDeleted], [IsEdited], [IsReceived], [IsReturned], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (1017, 1, NULL, 1007, 1, NULL, N'SentToOutlet', NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-04-25 15:21:07.200' AS DateTime), NULL, NULL)
INSERT [dbo].[InvWarehouseStock] ([WarehouseStockId], [WarehouseId], [OutletId], [ProductId], [WarehouseStockQuantity], [AdjustedReason], [Note], [Status], [InOut], [IsActive], [IsChanged], [IsDeleted], [IsEdited], [IsReceived], [IsReturned], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (1018, 1, NULL, 1004, 12, NULL, N'SentToOutlet', NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-04-25 15:21:53.387' AS DateTime), NULL, NULL)
INSERT [dbo].[InvWarehouseStock] ([WarehouseStockId], [WarehouseId], [OutletId], [ProductId], [WarehouseStockQuantity], [AdjustedReason], [Note], [Status], [InOut], [IsActive], [IsChanged], [IsDeleted], [IsEdited], [IsReceived], [IsReturned], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (1019, 1, NULL, 1005, 15, NULL, N'SentToOutlet', NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-04-25 15:21:53.390' AS DateTime), NULL, NULL)
INSERT [dbo].[InvWarehouseStock] ([WarehouseStockId], [WarehouseId], [OutletId], [ProductId], [WarehouseStockQuantity], [AdjustedReason], [Note], [Status], [InOut], [IsActive], [IsChanged], [IsDeleted], [IsEdited], [IsReceived], [IsReturned], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (1020, 1, NULL, 1005, 1, NULL, N'SentToOutlet', NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-04-25 15:21:55.673' AS DateTime), NULL, NULL)
INSERT [dbo].[InvWarehouseStock] ([WarehouseStockId], [WarehouseId], [OutletId], [ProductId], [WarehouseStockQuantity], [AdjustedReason], [Note], [Status], [InOut], [IsActive], [IsChanged], [IsDeleted], [IsEdited], [IsReceived], [IsReturned], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (1021, 1, NULL, 1006, 3, NULL, N'SentToOutlet', NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-04-25 15:21:55.680' AS DateTime), NULL, NULL)
INSERT [dbo].[InvWarehouseStock] ([WarehouseStockId], [WarehouseId], [OutletId], [ProductId], [WarehouseStockQuantity], [AdjustedReason], [Note], [Status], [InOut], [IsActive], [IsChanged], [IsDeleted], [IsEdited], [IsReceived], [IsReturned], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (1022, 1, NULL, 1004, 8, NULL, N'SentToOutlet', NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-04-25 15:21:57.527' AS DateTime), NULL, NULL)
INSERT [dbo].[InvWarehouseStock] ([WarehouseStockId], [WarehouseId], [OutletId], [ProductId], [WarehouseStockQuantity], [AdjustedReason], [Note], [Status], [InOut], [IsActive], [IsChanged], [IsDeleted], [IsEdited], [IsReceived], [IsReturned], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (1023, 1, NULL, 1005, 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-05-04 21:27:04.227' AS DateTime), NULL, NULL)
INSERT [dbo].[InvWarehouseStock] ([WarehouseStockId], [WarehouseId], [OutletId], [ProductId], [WarehouseStockQuantity], [AdjustedReason], [Note], [Status], [InOut], [IsActive], [IsChanged], [IsDeleted], [IsEdited], [IsReceived], [IsReturned], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (1024, 1, NULL, 1004, 5, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-05-04 21:27:22.487' AS DateTime), NULL, NULL)
SET IDENTITY_INSERT [dbo].[InvWarehouseStock] OFF
SET IDENTITY_INSERT [dbo].[TestStudent] ON 

INSERT [dbo].[TestStudent] ([StudentId], [StudentName], [StudentPhone], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (1, N'Kamal Ahmed', N'0167771387409', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TestStudent] ([StudentId], [StudentName], [StudentPhone], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (2, N'Jamal Ahmed', N'01665756756757', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TestStudent] ([StudentId], [StudentName], [StudentPhone], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (4, N'Karim', N'018098098', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TestStudent] ([StudentId], [StudentName], [StudentPhone], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (5, N'Jahingir', N'0171878989889', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TestStudent] ([StudentId], [StudentName], [StudentPhone], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (6, N'Shimul', N'0177423894', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TestStudent] ([StudentId], [StudentName], [StudentPhone], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (7, N'Joshim ', N'015556787898', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TestStudent] ([StudentId], [StudentName], [StudentPhone], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (8, N'pwfpw', N'wqfqwf', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TestStudent] ([StudentId], [StudentName], [StudentPhone], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (9, N'3245325', N'pfptrstsrt', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TestStudent] ([StudentId], [StudentName], [StudentPhone], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (10, N'9', N'9', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TestStudent] ([StudentId], [StudentName], [StudentPhone], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (11, N'10', N'1010', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TestStudent] ([StudentId], [StudentName], [StudentPhone], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (12, N'10', N'1010', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TestStudent] ([StudentId], [StudentName], [StudentPhone], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (13, N'10', N'1010', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TestStudent] ([StudentId], [StudentName], [StudentPhone], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (14, N'10', N'1010', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TestStudent] ([StudentId], [StudentName], [StudentPhone], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (15, N'10', N'1010', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TestStudent] ([StudentId], [StudentName], [StudentPhone], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (16, N'10', N'1010', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TestStudent] ([StudentId], [StudentName], [StudentPhone], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (17, N'10', N'1010', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TestStudent] ([StudentId], [StudentName], [StudentPhone], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (18, N'10', N'1010', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TestStudent] ([StudentId], [StudentName], [StudentPhone], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (19, N'10', N'1010', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TestStudent] ([StudentId], [StudentName], [StudentPhone], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (20, N'11', N'11', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TestStudent] ([StudentId], [StudentName], [StudentPhone], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (1005, N'C', N'C', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TestStudent] ([StudentId], [StudentName], [StudentPhone], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (1006, N'Johirul Islam', N'011199798798', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TestStudent] ([StudentId], [StudentName], [StudentPhone], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (1007, N'rstrst', N'rstrst', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TestStudent] ([StudentId], [StudentName], [StudentPhone], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (1008, N'fwpwfpt', N'rstsrtdrsd', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TestStudent] ([StudentId], [StudentName], [StudentPhone], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (1009, N'wqfq', N'q', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TestStudent] ([StudentId], [StudentName], [StudentPhone], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (1010, N'999999999999', N'99999999', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TestStudent] ([StudentId], [StudentName], [StudentPhone], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (1011, N'Kobir ', N'02878l', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TestStudent] ([StudentId], [StudentName], [StudentPhone], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (1012, N'rasars', N'4324', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TestStudent] ([StudentId], [StudentName], [StudentPhone], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (1013, N'pgfpgp', N'gpfgpf', NULL, NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[TestStudent] OFF
SET IDENTITY_INSERT [dbo].[TestStudentAddress] ON 

INSERT [dbo].[TestStudentAddress] ([StudentAddressId], [StudentId], [Address], [Country], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (1, 1, N' Mirpur,Dhaka', N'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TestStudentAddress] ([StudentAddressId], [StudentId], [Address], [Country], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (2, 2, N' Mirpur,Dhaka222', N'Bangladesh222', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TestStudentAddress] ([StudentAddressId], [StudentId], [Address], [Country], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (3, 4, N'Dhaka', N'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TestStudentAddress] ([StudentAddressId], [StudentId], [Address], [Country], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (4, 5, N'Rampura', N'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TestStudentAddress] ([StudentAddressId], [StudentId], [Address], [Country], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (5, 6, N'Malibug', N'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TestStudentAddress] ([StudentAddressId], [StudentId], [Address], [Country], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (6, 7, N'Kolabagun', N'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TestStudentAddress] ([StudentAddressId], [StudentId], [Address], [Country], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (7, 8, N'fqwf', N'qfqf', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TestStudentAddress] ([StudentAddressId], [StudentId], [Address], [Country], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (8, 9, N'rstrs', N'ctrxxcv', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TestStudentAddress] ([StudentAddressId], [StudentId], [Address], [Country], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (9, 10, N'9', N'9', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TestStudentAddress] ([StudentAddressId], [StudentId], [Address], [Country], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (10, 11, N'10', N'10', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TestStudentAddress] ([StudentAddressId], [StudentId], [Address], [Country], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (11, 12, N'10', N'10', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TestStudentAddress] ([StudentAddressId], [StudentId], [Address], [Country], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (12, 14, N'10', N'10', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TestStudentAddress] ([StudentAddressId], [StudentId], [Address], [Country], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (13, 13, N'10', N'10', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TestStudentAddress] ([StudentAddressId], [StudentId], [Address], [Country], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (14, 15, N'10', N'10', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TestStudentAddress] ([StudentAddressId], [StudentId], [Address], [Country], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (15, 16, N'10', N'10', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TestStudentAddress] ([StudentAddressId], [StudentId], [Address], [Country], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (16, 18, N'10', N'10', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TestStudentAddress] ([StudentAddressId], [StudentId], [Address], [Country], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (17, 17, N'10', N'10', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TestStudentAddress] ([StudentAddressId], [StudentId], [Address], [Country], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (18, 19, N'10', N'10', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TestStudentAddress] ([StudentAddressId], [StudentId], [Address], [Country], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (19, 20, N'11', N'11', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TestStudentAddress] ([StudentAddressId], [StudentId], [Address], [Country], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (1004, 1005, N'C', N'C', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TestStudentAddress] ([StudentAddressId], [StudentId], [Address], [Country], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (1005, 1006, N'Kawranbazar', N'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TestStudentAddress] ([StudentAddressId], [StudentId], [Address], [Country], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (1006, 1007, N'rstsvbckbv', N'kvkb', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TestStudentAddress] ([StudentAddressId], [StudentId], [Address], [Country], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (1007, 1008, N'stradtshd', N'nhsdt', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TestStudentAddress] ([StudentAddressId], [StudentId], [Address], [Country], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (1008, 1009, N'wfwqfwfwq', N'fwqf', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TestStudentAddress] ([StudentAddressId], [StudentId], [Address], [Country], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (1009, 1010, N'999999999999', N'99999999999', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TestStudentAddress] ([StudentAddressId], [StudentId], [Address], [Country], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (1010, 1011, N'Dhaka,Kakrail', N'Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TestStudentAddress] ([StudentAddressId], [StudentId], [Address], [Country], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (1011, 1012, N'324wpftfw', N'tdstdstdt', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TestStudentAddress] ([StudentAddressId], [StudentId], [Address], [Country], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (1012, 1013, N'ljgljglj', N'jgljgl', NULL, NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[TestStudentAddress] OFF
SET IDENTITY_INSERT [dbo].[TestStudentHistory] ON 

INSERT [dbo].[TestStudentHistory] ([HistoryId], [StudentId], [HistoryTitle], [HistoryDetials], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (1, 1, N'Unknown', N'Un', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TestStudentHistory] ([HistoryId], [StudentId], [HistoryTitle], [HistoryDetials], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (2, 2, N'own2222', N'Un22', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TestStudentHistory] ([HistoryId], [StudentId], [HistoryTitle], [HistoryDetials], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (3, 4, N'Un3434', N'U890889789879889', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TestStudentHistory] ([HistoryId], [StudentId], [HistoryTitle], [HistoryDetials], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (4, 5, N'Some of Jahangir Alam', N'BSC in CSE, Job at Digisyss Technology Ltd.', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TestStudentHistory] ([HistoryId], [StudentId], [HistoryTitle], [HistoryDetials], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (5, 6, N'Vendor Certified', N'Oracle vendor Certified', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TestStudentHistory] ([HistoryId], [StudentId], [HistoryTitle], [HistoryDetials], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (6, 7, NULL, N'BSC In CSE form State University of Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TestStudentHistory] ([HistoryId], [StudentId], [HistoryTitle], [HistoryDetials], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (7, 8, NULL, N'qwf', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TestStudentHistory] ([HistoryId], [StudentId], [HistoryTitle], [HistoryDetials], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (8, 9, NULL, N'jglg', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TestStudentHistory] ([HistoryId], [StudentId], [HistoryTitle], [HistoryDetials], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (9, 10, NULL, N'9', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TestStudentHistory] ([HistoryId], [StudentId], [HistoryTitle], [HistoryDetials], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (10, 12, NULL, N'10', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TestStudentHistory] ([HistoryId], [StudentId], [HistoryTitle], [HistoryDetials], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (11, 11, NULL, N'10', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TestStudentHistory] ([HistoryId], [StudentId], [HistoryTitle], [HistoryDetials], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (12, 14, NULL, N'10', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TestStudentHistory] ([HistoryId], [StudentId], [HistoryTitle], [HistoryDetials], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (13, 15, NULL, N'10', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TestStudentHistory] ([HistoryId], [StudentId], [HistoryTitle], [HistoryDetials], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (14, 13, NULL, N'10', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TestStudentHistory] ([HistoryId], [StudentId], [HistoryTitle], [HistoryDetials], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (15, 16, NULL, N'10', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TestStudentHistory] ([HistoryId], [StudentId], [HistoryTitle], [HistoryDetials], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (16, 18, NULL, N'10', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TestStudentHistory] ([HistoryId], [StudentId], [HistoryTitle], [HistoryDetials], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (17, 17, NULL, N'10', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TestStudentHistory] ([HistoryId], [StudentId], [HistoryTitle], [HistoryDetials], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (18, 19, NULL, N'10', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TestStudentHistory] ([HistoryId], [StudentId], [HistoryTitle], [HistoryDetials], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (19, 20, NULL, N'11', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TestStudentHistory] ([HistoryId], [StudentId], [HistoryTitle], [HistoryDetials], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (1004, 1005, NULL, N'C', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TestStudentHistory] ([HistoryId], [StudentId], [HistoryTitle], [HistoryDetials], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (1005, 1006, NULL, N'Dot Net, Java', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TestStudentHistory] ([HistoryId], [StudentId], [HistoryTitle], [HistoryDetials], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (1006, 1007, NULL, N'bv mkb,km,', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TestStudentHistory] ([HistoryId], [StudentId], [HistoryTitle], [HistoryDetials], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (1007, 1008, NULL, N'dstdstdv', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TestStudentHistory] ([HistoryId], [StudentId], [HistoryTitle], [HistoryDetials], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (1008, 1009, NULL, N'wqf', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TestStudentHistory] ([HistoryId], [StudentId], [HistoryTitle], [HistoryDetials], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (1009, 1010, NULL, N'99999999999', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TestStudentHistory] ([HistoryId], [StudentId], [HistoryTitle], [HistoryDetials], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (1010, 1011, NULL, N'Kakrial,Dhaka', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TestStudentHistory] ([HistoryId], [StudentId], [HistoryTitle], [HistoryDetials], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (1011, 1012, NULL, N'dthdthdt', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TestStudentHistory] ([HistoryId], [StudentId], [HistoryTitle], [HistoryDetials], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (1012, 1013, NULL, N'julju', NULL, NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[TestStudentHistory] OFF
/****** Object:  Index [IX_InvGroup]    Script Date: 5/4/2017 9:42:37 PM ******/
CREATE NONCLUSTERED INDEX [IX_InvGroup] ON [dbo].[InvGroup]
(
	[GroupId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_InvItem]    Script Date: 5/4/2017 9:42:37 PM ******/
CREATE NONCLUSTERED INDEX [IX_InvItem] ON [dbo].[InvItem]
(
	[ItemId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[spSaleInvoice]    Script Date: 5/4/2017 9:42:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spSaleInvoice]
@OutletSaleInvoiceNo AS Int

AS
BEGIN

--  exec spSaleInvoice 1704260001 exec spSaleInvoice 1704260001   ----To Debugging in SQL just select  "exec spSaleInvoice 1704260001"    then press Execute to working or not below code      

SELECT
ISNULL(invoiceMaster.OutletInvoiceMasterId,0)as OutletInvoiceMasterId,
ISNULL(invoiceMaster.OutletSaleInvoiceNo,0)as 'Sale Invoice No',
ISNULL(invoiceMaster.OutletId,0)as 'OutletId',
ISNULL(invoiceMaster.SalePersonId,0)as SalePersonId,
ISNULL(invoiceMaster.CustomerId,0)as CustomerId,
ISNULL(invoiceMaster.PaymentMode,'No Data')as 'Payment Mode',
ISNULL(invoiceMaster.TotalItem,0.0)as 'Total Item',
ISNULL(invoiceMaster.TotalGrandPrice,0.0)as 'Total Grand Price',
ISNULL(invoiceMaster.VAT,0.0)as VAT,
ISNULL(invoiceMaster.Discount,0.0)as Discount,
ISNULL(invoiceMaster.Cash,0.0)as Cash,
ISNULL(invoiceMaster.Credit,0.0)as Credit,
ISNULL(invoiceMaster.PaidAmount,0.0)as 'Paid Amount',
ISNULL(invoiceMaster.DueOrRefund,0.0)as 'Due Or Refund',
ISNULL(invoiceMaster.Note,'No Data')as Note,
ISNULL(invoiceMaster.Status,0)as Status,
ISNULL(invoiceMaster.IsActive,0)as IsActive,
--ISNULL(invoiceMaster.IsChanged,0)as IsChanged,
ISNULL(invoiceMaster.IsDeleted,0)as IsDeleted,
--ISNULL(invoiceMaster.IsEdited,0)as IsEdited,
ISNULL(invoiceMaster.IsFullPaid,0)as IsFullPaid,
ISNULL(invoiceMaster.IsReturned,0)as IsReturned,
ISNULL(invoiceMaster.CreatedBy,'No Data')as CreatedBy,
--ISNULL(invoiceMaster.CreatedDate,0.0)as CreatedDate,
ISNULL(invoiceMaster.ModifiedBy,'No Data')as ModifiedBy,
ISNULL(invoiceMaster.ModifiedDate,0.0)as ModifiedDate,
ISNULL(invoiceMaster.PreviousInvoice,'No Data')as PreviousInvoice,
ISNULL(invoiceMaster.NewInvoice,'No Data')as NewInvoice,

ISNULL(outInvDetail.OutletInvoiceDetailsId,0)as OutletInvoiceDetailsId,
ISNULL(outInvDetail.ProductId,0)as ProductId,
ISNULL(outInvDetail.ProductQuantity,0.0)as 'Product Quantity',
ISNULL(outInvDetail.UnitPrice,0.0)as 'Unit Price',
ISNULL(outInvDetail.TotalPrice,0.0)as 'Total Price',
--ISNULL(outInvDetail.Note,'No Data')as Note,
--ISNULL(outInvDetail.Status,0)as Status,
--ISNULL(outInvDetail.IsActive,0)as IsActive,
ISNULL(outInvDetail.IsChanged,0)as IsChanged,
--ISNULL(outInvDetail.IsDeleted,0)as IsDeleted,
ISNULL(outInvDetail.IsEdited,0)as IsEdited,
--ISNULL(outInvDetail.IsReturned,0)as IsReturned,
--ISNULL(outInvDetail.CreatedBy,'No Data')as CreatedBy,
ISNULL(outInvDetail.CreatedDate,0.0)as CreatedDate,
--ISNULL(outInvDetail.ModifiedBy,'No Data')as ModifiedBy,
--ISNULL(outInvDetail.ModifiedDate,0.0)as ModifiedDate,

--ISNULL(invProduct.ProductId,0) as ProductId,
ISNULL(invProduct.ProductName,'No Data')as 'Product Name',

--ISNULL(outlet.OutletId,0)as OutletId,
ISNULL(outlet.OutletName,'No Data')as OutletName,
--ISNULL(factory.FactoryId,0)as FactoryId,
ISNULL(factory.FactoryName,'No Data')as FactoryName,
--ISNULL(item.ItemId,0)as ItemId,
ISNULL(item.ItemName,'No Data')as ItemName,
--ISNULL(size.SizeId,0)as SizeId,
ISNULL(size.SizeName,'No Data')as SizeName,
--ISNULL(uOm.UoMId,0)as UoMId,
ISNULL(uOm.UoMShortName,'No Data')as UoMShortName,
--ISNULL(color.ColorId,0)as ColorId,
ISNULL(color.ColorName,'No Data')as ColorName

FROM
InvOutletInvoiceMaster invoiceMaster
INNER JOIN InvOutletInvoiceDetail outInvDetail on invoiceMaster.OutletInvoiceMasterId = outInvDetail.OutletInvoiceMasterId 
INNER JOIN InvProduct invProduct on  outInvDetail.ProductId = invProduct.ProductId
--INNER JOIN InvProductPrice productPrice on  invProduct.ProductId = productPrice.ProductId
INNER JOIN InvOutlet outlet on invoiceMaster.OutletId = outlet.OutletId
INNER JOIN InvFactory factory on invProduct.FactoryId = factory.FactoryId
INNER JOIN InvItem item on invProduct.ItemId = item.ItemId
INNER JOIN InvSize size on invProduct.SizeId = size.SizeId
INNER JOIN InvUoM uOm on invProduct.UoMId = uOm.UoMId
INNER JOIN InvColor color on invProduct.ColorId = color.ColorId

where 
invoiceMaster.OutletSaleInvoiceNo = @OutletSaleInvoiceNo 
AND invoiceMaster.IsActive='true' AND outInvDetail.IsActive='true'  AND outInvDetail.IsActive='true'

ORDER BY 
outInvDetail.OutletInvoiceDetailsId DESC

END




GO
/****** Object:  StoredProcedure [dbo].[spTempo]    Script Date: 5/4/2017 9:42:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[spTempo]
@num AS INT=0
AS
BEGIN
	SELECT @num AS Price
END

-- exec spTempo 2



GO
USE [master]
GO
ALTER DATABASE [RetailSalesManagement] SET  READ_WRITE 
GO
