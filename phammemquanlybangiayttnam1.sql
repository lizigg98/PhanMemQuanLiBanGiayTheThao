USE [master]
GO
/****** Object:  Database [PhanMemQuanLyBanGiayTTNam]    Script Date: 10/3/2023 2:33:09 AM ******/
CREATE DATABASE [PhanMemQuanLyBanGiayTTNam]

GO
ALTER DATABASE [PhanMemQuanLyBanGiayTTNam] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [PhanMemQuanLyBanGiayTTNam] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [PhanMemQuanLyBanGiayTTNam] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [PhanMemQuanLyBanGiayTTNam] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [PhanMemQuanLyBanGiayTTNam] SET ARITHABORT OFF 
GO
ALTER DATABASE [PhanMemQuanLyBanGiayTTNam] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [PhanMemQuanLyBanGiayTTNam] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [PhanMemQuanLyBanGiayTTNam] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [PhanMemQuanLyBanGiayTTNam] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [PhanMemQuanLyBanGiayTTNam] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [PhanMemQuanLyBanGiayTTNam] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [PhanMemQuanLyBanGiayTTNam] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [PhanMemQuanLyBanGiayTTNam] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [PhanMemQuanLyBanGiayTTNam] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [PhanMemQuanLyBanGiayTTNam] SET  ENABLE_BROKER 
GO
ALTER DATABASE [PhanMemQuanLyBanGiayTTNam] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [PhanMemQuanLyBanGiayTTNam] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [PhanMemQuanLyBanGiayTTNam] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [PhanMemQuanLyBanGiayTTNam] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [PhanMemQuanLyBanGiayTTNam] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [PhanMemQuanLyBanGiayTTNam] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [PhanMemQuanLyBanGiayTTNam] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [PhanMemQuanLyBanGiayTTNam] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [PhanMemQuanLyBanGiayTTNam] SET  MULTI_USER 
GO
ALTER DATABASE [PhanMemQuanLyBanGiayTTNam] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [PhanMemQuanLyBanGiayTTNam] SET DB_CHAINING OFF 
GO
ALTER DATABASE [PhanMemQuanLyBanGiayTTNam] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [PhanMemQuanLyBanGiayTTNam] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [PhanMemQuanLyBanGiayTTNam] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [PhanMemQuanLyBanGiayTTNam] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [PhanMemQuanLyBanGiayTTNam] SET QUERY_STORE = OFF
GO
USE [PhanMemQuanLyBanGiayTTNam]
GO
/****** Object:  Table [dbo].[Bill]    Script Date: 10/3/2023 2:33:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bill](
	[Id] [uniqueidentifier] NOT NULL,
	[ExpectedDate] [datetime] NULL,
	[Address] [nvarchar](max) NULL,
	[Code] [varchar](20) NULL,
	[DateCreated] [datetime] NULL,
	[DateOfPayment] [datetime] NULL,
	[DeliveryDate] [datetime] NULL,
	[NameCustomer] [nvarchar](30) NULL,
	[Note] [nvarchar](max) NULL,
	[PhoneNumberCustomer] [varchar](30) NULL,
	[ReceivedDate] [datetime] NULL,
	[Status] [int] NULL,
	[IdCustomer] [uniqueidentifier] NULL,
	[IdStaff] [uniqueidentifier] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BillDetails]    Script Date: 10/3/2023 2:33:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BillDetails](
	[Id] [uniqueidentifier] NOT NULL,
	[Amount] [int] NULL,
	[Note] [nvarchar](50) NULL,
	[Status] [int] NULL,
	[UnitPrice] [decimal](20, 0) NULL,
	[idBill] [uniqueidentifier] NULL,
	[idProductDetails] [uniqueidentifier] NULL,
	[IdPromotion] [uniqueidentifier] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Color]    Script Date: 10/3/2023 2:33:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Color](
	[Id] [uniqueidentifier] NOT NULL,
	[Code] [varchar](20) NULL,
	[Name] [nvarchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 10/3/2023 2:33:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[Id] [uniqueidentifier] NOT NULL,
	[Code] [varchar](20) NULL,
	[Email] [varchar](max) NULL,
	[FirstName] [nvarchar](30) NULL,
	[LastName] [nvarchar](30) NULL,
	[PhoneNumber] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductDetails]    Script Date: 10/3/2023 2:33:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductDetails](
	[Id] [uniqueidentifier] NOT NULL,
	[Amount] [int] NULL,
	[Code] [varchar](20) NULL,
	[Describe] [nvarchar](max) NULL,
	[ExportPrice] [decimal](20, 0) NULL,
	[ImportPrice] [decimal](20, 0) NULL,
	[Name] [nvarchar](30) NULL,
	[Status] [int] NULL,
	[IdColor] [uniqueidentifier] NULL,
	[IdProductType] [uniqueidentifier] NULL,
	[IdSize] [uniqueidentifier] NULL,
	[IdSubstance] [uniqueidentifier] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductType]    Script Date: 10/3/2023 2:33:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductType](
	[Id] [uniqueidentifier] NOT NULL,
	[Code] [varchar](20) NULL,
	[Name] [nvarchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Promotion]    Script Date: 10/3/2023 2:33:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Promotion](
	[Id] [uniqueidentifier] NOT NULL,
	[Code] [varchar](20) NULL,
	[decreaseNumber] [int] NULL,
	[EndDay] [datetime] NULL,
	[Name] [nvarchar](max) NULL,
	[StartDay] [datetime] NULL,
	[Status] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PromotionDetails]    Script Date: 10/3/2023 2:33:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PromotionDetails](
	[Status] [int] NULL,
	[idPromotion] [uniqueidentifier] NOT NULL,
	[idProductDetails] [uniqueidentifier] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idPromotion] ASC,
	[idProductDetails] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Size]    Script Date: 10/3/2023 2:33:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Size](
	[Id] [uniqueidentifier] NOT NULL,
	[Code] [varchar](20) NULL,
	[Name] [nvarchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Staff]    Script Date: 10/3/2023 2:33:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Staff](
	[Id] [uniqueidentifier] NOT NULL,
	[Address] [nvarchar](100) NULL,
	[Code] [varchar](20) NULL,
	[DateOfBirth] [datetime] NULL,
	[Email] [varchar](max) NULL,
	[FirstName] [nvarchar](30) NULL,
	[LastName] [nvarchar](30) NULL,
	[Password] [varchar](max) NULL,
	[PhoneNumber] [varchar](30) NULL,
	[Role] [int] NULL,
	[Sex] [nvarchar](10) NULL,
	[Status] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Substance]    Script Date: 10/3/2023 2:33:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Substance](
	[Id] [uniqueidentifier] NOT NULL,
	[Code] [varchar](20) NULL,
	[Name] [nvarchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Bill] ([Id], [ExpectedDate], [Address], [Code], [DateCreated], [DateOfPayment], [DeliveryDate], [NameCustomer], [Note], [PhoneNumberCustomer], [ReceivedDate], [Status], [IdCustomer], [IdStaff]) VALUES (N'510db208-28de-4da4-9a8d-d2e4d1d90da9', NULL, NULL, N'HD000002', CAST(N'2023-09-04T00:00:00.000' AS DateTime), CAST(N'2023-09-04T00:00:00.000' AS DateTime), NULL, N'mai', N'', N'0986374837', NULL, 1, NULL, N'772cfb62-c253-40b5-bbff-5982d5449728')
INSERT [dbo].[Bill] ([Id], [ExpectedDate], [Address], [Code], [DateCreated], [DateOfPayment], [DeliveryDate], [NameCustomer], [Note], [PhoneNumberCustomer], [ReceivedDate], [Status], [IdCustomer], [IdStaff]) VALUES (N'372e9e6e-009a-4222-9616-f09f2e1a51bd', NULL, N'', N'HD000001', CAST(N'2023-09-01T00:00:00.000' AS DateTime), CAST(N'2023-10-03T00:00:00.000' AS DateTime), NULL, N'Ha', N'', N'0965192732', NULL, 1, N'79f4adb6-6d46-4168-811b-125d378fa2f1', N'772cfb62-c253-40b5-bbff-5982d5449728')
GO
INSERT [dbo].[BillDetails] ([Id], [Amount], [Note], [Status], [UnitPrice], [idBill], [idProductDetails], [IdPromotion]) VALUES (N'0fe2403d-395a-4f96-8588-8763fd12fafc', 1, NULL, 1, CAST(1000 AS Decimal(20, 0)), N'510db208-28de-4da4-9a8d-d2e4d1d90da9', N'a7d66dde-f9e0-4979-8b5f-dda6c8182e14', N'abb61efa-17a8-435a-831b-c79ec24ba32d')
INSERT [dbo].[BillDetails] ([Id], [Amount], [Note], [Status], [UnitPrice], [idBill], [idProductDetails], [IdPromotion]) VALUES (N'b64bfe9a-d485-4208-9ed6-fccb0cb3e742', 1, NULL, 1, CAST(1000 AS Decimal(20, 0)), N'372e9e6e-009a-4222-9616-f09f2e1a51bd', N'a7d66dde-f9e0-4979-8b5f-dda6c8182e14', N'2819276a-c5ac-4ce6-a9f7-943106f27ea7')
GO
INSERT [dbo].[Color] ([Id], [Code], [Name]) VALUES (N'22b227f0-dba3-497a-9b93-0209ae710b0c', N'MS0003', N'Xanh')
INSERT [dbo].[Color] ([Id], [Code], [Name]) VALUES (N'a4d39be1-7df7-497b-8c5a-dd15af5c111f', N'MS0002', N'Trắng')
INSERT [dbo].[Color] ([Id], [Code], [Name]) VALUES (N'c16151bb-7e14-4925-96c4-f100f9a7b046', N'MS0001', N'Đen')
GO
INSERT [dbo].[Customer] ([Id], [Code], [Email], [FirstName], [LastName], [PhoneNumber]) VALUES (N'79f4adb6-6d46-4168-811b-125d378fa2f1', N'KH0003', N'ha@gmail.com', N'Hoang Thu ', N'Ha', N'0965192732')
INSERT [dbo].[Customer] ([Id], [Code], [Email], [FirstName], [LastName], [PhoneNumber]) VALUES (N'f2895f96-a101-49b6-b9e8-79dc329f1262', N'KH0002', N'linh@gmail.com', N'Cấn', N'Linh', N'0973645374')
INSERT [dbo].[Customer] ([Id], [Code], [Email], [FirstName], [LastName], [PhoneNumber]) VALUES (N'9866f730-a6fb-4112-9d55-9ff6da02ac81', N'KH0001', N'anh@gmail.com', N'Lan', N'Anh', N'0964537276')
GO
INSERT [dbo].[ProductDetails] ([Id], [Amount], [Code], [Describe], [ExportPrice], [ImportPrice], [Name], [Status], [IdColor], [IdProductType], [IdSize], [IdSubstance]) VALUES (N'07546f77-7bc7-47ae-b586-94eac6776a72', 110, N'SP0002', N'đẹp', CAST(20000 AS Decimal(20, 0)), NULL, N'giày daka', 1, N'22b227f0-dba3-497a-9b93-0209ae710b0c', N'faed62a1-7c57-4573-9753-15286e29d286', N'd5226caf-f0ed-4c7f-8532-42e42ef69cac', N'264b735e-387b-453d-8b89-62270fcae97a')
INSERT [dbo].[ProductDetails] ([Id], [Amount], [Code], [Describe], [ExportPrice], [ImportPrice], [Name], [Status], [IdColor], [IdProductType], [IdSize], [IdSubstance]) VALUES (N'a7d66dde-f9e0-4979-8b5f-dda6c8182e14', 110, N'SP0001', N'GIày abc', CAST(1000 AS Decimal(20, 0)), NULL, N'Giay gucci', 1, N'a4d39be1-7df7-497b-8c5a-dd15af5c111f', N'3061c704-cd76-4603-aa70-568fe01cc151', N'17558cdc-1cc8-41aa-86cf-886ecc4ee392', N'ba0a0576-fdf3-4b2a-a797-ce581e5cb259')
GO
INSERT [dbo].[ProductType] ([Id], [Code], [Name]) VALUES (N'faed62a1-7c57-4573-9753-15286e29d286', N'LP0001', N'supper')
INSERT [dbo].[ProductType] ([Id], [Code], [Name]) VALUES (N'3061c704-cd76-4603-aa70-568fe01cc151', N'LP0002', N'Gucci')
GO
INSERT [dbo].[Promotion] ([Id], [Code], [decreaseNumber], [EndDay], [Name], [StartDay], [Status]) VALUES (N'b7a7750c-43c7-4158-bc75-1be3ccd96611', N'KM0003', 5, CAST(N'2023-09-10T00:00:00.000' AS DateTime), N'KM 9/9', CAST(N'2023-09-09T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Promotion] ([Id], [Code], [decreaseNumber], [EndDay], [Name], [StartDay], [Status]) VALUES (N'2819276a-c5ac-4ce6-a9f7-943106f27ea7', N'KM0002', 5, CAST(N'2023-09-03T00:00:00.000' AS DateTime), N'KM 2/9', CAST(N'2023-09-01T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Promotion] ([Id], [Code], [decreaseNumber], [EndDay], [Name], [StartDay], [Status]) VALUES (N'8070394b-0226-4fc2-ab61-9b61d309b9f9', N'KM0004', 10, CAST(N'2023-09-19T00:00:00.000' AS DateTime), N'KM 19/9', CAST(N'2023-09-18T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Promotion] ([Id], [Code], [decreaseNumber], [EndDay], [Name], [StartDay], [Status]) VALUES (N'abb61efa-17a8-435a-831b-c79ec24ba32d', N'KM0001', 0, NULL, NULL, NULL, 3)
GO
INSERT [dbo].[PromotionDetails] ([Status], [idPromotion], [idProductDetails]) VALUES (1, N'2819276a-c5ac-4ce6-a9f7-943106f27ea7', N'a7d66dde-f9e0-4979-8b5f-dda6c8182e14')
INSERT [dbo].[PromotionDetails] ([Status], [idPromotion], [idProductDetails]) VALUES (1, N'abb61efa-17a8-435a-831b-c79ec24ba32d', N'07546f77-7bc7-47ae-b586-94eac6776a72')
INSERT [dbo].[PromotionDetails] ([Status], [idPromotion], [idProductDetails]) VALUES (1, N'abb61efa-17a8-435a-831b-c79ec24ba32d', N'a7d66dde-f9e0-4979-8b5f-dda6c8182e14')
GO
INSERT [dbo].[Size] ([Id], [Code], [Name]) VALUES (N'd5226caf-f0ed-4c7f-8532-42e42ef69cac', N'KC0001', N'36')
INSERT [dbo].[Size] ([Id], [Code], [Name]) VALUES (N'17558cdc-1cc8-41aa-86cf-886ecc4ee392', N'KC0002', N'39')
INSERT [dbo].[Size] ([Id], [Code], [Name]) VALUES (N'c1dd6698-3d82-4ce1-8421-b52113f6fd86', N'KC0003', N'38')
GO
INSERT [dbo].[Staff] ([Id], [Address], [Code], [DateOfBirth], [Email], [FirstName], [LastName], [Password], [PhoneNumber], [Role], [Sex], [Status]) VALUES (N'e9ebf316-3e63-42ee-976a-0651c9046cf2', N'hfff', N'NV0005', CAST(N'2003-10-07T00:00:00.000' AS DateTime), N'ag@gmail.com', N'Thi', N'Vu', N'4297F44B13955235245B2497399D7A93', N'0362877722', 1, N'Nam', 1)
INSERT [dbo].[Staff] ([Id], [Address], [Code], [DateOfBirth], [Email], [FirstName], [LastName], [Password], [PhoneNumber], [Role], [Sex], [Status]) VALUES (N'772cfb62-c253-40b5-bbff-5982d5449728', N'Quốc Oai', N'NV0003', CAST(N'2003-10-28T00:00:00.000' AS DateTime), N'thuha@gmail.com', N'Ha', N'Thu', N'C65A733B0C14CF6E385E1D7C2B5E5910', N'0965192732', 0, N'Nữ', 1)
INSERT [dbo].[Staff] ([Id], [Address], [Code], [DateOfBirth], [Email], [FirstName], [LastName], [Password], [PhoneNumber], [Role], [Sex], [Status]) VALUES (N'0c3f36b7-aa58-47cb-8ac3-9f25cf19af54', N'hà tây', N'NV0004', CAST(N'2023-10-01T00:00:00.000' AS DateTime), N'ak@gamil.com', N'an', N'vu', N'202CB962AC59075B964B07152D234B70', N'0362875211', 1, N'Nữ', 1)
INSERT [dbo].[Staff] ([Id], [Address], [Code], [DateOfBirth], [Email], [FirstName], [LastName], [Password], [PhoneNumber], [Role], [Sex], [Status]) VALUES (N'3d706266-92df-4a07-9a62-bb8a0565d778', N'Hà Nam', N'NV0002', CAST(N'2003-10-08T00:00:00.000' AS DateTime), N'a@gmail.com', N'Hưng', N'Trần', N'E10ADC3949BA59ABBE56E057F20F883E', N'0846453637', 0, N'Nam', 1)
INSERT [dbo].[Staff] ([Id], [Address], [Code], [DateOfBirth], [Email], [FirstName], [LastName], [Password], [PhoneNumber], [Role], [Sex], [Status]) VALUES (N'50f7bf9d-be30-41dc-9e0d-f5856d98532d', N'Hà Nội', N'NV0001', CAST(N'2003-10-28T00:00:00.000' AS DateTime), N'ha@gmail.com', N'Hà', N'Hoàng ', N'202CB962AC59075B964B07152D234B70', N'0965192732', 1, N'Nữ', 1)
GO
INSERT [dbo].[Substance] ([Id], [Code], [Name]) VALUES (N'264b735e-387b-453d-8b89-62270fcae97a', N'CL0002', N'Da')
INSERT [dbo].[Substance] ([Id], [Code], [Name]) VALUES (N'ba0a0576-fdf3-4b2a-a797-ce581e5cb259', N'CL0001', N'Vải')
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UK_ssqdivlwxflh5mapk0vqlf4rs]    Script Date: 10/3/2023 2:33:10 AM ******/
ALTER TABLE [dbo].[Bill] ADD  CONSTRAINT [UK_ssqdivlwxflh5mapk0vqlf4rs] UNIQUE NONCLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UK_24npyljhkpnp8plbqxp0fwtoe]    Script Date: 10/3/2023 2:33:10 AM ******/
ALTER TABLE [dbo].[Color] ADD  CONSTRAINT [UK_24npyljhkpnp8plbqxp0fwtoe] UNIQUE NONCLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UK_b7ca65x58jui2wugt4smcfxna]    Script Date: 10/3/2023 2:33:10 AM ******/
ALTER TABLE [dbo].[Customer] ADD  CONSTRAINT [UK_b7ca65x58jui2wugt4smcfxna] UNIQUE NONCLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UK_ogv8xh74c6p2bdshij5ccir4n]    Script Date: 10/3/2023 2:33:10 AM ******/
ALTER TABLE [dbo].[ProductDetails] ADD  CONSTRAINT [UK_ogv8xh74c6p2bdshij5ccir4n] UNIQUE NONCLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UK_267m0uttjdmvyd7y1lf1cyrnw]    Script Date: 10/3/2023 2:33:10 AM ******/
ALTER TABLE [dbo].[ProductType] ADD  CONSTRAINT [UK_267m0uttjdmvyd7y1lf1cyrnw] UNIQUE NONCLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UK_31089kloqpnqhiyq7gp3twvr4]    Script Date: 10/3/2023 2:33:10 AM ******/
ALTER TABLE [dbo].[Promotion] ADD  CONSTRAINT [UK_31089kloqpnqhiyq7gp3twvr4] UNIQUE NONCLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UK_hyx1ew9rd3ekgj115ceym790f]    Script Date: 10/3/2023 2:33:10 AM ******/
ALTER TABLE [dbo].[Size] ADD  CONSTRAINT [UK_hyx1ew9rd3ekgj115ceym790f] UNIQUE NONCLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UK_bvn80p8o5067b7if8aq5oaxtb]    Script Date: 10/3/2023 2:33:10 AM ******/
ALTER TABLE [dbo].[Staff] ADD  CONSTRAINT [UK_bvn80p8o5067b7if8aq5oaxtb] UNIQUE NONCLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UK_6d05e447mwu8s98w1sckdufie]    Script Date: 10/3/2023 2:33:10 AM ******/
ALTER TABLE [dbo].[Substance] ADD  CONSTRAINT [UK_6d05e447mwu8s98w1sckdufie] UNIQUE NONCLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Bill]  WITH CHECK ADD  CONSTRAINT [FKdg8pas2iya00vgd0jrypd6joe] FOREIGN KEY([IdCustomer])
REFERENCES [dbo].[Customer] ([Id])
GO
ALTER TABLE [dbo].[Bill] CHECK CONSTRAINT [FKdg8pas2iya00vgd0jrypd6joe]
GO
ALTER TABLE [dbo].[Bill]  WITH CHECK ADD  CONSTRAINT [FKkkmxg18vlvr4a0p4u5oebgm07] FOREIGN KEY([IdStaff])
REFERENCES [dbo].[Staff] ([Id])
GO
ALTER TABLE [dbo].[Bill] CHECK CONSTRAINT [FKkkmxg18vlvr4a0p4u5oebgm07]
GO
ALTER TABLE [dbo].[BillDetails]  WITH CHECK ADD  CONSTRAINT [FK1nnq5qb5h7neepn7si403uesk] FOREIGN KEY([idProductDetails])
REFERENCES [dbo].[ProductDetails] ([Id])
GO
ALTER TABLE [dbo].[BillDetails] CHECK CONSTRAINT [FK1nnq5qb5h7neepn7si403uesk]
GO
ALTER TABLE [dbo].[BillDetails]  WITH CHECK ADD  CONSTRAINT [FK8hjq1clbclpv2lpfiqjdio5nf] FOREIGN KEY([IdPromotion])
REFERENCES [dbo].[Promotion] ([Id])
GO
ALTER TABLE [dbo].[BillDetails] CHECK CONSTRAINT [FK8hjq1clbclpv2lpfiqjdio5nf]
GO
ALTER TABLE [dbo].[BillDetails]  WITH CHECK ADD  CONSTRAINT [FKdl5utn67syytjfmxqwf7ffied] FOREIGN KEY([idBill])
REFERENCES [dbo].[Bill] ([Id])
GO
ALTER TABLE [dbo].[BillDetails] CHECK CONSTRAINT [FKdl5utn67syytjfmxqwf7ffied]
GO
ALTER TABLE [dbo].[ProductDetails]  WITH CHECK ADD  CONSTRAINT [FK24dexi61o1reegs0f2vn2lf9m] FOREIGN KEY([IdSubstance])
REFERENCES [dbo].[Substance] ([Id])
GO
ALTER TABLE [dbo].[ProductDetails] CHECK CONSTRAINT [FK24dexi61o1reegs0f2vn2lf9m]
GO
ALTER TABLE [dbo].[ProductDetails]  WITH CHECK ADD  CONSTRAINT [FKaieg0vk65p8k1f1wd6s3y987b] FOREIGN KEY([IdSize])
REFERENCES [dbo].[Size] ([Id])
GO
ALTER TABLE [dbo].[ProductDetails] CHECK CONSTRAINT [FKaieg0vk65p8k1f1wd6s3y987b]
GO
ALTER TABLE [dbo].[ProductDetails]  WITH CHECK ADD  CONSTRAINT [FKch7mykhmxx15aj2mdbo57noia] FOREIGN KEY([IdProductType])
REFERENCES [dbo].[ProductType] ([Id])
GO
ALTER TABLE [dbo].[ProductDetails] CHECK CONSTRAINT [FKch7mykhmxx15aj2mdbo57noia]
GO
ALTER TABLE [dbo].[ProductDetails]  WITH CHECK ADD  CONSTRAINT [FKoy7eny1grqaeuv92gjov91fc1] FOREIGN KEY([IdColor])
REFERENCES [dbo].[Color] ([Id])
GO
ALTER TABLE [dbo].[ProductDetails] CHECK CONSTRAINT [FKoy7eny1grqaeuv92gjov91fc1]
GO
ALTER TABLE [dbo].[PromotionDetails]  WITH CHECK ADD  CONSTRAINT [FK9b06b2og8gjijl7fqo2kchd1k] FOREIGN KEY([idProductDetails])
REFERENCES [dbo].[ProductDetails] ([Id])
GO
ALTER TABLE [dbo].[PromotionDetails] CHECK CONSTRAINT [FK9b06b2og8gjijl7fqo2kchd1k]
GO
ALTER TABLE [dbo].[PromotionDetails]  WITH CHECK ADD  CONSTRAINT [FKgyha3bky2a21c46ju454pfy1w] FOREIGN KEY([idPromotion])
REFERENCES [dbo].[Promotion] ([Id])
GO
ALTER TABLE [dbo].[PromotionDetails] CHECK CONSTRAINT [FKgyha3bky2a21c46ju454pfy1w]
GO
USE [master]
GO
ALTER DATABASE [PhanMemQuanLyBanGiayTTNam] SET  READ_WRITE 
GO
