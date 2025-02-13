USE [master]
GO
/****** Object:  Database [DnD_DB]    Script Date: 23.01.2025 12:21:59 ******/
CREATE DATABASE [DnD_DB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DnD_DB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\DnD_DB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'DnD_DB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\DnD_DB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [DnD_DB] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DnD_DB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DnD_DB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DnD_DB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DnD_DB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DnD_DB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DnD_DB] SET ARITHABORT OFF 
GO
ALTER DATABASE [DnD_DB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DnD_DB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DnD_DB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DnD_DB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DnD_DB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DnD_DB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DnD_DB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DnD_DB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DnD_DB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DnD_DB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [DnD_DB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DnD_DB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DnD_DB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DnD_DB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DnD_DB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DnD_DB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DnD_DB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DnD_DB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [DnD_DB] SET  MULTI_USER 
GO
ALTER DATABASE [DnD_DB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DnD_DB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DnD_DB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DnD_DB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [DnD_DB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [DnD_DB] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [DnD_DB] SET QUERY_STORE = ON
GO
ALTER DATABASE [DnD_DB] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [DnD_DB]
GO
/****** Object:  Table [dbo].[Niggative]    Script Date: 23.01.2025 12:21:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Niggative](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Char_Nigg] [nvarchar](100) NOT NULL,
	[Point_Nigg] [int] NOT NULL,
 CONSTRAINT [PK_Niggative] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Positive]    Script Date: 23.01.2025 12:21:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Positive](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Char_Pos] [nvarchar](100) NOT NULL,
	[Point_Pos] [int] NOT NULL,
 CONSTRAINT [PK_Positive] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Niggative] ON 

INSERT [dbo].[Niggative] ([ID], [Char_Nigg], [Point_Nigg]) VALUES (1, N'Пьяница', 2)
INSERT [dbo].[Niggative] ([ID], [Char_Nigg], [Point_Nigg]) VALUES (2, N'Невежа', 2)
INSERT [dbo].[Niggative] ([ID], [Char_Nigg], [Point_Nigg]) VALUES (3, N'Лентяй', 2)
INSERT [dbo].[Niggative] ([ID], [Char_Nigg], [Point_Nigg]) VALUES (4, N'Неуклюжий', 2)
INSERT [dbo].[Niggative] ([ID], [Char_Nigg], [Point_Nigg]) VALUES (5, N'Нелепый', 2)
INSERT [dbo].[Niggative] ([ID], [Char_Nigg], [Point_Nigg]) VALUES (6, N'Людоед', 4)
INSERT [dbo].[Niggative] ([ID], [Char_Nigg], [Point_Nigg]) VALUES (7, N'Богохульник', 2)
INSERT [dbo].[Niggative] ([ID], [Char_Nigg], [Point_Nigg]) VALUES (8, N'Клептоман', 4)
INSERT [dbo].[Niggative] ([ID], [Char_Nigg], [Point_Nigg]) VALUES (9, N'Чума', 4)
INSERT [dbo].[Niggative] ([ID], [Char_Nigg], [Point_Nigg]) VALUES (10, N'Невезучий', 5)
INSERT [dbo].[Niggative] ([ID], [Char_Nigg], [Point_Nigg]) VALUES (11, N'Враг народа', 5)
INSERT [dbo].[Niggative] ([ID], [Char_Nigg], [Point_Nigg]) VALUES (12, N'Страх', 10)
INSERT [dbo].[Niggative] ([ID], [Char_Nigg], [Point_Nigg]) VALUES (13, N'Неопытный', 10)
INSERT [dbo].[Niggative] ([ID], [Char_Nigg], [Point_Nigg]) VALUES (14, N'Дурак', 10)
SET IDENTITY_INSERT [dbo].[Niggative] OFF
GO
SET IDENTITY_INSERT [dbo].[Positive] ON 

INSERT [dbo].[Positive] ([ID], [Char_Pos], [Point_Pos]) VALUES (1, N'Харизматичный', 2)
INSERT [dbo].[Positive] ([ID], [Char_Pos], [Point_Pos]) VALUES (2, N'Книголюб', 2)
INSERT [dbo].[Positive] ([ID], [Char_Pos], [Point_Pos]) VALUES (3, N'Трудяга', 2)
INSERT [dbo].[Positive] ([ID], [Char_Pos], [Point_Pos]) VALUES (4, N'Осторожный', 2)
INSERT [dbo].[Positive] ([ID], [Char_Pos], [Point_Pos]) VALUES (5, N'Силач', 2)
INSERT [dbo].[Positive] ([ID], [Char_Pos], [Point_Pos]) VALUES (6, N'Трюкач', 2)
INSERT [dbo].[Positive] ([ID], [Char_Pos], [Point_Pos]) VALUES (7, N'Раб божий', 2)
INSERT [dbo].[Positive] ([ID], [Char_Pos], [Point_Pos]) VALUES (8, N'Золотые руки', 4)
INSERT [dbo].[Positive] ([ID], [Char_Pos], [Point_Pos]) VALUES (9, N'Ангел хранитель', 4)
INSERT [dbo].[Positive] ([ID], [Char_Pos], [Point_Pos]) VALUES (10, N'Ценный клиент', 5)
INSERT [dbo].[Positive] ([ID], [Char_Pos], [Point_Pos]) VALUES (11, N'Везунчик', 5)
INSERT [dbo].[Positive] ([ID], [Char_Pos], [Point_Pos]) VALUES (12, N'Несокрушимый', 10)
INSERT [dbo].[Positive] ([ID], [Char_Pos], [Point_Pos]) VALUES (13, N'Гибель героя', 10)
INSERT [dbo].[Positive] ([ID], [Char_Pos], [Point_Pos]) VALUES (14, N'Бывалый', 10)
SET IDENTITY_INSERT [dbo].[Positive] OFF
GO
USE [master]
GO
ALTER DATABASE [DnD_DB] SET  READ_WRITE 
GO
