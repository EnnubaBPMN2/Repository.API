USE [Repository]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[User]') AND type in (N'U'))
ALTER TABLE [dbo].[User] DROP CONSTRAINT IF EXISTS [FK_User_Role_RoleId]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[User]') AND type in (N'U'))
ALTER TABLE [dbo].[User] DROP CONSTRAINT IF EXISTS [FK_User_ResetPasswordRequest_ResetPasswordRequestId]
GO
/****** Object:  Table [dbo].[User]    Script Date: 10/25/2019 7:21:19 AM ******/
DROP TABLE IF EXISTS [dbo].[User]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 10/25/2019 7:21:19 AM ******/
DROP TABLE IF EXISTS [dbo].[Role]
GO
/****** Object:  Table [dbo].[ResetPasswordRequest]    Script Date: 10/25/2019 7:21:19 AM ******/
DROP TABLE IF EXISTS [dbo].[ResetPasswordRequest]
GO
--USE [master]
--GO
--/****** Object:  Database [Repository]    Script Date: 10/25/2019 7:21:19 AM ******/
--DROP DATABASE IF EXISTS [Repository]
--GO
--/****** Object:  Database [Repository]    Script Date: 10/25/2019 7:21:19 AM ******/
--IF NOT EXISTS (SELECT name FROM sys.databases WHERE name = N'Repository')
--BEGIN
--CREATE DATABASE [Repository]
-- CONTAINMENT = NONE
-- ON  PRIMARY 
--( NAME = N'Repository', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Repository.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
-- LOG ON 
--( NAME = N'Repository_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Repository_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
--END
--GO
--ALTER DATABASE [Repository] SET COMPATIBILITY_LEVEL = 140
--GO
--IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
--begin
--EXEC [Repository].[dbo].[sp_fulltext_database] @action = 'enable'
--end
--GO
--ALTER DATABASE [Repository] SET ANSI_NULL_DEFAULT OFF 
--GO
--ALTER DATABASE [Repository] SET ANSI_NULLS OFF 
--GO
--ALTER DATABASE [Repository] SET ANSI_PADDING OFF 
--GO
--ALTER DATABASE [Repository] SET ANSI_WARNINGS OFF 
--GO
--ALTER DATABASE [Repository] SET ARITHABORT OFF 
--GO
--ALTER DATABASE [Repository] SET AUTO_CLOSE OFF 
--GO
--ALTER DATABASE [Repository] SET AUTO_SHRINK OFF 
--GO
--ALTER DATABASE [Repository] SET AUTO_UPDATE_STATISTICS ON 
--GO
--ALTER DATABASE [Repository] SET CURSOR_CLOSE_ON_COMMIT OFF 
--GO
--ALTER DATABASE [Repository] SET CURSOR_DEFAULT  GLOBAL 
--GO
--ALTER DATABASE [Repository] SET CONCAT_NULL_YIELDS_NULL OFF 
--GO
--ALTER DATABASE [Repository] SET NUMERIC_ROUNDABORT OFF 
--GO
--ALTER DATABASE [Repository] SET QUOTED_IDENTIFIER OFF 
--GO
--ALTER DATABASE [Repository] SET RECURSIVE_TRIGGERS OFF 
--GO
--ALTER DATABASE [Repository] SET  DISABLE_BROKER 
--GO
--ALTER DATABASE [Repository] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
--GO
--ALTER DATABASE [Repository] SET DATE_CORRELATION_OPTIMIZATION OFF 
--GO
--ALTER DATABASE [Repository] SET TRUSTWORTHY OFF 
--GO
--ALTER DATABASE [Repository] SET ALLOW_SNAPSHOT_ISOLATION OFF 
--GO
--ALTER DATABASE [Repository] SET PARAMETERIZATION SIMPLE 
--GO
--ALTER DATABASE [Repository] SET READ_COMMITTED_SNAPSHOT OFF 
--GO
--ALTER DATABASE [Repository] SET HONOR_BROKER_PRIORITY OFF 
--GO
--ALTER DATABASE [Repository] SET RECOVERY FULL 
--GO
--ALTER DATABASE [Repository] SET  MULTI_USER 
--GO
--ALTER DATABASE [Repository] SET PAGE_VERIFY CHECKSUM  
--GO
--ALTER DATABASE [Repository] SET DB_CHAINING OFF 
--GO
--ALTER DATABASE [Repository] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
--GO
--ALTER DATABASE [Repository] SET TARGET_RECOVERY_TIME = 60 SECONDS 
--GO
--ALTER DATABASE [Repository] SET DELAYED_DURABILITY = DISABLED 
--GO
--EXEC sys.sp_db_vardecimal_storage_format N'Repository', N'ON'
--GO
--ALTER DATABASE [Repository] SET QUERY_STORE = OFF
--GO
--USE [Repository]
--GO
--ALTER DATABASE SCOPED CONFIGURATION SET IDENTITY_CACHE = ON;
--GO
--ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
--GO
--ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
--GO
--ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
--GO
--ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
--GO
--ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
--GO
--ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
--GO
--ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
--GO
--ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
--GO
--USE [Repository]
--GO
/****** Object:  Table [dbo].[ResetPasswordRequest]    Script Date: 10/25/2019 7:21:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ResetPasswordRequest]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ResetPasswordRequest](
	[Id] [uniqueidentifier] NOT NULL,
	[UserId] [int] NOT NULL,
	[ResetRequestDateTime] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_ResetPasswordRequest] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Role]    Script Date: 10/25/2019 7:21:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Role]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Role](
	[Id] [tinyint] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[User]    Script Date: 10/25/2019 7:21:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[User]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[User](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Salt] [uniqueidentifier] NOT NULL,
	[Password] [nvarchar](50) NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[UserName] [nvarchar](50) NOT NULL,
	[RoleId] [tinyint] NOT NULL,
	[Status] [tinyint] NOT NULL,
	[ResetPasswordRequestId] [uniqueidentifier] NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
INSERT [dbo].[Role] ([Id], [Name]) VALUES (1, N'Administrador')
INSERT [dbo].[Role] ([Id], [Name]) VALUES (2, N'Captador de Datos')
INSERT [dbo].[Role] ([Id], [Name]) VALUES (3, N'Reporteador')
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([Id], [Salt], [Password], [LastName], [FirstName], [Email], [UserName], [RoleId], [Status], [ResetPasswordRequestId]) VALUES (1, N'acd2ce40-2ad4-4aa1-946e-10af4ba7057e', N'樔瀮ꑿ璷묳了秖ﺗ䎀㶅숳ᚁ횱㭃粖픽韑倐ꂕ䏀⢳옄贪唰职驧톓꡷', N'Administrador', N'Usuario', N'Hermann.Rosch@ennuba.com', N'admin', 1, 1, NULL)
SET IDENTITY_INSERT [dbo].[User] OFF
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_User_ResetPasswordRequest_ResetPasswordRequestId]') AND parent_object_id = OBJECT_ID(N'[dbo].[User]'))
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_ResetPasswordRequest_ResetPasswordRequestId] FOREIGN KEY([ResetPasswordRequestId])
REFERENCES [dbo].[ResetPasswordRequest] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_User_ResetPasswordRequest_ResetPasswordRequestId]') AND parent_object_id = OBJECT_ID(N'[dbo].[User]'))
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_ResetPasswordRequest_ResetPasswordRequestId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_User_Role_RoleId]') AND parent_object_id = OBJECT_ID(N'[dbo].[User]'))
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_Role_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Role] ([Id])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_User_Role_RoleId]') AND parent_object_id = OBJECT_ID(N'[dbo].[User]'))
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_Role_RoleId]
GO
USE [master]
GO
ALTER DATABASE [Repository] SET  READ_WRITE 
GO
