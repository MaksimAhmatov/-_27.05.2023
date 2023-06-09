USE [master]
GO
/****** Object:  Database [Namordnik]    Script Date: 27.05.2023 9:16:09 ******/
CREATE DATABASE [Namordnik]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Namordnik', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Namordnik.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Namordnik_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Namordnik_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Namordnik] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Namordnik].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Namordnik] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Namordnik] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Namordnik] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Namordnik] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Namordnik] SET ARITHABORT OFF 
GO
ALTER DATABASE [Namordnik] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Namordnik] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Namordnik] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Namordnik] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Namordnik] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Namordnik] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Namordnik] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Namordnik] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Namordnik] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Namordnik] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Namordnik] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Namordnik] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Namordnik] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Namordnik] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Namordnik] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Namordnik] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Namordnik] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Namordnik] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Namordnik] SET  MULTI_USER 
GO
ALTER DATABASE [Namordnik] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Namordnik] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Namordnik] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Namordnik] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Namordnik] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Namordnik] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Namordnik] SET QUERY_STORE = OFF
GO
USE [Namordnik]
GO
/****** Object:  Table [dbo].[materials]    Script Date: 27.05.2023 9:16:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[materials](
	[ID] [int] NOT NULL,
	[NameMateriala] [nvarchar](50) NULL,
	[TipMateriala] [nvarchar](50) NULL,
	[KolvoVUpakovke] [nvarchar](50) NULL,
	[EdinizaIzmereniya] [nvarchar](50) NULL,
	[KolvoNaSklade] [nvarchar](50) NULL,
	[MinVozmojnyiOstatok] [nvarchar](50) NULL,
	[Stoimost] [nvarchar](50) NULL,
 CONSTRAINT [PK_materials] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[productmaterial]    Script Date: 27.05.2023 9:16:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[productmaterial](
	[ID] [int] NOT NULL,
	[Produkchiya] [nvarchar](50) NULL,
	[NameMateriala] [nvarchar](50) NULL,
	[NeobhodimoeKolvoMateriala] [nvarchar](50) NULL,
 CONSTRAINT [PK_productmaterial] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[products]    Script Date: 27.05.2023 9:16:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[products](
	[ID] [int] NOT NULL,
	[NameProdukchii] [nvarchar](50) NULL,
	[Artikyl] [nvarchar](50) NULL,
	[MinStoimost] [nvarchar](50) NULL,
	[Izobrajenie] [nvarchar](50) NULL,
	[TipProdukchii] [nvarchar](50) NULL,
	[KolvoChelovek] [nvarchar](50) NULL,
	[NomerCheha] [nvarchar](50) NULL,
 CONSTRAINT [PK_products] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[materials] ([ID], [NameMateriala], [TipMateriala], [KolvoVUpakovke], [EdinizaIzmereniya], [KolvoNaSklade], [MinVozmojnyiOstatok], [Stoimost]) VALUES (1, N'Вата серый 1x1', N' Вата', N'7', N' м', N'191', N'34', N'6009')
INSERT [dbo].[materials] ([ID], [NameMateriala], [TipMateriala], [KolvoVUpakovke], [EdinizaIzmereniya], [KolvoNaSklade], [MinVozmojnyiOstatok], [Stoimost]) VALUES (2, N'Ткань белый 2x2', N' Ткань', N'10', N' м', N'713', N'18', N'13742')
INSERT [dbo].[materials] ([ID], [NameMateriala], [TipMateriala], [KolvoVUpakovke], [EdinizaIzmereniya], [KolvoNaSklade], [MinVozmojnyiOstatok], [Stoimost]) VALUES (3, N'Металлический стержень белый 0x2', N' Стержень', N'9', N' кг', N'280', N'12', N'10633')
INSERT [dbo].[materials] ([ID], [NameMateriala], [TipMateriala], [KolvoVUpakovke], [EdinizaIzmereniya], [KolvoNaSklade], [MinVozmojnyiOstatok], [Stoimost]) VALUES (4, N'Силикон серый 1x1', N' Силикон', N'2', N' м', N'981', N'12', N'2343')
INSERT [dbo].[materials] ([ID], [NameMateriala], [TipMateriala], [KolvoVUpakovke], [EdinizaIzmereniya], [KolvoNaSklade], [MinVozmojnyiOstatok], [Stoimost]) VALUES (5, N'Силикон белый 0x3', N' Силикон', N'8', N' кг', N'307', N'17', N'12097')
INSERT [dbo].[materials] ([ID], [NameMateriala], [TipMateriala], [KolvoVUpakovke], [EdinizaIzmereniya], [KolvoNaSklade], [MinVozmojnyiOstatok], [Stoimost]) VALUES (6, N'Силикон белый 1x3', N' Силикон', N'4', N' кг', N'345', N'46', N'13550')
INSERT [dbo].[materials] ([ID], [NameMateriala], [TipMateriala], [KolvoVUpakovke], [EdinizaIzmereniya], [KolvoNaSklade], [MinVozmojnyiOstatok], [Stoimost]) VALUES (7, N'Ткань серый 0x3', N' Ткань', N'10', N' м', N'965', N'17', N'15210')
INSERT [dbo].[materials] ([ID], [NameMateriala], [TipMateriala], [KolvoVUpakovke], [EdinizaIzmereniya], [KolvoNaSklade], [MinVozmojnyiOstatok], [Stoimost]) VALUES (8, N'Резинка зеленый 1x0', N' Резинка', N'8', N' кг', N'256', N'9', N'32616')
INSERT [dbo].[materials] ([ID], [NameMateriala], [TipMateriala], [KolvoVUpakovke], [EdinizaIzmereniya], [KolvoNaSklade], [MinVozmojnyiOstatok], [Stoimost]) VALUES (9, N'Металлический стержень белый 2x2', N' Стержень', N'9', N' м', N'65', N'36', N'36753')
INSERT [dbo].[materials] ([ID], [NameMateriala], [TipMateriala], [KolvoVUpakovke], [EdinizaIzmereniya], [KolvoNaSklade], [MinVozmojnyiOstatok], [Stoimost]) VALUES (10, N'Ткань синий 3x3', N' Ткань', N'5', N' м', N'387', N'39', N'32910')
INSERT [dbo].[materials] ([ID], [NameMateriala], [TipMateriala], [KolvoVUpakovke], [EdinizaIzmereniya], [KolvoNaSklade], [MinVozmojnyiOstatok], [Stoimost]) VALUES (11, N'Ткань белый 3x2', N' Ткань', N'9', N' м', N'398', N'25', N'782')
INSERT [dbo].[materials] ([ID], [NameMateriala], [TipMateriala], [KolvoVUpakovke], [EdinizaIzmereniya], [KolvoNaSklade], [MinVozmojnyiOstatok], [Stoimost]) VALUES (12, N'Вата розовый 1x0', N' Вата', N'3', N' м', N'589', N'32', N'35776')
INSERT [dbo].[materials] ([ID], [NameMateriala], [TipMateriala], [KolvoVUpakovke], [EdinizaIzmereniya], [KolvoNaSklade], [MinVozmojnyiOstatok], [Stoimost]) VALUES (13, N'Вата серый 3x2', N' Вата', N'5', N' кг', N'471', N'40', N'20453')
INSERT [dbo].[materials] ([ID], [NameMateriala], [TipMateriala], [KolvoVUpakovke], [EdinizaIzmereniya], [KolvoNaSklade], [MinVozmojnyiOstatok], [Stoimost]) VALUES (14, N'Ткань розовый 0x0', N' Ткань', N'3', N' м', N'654', N'29', N'6009')
INSERT [dbo].[materials] ([ID], [NameMateriala], [TipMateriala], [KolvoVUpakovke], [EdinizaIzmereniya], [KolvoNaSklade], [MinVozmojnyiOstatok], [Stoimost]) VALUES (15, N'Металлический стержень цветной 3x1', N' Стержень', N'4', N' м', N'988', N'49', N'13742')
INSERT [dbo].[materials] ([ID], [NameMateriala], [TipMateriala], [KolvoVUpakovke], [EdinizaIzmereniya], [KolvoNaSklade], [MinVozmojnyiOstatok], [Stoimost]) VALUES (16, N'Резинка синий 1x0', N' Резинка', N'3', N' кг', N'191', N'11', N'10633')
INSERT [dbo].[materials] ([ID], [NameMateriala], [TipMateriala], [KolvoVUpakovke], [EdinizaIzmereniya], [KolvoNaSklade], [MinVozmojnyiOstatok], [Stoimost]) VALUES (17, N'Металлический стержень цветной 1x2', N' Стержень', N'8', N' м', N'173', N'26', N'2343')
INSERT [dbo].[materials] ([ID], [NameMateriala], [TipMateriala], [KolvoVUpakovke], [EdinizaIzmereniya], [KolvoNaSklade], [MinVozmojnyiOstatok], [Stoimost]) VALUES (18, N'Ткань цветной 2x1', N' Ткань', N'2', N' м', N'993', N'34', N'12097')
INSERT [dbo].[materials] ([ID], [NameMateriala], [TipMateriala], [KolvoVUpakovke], [EdinizaIzmereniya], [KolvoNaSklade], [MinVozmojnyiOstatok], [Stoimost]) VALUES (19, N'Силикон белый 2x0', N' Силикон', N'10', N' м', N'851', N'38', N'13550')
INSERT [dbo].[materials] ([ID], [NameMateriala], [TipMateriala], [KolvoVUpakovke], [EdinizaIzmereniya], [KolvoNaSklade], [MinVozmojnyiOstatok], [Stoimost]) VALUES (20, N'Силикон зеленый 3x1', N' Силикон', N'2', N' м', N'776', N'46', N'15210')
INSERT [dbo].[materials] ([ID], [NameMateriala], [TipMateriala], [KolvoVUpakovke], [EdinizaIzmereniya], [KolvoNaSklade], [MinVozmojnyiOstatok], [Stoimost]) VALUES (21, N'Вата серый 3x3', N' Вата', N'1', N' кг', N'237', N'12', N'32616')
INSERT [dbo].[materials] ([ID], [NameMateriala], [TipMateriala], [KolvoVUpakovke], [EdinizaIzmereniya], [KolvoNaSklade], [MinVozmojnyiOstatok], [Stoimost]) VALUES (22, N'Вата белый 2x0', N' Вата', N'8', N' кг', N'983', N'49', N'36753')
INSERT [dbo].[materials] ([ID], [NameMateriala], [TipMateriala], [KolvoVUpakovke], [EdinizaIzmereniya], [KolvoNaSklade], [MinVozmojnyiOstatok], [Stoimost]) VALUES (23, N'Вата розовый 3x1', N' Вата', N'3', N' кг', N'246', N'41', N'32910')
INSERT [dbo].[materials] ([ID], [NameMateriala], [TipMateriala], [KolvoVUpakovke], [EdinizaIzmereniya], [KolvoNaSklade], [MinVozmojnyiOstatok], [Stoimost]) VALUES (24, N'Ткань синий 2x0', N' Ткань', N'4', N' м', N'146', N'16', N'782')
INSERT [dbo].[materials] ([ID], [NameMateriala], [TipMateriala], [KolvoVUpakovke], [EdinizaIzmereniya], [KolvoNaSklade], [MinVozmojnyiOstatok], [Stoimost]) VALUES (25, N'Металлический стержень зеленый 2x2', N' Стержень', N'4', N' м', N'478', N'34', N'35776')
INSERT [dbo].[materials] ([ID], [NameMateriala], [TipMateriala], [KolvoVUpakovke], [EdinizaIzmereniya], [KolvoNaSklade], [MinVozmojnyiOstatok], [Stoimost]) VALUES (26, N'Резинка зеленый 0x0', N' Резинка', N'7', N' м', N'594', N'19', N'20453')
INSERT [dbo].[materials] ([ID], [NameMateriala], [TipMateriala], [KolvoVUpakovke], [EdinizaIzmereniya], [KolvoNaSklade], [MinVozmojnyiOstatok], [Stoimost]) VALUES (27, N'Ткань синий 0x2', N' Ткань', N'8', N' кг', N'841', N'21', N'6009')
INSERT [dbo].[materials] ([ID], [NameMateriala], [TipMateriala], [KolvoVUpakovke], [EdinizaIzmereniya], [KolvoNaSklade], [MinVozmojnyiOstatok], [Stoimost]) VALUES (28, N'Ткань зеленый 2x2', N' Ткань', N'4', N' м', N'692', N'7', N'13742')
INSERT [dbo].[materials] ([ID], [NameMateriala], [TipMateriala], [KolvoVUpakovke], [EdinizaIzmereniya], [KolvoNaSklade], [MinVozmojnyiOstatok], [Stoimost]) VALUES (29, N'Металлический стержень синий 0x1', N' Стержень', N'9', N' м', N'259', N'20', N'10633')
INSERT [dbo].[materials] ([ID], [NameMateriala], [TipMateriala], [KolvoVUpakovke], [EdinizaIzmereniya], [KolvoNaSklade], [MinVozmojnyiOstatok], [Stoimost]) VALUES (30, N'Резинка белый 3x3', N' Резинка', N'1', N' м', N'586', N'26', N'2343')
INSERT [dbo].[materials] ([ID], [NameMateriala], [TipMateriala], [KolvoVUpakovke], [EdinizaIzmereniya], [KolvoNaSklade], [MinVozmojnyiOstatok], [Stoimost]) VALUES (31, N'Резинка зеленый 3x0', N' Резинка', N'10', N' кг', N'976', N'40', N'12097')
INSERT [dbo].[materials] ([ID], [NameMateriala], [TipMateriala], [KolvoVUpakovke], [EdinizaIzmereniya], [KolvoNaSklade], [MinVozmojnyiOstatok], [Stoimost]) VALUES (32, N'Ткань белый 1x3', N' Ткань', N'8', N' м', N'492', N'9', N'13550')
INSERT [dbo].[materials] ([ID], [NameMateriala], [TipMateriala], [KolvoVUpakovke], [EdinizaIzmereniya], [KolvoNaSklade], [MinVozmojnyiOstatok], [Stoimost]) VALUES (33, N'Силикон цветной 1x0', N' Силикон', N'10', N' м', N'843', N'28', N'15210')
INSERT [dbo].[materials] ([ID], [NameMateriala], [TipMateriala], [KolvoVUpakovke], [EdinizaIzmereniya], [KolvoNaSklade], [MinVozmojnyiOstatok], [Stoimost]) VALUES (34, N'Силикон зеленый 0x3', N' Силикон', N'9', N' кг', N'124', N'35', N'32616')
INSERT [dbo].[materials] ([ID], [NameMateriala], [TipMateriala], [KolvoVUpakovke], [EdinizaIzmereniya], [KolvoNaSklade], [MinVozmojnyiOstatok], [Stoimost]) VALUES (35, N'Вата серый 0x1', N' Вата', N'8', N' м', N'25', N'38', N'36753')
INSERT [dbo].[materials] ([ID], [NameMateriala], [TipMateriala], [KolvoVUpakovke], [EdinizaIzmereniya], [KolvoNaSklade], [MinVozmojnyiOstatok], [Stoimost]) VALUES (36, N'Металлический стержень белый 3x1', N' Стержень', N'9', N' м', N'749', N'30', N'32910')
INSERT [dbo].[materials] ([ID], [NameMateriala], [TipMateriala], [KolvoVUpakovke], [EdinizaIzmereniya], [KolvoNaSklade], [MinVozmojnyiOstatok], [Stoimost]) VALUES (37, N'Резинка синий 3x1', N' Резинка', N'4', N' кг', N'232', N'36', N'782')
INSERT [dbo].[materials] ([ID], [NameMateriala], [TipMateriala], [KolvoVUpakovke], [EdinizaIzmereniya], [KolvoNaSklade], [MinVozmojnyiOstatok], [Stoimost]) VALUES (38, N'Металлический стержень синий 3x1', N' Стержень', N'6', N' м', N'336', N'24', N'35776')
INSERT [dbo].[materials] ([ID], [NameMateriala], [TipMateriala], [KolvoVUpakovke], [EdinizaIzmereniya], [KolvoNaSklade], [MinVozmojnyiOstatok], [Stoimost]) VALUES (39, N'Силикон белый 1x2', N' Силикон', N'2', N' м', N'793', N'30', N'20453')
INSERT [dbo].[materials] ([ID], [NameMateriala], [TipMateriala], [KolvoVUpakovke], [EdinizaIzmereniya], [KolvoNaSklade], [MinVozmojnyiOstatok], [Stoimost]) VALUES (40, N'Резинка цветной 1x1', N' Резинка', N'8', N' м', N'347', N'13', N'6009')
INSERT [dbo].[materials] ([ID], [NameMateriala], [TipMateriala], [KolvoVUpakovke], [EdinizaIzmereniya], [KolvoNaSklade], [MinVozmojnyiOstatok], [Stoimost]) VALUES (41, N'Силикон розовый 1x3', N' Силикон', N'9', N' м', N'997', N'25', N'13742')
INSERT [dbo].[materials] ([ID], [NameMateriala], [TipMateriala], [KolvoVUpakovke], [EdinizaIzmereniya], [KolvoNaSklade], [MinVozmojnyiOstatok], [Stoimost]) VALUES (42, N'Резинка синий 3x2', N' Резинка', N'5', N' м', N'284', N'31', N'10633')
INSERT [dbo].[materials] ([ID], [NameMateriala], [TipMateriala], [KolvoVUpakovke], [EdinizaIzmereniya], [KolvoNaSklade], [MinVozmojnyiOstatok], [Stoimost]) VALUES (43, N'Резинка розовый 1x0', N' Резинка', N'1', N' м', N'265', N'21', N'2343')
INSERT [dbo].[materials] ([ID], [NameMateriala], [TipMateriala], [KolvoVUpakovke], [EdinizaIzmereniya], [KolvoNaSklade], [MinVozmojnyiOstatok], [Stoimost]) VALUES (44, N'Резинка зеленый 0x3', N' Резинка', N'8', N' кг', N'856', N'17', N'12097')
INSERT [dbo].[materials] ([ID], [NameMateriala], [TipMateriala], [KolvoVUpakovke], [EdinizaIzmereniya], [KolvoNaSklade], [MinVozmojnyiOstatok], [Stoimost]) VALUES (45, N'Резинка цветной 0x1', N' Резинка', N'8', N' м', N'290', N'32', N'13550')
INSERT [dbo].[materials] ([ID], [NameMateriala], [TipMateriala], [KolvoVUpakovke], [EdinizaIzmereniya], [KolvoNaSklade], [MinVozmojnyiOstatok], [Stoimost]) VALUES (46, N'Вата розовый 3x3', N' Вата', N'10', N' м', N'536', N'31', N'15210')
INSERT [dbo].[materials] ([ID], [NameMateriala], [TipMateriala], [KolvoVUpakovke], [EdinizaIzmereniya], [KolvoNaSklade], [MinVozmojnyiOstatok], [Stoimost]) VALUES (47, N'Резинка цветной 0x2', N' Резинка', N'10', N' м', N'189', N'31', N'32616')
INSERT [dbo].[materials] ([ID], [NameMateriala], [TipMateriala], [KolvoVUpakovke], [EdinizaIzmereniya], [KolvoNaSklade], [MinVozmojnyiOstatok], [Stoimost]) VALUES (48, N'Вата серый 3x0', N' Вата', N'8', N' кг', N'48', N'32', N'36753')
INSERT [dbo].[materials] ([ID], [NameMateriala], [TipMateriala], [KolvoVUpakovke], [EdinizaIzmereniya], [KolvoNaSklade], [MinVozmojnyiOstatok], [Stoimost]) VALUES (49, N'Резинка серый 3x3', N' Резинка', N'4', N' м', N'373', N'8', N'32910')
INSERT [dbo].[materials] ([ID], [NameMateriala], [TipMateriala], [KolvoVUpakovke], [EdinizaIzmereniya], [KolvoNaSklade], [MinVozmojnyiOstatok], [Stoimost]) VALUES (50, N'Резинка серый 0x0', N' Резинка', N'7', N' м', N'395', N'20', N'782')
GO
INSERT [dbo].[productmaterial] ([ID], [Produkchiya], [NameMateriala], [NeobhodimoeKolvoMateriala]) VALUES (1, N'Респиратор "Алина" АВ', N'Резинка розовый 1x0', N'9')
INSERT [dbo].[productmaterial] ([ID], [Produkchiya], [NameMateriala], [NeobhodimoeKolvoMateriala]) VALUES (2, N'Респиратор "Алина" 200', N'Резинка белый 3x3', N'19')
INSERT [dbo].[productmaterial] ([ID], [Produkchiya], [NameMateriala], [NeobhodimoeKolvoMateriala]) VALUES (4, N'Полумаска "Elipse" (Элипс) P3 (анти-запах)', N'Вата серый 3x3', N'18')
INSERT [dbo].[productmaterial] ([ID], [Produkchiya], [NameMateriala], [NeobhodimoeKolvoMateriala]) VALUES (5, N'Маска из нетканого материала KN95', N'Вата серый 3x3', N'2')
INSERT [dbo].[productmaterial] ([ID], [Produkchiya], [NameMateriala], [NeobhodimoeKolvoMateriala]) VALUES (6, N'Маска из нетканого материала KN95', N'Резинка розовый 1x0', N'15')
INSERT [dbo].[productmaterial] ([ID], [Produkchiya], [NameMateriala], [NeobhodimoeKolvoMateriala]) VALUES (7, N'Респиратор "Алина" П', N'Вата серый 3x3', N'9')
INSERT [dbo].[productmaterial] ([ID], [Produkchiya], [NameMateriala], [NeobhodimoeKolvoMateriala]) VALUES (9, N'Полумаска "Elipse" (Элипс) ABEK1', N'Силикон зеленый 3x1', N'13')
INSERT [dbo].[productmaterial] ([ID], [Produkchiya], [NameMateriala], [NeobhodimoeKolvoMateriala]) VALUES (10, N'Маска из нетканого материала KN95', N'Силикон зеленый 3x1', N'5')
INSERT [dbo].[productmaterial] ([ID], [Produkchiya], [NameMateriala], [NeobhodimoeKolvoMateriala]) VALUES (11, N'Респиратор "Юлия" 319', N'Силикон зеленый 3x1', N'12')
INSERT [dbo].[productmaterial] ([ID], [Produkchiya], [NameMateriala], [NeobhodimoeKolvoMateriala]) VALUES (12, N'Респиратор "Юлия" 209', N'Силикон серый 1x1', N'15')
INSERT [dbo].[productmaterial] ([ID], [Produkchiya], [NameMateriala], [NeobhodimoeKolvoMateriala]) VALUES (13, N'Респиратор противоаэрозольный 9312', N'Вата розовый 3x1', N'2')
INSERT [dbo].[productmaterial] ([ID], [Produkchiya], [NameMateriala], [NeobhodimoeKolvoMateriala]) VALUES (14, N'Респиратор 3M 8122', N'Вата розовый 1x0', N'12')
INSERT [dbo].[productmaterial] ([ID], [Produkchiya], [NameMateriala], [NeobhodimoeKolvoMateriala]) VALUES (15, N'Респиратор "Нева" 200', N'Резинка синий 1x0', N'19')
INSERT [dbo].[productmaterial] ([ID], [Produkchiya], [NameMateriala], [NeobhodimoeKolvoMateriala]) VALUES (17, N'Респиратор "Алина" АВ', N'Ткань розовый 0x0', N'20')
INSERT [dbo].[productmaterial] ([ID], [Produkchiya], [NameMateriala], [NeobhodimoeKolvoMateriala]) VALUES (18, N'Респиратор RK6021', N'Ткань розовый 0x0', N'9')
INSERT [dbo].[productmaterial] ([ID], [Produkchiya], [NameMateriala], [NeobhodimoeKolvoMateriala]) VALUES (20, N'Респиратор "Алина" 200', N'Резинка синий 1x0', N'4')
INSERT [dbo].[productmaterial] ([ID], [Produkchiya], [NameMateriala], [NeobhodimoeKolvoMateriala]) VALUES (21, N'Полумаска "Elipse" (Элипс) A2P3', N'Ткань розовый 0x0', N'2')
INSERT [dbo].[productmaterial] ([ID], [Produkchiya], [NameMateriala], [NeobhodimoeKolvoMateriala]) VALUES (22, N'Респиратор "Алина" П', N'Вата розовый 3x1', N'13')
INSERT [dbo].[productmaterial] ([ID], [Produkchiya], [NameMateriala], [NeobhodimoeKolvoMateriala]) VALUES (23, N'Респиратор "Юлия" 209', N'Резинка синий 1x0', N'6')
INSERT [dbo].[productmaterial] ([ID], [Produkchiya], [NameMateriala], [NeobhodimoeKolvoMateriala]) VALUES (24, N'Респиратор M1200VWC FFP2 Delta Plus (Дельта Плюс)', N'Силикон белый 1x3', N'19')
INSERT [dbo].[productmaterial] ([ID], [Produkchiya], [NameMateriala], [NeobhodimoeKolvoMateriala]) VALUES (26, N'Полумаска "Elipse" (Элипс) A2P3', N'Ткань синий 2x0', N'19')
INSERT [dbo].[productmaterial] ([ID], [Produkchiya], [NameMateriala], [NeobhodimoeKolvoMateriala]) VALUES (27, N'Респиратор 3M 8102 противоаэрозольный', N'Резинка синий 3x1', N'4')
INSERT [dbo].[productmaterial] ([ID], [Produkchiya], [NameMateriala], [NeobhodimoeKolvoMateriala]) VALUES (28, N'Полумаска "Elipse" (Элипс) ABEK1', N'Силикон белый 1x3', N'15')
INSERT [dbo].[productmaterial] ([ID], [Produkchiya], [NameMateriala], [NeobhodimoeKolvoMateriala]) VALUES (29, N'Полумаска "Elipse" (Элипс) ABEK1P3', N'Резинка синий 3x1', N'17')
INSERT [dbo].[productmaterial] ([ID], [Produkchiya], [NameMateriala], [NeobhodimoeKolvoMateriala]) VALUES (30, N'Респиратор 3M 8101 противоаэрозольный', N'Силикон белый 1x3', N'3')
INSERT [dbo].[productmaterial] ([ID], [Produkchiya], [NameMateriala], [NeobhodimoeKolvoMateriala]) VALUES (31, N'Респиратор "Алина" 110', N'Металлический стержень зеленый 2x2', N'1')
INSERT [dbo].[productmaterial] ([ID], [Produkchiya], [NameMateriala], [NeobhodimoeKolvoMateriala]) VALUES (33, N'Респиратор RK6021', N'Силикон белый 1x3', N'10')
INSERT [dbo].[productmaterial] ([ID], [Produkchiya], [NameMateriala], [NeobhodimoeKolvoMateriala]) VALUES (34, N'Респиратор с клапаном 9926', N'Резинка серый 3x3', N'19')
INSERT [dbo].[productmaterial] ([ID], [Produkchiya], [NameMateriala], [NeobhodimoeKolvoMateriala]) VALUES (35, N'Респиратор "Нева" 200', N'Силикон белый 1x3', N'13')
INSERT [dbo].[productmaterial] ([ID], [Produkchiya], [NameMateriala], [NeobhodimoeKolvoMateriala]) VALUES (36, N'Респиратор "Юлия" 219', N'Металлический стержень цветной 3x1', N'2')
INSERT [dbo].[productmaterial] ([ID], [Produkchiya], [NameMateriala], [NeobhodimoeKolvoMateriala]) VALUES (37, N'Респиратор M1300V2С FFP3 Delta Plus (Дельта Плюс)', N'Резинка серый 3x3', N'3')
INSERT [dbo].[productmaterial] ([ID], [Produkchiya], [NameMateriala], [NeobhodimoeKolvoMateriala]) VALUES (39, N'Респиратор M1300V2С FFP3 Delta Plus (Дельта Плюс)', N'Вата серый 3x2', N'13')
INSERT [dbo].[productmaterial] ([ID], [Produkchiya], [NameMateriala], [NeobhodimoeKolvoMateriala]) VALUES (40, N'Респиратор "Алина" 310', N'Резинка синий 3x2', N'19')
INSERT [dbo].[productmaterial] ([ID], [Produkchiya], [NameMateriala], [NeobhodimoeKolvoMateriala]) VALUES (41, N'Респиратор "Нева" 210', N'Металлический стержень синий 3x1', N'2')
INSERT [dbo].[productmaterial] ([ID], [Produkchiya], [NameMateriala], [NeobhodimoeKolvoMateriala]) VALUES (42, N'Респиратор 3M 8122', N'Металлический стержень синий 3x1', N'15')
INSERT [dbo].[productmaterial] ([ID], [Produkchiya], [NameMateriala], [NeobhodimoeKolvoMateriala]) VALUES (43, N'Респиратор M1200VWC FFP2 Delta Plus (Дельта Плюс)', N'Резинка зеленый 0x0', N'5')
INSERT [dbo].[productmaterial] ([ID], [Produkchiya], [NameMateriala], [NeobhodimoeKolvoMateriala]) VALUES (44, N'Респиратор Алина 211', N'Вата серый 1x1', N'19')
INSERT [dbo].[productmaterial] ([ID], [Produkchiya], [NameMateriala], [NeobhodimoeKolvoMateriala]) VALUES (45, N'Респиратор "Юлия" 219', N'Резинка серый 0x0', N'17')
INSERT [dbo].[productmaterial] ([ID], [Produkchiya], [NameMateriala], [NeobhodimoeKolvoMateriala]) VALUES (46, N'Респиратор У-2К', N'Резинка зеленый 0x0', N'19')
INSERT [dbo].[productmaterial] ([ID], [Produkchiya], [NameMateriala], [NeobhodimoeKolvoMateriala]) VALUES (47, N'Респиратор-полумаска "3М" серия 6000', N'Резинка серый 0x0', N'17')
INSERT [dbo].[productmaterial] ([ID], [Produkchiya], [NameMateriala], [NeobhodimoeKolvoMateriala]) VALUES (50, N'Респиратор "Юлия" 109', N'Ткань синий 0x2', N'18')
INSERT [dbo].[productmaterial] ([ID], [Produkchiya], [NameMateriala], [NeobhodimoeKolvoMateriala]) VALUES (51, N'Респиратор противоаэрозольный 9312', N'Резинка зеленый 0x3', N'20')
INSERT [dbo].[productmaterial] ([ID], [Produkchiya], [NameMateriala], [NeobhodimoeKolvoMateriala]) VALUES (52, N'Респиратор "Юлия" 109', N'Ткань белый 1x3', N'8')
INSERT [dbo].[productmaterial] ([ID], [Produkchiya], [NameMateriala], [NeobhodimoeKolvoMateriala]) VALUES (53, N'Респиратор "Юлия" 215', N'Резинка зеленый 1x0', N'1')
INSERT [dbo].[productmaterial] ([ID], [Produkchiya], [NameMateriala], [NeobhodimoeKolvoMateriala]) VALUES (54, N'Респиратор 9101 FFP1', N'Резинка цветной 0x1', N'14')
INSERT [dbo].[productmaterial] ([ID], [Produkchiya], [NameMateriala], [NeobhodimoeKolvoMateriala]) VALUES (55, N'Респиратор 9101 FFP1', N'Ткань белый 1x3', N'9')
INSERT [dbo].[productmaterial] ([ID], [Produkchiya], [NameMateriala], [NeobhodimoeKolvoMateriala]) VALUES (57, N'Респиратор 3M с клапаном 9162', N'Вата серый 3x0', N'11')
INSERT [dbo].[productmaterial] ([ID], [Produkchiya], [NameMateriala], [NeobhodimoeKolvoMateriala]) VALUES (58, N'Полумаска "Elipse" (Элипс) А1', N'Резинка цветной 0x1', N'20')
INSERT [dbo].[productmaterial] ([ID], [Produkchiya], [NameMateriala], [NeobhodimoeKolvoMateriala]) VALUES (60, N'Полумаска "Elipse" (Элипс) A1P3', N'Ткань синий 0x2', N'16')
INSERT [dbo].[productmaterial] ([ID], [Produkchiya], [NameMateriala], [NeobhodimoeKolvoMateriala]) VALUES (61, N'Респиратор 3M 8101 противоаэрозольный', N'Металлический стержень цветной 1x2', N'1')
INSERT [dbo].[productmaterial] ([ID], [Produkchiya], [NameMateriala], [NeobhodimoeKolvoMateriala]) VALUES (62, N'Респиратор "Алина" П', N'Ткань синий 0x2', N'1')
INSERT [dbo].[productmaterial] ([ID], [Produkchiya], [NameMateriala], [NeobhodimoeKolvoMateriala]) VALUES (63, N'Полумаска "Elipse" (Элипс) ABEK1', N'Вата серый 0x1', N'2')
INSERT [dbo].[productmaterial] ([ID], [Produkchiya], [NameMateriala], [NeobhodimoeKolvoMateriala]) VALUES (64, N'Респиратор "Юлия" 215', N'Ткань белый 3x2', N'1')
INSERT [dbo].[productmaterial] ([ID], [Produkchiya], [NameMateriala], [NeobhodimoeKolvoMateriala]) VALUES (65, N'Респиратор 3M 8122', N'Металлический стержень белый 3x1', N'2')
INSERT [dbo].[productmaterial] ([ID], [Produkchiya], [NameMateriala], [NeobhodimoeKolvoMateriala]) VALUES (66, N'Респиратор M1200VWC FFP2 Delta Plus (Дельта Плюс)', N'Металлический стержень синий 0x1', N'5')
INSERT [dbo].[productmaterial] ([ID], [Produkchiya], [NameMateriala], [NeobhodimoeKolvoMateriala]) VALUES (67, N'Респиратор "Юлия" 209', N'Металлический стержень синий 0x1', N'6')
INSERT [dbo].[productmaterial] ([ID], [Produkchiya], [NameMateriala], [NeobhodimoeKolvoMateriala]) VALUES (68, N'Респиратор M1300V2С FFP3 Delta Plus (Дельта Плюс)', N'Металлический стержень белый 0x2', N'10')
INSERT [dbo].[productmaterial] ([ID], [Produkchiya], [NameMateriala], [NeobhodimoeKolvoMateriala]) VALUES (69, N'Полумаска "Moon" (Элипс) P3', N'Металлический стержень белый 0x2', N'12')
INSERT [dbo].[productmaterial] ([ID], [Produkchiya], [NameMateriala], [NeobhodimoeKolvoMateriala]) VALUES (70, N'Респиратор RK6021', N'Металлический стержень белый 3x1', N'7')
INSERT [dbo].[productmaterial] ([ID], [Produkchiya], [NameMateriala], [NeobhodimoeKolvoMateriala]) VALUES (71, N'Респиратор Алина 210', N'Металлический стержень синий 0x1', N'4')
INSERT [dbo].[productmaterial] ([ID], [Produkchiya], [NameMateriala], [NeobhodimoeKolvoMateriala]) VALUES (72, N'Респиратор "Алина" 200', N'Металлический стержень белый 3x1', N'16')
INSERT [dbo].[productmaterial] ([ID], [Produkchiya], [NameMateriala], [NeobhodimoeKolvoMateriala]) VALUES (73, N'Респиратор противоаэрозольный 9322', N'Силикон розовый 1x3', N'4')
INSERT [dbo].[productmaterial] ([ID], [Produkchiya], [NameMateriala], [NeobhodimoeKolvoMateriala]) VALUES (74, N'Респиратор "Алина" П', N'Металлический стержень белый 3x1', N'18')
INSERT [dbo].[productmaterial] ([ID], [Produkchiya], [NameMateriala], [NeobhodimoeKolvoMateriala]) VALUES (75, N'Полумаска "Moon" (Элипс) P3', N'Силикон розовый 1x3', N'10')
INSERT [dbo].[productmaterial] ([ID], [Produkchiya], [NameMateriala], [NeobhodimoeKolvoMateriala]) VALUES (76, N'Полумаска "Elipse" (Элипс) A2P3', N'Металлический стержень синий 0x1', N'9')
INSERT [dbo].[productmaterial] ([ID], [Produkchiya], [NameMateriala], [NeobhodimoeKolvoMateriala]) VALUES (78, N'Респиратор противоаэрозольный 9312', N'Металлический стержень синий 0x1', N'9')
INSERT [dbo].[productmaterial] ([ID], [Produkchiya], [NameMateriala], [NeobhodimoeKolvoMateriala]) VALUES (79, N'Респиратор "Алина" 110', N'Силикон зеленый 0x3', N'9')
INSERT [dbo].[productmaterial] ([ID], [Produkchiya], [NameMateriala], [NeobhodimoeKolvoMateriala]) VALUES (80, N'Респиратор "Нева" 109', N'Металлический стержень белый 2x2', N'19')
INSERT [dbo].[productmaterial] ([ID], [Produkchiya], [NameMateriala], [NeobhodimoeKolvoMateriala]) VALUES (81, N'Респиратор "Юлия" 119', N'Ткань белый 3x2', N'3')
INSERT [dbo].[productmaterial] ([ID], [Produkchiya], [NameMateriala], [NeobhodimoeKolvoMateriala]) VALUES (82, N'Респиратор "Юлия" 215', N'Металлический стержень белый 0x2', N'19')
INSERT [dbo].[productmaterial] ([ID], [Produkchiya], [NameMateriala], [NeobhodimoeKolvoMateriala]) VALUES (83, N'Респиратор 3M 8102 противоаэрозольный', N'Ткань белый 3x2', N'14')
INSERT [dbo].[productmaterial] ([ID], [Produkchiya], [NameMateriala], [NeobhodimoeKolvoMateriala]) VALUES (84, N'Маска из нетканого материала KN95', N'Резинка зеленый 3x0', N'19')
INSERT [dbo].[productmaterial] ([ID], [Produkchiya], [NameMateriala], [NeobhodimoeKolvoMateriala]) VALUES (85, N'Респиратор "Нева" 310', N'Силикон белый 2x0', N'17')
INSERT [dbo].[productmaterial] ([ID], [Produkchiya], [NameMateriala], [NeobhodimoeKolvoMateriala]) VALUES (86, N'Респиратор "Нева" 310', N'Резинка зеленый 3x0', N'16')
INSERT [dbo].[productmaterial] ([ID], [Produkchiya], [NameMateriala], [NeobhodimoeKolvoMateriala]) VALUES (88, N'Респиратор 3M 8122', N'Силикон цветной 1x0', N'4')
INSERT [dbo].[productmaterial] ([ID], [Produkchiya], [NameMateriala], [NeobhodimoeKolvoMateriala]) VALUES (90, N'Респиратор 3M 8102 противоаэрозольный', N'Ткань белый 2x2', N'12')
INSERT [dbo].[productmaterial] ([ID], [Produkchiya], [NameMateriala], [NeobhodimoeKolvoMateriala]) VALUES (91, N'Респиратор "Нева" 109', N'Ткань серый 0x3', N'4')
INSERT [dbo].[productmaterial] ([ID], [Produkchiya], [NameMateriala], [NeobhodimoeKolvoMateriala]) VALUES (92, N'Респиратор 3M 8101 противоаэрозольный', N'Резинка цветной 0x2', N'3')
INSERT [dbo].[productmaterial] ([ID], [Produkchiya], [NameMateriala], [NeobhodimoeKolvoMateriala]) VALUES (93, N'Респиратор RK6020', N'Ткань серый 0x3', N'10')
INSERT [dbo].[productmaterial] ([ID], [Produkchiya], [NameMateriala], [NeobhodimoeKolvoMateriala]) VALUES (94, N'Респиратор противоаэрозольный 9312', N'Ткань серый 0x3', N'8')
INSERT [dbo].[productmaterial] ([ID], [Produkchiya], [NameMateriala], [NeobhodimoeKolvoMateriala]) VALUES (95, N'Полумаска "Elipse" (Элипс) A1P3', N'Силикон цветной 1x0', N'16')
INSERT [dbo].[productmaterial] ([ID], [Produkchiya], [NameMateriala], [NeobhodimoeKolvoMateriala]) VALUES (96, N'Полумаска "Elipse" (Элипс) A1P3', N'Вата розовый 3x3', N'3')
INSERT [dbo].[productmaterial] ([ID], [Produkchiya], [NameMateriala], [NeobhodimoeKolvoMateriala]) VALUES (97, N'Респиратор "Юлия" 219', N'Резинка цветной 0x2', N'2')
INSERT [dbo].[productmaterial] ([ID], [Produkchiya], [NameMateriala], [NeobhodimoeKolvoMateriala]) VALUES (98, N'Респиратор RK6030', N'Ткань серый 0x3', N'20')
INSERT [dbo].[productmaterial] ([ID], [Produkchiya], [NameMateriala], [NeobhodimoeKolvoMateriala]) VALUES (99, N'Респиратор RK6030', N'Резинка зеленый 3x0', N'1')
INSERT [dbo].[productmaterial] ([ID], [Produkchiya], [NameMateriala], [NeobhodimoeKolvoMateriala]) VALUES (100, N'Респиратор "Алина" 310', N'Ткань белый 2x2', N'8')
GO
INSERT [dbo].[products] ([ID], [NameProdukchii], [Artikyl], [MinStoimost], [Izobrajenie], [TipProdukchii], [KolvoChelovek], [NomerCheha]) VALUES (1, N'Полумаска "Moon" (Элипс) P3', N'59922', N'2690 руб.', N'\products\5fb128cd1e2b9.jpg', N'Полумаски', N'5', N'4')
INSERT [dbo].[products] ([ID], [NameProdukchii], [Artikyl], [MinStoimost], [Izobrajenie], [TipProdukchii], [KolvoChelovek], [NomerCheha]) VALUES (6, N'Маска из нетканого материала KN95', N'5030981', N'59 руб.', N'\products\5fb128cc719a6.jpg', N'Маски', N'3', N'5')
INSERT [dbo].[products] ([ID], [NameProdukchii], [Artikyl], [MinStoimost], [Izobrajenie], [TipProdukchii], [KolvoChelovek], [NomerCheha]) VALUES (7, N'Маска из нетканого материала с клапаном KN95', N'5029784', N'79 руб.', N'\products\5fb128cc753e3.jpg', N'Маски', N'3', N'4')
INSERT [dbo].[products] ([ID], [NameProdukchii], [Artikyl], [MinStoimost], [Izobrajenie], [TipProdukchii], [KolvoChelovek], [NomerCheha]) VALUES (8, N'Респиратор У-2К', N'58953', N'95 руб.', N'\products\5fb128cc7941f.jpg', N'Маски', N'2', N'6')
INSERT [dbo].[products] ([ID], [NameProdukchii], [Artikyl], [MinStoimost], [Izobrajenie], [TipProdukchii], [KolvoChelovek], [NomerCheha]) VALUES (9, N'Респиратор 9101 FFP1', N'5026662', N'189 руб.', N'\products\5fb128cc7d798.jpg', N'Респираторы', N'5', N'8')
INSERT [dbo].[products] ([ID], [NameProdukchii], [Artikyl], [MinStoimost], [Izobrajenie], [TipProdukchii], [KolvoChelovek], [NomerCheha]) VALUES (10, N'Респиратор противоаэрозольный 9312', N'59043', N'399 руб.', N'\products\5fb128cc80a10.jpg', N'Респираторы', N'4', N'7')
INSERT [dbo].[products] ([ID], [NameProdukchii], [Artikyl], [MinStoimost], [Izobrajenie], [TipProdukchii], [KolvoChelovek], [NomerCheha]) VALUES (12, N'Респиратор 3M 8101 противоаэрозольный', N'58375', N'149 руб.', N'\products\5fb128cc87b90.jpg', N'Респираторы', N'1', N'4')
INSERT [dbo].[products] ([ID], [NameProdukchii], [Artikyl], [MinStoimost], [Izobrajenie], [TipProdukchii], [KolvoChelovek], [NomerCheha]) VALUES (13, N'Респиратор "Алина" 110', N'59324', N'2690 руб.', N'\products\5fb128cc8b750.jpg', N'Респираторы', N'3', N'9')
INSERT [dbo].[products] ([ID], [NameProdukchii], [Artikyl], [MinStoimost], [Izobrajenie], [TipProdukchii], [KolvoChelovek], [NomerCheha]) VALUES (14, N'Респиратор "Алина" 100', N'58827', N'49 руб.', N'\products\5fb128cc8f4dd.jpg', N'Респираторы', N'2', N'8')
INSERT [dbo].[products] ([ID], [NameProdukchii], [Artikyl], [MinStoimost], [Izobrajenie], [TipProdukchii], [KolvoChelovek], [NomerCheha]) VALUES (15, N'Респиратор "Нева" 109', N'59898', N'59 руб.', N'\products\5fb128cc9414b.jpg', N'Респираторы', N'4', N'1')
INSERT [dbo].[products] ([ID], [NameProdukchii], [Artikyl], [MinStoimost], [Izobrajenie], [TipProdukchii], [KolvoChelovek], [NomerCheha]) VALUES (16, N'Респиратор "Юлия" 109', N'59474', N'6 руб.', N'\products\5fb128cc97ff4.jpg', N'Респираторы', N'4', N'8')
INSERT [dbo].[products] ([ID], [NameProdukchii], [Artikyl], [MinStoimost], [Izobrajenie], [TipProdukchii], [KolvoChelovek], [NomerCheha]) VALUES (17, N'Респиратор "Юлия" 119', N'59472', N'49 руб.', N'\products\5fb128cc9bd36.jpg', N'Респираторы', N'3', N'7')
INSERT [dbo].[products] ([ID], [NameProdukchii], [Artikyl], [MinStoimost], [Izobrajenie], [TipProdukchii], [KolvoChelovek], [NomerCheha]) VALUES (18, N'Респиратор 3M с клапаном 9162', N'5033136', N'59 руб.', N'\products\5fb128cc9f069.jpg', N'Респираторы', N'2', N'9')
INSERT [dbo].[products] ([ID], [NameProdukchii], [Artikyl], [MinStoimost], [Izobrajenie], [TipProdukchii], [KolvoChelovek], [NomerCheha]) VALUES (19, N'Респиратор 3M 9152 FFP2', N'5028048', N'79 руб.', N'\products\5fb128cca31d9.jpg', N'Респираторы', N'2', N'4')
INSERT [dbo].[products] ([ID], [NameProdukchii], [Artikyl], [MinStoimost], [Izobrajenie], [TipProdukchii], [KolvoChelovek], [NomerCheha]) VALUES (20, N'Респиратор противоаэрозольный 9322', N'58796', N'95 руб.', N'\products\5fb128cca6910.jpg', N'Респираторы', N'4', N'9')
INSERT [dbo].[products] ([ID], [NameProdukchii], [Artikyl], [MinStoimost], [Izobrajenie], [TipProdukchii], [KolvoChelovek], [NomerCheha]) VALUES (21, N'Респиратор с клапаном 9926', N'58568', N'189 руб.', N'\products\5fb128cca9d9b.jpg', N'Респираторы', N'3', N'4')
INSERT [dbo].[products] ([ID], [NameProdukchii], [Artikyl], [MinStoimost], [Izobrajenie], [TipProdukchii], [KolvoChelovek], [NomerCheha]) VALUES (22, N'Респиратор 3M 8102 противоаэрозольный', N'58466', N'399 руб.', N'\products\5fb128ccae21a.jpg', N'Респираторы', N'3', N'2')
INSERT [dbo].[products] ([ID], [NameProdukchii], [Artikyl], [MinStoimost], [Izobrajenie], [TipProdukchii], [KolvoChelovek], [NomerCheha]) VALUES (23, N'Респиратор 3M 8122', N'58445', N'299 руб.', N'\products\5fb128ccb1958.jpg', N'Респираторы', N'3', N'10')
INSERT [dbo].[products] ([ID], [NameProdukchii], [Artikyl], [MinStoimost], [Izobrajenie], [TipProdukchii], [KolvoChelovek], [NomerCheha]) VALUES (24, N'Респиратор M1200VWC FFP2 Delta Plus (Дельта Плюс)', N'5031919', N'149 руб.', N'\products\5fb128ccb4e8c.jpg', N'Респираторы', N'2', N'5')
INSERT [dbo].[products] ([ID], [NameProdukchii], [Artikyl], [MinStoimost], [Izobrajenie], [TipProdukchii], [KolvoChelovek], [NomerCheha]) VALUES (25, N'Респиратор RK6021', N'5030026', N'2690 руб.', N'\products\5fb128ccb97a0.jpg', N'Респираторы', N'5', N'4')
INSERT [dbo].[products] ([ID], [NameProdukchii], [Artikyl], [MinStoimost], [Izobrajenie], [TipProdukchii], [KolvoChelovek], [NomerCheha]) VALUES (26, N'Респиратор RK6020', N'5030020', N'49 руб.', N'\products\5fb128ccbd227.jpg', N'Респираторы', N'3', N'6')
INSERT [dbo].[products] ([ID], [NameProdukchii], [Artikyl], [MinStoimost], [Izobrajenie], [TipProdukchii], [KolvoChelovek], [NomerCheha]) VALUES (27, N'Респиратор Алина 210', N'5030072', N'59 руб.', N'\products\5fb128ccc1592.jpg', N'Респираторы', N'1', N'8')
INSERT [dbo].[products] ([ID], [NameProdukchii], [Artikyl], [MinStoimost], [Izobrajenie], [TipProdukchii], [KolvoChelovek], [NomerCheha]) VALUES (28, N'Респиратор Алина 211', N'5030062', N'6 руб.', N'\products\5fb128ccc4a86.jpg', N'Респираторы', N'1', N'7')
INSERT [dbo].[products] ([ID], [NameProdukchii], [Artikyl], [MinStoimost], [Izobrajenie], [TipProdukchii], [KolvoChelovek], [NomerCheha]) VALUES (29, N'Респиратор "Алина" 200', N'58826', N'49 руб.', N'\products\5fb128ccc9a9e.jpg', N'Респираторы', N'4', N'1')
INSERT [dbo].[products] ([ID], [NameProdukchii], [Artikyl], [MinStoimost], [Izobrajenie], [TipProdukchii], [KolvoChelovek], [NomerCheha]) VALUES (30, N'Респиратор "Алина" П', N'58825', N'59 руб.', N'\products\5fb128cccdbee.jpg', N'Респираторы', N'4', N'4')
INSERT [dbo].[products] ([ID], [NameProdukchii], [Artikyl], [MinStoimost], [Izobrajenie], [TipProdukchii], [KolvoChelovek], [NomerCheha]) VALUES (31, N'Респиратор "Алина" АВ', N'58584', N'79 руб.', N'\products\5fb128ccd133c.jpg', N'Респираторы', N'2', N'9')
INSERT [dbo].[products] ([ID], [NameProdukchii], [Artikyl], [MinStoimost], [Izobrajenie], [TipProdukchii], [KolvoChelovek], [NomerCheha]) VALUES (32, N'Респиратор "Нева" 210', N'59736', N'95 руб.', N'\products\5fb128ccd5dc2.jpg', N'Респираторы', N'1', N'8')
INSERT [dbo].[products] ([ID], [NameProdukchii], [Artikyl], [MinStoimost], [Izobrajenie], [TipProdukchii], [KolvoChelovek], [NomerCheha]) VALUES (33, N'Респиратор "Нева" 200', N'59735', N'189 руб.', N'\products\5fb128ccd8ff6.jpg', N'Респираторы', N'2', N'1')
INSERT [dbo].[products] ([ID], [NameProdukchii], [Artikyl], [MinStoimost], [Izobrajenie], [TipProdukchii], [KolvoChelovek], [NomerCheha]) VALUES (34, N'Респиратор полумаска НРЗ-0102 FFP2 NR D', N'5027238', N'399 руб.', N'\products\5fb128ccdca1e.jpg', N'Респираторы', N'4', N'8')
INSERT [dbo].[products] ([ID], [NameProdukchii], [Artikyl], [MinStoimost], [Izobrajenie], [TipProdukchii], [KolvoChelovek], [NomerCheha]) VALUES (35, N'Респиратор "Юлия" 219', N'59475', N'299 руб.', N'\products\5fb128cce0042.jpg', N'Респираторы', N'4', N'7')
INSERT [dbo].[products] ([ID], [NameProdukchii], [Artikyl], [MinStoimost], [Izobrajenie], [TipProdukchii], [KolvoChelovek], [NomerCheha]) VALUES (36, N'Респиратор "Юлия" 215', N'59473', N'149 руб.', N'\products\5fb128cce39fa.jpg', N'Респираторы', N'3', N'9')
INSERT [dbo].[products] ([ID], [NameProdukchii], [Artikyl], [MinStoimost], [Izobrajenie], [TipProdukchii], [KolvoChelovek], [NomerCheha]) VALUES (37, N'Респиратор "Юлия" 209', N'59470', N'2690 руб.', N'\products\5fb128cce7971.jpg', N'Респираторы', N'2', N'4')
INSERT [dbo].[products] ([ID], [NameProdukchii], [Artikyl], [MinStoimost], [Izobrajenie], [TipProdukchii], [KolvoChelovek], [NomerCheha]) VALUES (38, N'Респиратор M1300V2С FFP3 Delta Plus (Дельта Плюс)', N'5031924', N'49 руб.', N'\products\5fb128cceae7c.jpg', N'Респираторы', N'5', N'9')
INSERT [dbo].[products] ([ID], [NameProdukchii], [Artikyl], [MinStoimost], [Izobrajenie], [TipProdukchii], [KolvoChelovek], [NomerCheha]) VALUES (39, N'Респиратор RK6030', N'5030022', N'59 руб.', N'\products\5fb128ccef256.jpg', N'Респираторы', N'3', N'4')
INSERT [dbo].[products] ([ID], [NameProdukchii], [Artikyl], [MinStoimost], [Izobrajenie], [TipProdukchii], [KolvoChelovek], [NomerCheha]) VALUES (40, N'Респиратор "Алина" 310', N'58850', N'6 руб.', N'\products\5fb128ccf3dd2.jpg', N'Респираторы', N'5', N'2')
INSERT [dbo].[products] ([ID], [NameProdukchii], [Artikyl], [MinStoimost], [Izobrajenie], [TipProdukchii], [KolvoChelovek], [NomerCheha]) VALUES (41, N'Респиратор "Нева" 310', N'59739', N'49 руб.', N'\products\5fb128cd0544b.jpg', N'Респираторы', N'4', N'10')
INSERT [dbo].[products] ([ID], [NameProdukchii], [Artikyl], [MinStoimost], [Izobrajenie], [TipProdukchii], [KolvoChelovek], [NomerCheha]) VALUES (42, N'Респиратор "Юлия" 319', N'59471', N'59 руб.', N'\products\5fb128cd08e3f.jpg', N'Респираторы', N'4', N'5')
INSERT [dbo].[products] ([ID], [NameProdukchii], [Artikyl], [MinStoimost], [Izobrajenie], [TipProdukchii], [KolvoChelovek], [NomerCheha]) VALUES (43, N'Полумаска "Elipse" (Элипс) ABEK1P3', N'5027980', N'79 руб.', N'\products\5fb128cd0d0b1.jpg', N'Респираторы', N'2', N'4')
INSERT [dbo].[products] ([ID], [NameProdukchii], [Artikyl], [MinStoimost], [Izobrajenie], [TipProdukchii], [KolvoChelovek], [NomerCheha]) VALUES (44, N'Полумаска "Elipse" (Элипс) A2P3', N'5027965', N'95 руб.', N'\products\5fb128cd10ec2.jpg', N'Полумаски', N'4', N'6')
INSERT [dbo].[products] ([ID], [NameProdukchii], [Artikyl], [MinStoimost], [Izobrajenie], [TipProdukchii], [KolvoChelovek], [NomerCheha]) VALUES (45, N'Полумаска "Elipse" (Элипс) А1', N'5027958', N'189 руб.', N'\products\5fb128cd157f9.jpg', N'Полумаски', N'2', N'8')
INSERT [dbo].[products] ([ID], [NameProdukchii], [Artikyl], [MinStoimost], [Izobrajenie], [TipProdukchii], [KolvoChelovek], [NomerCheha]) VALUES (46, N'Полумаска "Elipse" (Элипс) P3 (анти-запах)', N'59923', N'399 руб.', N'\products\5fb128cd19baa.jpg', N'Полумаски', N'1', N'7')
INSERT [dbo].[products] ([ID], [NameProdukchii], [Artikyl], [MinStoimost], [Izobrajenie], [TipProdukchii], [KolvoChelovek], [NomerCheha]) VALUES (47, N'Полумаска "Elipse" (Элипс) P3', N'59922', N'299 руб.', N'\products\5fb128cd1e2b9.jpg', N'Полумаски', N'5', N'1')
INSERT [dbo].[products] ([ID], [NameProdukchii], [Artikyl], [MinStoimost], [Izobrajenie], [TipProdukchii], [KolvoChelovek], [NomerCheha]) VALUES (48, N'Полумаска "Elipse" (Элипс) A1P3', N'59921', N'149 руб.', N'\products\5fb128cd2215f.jpg', N'Полумаски', N'3', N'4')
INSERT [dbo].[products] ([ID], [NameProdukchii], [Artikyl], [MinStoimost], [Izobrajenie], [TipProdukchii], [KolvoChelovek], [NomerCheha]) VALUES (49, N'Полумаска "Elipse" (Элипс) ABEK1', N'59920', N'2690 руб.', N'\products\5fb128cd268bf.jpg', N'Полумаски', N'2', N'9')
INSERT [dbo].[products] ([ID], [NameProdukchii], [Artikyl], [MinStoimost], [Izobrajenie], [TipProdukchii], [KolvoChelovek], [NomerCheha]) VALUES (50, N'Респиратор-полумаска "3М" серия 6000', N'58974', N'49 руб.', N'\products\5fb128cd2ab69.jpg', N'Полумаски', N'5', N'8')
INSERT [dbo].[products] ([ID], [NameProdukchii], [Artikyl], [MinStoimost], [Izobrajenie], [TipProdukchii], [KolvoChelovek], [NomerCheha]) VALUES (51, N'Респиратор-полумаска Исток 300/400', N'59334', N'59 руб.', N'\products\5fb128cd2ef7a.jpg', N'Полумаски', N'4', N'1')
INSERT [dbo].[products] ([ID], [NameProdukchii], [Artikyl], [MinStoimost], [Izobrajenie], [TipProdukchii], [KolvoChelovek], [NomerCheha]) VALUES (52, N'Комплект для защиты дыхания J-SET 6500 JETA', N'4969295', N'6 руб.', N'\products\5fb128cd331c4.jpg', N'Полумаски', N'4', N'8')
INSERT [dbo].[products] ([ID], [NameProdukchii], [Artikyl], [MinStoimost], [Izobrajenie], [TipProdukchii], [KolvoChelovek], [NomerCheha]) VALUES (53, N'Лицевая маска Elipse Integra А1P3', N'5029610', N'49 руб.', N'\products\5fb128cd3674d.jpg', N'Полумаски', N'2', N'7')
INSERT [dbo].[products] ([ID], [NameProdukchii], [Artikyl], [MinStoimost], [Izobrajenie], [TipProdukchii], [KolvoChelovek], [NomerCheha]) VALUES (54, N'Лицевая маска Elipse Integra P3', N'5029091', N'59 руб.', N'\products\5fb128cd3af5c.jpg', N'На лицо', N'5', N'9')
INSERT [dbo].[products] ([ID], [NameProdukchii], [Artikyl], [MinStoimost], [Izobrajenie], [TipProdukchii], [KolvoChelovek], [NomerCheha]) VALUES (56, N'Полнолицевая маска 5950 JETA', N'4958042', N'95 руб.', N'\products\5fb128cd41ece.jpg', N'На лицо', N'1', N'9')
INSERT [dbo].[products] ([ID], [NameProdukchii], [Artikyl], [MinStoimost], [Izobrajenie], [TipProdukchii], [KolvoChelovek], [NomerCheha]) VALUES (59, N'Сменный фильтр 6510 A1 JETA', N'5028197', N'299 руб.', N'\products\5fb128cd50a70.jpg', N'Сменные части', N'5', N'10')
INSERT [dbo].[products] ([ID], [NameProdukchii], [Artikyl], [MinStoimost], [Izobrajenie], [TipProdukchii], [KolvoChelovek], [NomerCheha]) VALUES (60, N'Запасные фильтры к полумаске Elipse ABEK1P3', N'5027978', N'149 руб.', N'\products\5fb128cd5433e.jpg', N'Сменные части', N'3', N'5')
INSERT [dbo].[products] ([ID], [NameProdukchii], [Artikyl], [MinStoimost], [Izobrajenie], [TipProdukchii], [KolvoChelovek], [NomerCheha]) VALUES (61, N'Запасные фильтры к полумаске Elipse A2P3', N'5027961', N'2690 руб.', N'\products\5fb128cd5838d.jpg', N'Запасные части', N'2', N'4')
INSERT [dbo].[products] ([ID], [NameProdukchii], [Artikyl], [MinStoimost], [Izobrajenie], [TipProdukchii], [KolvoChelovek], [NomerCheha]) VALUES (62, N'Запасные фильтры к полумаске Elipse (Элипс) А1', N'5027921', N'49 руб.', N'\products\5fb128cd5bb7d.jpg', N'Запасные части', N'3', N'6')
INSERT [dbo].[products] ([ID], [NameProdukchii], [Artikyl], [MinStoimost], [Izobrajenie], [TipProdukchii], [KolvoChelovek], [NomerCheha]) VALUES (63, N'Сменный фильтр 6541 ABEK1 JETA', N'4958040', N'59 руб.', N'\products\5fb128cd5ff78.jpg', N'Сменные части', N'4', N'8')
INSERT [dbo].[products] ([ID], [NameProdukchii], [Artikyl], [MinStoimost], [Izobrajenie], [TipProdukchii], [KolvoChelovek], [NomerCheha]) VALUES (65, N'Запасные фильтры к полумаске "Elipse" (Элипс) P3', N'59918', N'49 руб.', N'\products\5fb128cd66df6.jpg', N'Запасные части', N'4', N'1')
INSERT [dbo].[products] ([ID], [NameProdukchii], [Artikyl], [MinStoimost], [Izobrajenie], [TipProdukchii], [KolvoChelovek], [NomerCheha]) VALUES (66, N'Запасные фильтры к полумаске "Elipse" (Элипс) A1P3', N'59917', N'59 руб.', N'\products\5fb128cd6a2b6.jpg', N'Запасные части', N'1', N'4')
INSERT [dbo].[products] ([ID], [NameProdukchii], [Artikyl], [MinStoimost], [Izobrajenie], [TipProdukchii], [KolvoChelovek], [NomerCheha]) VALUES (71, N'Держатель предфильтра 5101 JETA', N'4958041', N'299 руб.', N'\products\5fb128cd7d2cd.jpg', N'Запасные части', N'1', N'7')
INSERT [dbo].[products] ([ID], [NameProdukchii], [Artikyl], [MinStoimost], [Izobrajenie], [TipProdukchii], [KolvoChelovek], [NomerCheha]) VALUES (73, N'Предфильтр Р2 (4 шт) 6020 JETA', N'4958039', N'2690 руб.', N'\products\5fb128cd8417e.jpg', N'Держители', N'1', N'4')
INSERT [dbo].[products] ([ID], [NameProdukchii], [Artikyl], [MinStoimost], [Izobrajenie], [TipProdukchii], [KolvoChelovek], [NomerCheha]) VALUES (74, N'Предфильтры для масок и полумасок "3М" серии 6000', N'58917', N'49 руб.', N'\products\5fb128cd8818d.jpg', N'Предфильтры', N'5', N'9')
INSERT [dbo].[products] ([ID], [NameProdukchii], [Artikyl], [MinStoimost], [Izobrajenie], [TipProdukchii], [KolvoChelovek], [NomerCheha]) VALUES (75, N'Респиратор "Мадонна" 110', N'59324', N'59 руб.', N'\products\5fb128cc8b750.jpg', N'Респираторы', N'3', N'4')
INSERT [dbo].[products] ([ID], [NameProdukchii], [Artikyl], [MinStoimost], [Izobrajenie], [TipProdukchii], [KolvoChelovek], [NomerCheha]) VALUES (76, N'Респиратор "Витязь" 100', N'58827', N'6 руб.', N'\products\5fb128cc8f4dd.jpg', N'Респираторы', N'2', N'2')
INSERT [dbo].[products] ([ID], [NameProdukchii], [Artikyl], [MinStoimost], [Izobrajenie], [TipProdukchii], [KolvoChelovek], [NomerCheha]) VALUES (77, N'Респиратор "Серёга" 109', N'59898', N'49 руб.', N'\products\5fb128cc9414b.jpg', N'Респираторы', N'4', N'10')
INSERT [dbo].[products] ([ID], [NameProdukchii], [Artikyl], [MinStoimost], [Izobrajenie], [TipProdukchii], [KolvoChelovek], [NomerCheha]) VALUES (78, N'Респиратор "Амперметр" 109', N'59474', N'59 руб.', N'\products\5fb128cc97ff4.jpg', N'Респираторы', N'4', N'5')
INSERT [dbo].[products] ([ID], [NameProdukchii], [Artikyl], [MinStoimost], [Izobrajenie], [TipProdukchii], [KolvoChelovek], [NomerCheha]) VALUES (79, N'Респиратор "Фирюза" 110', N'59324', N'79 руб.', N'\products\5fb128cc8b750.jpg', N'Респираторы', N'3', N'4')
INSERT [dbo].[products] ([ID], [NameProdukchii], [Artikyl], [MinStoimost], [Izobrajenie], [TipProdukchii], [KolvoChelovek], [NomerCheha]) VALUES (80, N'Респиратор "Красный" 100', N'58827', N'95 руб.', N'\products\5fb128cc8f4dd.jpg', N'Респираторы', N'2', N'6')
INSERT [dbo].[products] ([ID], [NameProdukchii], [Artikyl], [MinStoimost], [Izobrajenie], [TipProdukchii], [KolvoChelovek], [NomerCheha]) VALUES (81, N'Респиратор "Волга" 109', N'59898', N'189 руб.', N'\products\5fb128cc9414b.jpg', N'Респираторы', N'4', N'8')
INSERT [dbo].[products] ([ID], [NameProdukchii], [Artikyl], [MinStoimost], [Izobrajenie], [TipProdukchii], [KolvoChelovek], [NomerCheha]) VALUES (82, N'Респиратор "Мадонна" 220', N'59474', N'399 руб.', N'\products\5fb128cc97ff4.jpg', N'Респираторы', N'4', N'7')
INSERT [dbo].[products] ([ID], [NameProdukchii], [Artikyl], [MinStoimost], [Izobrajenie], [TipProdukchii], [KolvoChelovek], [NomerCheha]) VALUES (83, N'Респиратор "Витязь" 220', N'59324', N'299 руб.', N'\products\5fb128cc8b750.jpg', N'Респираторы', N'3', N'1')
INSERT [dbo].[products] ([ID], [NameProdukchii], [Artikyl], [MinStoimost], [Izobrajenie], [TipProdukchii], [KolvoChelovek], [NomerCheha]) VALUES (84, N'Респиратор "Серёга" 220', N'58827', N'149 руб.', N'\products\5fb128cc8f4dd.jpg', N'Респираторы', N'2', N'4')
INSERT [dbo].[products] ([ID], [NameProdukchii], [Artikyl], [MinStoimost], [Izobrajenie], [TipProdukchii], [KolvoChelovek], [NomerCheha]) VALUES (85, N'Респиратор "Амперметр" 220', N'59898', N'2690 руб.', N'\products\5fb128cc9414b.jpg', N'Респираторы', N'4', N'9')
INSERT [dbo].[products] ([ID], [NameProdukchii], [Artikyl], [MinStoimost], [Izobrajenie], [TipProdukchii], [KolvoChelovek], [NomerCheha]) VALUES (86, N'Респиратор "Фирюза" 220', N'59474', N'49 руб.', N'\products\5fb128cc97ff4.jpg', N'Респираторы', N'4', N'8')
INSERT [dbo].[products] ([ID], [NameProdukchii], [Artikyl], [MinStoimost], [Izobrajenie], [TipProdukchii], [KolvoChelovek], [NomerCheha]) VALUES (87, N'Респиратор "Красный" 220', N'59324', N'59 руб.', N'\products\5fb128cc8b750.jpg', N'Респираторы', N'3', N'1')
INSERT [dbo].[products] ([ID], [NameProdukchii], [Artikyl], [MinStoimost], [Izobrajenie], [TipProdukchii], [KolvoChelovek], [NomerCheha]) VALUES (88, N'Респиратор "Волга" 220', N'58827', N'6 руб.', N'\products\5fb128cc8f4dd.jpg', N'Респираторы', N'2', N'8')
INSERT [dbo].[products] ([ID], [NameProdukchii], [Artikyl], [MinStoimost], [Izobrajenie], [TipProdukchii], [KolvoChelovek], [NomerCheha]) VALUES (89, N'Полумаска "Sunset" ABEK1P3', N'5027980', N'49 руб.', N'\products\5fb128cd0d0b1.jpg', N'Респираторы', N'2', N'7')
INSERT [dbo].[products] ([ID], [NameProdukchii], [Artikyl], [MinStoimost], [Izobrajenie], [TipProdukchii], [KolvoChelovek], [NomerCheha]) VALUES (90, N'Полумаска "Sunset" A2P3', N'5027965', N'59 руб.', N'\products\5fb128cd10ec2.jpg', N'Полумаски', N'4', N'9')
INSERT [dbo].[products] ([ID], [NameProdukchii], [Artikyl], [MinStoimost], [Izobrajenie], [TipProdukchii], [KolvoChelovek], [NomerCheha]) VALUES (91, N'Полумаска "Sunset" А1', N'5027958', N'79 руб.', N'\products\5fb128cd157f9.jpg', N'Полумаски', N'2', N'4')
INSERT [dbo].[products] ([ID], [NameProdukchii], [Artikyl], [MinStoimost], [Izobrajenie], [TipProdukchii], [KolvoChelovek], [NomerCheha]) VALUES (92, N'Полумаска "Sunset" P3 (анти-запах)', N'59923', N'95 руб.', N'\products\5fb128cd19baa.jpg', N'Полумаски', N'1', N'9')
INSERT [dbo].[products] ([ID], [NameProdukchii], [Artikyl], [MinStoimost], [Izobrajenie], [TipProdukchii], [KolvoChelovek], [NomerCheha]) VALUES (93, N'Полумаска "Sunset" (Элипс) P3', N'59922', N'189 руб.', N'\products\5fb128cd1e2b9.jpg', N'Полумаски', N'5', N'4')
INSERT [dbo].[products] ([ID], [NameProdukchii], [Artikyl], [MinStoimost], [Izobrajenie], [TipProdukchii], [KolvoChelovek], [NomerCheha]) VALUES (94, N'Полумаска "Sunset" A1P3', N'59921', N'399 руб.', N'\products\5fb128cd2215f.jpg', N'Полумаски', N'3', N'2')
INSERT [dbo].[products] ([ID], [NameProdukchii], [Artikyl], [MinStoimost], [Izobrajenie], [TipProdukchii], [KolvoChelovek], [NomerCheha]) VALUES (95, N'Полумаска "Sunset" ABEK1', N'59920', N'299 руб.', N'\products\5fb128cd268bf.jpg', N'Полумаски', N'2', N'10')
INSERT [dbo].[products] ([ID], [NameProdukchii], [Artikyl], [MinStoimost], [Izobrajenie], [TipProdukchii], [KolvoChelovek], [NomerCheha]) VALUES (96, N'Полумаска "Moon" ABEK1', N'59920', N'149 руб.', N'\products\5fb128cd268bf.jpg', N'Полумаски', N'2', N'5')
INSERT [dbo].[products] ([ID], [NameProdukchii], [Artikyl], [MinStoimost], [Izobrajenie], [TipProdukchii], [KolvoChelovek], [NomerCheha]) VALUES (97, N'Полумаска "Moon" ABEK1P3', N'5027980', N'2690 руб.', N'\products\5fb128cd0d0b1.jpg', N'Респираторы', N'2', N'4')
INSERT [dbo].[products] ([ID], [NameProdukchii], [Artikyl], [MinStoimost], [Izobrajenie], [TipProdukchii], [KolvoChelovek], [NomerCheha]) VALUES (98, N'Полумаска "Moon" A2P3', N'5027965', N'49 руб.', N'\products\5fb128cd10ec2.jpg', N'Полумаски', N'4', N'6')
INSERT [dbo].[products] ([ID], [NameProdukchii], [Artikyl], [MinStoimost], [Izobrajenie], [TipProdukchii], [KolvoChelovek], [NomerCheha]) VALUES (99, N'Полумаска "Moon" А1', N'5027958', N'59 руб.', N'\products\5fb128cd157f9.jpg', N'Полумаски', N'2', N'8')
INSERT [dbo].[products] ([ID], [NameProdukchii], [Artikyl], [MinStoimost], [Izobrajenie], [TipProdukchii], [KolvoChelovek], [NomerCheha]) VALUES (100, N'Полумаска "Moon" P3 (анти-запах)', N'59923', N'6 руб.', N'\products\5fb128cd19baa.jpg', N'Полумаски', N'1', N'7')
GO
USE [master]
GO
ALTER DATABASE [Namordnik] SET  READ_WRITE 
GO
