USE [master]
GO
/****** Object:  Database [ASP_Projekat]    Script Date: 7/4/2020 6:17:36 PM ******/
CREATE DATABASE [ASP_Projekat]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ASP_Projekat', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\ASP_Projekat.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ASP_Projekat_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\ASP_Projekat_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [ASP_Projekat] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ASP_Projekat].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ASP_Projekat] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ASP_Projekat] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ASP_Projekat] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ASP_Projekat] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ASP_Projekat] SET ARITHABORT OFF 
GO
ALTER DATABASE [ASP_Projekat] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ASP_Projekat] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ASP_Projekat] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ASP_Projekat] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ASP_Projekat] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ASP_Projekat] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ASP_Projekat] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ASP_Projekat] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ASP_Projekat] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ASP_Projekat] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ASP_Projekat] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ASP_Projekat] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ASP_Projekat] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ASP_Projekat] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ASP_Projekat] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ASP_Projekat] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ASP_Projekat] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ASP_Projekat] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ASP_Projekat] SET  MULTI_USER 
GO
ALTER DATABASE [ASP_Projekat] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ASP_Projekat] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ASP_Projekat] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ASP_Projekat] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ASP_Projekat] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [ASP_Projekat] SET QUERY_STORE = OFF
GO
USE [ASP_Projekat]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 7/4/2020 6:17:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Actors]    Script Date: 7/4/2020 6:17:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Actors](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[ModifiedAt] [datetime2](7) NULL,
	[IsDeleted] [bit] NOT NULL,
	[FirstName] [nvarchar](max) NULL,
	[LastName] [nvarchar](max) NULL,
 CONSTRAINT [PK_Actors] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cinemas]    Script Date: 7/4/2020 6:17:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cinemas](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[ModifiedAt] [datetime2](7) NULL,
	[IsDeleted] [bit] NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Address] [nvarchar](max) NULL,
	[Phone] [nvarchar](max) NULL,
 CONSTRAINT [PK_Cinemas] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Genres]    Script Date: 7/4/2020 6:17:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Genres](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[ModifiedAt] [datetime2](7) NULL,
	[IsDeleted] [bit] NOT NULL,
	[Name] [nvarchar](max) NULL,
 CONSTRAINT [PK_Genres] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Movies]    Script Date: 7/4/2020 6:17:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Movies](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[ModifiedAt] [datetime2](7) NULL,
	[IsDeleted] [bit] NOT NULL,
	[Title] [nvarchar](max) NULL,
	[StartShowingFrom] [datetime2](7) NULL,
	[DurationMins] [int] NOT NULL,
	[Country] [nvarchar](max) NULL,
	[Year] [int] NOT NULL,
	[PictureUrl] [nvarchar](max) NULL,
 CONSTRAINT [PK_Movies] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Movies_Actors]    Script Date: 7/4/2020 6:17:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Movies_Actors](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[ModifiedAt] [datetime2](7) NULL,
	[IsDeleted] [bit] NOT NULL,
	[MovieId] [int] NULL,
	[ActorId] [int] NULL,
 CONSTRAINT [PK_Movies_Actors] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Movies_Cinemas]    Script Date: 7/4/2020 6:17:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Movies_Cinemas](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[ModifiedAt] [datetime2](7) NULL,
	[IsDeleted] [bit] NOT NULL,
	[MovieId] [int] NULL,
	[CinemaId] [int] NULL,
	[Ticket_Price] [nvarchar](max) NULL,
 CONSTRAINT [PK_Movies_Cinemas] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Movies_Genres]    Script Date: 7/4/2020 6:17:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Movies_Genres](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[ModifiedAt] [datetime2](7) NULL,
	[IsDeleted] [bit] NOT NULL,
	[MovieId] [int] NULL,
	[GenreId] [int] NULL,
 CONSTRAINT [PK_Movies_Genres] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 7/4/2020 6:17:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[ModifiedAt] [datetime2](7) NULL,
	[IsDeleted] [bit] NOT NULL,
	[FirstName] [nvarchar](max) NULL,
	[LastName] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[Password] [nvarchar](max) NULL,
	[Role] [nvarchar](max) NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190603204630_initial', N'2.2.4-servicing-10062')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190604150409_changed_phone_type', N'2.2.4-servicing-10062')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190612123408_added users', N'2.2.4-servicing-10062')
GO
SET IDENTITY_INSERT [dbo].[Actors] ON 

INSERT [dbo].[Actors] ([Id], [CreatedAt], [ModifiedAt], [IsDeleted], [FirstName], [LastName]) VALUES (1, CAST(N'2020-06-30T15:16:14.4494649' AS DateTime2), NULL, 0, N'Pera', N'Lazarevic')
INSERT [dbo].[Actors] ([Id], [CreatedAt], [ModifiedAt], [IsDeleted], [FirstName], [LastName]) VALUES (2, CAST(N'2020-06-30T15:18:02.6276120' AS DateTime2), NULL, 0, N'Zika', N'Zikic')
INSERT [dbo].[Actors] ([Id], [CreatedAt], [ModifiedAt], [IsDeleted], [FirstName], [LastName]) VALUES (6, CAST(N'2020-06-30T00:00:00.0000000' AS DateTime2), NULL, 0, N'Mika', N'Mikic')
INSERT [dbo].[Actors] ([Id], [CreatedAt], [ModifiedAt], [IsDeleted], [FirstName], [LastName]) VALUES (7, CAST(N'2020-06-29T00:00:00.0000000' AS DateTime2), NULL, 0, N'Aca', N'Acic')
INSERT [dbo].[Actors] ([Id], [CreatedAt], [ModifiedAt], [IsDeleted], [FirstName], [LastName]) VALUES (9, CAST(N'2020-06-28T00:00:00.0000000' AS DateTime2), NULL, 0, N'Alice ', N'Cooper')
INSERT [dbo].[Actors] ([Id], [CreatedAt], [ModifiedAt], [IsDeleted], [FirstName], [LastName]) VALUES (10, CAST(N'2020-06-27T00:00:00.0000000' AS DateTime2), NULL, 0, N'Nebojsa', N'Glogovac')
INSERT [dbo].[Actors] ([Id], [CreatedAt], [ModifiedAt], [IsDeleted], [FirstName], [LastName]) VALUES (11, CAST(N'2020-06-26T00:00:00.0000000' AS DateTime2), NULL, 0, N'Nikola', N'Kojo')
INSERT [dbo].[Actors] ([Id], [CreatedAt], [ModifiedAt], [IsDeleted], [FirstName], [LastName]) VALUES (12, CAST(N'2020-06-28T00:00:00.0000000' AS DateTime2), NULL, 0, N'Dgaromir', N'Bojanic')
INSERT [dbo].[Actors] ([Id], [CreatedAt], [ModifiedAt], [IsDeleted], [FirstName], [LastName]) VALUES (13, CAST(N'2020-06-30T00:00:00.0000000' AS DateTime2), NULL, 0, N'Bogdan', N'Diklic')
INSERT [dbo].[Actors] ([Id], [CreatedAt], [ModifiedAt], [IsDeleted], [FirstName], [LastName]) VALUES (14, CAST(N'2020-06-30T00:00:00.0000000' AS DateTime2), NULL, 0, N'Pavle ', N'Vulisic')
INSERT [dbo].[Actors] ([Id], [CreatedAt], [ModifiedAt], [IsDeleted], [FirstName], [LastName]) VALUES (15, CAST(N'2020-06-27T00:00:00.0000000' AS DateTime2), NULL, 0, N'Aleksandar', N'Bercek')
INSERT [dbo].[Actors] ([Id], [CreatedAt], [ModifiedAt], [IsDeleted], [FirstName], [LastName]) VALUES (16, CAST(N'2020-06-27T00:00:00.0000000' AS DateTime2), NULL, 0, N'Bata', N'Zivoinovic')
INSERT [dbo].[Actors] ([Id], [CreatedAt], [ModifiedAt], [IsDeleted], [FirstName], [LastName]) VALUES (17, CAST(N'2020-06-01T00:00:00.0000000' AS DateTime2), NULL, 0, N'Miki ', N'Manojlovic')
INSERT [dbo].[Actors] ([Id], [CreatedAt], [ModifiedAt], [IsDeleted], [FirstName], [LastName]) VALUES (18, CAST(N'2020-06-25T00:00:00.0000000' AS DateTime2), NULL, 0, N'Zarko', N'Lausevic')
INSERT [dbo].[Actors] ([Id], [CreatedAt], [ModifiedAt], [IsDeleted], [FirstName], [LastName]) VALUES (19, CAST(N'2020-06-26T00:00:00.0000000' AS DateTime2), NULL, 0, N'Milan', N'Gutovic')
INSERT [dbo].[Actors] ([Id], [CreatedAt], [ModifiedAt], [IsDeleted], [FirstName], [LastName]) VALUES (20, CAST(N'2020-06-28T00:00:00.0000000' AS DateTime2), NULL, 0, N'Vojislav', N'Brajovic')
INSERT [dbo].[Actors] ([Id], [CreatedAt], [ModifiedAt], [IsDeleted], [FirstName], [LastName]) VALUES (21, CAST(N'2020-06-30T00:00:00.0000000' AS DateTime2), NULL, 0, N'Dragan', N'Bjelogrlic')
INSERT [dbo].[Actors] ([Id], [CreatedAt], [ModifiedAt], [IsDeleted], [FirstName], [LastName]) VALUES (22, CAST(N'2020-06-16T00:00:00.0000000' AS DateTime2), NULL, 0, N'Dragan', N'Nikolic')
INSERT [dbo].[Actors] ([Id], [CreatedAt], [ModifiedAt], [IsDeleted], [FirstName], [LastName]) VALUES (23, CAST(N'2020-07-01T00:00:00.0000000' AS DateTime2), NULL, 0, N'Milorad', N'Mandic')
INSERT [dbo].[Actors] ([Id], [CreatedAt], [ModifiedAt], [IsDeleted], [FirstName], [LastName]) VALUES (24, CAST(N'2020-06-29T00:00:00.0000000' AS DateTime2), NULL, 0, N'Lazar', N'Ristovski')
INSERT [dbo].[Actors] ([Id], [CreatedAt], [ModifiedAt], [IsDeleted], [FirstName], [LastName]) VALUES (25, CAST(N'2020-06-30T00:00:00.0000000' AS DateTime2), NULL, 0, N'Mija', N'Aleksic')
SET IDENTITY_INSERT [dbo].[Actors] OFF
GO
SET IDENTITY_INSERT [dbo].[Cinemas] ON 

INSERT [dbo].[Cinemas] ([Id], [CreatedAt], [ModifiedAt], [IsDeleted], [Name], [Address], [Phone]) VALUES (1, CAST(N'2020-06-30T00:00:00.0000000' AS DateTime2), NULL, 0, N'Takvud', N'Mike Mikica 23', N'0601231232')
INSERT [dbo].[Cinemas] ([Id], [CreatedAt], [ModifiedAt], [IsDeleted], [Name], [Address], [Phone]) VALUES (2, CAST(N'2020-06-29T00:00:00.0000000' AS DateTime2), NULL, 0, N'Vozdovac', N'Brace Jerkovic 23', N'0603213211')
INSERT [dbo].[Cinemas] ([Id], [CreatedAt], [ModifiedAt], [IsDeleted], [Name], [Address], [Phone]) VALUES (3, CAST(N'2020-06-01T00:00:00.0000000' AS DateTime2), NULL, 0, N'Cineplexx 1', N'Shoping centar 1', N'0601233222')
INSERT [dbo].[Cinemas] ([Id], [CreatedAt], [ModifiedAt], [IsDeleted], [Name], [Address], [Phone]) VALUES (4, CAST(N'2020-06-30T00:00:00.0000000' AS DateTime2), NULL, 0, N'Cineplexx 2 ', N'Shoping centar 2 ', N'0607638761')
INSERT [dbo].[Cinemas] ([Id], [CreatedAt], [ModifiedAt], [IsDeleted], [Name], [Address], [Phone]) VALUES (5, CAST(N'2020-06-08T00:00:00.0000000' AS DateTime2), NULL, 0, N'Cineplexx 3 ', N'Shoping centar 3 ', N'0602132131')
INSERT [dbo].[Cinemas] ([Id], [CreatedAt], [ModifiedAt], [IsDeleted], [Name], [Address], [Phone]) VALUES (6, CAST(N'2020-06-26T00:00:00.0000000' AS DateTime2), NULL, 0, N'Cineplexx 4 ', N'Shoping centar 4 ', N'0602871631')
SET IDENTITY_INSERT [dbo].[Cinemas] OFF
GO
SET IDENTITY_INSERT [dbo].[Genres] ON 

INSERT [dbo].[Genres] ([Id], [CreatedAt], [ModifiedAt], [IsDeleted], [Name]) VALUES (1, CAST(N'2020-06-30T00:00:00.0000000' AS DateTime2), NULL, 0, N'Horor')
INSERT [dbo].[Genres] ([Id], [CreatedAt], [ModifiedAt], [IsDeleted], [Name]) VALUES (2, CAST(N'2020-06-30T00:00:00.0000000' AS DateTime2), NULL, 0, N'Komedija')
INSERT [dbo].[Genres] ([Id], [CreatedAt], [ModifiedAt], [IsDeleted], [Name]) VALUES (3, CAST(N'2020-06-30T00:00:00.0000000' AS DateTime2), NULL, 0, N'Drama')
INSERT [dbo].[Genres] ([Id], [CreatedAt], [ModifiedAt], [IsDeleted], [Name]) VALUES (4, CAST(N'2020-06-30T00:00:00.0000000' AS DateTime2), NULL, 0, N'Akcioni')
INSERT [dbo].[Genres] ([Id], [CreatedAt], [ModifiedAt], [IsDeleted], [Name]) VALUES (5, CAST(N'2020-06-30T00:00:00.0000000' AS DateTime2), NULL, 0, N'Triler')
INSERT [dbo].[Genres] ([Id], [CreatedAt], [ModifiedAt], [IsDeleted], [Name]) VALUES (6, CAST(N'2020-06-30T00:00:00.0000000' AS DateTime2), NULL, 0, N'Avantura')
INSERT [dbo].[Genres] ([Id], [CreatedAt], [ModifiedAt], [IsDeleted], [Name]) VALUES (7, CAST(N'2020-06-30T00:00:00.0000000' AS DateTime2), NULL, 0, N'Ljubavni')
INSERT [dbo].[Genres] ([Id], [CreatedAt], [ModifiedAt], [IsDeleted], [Name]) VALUES (8, CAST(N'2020-06-30T00:00:00.0000000' AS DateTime2), NULL, 0, N'Naucnofantasticni')
INSERT [dbo].[Genres] ([Id], [CreatedAt], [ModifiedAt], [IsDeleted], [Name]) VALUES (9, CAST(N'2020-06-30T00:00:00.0000000' AS DateTime2), NULL, 0, N'Dokumentarni')
SET IDENTITY_INSERT [dbo].[Genres] OFF
GO
SET IDENTITY_INSERT [dbo].[Movies] ON 

INSERT [dbo].[Movies] ([Id], [CreatedAt], [ModifiedAt], [IsDeleted], [Title], [StartShowingFrom], [DurationMins], [Country], [Year], [PictureUrl]) VALUES (1, CAST(N'2020-06-30T00:00:00.0000000' AS DateTime2), NULL, 0, N'Terminator 1', CAST(N'2020-07-30T00:00:00.0000000' AS DateTime2), 120, N'US', 2008, N'slika.png')
INSERT [dbo].[Movies] ([Id], [CreatedAt], [ModifiedAt], [IsDeleted], [Title], [StartShowingFrom], [DurationMins], [Country], [Year], [PictureUrl]) VALUES (2, CAST(N'2020-06-30T00:00:00.0000000' AS DateTime2), NULL, 0, N'Terminator 2 ', CAST(N'2020-08-30T00:00:00.0000000' AS DateTime2), 121, N'US', 2009, N'slika2.png')
INSERT [dbo].[Movies] ([Id], [CreatedAt], [ModifiedAt], [IsDeleted], [Title], [StartShowingFrom], [DurationMins], [Country], [Year], [PictureUrl]) VALUES (3, CAST(N'2020-06-30T00:00:00.0000000' AS DateTime2), NULL, 0, N'Terminator 3', CAST(N'2020-09-30T00:00:00.0000000' AS DateTime2), 122, N'US', 2008, N'slika3.png')
INSERT [dbo].[Movies] ([Id], [CreatedAt], [ModifiedAt], [IsDeleted], [Title], [StartShowingFrom], [DurationMins], [Country], [Year], [PictureUrl]) VALUES (4, CAST(N'2020-06-30T00:00:00.0000000' AS DateTime2), NULL, 0, N'Zikina dinastija 1', CAST(N'2020-07-28T00:00:00.0000000' AS DateTime2), 123, N'YU', 1985, N'Zika1.jpg')
INSERT [dbo].[Movies] ([Id], [CreatedAt], [ModifiedAt], [IsDeleted], [Title], [StartShowingFrom], [DurationMins], [Country], [Year], [PictureUrl]) VALUES (5, CAST(N'2020-06-28T00:00:00.0000000' AS DateTime2), NULL, 0, N'Zikina dinastija 2 ', CAST(N'2020-07-27T00:00:00.0000000' AS DateTime2), 176, N'YU', 1986, N'Zika2.jpg')
INSERT [dbo].[Movies] ([Id], [CreatedAt], [ModifiedAt], [IsDeleted], [Title], [StartShowingFrom], [DurationMins], [Country], [Year], [PictureUrl]) VALUES (6, CAST(N'2020-06-29T00:00:00.0000000' AS DateTime2), NULL, 0, N'Zikina dinastija 3 ', CAST(N'2020-07-25T00:00:00.0000000' AS DateTime2), 189, N'YU', 1987, N'Zika3.jpg')
INSERT [dbo].[Movies] ([Id], [CreatedAt], [ModifiedAt], [IsDeleted], [Title], [StartShowingFrom], [DurationMins], [Country], [Year], [PictureUrl]) VALUES (7, CAST(N'2020-06-30T00:00:00.0000000' AS DateTime2), NULL, 0, N'Zikina dinastija 4 ', CAST(N'2020-07-23T00:00:00.0000000' AS DateTime2), 190, N'YU', 1988, N'Zika3.jpg')
INSERT [dbo].[Movies] ([Id], [CreatedAt], [ModifiedAt], [IsDeleted], [Title], [StartShowingFrom], [DurationMins], [Country], [Year], [PictureUrl]) VALUES (8, CAST(N'2020-06-30T00:00:00.0000000' AS DateTime2), NULL, 0, N'Zikina dinastija 5', CAST(N'2020-08-16T00:00:00.0000000' AS DateTime2), 130, N'YU', 1989, N'Zika3.jpg')
INSERT [dbo].[Movies] ([Id], [CreatedAt], [ModifiedAt], [IsDeleted], [Title], [StartShowingFrom], [DurationMins], [Country], [Year], [PictureUrl]) VALUES (9, CAST(N'2020-07-20T00:00:00.0000000' AS DateTime2), NULL, 0, N'Zikina dinastija 6', CAST(N'2020-07-16T00:00:00.0000000' AS DateTime2), 150, N'YU', 1990, N'Zika3.jpg')
INSERT [dbo].[Movies] ([Id], [CreatedAt], [ModifiedAt], [IsDeleted], [Title], [StartShowingFrom], [DurationMins], [Country], [Year], [PictureUrl]) VALUES (10, CAST(N'2020-07-20T00:00:00.0000000' AS DateTime2), NULL, 0, N'Zikina dinastija 7', CAST(N'2020-07-18T00:00:00.0000000' AS DateTime2), 145, N'YU', 1991, N'Zika4.jpg')
INSERT [dbo].[Movies] ([Id], [CreatedAt], [ModifiedAt], [IsDeleted], [Title], [StartShowingFrom], [DurationMins], [Country], [Year], [PictureUrl]) VALUES (11, CAST(N'2020-07-18T00:00:00.0000000' AS DateTime2), NULL, 0, N'Zikina dinastija 8', CAST(N'2020-07-19T00:00:00.0000000' AS DateTime2), 134, N'YU', 1992, N'Zika5.jpg')
INSERT [dbo].[Movies] ([Id], [CreatedAt], [ModifiedAt], [IsDeleted], [Title], [StartShowingFrom], [DurationMins], [Country], [Year], [PictureUrl]) VALUES (12, CAST(N'2020-06-30T00:00:00.0000000' AS DateTime2), NULL, 0, N'Fast and Furious 1', CAST(N'2020-08-20T00:00:00.0000000' AS DateTime2), 130, N'US', 2004, N'FatAndCurious1.jpg')
INSERT [dbo].[Movies] ([Id], [CreatedAt], [ModifiedAt], [IsDeleted], [Title], [StartShowingFrom], [DurationMins], [Country], [Year], [PictureUrl]) VALUES (13, CAST(N'2020-06-30T00:00:00.0000000' AS DateTime2), NULL, 0, N'Fast and Furious 2 ', CAST(N'2020-08-19T00:00:00.0000000' AS DateTime2), 129, N'US', 2005, N'FatAndCurious2.jpg')
INSERT [dbo].[Movies] ([Id], [CreatedAt], [ModifiedAt], [IsDeleted], [Title], [StartShowingFrom], [DurationMins], [Country], [Year], [PictureUrl]) VALUES (14, CAST(N'2020-07-28T00:00:00.0000000' AS DateTime2), NULL, 0, N'Fast and Furious 3 ', CAST(N'2020-09-20T00:00:00.0000000' AS DateTime2), 130, N'US', 2006, N'FatAndCurious3.jpg')
INSERT [dbo].[Movies] ([Id], [CreatedAt], [ModifiedAt], [IsDeleted], [Title], [StartShowingFrom], [DurationMins], [Country], [Year], [PictureUrl]) VALUES (15, CAST(N'2020-08-01T00:00:00.0000000' AS DateTime2), NULL, 0, N'Fast and Furious', CAST(N'2020-08-18T00:00:00.0000000' AS DateTime2), 125, N'US', 2007, N'Fat.jpg')
INSERT [dbo].[Movies] ([Id], [CreatedAt], [ModifiedAt], [IsDeleted], [Title], [StartShowingFrom], [DurationMins], [Country], [Year], [PictureUrl]) VALUES (16, CAST(N'2020-06-30T00:00:00.0000000' AS DateTime2), NULL, 0, N'Fast and Furious 6 ', CAST(N'2020-09-01T00:00:00.0000000' AS DateTime2), 130, N'US', 2009, N'Fat2.jpg')
INSERT [dbo].[Movies] ([Id], [CreatedAt], [ModifiedAt], [IsDeleted], [Title], [StartShowingFrom], [DurationMins], [Country], [Year], [PictureUrl]) VALUES (17, CAST(N'2020-07-28T00:00:00.0000000' AS DateTime2), NULL, 0, N'Fast and Furious 8', CAST(N'2020-09-02T00:00:00.0000000' AS DateTime2), 132, N'US', 2010, N'Fat3.jpg')
INSERT [dbo].[Movies] ([Id], [CreatedAt], [ModifiedAt], [IsDeleted], [Title], [StartShowingFrom], [DurationMins], [Country], [Year], [PictureUrl]) VALUES (18, CAST(N'2020-06-30T00:00:00.0000000' AS DateTime2), NULL, 0, N'Fast and Furious 20', CAST(N'2020-10-03T00:00:00.0000000' AS DateTime2), 142, N'US', 2012, N'Fat4.jpg')
INSERT [dbo].[Movies] ([Id], [CreatedAt], [ModifiedAt], [IsDeleted], [Title], [StartShowingFrom], [DurationMins], [Country], [Year], [PictureUrl]) VALUES (19, CAST(N'2020-06-30T00:00:00.0000000' AS DateTime2), NULL, 0, N'Fast and Furious 29', CAST(N'2020-10-04T00:00:00.0000000' AS DateTime2), 152, N'US', 2013, N'Fat5.jpg')
INSERT [dbo].[Movies] ([Id], [CreatedAt], [ModifiedAt], [IsDeleted], [Title], [StartShowingFrom], [DurationMins], [Country], [Year], [PictureUrl]) VALUES (20, CAST(N'2020-06-30T00:00:00.0000000' AS DateTime2), NULL, 0, N'Fast and Furious 8', CAST(N'2020-11-03T00:00:00.0000000' AS DateTime2), 123, N'US', 2014, N'Fat6.jpg')
SET IDENTITY_INSERT [dbo].[Movies] OFF
GO
SET IDENTITY_INSERT [dbo].[Movies_Actors] ON 

INSERT [dbo].[Movies_Actors] ([Id], [CreatedAt], [ModifiedAt], [IsDeleted], [MovieId], [ActorId]) VALUES (1, CAST(N'2020-06-30T00:00:00.0000000' AS DateTime2), NULL, 0, 1, 1)
INSERT [dbo].[Movies_Actors] ([Id], [CreatedAt], [ModifiedAt], [IsDeleted], [MovieId], [ActorId]) VALUES (2, CAST(N'2020-06-30T00:00:00.0000000' AS DateTime2), NULL, 0, 2, 2)
INSERT [dbo].[Movies_Actors] ([Id], [CreatedAt], [ModifiedAt], [IsDeleted], [MovieId], [ActorId]) VALUES (3, CAST(N'2020-06-30T00:00:00.0000000' AS DateTime2), NULL, 0, 3, 6)
INSERT [dbo].[Movies_Actors] ([Id], [CreatedAt], [ModifiedAt], [IsDeleted], [MovieId], [ActorId]) VALUES (4, CAST(N'2020-06-30T00:00:00.0000000' AS DateTime2), NULL, 0, 4, 7)
INSERT [dbo].[Movies_Actors] ([Id], [CreatedAt], [ModifiedAt], [IsDeleted], [MovieId], [ActorId]) VALUES (6, CAST(N'2020-06-30T00:00:00.0000000' AS DateTime2), NULL, 0, 5, 9)
INSERT [dbo].[Movies_Actors] ([Id], [CreatedAt], [ModifiedAt], [IsDeleted], [MovieId], [ActorId]) VALUES (8, CAST(N'2020-06-30T00:00:00.0000000' AS DateTime2), NULL, 0, 6, 10)
INSERT [dbo].[Movies_Actors] ([Id], [CreatedAt], [ModifiedAt], [IsDeleted], [MovieId], [ActorId]) VALUES (9, CAST(N'2020-06-30T00:00:00.0000000' AS DateTime2), NULL, 0, 7, 11)
INSERT [dbo].[Movies_Actors] ([Id], [CreatedAt], [ModifiedAt], [IsDeleted], [MovieId], [ActorId]) VALUES (10, CAST(N'2020-06-30T00:00:00.0000000' AS DateTime2), NULL, 0, 8, 12)
INSERT [dbo].[Movies_Actors] ([Id], [CreatedAt], [ModifiedAt], [IsDeleted], [MovieId], [ActorId]) VALUES (11, CAST(N'2020-06-30T00:00:00.0000000' AS DateTime2), NULL, 0, 9, 13)
INSERT [dbo].[Movies_Actors] ([Id], [CreatedAt], [ModifiedAt], [IsDeleted], [MovieId], [ActorId]) VALUES (12, CAST(N'2020-06-30T00:00:00.0000000' AS DateTime2), NULL, 0, 10, 14)
INSERT [dbo].[Movies_Actors] ([Id], [CreatedAt], [ModifiedAt], [IsDeleted], [MovieId], [ActorId]) VALUES (13, CAST(N'2020-06-30T00:00:00.0000000' AS DateTime2), NULL, 0, 11, 15)
INSERT [dbo].[Movies_Actors] ([Id], [CreatedAt], [ModifiedAt], [IsDeleted], [MovieId], [ActorId]) VALUES (14, CAST(N'2020-06-30T00:00:00.0000000' AS DateTime2), NULL, 0, 12, 16)
INSERT [dbo].[Movies_Actors] ([Id], [CreatedAt], [ModifiedAt], [IsDeleted], [MovieId], [ActorId]) VALUES (15, CAST(N'2020-06-30T00:00:00.0000000' AS DateTime2), NULL, 0, 13, 17)
INSERT [dbo].[Movies_Actors] ([Id], [CreatedAt], [ModifiedAt], [IsDeleted], [MovieId], [ActorId]) VALUES (16, CAST(N'2020-06-30T00:00:00.0000000' AS DateTime2), NULL, 0, 14, 18)
INSERT [dbo].[Movies_Actors] ([Id], [CreatedAt], [ModifiedAt], [IsDeleted], [MovieId], [ActorId]) VALUES (17, CAST(N'2020-06-30T00:00:00.0000000' AS DateTime2), NULL, 0, 15, 19)
INSERT [dbo].[Movies_Actors] ([Id], [CreatedAt], [ModifiedAt], [IsDeleted], [MovieId], [ActorId]) VALUES (18, CAST(N'2020-06-30T00:00:00.0000000' AS DateTime2), NULL, 0, 16, 20)
INSERT [dbo].[Movies_Actors] ([Id], [CreatedAt], [ModifiedAt], [IsDeleted], [MovieId], [ActorId]) VALUES (19, CAST(N'2020-06-30T00:00:00.0000000' AS DateTime2), NULL, 0, 17, 21)
INSERT [dbo].[Movies_Actors] ([Id], [CreatedAt], [ModifiedAt], [IsDeleted], [MovieId], [ActorId]) VALUES (20, CAST(N'2020-06-30T00:00:00.0000000' AS DateTime2), NULL, 0, 18, 22)
INSERT [dbo].[Movies_Actors] ([Id], [CreatedAt], [ModifiedAt], [IsDeleted], [MovieId], [ActorId]) VALUES (21, CAST(N'2020-06-30T00:00:00.0000000' AS DateTime2), NULL, 0, 19, 23)
INSERT [dbo].[Movies_Actors] ([Id], [CreatedAt], [ModifiedAt], [IsDeleted], [MovieId], [ActorId]) VALUES (22, CAST(N'2020-06-30T00:00:00.0000000' AS DateTime2), NULL, 0, 20, 24)
INSERT [dbo].[Movies_Actors] ([Id], [CreatedAt], [ModifiedAt], [IsDeleted], [MovieId], [ActorId]) VALUES (26, CAST(N'2020-06-30T00:00:00.0000000' AS DateTime2), NULL, 0, 18, 20)
SET IDENTITY_INSERT [dbo].[Movies_Actors] OFF
GO
SET IDENTITY_INSERT [dbo].[Movies_Cinemas] ON 

INSERT [dbo].[Movies_Cinemas] ([Id], [CreatedAt], [ModifiedAt], [IsDeleted], [MovieId], [CinemaId], [Ticket_Price]) VALUES (1, CAST(N'2020-06-30T00:00:00.0000000' AS DateTime2), NULL, 0, 1, 1, N'20')
INSERT [dbo].[Movies_Cinemas] ([Id], [CreatedAt], [ModifiedAt], [IsDeleted], [MovieId], [CinemaId], [Ticket_Price]) VALUES (2, CAST(N'2020-06-30T00:00:00.0000000' AS DateTime2), NULL, 0, 2, 1, N'30')
INSERT [dbo].[Movies_Cinemas] ([Id], [CreatedAt], [ModifiedAt], [IsDeleted], [MovieId], [CinemaId], [Ticket_Price]) VALUES (3, CAST(N'2020-06-30T00:00:00.0000000' AS DateTime2), NULL, 0, 3, 2, N'45')
INSERT [dbo].[Movies_Cinemas] ([Id], [CreatedAt], [ModifiedAt], [IsDeleted], [MovieId], [CinemaId], [Ticket_Price]) VALUES (4, CAST(N'2020-06-30T00:00:00.0000000' AS DateTime2), NULL, 0, 4, 4, N'43')
INSERT [dbo].[Movies_Cinemas] ([Id], [CreatedAt], [ModifiedAt], [IsDeleted], [MovieId], [CinemaId], [Ticket_Price]) VALUES (5, CAST(N'2020-06-30T00:00:00.0000000' AS DateTime2), NULL, 0, 5, 2, N'12')
INSERT [dbo].[Movies_Cinemas] ([Id], [CreatedAt], [ModifiedAt], [IsDeleted], [MovieId], [CinemaId], [Ticket_Price]) VALUES (6, CAST(N'2020-06-30T00:00:00.0000000' AS DateTime2), NULL, 0, 6, 3, N'78')
INSERT [dbo].[Movies_Cinemas] ([Id], [CreatedAt], [ModifiedAt], [IsDeleted], [MovieId], [CinemaId], [Ticket_Price]) VALUES (7, CAST(N'2020-06-30T00:00:00.0000000' AS DateTime2), NULL, 0, 7, 5, N'23')
INSERT [dbo].[Movies_Cinemas] ([Id], [CreatedAt], [ModifiedAt], [IsDeleted], [MovieId], [CinemaId], [Ticket_Price]) VALUES (8, CAST(N'2020-06-30T00:00:00.0000000' AS DateTime2), NULL, 0, 8, 6, N'20')
INSERT [dbo].[Movies_Cinemas] ([Id], [CreatedAt], [ModifiedAt], [IsDeleted], [MovieId], [CinemaId], [Ticket_Price]) VALUES (9, CAST(N'2020-06-30T00:00:00.0000000' AS DateTime2), NULL, 0, 9, 6, N'23')
INSERT [dbo].[Movies_Cinemas] ([Id], [CreatedAt], [ModifiedAt], [IsDeleted], [MovieId], [CinemaId], [Ticket_Price]) VALUES (10, CAST(N'2020-06-30T00:00:00.0000000' AS DateTime2), NULL, 0, 10, 5, N'50')
INSERT [dbo].[Movies_Cinemas] ([Id], [CreatedAt], [ModifiedAt], [IsDeleted], [MovieId], [CinemaId], [Ticket_Price]) VALUES (11, CAST(N'2020-06-30T00:00:00.0000000' AS DateTime2), NULL, 0, 11, 4, N'30')
INSERT [dbo].[Movies_Cinemas] ([Id], [CreatedAt], [ModifiedAt], [IsDeleted], [MovieId], [CinemaId], [Ticket_Price]) VALUES (12, CAST(N'2020-06-30T00:00:00.0000000' AS DateTime2), NULL, 0, 12, 3, N'30')
INSERT [dbo].[Movies_Cinemas] ([Id], [CreatedAt], [ModifiedAt], [IsDeleted], [MovieId], [CinemaId], [Ticket_Price]) VALUES (13, CAST(N'2020-06-30T00:00:00.0000000' AS DateTime2), NULL, 0, 13, 2, N'50')
INSERT [dbo].[Movies_Cinemas] ([Id], [CreatedAt], [ModifiedAt], [IsDeleted], [MovieId], [CinemaId], [Ticket_Price]) VALUES (14, CAST(N'2020-06-30T00:00:00.0000000' AS DateTime2), NULL, 0, 14, 3, N'20')
INSERT [dbo].[Movies_Cinemas] ([Id], [CreatedAt], [ModifiedAt], [IsDeleted], [MovieId], [CinemaId], [Ticket_Price]) VALUES (15, CAST(N'2020-06-30T00:00:00.0000000' AS DateTime2), NULL, 0, 16, 2, N'20')
INSERT [dbo].[Movies_Cinemas] ([Id], [CreatedAt], [ModifiedAt], [IsDeleted], [MovieId], [CinemaId], [Ticket_Price]) VALUES (16, CAST(N'2020-06-30T00:00:00.0000000' AS DateTime2), NULL, 0, 17, 1, N'40')
INSERT [dbo].[Movies_Cinemas] ([Id], [CreatedAt], [ModifiedAt], [IsDeleted], [MovieId], [CinemaId], [Ticket_Price]) VALUES (17, CAST(N'2020-06-30T00:00:00.0000000' AS DateTime2), NULL, 0, 18, 2, N'25')
INSERT [dbo].[Movies_Cinemas] ([Id], [CreatedAt], [ModifiedAt], [IsDeleted], [MovieId], [CinemaId], [Ticket_Price]) VALUES (18, CAST(N'2020-06-30T00:00:00.0000000' AS DateTime2), NULL, 0, 19, 4, N'32')
INSERT [dbo].[Movies_Cinemas] ([Id], [CreatedAt], [ModifiedAt], [IsDeleted], [MovieId], [CinemaId], [Ticket_Price]) VALUES (19, CAST(N'2020-06-30T00:00:00.0000000' AS DateTime2), NULL, 0, 20, 1, N'45')
SET IDENTITY_INSERT [dbo].[Movies_Cinemas] OFF
GO
SET IDENTITY_INSERT [dbo].[Movies_Genres] ON 

INSERT [dbo].[Movies_Genres] ([Id], [CreatedAt], [ModifiedAt], [IsDeleted], [MovieId], [GenreId]) VALUES (1, CAST(N'2020-06-30T00:00:00.0000000' AS DateTime2), NULL, 0, 1, 1)
INSERT [dbo].[Movies_Genres] ([Id], [CreatedAt], [ModifiedAt], [IsDeleted], [MovieId], [GenreId]) VALUES (2, CAST(N'2020-06-30T00:00:00.0000000' AS DateTime2), NULL, 0, 2, 1)
INSERT [dbo].[Movies_Genres] ([Id], [CreatedAt], [ModifiedAt], [IsDeleted], [MovieId], [GenreId]) VALUES (3, CAST(N'2020-06-30T00:00:00.0000000' AS DateTime2), NULL, 0, 3, 2)
INSERT [dbo].[Movies_Genres] ([Id], [CreatedAt], [ModifiedAt], [IsDeleted], [MovieId], [GenreId]) VALUES (4, CAST(N'2020-06-30T00:00:00.0000000' AS DateTime2), NULL, 0, 4, 3)
INSERT [dbo].[Movies_Genres] ([Id], [CreatedAt], [ModifiedAt], [IsDeleted], [MovieId], [GenreId]) VALUES (5, CAST(N'2020-06-30T00:00:00.0000000' AS DateTime2), NULL, 0, 6, 4)
INSERT [dbo].[Movies_Genres] ([Id], [CreatedAt], [ModifiedAt], [IsDeleted], [MovieId], [GenreId]) VALUES (6, CAST(N'2020-06-30T00:00:00.0000000' AS DateTime2), NULL, 0, 7, 5)
INSERT [dbo].[Movies_Genres] ([Id], [CreatedAt], [ModifiedAt], [IsDeleted], [MovieId], [GenreId]) VALUES (7, CAST(N'2020-06-30T00:00:00.0000000' AS DateTime2), NULL, 0, 8, 6)
INSERT [dbo].[Movies_Genres] ([Id], [CreatedAt], [ModifiedAt], [IsDeleted], [MovieId], [GenreId]) VALUES (8, CAST(N'2020-06-30T00:00:00.0000000' AS DateTime2), NULL, 0, 8, 7)
INSERT [dbo].[Movies_Genres] ([Id], [CreatedAt], [ModifiedAt], [IsDeleted], [MovieId], [GenreId]) VALUES (9, CAST(N'2020-06-30T00:00:00.0000000' AS DateTime2), NULL, 0, 9, 8)
INSERT [dbo].[Movies_Genres] ([Id], [CreatedAt], [ModifiedAt], [IsDeleted], [MovieId], [GenreId]) VALUES (10, CAST(N'2020-06-30T00:00:00.0000000' AS DateTime2), NULL, 0, 10, 9)
INSERT [dbo].[Movies_Genres] ([Id], [CreatedAt], [ModifiedAt], [IsDeleted], [MovieId], [GenreId]) VALUES (12, CAST(N'2020-06-30T00:00:00.0000000' AS DateTime2), NULL, 0, 11, 9)
INSERT [dbo].[Movies_Genres] ([Id], [CreatedAt], [ModifiedAt], [IsDeleted], [MovieId], [GenreId]) VALUES (13, CAST(N'2020-06-30T00:00:00.0000000' AS DateTime2), NULL, 0, 12, 8)
INSERT [dbo].[Movies_Genres] ([Id], [CreatedAt], [ModifiedAt], [IsDeleted], [MovieId], [GenreId]) VALUES (14, CAST(N'2020-06-30T00:00:00.0000000' AS DateTime2), NULL, 0, 13, 2)
INSERT [dbo].[Movies_Genres] ([Id], [CreatedAt], [ModifiedAt], [IsDeleted], [MovieId], [GenreId]) VALUES (15, CAST(N'2020-06-30T00:00:00.0000000' AS DateTime2), NULL, 0, 14, 2)
INSERT [dbo].[Movies_Genres] ([Id], [CreatedAt], [ModifiedAt], [IsDeleted], [MovieId], [GenreId]) VALUES (16, CAST(N'2020-06-30T00:00:00.0000000' AS DateTime2), NULL, 0, 15, 3)
INSERT [dbo].[Movies_Genres] ([Id], [CreatedAt], [ModifiedAt], [IsDeleted], [MovieId], [GenreId]) VALUES (17, CAST(N'2020-06-30T00:00:00.0000000' AS DateTime2), NULL, 0, 16, 5)
INSERT [dbo].[Movies_Genres] ([Id], [CreatedAt], [ModifiedAt], [IsDeleted], [MovieId], [GenreId]) VALUES (18, CAST(N'2020-06-30T00:00:00.0000000' AS DateTime2), NULL, 0, 17, 4)
INSERT [dbo].[Movies_Genres] ([Id], [CreatedAt], [ModifiedAt], [IsDeleted], [MovieId], [GenreId]) VALUES (19, CAST(N'2020-06-30T00:00:00.0000000' AS DateTime2), NULL, 0, 18, 8)
INSERT [dbo].[Movies_Genres] ([Id], [CreatedAt], [ModifiedAt], [IsDeleted], [MovieId], [GenreId]) VALUES (20, CAST(N'2020-06-30T00:00:00.0000000' AS DateTime2), NULL, 0, 19, 7)
INSERT [dbo].[Movies_Genres] ([Id], [CreatedAt], [ModifiedAt], [IsDeleted], [MovieId], [GenreId]) VALUES (21, CAST(N'2020-06-30T00:00:00.0000000' AS DateTime2), NULL, 0, 20, 1)
SET IDENTITY_INSERT [dbo].[Movies_Genres] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([Id], [CreatedAt], [ModifiedAt], [IsDeleted], [FirstName], [LastName], [Email], [Password], [Role]) VALUES (1, CAST(N'2020-06-30T00:00:00.0000000' AS DateTime2), NULL, 0, N'Zika', N'Zikic', N'zika@gmail.com', N'zika123', N'User')
INSERT [dbo].[Users] ([Id], [CreatedAt], [ModifiedAt], [IsDeleted], [FirstName], [LastName], [Email], [Password], [Role]) VALUES (2, CAST(N'2020-06-30T00:00:00.0000000' AS DateTime2), NULL, 0, N'Pera', N'Peric', N'pera@gmail.com', N'pera123', N'User')
INSERT [dbo].[Users] ([Id], [CreatedAt], [ModifiedAt], [IsDeleted], [FirstName], [LastName], [Email], [Password], [Role]) VALUES (3, CAST(N'2020-06-30T00:00:00.0000000' AS DateTime2), NULL, 1, N'Mika', N'Mikic', N'mika@gmail.com', N'mika123', N'User')
INSERT [dbo].[Users] ([Id], [CreatedAt], [ModifiedAt], [IsDeleted], [FirstName], [LastName], [Email], [Password], [Role]) VALUES (4, CAST(N'2020-06-30T00:00:00.0000000' AS DateTime2), NULL, 0, N'Laza', N'Lazic', N'laza@gmail.com', N'laza123', N'Admin')
INSERT [dbo].[Users] ([Id], [CreatedAt], [ModifiedAt], [IsDeleted], [FirstName], [LastName], [Email], [Password], [Role]) VALUES (5, CAST(N'2020-06-30T00:00:00.0000000' AS DateTime2), NULL, 0, N'Steva', N'Stevic', N'steva@gmail.con', N'steva123', N'User')
INSERT [dbo].[Users] ([Id], [CreatedAt], [ModifiedAt], [IsDeleted], [FirstName], [LastName], [Email], [Password], [Role]) VALUES (6, CAST(N'2020-06-30T00:00:00.0000000' AS DateTime2), NULL, 0, N'Luka', N'Lukic', N'luka@gmai.com', N'luka123', N'Admin')
INSERT [dbo].[Users] ([Id], [CreatedAt], [ModifiedAt], [IsDeleted], [FirstName], [LastName], [Email], [Password], [Role]) VALUES (7, CAST(N'2020-06-30T00:00:00.0000000' AS DateTime2), NULL, 0, N'Luka', N'Vukotic', N'luka2@gmail.com', N'luka1234', N'User')
INSERT [dbo].[Users] ([Id], [CreatedAt], [ModifiedAt], [IsDeleted], [FirstName], [LastName], [Email], [Password], [Role]) VALUES (8, CAST(N'2020-06-30T00:00:00.0000000' AS DateTime2), NULL, 0, N'Pera', N'Petrovic', N'petrovic@gmail.com', N'petar123', N'User')
INSERT [dbo].[Users] ([Id], [CreatedAt], [ModifiedAt], [IsDeleted], [FirstName], [LastName], [Email], [Password], [Role]) VALUES (9, CAST(N'2020-06-30T00:00:00.0000000' AS DateTime2), NULL, 0, N'Nemanja', N'Nemanjic', N'nemanja@gmail.com', N'neca123', N'User')
INSERT [dbo].[Users] ([Id], [CreatedAt], [ModifiedAt], [IsDeleted], [FirstName], [LastName], [Email], [Password], [Role]) VALUES (10, CAST(N'2020-06-30T00:00:00.0000000' AS DateTime2), NULL, 0, N'Aca', N'Acic', N'aca@gmail.com', N'aca123', N'User')
INSERT [dbo].[Users] ([Id], [CreatedAt], [ModifiedAt], [IsDeleted], [FirstName], [LastName], [Email], [Password], [Role]) VALUES (11, CAST(N'2020-06-30T00:00:00.0000000' AS DateTime2), NULL, 0, N'Ivan', N'Ivanovic', N'ivan@gmail.com', N'ivan123', N'User')
INSERT [dbo].[Users] ([Id], [CreatedAt], [ModifiedAt], [IsDeleted], [FirstName], [LastName], [Email], [Password], [Role]) VALUES (12, CAST(N'2020-06-30T00:00:00.0000000' AS DateTime2), NULL, 0, N'Dragan', N'Dragovic', N'gagi@gmail.com', N'gagi123', N'User')
INSERT [dbo].[Users] ([Id], [CreatedAt], [ModifiedAt], [IsDeleted], [FirstName], [LastName], [Email], [Password], [Role]) VALUES (13, CAST(N'2020-06-30T00:00:00.0000000' AS DateTime2), NULL, 0, N'Miodrag', N'Petrovic', N'gigi@gmail.com', N'gigi123', N'User')
INSERT [dbo].[Users] ([Id], [CreatedAt], [ModifiedAt], [IsDeleted], [FirstName], [LastName], [Email], [Password], [Role]) VALUES (14, CAST(N'2020-06-30T00:00:00.0000000' AS DateTime2), NULL, 0, N'Tamara ', N'Petrovic', N'tama123@gmail.com', N'tam2321', N'User')
INSERT [dbo].[Users] ([Id], [CreatedAt], [ModifiedAt], [IsDeleted], [FirstName], [LastName], [Email], [Password], [Role]) VALUES (15, CAST(N'2020-06-30T00:00:00.0000000' AS DateTime2), NULL, 1, N'Ana', N'Anic', N'ana@gmail.com', N'ana123', N'User')
INSERT [dbo].[Users] ([Id], [CreatedAt], [ModifiedAt], [IsDeleted], [FirstName], [LastName], [Email], [Password], [Role]) VALUES (16, CAST(N'2020-06-30T00:00:00.0000000' AS DateTime2), NULL, 1, N'Danica', N'Danicic', N'danica@gmail.com', N'danica123', N'User')
INSERT [dbo].[Users] ([Id], [CreatedAt], [ModifiedAt], [IsDeleted], [FirstName], [LastName], [Email], [Password], [Role]) VALUES (17, CAST(N'2020-06-30T00:00:00.0000000' AS DateTime2), NULL, 0, N'Aleksandra', N'Zikic', N'alex@gmail.com', N'alex123', N'User')
INSERT [dbo].[Users] ([Id], [CreatedAt], [ModifiedAt], [IsDeleted], [FirstName], [LastName], [Email], [Password], [Role]) VALUES (18, CAST(N'2020-06-30T00:00:00.0000000' AS DateTime2), NULL, 0, N'Predrag', N'Nestorovic', N'pedja@gmail.com', N'pedja123', N'User')
INSERT [dbo].[Users] ([Id], [CreatedAt], [ModifiedAt], [IsDeleted], [FirstName], [LastName], [Email], [Password], [Role]) VALUES (19, CAST(N'2020-06-30T00:00:00.0000000' AS DateTime2), NULL, 0, N'Petar', N'Jovicic', N'pera@gmail.comn', N'pera123423', N'User')
INSERT [dbo].[Users] ([Id], [CreatedAt], [ModifiedAt], [IsDeleted], [FirstName], [LastName], [Email], [Password], [Role]) VALUES (20, CAST(N'2020-06-30T00:00:00.0000000' AS DateTime2), NULL, 0, N'Jovan', N'Ruljevic', N'jovan@gmail.com', N'jovan123', N'User')
INSERT [dbo].[Users] ([Id], [CreatedAt], [ModifiedAt], [IsDeleted], [FirstName], [LastName], [Email], [Password], [Role]) VALUES (21, CAST(N'2020-06-30T00:00:00.0000000' AS DateTime2), NULL, 0, N'Zika', N'Marinkovic', N'zika.zika@gmail.com', N'zika123', N'User')
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
/****** Object:  Index [IX_Movies_Actors_ActorId]    Script Date: 7/4/2020 6:17:37 PM ******/
CREATE NONCLUSTERED INDEX [IX_Movies_Actors_ActorId] ON [dbo].[Movies_Actors]
(
	[ActorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Movies_Actors_MovieId]    Script Date: 7/4/2020 6:17:37 PM ******/
CREATE NONCLUSTERED INDEX [IX_Movies_Actors_MovieId] ON [dbo].[Movies_Actors]
(
	[MovieId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Movies_Cinemas_CinemaId]    Script Date: 7/4/2020 6:17:37 PM ******/
CREATE NONCLUSTERED INDEX [IX_Movies_Cinemas_CinemaId] ON [dbo].[Movies_Cinemas]
(
	[CinemaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Movies_Cinemas_MovieId]    Script Date: 7/4/2020 6:17:37 PM ******/
CREATE NONCLUSTERED INDEX [IX_Movies_Cinemas_MovieId] ON [dbo].[Movies_Cinemas]
(
	[MovieId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Movies_Genres_GenreId]    Script Date: 7/4/2020 6:17:37 PM ******/
CREATE NONCLUSTERED INDEX [IX_Movies_Genres_GenreId] ON [dbo].[Movies_Genres]
(
	[GenreId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Movies_Genres_MovieId]    Script Date: 7/4/2020 6:17:37 PM ******/
CREATE NONCLUSTERED INDEX [IX_Movies_Genres_MovieId] ON [dbo].[Movies_Genres]
(
	[MovieId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Movies_Actors]  WITH CHECK ADD  CONSTRAINT [FK_Movies_Actors_Actors_ActorId] FOREIGN KEY([ActorId])
REFERENCES [dbo].[Actors] ([Id])
GO
ALTER TABLE [dbo].[Movies_Actors] CHECK CONSTRAINT [FK_Movies_Actors_Actors_ActorId]
GO
ALTER TABLE [dbo].[Movies_Actors]  WITH CHECK ADD  CONSTRAINT [FK_Movies_Actors_Movies_MovieId] FOREIGN KEY([MovieId])
REFERENCES [dbo].[Movies] ([Id])
GO
ALTER TABLE [dbo].[Movies_Actors] CHECK CONSTRAINT [FK_Movies_Actors_Movies_MovieId]
GO
ALTER TABLE [dbo].[Movies_Cinemas]  WITH CHECK ADD  CONSTRAINT [FK_Movies_Cinemas_Cinemas_CinemaId] FOREIGN KEY([CinemaId])
REFERENCES [dbo].[Cinemas] ([Id])
GO
ALTER TABLE [dbo].[Movies_Cinemas] CHECK CONSTRAINT [FK_Movies_Cinemas_Cinemas_CinemaId]
GO
ALTER TABLE [dbo].[Movies_Cinemas]  WITH CHECK ADD  CONSTRAINT [FK_Movies_Cinemas_Movies_MovieId] FOREIGN KEY([MovieId])
REFERENCES [dbo].[Movies] ([Id])
GO
ALTER TABLE [dbo].[Movies_Cinemas] CHECK CONSTRAINT [FK_Movies_Cinemas_Movies_MovieId]
GO
ALTER TABLE [dbo].[Movies_Genres]  WITH CHECK ADD  CONSTRAINT [FK_Movies_Genres_Genres_GenreId] FOREIGN KEY([GenreId])
REFERENCES [dbo].[Genres] ([Id])
GO
ALTER TABLE [dbo].[Movies_Genres] CHECK CONSTRAINT [FK_Movies_Genres_Genres_GenreId]
GO
ALTER TABLE [dbo].[Movies_Genres]  WITH CHECK ADD  CONSTRAINT [FK_Movies_Genres_Movies_MovieId] FOREIGN KEY([MovieId])
REFERENCES [dbo].[Movies] ([Id])
GO
ALTER TABLE [dbo].[Movies_Genres] CHECK CONSTRAINT [FK_Movies_Genres_Movies_MovieId]
GO
USE [master]
GO
ALTER DATABASE [ASP_Projekat] SET  READ_WRITE 
GO
