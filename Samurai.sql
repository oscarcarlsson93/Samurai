USE [master]
GO
/****** Object:  Database [EfSamurai]    Script Date: 2019-01-17 15:56:05 ******/
CREATE DATABASE [EfSamurai]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'EfSamurai', FILENAME = N'C:\Users\Administrator\EfSamurai.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'EfSamurai_log', FILENAME = N'C:\Users\Administrator\EfSamurai_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [EfSamurai] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [EfSamurai].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [EfSamurai] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [EfSamurai] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [EfSamurai] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [EfSamurai] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [EfSamurai] SET ARITHABORT OFF 
GO
ALTER DATABASE [EfSamurai] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [EfSamurai] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [EfSamurai] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [EfSamurai] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [EfSamurai] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [EfSamurai] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [EfSamurai] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [EfSamurai] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [EfSamurai] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [EfSamurai] SET  ENABLE_BROKER 
GO
ALTER DATABASE [EfSamurai] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [EfSamurai] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [EfSamurai] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [EfSamurai] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [EfSamurai] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [EfSamurai] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [EfSamurai] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [EfSamurai] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [EfSamurai] SET  MULTI_USER 
GO
ALTER DATABASE [EfSamurai] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [EfSamurai] SET DB_CHAINING OFF 
GO
ALTER DATABASE [EfSamurai] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [EfSamurai] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [EfSamurai] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [EfSamurai] SET QUERY_STORE = OFF
GO
USE [EfSamurai]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
USE [EfSamurai]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 2019-01-17 15:56:05 ******/
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
/****** Object:  Table [dbo].[BattleEvent]    Script Date: 2019-01-17 15:56:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BattleEvent](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Summary] [nvarchar](max) NULL,
	[Order] [datetime2](7) NOT NULL,
	[BattleLogId] [int] NULL,
 CONSTRAINT [PK_BattleEvent] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BattleLog]    Script Date: 2019-01-17 15:56:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BattleLog](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [int] NOT NULL,
 CONSTRAINT [PK_BattleLog] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Battles]    Script Date: 2019-01-17 15:56:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Battles](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[BattleName] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[Brutal] [bit] NOT NULL,
	[StartDate] [datetime2](7) NOT NULL,
	[EndDate] [datetime2](7) NOT NULL,
	[BattleLogId] [int] NULL,
 CONSTRAINT [PK_Battles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Hairstyle]    Script Date: 2019-01-17 15:56:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hairstyle](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[HairstyleName] [nvarchar](max) NULL,
 CONSTRAINT [PK_Hairstyle] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Quote]    Script Date: 2019-01-17 15:56:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Quote](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SamuraiId] [int] NOT NULL,
	[Message] [nvarchar](max) NULL,
	[ThreatLvl] [int] NOT NULL,
	[Styles] [int] NOT NULL,
 CONSTRAINT [PK_Quote] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SamuraiBattle]    Script Date: 2019-01-17 15:56:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SamuraiBattle](
	[SamuraiId] [int] NOT NULL,
	[BattleId] [int] NOT NULL,
 CONSTRAINT [PK_SamuraiBattle] PRIMARY KEY CLUSTERED 
(
	[BattleId] ASC,
	[SamuraiId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Samurais]    Script Date: 2019-01-17 15:56:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Samurais](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[FamilyName] [nvarchar](max) NULL,
	[HairId] [int] NULL,
 CONSTRAINT [PK_Samurais] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SecretIdentity]    Script Date: 2019-01-17 15:56:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SecretIdentity](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SamuraiId] [int] NOT NULL,
	[SecretName] [nvarchar](max) NULL,
 CONSTRAINT [PK_SecretIdentity] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190117125121_MyFirstMigration', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190117125712_NameMigration', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190117130138_FamilyNameMigration', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190117131447_QuoteMigration', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190117132157_QuoteCategoryMigration', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190117132546_HairstyleMigration', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190117133520_SecretIdentityMigration', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190117133943_BattleMigration', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190117134157_SamuraiBattleMigration', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190117135033_BattleLogMigration', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190117135256_BattleLogMigration2', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190117135851_SamuraiBattleMigration2', N'2.2.1-servicing-10028')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190117140832_BattleEventsMigration', N'2.2.1-servicing-10028')
/****** Object:  Index [IX_BattleEvent_BattleLogId]    Script Date: 2019-01-17 15:56:06 ******/
CREATE NONCLUSTERED INDEX [IX_BattleEvent_BattleLogId] ON [dbo].[BattleEvent]
(
	[BattleLogId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Battles_BattleLogId]    Script Date: 2019-01-17 15:56:06 ******/
CREATE NONCLUSTERED INDEX [IX_Battles_BattleLogId] ON [dbo].[Battles]
(
	[BattleLogId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Quote_SamuraiId]    Script Date: 2019-01-17 15:56:06 ******/
CREATE NONCLUSTERED INDEX [IX_Quote_SamuraiId] ON [dbo].[Quote]
(
	[SamuraiId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_SamuraiBattle_SamuraiId]    Script Date: 2019-01-17 15:56:06 ******/
CREATE NONCLUSTERED INDEX [IX_SamuraiBattle_SamuraiId] ON [dbo].[SamuraiBattle]
(
	[SamuraiId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Samurais_HairId]    Script Date: 2019-01-17 15:56:06 ******/
CREATE NONCLUSTERED INDEX [IX_Samurais_HairId] ON [dbo].[Samurais]
(
	[HairId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_SecretIdentity_SamuraiId]    Script Date: 2019-01-17 15:56:06 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_SecretIdentity_SamuraiId] ON [dbo].[SecretIdentity]
(
	[SamuraiId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Quote] ADD  DEFAULT ((0)) FOR [Styles]
GO
ALTER TABLE [dbo].[BattleEvent]  WITH CHECK ADD  CONSTRAINT [FK_BattleEvent_BattleLog_BattleLogId] FOREIGN KEY([BattleLogId])
REFERENCES [dbo].[BattleLog] ([Id])
GO
ALTER TABLE [dbo].[BattleEvent] CHECK CONSTRAINT [FK_BattleEvent_BattleLog_BattleLogId]
GO
ALTER TABLE [dbo].[Battles]  WITH CHECK ADD  CONSTRAINT [FK_Battles_BattleLog_BattleLogId] FOREIGN KEY([BattleLogId])
REFERENCES [dbo].[BattleLog] ([Id])
GO
ALTER TABLE [dbo].[Battles] CHECK CONSTRAINT [FK_Battles_BattleLog_BattleLogId]
GO
ALTER TABLE [dbo].[Quote]  WITH CHECK ADD  CONSTRAINT [FK_Quote_Samurais_SamuraiId] FOREIGN KEY([SamuraiId])
REFERENCES [dbo].[Samurais] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Quote] CHECK CONSTRAINT [FK_Quote_Samurais_SamuraiId]
GO
ALTER TABLE [dbo].[SamuraiBattle]  WITH CHECK ADD  CONSTRAINT [FK_SamuraiBattle_Battles_BattleId] FOREIGN KEY([BattleId])
REFERENCES [dbo].[Battles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SamuraiBattle] CHECK CONSTRAINT [FK_SamuraiBattle_Battles_BattleId]
GO
ALTER TABLE [dbo].[SamuraiBattle]  WITH CHECK ADD  CONSTRAINT [FK_SamuraiBattle_Samurais_SamuraiId] FOREIGN KEY([SamuraiId])
REFERENCES [dbo].[Samurais] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SamuraiBattle] CHECK CONSTRAINT [FK_SamuraiBattle_Samurais_SamuraiId]
GO
ALTER TABLE [dbo].[Samurais]  WITH CHECK ADD  CONSTRAINT [FK_Samurais_Hairstyle_HairId] FOREIGN KEY([HairId])
REFERENCES [dbo].[Hairstyle] ([Id])
GO
ALTER TABLE [dbo].[Samurais] CHECK CONSTRAINT [FK_Samurais_Hairstyle_HairId]
GO
ALTER TABLE [dbo].[SecretIdentity]  WITH CHECK ADD  CONSTRAINT [FK_SecretIdentity_Samurais_SamuraiId] FOREIGN KEY([SamuraiId])
REFERENCES [dbo].[Samurais] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SecretIdentity] CHECK CONSTRAINT [FK_SecretIdentity_Samurais_SamuraiId]
GO
USE [master]
GO
ALTER DATABASE [EfSamurai] SET  READ_WRITE 
GO
