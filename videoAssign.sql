USE [master]
GO
/****** Object:  Database [Videoassign]    Script Date: 03-08-2021 4.17.41 AM ******/
CREATE DATABASE [Videoassign]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Videoassign_Data', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Videoassign.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Videoassign_Log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Videoassign.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Videoassign] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Videoassign].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Videoassign] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Videoassign] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Videoassign] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Videoassign] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Videoassign] SET ARITHABORT OFF 
GO
ALTER DATABASE [Videoassign] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Videoassign] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Videoassign] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Videoassign] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Videoassign] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Videoassign] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Videoassign] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Videoassign] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Videoassign] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Videoassign] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Videoassign] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Videoassign] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Videoassign] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Videoassign] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Videoassign] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Videoassign] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Videoassign] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Videoassign] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Videoassign] SET  MULTI_USER 
GO
ALTER DATABASE [Videoassign] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Videoassign] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Videoassign] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Videoassign] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Videoassign] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Videoassign] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Videoassign', N'ON'
GO
ALTER DATABASE [Videoassign] SET QUERY_STORE = OFF
GO
USE [Videoassign]
GO
/****** Object:  Table [dbo].[Client]    Script Date: 03-08-2021 4.17.42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Client](
	[ClientID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[Mobile] [varchar](50) NULL,
	[Address] [varchar](50) NULL,
 CONSTRAINT [PK_Client] PRIMARY KEY CLUSTERED 
(
	[ClientID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[rental]    Script Date: 03-08-2021 4.17.42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[rental](
	[rentID] [int] IDENTITY(1,1) NOT NULL,
	[VideoID] [int] NULL,
	[CustomerID] [int] NULL,
	[IssuesDt] [varchar](50) NULL,
	[ReturnDt] [varchar](50) NULL,
 CONSTRAINT [PK_rental] PRIMARY KEY CLUSTERED 
(
	[rentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Video]    Script Date: 03-08-2021 4.17.42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Video](
	[VideoID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Ratting] [varchar](50) NULL,
	[Year] [varchar](50) NULL,
	[Cost] [varchar](50) NULL,
	[Copies] [varchar](50) NULL,
 CONSTRAINT [PK_Video] PRIMARY KEY CLUSTERED 
(
	[VideoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Client] ON 

INSERT [dbo].[Client] ([ClientID], [Name], [Email], [Mobile], [Address]) VALUES (1, N'ok', N'ok@gmil.com', N'95652', N'nz')
INSERT [dbo].[Client] ([ClientID], [Name], [Email], [Mobile], [Address]) VALUES (2, N'Akshay', N'ak@gmail.com', N'64156418145', N'Papatoe')
INSERT [dbo].[Client] ([ClientID], [Name], [Email], [Mobile], [Address]) VALUES (3, N'Gurpreet', N'gs@gmail.com', N'9874555252', N'Hamilton')
INSERT [dbo].[Client] ([ClientID], [Name], [Email], [Mobile], [Address]) VALUES (4, N'Visal', N'bs@gmail.com', N'645855585', N'Auckland')
SET IDENTITY_INSERT [dbo].[Client] OFF
GO
SET IDENTITY_INSERT [dbo].[rental] ON 

INSERT [dbo].[rental] ([rentID], [VideoID], [CustomerID], [IssuesDt], [ReturnDt]) VALUES (1, 1, 1, N'5/10/2021', N'5/10/2021')
INSERT [dbo].[rental] ([rentID], [VideoID], [CustomerID], [IssuesDt], [ReturnDt]) VALUES (2, 5, 3, N'03-08-2021', N'issues')
SET IDENTITY_INSERT [dbo].[rental] OFF
GO
SET IDENTITY_INSERT [dbo].[Video] ON 

INSERT [dbo].[Video] ([VideoID], [Name], [Ratting], [Year], [Cost], [Copies]) VALUES (1, N'k', N'4.5', N'2005', N'2', N'4')
INSERT [dbo].[Video] ([VideoID], [Name], [Ratting], [Year], [Cost], [Copies]) VALUES (2, N'PK', N'5', N'2020', N'5', N'5')
INSERT [dbo].[Video] ([VideoID], [Name], [Ratting], [Year], [Cost], [Copies]) VALUES (3, N'Titanic', N'4', N'2012', N'2', N'2')
INSERT [dbo].[Video] ([VideoID], [Name], [Ratting], [Year], [Cost], [Copies]) VALUES (4, N'DON', N'4', N'2013', N'2', N'8')
INSERT [dbo].[Video] ([VideoID], [Name], [Ratting], [Year], [Cost], [Copies]) VALUES (5, N'Rangli', N'4', N'2020', N'5', N'5')
INSERT [dbo].[Video] ([VideoID], [Name], [Ratting], [Year], [Cost], [Copies]) VALUES (6, N'Nazare', N'5', N'2018', N'5', N'2')
INSERT [dbo].[Video] ([VideoID], [Name], [Ratting], [Year], [Cost], [Copies]) VALUES (7, N'Yaada', N'2', N'2021', N'5', N'2')
INSERT [dbo].[Video] ([VideoID], [Name], [Ratting], [Year], [Cost], [Copies]) VALUES (8, N'Godzilla', N'3', N'2020', N'5', N'5')
INSERT [dbo].[Video] ([VideoID], [Name], [Ratting], [Year], [Cost], [Copies]) VALUES (9, N'Safari', N'3', N'2015', N'2', N'3')
INSERT [dbo].[Video] ([VideoID], [Name], [Ratting], [Year], [Cost], [Copies]) VALUES (10, N'Rama', N'2', N'2011', N'2', N'2')
INSERT [dbo].[Video] ([VideoID], [Name], [Ratting], [Year], [Cost], [Copies]) VALUES (11, N'Mongli', N'2', N'2011', N'2', N'2')
INSERT [dbo].[Video] ([VideoID], [Name], [Ratting], [Year], [Cost], [Copies]) VALUES (12, N'Dulhan', N'4', N'2015', N'2', N'1')
SET IDENTITY_INSERT [dbo].[Video] OFF
GO
USE [master]
GO
ALTER DATABASE [Videoassign] SET  READ_WRITE 
GO
