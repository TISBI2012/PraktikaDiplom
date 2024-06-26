USE [master]
GO
/****** Object:  Database [demoZAYAVKA]    Script Date: 17.04.2024 11:53:38 ******/
CREATE DATABASE [demoZAYAVKA]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'demoZAYAVKA', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.IS2012\MSSQL\DATA\demoZAYAVKA.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'demoZAYAVKA_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.IS2012\MSSQL\DATA\demoZAYAVKA_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [demoZAYAVKA] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [demoZAYAVKA].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [demoZAYAVKA] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [demoZAYAVKA] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [demoZAYAVKA] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [demoZAYAVKA] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [demoZAYAVKA] SET ARITHABORT OFF 
GO
ALTER DATABASE [demoZAYAVKA] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [demoZAYAVKA] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [demoZAYAVKA] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [demoZAYAVKA] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [demoZAYAVKA] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [demoZAYAVKA] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [demoZAYAVKA] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [demoZAYAVKA] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [demoZAYAVKA] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [demoZAYAVKA] SET  DISABLE_BROKER 
GO
ALTER DATABASE [demoZAYAVKA] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [demoZAYAVKA] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [demoZAYAVKA] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [demoZAYAVKA] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [demoZAYAVKA] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [demoZAYAVKA] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [demoZAYAVKA] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [demoZAYAVKA] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [demoZAYAVKA] SET  MULTI_USER 
GO
ALTER DATABASE [demoZAYAVKA] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [demoZAYAVKA] SET DB_CHAINING OFF 
GO
ALTER DATABASE [demoZAYAVKA] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [demoZAYAVKA] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [demoZAYAVKA] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [demoZAYAVKA] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [demoZAYAVKA] SET QUERY_STORE = OFF
GO
USE [demoZAYAVKA]
GO
/****** Object:  Table [dbo].[ApplicationExecutor]    Script Date: 17.04.2024 11:53:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ApplicationExecutor](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ApplicationId] [int] NOT NULL,
	[ExecutorId] [int] NOT NULL,
 CONSTRAINT [PK_ApplicationExecutor] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ApplicationPart]    Script Date: 17.04.2024 11:53:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ApplicationPart](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ApplicationId] [int] NOT NULL,
	[PartId] [int] NOT NULL,
 CONSTRAINT [PK_ApplicationPart] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ApplicationStatus]    Script Date: 17.04.2024 11:53:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ApplicationStatus](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_ApplicationStatus] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EquipmentType]    Script Date: 17.04.2024 11:53:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EquipmentType](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_EquipmentType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Priority]    Script Date: 17.04.2024 11:53:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Priority](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Priority] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProblemType]    Script Date: 17.04.2024 11:53:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProblemType](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_ProblemType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RepairApplication]    Script Date: 17.04.2024 11:53:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RepairApplication](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[EquipmentTypeId] [int] NOT NULL,
	[EquipmentSerialNumber] [nvarchar](100) NOT NULL,
	[Description] [nvarchar](500) NULL,
	[PriorityId] [int] NOT NULL,
	[DateTime] [datetime] NOT NULL,
	[ProblemTypeId] [int] NOT NULL,
	[ApplicationStatusId] [int] NOT NULL,
 CONSTRAINT [PK_RepairApplication] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RepairPart]    Script Date: 17.04.2024 11:53:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RepairPart](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_RepairPart] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Report]    Script Date: 17.04.2024 11:53:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Report](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ApplicationId] [int] NOT NULL,
	[WorkTime] [time](7) NOT NULL,
	[Materials] [nvarchar](500) NULL,
	[Price] [float] NOT NULL,
	[Reason] [nvarchar](100) NOT NULL,
	[Solution] [nvarchar](500) NOT NULL,
 CONSTRAINT [PK_Report] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 17.04.2024 11:53:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 17.04.2024 11:53:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[RoleId] [int] NOT NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ApplicationExecutor]  WITH CHECK ADD  CONSTRAINT [FK_ApplicationExecutor_RepairApplication] FOREIGN KEY([ApplicationId])
REFERENCES [dbo].[RepairApplication] ([Id])
GO
ALTER TABLE [dbo].[ApplicationExecutor] CHECK CONSTRAINT [FK_ApplicationExecutor_RepairApplication]
GO
ALTER TABLE [dbo].[ApplicationExecutor]  WITH CHECK ADD  CONSTRAINT [FK_ApplicationExecutor_User] FOREIGN KEY([ExecutorId])
REFERENCES [dbo].[User] ([Id])
GO
ALTER TABLE [dbo].[ApplicationExecutor] CHECK CONSTRAINT [FK_ApplicationExecutor_User]
GO
ALTER TABLE [dbo].[ApplicationPart]  WITH CHECK ADD  CONSTRAINT [FK_ApplicationPart_RepairApplication] FOREIGN KEY([ApplicationId])
REFERENCES [dbo].[RepairApplication] ([Id])
GO
ALTER TABLE [dbo].[ApplicationPart] CHECK CONSTRAINT [FK_ApplicationPart_RepairApplication]
GO
ALTER TABLE [dbo].[ApplicationPart]  WITH CHECK ADD  CONSTRAINT [FK_ApplicationPart_RepairPart] FOREIGN KEY([PartId])
REFERENCES [dbo].[RepairPart] ([Id])
GO
ALTER TABLE [dbo].[ApplicationPart] CHECK CONSTRAINT [FK_ApplicationPart_RepairPart]
GO
ALTER TABLE [dbo].[RepairApplication]  WITH CHECK ADD  CONSTRAINT [FK_RepairApplication_ApplicationStatus] FOREIGN KEY([ApplicationStatusId])
REFERENCES [dbo].[ApplicationStatus] ([Id])
GO
ALTER TABLE [dbo].[RepairApplication] CHECK CONSTRAINT [FK_RepairApplication_ApplicationStatus]
GO
ALTER TABLE [dbo].[RepairApplication]  WITH CHECK ADD  CONSTRAINT [FK_RepairApplication_EquipmentType] FOREIGN KEY([EquipmentTypeId])
REFERENCES [dbo].[EquipmentType] ([Id])
GO
ALTER TABLE [dbo].[RepairApplication] CHECK CONSTRAINT [FK_RepairApplication_EquipmentType]
GO
ALTER TABLE [dbo].[RepairApplication]  WITH CHECK ADD  CONSTRAINT [FK_RepairApplication_Priority] FOREIGN KEY([PriorityId])
REFERENCES [dbo].[Priority] ([Id])
GO
ALTER TABLE [dbo].[RepairApplication] CHECK CONSTRAINT [FK_RepairApplication_Priority]
GO
ALTER TABLE [dbo].[RepairApplication]  WITH CHECK ADD  CONSTRAINT [FK_RepairApplication_ProblemType] FOREIGN KEY([ProblemTypeId])
REFERENCES [dbo].[ProblemType] ([Id])
GO
ALTER TABLE [dbo].[RepairApplication] CHECK CONSTRAINT [FK_RepairApplication_ProblemType]
GO
ALTER TABLE [dbo].[RepairApplication]  WITH CHECK ADD  CONSTRAINT [FK_RepairApplication_User] FOREIGN KEY([UserId])
REFERENCES [dbo].[User] ([Id])
GO
ALTER TABLE [dbo].[RepairApplication] CHECK CONSTRAINT [FK_RepairApplication_User]
GO
ALTER TABLE [dbo].[Report]  WITH CHECK ADD  CONSTRAINT [FK_Report_RepairApplication] FOREIGN KEY([ApplicationId])
REFERENCES [dbo].[RepairApplication] ([Id])
GO
ALTER TABLE [dbo].[Report] CHECK CONSTRAINT [FK_Report_RepairApplication]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_Role] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Role] ([Id])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_Role]
GO
USE [master]
GO
ALTER DATABASE [demoZAYAVKA] SET  READ_WRITE 
GO
