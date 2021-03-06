USE [master] 
GO
/****** Object:  Database [LA_CROIX_DU_SUD]    Script Date: 04/20/2008 11:56:21 ******/
IF NOT EXISTS (SELECT name FROM sys.databases WHERE name = N'LA_CROIX_DU_SUD')
BEGIN
CREATE DATABASE [LA_CROIX_DU_SUD] ON  PRIMARY 
( NAME = N'LA_CROIX_DU_SUD_1_Data', FILENAME = N'D:\MSSQL\Data\LA_CROIX_DU_SUD.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 10%)
 LOG ON 
( NAME = N'LA_CROIX_DU_SUD_1_Log', FILENAME = N'D:\MSSQL\Data\LA_CROIX_DU_SUD_1.ldf' , SIZE = 6144KB , MAXSIZE = 2048GB , FILEGROWTH = 1024KB )
 COLLATE SQL_Latin1_General_CP1_CI_AS
END

GO
EXEC dbo.sp_dbcmptlevel @dbname=N'LA_CROIX_DU_SUD', @new_cmptlevel=90
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [LA_CROIX_DU_SUD].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [LA_CROIX_DU_SUD] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [LA_CROIX_DU_SUD] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [LA_CROIX_DU_SUD] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [LA_CROIX_DU_SUD] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [LA_CROIX_DU_SUD] SET ARITHABORT OFF 
GO
ALTER DATABASE [LA_CROIX_DU_SUD] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [LA_CROIX_DU_SUD] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [LA_CROIX_DU_SUD] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [LA_CROIX_DU_SUD] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [LA_CROIX_DU_SUD] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [LA_CROIX_DU_SUD] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [LA_CROIX_DU_SUD] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [LA_CROIX_DU_SUD] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [LA_CROIX_DU_SUD] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [LA_CROIX_DU_SUD] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [LA_CROIX_DU_SUD] SET  DISABLE_BROKER 
GO
ALTER DATABASE [LA_CROIX_DU_SUD] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [LA_CROIX_DU_SUD] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [LA_CROIX_DU_SUD] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [LA_CROIX_DU_SUD] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [LA_CROIX_DU_SUD] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [LA_CROIX_DU_SUD] SET  READ_WRITE 
GO
ALTER DATABASE [LA_CROIX_DU_SUD] SET RECOVERY FULL 
GO
ALTER DATABASE [LA_CROIX_DU_SUD] SET  MULTI_USER 
GO
ALTER DATABASE [LA_CROIX_DU_SUD] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [LA_CROIX_DU_SUD] SET DB_CHAINING OFF 
/****** Object:  Login [NT AUTHORITY\SYSTEM]    Script Date: 04/20/2008 11:56:49 ******/
/****** Object:  Login [NT AUTHORITY\SYSTEM]    Script Date: 04/20/2008 11:56:49 ******/
IF NOT EXISTS (SELECT * FROM sys.server_principals WHERE name = N'NT AUTHORITY\SYSTEM')
CREATE LOGIN [NT AUTHORITY\SYSTEM] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/****** Object:  Login [KAMONYO\SQLServer2005SQLAgentUser$KAMONYO$MSSQLSERVER]    Script Date: 04/20/2008 11:56:50 ******/
/****** Object:  Login [KAMONYO\SQLServer2005SQLAgentUser$KAMONYO$MSSQLSERVER]    Script Date: 04/20/2008 11:56:50 ******/
IF NOT EXISTS (SELECT * FROM sys.server_principals WHERE name = N'KAMONYO\SQLServer2005SQLAgentUser$KAMONYO$MSSQLSERVER')
CREATE LOGIN [KAMONYO\SQLServer2005SQLAgentUser$KAMONYO$MSSQLSERVER] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/****** Object:  Login [KAMONYO\SQLServer2005MSSQLUser$KAMONYO$MSSQLSERVER]    Script Date: 04/20/2008 11:56:50 ******/
/****** Object:  Login [KAMONYO\SQLServer2005MSSQLUser$KAMONYO$MSSQLSERVER]    Script Date: 04/20/2008 11:56:50 ******/
IF NOT EXISTS (SELECT * FROM sys.server_principals WHERE name = N'KAMONYO\SQLServer2005MSSQLUser$KAMONYO$MSSQLSERVER')
CREATE LOGIN [KAMONYO\SQLServer2005MSSQLUser$KAMONYO$MSSQLSERVER] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/****** Object:  Login [KAMONYO\SQLServer2005MSFTEUser$KAMONYO$MSSQLSERVER]    Script Date: 04/20/2008 11:56:50 ******/
/****** Object:  Login [KAMONYO\SQLServer2005MSFTEUser$KAMONYO$MSSQLSERVER]    Script Date: 04/20/2008 11:56:50 ******/
IF NOT EXISTS (SELECT * FROM sys.server_principals WHERE name = N'KAMONYO\SQLServer2005MSFTEUser$KAMONYO$MSSQLSERVER')
CREATE LOGIN [KAMONYO\SQLServer2005MSFTEUser$KAMONYO$MSSQLSERVER] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/****** Object:  Login [KAMONYO\ASPNET]    Script Date: 04/20/2008 11:56:50 ******/
/****** Object:  Login [KAMONYO\ASPNET]    Script Date: 04/20/2008 11:56:50 ******/
IF NOT EXISTS (SELECT * FROM sys.server_principals WHERE name = N'KAMONYO\ASPNET')
CREATE LOGIN [KAMONYO\ASPNET] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/****** Object:  Login [BUILTIN\Administrators]    Script Date: 04/20/2008 11:56:50 ******/
/****** Object:  Login [BUILTIN\Administrators]    Script Date: 04/20/2008 11:56:50 ******/
IF NOT EXISTS (SELECT * FROM sys.server_principals WHERE name = N'BUILTIN\Administrators')
CREATE LOGIN [BUILTIN\Administrators] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
USE [LA_CROIX_DU_SUD]
GO
/****** Object:  DatabaseRole [aspnet_WebEvent_FullAccess]    Script Date: 04/20/2008 11:56:50 ******/
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_WebEvent_FullAccess' AND type = 'R')
CREATE ROLE [aspnet_WebEvent_FullAccess]
GO
/****** Object:  DatabaseRole [aspnet_Roles_ReportingAccess]    Script Date: 04/20/2008 11:56:50 ******/
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Roles_ReportingAccess' AND type = 'R')
CREATE ROLE [aspnet_Roles_ReportingAccess]
GO
/****** Object:  DatabaseRole [aspnet_Roles_FullAccess]    Script Date: 04/20/2008 11:56:50 ******/
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Roles_FullAccess' AND type = 'R')
CREATE ROLE [aspnet_Roles_FullAccess]
GO
/****** Object:  DatabaseRole [aspnet_Roles_BasicAccess]    Script Date: 04/20/2008 11:56:50 ******/
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Roles_BasicAccess' AND type = 'R')
CREATE ROLE [aspnet_Roles_BasicAccess]
GO
/****** Object:  DatabaseRole [aspnet_Profile_ReportingAccess]    Script Date: 04/20/2008 11:56:50 ******/
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Profile_ReportingAccess' AND type = 'R')
CREATE ROLE [aspnet_Profile_ReportingAccess]
GO
/****** Object:  DatabaseRole [aspnet_Profile_FullAccess]    Script Date: 04/20/2008 11:56:50 ******/
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Profile_FullAccess' AND type = 'R')
CREATE ROLE [aspnet_Profile_FullAccess]
GO
/****** Object:  DatabaseRole [aspnet_Profile_BasicAccess]    Script Date: 04/20/2008 11:56:51 ******/
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Profile_BasicAccess' AND type = 'R')
CREATE ROLE [aspnet_Profile_BasicAccess]
GO
/****** Object:  DatabaseRole [aspnet_Personalization_ReportingAccess]    Script Date: 04/20/2008 11:56:51 ******/
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Personalization_ReportingAccess' AND type = 'R')
CREATE ROLE [aspnet_Personalization_ReportingAccess]
GO
/****** Object:  DatabaseRole [aspnet_Personalization_FullAccess]    Script Date: 04/20/2008 11:56:51 ******/
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Personalization_FullAccess' AND type = 'R')
CREATE ROLE [aspnet_Personalization_FullAccess]
GO
/****** Object:  DatabaseRole [aspnet_Personalization_BasicAccess]    Script Date: 04/20/2008 11:56:51 ******/
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Personalization_BasicAccess' AND type = 'R')
CREATE ROLE [aspnet_Personalization_BasicAccess]
GO
/****** Object:  DatabaseRole [aspnet_Membership_ReportingAccess]    Script Date: 04/20/2008 11:56:51 ******/
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Membership_ReportingAccess' AND type = 'R')
CREATE ROLE [aspnet_Membership_ReportingAccess]
GO
/****** Object:  DatabaseRole [aspnet_Membership_FullAccess]    Script Date: 04/20/2008 11:56:51 ******/
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Membership_FullAccess' AND type = 'R')
CREATE ROLE [aspnet_Membership_FullAccess]
GO
/****** Object:  DatabaseRole [aspnet_Membership_BasicAccess]    Script Date: 04/20/2008 11:56:51 ******/
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Membership_BasicAccess' AND type = 'R')
CREATE ROLE [aspnet_Membership_BasicAccess]
GO
/****** Object:  Schema [aspnet_WebEvent_FullAccess]    Script Date: 04/20/2008 11:56:51 ******/
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'aspnet_WebEvent_FullAccess')
EXEC sys.sp_executesql N'CREATE SCHEMA [aspnet_WebEvent_FullAccess] AUTHORIZATION [aspnet_WebEvent_FullAccess]'

GO
/****** Object:  Schema [aspnet_Roles_ReportingAccess]    Script Date: 04/20/2008 11:56:51 ******/
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'aspnet_Roles_ReportingAccess')
EXEC sys.sp_executesql N'CREATE SCHEMA [aspnet_Roles_ReportingAccess] AUTHORIZATION [aspnet_Roles_ReportingAccess]'

GO
/****** Object:  Schema [aspnet_Roles_FullAccess]    Script Date: 04/20/2008 11:56:51 ******/
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'aspnet_Roles_FullAccess')
EXEC sys.sp_executesql N'CREATE SCHEMA [aspnet_Roles_FullAccess] AUTHORIZATION [aspnet_Roles_FullAccess]'

GO
/****** Object:  Schema [aspnet_Roles_BasicAccess]    Script Date: 04/20/2008 11:56:51 ******/
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'aspnet_Roles_BasicAccess')
EXEC sys.sp_executesql N'CREATE SCHEMA [aspnet_Roles_BasicAccess] AUTHORIZATION [aspnet_Roles_BasicAccess]'

GO
/****** Object:  Schema [aspnet_Profile_ReportingAccess]    Script Date: 04/20/2008 11:56:51 ******/
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'aspnet_Profile_ReportingAccess')
EXEC sys.sp_executesql N'CREATE SCHEMA [aspnet_Profile_ReportingAccess] AUTHORIZATION [aspnet_Profile_ReportingAccess]'

GO
/****** Object:  Schema [aspnet_Profile_FullAccess]    Script Date: 04/20/2008 11:56:51 ******/
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'aspnet_Profile_FullAccess')
EXEC sys.sp_executesql N'CREATE SCHEMA [aspnet_Profile_FullAccess] AUTHORIZATION [aspnet_Profile_FullAccess]'

GO
/****** Object:  Schema [aspnet_Profile_BasicAccess]    Script Date: 04/20/2008 11:56:51 ******/
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'aspnet_Profile_BasicAccess')
EXEC sys.sp_executesql N'CREATE SCHEMA [aspnet_Profile_BasicAccess] AUTHORIZATION [aspnet_Profile_BasicAccess]'

GO
/****** Object:  Schema [aspnet_Personalization_ReportingAccess]    Script Date: 04/20/2008 11:56:51 ******/
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'aspnet_Personalization_ReportingAccess')
EXEC sys.sp_executesql N'CREATE SCHEMA [aspnet_Personalization_ReportingAccess] AUTHORIZATION [aspnet_Personalization_ReportingAccess]'

GO
/****** Object:  Schema [aspnet_Personalization_FullAccess]    Script Date: 04/20/2008 11:56:51 ******/
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'aspnet_Personalization_FullAccess')
EXEC sys.sp_executesql N'CREATE SCHEMA [aspnet_Personalization_FullAccess] AUTHORIZATION [aspnet_Personalization_FullAccess]'

GO
/****** Object:  Schema [aspnet_Personalization_BasicAccess]    Script Date: 04/20/2008 11:56:51 ******/
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'aspnet_Personalization_BasicAccess')
EXEC sys.sp_executesql N'CREATE SCHEMA [aspnet_Personalization_BasicAccess] AUTHORIZATION [aspnet_Personalization_BasicAccess]'

GO
/****** Object:  Schema [aspnet_Membership_ReportingAccess]    Script Date: 04/20/2008 11:56:51 ******/
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'aspnet_Membership_ReportingAccess')
EXEC sys.sp_executesql N'CREATE SCHEMA [aspnet_Membership_ReportingAccess] AUTHORIZATION [aspnet_Membership_ReportingAccess]'

GO
/****** Object:  Schema [aspnet_Membership_FullAccess]    Script Date: 04/20/2008 11:56:51 ******/
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'aspnet_Membership_FullAccess')
EXEC sys.sp_executesql N'CREATE SCHEMA [aspnet_Membership_FullAccess] AUTHORIZATION [aspnet_Membership_FullAccess]'

GO
/****** Object:  Schema [aspnet_Membership_BasicAccess]    Script Date: 04/20/2008 11:56:51 ******/
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'aspnet_Membership_BasicAccess')
EXEC sys.sp_executesql N'CREATE SCHEMA [aspnet_Membership_BasicAccess] AUTHORIZATION [aspnet_Membership_BasicAccess]'

GO
/****** Object:  UserDefinedDataType [dbo].[kamonyo_name]    Script Date: 04/20/2008 11:56:51 ******/
IF NOT EXISTS (SELECT * FROM sys.types st JOIN sys.schemas ss ON st.schema_id = ss.schema_id WHERE st.name = N'kamonyo_name' AND ss.name = N'dbo')
CREATE TYPE [dbo].[kamonyo_name] FROM [nvarchar](50) NULL
GO
/****** Object:  Table [dbo].[SIGNES_VITAUX]    Script Date: 04/20/2008 11:56:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SIGNES_VITAUX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SIGNES_VITAUX](
	[ID_SIGNES_VITAUX] [int] IDENTITY(1,1) NOT NULL,
	[SIGNES_VITAUX] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
 CONSTRAINT [PK_SIGNES_VITAUX] PRIMARY KEY CLUSTERED 
(
	[ID_SIGNES_VITAUX] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  StoredProcedure [dbo].[DELETE_CATEGORY_CHAMBRE]    Script Date: 04/20/2008 11:56:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DELETE_CATEGORY_CHAMBRE]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[DELETE_CATEGORY_CHAMBRE]

@ID_CATEG_CHAMBRE	int	,
@DESCRIPTION	nvarchar(50)	

AS 
DELETE CATEGORY_CHAMBRE
WHERE ID_CATEG_CHAMBRE=@ID_CATEG_CHAMBRE AND DESCRIPTION=@DESCRIPTION' 
END
GO
/****** Object:  Table [dbo].[LABO_DEPARTMENT]    Script Date: 04/20/2008 11:56:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LABO_DEPARTMENT]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[LABO_DEPARTMENT](
	[ID_DEPART_LABO] [int] IDENTITY(10,1) NOT NULL,
	[NOM_DEPART_LABO] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
 CONSTRAINT [PK_LABO_DEPARTMENT] PRIMARY KEY CLUSTERED 
(
	[ID_DEPART_LABO] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  StoredProcedure [dbo].[DELETE_CATEG_SERVICES_RENDUS]    Script Date: 04/20/2008 11:56:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DELETE_CATEG_SERVICES_RENDUS]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[DELETE_CATEG_SERVICES_RENDUS]

@ID_CATEG_SER_RENDUS	int	

AS
DELETE CATEG_SERVICES_RENDUS
WHERE ID_CATEG_SER_RENDUS=@ID_CATEG_SER_RENDUS' 
END
GO
/****** Object:  Table [dbo].[CATEGORY_PATIENT]    Script Date: 04/20/2008 11:56:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CATEGORY_PATIENT]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[CATEGORY_PATIENT](
	[ID_CATEGORY_PATIENT] [int] IDENTITY(1000,100) NOT NULL,
	[DESCRIPTION_PATIENT] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
 CONSTRAINT [PK_CATEGORY_PATIENT] PRIMARY KEY CLUSTERED 
(
	[ID_CATEGORY_PATIENT] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  StoredProcedure [dbo].[DELETE_CHAMBRE_TABLE]    Script Date: 04/20/2008 11:56:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DELETE_CHAMBRE_TABLE]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[DELETE_CHAMBRE_TABLE]

@No_CHAMBRE	nvarchar(10)	

AS 
DELETE CHAMBRE
WHERE No_CHAMBRE=@No_CHAMBRE' 
END
GO
/****** Object:  StoredProcedure [dbo].[DELETE_COMMANDE_STOCK]    Script Date: 04/20/2008 11:56:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DELETE_COMMANDE_STOCK]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[DELETE_COMMANDE_STOCK]

@No_RECQUISITION	int	

AS
DELETE COMMANDE_STOCK
WHERE No_RECQUISITION=@No_RECQUISITION' 
END
GO
/****** Object:  StoredProcedure [dbo].[DELETE_CONSULTATION]    Script Date: 04/20/2008 11:56:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DELETE_CONSULTATION]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[DELETE_CONSULTATION]

@ID_CONSULTATION	nvarchar(20)	

AS
DELETE CONSULTATION
WHERE ID_CONSULTATION=@ID_CONSULTATION' 
END
GO
/****** Object:  StoredProcedure [dbo].[DELETE_CATEGORY_UTILISATEUR]    Script Date: 04/20/2008 11:56:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DELETE_CATEGORY_UTILISATEUR]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[DELETE_CATEGORY_UTILISATEUR]

@ID_CATEG_UTILISATEUR	int	,
@DESCRIPTION_USER_CATEG	nvarchar(20)	

AS
DELETE CATEGORY_UTILISATEUR
WHERE ID_CATEG_UTILISATEUR=@ID_CATEG_UTILISATEUR AND DESCRIPTION_USER_CATEG=@DESCRIPTION_USER_CATEG' 
END
GO
/****** Object:  StoredProcedure [dbo].[DELETE_ENTREE_EN_STOCK]    Script Date: 04/20/2008 11:56:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DELETE_ENTREE_EN_STOCK]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[DELETE_ENTREE_EN_STOCK]

@No_REFERENCE	int	,
@CODE_PRODUIT	nvarchar(10)

AS
DELETE ENTREE_EN_STOCK
WHERE No_REFERENCE=@No_REFERENCE AND CODE_PRODUIT=@CODE_PRODUIT' 
END
GO
/****** Object:  StoredProcedure [dbo].[DELETE_EXAMENS_A_FAIRE]    Script Date: 04/20/2008 11:56:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DELETE_EXAMENS_A_FAIRE]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[DELETE_EXAMENS_A_FAIRE]

@CODE_EXAMEN	nvarchar(10)	,
@ID_SERVICES_RENDUS	nvarchar(10)

AS
DELETE EXAMENS_A_FAIRE
WHERE CODE_EXAMEN=@CODE_EXAMEN AND ID_SERVICES_RENDUS=@ID_SERVICES_RENDUS' 
END
GO
/****** Object:  StoredProcedure [dbo].[DELETE_FICHE_DE_SUIVIE]    Script Date: 04/20/2008 11:56:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DELETE_FICHE_DE_SUIVIE]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[DELETE_FICHE_DE_SUIVIE]

@ID_SUIVIE	int,
@ID_HOSPITALISATION	nvarchar(20)

AS 
DELETE FICHE_DE_SUIVIE
WHERE ID_SUIVIE=@ID_SUIVIE AND ID_HOSPITALISATION=@ID_HOSPITALISATION
' 
END
GO
/****** Object:  StoredProcedure [dbo].[DELETE_HOSPITALISATION]    Script Date: 04/20/2008 11:56:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DELETE_HOSPITALISATION]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[DELETE_HOSPITALISATION]

@ID_HOSPITALISATION	nvarchar(20)

AS
DELETE HOSPITALISATION
WHERE ID_HOSPITALISATION=@ID_HOSPITALISATION
' 
END
GO
/****** Object:  Table [dbo].[DESTINATION_TRANSFERT]    Script Date: 04/20/2008 11:56:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DESTINATION_TRANSFERT]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DESTINATION_TRANSFERT](
	[ID_DESTINATION] [int] IDENTITY(10,1) NOT NULL,
	[NOM_DESTINATION] [nvarchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
 CONSTRAINT [PK_DESTINATION_TRANSFERT] PRIMARY KEY CLUSTERED 
(
	[ID_DESTINATION] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[aspnet_Applications]    Script Date: 04/20/2008 11:56:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Applications]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[aspnet_Applications](
	[ApplicationName] [nvarchar](256) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[LoweredApplicationName] [nvarchar](256) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[ApplicationId] [uniqueidentifier] NOT NULL DEFAULT (newid()),
	[Description] [nvarchar](256) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
PRIMARY KEY NONCLUSTERED 
(
	[ApplicationId] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[LoweredApplicationName] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[ApplicationName] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

/****** Object:  Index [aspnet_Applications_Index]    Script Date: 04/20/2008 11:56:52 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Applications]') AND name = N'aspnet_Applications_Index')
CREATE CLUSTERED INDEX [aspnet_Applications_Index] ON [dbo].[aspnet_Applications] 
(
	[LoweredApplicationName] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[DELETE_RENDEZ_VOUS_CONSULTATION]    Script Date: 04/20/2008 11:56:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DELETE_RENDEZ_VOUS_CONSULTATION]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[DELETE_RENDEZ_VOUS_CONSULTATION]

@ID_RENDEZ_VOUS	int	

AS
DELETE RENDEZ_VOUS_CONSULTATION
WHERE ID_RENDEZ_VOUS=@ID_RENDEZ_VOUS ' 
END
GO
/****** Object:  Table [dbo].[PRESCRIPTION]    Script Date: 04/20/2008 11:56:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PRESCRIPTION]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[PRESCRIPTION](
	[No_PRESCRIPTION] [int] IDENTITY(1,1) NOT NULL,
	[PRESCRIPTION_DESCRIPTION] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[ID_SERVICE] [nvarchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_PRESCRIPTION] PRIMARY KEY CLUSTERED 
(
	[No_PRESCRIPTION] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  StoredProcedure [dbo].[DELETE_RESULTATS_EXAMEN]    Script Date: 04/20/2008 11:56:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DELETE_RESULTATS_EXAMEN]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[DELETE_RESULTATS_EXAMEN]

@CODE_EXAMEN	nvarchar(10)	,
@ID_SERVICES_RENDUS	nvarchar(10)	
AS
DELETE RESULTATS_EXAMEN
WHERE CODE_EXAMEN=@CODE_EXAMEN AND ID_SERVICES_RENDUS=@ID_SERVICES_RENDUS' 
END
GO
/****** Object:  Table [dbo].[PRESCRIPTION_DE_CONSULTATION]    Script Date: 04/20/2008 11:56:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PRESCRIPTION_DE_CONSULTATION]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[PRESCRIPTION_DE_CONSULTATION](
	[No_REFERENCE] [int] IDENTITY(1,1) NOT NULL,
	[No_PRESCRIPTION] [int] NOT NULL,
	[ID_CONSULTATION] [nvarchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
 CONSTRAINT [PK_PRESCRIPTION_DE_CONSULTATION] PRIMARY KEY CLUSTERED 
(
	[No_REFERENCE] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[CATEGORY_UTILISATEUR]    Script Date: 04/20/2008 11:56:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CATEGORY_UTILISATEUR]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[CATEGORY_UTILISATEUR](
	[ID_CATEG_UTILISATEUR] [int] IDENTITY(10,1) NOT NULL,
	[DESCRIPTION_USER_CATEG] [nvarchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
 CONSTRAINT [PK_CATEGORY_UTILISATEUR] PRIMARY KEY CLUSTERED 
(
	[ID_CATEG_UTILISATEUR] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  StoredProcedure [dbo].[DELETE_SORTIE_D_HOSPITALISATION]    Script Date: 04/20/2008 11:56:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DELETE_SORTIE_D_HOSPITALISATION]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[DELETE_SORTIE_D_HOSPITALISATION]

@ID_HOSPITALISATION	nvarchar(10)	,
@No_CHAMBRE	nvarchar(10)

AS
DELETE SORTIE_D_HOSPITALISATION
WHERE ID_HOSPITALISATION=@ID_HOSPITALISATION AND No_CHAMBRE=@No_CHAMBRE' 
END
GO
/****** Object:  StoredProcedure [dbo].[DELETE_SORTIE_DE_STOCK]    Script Date: 04/20/2008 11:56:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DELETE_SORTIE_DE_STOCK]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[DELETE_SORTIE_DE_STOCK]

@No_REFERENCE	int,
@CODE_PRODUIT	nvarchar(10)	

AS
DELETE SORTIE_DE_STOCK
WHERE No_REFERENCE=@No_REFERENCE AND CODE_PRODUIT=@CODE_PRODUIT' 
END
GO
/****** Object:  StoredProcedure [dbo].[DELETE_SPECIALISATION_TABLE]    Script Date: 04/20/2008 11:56:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DELETE_SPECIALISATION_TABLE]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[DELETE_SPECIALISATION_TABLE]

@ID_SPECIALISATION	int	,
@SPECIALITE	nvarchar(50)	

AS
DELETE SPECIALISATION
WHERE ID_SPECIALISATION=@ID_SPECIALISATION AND SPECIALITE=@SPECIALITE' 
END
GO
/****** Object:  Table [dbo].[CATEGORY_SERVICE]    Script Date: 04/20/2008 11:56:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CATEGORY_SERVICE]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[CATEGORY_SERVICE](
	[ID_CATEG_SERVICE] [int] IDENTITY(100,1) NOT NULL,
	[NOM_CATEG_SERVICE] [nvarchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
 CONSTRAINT [PK_CATEGORY_SERVICE] PRIMARY KEY CLUSTERED 
(
	[ID_CATEG_SERVICE] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[aspnet_SchemaVersions]    Script Date: 04/20/2008 11:56:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_SchemaVersions]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[aspnet_SchemaVersions](
	[Feature] [nvarchar](128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[CompatibleSchemaVersion] [nvarchar](128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[IsCurrentVersion] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Feature] ASC,
	[CompatibleSchemaVersion] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  StoredProcedure [dbo].[DELETE_TARIF_DEL_ASSUREUR]    Script Date: 04/20/2008 11:56:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DELETE_TARIF_DEL_ASSUREUR]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[DELETE_TARIF_DEL_ASSUREUR]

@ID_TARIF_ASSUREUR	int	

AS
DELETE TARIF_DEL_ASSUREUR
WHERE ID_TARIF_ASSUREUR=@ID_TARIF_ASSUREUR' 
END
GO
/****** Object:  StoredProcedure [dbo].[DELETE_TRAITEMENT_CONSULTATION]    Script Date: 04/20/2008 11:56:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DELETE_TRAITEMENT_CONSULTATION]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[DELETE_TRAITEMENT_CONSULTATION]

@No_TRAITEMENT_CONS	int

AS
DELETE TRAITEMENT_CONSULTATION
WHERE No_TRAITEMENT_CONS=@No_TRAITEMENT_CONS ' 
END
GO
/****** Object:  Table [dbo].[ESSAI_No]    Script Date: 04/20/2008 11:56:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ESSAI_No]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ESSAI_No](
	[NNo] [int] NOT NULL,
	[Numero] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_ESSAI_No] PRIMARY KEY CLUSTERED 
(
	[NNo] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[CATEGORY_PRODUIT]    Script Date: 04/20/2008 11:56:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CATEGORY_PRODUIT]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[CATEGORY_PRODUIT](
	[ID_CATEG_PRODUIT] [int] IDENTITY(10,1) NOT NULL,
	[DESCRIPTION_CATEGORY] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
 CONSTRAINT [PK_CATEGORY_PRODUIT] PRIMARY KEY CLUSTERED 
(
	[ID_CATEG_PRODUIT] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  StoredProcedure [dbo].[DELETE_TRANSFERT_TABLE]    Script Date: 04/20/2008 11:56:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DELETE_TRANSFERT_TABLE]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

CREATE PROCEDURE [dbo].[DELETE_TRANSFERT_TABLE]

@ID_TRANSFERT	nvarchar(10)

AS
DELETE TRANSFERT
WHERE ID_TRANSFERT=@ID_TRANSFERT 

' 
END
GO
/****** Object:  Table [dbo].[CATEGORY_CHAMBRE]    Script Date: 04/20/2008 11:56:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CATEGORY_CHAMBRE]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[CATEGORY_CHAMBRE](
	[ID_CATEG_CHAMBRE] [int] IDENTITY(1,1) NOT NULL,
	[DESCRIPTION] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[PRIX_PAR_CHAMBRE] [money] NOT NULL,
 CONSTRAINT [PK_CATEGORY_CHAMBRE] PRIMARY KEY CLUSTERED 
(
	[ID_CATEG_CHAMBRE] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  StoredProcedure [dbo].[UPDATE_CATEG_SERVICES_RENDUS]    Script Date: 04/20/2008 11:56:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UPDATE_CATEG_SERVICES_RENDUS]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[UPDATE_CATEG_SERVICES_RENDUS]

@ID_CATEG_SER_RENDUS	int	,
@DESCRIPTION_SERVICE	nvarchar(50)

AS
UPDATE CATEG_SERVICES_RENDUS
SET DESCRIPTION_SERVICE=@DESCRIPTION_SERVICE
WHERE ID_CATEG_SER_RENDUS=@ID_CATEG_SER_RENDUS' 
END
GO
/****** Object:  Table [dbo].[CATEG_SERVICES_RENDUS]    Script Date: 04/20/2008 11:56:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CATEG_SERVICES_RENDUS]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[CATEG_SERVICES_RENDUS](
	[ID_CATEG_SER_RENDUS] [int] IDENTITY(100,1) NOT NULL,
	[DESCRIPTION_SERVICE] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
 CONSTRAINT [PK_CATEG_SERVICES_RENDUS] PRIMARY KEY CLUSTERED 
(
	[ID_CATEG_SER_RENDUS] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  StoredProcedure [dbo].[UPDATE_CATEGORY_CHAMBRE]    Script Date: 04/20/2008 11:56:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UPDATE_CATEGORY_CHAMBRE]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[UPDATE_CATEGORY_CHAMBRE]

@ID_CATEG_CHAMBRE	int	,
@DESCRIPTION	nvarchar(50)	,
@PRIX_PAR_CHAMBRE	money

AS
UPDATE CATEGORY_CHAMBRE
SET DESCRIPTION=@DESCRIPTION,
PRIX_PAR_CHAMBRE=@PRIX_PAR_CHAMBRE
WHERE ID_CATEG_CHAMBRE=@ID_CATEG_CHAMBRE' 
END
GO
/****** Object:  StoredProcedure [dbo].[UPDATE_CATEGORY_PATIENT]    Script Date: 04/20/2008 11:56:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UPDATE_CATEGORY_PATIENT]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[UPDATE_CATEGORY_PATIENT]

@ID_CATEGORY_PATIENT	int	,
@DESCRIPTION_PATIENT	nvarchar(50)	

AS
UPDATE CATEGORY_PATIENT
SET DESCRIPTION_PATIENT=@DESCRIPTION_PATIENT
WHERE ID_CATEGORY_PATIENT=@ID_CATEGORY_PATIENT' 
END
GO
/****** Object:  StoredProcedure [dbo].[UPDATE_CATEGORY_PRODUIT]    Script Date: 04/20/2008 11:56:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UPDATE_CATEGORY_PRODUIT]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[UPDATE_CATEGORY_PRODUIT]

@ID_CATEG_PRODUIT	int	,
@DESCRIPTION_CATEGORY	nvarchar(50)	

AS
UPDATE CATEGORY_PRODUIT
SET DESCRIPTION_CATEGORY=@DESCRIPTION_CATEGORY
WHERE ID_CATEG_PRODUIT=@ID_CATEG_PRODUIT' 
END
GO
/****** Object:  StoredProcedure [dbo].[UPDATE_CATEGORY_SERVICE]    Script Date: 04/20/2008 11:56:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UPDATE_CATEGORY_SERVICE]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[UPDATE_CATEGORY_SERVICE]

@ID_CATEG_SERVICE	int	,
@NOM_CATEG_SERVICE	nvarchar(20)	

AS
UPDATE CATEGORY_SERVICE
SET NOM_CATEG_SERVICE=@NOM_CATEG_SERVICE
WHERE ID_CATEG_SERVICE=@ID_CATEG_SERVICE' 
END
GO
/****** Object:  StoredProcedure [dbo].[UPDATE_CATEGORY_UTILISATEUR]    Script Date: 04/20/2008 11:56:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UPDATE_CATEGORY_UTILISATEUR]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[UPDATE_CATEGORY_UTILISATEUR]

@ID_CATEG_UTILISATEUR	int	,
@DESCRIPTION_USER_CATEG	nvarchar(20)	

AS
UPDATE CATEGORY_UTILISATEUR
SET DESCRIPTION_USER_CATEG=@DESCRIPTION_USER_CATEG
WHERE ID_CATEG_UTILISATEUR=@ID_CATEG_UTILISATEUR' 
END
GO
/****** Object:  StoredProcedure [dbo].[UPDATE_COMMANDE_STOCK]    Script Date: 04/20/2008 11:56:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UPDATE_COMMANDE_STOCK]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[UPDATE_COMMANDE_STOCK]

@No_RECQUISITION	int	,
@ID_STOCK	nvarchar(10)	,
@CODE_PRODUIT	nvarchar(10)	,
@DATE_DE_COMMANDE	datetime	,
@HEURE_COMMANDE	nvarchar(10)	,
@QUANTITE_COMMANDEE	float	,
@OBSERVATIONS	nvarchar(50)	

AS
UPDATE COMMANDE_STOCK
SET ID_STOCK=@ID_STOCK,
CODE_PRODUIT=@CODE_PRODUIT,
DATE_DE_COMMANDE=@DATE_DE_COMMANDE,
HEURE_COMMANDE=@HEURE_COMMANDE,
QUANTITE_COMMANDEE=@QUANTITE_COMMANDEE,
OBSERVATIONS=@OBSERVATIONS
WHERE No_RECQUISITION=@No_RECQUISITION' 
END
GO
/****** Object:  StoredProcedure [dbo].[UPDATE_DESTINATION_TRANSFERT]    Script Date: 04/20/2008 11:56:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UPDATE_DESTINATION_TRANSFERT]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[UPDATE_DESTINATION_TRANSFERT]

@ID_DESTINATION	int	,
@NOM_DESTINATION	nvarchar(20)	

AS
UPDATE DESTINATION_TRANSFERT
SET NOM_DESTINATION=@NOM_DESTINATION
WHERE ID_DESTINATION=@ID_DESTINATION' 
END
GO
/****** Object:  StoredProcedure [dbo].[UPDATE_ENTREE_EN_STOCK]    Script Date: 04/20/2008 11:56:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UPDATE_ENTREE_EN_STOCK]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[UPDATE_ENTREE_EN_STOCK]

@No_REFERENCE	int	,
@ID_STOCK	nvarchar(10)	,
@CODE_PRODUIT	nvarchar(10)	,
@DATE_D_ENTREE	datetime	,
@HEURE_D_ENTREE	nvarchar(10)	,
@QUANTITE_ENTREE	float	,
@PRIX_UNITAIRE	money	,
@DATE_EXPIRATION	datetime	,
@ID_STOCK_SOURCE	nvarchar(10)	

AS 
UPDATE ENTREE_EN_STOCK
SET ID_STOCK=@ID_STOCK,
CODE_PRODUIT=@CODE_PRODUIT,
DATE_D_ENTREE=@DATE_D_ENTREE,
HEURE_D_ENTREE=@HEURE_D_ENTREE,
QUANTITE_ENTREE=@QUANTITE_ENTREE,
PRIX_UNITAIRE=@PRIX_UNITAIRE,
DATE_EXPIRATION=@DATE_EXPIRATION,
ID_STOCK_SOURCE=@ID_STOCK_SOURCE
WHERE No_REFERENCE=@No_REFERENCE' 
END
GO
/****** Object:  Table [dbo].[TYPE_D_ECHANTILLON]    Script Date: 04/20/2008 11:56:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TYPE_D_ECHANTILLON]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[TYPE_D_ECHANTILLON](
	[ID_TYPE_ECHANTILLON] [int] IDENTITY(1,1) NOT NULL,
	[TYPE_D_ECHANTILLON] [nvarchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
 CONSTRAINT [PK_TYPE_D_ECHANTILLON] PRIMARY KEY CLUSTERED 
(
	[ID_TYPE_ECHANTILLON] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  StoredProcedure [dbo].[UPDATE_LABO_DEPARTMENT]    Script Date: 04/20/2008 11:56:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UPDATE_LABO_DEPARTMENT]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[UPDATE_LABO_DEPARTMENT]

@ID_DEPART_LABO	int	,
@NOM_DEPART_LABO	nvarchar(50)	

AS
UPDATE LABO_DEPARTMENT
SET NOM_DEPART_LABO=@NOM_DEPART_LABO
WHERE @ID_DEPART_LABO=@ID_DEPART_LABO' 
END
GO
/****** Object:  StoredProcedure [dbo].[UPDATE_PLAINTES_TABLE]    Script Date: 04/20/2008 11:56:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UPDATE_PLAINTES_TABLE]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

CREATE PROCEDURE [dbo].[UPDATE_PLAINTES_TABLE]

@CODE_PLAINTE	int	,
@DESCRIPTION_PLAINTE	nvarchar(50),
@ID_CATEG_PLAINTES 	int	

AS
UPDATE PLAINTES
SET DESCRIPTION_PLAINTE=@DESCRIPTION_PLAINTE,
ID_CATEG_PLAINTES=@ID_CATEG_PLAINTES
WHERE CODE_PLAINTE=@CODE_PLAINTE

' 
END
GO
/****** Object:  StoredProcedure [dbo].[UPDATE_RENDEZ_VOUS_CONSULTATION]    Script Date: 04/20/2008 11:56:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UPDATE_RENDEZ_VOUS_CONSULTATION]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'




CREATE PROCEDURE [dbo].[UPDATE_RENDEZ_VOUS_CONSULTATION]

@ID_RENDEZ_VOUS	int	,
@ID_PATIENT	nvarchar(20)	,
@ID_SERVICE	nvarchar(10)	,
@DATE_RENDEZ_VOUS	datetime	,
@HEURE_RENDEZ_VOUS	nvarchar(10),
@DEJA_CONSULTE BIT,
@ID_CONSULTATION	nvarchar(50)

AS
UPDATE RENDEZ_VOUS_CONSULTATION
SET ID_PATIENT=@ID_PATIENT,
ID_SERVICE=@ID_SERVICE,
DATE_RENDEZ_VOUS=@DATE_RENDEZ_VOUS,
HEURE_RENDEZ_VOUS=@HEURE_RENDEZ_VOUS
WHERE ID_RENDEZ_VOUS=@ID_RENDEZ_VOUS




' 
END
GO
/****** Object:  StoredProcedure [dbo].[UPDATE_RESULTATS_EXAMEN]    Script Date: 04/20/2008 11:56:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UPDATE_RESULTATS_EXAMEN]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[UPDATE_RESULTATS_EXAMEN]

@CODE_EXAMEN	nvarchar(10)	,
@ID_SERVICES_RENDUS	nvarchar(10)	,
@ID_CONSULTATION	nvarchar(50)	,
@DATE_EXAMEN	datetime	,
@ID_TYPE_ECHANTILLON	int	,
@RESULTATS	nvarchar(50)	

AS
UPDATE RESULTATS_EXAMEN
SET ID_CONSULTATION=@ID_CONSULTATION,
DATE_EXAMEN=@DATE_EXAMEN,
ID_TYPE_ECHANTILLON=@ID_TYPE_ECHANTILLON,
RESULTATS=@RESULTATS
WHERE CODE_EXAMEN=@CODE_EXAMEN AND ID_SERVICES_RENDUS=@ID_SERVICES_RENDUS
' 
END
GO
/****** Object:  StoredProcedure [dbo].[UPDATE_SIGNES_VITAUX]    Script Date: 04/20/2008 11:56:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UPDATE_SIGNES_VITAUX]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[UPDATE_SIGNES_VITAUX]

@ID_SIGNES_VITAUX	int	,
@SIGNES_VITAUX	nvarchar(50)	

AS
UPDATE SIGNES_VITAUX
SET SIGNES_VITAUX=@SIGNES_VITAUX
WHERE ID_SIGNES_VITAUX=@ID_SIGNES_VITAUX' 
END
GO
/****** Object:  StoredProcedure [dbo].[UPDATE_SORTIE_DE_STOCK]    Script Date: 04/20/2008 11:56:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UPDATE_SORTIE_DE_STOCK]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[UPDATE_SORTIE_DE_STOCK]

@No_REFERENCE	int	,
@ID_STOCK	nvarchar(10)	,
@CODE_PRODUIT	nvarchar(10)	,
@DATE_DE_SORTIE	datetime	,
@HEURE_DE_SORTIE	nvarchar(10)	,
@QUANTITE_SORTIE	float	,
@DATE_EXPIRE	datetime

AS
UPDATE SORTIE_DE_STOCK
SET ID_STOCK=@ID_STOCK,
CODE_PRODUIT=@CODE_PRODUIT,
DATE_DE_SORTIE=@DATE_DE_SORTIE,
HEURE_DE_SORTIE=@HEURE_DE_SORTIE,
QUANTITE_SORTIE=@QUANTITE_SORTIE,
DATE_EXPIRE=@DATE_EXPIRE
WHERE No_REFERENCE=@No_REFERENCE' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Setup_RestorePermissions]    Script Date: 04/20/2008 11:56:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Setup_RestorePermissions]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[aspnet_Setup_RestorePermissions]
    @name   sysname
AS
BEGIN
    DECLARE @object sysname
    DECLARE @protectType char(10)
    DECLARE @action varchar(20)
    DECLARE @grantee sysname
    DECLARE @cmd nvarchar(500)
    DECLARE c1 cursor FORWARD_ONLY FOR
        SELECT Object, ProtectType, [Action], Grantee FROM #aspnet_Permissions where Object = @name

    OPEN c1

    FETCH c1 INTO @object, @protectType, @action, @grantee
    WHILE (@@fetch_status = 0)
    BEGIN
        SET @cmd = @protectType + '' '' + @action + '' on '' + @object + '' TO ['' + @grantee + '']''
        EXEC (@cmd)
        FETCH c1 INTO @object, @protectType, @action, @grantee
    END

    CLOSE c1
    DEALLOCATE c1
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[UPDATE_SPECIALISATION_TABLE]    Script Date: 04/20/2008 11:56:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UPDATE_SPECIALISATION_TABLE]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[UPDATE_SPECIALISATION_TABLE]

@ID_SPECIALISATION	int	,
@SPECIALITE	nvarchar(50)	,
@ID_CATEG_UTILISATEUR	int	
		
AS
UPDATE SPECIALISATION
SET SPECIALITE=@SPECIALITE,
ID_CATEG_UTILISATEUR=@ID_CATEG_UTILISATEUR
WHERE ID_SPECIALISATION=@ID_SPECIALISATION' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Setup_RemoveAllRoleMembers]    Script Date: 04/20/2008 11:56:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Setup_RemoveAllRoleMembers]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[aspnet_Setup_RemoveAllRoleMembers]
    @name   sysname
AS
BEGIN
    CREATE TABLE #aspnet_RoleMembers
    (
        Group_name      sysname,
        Group_id        smallint,
        Users_in_group  sysname,
        User_id         smallint
    )

    INSERT INTO #aspnet_RoleMembers
    EXEC sp_helpuser @name

    DECLARE @user_id smallint
    DECLARE @cmd nvarchar(500)
    DECLARE c1 cursor FORWARD_ONLY FOR
        SELECT User_id FROM #aspnet_RoleMembers

    OPEN c1

    FETCH c1 INTO @user_id
    WHILE (@@fetch_status = 0)
    BEGIN
        SET @cmd = ''EXEC sp_droprolemember '' + '''''''' + @name + '''''', '''''' + USER_NAME(@user_id) + ''''''''
        EXEC (@cmd)
        FETCH c1 INTO @user_id
    END

    CLOSE c1
    DEALLOCATE c1
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[UPDATE_TARIF_DEL_ASSUREUR]    Script Date: 04/20/2008 11:56:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UPDATE_TARIF_DEL_ASSUREUR]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[UPDATE_TARIF_DEL_ASSUREUR]

@ID_TARIF_ASSUREUR	int	,
@ID_ASSUREUR	nvarchar(10)	,
@ID_SERVICES_RENDUS	nvarchar(10)	,
@MAXIMA_A_PAYER	money	

AS
UPDATE TARIF_DEL_ASSUREUR
SET ID_ASSUREUR=@ID_ASSUREUR,
ID_SERVICES_RENDUS=@ID_SERVICES_RENDUS,
MAXIMA_A_PAYER=@MAXIMA_A_PAYER
WHERE ID_TARIF_ASSUREUR=@ID_TARIF_ASSUREUR' 
END
GO
/****** Object:  StoredProcedure [dbo].[UPDATE_TRAITEMENT_SUIVIE]    Script Date: 04/20/2008 11:56:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UPDATE_TRAITEMENT_SUIVIE]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[UPDATE_TRAITEMENT_SUIVIE]

@No_TRAITEMENT_SUIVIE	int	,
@ID_SUIVIE	int	,
@ID_SERVICES_RENDUS	nvarchar(10),
@PAYED BIT,
@RENDU BIT	

AS
UPDATE TRAITEMENT_SUIVIE
SET ID_SUIVIE=@ID_SUIVIE,
ID_SERVICES_RENDUS=@ID_SERVICES_RENDUS,
PAYED=@PAYED,
RENDU=@RENDU
WHERE No_TRAITEMENT_SUIVIE=@No_TRAITEMENT_SUIVIE
' 
END
GO
/****** Object:  StoredProcedure [dbo].[INSERT_INTO_CATEGORY_PATIENT]    Script Date: 04/20/2008 11:56:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[INSERT_INTO_CATEGORY_PATIENT]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[INSERT_INTO_CATEGORY_PATIENT]

@DESCRIPTION_PATIENT	nvarchar(50)	

AS 
INSERT INTO CATEGORY_PATIENT(DESCRIPTION_PATIENT)
VALUES(@DESCRIPTION_PATIENT)' 
END
GO
/****** Object:  StoredProcedure [dbo].[UPDATE_TYPE_D_ECHANTILLON]    Script Date: 04/20/2008 11:56:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UPDATE_TYPE_D_ECHANTILLON]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[UPDATE_TYPE_D_ECHANTILLON]

@ID_TYPE_ECHANTILLON	int	,
@TYPE_D_ECHANTILLON	nvarchar(20)	

AS
UPDATE TYPE_D_ECHANTILLON
SET TYPE_D_ECHANTILLON=@TYPE_D_ECHANTILLON
WHERE ID_TYPE_ECHANTILLON=@ID_TYPE_ECHANTILLON' 
END
GO
/****** Object:  StoredProcedure [dbo].[INSERT_INTO_LA_GARDE]    Script Date: 04/20/2008 11:56:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[INSERT_INTO_LA_GARDE]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[INSERT_INTO_LA_GARDE]

@ID_PERSONNEL	nvarchar(10)	,
@ID_SERVICE	nvarchar(10)	,
@DATE_GARDE_DEBUT	datetime	,
@HEURE_DEBUT	nvarchar(10)	,
@DATE_GARDE_FIN	datetime	,
@HEURE_FIN	nvarchar(10)	

AS
INSERT INTO LA_GARDE
VALUES(@ID_PERSONNEL	,@ID_SERVICE,@DATE_GARDE_DEBUT	,
@HEURE_DEBUT	,@DATE_GARDE_FIN	,@HEURE_FIN)
' 
END
GO
/****** Object:  StoredProcedure [dbo].[INSERT_INTO_RENDEZ_VOUS_CONSULTATION]    Script Date: 04/20/2008 11:56:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[INSERT_INTO_RENDEZ_VOUS_CONSULTATION]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'





CREATE PROCEDURE [dbo].[INSERT_INTO_RENDEZ_VOUS_CONSULTATION]

@ID_PATIENT	nvarchar(20)	,
@ID_SERVICE	nvarchar(10)	,
@DATE_RENDEZ_VOUS	datetime	,
@HEURE_RENDEZ_VOUS	nvarchar(10),
@DEJA_CONSULTE	bit,
@ID_CONSULTATION	nvarchar(50),
@PAYE	bit	

AS
INSERT INTO RENDEZ_VOUS_CONSULTATION
VALUES(@ID_PATIENT	,@ID_SERVICE,@DATE_RENDEZ_VOUS,@HEURE_RENDEZ_VOUS,@DEJA_CONSULTE,@ID_CONSULTATION,@PAYE)





' 
END
GO
/****** Object:  Table [dbo].[ASSUREUR]    Script Date: 04/20/2008 11:56:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ASSUREUR]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ASSUREUR](
	[ID_ASSUREUR] [nvarchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[NOM_ASSUREUR] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[POURCENTAGE] [float] NOT NULL,
 CONSTRAINT [PK_ASSUREUR] PRIMARY KEY CLUSTERED 
(
	[ID_ASSUREUR] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[aspnet_WebEvent_Events]    Script Date: 04/20/2008 11:56:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_WebEvent_Events]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[aspnet_WebEvent_Events](
	[EventId] [char](32) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[EventTimeUtc] [datetime] NOT NULL,
	[EventTime] [datetime] NOT NULL,
	[EventType] [nvarchar](256) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[EventSequence] [decimal](19, 0) NOT NULL,
	[EventOccurrence] [decimal](19, 0) NOT NULL,
	[EventCode] [int] NOT NULL,
	[EventDetailCode] [int] NOT NULL,
	[Message] [nvarchar](1024) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ApplicationPath] [nvarchar](256) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ApplicationVirtualPath] [nvarchar](256) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[MachineName] [nvarchar](256) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[RequestUrl] [nvarchar](1024) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ExceptionType] [nvarchar](256) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Details] [ntext] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
PRIMARY KEY CLUSTERED 
(
	[EventId] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[CONSULTATION]    Script Date: 04/20/2008 11:56:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CONSULTATION]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[CONSULTATION](
	[ID_CONSULTATION] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[ID_SERVICE] [nvarchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ID_PATIENT] [nvarchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[POIDS] [float] NULL,
	[DATE_CONSULTATION] [datetime] NOT NULL,
	[HEURE_CONSULTATION] [nvarchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[OBSERVATIONS] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_CONSULTATION] PRIMARY KEY CLUSTERED 
(
	[ID_CONSULTATION] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

/****** Object:  Index [ID_CONSULTATION_Index]    Script Date: 04/20/2008 11:56:53 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[CONSULTATION]') AND name = N'ID_CONSULTATION_Index')
CREATE UNIQUE NONCLUSTERED INDEX [ID_CONSULTATION_Index] ON [dbo].[CONSULTATION] 
(
	[ID_CONSULTATION] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RENDEZ_VOUS_CONSULTATION]    Script Date: 04/20/2008 11:56:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RENDEZ_VOUS_CONSULTATION]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[RENDEZ_VOUS_CONSULTATION](
	[ID_RENDEZ_VOUS] [int] IDENTITY(1,1) NOT NULL,
	[ID_PATIENT] [nvarchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ID_SERVICE] [nvarchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[DATE_RENDEZ_VOUS] [datetime] NOT NULL,
	[HEURE_RENDEZ_VOUS] [nvarchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DEJA_CONSULTE] [bit] NULL CONSTRAINT [DF_RENDEZ_VOUS_CONSULTATION_DEJA_CONSULTE]  DEFAULT ((0)),
	[ID_CONSULTATION] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PAYE] [bit] NOT NULL CONSTRAINT [DF_RENDEZ_VOUS_CONSULTATION_PAYE]  DEFAULT ((0)),
 CONSTRAINT [PK_RENDEZ_VOUS_CONSULTATION] PRIMARY KEY CLUSTERED 
(
	[ID_RENDEZ_VOUS] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

/****** Object:  Index [ID_CONSULTATION_IN_RENDEZ_VOUS_Index]    Script Date: 04/20/2008 11:56:53 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[RENDEZ_VOUS_CONSULTATION]') AND name = N'ID_CONSULTATION_IN_RENDEZ_VOUS_Index')
CREATE UNIQUE NONCLUSTERED INDEX [ID_CONSULTATION_IN_RENDEZ_VOUS_Index] ON [dbo].[RENDEZ_VOUS_CONSULTATION] 
(
	[ID_CONSULTATION] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'POUR VOIR SI LE RENDEZ-VOUS A ETE DEJA CONSULTE PAR LE DOCTEUR' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'RENDEZ_VOUS_CONSULTATION', @level2type=N'COLUMN', @level2name=N'DEJA_CONSULTE'

GO
/****** Object:  Table [dbo].[HOSPITALISATION]    Script Date: 04/20/2008 11:56:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[HOSPITALISATION]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[HOSPITALISATION](
	[ID_HOSPITALISATION] [nvarchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[ID_SERVICE] [nvarchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[No_CHAMBRE] [nvarchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[ID_CONSULTATION] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[DATE_D_ENTREE] [datetime] NOT NULL,
	[HEURE_D_ENTREE] [nvarchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DATE_DE_SORTIE] [datetime] NULL,
	[HEURE_DE_SORTIE] [nvarchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DECHARGE] [bit] NOT NULL CONSTRAINT [DF_HOSPITALISATION_DECHARGE]  DEFAULT ((0)),
 CONSTRAINT [PK_HOSPITALISATION] PRIMARY KEY CLUSTERED 
(
	[ID_HOSPITALISATION] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[FICHE_DE_SUIVIE]    Script Date: 04/20/2008 11:56:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[FICHE_DE_SUIVIE]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[FICHE_DE_SUIVIE](
	[ID_SUIVIE] [int] IDENTITY(1,1) NOT NULL,
	[ID_HOSPITALISATION] [nvarchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[DATE_SUIVIE] [datetime] NOT NULL,
	[HEURE_SUIVIE] [nvarchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ID_SIGNES_VITAUX] [int] NOT NULL,
	[OBSERVATIONS] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_FICHE_DE_SUIVIE] PRIMARY KEY CLUSTERED 
(
	[ID_SUIVIE] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[EXAMENS_A_FAIRE]    Script Date: 04/20/2008 11:56:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EXAMENS_A_FAIRE]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EXAMENS_A_FAIRE](
	[CODE_EXAMEN] [nvarchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[ID_SERVICES_RENDUS] [nvarchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[EXAM_DESCRIPTION] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[ID_DEPART_LABO] [int] NOT NULL,
	[UNITE_DE_MESURE] [nvarchar](5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[VALEUR_NORMALE] [nvarchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PAYES] [bit] NULL,
 CONSTRAINT [PK_EXAMENS_A_FAIRE] PRIMARY KEY CLUSTERED 
(
	[CODE_EXAMEN] ASC,
	[ID_SERVICES_RENDUS] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[SORTIE_DE_STOCK]    Script Date: 04/20/2008 11:56:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SORTIE_DE_STOCK]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SORTIE_DE_STOCK](
	[No_REFERENCE] [int] IDENTITY(1,1) NOT NULL,
	[ID_STOCK] [nvarchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[CODE_PRODUIT] [nvarchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[DATE_DE_SORTIE] [datetime] NOT NULL,
	[HEURE_DE_SORTIE] [nvarchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[QUANTITE_SORTIE] [float] NOT NULL,
	[DATE_EXPIRE] [datetime] NULL,
 CONSTRAINT [PK_SORTIE_DE_STOCK] PRIMARY KEY CLUSTERED 
(
	[No_REFERENCE] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[COMMANDE_STOCK]    Script Date: 04/20/2008 11:56:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[COMMANDE_STOCK]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[COMMANDE_STOCK](
	[No_RECQUISITION] [int] IDENTITY(1,1) NOT NULL,
	[ID_STOCK] [nvarchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[CODE_PRODUIT] [nvarchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[DATE_DE_COMMANDE] [datetime] NULL CONSTRAINT [DF_COMMANDE_STOCK_DATE_DE_COMMANDE]  DEFAULT (getdate()),
	[HEURE_COMMANDE] [nvarchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[QUANTITE_COMMANDEE] [float] NOT NULL,
	[OBSERVATIONS] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_COMMANDE_STOCK] PRIMARY KEY CLUSTERED 
(
	[No_RECQUISITION] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[ENTREE_EN_STOCK]    Script Date: 04/20/2008 11:56:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ENTREE_EN_STOCK]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ENTREE_EN_STOCK](
	[No_REFERENCE] [int] IDENTITY(1,1) NOT NULL,
	[ID_STOCK] [nvarchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[CODE_PRODUIT] [nvarchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[DATE_D_ENTREE] [datetime] NOT NULL,
	[HEURE_D_ENTREE] [nvarchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[QUANTITE_ENTREE] [float] NOT NULL,
	[PRIX_UNITAIRE] [money] NOT NULL,
	[DATE_EXPIRATION] [datetime] NULL,
	[ID_STOCK_SOURCE] [nvarchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_ENTREE_EN_STOCK] PRIMARY KEY CLUSTERED 
(
	[No_REFERENCE] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[SEUIL_D_ALERTE]    Script Date: 04/20/2008 11:56:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SEUIL_D_ALERTE]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SEUIL_D_ALERTE](
	[ID_SEUIL_D_ALERTE] [nvarchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[CODE_PRODUIT] [nvarchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[ID_SERVICE] [nvarchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[UNITE_DE_MESURE] [nvarchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[QTE_SEUIL_D_ALERTE] [float] NOT NULL,
 CONSTRAINT [PK_SEUIL_D_ALERTE] PRIMARY KEY CLUSTERED 
(
	[ID_SEUIL_D_ALERTE] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[LA_GARDE]    Script Date: 04/20/2008 11:56:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LA_GARDE]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[LA_GARDE](
	[ID_PERSONNEL] [nvarchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[ID_SERVICE] [nvarchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[DATE_GARDE_DEBUT] [datetime] NOT NULL,
	[HEURE_DEBUT] [nvarchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DATE_GARDE_FIN] [datetime] NULL,
	[HEURE_FIN] [nvarchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[UTILISATEURS]    Script Date: 04/20/2008 11:56:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UTILISATEURS]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[UTILISATEURS](
	[LOGIN_NAME] [nvarchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[PASSWORD] [nvarchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[ID_SPECIALISATION] [int] NOT NULL,
	[NOM] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[PRENOM] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[SEXE] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[ID_SERVICE] [nvarchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
 CONSTRAINT [PK_UTILISATEURS] PRIMARY KEY CLUSTERED 
(
	[LOGIN_NAME] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[STOCK]    Script Date: 04/20/2008 11:56:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[STOCK]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[STOCK](
	[ID_STOCK] [nvarchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[ID_SERVICE] [nvarchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[NAME_STOCK] [nvarchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
 CONSTRAINT [PK_STOCK] PRIMARY KEY CLUSTERED 
(
	[ID_STOCK] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[TRAITEMENT_CONSULTATION]    Script Date: 04/20/2008 11:56:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TRAITEMENT_CONSULTATION]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[TRAITEMENT_CONSULTATION](
	[No_TRAITEMENT_CONS] [int] IDENTITY(1,1) NOT NULL,
	[ID_CONSULTATION] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[ID_SERVICES_RENDUS] [nvarchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[PAYED] [bit] NULL,
	[RENDU] [bit] NULL,
 CONSTRAINT [PK_TRAITEMENT_CONSULTATION] PRIMARY KEY CLUSTERED 
(
	[No_TRAITEMENT_CONS] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[TARIF_DEL_ASSUREUR]    Script Date: 04/20/2008 11:56:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TARIF_DEL_ASSUREUR]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[TARIF_DEL_ASSUREUR](
	[ID_TARIF_ASSUREUR] [int] IDENTITY(1,1) NOT NULL,
	[ID_ASSUREUR] [nvarchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[ID_SERVICES_RENDUS] [nvarchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[MAXIMA_A_PAYER] [money] NOT NULL,
 CONSTRAINT [PK_TARIF_DEL_ASSUREUR] PRIMARY KEY CLUSTERED 
(
	[ID_TARIF_ASSUREUR] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[RESULTATS_EXAMEN]    Script Date: 04/20/2008 11:56:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RESULTATS_EXAMEN]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[RESULTATS_EXAMEN](
	[CODE_EXAMEN] [nvarchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[ID_SERVICES_RENDUS] [nvarchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[ID_CONSULTATION] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[DATE_EXAMEN] [datetime] NOT NULL,
	[ID_TYPE_ECHANTILLON] [int] NULL,
	[RESULTATS] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DEJA_EXAMINE] [bit] NULL CONSTRAINT [DF_RESULTATS_EXAMEN_DEJA_EXAMINE]  DEFAULT ((1)),
 CONSTRAINT [PK_RESULTATS_EXAMEN] PRIMARY KEY CLUSTERED 
(
	[CODE_EXAMEN] ASC,
	[ID_SERVICES_RENDUS] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[TRAITEMENT_SUIVIE]    Script Date: 04/20/2008 11:56:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TRAITEMENT_SUIVIE]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[TRAITEMENT_SUIVIE](
	[No_TRAITEMENT_SUIVIE] [int] IDENTITY(1,1) NOT NULL,
	[ID_SUIVIE] [int] NOT NULL,
	[ID_SERVICES_RENDUS] [nvarchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[PAYED] [bit] NULL,
	[RENDU] [bit] NULL,
 CONSTRAINT [PK_TRAITEMENT_SUIVIE] PRIMARY KEY CLUSTERED 
(
	[No_TRAITEMENT_SUIVIE] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[TRANSFERT]    Script Date: 04/20/2008 11:56:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TRANSFERT]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[TRANSFERT](
	[ID_TRANSFERT] [nvarchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[ID_CONSULTATION] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[ID_DESTINATION] [int] NOT NULL,
	[DATE_TRANSFERT] [datetime] NOT NULL,
	[HEURE_TRANSFERT] [nvarchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[RECOMMANDATIONS] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[OBSERVATIONS] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_TRANSFERT] PRIMARY KEY CLUSTERED 
(
	[ID_TRANSFERT] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[aspnet_Roles]    Script Date: 04/20/2008 11:56:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Roles]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[aspnet_Roles](
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[RoleId] [uniqueidentifier] NOT NULL DEFAULT (newid()),
	[RoleName] [nvarchar](256) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[LoweredRoleName] [nvarchar](256) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Description] [nvarchar](256) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
PRIMARY KEY NONCLUSTERED 
(
	[RoleId] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

/****** Object:  Index [aspnet_Roles_index1]    Script Date: 04/20/2008 11:56:54 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Roles]') AND name = N'aspnet_Roles_index1')
CREATE UNIQUE CLUSTERED INDEX [aspnet_Roles_index1] ON [dbo].[aspnet_Roles] 
(
	[ApplicationId] ASC,
	[LoweredRoleName] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[aspnet_Paths]    Script Date: 04/20/2008 11:56:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Paths]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[aspnet_Paths](
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[PathId] [uniqueidentifier] NOT NULL DEFAULT (newid()),
	[Path] [nvarchar](256) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[LoweredPath] [nvarchar](256) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
PRIMARY KEY NONCLUSTERED 
(
	[PathId] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

/****** Object:  Index [aspnet_Paths_index]    Script Date: 04/20/2008 11:56:54 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Paths]') AND name = N'aspnet_Paths_index')
CREATE UNIQUE CLUSTERED INDEX [aspnet_Paths_index] ON [dbo].[aspnet_Paths] 
(
	[ApplicationId] ASC,
	[LoweredPath] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[aspnet_Users]    Script Date: 04/20/2008 11:56:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[aspnet_Users](
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL DEFAULT (newid()),
	[UserName] [nvarchar](256) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[LoweredUserName] [nvarchar](256) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[MobileAlias] [nvarchar](16) COLLATE SQL_Latin1_General_CP1_CI_AS NULL DEFAULT (NULL),
	[IsAnonymous] [bit] NOT NULL DEFAULT ((0)),
	[LastActivityDate] [datetime] NOT NULL,
PRIMARY KEY NONCLUSTERED 
(
	[UserId] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

/****** Object:  Index [aspnet_Users_Index]    Script Date: 04/20/2008 11:56:54 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users]') AND name = N'aspnet_Users_Index')
CREATE UNIQUE CLUSTERED INDEX [aspnet_Users_Index] ON [dbo].[aspnet_Users] 
(
	[ApplicationId] ASC,
	[LoweredUserName] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
GO

/****** Object:  Index [aspnet_Users_Index2]    Script Date: 04/20/2008 11:56:54 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users]') AND name = N'aspnet_Users_Index2')
CREATE NONCLUSTERED INDEX [aspnet_Users_Index2] ON [dbo].[aspnet_Users] 
(
	[ApplicationId] ASC,
	[LastActivityDate] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[aspnet_Membership]    Script Date: 04/20/2008 11:56:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[aspnet_Membership](
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[Password] [nvarchar](128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[PasswordFormat] [int] NOT NULL DEFAULT ((0)),
	[PasswordSalt] [nvarchar](128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[MobilePIN] [nvarchar](16) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Email] [nvarchar](256) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[LoweredEmail] [nvarchar](256) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PasswordQuestion] [nvarchar](256) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PasswordAnswer] [nvarchar](128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[IsApproved] [bit] NOT NULL,
	[IsLockedOut] [bit] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[LastLoginDate] [datetime] NOT NULL,
	[LastPasswordChangedDate] [datetime] NOT NULL,
	[LastLockoutDate] [datetime] NOT NULL,
	[FailedPasswordAttemptCount] [int] NOT NULL,
	[FailedPasswordAttemptWindowStart] [datetime] NOT NULL,
	[FailedPasswordAnswerAttemptCount] [int] NOT NULL,
	[FailedPasswordAnswerAttemptWindowStart] [datetime] NOT NULL,
	[Comment] [ntext] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
PRIMARY KEY NONCLUSTERED 
(
	[UserId] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO

/****** Object:  Index [aspnet_Membership_index]    Script Date: 04/20/2008 11:56:54 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership]') AND name = N'aspnet_Membership_index')
CREATE CLUSTERED INDEX [aspnet_Membership_index] ON [dbo].[aspnet_Membership] 
(
	[ApplicationId] ASC,
	[LoweredEmail] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[aspnet_UsersInRoles]    Script Date: 04/20/2008 11:56:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_UsersInRoles]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[aspnet_UsersInRoles](
	[UserId] [uniqueidentifier] NOT NULL,
	[RoleId] [uniqueidentifier] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

/****** Object:  Index [aspnet_UsersInRoles_index]    Script Date: 04/20/2008 11:56:54 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_UsersInRoles]') AND name = N'aspnet_UsersInRoles_index')
CREATE NONCLUSTERED INDEX [aspnet_UsersInRoles_index] ON [dbo].[aspnet_UsersInRoles] 
(
	[RoleId] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[aspnet_Profile]    Script Date: 04/20/2008 11:56:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Profile]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[aspnet_Profile](
	[UserId] [uniqueidentifier] NOT NULL,
	[PropertyNames] [ntext] COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[PropertyValuesString] [ntext] COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[PropertyValuesBinary] [image] NOT NULL,
	[LastUpdatedDate] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[aspnet_PersonalizationPerUser]    Script Date: 04/20/2008 11:56:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationPerUser]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[aspnet_PersonalizationPerUser](
	[Id] [uniqueidentifier] NOT NULL DEFAULT (newid()),
	[PathId] [uniqueidentifier] NULL,
	[UserId] [uniqueidentifier] NULL,
	[PageSettings] [image] NOT NULL,
	[LastUpdatedDate] [datetime] NOT NULL,
PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO

/****** Object:  Index [aspnet_PersonalizationPerUser_index1]    Script Date: 04/20/2008 11:56:54 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationPerUser]') AND name = N'aspnet_PersonalizationPerUser_index1')
CREATE UNIQUE CLUSTERED INDEX [aspnet_PersonalizationPerUser_index1] ON [dbo].[aspnet_PersonalizationPerUser] 
(
	[PathId] ASC,
	[UserId] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
GO

/****** Object:  Index [aspnet_PersonalizationPerUser_ncindex2]    Script Date: 04/20/2008 11:56:54 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationPerUser]') AND name = N'aspnet_PersonalizationPerUser_ncindex2')
CREATE UNIQUE NONCLUSTERED INDEX [aspnet_PersonalizationPerUser_ncindex2] ON [dbo].[aspnet_PersonalizationPerUser] 
(
	[UserId] ASC,
	[PathId] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SPECIALISATION]    Script Date: 04/20/2008 11:56:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SPECIALISATION]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SPECIALISATION](
	[ID_SPECIALISATION] [int] IDENTITY(1,1) NOT NULL,
	[SPECIALITE] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ID_CATEG_UTILISATEUR] [int] NOT NULL,
 CONSTRAINT [PK_SPECIALISATION] PRIMARY KEY CLUSTERED 
(
	[ID_SPECIALISATION] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[SERVICES]    Script Date: 04/20/2008 11:56:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SERVICES]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SERVICES](
	[ID_SERVICE] [nvarchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[NOM_SERVICE] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[ID_CATEG_SERVICE] [int] NOT NULL,
 CONSTRAINT [PK_SERVICE] PRIMARY KEY CLUSTERED 
(
	[ID_SERVICE] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[PRODUIT_EN_STOCK]    Script Date: 04/20/2008 11:56:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PRODUIT_EN_STOCK]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[PRODUIT_EN_STOCK](
	[CODE_PRODUIT] [nvarchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[IDENTIFIC_PRODUIT] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[UNITE_DE_MESURE] [nvarchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ID_CATEG_PRODUIT] [int] NOT NULL,
 CONSTRAINT [PK_PRODUIT_EN_STOCK] PRIMARY KEY CLUSTERED 
(
	[CODE_PRODUIT] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[CHAMBRES]    Script Date: 04/20/2008 11:56:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CHAMBRES]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[CHAMBRES](
	[No_CHAMBRE] [nvarchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[ID_CATEG_CHAMBRE] [int] NOT NULL,
	[DISPONIBLE] [bit] NOT NULL,
 CONSTRAINT [PK_CHAMBRES] PRIMARY KEY CLUSTERED 
(
	[No_CHAMBRE] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[SERVICES_RENDUS]    Script Date: 04/20/2008 11:56:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SERVICES_RENDUS]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SERVICES_RENDUS](
	[ID_SERVICES_RENDUS] [nvarchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[DESCRIPTION_SERV_RENDUS] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[ID_CATEG_SER_RENDUS] [int] NOT NULL,
 CONSTRAINT [PK_SERVICES_RENDUS] PRIMARY KEY CLUSTERED 
(
	[ID_SERVICES_RENDUS] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[FACTURES]    Script Date: 04/20/2008 11:56:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[FACTURES]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[FACTURES](
	[NO_FACTURE] [int] IDENTITY(1,1) NOT NULL,
	[ID_CONSULTATION] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[DATE_FACTURE] [datetime] NOT NULL,
	[MONTANT_TOTAL] [money] NOT NULL,
	[AVANCE] [money] NULL,
	[RESTE] [money] NULL,
	[PAYE] [bit] NOT NULL,
 CONSTRAINT [PK_FACTURES] PRIMARY KEY CLUSTERED 
(
	[NO_FACTURE] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[LES_PLAINTES_DE_CONSULTATION]    Script Date: 04/20/2008 11:56:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LES_PLAINTES_DE_CONSULTATION]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[LES_PLAINTES_DE_CONSULTATION](
	[No_REFERENCE] [int] IDENTITY(1,1) NOT NULL,
	[CODE_PLAINTE] [int] NOT NULL,
	[ID_CONSULTATION] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[CHECKED] [bit] NULL,
 CONSTRAINT [PK_LES_PLAINTES_DE_CONSULTATION] PRIMARY KEY CLUSTERED 
(
	[No_REFERENCE] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

/****** Object:  Index [ID_CONSULTATION_SEARCH_Index]    Script Date: 04/20/2008 11:56:54 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[LES_PLAINTES_DE_CONSULTATION]') AND name = N'ID_CONSULTATION_SEARCH_Index')
CREATE NONCLUSTERED INDEX [ID_CONSULTATION_SEARCH_Index] ON [dbo].[LES_PLAINTES_DE_CONSULTATION] 
(
	[ID_CONSULTATION] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PLAINTES]    Script Date: 04/20/2008 11:56:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PLAINTES]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[PLAINTES](
	[CODE_PLAINTE] [int] IDENTITY(1,1) NOT NULL,
	[DESCRIPTION_PLAINTE] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[ID_CATEG_PLAINTES] [int] NULL,
 CONSTRAINT [PK_PLAINTES] PRIMARY KEY CLUSTERED 
(
	[CODE_PLAINTE] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[aspnet_PersonalizationAllUsers]    Script Date: 04/20/2008 11:56:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationAllUsers]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[aspnet_PersonalizationAllUsers](
	[PathId] [uniqueidentifier] NOT NULL,
	[PageSettings] [image] NOT NULL,
	[LastUpdatedDate] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[PathId] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[PATIENT]    Script Date: 04/20/2008 11:56:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PATIENT]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[PATIENT](
	[ID_PATIENT] [nvarchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[NOM] [dbo].[kamonyo_name] NOT NULL,
	[PRENOM] [dbo].[kamonyo_name] NULL,
	[AUTRE_NOM] [dbo].[kamonyo_name] NULL,
	[ID_ASSUREUR] [nvarchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[PROFESSION] [nvarchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[SEXE] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF_PATIENT_SEXE]  DEFAULT ('M'),
	[DATE_NAISSANCE] [datetime] NOT NULL,
	[No_CARTE_IDENTITE] [nvarchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF_PATIENT_No_CARTE_IDENTITE]  DEFAULT (N'-'),
	[RELIGION] [nvarchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[MARITAL_STATUS] [nvarchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[CONJOINT] [dbo].[kamonyo_name] NULL CONSTRAINT [DF_PATIENT_CONJOINT]  DEFAULT (N'-'),
	[TELEPHONE] [nvarchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CONTACT_D_URGENCE] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DATE_D_ENREGISTREMENT] [datetime] NULL,
	[No_CARTE_ASSUREUR] [nvarchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF_PATIENT_No_CARTE_ASSUREUR]  DEFAULT (N'-'),
	[ID_CATEGORY_PATIENT] [int] NOT NULL,
	[NATIONALITY] [nvarchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PROVINCE] [nvarchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF_PATIENT_PROVINCE]  DEFAULT (N'-'),
	[DISTRICT] [nvarchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF_PATIENT_DISTRICT]  DEFAULT (N'-'),
 CONSTRAINT [PK_PATIENT] PRIMARY KEY CLUSTERED 
(
	[ID_PATIENT] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[CATEG_PERSONNEL]    Script Date: 04/20/2008 11:56:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CATEG_PERSONNEL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[CATEG_PERSONNEL](
	[ID_CATEG_PERSONNEL] [int] IDENTITY(1000,100) NOT NULL,
	[CATEG_IDENTIFICATION] [dbo].[kamonyo_name] NOT NULL,
 CONSTRAINT [PK_CATEG_PERSONNEL] PRIMARY KEY CLUSTERED 
(
	[ID_CATEG_PERSONNEL] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  StoredProcedure [dbo].[INSERT_INTO_CATEG_PERSONNEL]    Script Date: 04/20/2008 11:56:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[INSERT_INTO_CATEG_PERSONNEL]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[INSERT_INTO_CATEG_PERSONNEL]

@CATEG_IDENTIFICATION	kamonyo_name

AS
INSERT INTO CATEG_PERSONNEL
VALUES(@CATEG_IDENTIFICATION)' 
END
GO
/****** Object:  StoredProcedure [dbo].[DELETE_PERSONNEL_DE_GARDE]    Script Date: 04/20/2008 11:56:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DELETE_PERSONNEL_DE_GARDE]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[DELETE_PERSONNEL_DE_GARDE]

@ID_PERSONNEL	nvarchar(10)	,
@NOM	kamonyo_name

AS
DELETE PERSONNEL_DE_GARDE
WHERE ID_PERSONNEL=@ID_PERSONNEL AND NOM=@NOM ' 
END
GO
/****** Object:  Table [dbo].[CATEGORY_PLAINTES]    Script Date: 04/20/2008 11:56:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CATEGORY_PLAINTES]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[CATEGORY_PLAINTES](
	[ID_CATEG_PLAINTES] [int] IDENTITY(10,100) NOT NULL,
	[CATEGORY_DESCRIPTION] [dbo].[kamonyo_name] NOT NULL,
 CONSTRAINT [PK_CATEGORY_PLAINTES] PRIMARY KEY CLUSTERED 
(
	[ID_CATEG_PLAINTES] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  StoredProcedure [dbo].[DELETE_CATEG_PERSONNEL]    Script Date: 04/20/2008 11:56:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DELETE_CATEG_PERSONNEL]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[DELETE_CATEG_PERSONNEL]

@ID_CATEG_PERSONNEL	int	,
@CATEG_IDENTIFICATION	kamonyo_name

AS
DELETE CATEG_PERSONNEL
WHERE ID_CATEG_PERSONNEL=@ID_CATEG_PERSONNEL AND CATEG_IDENTIFICATION=@CATEG_IDENTIFICATION' 
END
GO
/****** Object:  StoredProcedure [dbo].[UPDATE_CATEG_PERSONNEL]    Script Date: 04/20/2008 11:56:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UPDATE_CATEG_PERSONNEL]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[UPDATE_CATEG_PERSONNEL]

@ID_CATEG_PERSONNEL	int	,
@CATEG_IDENTIFICATION	kamonyo_name

AS
UPDATE CATEG_PERSONNEL
SET CATEG_IDENTIFICATION=@CATEG_IDENTIFICATION
WHERE ID_CATEG_PERSONNEL=@ID_CATEG_PERSONNEL' 
END
GO
/****** Object:  Table [dbo].[PERSONNEL_DE_GARDE]    Script Date: 04/20/2008 11:56:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PERSONNEL_DE_GARDE]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[PERSONNEL_DE_GARDE](
	[ID_PERSONNEL] [nvarchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[NOM] [dbo].[kamonyo_name] NOT NULL,
	[PRENOM] [dbo].[kamonyo_name] NULL,
	[AUTRE_NOM] [dbo].[kamonyo_name] NULL,
	[SEXE] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF_PERSONNEL_DE_GARDE_SEXE]  DEFAULT ('(''M'',''F'')'),
	[ID_CATEG_PERSONNEL] [int] NOT NULL,
	[TELEPHONE] [nvarchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_PERSONNEL_DE_GARDE] PRIMARY KEY CLUSTERED 
(
	[ID_PERSONNEL] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  StoredProcedure [dbo].[UPDATE_PAYER_RENDEZ_VOUS_CONSULTATION]    Script Date: 04/20/2008 11:56:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UPDATE_PAYER_RENDEZ_VOUS_CONSULTATION]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

CREATE PROCEDURE [dbo].[UPDATE_PAYER_RENDEZ_VOUS_CONSULTATION]

@ID_PATIENT nvarchar(20),
@ID_CONSULTATION nvarchar(50)

AS
UPDATE RENDEZ_VOUS_CONSULTATION
SET PAYE=1
WHERE ID_PATIENT=@ID_PATIENT AND ID_CONSULTATION=@ID_CONSULTATION


' 
END
GO
/****** Object:  View [dbo].[Prix_de_Chaque_Examen_A_Faire]    Script Date: 04/20/2008 11:56:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[Prix_de_Chaque_Examen_A_Faire]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW [dbo].[Prix_de_Chaque_Examen_A_Faire]
AS
SELECT     dbo.RESULTATS_EXAMEN.ID_CONSULTATION AS [No CONSULTATION], dbo.ASSUREUR.NOM_ASSUREUR AS ASSUREUR, 
                      dbo.SERVICES_RENDUS.DESCRIPTION_SERV_RENDUS AS EXAMENS, dbo.TARIF_DEL_ASSUREUR.MAXIMA_A_PAYER AS [PRIX TOTAL], 
                      dbo.ASSUREUR.POURCENTAGE AS [%], dbo.TARIF_DEL_ASSUREUR.MAXIMA_A_PAYER * dbo.ASSUREUR.POURCENTAGE AS [Prix Personnel], 
                      dbo.TARIF_DEL_ASSUREUR.MAXIMA_A_PAYER - dbo.TARIF_DEL_ASSUREUR.MAXIMA_A_PAYER * dbo.ASSUREUR.POURCENTAGE AS [Prix de l''Assureur'']
FROM         dbo.SERVICES_RENDUS INNER JOIN
                      dbo.TARIF_DEL_ASSUREUR ON dbo.SERVICES_RENDUS.ID_SERVICES_RENDUS = dbo.TARIF_DEL_ASSUREUR.ID_SERVICES_RENDUS INNER JOIN
                      dbo.ASSUREUR ON dbo.TARIF_DEL_ASSUREUR.ID_ASSUREUR = dbo.ASSUREUR.ID_ASSUREUR INNER JOIN
                      dbo.RESULTATS_EXAMEN ON dbo.SERVICES_RENDUS.ID_SERVICES_RENDUS = dbo.RESULTATS_EXAMEN.ID_SERVICES_RENDUS INNER JOIN
                      dbo.CATEG_SERVICES_RENDUS ON 
                      dbo.SERVICES_RENDUS.ID_CATEG_SER_RENDUS = dbo.CATEG_SERVICES_RENDUS.ID_CATEG_SER_RENDUS INNER JOIN
                      dbo.EXAMENS_A_FAIRE ON dbo.SERVICES_RENDUS.ID_SERVICES_RENDUS = dbo.EXAMENS_A_FAIRE.ID_SERVICES_RENDUS AND 
                      dbo.RESULTATS_EXAMEN.CODE_EXAMEN = dbo.EXAMENS_A_FAIRE.CODE_EXAMEN AND 
                      dbo.RESULTATS_EXAMEN.ID_SERVICES_RENDUS = dbo.EXAMENS_A_FAIRE.ID_SERVICES_RENDUS
WHERE     (dbo.EXAMENS_A_FAIRE.PAYES = 0)
' 
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[28] 2[15] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1[47] 4[19] 3) )"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4[34] 2[25] 3) )"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4[50] 3) )"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 1
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "TARIF_DEL_ASSUREUR"
            Begin Extent = 
               Top = 3
               Left = 617
               Bottom = 122
               Right = 772
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "ASSUREUR"
            Begin Extent = 
               Top = 6
               Left = 805
               Bottom = 110
               Right = 950
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "CATEG_SERVICES_RENDUS"
            Begin Extent = 
               Top = 151
               Left = 569
               Bottom = 248
               Right = 757
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "SERVICES_RENDUS"
            Begin Extent = 
               Top = 5
               Left = 404
               Bottom = 109
               Right = 596
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "EXAMENS_A_FAIRE"
            Begin Extent = 
               Top = 77
               Left = 194
               Bottom = 256
               Right = 388
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "RESULTATS_EXAMEN"
            Begin Extent = 
               Top = 0
               Left = 0
               Bottom = 153
               Right = 181
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
      PaneHidden = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
        ' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'VIEW', @level1name=N'Prix_de_Chaque_Examen_A_Faire'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N' Width = 284
         Width = 1680
         Width = 1020
         Width = 2685
         Width = 1350
         Width = 660
         Width = 1275
         Width = 1695
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'VIEW', @level1name=N'Prix_de_Chaque_Examen_A_Faire'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'VIEW', @level1name=N'Prix_de_Chaque_Examen_A_Faire'

GO
/****** Object:  View [dbo].[prix_examen]    Script Date: 04/20/2008 11:56:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[prix_examen]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW [dbo].[prix_examen]
AS
SELECT     dbo.SERVICES_RENDUS.DESCRIPTION_SERV_RENDUS, dbo.TARIF_DEL_ASSUREUR.MAXIMA_A_PAYER, dbo.ASSUREUR.POURCENTAGE, 
                      dbo.TARIF_DEL_ASSUREUR.MAXIMA_A_PAYER * dbo.ASSUREUR.POURCENTAGE AS Prix
FROM         dbo.SERVICES_RENDUS INNER JOIN
                      dbo.TARIF_DEL_ASSUREUR ON dbo.SERVICES_RENDUS.ID_SERVICES_RENDUS = dbo.TARIF_DEL_ASSUREUR.ID_SERVICES_RENDUS INNER JOIN
                      dbo.ASSUREUR ON dbo.TARIF_DEL_ASSUREUR.ID_ASSUREUR = dbo.ASSUREUR.ID_ASSUREUR INNER JOIN
                      dbo.EXAMENS_A_FAIRE ON dbo.SERVICES_RENDUS.ID_SERVICES_RENDUS = dbo.EXAMENS_A_FAIRE.ID_SERVICES_RENDUS INNER JOIN
                      dbo.RESULTATS_EXAMEN ON dbo.SERVICES_RENDUS.ID_SERVICES_RENDUS = dbo.RESULTATS_EXAMEN.ID_SERVICES_RENDUS AND 
                      dbo.EXAMENS_A_FAIRE.CODE_EXAMEN = dbo.RESULTATS_EXAMEN.CODE_EXAMEN AND 
                      dbo.EXAMENS_A_FAIRE.ID_SERVICES_RENDUS = dbo.RESULTATS_EXAMEN.ID_SERVICES_RENDUS
' 
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[43] 4[19] 2[16] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4[30] 2[40] 3) )"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 3
   End
   Begin DiagramPane = 
      PaneHidden = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "SERVICES_RENDUS"
            Begin Extent = 
               Top = 141
               Left = 361
               Bottom = 263
               Right = 589
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "TARIF_DEL_ASSUREUR"
            Begin Extent = 
               Top = 6
               Left = 541
               Bottom = 172
               Right = 735
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "ASSUREUR"
            Begin Extent = 
               Top = 6
               Left = 773
               Bottom = 110
               Right = 938
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "EXAMENS_A_FAIRE"
            Begin Extent = 
               Top = 9
               Left = 0
               Bottom = 168
               Right = 194
            End
            DisplayFlags = 280
            TopColumn = 1
         End
         Begin Table = "RESULTATS_EXAMEN"
            Begin Extent = 
               Top = 20
               Left = 261
               Bottom = 180
               Right = 460
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1860
         Width = 1395
         Width = 720
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
 ' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'VIEW', @level1name=N'prix_examen'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'        Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'VIEW', @level1name=N'prix_examen'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'VIEW', @level1name=N'prix_examen'

GO
/****** Object:  StoredProcedure [dbo].[INSERT_INTO_TARIF_DEL_ASSUREUR]    Script Date: 04/20/2008 11:56:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[INSERT_INTO_TARIF_DEL_ASSUREUR]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[INSERT_INTO_TARIF_DEL_ASSUREUR]

@ID_ASSUREUR	nvarchar(10)	,
@ID_SERVICES_RENDUS	nvarchar(10)	,
@MAXIMA_A_PAYER	money	
		
AS 
INSERT INTO TARIF_DEL_ASSUREUR
VALUES(@ID_ASSUREUR,@ID_SERVICES_RENDUS	,@MAXIMA_A_PAYER)
' 
END
GO
/****** Object:  StoredProcedure [dbo].[UPDATE_SORTIE_D_HOSPITALISATION]    Script Date: 04/20/2008 11:56:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UPDATE_SORTIE_D_HOSPITALISATION]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'


CREATE PROCEDURE [dbo].[UPDATE_SORTIE_D_HOSPITALISATION]

@ID_HOSPITALISATION	nvarchar(10)	,
@DATE_DE_SORTIE	datetime,
@HEURE_DE_SORTIE	nvarchar(10)	,
@No_CHAMBRE	nvarchar(10)

AS
UPDATE HOSPITALISATION
SET DATE_DE_SORTIE=@DATE_DE_SORTIE,
HEURE_DE_SORTIE=@HEURE_DE_SORTIE
WHERE ID_HOSPITALISATION=@ID_HOSPITALISATION AND No_CHAMBRE=@No_CHAMBRE

UPDATE CHAMBRES
SET DISPONIBLE=1
WHERE CHAMBRES.No_CHAMBRE=@No_CHAMBRE
' 
END
GO
/****** Object:  StoredProcedure [dbo].[UPDATE_CHAMBRES_TABLE]    Script Date: 04/20/2008 11:56:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UPDATE_CHAMBRES_TABLE]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[UPDATE_CHAMBRES_TABLE]

@No_CHAMBRE	nvarchar(10)	,
@ID_CATEG_CHAMBRE	int	,
@DISPONIBLE	bit	

AS
UPDATE CHAMBRES
SET ID_CATEG_CHAMBRE=@ID_CATEG_CHAMBRE,
DISPONIBLE=@DISPONIBLE
WHERE No_CHAMBRE=@No_CHAMBRE' 
END
GO
/****** Object:  StoredProcedure [dbo].[UPDATE_HOSPITALISATION]    Script Date: 04/20/2008 11:56:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UPDATE_HOSPITALISATION]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[UPDATE_HOSPITALISATION]

@ID_HOSPITALISATION	nvarchar(10)	,
@No_CHAMBRE	nvarchar(10)	,
@DATE_DE_SORTIE	datetime	,
@HEURE_DE_SORTIE	nvarchar(10)

AS 
DECLARE @DATE_SORTIE AS DATETIME
DECLARE @STRING_DATE AS NVARCHAR(20)
DECLARE @HEURE_SORTIE AS NVARCHAR(10)

SET @DATE_SORTIE= GETDATE();
SET @STRING_DATE=@DATE_SORTIE;
SET @HEURE_SORTIE=SUBSTRING(@STRING_DATE,12,11);
UPDATE HOSPITALISATION
SET DATE_DE_SORTIE=@DATE_SORTIE,
HEURE_DE_SORTIE=@HEURE_SORTIE,
DECHARGE=1
WHERE ID_HOSPITALISATION=@ID_HOSPITALISATION

UPDATE CHAMBRES
SET DISPONIBLE=1
WHERE CHAMBRES.No_CHAMBRE=@No_CHAMBRE








' 
END
GO
/****** Object:  View [dbo].[PATIENTS_HOSPITALISES]    Script Date: 04/20/2008 11:56:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[PATIENTS_HOSPITALISES]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW [dbo].[PATIENTS_HOSPITALISES]
AS
SELECT     dbo.HOSPITALISATION.ID_HOSPITALISATION, dbo.PATIENT.NOM, dbo.PATIENT.PRENOM, dbo.PATIENT.SEXE, dbo.HOSPITALISATION.No_CHAMBRE, 
                      dbo.HOSPITALISATION.ID_SERVICE, dbo.HOSPITALISATION.DATE_D_ENTREE, dbo.HOSPITALISATION.HEURE_D_ENTREE
FROM         dbo.CHAMBRES INNER JOIN
                      dbo.HOSPITALISATION ON dbo.CHAMBRES.No_CHAMBRE = dbo.HOSPITALISATION.No_CHAMBRE INNER JOIN
                      dbo.CONSULTATION ON dbo.HOSPITALISATION.ID_CONSULTATION = dbo.CONSULTATION.ID_CONSULTATION INNER JOIN
                      dbo.PATIENT ON dbo.CONSULTATION.ID_PATIENT = dbo.PATIENT.ID_PATIENT
WHERE     (dbo.HOSPITALISATION.DECHARGE = 0)
' 
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[36] 4[25] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "CHAMBRES"
            Begin Extent = 
               Top = 25
               Left = 6
               Bottom = 129
               Right = 193
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "HOSPITALISATION"
            Begin Extent = 
               Top = 1
               Left = 262
               Bottom = 187
               Right = 461
            End
            DisplayFlags = 280
            TopColumn = 1
         End
         Begin Table = "CONSULTATION"
            Begin Extent = 
               Top = 13
               Left = 498
               Bottom = 132
               Right = 698
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "PATIENT"
            Begin Extent = 
               Top = 12
               Left = 728
               Bottom = 131
               Right = 945
            End
            DisplayFlags = 280
            TopColumn = 6
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'VIEW', @level1name=N'PATIENTS_HOSPITALISES'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'      End
   End
End
' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'VIEW', @level1name=N'PATIENTS_HOSPITALISES'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'VIEW', @level1name=N'PATIENTS_HOSPITALISES'

GO
/****** Object:  View [dbo].[CHAMBRES_DISPONIBLES]    Script Date: 04/20/2008 11:56:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[CHAMBRES_DISPONIBLES]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW [dbo].[CHAMBRES_DISPONIBLES]
AS
SELECT     No_CHAMBRE, ID_CATEG_CHAMBRE
FROM         dbo.CHAMBRES
WHERE     (DISPONIBLE = 1)
' 
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "CHAMBRES"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 138
               Right = 266
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'VIEW', @level1name=N'CHAMBRES_DISPONIBLES'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'VIEW', @level1name=N'CHAMBRES_DISPONIBLES'

GO
/****** Object:  StoredProcedure [dbo].[INSERT_INTO_CHAMBRE_TABLE]    Script Date: 04/20/2008 11:56:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[INSERT_INTO_CHAMBRE_TABLE]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[INSERT_INTO_CHAMBRE_TABLE]

@No_CHAMBRE	nvarchar(10),
@ID_CATEG_CHAMBRE	int,
@DISPONIBLE	bit

AS 
INSERT INTO CHAMBRES
VALUES(@No_CHAMBRE	,@ID_CATEG_CHAMBRE,@DISPONIBLE)
' 
END
GO
/****** Object:  StoredProcedure [dbo].[INSERT_INTO_HOSPITALISATION]    Script Date: 04/20/2008 11:56:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[INSERT_INTO_HOSPITALISATION]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[INSERT_INTO_HOSPITALISATION]

@ID_HOSPITALISATION	nvarchar(20),
@ID_SERVICE	nvarchar(10)	,
@No_CHAMBRE	nvarchar(10)	,
@ID_CONSULTATION	nvarchar(50)	,
@DATE_D_ENTREE	datetime	,
@HEURE_D_ENTREE	nvarchar(10),
@DECHARGE BIT		

AS
DECLARE @DATE_ENTREE AS DATETIME
DECLARE @HEURE_ENTREE AS NVARCHAR(10)
DECLARE @HEURE AS NVARCHAR(20)


SET @DATE_ENTREE=GETDATE();
SET @HEURE=@DATE_ENTREE
SET @HEURE_ENTREE=SUBSTRING(@HEURE,12,11);

INSERT INTO HOSPITALISATION(ID_HOSPITALISATION,ID_SERVICE,No_CHAMBRE,ID_CONSULTATION,
DATE_D_ENTREE,HEURE_D_ENTREE,DECHARGE)
VALUES(@ID_HOSPITALISATION,@ID_SERVICE,@No_CHAMBRE,@ID_CONSULTATION,@DATE_ENTREE,@HEURE_ENTREE,0)

UPDATE CHAMBRES
SET DISPONIBLE=0
WHERE CHAMBRES.No_CHAMBRE=@No_CHAMBRE





' 
END
GO
/****** Object:  StoredProcedure [dbo].[INSERT_INTO_SORTIE_D_HOSPITALISATION]    Script Date: 04/20/2008 11:56:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[INSERT_INTO_SORTIE_D_HOSPITALISATION]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'


CREATE PROCEDURE [dbo].[INSERT_INTO_SORTIE_D_HOSPITALISATION]

@ID_HOSPITALISATION	nvarchar(10)	,
@DATE_DE_SORTIE	datetime,
@HEURE_DE_SORTIE	nvarchar(10)	,
@No_CHAMBRE	nvarchar(10)

AS
INSERT INTO SORTIE_D_HOSPITALISATION
VALUES(@ID_HOSPITALISATION,@DATE_DE_SORTIE	,@HEURE_DE_SORTIE,@No_CHAMBRE)

UPDATE CHAMBRES
SET DISPONIBLE=1
WHERE CHAMBRES.No_CHAMBRE=@No_CHAMBRE
' 
END
GO
/****** Object:  StoredProcedure [dbo].[INSERT_INTO_SIGNES_VITAUX]    Script Date: 04/20/2008 11:56:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[INSERT_INTO_SIGNES_VITAUX]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[INSERT_INTO_SIGNES_VITAUX]

@SIGNES_VITAUX	nvarchar(50)	

AS
INSERT INTO SIGNES_VITAUX
VALUES(@SIGNES_VITAUX)
' 
END
GO
/****** Object:  StoredProcedure [dbo].[DELETE_SIGNES_VITAUX]    Script Date: 04/20/2008 11:56:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DELETE_SIGNES_VITAUX]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[DELETE_SIGNES_VITAUX]

@ID_SIGNES_VITAUX	int	

AS
DELETE SIGNES_VITAUX
WHERE ID_SIGNES_VITAUX=@ID_SIGNES_VITAUX ' 
END
GO
/****** Object:  StoredProcedure [dbo].[INSERT_INTO_LABO_DEPARTMENT]    Script Date: 04/20/2008 11:56:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[INSERT_INTO_LABO_DEPARTMENT]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[INSERT_INTO_LABO_DEPARTMENT]

@NOM_DEPART_LABO	nvarchar(50)	

AS
INSERT INTO LABO_DEPARTMENT
VALUES(@NOM_DEPART_LABO)
' 
END
GO
/****** Object:  StoredProcedure [dbo].[DELETE_LABO_DEPARTMENT]    Script Date: 04/20/2008 11:56:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DELETE_LABO_DEPARTMENT]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[DELETE_LABO_DEPARTMENT]

@ID_DEPART_LABO	int	

AS
DELETE LABO_DEPARTMENT
WHERE ID_DEPART_LABO=@ID_DEPART_LABO ' 
END
GO
/****** Object:  StoredProcedure [dbo].[DELETE_CATEGORY_PATIENT]    Script Date: 04/20/2008 11:56:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DELETE_CATEGORY_PATIENT]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[DELETE_CATEGORY_PATIENT]

@ID_CATEGORY_PATIENT	int	

AS
DELETE CATEGORY_PATIENT
WHERE ID_CATEGORY_PATIENT=@ID_CATEGORY_PATIENT
' 
END
GO
/****** Object:  StoredProcedure [dbo].[DELETE_PRODUIT_EN_STOCK]    Script Date: 04/20/2008 11:56:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DELETE_PRODUIT_EN_STOCK]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[DELETE_PRODUIT_EN_STOCK]

@CODE_PRODUIT	nvarchar(10)	,
@IDENTIFIC_PRODUIT	nvarchar(50)	

AS
DELETE PRODUIT_EN_STOCK
WHERE CODE_PRODUIT=@CODE_PRODUIT AND IDENTIFIC_PRODUIT=@IDENTIFIC_PRODUIT' 
END
GO
/****** Object:  StoredProcedure [dbo].[UPDATE_PRODUIT_EN_STOCK]    Script Date: 04/20/2008 11:56:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UPDATE_PRODUIT_EN_STOCK]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[UPDATE_PRODUIT_EN_STOCK]

@CODE_PRODUIT	nvarchar(10)	,
@IDENTIFIC_PRODUIT	nvarchar(50)	,
@UNITE_DE_MESURE	nvarchar(10)	,
@ID_CATEG_PRODUIT	int	

AS
UPDATE PRODUIT_EN_STOCK
SET IDENTIFIC_PRODUIT=@IDENTIFIC_PRODUIT,
UNITE_DE_MESURE=@UNITE_DE_MESURE,
ID_CATEG_PRODUIT=@ID_CATEG_PRODUIT
WHERE CODE_PRODUIT=@CODE_PRODUIT' 
END
GO
/****** Object:  StoredProcedure [dbo].[INSERT_INTO_PRODUIT_EN_STOCK]    Script Date: 04/20/2008 11:56:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[INSERT_INTO_PRODUIT_EN_STOCK]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[INSERT_INTO_PRODUIT_EN_STOCK]

@CODE_PRODUIT	nvarchar(10)	,
@IDENTIFIC_PRODUIT	nvarchar(50)	,
@UNITE_DE_MESURE	nvarchar(10)	,
@ID_CATEG_PRODUIT	int

AS
INSERT INTO PRODUIT_EN_STOCK
VALUES(@CODE_PRODUIT	,@IDENTIFIC_PRODUIT	,@UNITE_DE_MESURE,@ID_CATEG_PRODUIT)' 
END
GO
/****** Object:  StoredProcedure [dbo].[INSERT_INTO_SERVICE_TABLE]    Script Date: 04/20/2008 11:56:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[INSERT_INTO_SERVICE_TABLE]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[INSERT_INTO_SERVICE_TABLE]

@ID_SERVICE	nvarchar(10)	,
@NOM_SERVICE	nvarchar(50)	,
@ID_CATEG_SERVICE	int	

AS
INSERT INTO SERVICES
VALUES(@ID_SERVICE	,@NOM_SERVICE	,@ID_CATEG_SERVICE)
' 
END
GO
/****** Object:  StoredProcedure [dbo].[UPDATE_SERVICES_TABLE]    Script Date: 04/20/2008 11:56:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UPDATE_SERVICES_TABLE]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[UPDATE_SERVICES_TABLE]

@ID_SERVICE	nvarchar(10)	,
@NOM_SERVICE	nvarchar(50)	,
@ID_CATEG_SERVICE	int

AS
UPDATE SERVICES
SET NOM_SERVICE=@NOM_SERVICE,
ID_CATEG_SERVICE=@ID_CATEG_SERVICE
WHERE ID_SERVICE=@ID_SERVICE' 
END
GO
/****** Object:  StoredProcedure [dbo].[DELETE_SERVICES_TABLE]    Script Date: 04/20/2008 11:56:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DELETE_SERVICES_TABLE]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[DELETE_SERVICES_TABLE]

@ID_SERVICE	nvarchar(10)	

AS
DELETE SERVICES
WHERE ID_SERVICE=@ID_SERVICE ' 
END
GO
/****** Object:  StoredProcedure [dbo].[UPDATE_SERVICES_RENDUS]    Script Date: 04/20/2008 11:56:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UPDATE_SERVICES_RENDUS]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[UPDATE_SERVICES_RENDUS]

@ID_SERVICES_RENDUS	nvarchar(10)	,
@DESCRIPTION_SERV_RENDUS	nvarchar(50)	,
@ID_CATEG_SER_RENDUS	int	

AS
UPDATE SERVICES_RENDUS
SET DESCRIPTION_SERV_RENDUS=@DESCRIPTION_SERV_RENDUS,
ID_CATEG_SER_RENDUS=@ID_CATEG_SER_RENDUS
WHERE ID_SERVICES_RENDUS=@ID_SERVICES_RENDUS' 
END
GO
/****** Object:  StoredProcedure [dbo].[DELETE_SERVICES_RENDUS]    Script Date: 04/20/2008 11:56:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DELETE_SERVICES_RENDUS]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[DELETE_SERVICES_RENDUS]

@ID_SERVICES_RENDUS	nvarchar(10)	

AS
DELETE SERVICES_RENDUS
WHERE ID_SERVICES_RENDUS=@ID_SERVICES_RENDUS ' 
END
GO
/****** Object:  View [dbo].[EXAMENS_PROPOSES]    Script Date: 04/20/2008 11:56:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[EXAMENS_PROPOSES]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW [dbo].[EXAMENS_PROPOSES]
AS
SELECT     dbo.EXAMENS_A_FAIRE.CODE_EXAMEN, dbo.EXAMENS_A_FAIRE.ID_SERVICES_RENDUS, dbo.EXAMENS_A_FAIRE.EXAM_DESCRIPTION, 
                      dbo.CONSULTATION.ID_CONSULTATION, dbo.EXAMENS_A_FAIRE.ID_DEPART_LABO, dbo.EXAMENS_A_FAIRE.UNITE_DE_MESURE, 
                      dbo.EXAMENS_A_FAIRE.VALEUR_NORMALE, dbo.SERVICES_RENDUS.ID_CATEG_SER_RENDUS, 
                      dbo.CATEG_SERVICES_RENDUS.DESCRIPTION_SERVICE
FROM         dbo.EXAMENS_A_FAIRE INNER JOIN
                      dbo.RESULTATS_EXAMEN ON dbo.EXAMENS_A_FAIRE.CODE_EXAMEN = dbo.RESULTATS_EXAMEN.CODE_EXAMEN AND 
                      dbo.EXAMENS_A_FAIRE.ID_SERVICES_RENDUS = dbo.RESULTATS_EXAMEN.ID_SERVICES_RENDUS INNER JOIN
                      dbo.CONSULTATION ON dbo.RESULTATS_EXAMEN.ID_CONSULTATION = dbo.CONSULTATION.ID_CONSULTATION INNER JOIN
                      dbo.SERVICES_RENDUS ON dbo.EXAMENS_A_FAIRE.ID_SERVICES_RENDUS = dbo.SERVICES_RENDUS.ID_SERVICES_RENDUS AND 
                      dbo.RESULTATS_EXAMEN.ID_SERVICES_RENDUS = dbo.SERVICES_RENDUS.ID_SERVICES_RENDUS INNER JOIN
                      dbo.CATEG_SERVICES_RENDUS ON 
                      dbo.SERVICES_RENDUS.ID_CATEG_SER_RENDUS = dbo.CATEG_SERVICES_RENDUS.ID_CATEG_SER_RENDUS
WHERE     (dbo.EXAMENS_A_FAIRE.PAYES = 0)
' 
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[36] 4[32] 2[13] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4[46] 2[19] 3) )"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 3
   End
   Begin DiagramPane = 
      PaneHidden = 
      Begin Origin = 
         Top = -96
         Left = 0
      End
      Begin Tables = 
         Begin Table = "EXAMENS_A_FAIRE"
            Begin Extent = 
               Top = 5
               Left = 0
               Bottom = 169
               Right = 194
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "RESULTATS_EXAMEN"
            Begin Extent = 
               Top = 9
               Left = 297
               Bottom = 164
               Right = 496
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "CONSULTATION"
            Begin Extent = 
               Top = 0
               Left = 617
               Bottom = 190
               Right = 817
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "SERVICES_RENDUS"
            Begin Extent = 
               Top = 192
               Left = 474
               Bottom = 296
               Right = 702
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "CATEG_SERVICES_RENDUS"
            Begin Extent = 
               Top = 168
               Left = 232
               Bottom = 257
               Right = 436
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 11
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1155
         Width = 1500
      End
   End
' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'VIEW', @level1name=N'EXAMENS_PROPOSES'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1950
         Alias = 900
         Table = 2370
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'VIEW', @level1name=N'EXAMENS_PROPOSES'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'VIEW', @level1name=N'EXAMENS_PROPOSES'

GO
/****** Object:  StoredProcedure [dbo].[INSERT_INTO_SERVICES_RENDUS]    Script Date: 04/20/2008 11:56:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[INSERT_INTO_SERVICES_RENDUS]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[INSERT_INTO_SERVICES_RENDUS]

@ID_SERVICES_RENDUS	nvarchar(10)	,
@DESCRIPTION_SERV_RENDUS	nvarchar(50)	,
@ID_CATEG_SER_RENDUS	int	

AS
INSERT INTO SERVICES_RENDUS
VALUES(@ID_SERVICES_RENDUS,@DESCRIPTION_SERV_RENDUS	,@ID_CATEG_SER_RENDUS)' 
END
GO
/****** Object:  StoredProcedure [dbo].[INSERT_INTO_STOCK_TABLE]    Script Date: 04/20/2008 11:56:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[INSERT_INTO_STOCK_TABLE]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[INSERT_INTO_STOCK_TABLE]

@ID_STOCK	nvarchar(10)	,
@ID_SERVICE	nvarchar(10)	,
@NAME_STOCK	nvarchar(20)	

AS
INSERT INTO STOCK
VALUES(@ID_STOCK,@ID_SERVICE,@NAME_STOCK)' 
END
GO
/****** Object:  StoredProcedure [dbo].[UPDATE_STOCK_TABLE]    Script Date: 04/20/2008 11:56:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UPDATE_STOCK_TABLE]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[UPDATE_STOCK_TABLE]

@ID_STOCK	nvarchar(10)	,
@ID_SERVICE	nvarchar(10)	,
@NAME_STOCK	nvarchar(20)	

AS
UPDATE STOCK
SET ID_SERVICE=@ID_SERVICE,
NAME_STOCK=@NAME_STOCK
WHERE ID_STOCK=@ID_STOCK' 
END
GO
/****** Object:  StoredProcedure [dbo].[DELETE_STOCK_TABLE]    Script Date: 04/20/2008 11:56:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DELETE_STOCK_TABLE]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[DELETE_STOCK_TABLE]

@ID_STOCK	nvarchar(10),
@NAME_STOCK	nvarchar(20)	

AS
DELETE STOCK
WHERE ID_STOCK=@ID_STOCK AND NAME_STOCK=@NAME_STOCK' 
END
GO
/****** Object:  StoredProcedure [dbo].[INSERT_INTO_ENTREE_EN_STOCK]    Script Date: 04/20/2008 11:56:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[INSERT_INTO_ENTREE_EN_STOCK]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[INSERT_INTO_ENTREE_EN_STOCK]

@ID_STOCK	nvarchar(10),
@CODE_PRODUIT	nvarchar(10)	,
@DATE_D_ENTREE	datetime,
@HEURE_D_ENTREE	nvarchar(10)	,
@QUANTITE_ENTREE	float,
@PRIX_UNITAIRE	money,
@DATE_EXPIRATION	datetime	,
@ID_STOCK_SOURCE	nvarchar(10)	

AS 
INSERT INTO ENTREE_EN_STOCK
VALUES(@ID_STOCK,@CODE_PRODUIT,@DATE_D_ENTREE	,@HEURE_D_ENTREE,
@QUANTITE_ENTREE,@PRIX_UNITAIRE,@DATE_EXPIRATION,@ID_STOCK_SOURCE)
' 
END
GO
/****** Object:  StoredProcedure [dbo].[INSERT_INTO_DESTINATION_TRANSFERT]    Script Date: 04/20/2008 11:56:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[INSERT_INTO_DESTINATION_TRANSFERT]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[INSERT_INTO_DESTINATION_TRANSFERT]

@NOM_DESTINATION	nvarchar(20)

AS 
INSERT INTO DESTINATION_TRANSFERT
VALUES(@NOM_DESTINATION)
' 
END
GO
/****** Object:  StoredProcedure [dbo].[DELETE_DESTINATION_TRANSFERT]    Script Date: 04/20/2008 11:56:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DELETE_DESTINATION_TRANSFERT]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[DELETE_DESTINATION_TRANSFERT]

@ID_DESTINATION	int	

AS
DELETE DESTINATION_TRANSFERT
WHERE ID_DESTINATION=@ID_DESTINATION ' 
END
GO
/****** Object:  View [dbo].[vw_aspnet_Applications]    Script Date: 04/20/2008 11:56:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_aspnet_Applications]'))
EXEC dbo.sp_executesql @statement = N'
  CREATE VIEW [dbo].[vw_aspnet_Applications]
  AS SELECT [dbo].[aspnet_Applications].[ApplicationName], [dbo].[aspnet_Applications].[LoweredApplicationName], [dbo].[aspnet_Applications].[ApplicationId], [dbo].[aspnet_Applications].[Description]
  FROM [dbo].[aspnet_Applications]
  ' 
GO
GRANT SELECT ON [dbo].[vw_aspnet_Applications] TO [aspnet_Membership_ReportingAccess]
GO
GRANT SELECT ON [dbo].[vw_aspnet_Applications] TO [aspnet_Personalization_ReportingAccess]
GO
GRANT SELECT ON [dbo].[vw_aspnet_Applications] TO [aspnet_Profile_ReportingAccess]
GO
GRANT SELECT ON [dbo].[vw_aspnet_Applications] TO [aspnet_Roles_ReportingAccess]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Applications_CreateApplication]    Script Date: 04/20/2008 11:56:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Applications_CreateApplication]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[aspnet_Applications_CreateApplication]
    @ApplicationName      nvarchar(256),
    @ApplicationId        uniqueidentifier OUTPUT
AS
BEGIN
    SELECT  @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName

    IF(@ApplicationId IS NULL)
    BEGIN
        DECLARE @TranStarted   bit
        SET @TranStarted = 0

        IF( @@TRANCOUNT = 0 )
        BEGIN
	        BEGIN TRANSACTION
	        SET @TranStarted = 1
        END
        ELSE
    	    SET @TranStarted = 0

        SELECT  @ApplicationId = ApplicationId
        FROM dbo.aspnet_Applications WITH (UPDLOCK, HOLDLOCK)
        WHERE LOWER(@ApplicationName) = LoweredApplicationName

        IF(@ApplicationId IS NULL)
        BEGIN
            SELECT  @ApplicationId = NEWID()
            INSERT  dbo.aspnet_Applications (ApplicationId, ApplicationName, LoweredApplicationName)
            VALUES  (@ApplicationId, @ApplicationName, LOWER(@ApplicationName))
        END


        IF( @TranStarted = 1 )
        BEGIN
            IF(@@ERROR = 0)
            BEGIN
	        SET @TranStarted = 0
	        COMMIT TRANSACTION
            END
            ELSE
            BEGIN
                SET @TranStarted = 0
                ROLLBACK TRANSACTION
            END
        END
    END
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Users_DeleteUser]    Script Date: 04/20/2008 11:56:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_DeleteUser]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_Users_DeleteUser]
    @ApplicationName  nvarchar(256),
    @UserName         nvarchar(256),
    @TablesToDeleteFrom int,
    @NumTablesDeletedFrom int OUTPUT
AS
BEGIN
    DECLARE @UserId               uniqueidentifier
    SELECT  @UserId               = NULL
    SELECT  @NumTablesDeletedFrom = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
	SET @TranStarted = 0

    DECLARE @ErrorCode   int
    DECLARE @RowCount    int

    SET @ErrorCode = 0
    SET @RowCount  = 0

    SELECT  @UserId = u.UserId
    FROM    dbo.aspnet_Users u, dbo.aspnet_Applications a
    WHERE   u.LoweredUserName       = LOWER(@UserName)
        AND u.ApplicationId         = a.ApplicationId
        AND LOWER(@ApplicationName) = a.LoweredApplicationName

    IF (@UserId IS NULL)
    BEGIN
        GOTO Cleanup
    END

    -- Delete from Membership table if (@TablesToDeleteFrom & 1) is set
    IF ((@TablesToDeleteFrom & 1) <> 0 AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N''vw_aspnet_MembershipUsers'') AND (type = ''V''))))
    BEGIN
        DELETE FROM dbo.aspnet_Membership WHERE @UserId = UserId

        SELECT @ErrorCode = @@ERROR,
               @RowCount = @@ROWCOUNT

        IF( @ErrorCode <> 0 )
            GOTO Cleanup

        IF (@RowCount <> 0)
            SELECT  @NumTablesDeletedFrom = @NumTablesDeletedFrom + 1
    END

    -- Delete from aspnet_UsersInRoles table if (@TablesToDeleteFrom & 2) is set
    IF ((@TablesToDeleteFrom & 2) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N''vw_aspnet_UsersInRoles'') AND (type = ''V''))) )
    BEGIN
        DELETE FROM dbo.aspnet_UsersInRoles WHERE @UserId = UserId

        SELECT @ErrorCode = @@ERROR,
                @RowCount = @@ROWCOUNT

        IF( @ErrorCode <> 0 )
            GOTO Cleanup

        IF (@RowCount <> 0)
            SELECT  @NumTablesDeletedFrom = @NumTablesDeletedFrom + 1
    END

    -- Delete from aspnet_Profile table if (@TablesToDeleteFrom & 4) is set
    IF ((@TablesToDeleteFrom & 4) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N''vw_aspnet_Profiles'') AND (type = ''V''))) )
    BEGIN
        DELETE FROM dbo.aspnet_Profile WHERE @UserId = UserId

        SELECT @ErrorCode = @@ERROR,
                @RowCount = @@ROWCOUNT

        IF( @ErrorCode <> 0 )
            GOTO Cleanup

        IF (@RowCount <> 0)
            SELECT  @NumTablesDeletedFrom = @NumTablesDeletedFrom + 1
    END

    -- Delete from aspnet_PersonalizationPerUser table if (@TablesToDeleteFrom & 8) is set
    IF ((@TablesToDeleteFrom & 8) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N''vw_aspnet_WebPartState_User'') AND (type = ''V''))) )
    BEGIN
        DELETE FROM dbo.aspnet_PersonalizationPerUser WHERE @UserId = UserId

        SELECT @ErrorCode = @@ERROR,
                @RowCount = @@ROWCOUNT

        IF( @ErrorCode <> 0 )
            GOTO Cleanup

        IF (@RowCount <> 0)
            SELECT  @NumTablesDeletedFrom = @NumTablesDeletedFrom + 1
    END

    -- Delete from aspnet_Users table if (@TablesToDeleteFrom & 1,2,4 & 8) are all set
    IF ((@TablesToDeleteFrom & 1) <> 0 AND
        (@TablesToDeleteFrom & 2) <> 0 AND
        (@TablesToDeleteFrom & 4) <> 0 AND
        (@TablesToDeleteFrom & 8) <> 0 AND
        (EXISTS (SELECT UserId FROM dbo.aspnet_Users WHERE @UserId = UserId)))
    BEGIN
        DELETE FROM dbo.aspnet_Users WHERE @UserId = UserId

        SELECT @ErrorCode = @@ERROR,
                @RowCount = @@ROWCOUNT

        IF( @ErrorCode <> 0 )
            GOTO Cleanup

        IF (@RowCount <> 0)
            SELECT  @NumTablesDeletedFrom = @NumTablesDeletedFrom + 1
    END

    IF( @TranStarted = 1 )
    BEGIN
	    SET @TranStarted = 0
	    COMMIT TRANSACTION
    END

    RETURN 0

Cleanup:
    SET @NumTablesDeletedFrom = 0

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
	    ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END' 
END
GO
GRANT EXECUTE ON [dbo].[aspnet_Users_DeleteUser] TO [aspnet_Membership_FullAccess]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetUserByEmail]    Script Date: 04/20/2008 11:56:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_GetUserByEmail]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_Membership_GetUserByEmail]
    @ApplicationName  nvarchar(256),
    @Email            nvarchar(256)
AS
BEGIN
    IF( @Email IS NULL )
        SELECT  u.UserName
        FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE   LOWER(@ApplicationName) = a.LoweredApplicationName AND
                u.ApplicationId = a.ApplicationId    AND
                u.UserId = m.UserId AND
                m.LoweredEmail IS NULL
    ELSE
        SELECT  u.UserName
        FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE   LOWER(@ApplicationName) = a.LoweredApplicationName AND
                u.ApplicationId = a.ApplicationId    AND
                u.UserId = m.UserId AND
                LOWER(@Email) = m.LoweredEmail

    IF (@@rowcount = 0)
        RETURN(1)
    RETURN(0)
END' 
END
GO
GRANT EXECUTE ON [dbo].[aspnet_Membership_GetUserByEmail] TO [aspnet_Membership_BasicAccess]
GO
GRANT EXECUTE ON [dbo].[aspnet_Membership_GetUserByEmail] TO [aspnet_Membership_ReportingAccess]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_AnyDataInTables]    Script Date: 04/20/2008 11:56:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_AnyDataInTables]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_AnyDataInTables]
    @TablesToCheck int
AS
BEGIN
    -- Check Membership table if (@TablesToCheck & 1) is set
    IF ((@TablesToCheck & 1) <> 0 AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N''vw_aspnet_MembershipUsers'') AND (type = ''V''))))
    BEGIN
        IF (EXISTS(SELECT TOP 1 UserId FROM dbo.aspnet_Membership))
        BEGIN
            SELECT N''aspnet_Membership''
            RETURN
        END
    END

    -- Check aspnet_Roles table if (@TablesToCheck & 2) is set
    IF ((@TablesToCheck & 2) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N''vw_aspnet_Roles'') AND (type = ''V''))) )
    BEGIN
        IF (EXISTS(SELECT TOP 1 RoleId FROM dbo.aspnet_Roles))
        BEGIN
            SELECT N''aspnet_Roles''
            RETURN
        END
    END

    -- Check aspnet_Profile table if (@TablesToCheck & 4) is set
    IF ((@TablesToCheck & 4) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N''vw_aspnet_Profiles'') AND (type = ''V''))) )
    BEGIN
        IF (EXISTS(SELECT TOP 1 UserId FROM dbo.aspnet_Profile))
        BEGIN
            SELECT N''aspnet_Profile''
            RETURN
        END
    END

    -- Check aspnet_PersonalizationPerUser table if (@TablesToCheck & 8) is set
    IF ((@TablesToCheck & 8) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N''vw_aspnet_WebPartState_User'') AND (type = ''V''))) )
    BEGIN
        IF (EXISTS(SELECT TOP 1 UserId FROM dbo.aspnet_PersonalizationPerUser))
        BEGIN
            SELECT N''aspnet_PersonalizationPerUser''
            RETURN
        END
    END

    -- Check aspnet_PersonalizationPerUser table if (@TablesToCheck & 16) is set
    IF ((@TablesToCheck & 16) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N''aspnet_WebEvent_LogEvent'') AND (type = ''P''))) )
    BEGIN
        IF (EXISTS(SELECT TOP 1 * FROM dbo.aspnet_WebEvent_Events))
        BEGIN
            SELECT N''aspnet_WebEvent_Events''
            RETURN
        END
    END

    -- Check aspnet_Users table if (@TablesToCheck & 1,2,4 & 8) are all set
    IF ((@TablesToCheck & 1) <> 0 AND
        (@TablesToCheck & 2) <> 0 AND
        (@TablesToCheck & 4) <> 0 AND
        (@TablesToCheck & 8) <> 0 AND
        (@TablesToCheck & 32) <> 0 AND
        (@TablesToCheck & 128) <> 0 AND
        (@TablesToCheck & 256) <> 0 AND
        (@TablesToCheck & 512) <> 0 AND
        (@TablesToCheck & 1024) <> 0)
    BEGIN
        IF (EXISTS(SELECT TOP 1 UserId FROM dbo.aspnet_Users))
        BEGIN
            SELECT N''aspnet_Users''
            RETURN
        END
        IF (EXISTS(SELECT TOP 1 ApplicationId FROM dbo.aspnet_Applications))
        BEGIN
            SELECT N''aspnet_Applications''
            RETURN
        END
    END
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetUserByName]    Script Date: 04/20/2008 11:56:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_GetUserByName]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_Membership_GetUserByName]
    @ApplicationName      nvarchar(256),
    @UserName             nvarchar(256),
    @CurrentTimeUtc       datetime,
    @UpdateLastActivity   bit = 0
AS
BEGIN
    DECLARE @UserId uniqueidentifier

    IF (@UpdateLastActivity = 1)
    BEGIN
        SELECT TOP 1 m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
                m.CreateDate, m.LastLoginDate, @CurrentTimeUtc, m.LastPasswordChangedDate,
                u.UserId, m.IsLockedOut,m.LastLockoutDate
        FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE    LOWER(@ApplicationName) = a.LoweredApplicationName AND
                u.ApplicationId = a.ApplicationId    AND
                LOWER(@UserName) = u.LoweredUserName AND u.UserId = m.UserId

        IF (@@ROWCOUNT = 0) -- Username not found
            RETURN -1

        UPDATE   dbo.aspnet_Users
        SET      LastActivityDate = @CurrentTimeUtc
        WHERE    @UserId = UserId
    END
    ELSE
    BEGIN
        SELECT TOP 1 m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
                m.CreateDate, m.LastLoginDate, u.LastActivityDate, m.LastPasswordChangedDate,
                u.UserId, m.IsLockedOut,m.LastLockoutDate
        FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE    LOWER(@ApplicationName) = a.LoweredApplicationName AND
                u.ApplicationId = a.ApplicationId    AND
                LOWER(@UserName) = u.LoweredUserName AND u.UserId = m.UserId

        IF (@@ROWCOUNT = 0) -- Username not found
            RETURN -1
    END

    RETURN 0
END' 
END
GO
GRANT EXECUTE ON [dbo].[aspnet_Membership_GetUserByName] TO [aspnet_Membership_BasicAccess]
GO
GRANT EXECUTE ON [dbo].[aspnet_Membership_GetUserByName] TO [aspnet_Membership_ReportingAccess]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_SetPassword]    Script Date: 04/20/2008 11:56:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_SetPassword]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_Membership_SetPassword]
    @ApplicationName  nvarchar(256),
    @UserName         nvarchar(256),
    @NewPassword      nvarchar(128),
    @PasswordSalt     nvarchar(128),
    @CurrentTimeUtc   datetime,
    @PasswordFormat   int = 0
AS
BEGIN
    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL
    SELECT  @UserId = u.UserId
    FROM    dbo.aspnet_Users u, dbo.aspnet_Applications a, dbo.aspnet_Membership m
    WHERE   LoweredUserName = LOWER(@UserName) AND
            u.ApplicationId = a.ApplicationId  AND
            LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.UserId = m.UserId

    IF (@UserId IS NULL)
        RETURN(1)

    UPDATE dbo.aspnet_Membership
    SET Password = @NewPassword, PasswordFormat = @PasswordFormat, PasswordSalt = @PasswordSalt,
        LastPasswordChangedDate = @CurrentTimeUtc
    WHERE @UserId = UserId
    RETURN(0)
END' 
END
GO
GRANT EXECUTE ON [dbo].[aspnet_Membership_SetPassword] TO [aspnet_Membership_FullAccess]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetPasswordWithFormat]    Script Date: 04/20/2008 11:56:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_GetPasswordWithFormat]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_Membership_GetPasswordWithFormat]
    @ApplicationName                nvarchar(256),
    @UserName                       nvarchar(256),
    @UpdateLastLoginActivityDate    bit,
    @CurrentTimeUtc                 datetime
AS
BEGIN
    DECLARE @IsLockedOut                        bit
    DECLARE @UserId                             uniqueidentifier
    DECLARE @Password                           nvarchar(128)
    DECLARE @PasswordSalt                       nvarchar(128)
    DECLARE @PasswordFormat                     int
    DECLARE @FailedPasswordAttemptCount         int
    DECLARE @FailedPasswordAnswerAttemptCount   int
    DECLARE @IsApproved                         bit
    DECLARE @LastActivityDate                   datetime
    DECLARE @LastLoginDate                      datetime

    SELECT  @UserId          = NULL

    SELECT  @UserId = u.UserId, @IsLockedOut = m.IsLockedOut, @Password=Password, @PasswordFormat=PasswordFormat,
            @PasswordSalt=PasswordSalt, @FailedPasswordAttemptCount=FailedPasswordAttemptCount,
		    @FailedPasswordAnswerAttemptCount=FailedPasswordAnswerAttemptCount, @IsApproved=IsApproved,
            @LastActivityDate = LastActivityDate, @LastLoginDate = LastLoginDate
    FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
    WHERE   LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.ApplicationId = a.ApplicationId    AND
            u.UserId = m.UserId AND
            LOWER(@UserName) = u.LoweredUserName

    IF (@UserId IS NULL)
        RETURN 1

    IF (@IsLockedOut = 1)
        RETURN 99

    SELECT   @Password, @PasswordFormat, @PasswordSalt, @FailedPasswordAttemptCount,
             @FailedPasswordAnswerAttemptCount, @IsApproved, @LastLoginDate, @LastActivityDate

    IF (@UpdateLastLoginActivityDate = 1 AND @IsApproved = 1)
    BEGIN
        UPDATE  dbo.aspnet_Membership
        SET     LastLoginDate = @CurrentTimeUtc
        WHERE   UserId = @UserId

        UPDATE  dbo.aspnet_Users
        SET     LastActivityDate = @CurrentTimeUtc
        WHERE   @UserId = UserId
    END


    RETURN 0
END' 
END
GO
GRANT EXECUTE ON [dbo].[aspnet_Membership_GetPasswordWithFormat] TO [aspnet_Membership_BasicAccess]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_UpdateUserInfo]    Script Date: 04/20/2008 11:56:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_UpdateUserInfo]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_Membership_UpdateUserInfo]
    @ApplicationName                nvarchar(256),
    @UserName                       nvarchar(256),
    @IsPasswordCorrect              bit,
    @UpdateLastLoginActivityDate    bit,
    @MaxInvalidPasswordAttempts     int,
    @PasswordAttemptWindow          int,
    @CurrentTimeUtc                 datetime,
    @LastLoginDate                  datetime,
    @LastActivityDate               datetime
AS
BEGIN
    DECLARE @UserId                                 uniqueidentifier
    DECLARE @IsApproved                             bit
    DECLARE @IsLockedOut                            bit
    DECLARE @LastLockoutDate                        datetime
    DECLARE @FailedPasswordAttemptCount             int
    DECLARE @FailedPasswordAttemptWindowStart       datetime
    DECLARE @FailedPasswordAnswerAttemptCount       int
    DECLARE @FailedPasswordAnswerAttemptWindowStart datetime

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    SELECT  @UserId = u.UserId,
            @IsApproved = m.IsApproved,
            @IsLockedOut = m.IsLockedOut,
            @LastLockoutDate = m.LastLockoutDate,
            @FailedPasswordAttemptCount = m.FailedPasswordAttemptCount,
            @FailedPasswordAttemptWindowStart = m.FailedPasswordAttemptWindowStart,
            @FailedPasswordAnswerAttemptCount = m.FailedPasswordAnswerAttemptCount,
            @FailedPasswordAnswerAttemptWindowStart = m.FailedPasswordAnswerAttemptWindowStart
    FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m WITH ( UPDLOCK )
    WHERE   LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.ApplicationId = a.ApplicationId    AND
            u.UserId = m.UserId AND
            LOWER(@UserName) = u.LoweredUserName

    IF ( @@rowcount = 0 )
    BEGIN
        SET @ErrorCode = 1
        GOTO Cleanup
    END

    IF( @IsLockedOut = 1 )
    BEGIN
        GOTO Cleanup
    END

    IF( @IsPasswordCorrect = 0 )
    BEGIN
        IF( @CurrentTimeUtc > DATEADD( minute, @PasswordAttemptWindow, @FailedPasswordAttemptWindowStart ) )
        BEGIN
            SET @FailedPasswordAttemptWindowStart = @CurrentTimeUtc
            SET @FailedPasswordAttemptCount = 1
        END
        ELSE
        BEGIN
            SET @FailedPasswordAttemptWindowStart = @CurrentTimeUtc
            SET @FailedPasswordAttemptCount = @FailedPasswordAttemptCount + 1
        END

        BEGIN
            IF( @FailedPasswordAttemptCount >= @MaxInvalidPasswordAttempts )
            BEGIN
                SET @IsLockedOut = 1
                SET @LastLockoutDate = @CurrentTimeUtc
            END
        END
    END
    ELSE
    BEGIN
        IF( @FailedPasswordAttemptCount > 0 OR @FailedPasswordAnswerAttemptCount > 0 )
        BEGIN
            SET @FailedPasswordAttemptCount = 0
            SET @FailedPasswordAttemptWindowStart = CONVERT( datetime, ''17540101'', 112 )
            SET @FailedPasswordAnswerAttemptCount = 0
            SET @FailedPasswordAnswerAttemptWindowStart = CONVERT( datetime, ''17540101'', 112 )
            SET @LastLockoutDate = CONVERT( datetime, ''17540101'', 112 )
        END
    END

    IF( @UpdateLastLoginActivityDate = 1 )
    BEGIN
        UPDATE  dbo.aspnet_Users
        SET     LastActivityDate = @LastActivityDate
        WHERE   @UserId = UserId

        IF( @@ERROR <> 0 )
        BEGIN
            SET @ErrorCode = -1
            GOTO Cleanup
        END

        UPDATE  dbo.aspnet_Membership
        SET     LastLoginDate = @LastLoginDate
        WHERE   UserId = @UserId

        IF( @@ERROR <> 0 )
        BEGIN
            SET @ErrorCode = -1
            GOTO Cleanup
        END
    END


    UPDATE dbo.aspnet_Membership
    SET IsLockedOut = @IsLockedOut, LastLockoutDate = @LastLockoutDate,
        FailedPasswordAttemptCount = @FailedPasswordAttemptCount,
        FailedPasswordAttemptWindowStart = @FailedPasswordAttemptWindowStart,
        FailedPasswordAnswerAttemptCount = @FailedPasswordAnswerAttemptCount,
        FailedPasswordAnswerAttemptWindowStart = @FailedPasswordAnswerAttemptWindowStart
    WHERE @UserId = UserId

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @TranStarted = 1 )
    BEGIN
	SET @TranStarted = 0
	COMMIT TRANSACTION
    END

    RETURN @ErrorCode

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END' 
END
GO
GRANT EXECUTE ON [dbo].[aspnet_Membership_UpdateUserInfo] TO [aspnet_Membership_BasicAccess]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_ResetPassword]    Script Date: 04/20/2008 11:56:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_ResetPassword]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_Membership_ResetPassword]
    @ApplicationName             nvarchar(256),
    @UserName                    nvarchar(256),
    @NewPassword                 nvarchar(128),
    @MaxInvalidPasswordAttempts  int,
    @PasswordAttemptWindow       int,
    @PasswordSalt                nvarchar(128),
    @CurrentTimeUtc              datetime,
    @PasswordFormat              int = 0,
    @PasswordAnswer              nvarchar(128) = NULL
AS
BEGIN
    DECLARE @IsLockedOut                            bit
    DECLARE @LastLockoutDate                        datetime
    DECLARE @FailedPasswordAttemptCount             int
    DECLARE @FailedPasswordAttemptWindowStart       datetime
    DECLARE @FailedPasswordAnswerAttemptCount       int
    DECLARE @FailedPasswordAnswerAttemptWindowStart datetime

    DECLARE @UserId                                 uniqueidentifier
    SET     @UserId = NULL

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    SELECT  @UserId = u.UserId
    FROM    dbo.aspnet_Users u, dbo.aspnet_Applications a, dbo.aspnet_Membership m
    WHERE   LoweredUserName = LOWER(@UserName) AND
            u.ApplicationId = a.ApplicationId  AND
            LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.UserId = m.UserId

    IF ( @UserId IS NULL )
    BEGIN
        SET @ErrorCode = 1
        GOTO Cleanup
    END

    SELECT @IsLockedOut = IsLockedOut,
           @LastLockoutDate = LastLockoutDate,
           @FailedPasswordAttemptCount = FailedPasswordAttemptCount,
           @FailedPasswordAttemptWindowStart = FailedPasswordAttemptWindowStart,
           @FailedPasswordAnswerAttemptCount = FailedPasswordAnswerAttemptCount,
           @FailedPasswordAnswerAttemptWindowStart = FailedPasswordAnswerAttemptWindowStart
    FROM dbo.aspnet_Membership WITH ( UPDLOCK )
    WHERE @UserId = UserId

    IF( @IsLockedOut = 1 )
    BEGIN
        SET @ErrorCode = 99
        GOTO Cleanup
    END

    UPDATE dbo.aspnet_Membership
    SET    Password = @NewPassword,
           LastPasswordChangedDate = @CurrentTimeUtc,
           PasswordFormat = @PasswordFormat,
           PasswordSalt = @PasswordSalt
    WHERE  @UserId = UserId AND
           ( ( @PasswordAnswer IS NULL ) OR ( LOWER( PasswordAnswer ) = LOWER( @PasswordAnswer ) ) )

    IF ( @@ROWCOUNT = 0 )
        BEGIN
            IF( @CurrentTimeUtc > DATEADD( minute, @PasswordAttemptWindow, @FailedPasswordAnswerAttemptWindowStart ) )
            BEGIN
                SET @FailedPasswordAnswerAttemptWindowStart = @CurrentTimeUtc
                SET @FailedPasswordAnswerAttemptCount = 1
            END
            ELSE
            BEGIN
                SET @FailedPasswordAnswerAttemptWindowStart = @CurrentTimeUtc
                SET @FailedPasswordAnswerAttemptCount = @FailedPasswordAnswerAttemptCount + 1
            END

            BEGIN
                IF( @FailedPasswordAnswerAttemptCount >= @MaxInvalidPasswordAttempts )
                BEGIN
                    SET @IsLockedOut = 1
                    SET @LastLockoutDate = @CurrentTimeUtc
                END
            END

            SET @ErrorCode = 3
        END
    ELSE
        BEGIN
            IF( @FailedPasswordAnswerAttemptCount > 0 )
            BEGIN
                SET @FailedPasswordAnswerAttemptCount = 0
                SET @FailedPasswordAnswerAttemptWindowStart = CONVERT( datetime, ''17540101'', 112 )
            END
        END

    IF( NOT ( @PasswordAnswer IS NULL ) )
    BEGIN
        UPDATE dbo.aspnet_Membership
        SET IsLockedOut = @IsLockedOut, LastLockoutDate = @LastLockoutDate,
            FailedPasswordAttemptCount = @FailedPasswordAttemptCount,
            FailedPasswordAttemptWindowStart = @FailedPasswordAttemptWindowStart,
            FailedPasswordAnswerAttemptCount = @FailedPasswordAnswerAttemptCount,
            FailedPasswordAnswerAttemptWindowStart = @FailedPasswordAnswerAttemptWindowStart
        WHERE @UserId = UserId

        IF( @@ERROR <> 0 )
        BEGIN
            SET @ErrorCode = -1
            GOTO Cleanup
        END
    END

    IF( @TranStarted = 1 )
    BEGIN
	SET @TranStarted = 0
	COMMIT TRANSACTION
    END

    RETURN @ErrorCode

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END' 
END
GO
GRANT EXECUTE ON [dbo].[aspnet_Membership_ResetPassword] TO [aspnet_Membership_FullAccess]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetPassword]    Script Date: 04/20/2008 11:56:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_GetPassword]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_Membership_GetPassword]
    @ApplicationName                nvarchar(256),
    @UserName                       nvarchar(256),
    @MaxInvalidPasswordAttempts     int,
    @PasswordAttemptWindow          int,
    @CurrentTimeUtc                 datetime,
    @PasswordAnswer                 nvarchar(128) = NULL
AS
BEGIN
    DECLARE @UserId                                 uniqueidentifier
    DECLARE @PasswordFormat                         int
    DECLARE @Password                               nvarchar(128)
    DECLARE @passAns                                nvarchar(128)
    DECLARE @IsLockedOut                            bit
    DECLARE @LastLockoutDate                        datetime
    DECLARE @FailedPasswordAttemptCount             int
    DECLARE @FailedPasswordAttemptWindowStart       datetime
    DECLARE @FailedPasswordAnswerAttemptCount       int
    DECLARE @FailedPasswordAnswerAttemptWindowStart datetime

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    SELECT  @UserId = u.UserId,
            @Password = m.Password,
            @passAns = m.PasswordAnswer,
            @PasswordFormat = m.PasswordFormat,
            @IsLockedOut = m.IsLockedOut,
            @LastLockoutDate = m.LastLockoutDate,
            @FailedPasswordAttemptCount = m.FailedPasswordAttemptCount,
            @FailedPasswordAttemptWindowStart = m.FailedPasswordAttemptWindowStart,
            @FailedPasswordAnswerAttemptCount = m.FailedPasswordAnswerAttemptCount,
            @FailedPasswordAnswerAttemptWindowStart = m.FailedPasswordAnswerAttemptWindowStart
    FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m WITH ( UPDLOCK )
    WHERE   LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.ApplicationId = a.ApplicationId    AND
            u.UserId = m.UserId AND
            LOWER(@UserName) = u.LoweredUserName

    IF ( @@rowcount = 0 )
    BEGIN
        SET @ErrorCode = 1
        GOTO Cleanup
    END

    IF( @IsLockedOut = 1 )
    BEGIN
        SET @ErrorCode = 99
        GOTO Cleanup
    END

    IF ( NOT( @PasswordAnswer IS NULL ) )
    BEGIN
        IF( ( @passAns IS NULL ) OR ( LOWER( @passAns ) <> LOWER( @PasswordAnswer ) ) )
        BEGIN
            IF( @CurrentTimeUtc > DATEADD( minute, @PasswordAttemptWindow, @FailedPasswordAnswerAttemptWindowStart ) )
            BEGIN
                SET @FailedPasswordAnswerAttemptWindowStart = @CurrentTimeUtc
                SET @FailedPasswordAnswerAttemptCount = 1
            END
            ELSE
            BEGIN
                SET @FailedPasswordAnswerAttemptCount = @FailedPasswordAnswerAttemptCount + 1
                SET @FailedPasswordAnswerAttemptWindowStart = @CurrentTimeUtc
            END

            BEGIN
                IF( @FailedPasswordAnswerAttemptCount >= @MaxInvalidPasswordAttempts )
                BEGIN
                    SET @IsLockedOut = 1
                    SET @LastLockoutDate = @CurrentTimeUtc
                END
            END

            SET @ErrorCode = 3
        END
        ELSE
        BEGIN
            IF( @FailedPasswordAnswerAttemptCount > 0 )
            BEGIN
                SET @FailedPasswordAnswerAttemptCount = 0
                SET @FailedPasswordAnswerAttemptWindowStart = CONVERT( datetime, ''17540101'', 112 )
            END
        END

        UPDATE dbo.aspnet_Membership
        SET IsLockedOut = @IsLockedOut, LastLockoutDate = @LastLockoutDate,
            FailedPasswordAttemptCount = @FailedPasswordAttemptCount,
            FailedPasswordAttemptWindowStart = @FailedPasswordAttemptWindowStart,
            FailedPasswordAnswerAttemptCount = @FailedPasswordAnswerAttemptCount,
            FailedPasswordAnswerAttemptWindowStart = @FailedPasswordAnswerAttemptWindowStart
        WHERE @UserId = UserId

        IF( @@ERROR <> 0 )
        BEGIN
            SET @ErrorCode = -1
            GOTO Cleanup
        END
    END

    IF( @TranStarted = 1 )
    BEGIN
	SET @TranStarted = 0
	COMMIT TRANSACTION
    END

    IF( @ErrorCode = 0 )
        SELECT @Password, @PasswordFormat

    RETURN @ErrorCode

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END' 
END
GO
GRANT EXECUTE ON [dbo].[aspnet_Membership_GetPassword] TO [aspnet_Membership_BasicAccess]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_UnlockUser]    Script Date: 04/20/2008 11:56:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_UnlockUser]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_Membership_UnlockUser]
    @ApplicationName                         nvarchar(256),
    @UserName                                nvarchar(256)
AS
BEGIN
    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL
    SELECT  @UserId = u.UserId
    FROM    dbo.aspnet_Users u, dbo.aspnet_Applications a, dbo.aspnet_Membership m
    WHERE   LoweredUserName = LOWER(@UserName) AND
            u.ApplicationId = a.ApplicationId  AND
            LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.UserId = m.UserId

    IF ( @UserId IS NULL )
        RETURN 1

    UPDATE dbo.aspnet_Membership
    SET IsLockedOut = 0,
        FailedPasswordAttemptCount = 0,
        FailedPasswordAttemptWindowStart = CONVERT( datetime, ''17540101'', 112 ),
        FailedPasswordAnswerAttemptCount = 0,
        FailedPasswordAnswerAttemptWindowStart = CONVERT( datetime, ''17540101'', 112 ),
        LastLockoutDate = CONVERT( datetime, ''17540101'', 112 )
    WHERE @UserId = UserId

    RETURN 0
END' 
END
GO
GRANT EXECUTE ON [dbo].[aspnet_Membership_UnlockUser] TO [aspnet_Membership_FullAccess]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_FindUsersInRole]    Script Date: 04/20/2008 11:56:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_UsersInRoles_FindUsersInRole]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[aspnet_UsersInRoles_FindUsersInRole]
    @ApplicationName  nvarchar(256),
    @RoleName         nvarchar(256),
    @UserNameToMatch  nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(1)
     DECLARE @RoleId uniqueidentifier
     SELECT  @RoleId = NULL

     SELECT  @RoleId = RoleId
     FROM    dbo.aspnet_Roles
     WHERE   LOWER(@RoleName) = LoweredRoleName AND ApplicationId = @ApplicationId

     IF (@RoleId IS NULL)
         RETURN(1)

    SELECT u.UserName
    FROM   dbo.aspnet_Users u, dbo.aspnet_UsersInRoles ur
    WHERE  u.UserId = ur.UserId AND @RoleId = ur.RoleId AND u.ApplicationId = @ApplicationId AND LoweredUserName LIKE LOWER(@UserNameToMatch)
    ORDER BY u.UserName
    RETURN(0)
END' 
END
GO
GRANT EXECUTE ON [dbo].[aspnet_UsersInRoles_FindUsersInRole] TO [aspnet_Roles_ReportingAccess]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Roles_GetAllRoles]    Script Date: 04/20/2008 11:56:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Roles_GetAllRoles]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[aspnet_Roles_GetAllRoles] (
    @ApplicationName           nvarchar(256))
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN
    SELECT RoleName
    FROM   dbo.aspnet_Roles WHERE ApplicationId = @ApplicationId
    ORDER BY RoleName
END' 
END
GO
GRANT EXECUTE ON [dbo].[aspnet_Roles_GetAllRoles] TO [aspnet_Roles_ReportingAccess]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_AddUsersToRoles]    Script Date: 04/20/2008 11:56:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_UsersInRoles_AddUsersToRoles]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[aspnet_UsersInRoles_AddUsersToRoles]
	@ApplicationName  nvarchar(256),
	@UserNames		  nvarchar(4000),
	@RoleNames		  nvarchar(4000),
	@CurrentTimeUtc   datetime
AS
BEGIN
	DECLARE @AppId uniqueidentifier
	SELECT  @AppId = NULL
	SELECT  @AppId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
	IF (@AppId IS NULL)
		RETURN(2)
	DECLARE @TranStarted   bit
	SET @TranStarted = 0

	IF( @@TRANCOUNT = 0 )
	BEGIN
		BEGIN TRANSACTION
		SET @TranStarted = 1
	END

	DECLARE @tbNames	table(Name nvarchar(256) NOT NULL PRIMARY KEY)
	DECLARE @tbRoles	table(RoleId uniqueidentifier NOT NULL PRIMARY KEY)
	DECLARE @tbUsers	table(UserId uniqueidentifier NOT NULL PRIMARY KEY)
	DECLARE @Num		int
	DECLARE @Pos		int
	DECLARE @NextPos	int
	DECLARE @Name		nvarchar(256)

	SET @Num = 0
	SET @Pos = 1
	WHILE(@Pos <= LEN(@RoleNames))
	BEGIN
		SELECT @NextPos = CHARINDEX(N'','', @RoleNames,  @Pos)
		IF (@NextPos = 0 OR @NextPos IS NULL)
			SELECT @NextPos = LEN(@RoleNames) + 1
		SELECT @Name = RTRIM(LTRIM(SUBSTRING(@RoleNames, @Pos, @NextPos - @Pos)))
		SELECT @Pos = @NextPos+1

		INSERT INTO @tbNames VALUES (@Name)
		SET @Num = @Num + 1
	END

	INSERT INTO @tbRoles
	  SELECT RoleId
	  FROM   dbo.aspnet_Roles ar, @tbNames t
	  WHERE  LOWER(t.Name) = ar.LoweredRoleName AND ar.ApplicationId = @AppId

	IF (@@ROWCOUNT <> @Num)
	BEGIN
		SELECT TOP 1 Name
		FROM   @tbNames
		WHERE  LOWER(Name) NOT IN (SELECT ar.LoweredRoleName FROM dbo.aspnet_Roles ar,  @tbRoles r WHERE r.RoleId = ar.RoleId)
		IF( @TranStarted = 1 )
			ROLLBACK TRANSACTION
		RETURN(2)
	END

	DELETE FROM @tbNames WHERE 1=1
	SET @Num = 0
	SET @Pos = 1

	WHILE(@Pos <= LEN(@UserNames))
	BEGIN
		SELECT @NextPos = CHARINDEX(N'','', @UserNames,  @Pos)
		IF (@NextPos = 0 OR @NextPos IS NULL)
			SELECT @NextPos = LEN(@UserNames) + 1
		SELECT @Name = RTRIM(LTRIM(SUBSTRING(@UserNames, @Pos, @NextPos - @Pos)))
		SELECT @Pos = @NextPos+1

		INSERT INTO @tbNames VALUES (@Name)
		SET @Num = @Num + 1
	END

	INSERT INTO @tbUsers
	  SELECT UserId
	  FROM   dbo.aspnet_Users ar, @tbNames t
	  WHERE  LOWER(t.Name) = ar.LoweredUserName AND ar.ApplicationId = @AppId

	IF (@@ROWCOUNT <> @Num)
	BEGIN
		DELETE FROM @tbNames
		WHERE LOWER(Name) IN (SELECT LoweredUserName FROM dbo.aspnet_Users au,  @tbUsers u WHERE au.UserId = u.UserId)

		INSERT dbo.aspnet_Users (ApplicationId, UserId, UserName, LoweredUserName, IsAnonymous, LastActivityDate)
		  SELECT @AppId, NEWID(), Name, LOWER(Name), 0, @CurrentTimeUtc
		  FROM   @tbNames

		INSERT INTO @tbUsers
		  SELECT  UserId
		  FROM	dbo.aspnet_Users au, @tbNames t
		  WHERE   LOWER(t.Name) = au.LoweredUserName AND au.ApplicationId = @AppId
	END

	IF (EXISTS (SELECT * FROM dbo.aspnet_UsersInRoles ur, @tbUsers tu, @tbRoles tr WHERE tu.UserId = ur.UserId AND tr.RoleId = ur.RoleId))
	BEGIN
		SELECT TOP 1 UserName, RoleName
		FROM		 dbo.aspnet_UsersInRoles ur, @tbUsers tu, @tbRoles tr, aspnet_Users u, aspnet_Roles r
		WHERE		u.UserId = tu.UserId AND r.RoleId = tr.RoleId AND tu.UserId = ur.UserId AND tr.RoleId = ur.RoleId

		IF( @TranStarted = 1 )
			ROLLBACK TRANSACTION
		RETURN(3)
	END

	INSERT INTO dbo.aspnet_UsersInRoles (UserId, RoleId)
	SELECT UserId, RoleId
	FROM @tbUsers, @tbRoles

	IF( @TranStarted = 1 )
		COMMIT TRANSACTION
	RETURN(0)
END                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     ' 
END
GO
GRANT EXECUTE ON [dbo].[aspnet_UsersInRoles_AddUsersToRoles] TO [aspnet_Roles_FullAccess]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Roles_DeleteRole]    Script Date: 04/20/2008 11:56:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Roles_DeleteRole]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[aspnet_Roles_DeleteRole]
    @ApplicationName            nvarchar(256),
    @RoleName                   nvarchar(256),
    @DeleteOnlyIfRoleIsEmpty    bit
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(1)

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
        BEGIN TRANSACTION
        SET @TranStarted = 1
    END
    ELSE
        SET @TranStarted = 0

    DECLARE @RoleId   uniqueidentifier
    SELECT  @RoleId = NULL
    SELECT  @RoleId = RoleId FROM dbo.aspnet_Roles WHERE LoweredRoleName = LOWER(@RoleName) AND ApplicationId = @ApplicationId

    IF (@RoleId IS NULL)
    BEGIN
        SELECT @ErrorCode = 1
        GOTO Cleanup
    END
    IF (@DeleteOnlyIfRoleIsEmpty <> 0)
    BEGIN
        IF (EXISTS (SELECT RoleId FROM dbo.aspnet_UsersInRoles  WHERE @RoleId = RoleId))
        BEGIN
            SELECT @ErrorCode = 2
            GOTO Cleanup
        END
    END


    DELETE FROM dbo.aspnet_UsersInRoles  WHERE @RoleId = RoleId

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    DELETE FROM dbo.aspnet_Roles WHERE @RoleId = RoleId  AND ApplicationId = @ApplicationId

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
        COMMIT TRANSACTION
    END

    RETURN(0)

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
        ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode
END' 
END
GO
GRANT EXECUTE ON [dbo].[aspnet_Roles_DeleteRole] TO [aspnet_Roles_FullAccess]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Roles_RoleExists]    Script Date: 04/20/2008 11:56:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Roles_RoleExists]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[aspnet_Roles_RoleExists]
    @ApplicationName  nvarchar(256),
    @RoleName         nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(0)
    IF (EXISTS (SELECT RoleName FROM dbo.aspnet_Roles WHERE LOWER(@RoleName) = LoweredRoleName AND ApplicationId = @ApplicationId ))
        RETURN(1)
    ELSE
        RETURN(0)
END' 
END
GO
GRANT EXECUTE ON [dbo].[aspnet_Roles_RoleExists] TO [aspnet_Roles_ReportingAccess]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_GetUsersInRoles]    Script Date: 04/20/2008 11:56:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_UsersInRoles_GetUsersInRoles]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[aspnet_UsersInRoles_GetUsersInRoles]
    @ApplicationName  nvarchar(256),
    @RoleName         nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(1)
     DECLARE @RoleId uniqueidentifier
     SELECT  @RoleId = NULL

     SELECT  @RoleId = RoleId
     FROM    dbo.aspnet_Roles
     WHERE   LOWER(@RoleName) = LoweredRoleName AND ApplicationId = @ApplicationId

     IF (@RoleId IS NULL)
         RETURN(1)

    SELECT u.UserName
    FROM   dbo.aspnet_Users u, dbo.aspnet_UsersInRoles ur
    WHERE  u.UserId = ur.UserId AND @RoleId = ur.RoleId AND u.ApplicationId = @ApplicationId
    ORDER BY u.UserName
    RETURN(0)
END' 
END
GO
GRANT EXECUTE ON [dbo].[aspnet_UsersInRoles_GetUsersInRoles] TO [aspnet_Roles_ReportingAccess]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_RemoveUsersFromRoles]    Script Date: 04/20/2008 11:56:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_UsersInRoles_RemoveUsersFromRoles]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[aspnet_UsersInRoles_RemoveUsersFromRoles]
	@ApplicationName  nvarchar(256),
	@UserNames		  nvarchar(4000),
	@RoleNames		  nvarchar(4000)
AS
BEGIN
	DECLARE @AppId uniqueidentifier
	SELECT  @AppId = NULL
	SELECT  @AppId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
	IF (@AppId IS NULL)
		RETURN(2)


	DECLARE @TranStarted   bit
	SET @TranStarted = 0

	IF( @@TRANCOUNT = 0 )
	BEGIN
		BEGIN TRANSACTION
		SET @TranStarted = 1
	END

	DECLARE @tbNames  table(Name nvarchar(256) NOT NULL PRIMARY KEY)
	DECLARE @tbRoles  table(RoleId uniqueidentifier NOT NULL PRIMARY KEY)
	DECLARE @tbUsers  table(UserId uniqueidentifier NOT NULL PRIMARY KEY)
	DECLARE @Num	  int
	DECLARE @Pos	  int
	DECLARE @NextPos  int
	DECLARE @Name	  nvarchar(256)
	DECLARE @CountAll int
	DECLARE @CountU	  int
	DECLARE @CountR	  int


	SET @Num = 0
	SET @Pos = 1
	WHILE(@Pos <= LEN(@RoleNames))
	BEGIN
		SELECT @NextPos = CHARINDEX(N'','', @RoleNames,  @Pos)
		IF (@NextPos = 0 OR @NextPos IS NULL)
			SELECT @NextPos = LEN(@RoleNames) + 1
		SELECT @Name = RTRIM(LTRIM(SUBSTRING(@RoleNames, @Pos, @NextPos - @Pos)))
		SELECT @Pos = @NextPos+1

		INSERT INTO @tbNames VALUES (@Name)
		SET @Num = @Num + 1
	END

	INSERT INTO @tbRoles
	  SELECT RoleId
	  FROM   dbo.aspnet_Roles ar, @tbNames t
	  WHERE  LOWER(t.Name) = ar.LoweredRoleName AND ar.ApplicationId = @AppId
	SELECT @CountR = @@ROWCOUNT

	IF (@CountR <> @Num)
	BEGIN
		SELECT TOP 1 N'''', Name
		FROM   @tbNames
		WHERE  LOWER(Name) NOT IN (SELECT ar.LoweredRoleName FROM dbo.aspnet_Roles ar,  @tbRoles r WHERE r.RoleId = ar.RoleId)
		IF( @TranStarted = 1 )
			ROLLBACK TRANSACTION
		RETURN(2)
	END


	DELETE FROM @tbNames WHERE 1=1
	SET @Num = 0
	SET @Pos = 1


	WHILE(@Pos <= LEN(@UserNames))
	BEGIN
		SELECT @NextPos = CHARINDEX(N'','', @UserNames,  @Pos)
		IF (@NextPos = 0 OR @NextPos IS NULL)
			SELECT @NextPos = LEN(@UserNames) + 1
		SELECT @Name = RTRIM(LTRIM(SUBSTRING(@UserNames, @Pos, @NextPos - @Pos)))
		SELECT @Pos = @NextPos+1

		INSERT INTO @tbNames VALUES (@Name)
		SET @Num = @Num + 1
	END

	INSERT INTO @tbUsers
	  SELECT UserId
	  FROM   dbo.aspnet_Users ar, @tbNames t
	  WHERE  LOWER(t.Name) = ar.LoweredUserName AND ar.ApplicationId = @AppId

	SELECT @CountU = @@ROWCOUNT
	IF (@CountU <> @Num)
	BEGIN
		SELECT TOP 1 Name, N''''
		FROM   @tbNames
		WHERE  LOWER(Name) NOT IN (SELECT au.LoweredUserName FROM dbo.aspnet_Users au,  @tbUsers u WHERE u.UserId = au.UserId)

		IF( @TranStarted = 1 )
			ROLLBACK TRANSACTION
		RETURN(1)
	END

	SELECT  @CountAll = COUNT(*)
	FROM	dbo.aspnet_UsersInRoles ur, @tbUsers u, @tbRoles r
	WHERE   ur.UserId = u.UserId AND ur.RoleId = r.RoleId

	IF (@CountAll <> @CountU * @CountR)
	BEGIN
		SELECT TOP 1 UserName, RoleName
		FROM		 @tbUsers tu, @tbRoles tr, dbo.aspnet_Users u, dbo.aspnet_Roles r
		WHERE		 u.UserId = tu.UserId AND r.RoleId = tr.RoleId AND
					 tu.UserId NOT IN (SELECT ur.UserId FROM dbo.aspnet_UsersInRoles ur WHERE ur.RoleId = tr.RoleId) AND
					 tr.RoleId NOT IN (SELECT ur.RoleId FROM dbo.aspnet_UsersInRoles ur WHERE ur.UserId = tu.UserId)
		IF( @TranStarted = 1 )
			ROLLBACK TRANSACTION
		RETURN(3)
	END

	DELETE FROM dbo.aspnet_UsersInRoles
	WHERE UserId IN (SELECT UserId FROM @tbUsers)
	  AND RoleId IN (SELECT RoleId FROM @tbRoles)
	IF( @TranStarted = 1 )
		COMMIT TRANSACTION
	RETURN(0)
END
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        ' 
END
GO
GRANT EXECUTE ON [dbo].[aspnet_UsersInRoles_RemoveUsersFromRoles] TO [aspnet_Roles_FullAccess]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_GetRolesForUser]    Script Date: 04/20/2008 11:56:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_UsersInRoles_GetRolesForUser]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[aspnet_UsersInRoles_GetRolesForUser]
    @ApplicationName  nvarchar(256),
    @UserName         nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(1)
    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL

    SELECT  @UserId = UserId
    FROM    dbo.aspnet_Users
    WHERE   LoweredUserName = LOWER(@UserName) AND ApplicationId = @ApplicationId

    IF (@UserId IS NULL)
        RETURN(1)

    SELECT r.RoleName
    FROM   dbo.aspnet_Roles r, dbo.aspnet_UsersInRoles ur
    WHERE  r.RoleId = ur.RoleId AND r.ApplicationId = @ApplicationId AND ur.UserId = @UserId
    ORDER BY r.RoleName
    RETURN (0)
END' 
END
GO
GRANT EXECUTE ON [dbo].[aspnet_UsersInRoles_GetRolesForUser] TO [aspnet_Roles_BasicAccess]
GO
GRANT EXECUTE ON [dbo].[aspnet_UsersInRoles_GetRolesForUser] TO [aspnet_Roles_ReportingAccess]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_IsUserInRole]    Script Date: 04/20/2008 11:56:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_UsersInRoles_IsUserInRole]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[aspnet_UsersInRoles_IsUserInRole]
    @ApplicationName  nvarchar(256),
    @UserName         nvarchar(256),
    @RoleName         nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(2)
    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL
    DECLARE @RoleId uniqueidentifier
    SELECT  @RoleId = NULL

    SELECT  @UserId = UserId
    FROM    dbo.aspnet_Users
    WHERE   LoweredUserName = LOWER(@UserName) AND ApplicationId = @ApplicationId

    IF (@UserId IS NULL)
        RETURN(2)

    SELECT  @RoleId = RoleId
    FROM    dbo.aspnet_Roles
    WHERE   LoweredRoleName = LOWER(@RoleName) AND ApplicationId = @ApplicationId

    IF (@RoleId IS NULL)
        RETURN(3)

    IF (EXISTS( SELECT * FROM dbo.aspnet_UsersInRoles WHERE  UserId = @UserId AND RoleId = @RoleId))
        RETURN(1)
    ELSE
        RETURN(0)
END' 
END
GO
GRANT EXECUTE ON [dbo].[aspnet_UsersInRoles_IsUserInRole] TO [aspnet_Roles_BasicAccess]
GO
GRANT EXECUTE ON [dbo].[aspnet_UsersInRoles_IsUserInRole] TO [aspnet_Roles_ReportingAccess]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_GetNumberOfInactiveProfiles]    Script Date: 04/20/2008 11:56:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Profile_GetNumberOfInactiveProfiles]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[aspnet_Profile_GetNumberOfInactiveProfiles]
    @ApplicationName        nvarchar(256),
    @ProfileAuthOptions     int,
    @InactiveSinceDate      datetime
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
    BEGIN
        SELECT 0
        RETURN
    END

    SELECT  COUNT(*)
    FROM    dbo.aspnet_Users u, dbo.aspnet_Profile p
    WHERE   ApplicationId = @ApplicationId
        AND u.UserId = p.UserId
        AND (LastActivityDate <= @InactiveSinceDate)
        AND (
                (@ProfileAuthOptions = 2)
                OR (@ProfileAuthOptions = 0 AND IsAnonymous = 1)
                OR (@ProfileAuthOptions = 1 AND IsAnonymous = 0)
            )
END' 
END
GO
GRANT EXECUTE ON [dbo].[aspnet_Profile_GetNumberOfInactiveProfiles] TO [aspnet_Profile_ReportingAccess]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_DeleteInactiveProfiles]    Script Date: 04/20/2008 11:56:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Profile_DeleteInactiveProfiles]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[aspnet_Profile_DeleteInactiveProfiles]
    @ApplicationName        nvarchar(256),
    @ProfileAuthOptions     int,
    @InactiveSinceDate      datetime
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
    BEGIN
        SELECT  0
        RETURN
    END

    DELETE
    FROM    dbo.aspnet_Profile
    WHERE   UserId IN
            (   SELECT  UserId
                FROM    dbo.aspnet_Users u
                WHERE   ApplicationId = @ApplicationId
                        AND (LastActivityDate <= @InactiveSinceDate)
                        AND (
                                (@ProfileAuthOptions = 2)
                             OR (@ProfileAuthOptions = 0 AND IsAnonymous = 1)
                             OR (@ProfileAuthOptions = 1 AND IsAnonymous = 0)
                            )
            )

    SELECT  @@ROWCOUNT
END' 
END
GO
GRANT EXECUTE ON [dbo].[aspnet_Profile_DeleteInactiveProfiles] TO [aspnet_Profile_FullAccess]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_GetProfiles]    Script Date: 04/20/2008 11:56:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Profile_GetProfiles]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[aspnet_Profile_GetProfiles]
    @ApplicationName        nvarchar(256),
    @ProfileAuthOptions     int,
    @PageIndex              int,
    @PageSize               int,
    @UserNameToMatch        nvarchar(256) = NULL,
    @InactiveSinceDate      datetime      = NULL
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN

    -- Set the page bounds
    DECLARE @PageLowerBound int
    DECLARE @PageUpperBound int
    DECLARE @TotalRecords   int
    SET @PageLowerBound = @PageSize * @PageIndex
    SET @PageUpperBound = @PageSize - 1 + @PageLowerBound

    -- Create a temp table TO store the select results
    CREATE TABLE #PageIndexForUsers
    (
        IndexId int IDENTITY (0, 1) NOT NULL,
        UserId uniqueidentifier
    )

    -- Insert into our temp table
    INSERT INTO #PageIndexForUsers (UserId)
        SELECT  u.UserId
        FROM    dbo.aspnet_Users u, dbo.aspnet_Profile p
        WHERE   ApplicationId = @ApplicationId
            AND u.UserId = p.UserId
            AND (@InactiveSinceDate IS NULL OR LastActivityDate <= @InactiveSinceDate)
            AND (     (@ProfileAuthOptions = 2)
                   OR (@ProfileAuthOptions = 0 AND IsAnonymous = 1)
                   OR (@ProfileAuthOptions = 1 AND IsAnonymous = 0)
                 )
            AND (@UserNameToMatch IS NULL OR LoweredUserName LIKE LOWER(@UserNameToMatch))
        ORDER BY UserName

    SELECT  u.UserName, u.IsAnonymous, u.LastActivityDate, p.LastUpdatedDate,
            DATALENGTH(p.PropertyNames) + DATALENGTH(p.PropertyValuesString) + DATALENGTH(p.PropertyValuesBinary)
    FROM    dbo.aspnet_Users u, dbo.aspnet_Profile p, #PageIndexForUsers i
    WHERE   u.UserId = p.UserId AND p.UserId = i.UserId AND i.IndexId >= @PageLowerBound AND i.IndexId <= @PageUpperBound

    SELECT COUNT(*)
    FROM   #PageIndexForUsers

    DROP TABLE #PageIndexForUsers
END' 
END
GO
GRANT EXECUTE ON [dbo].[aspnet_Profile_GetProfiles] TO [aspnet_Profile_ReportingAccess]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_UpdateUser]    Script Date: 04/20/2008 11:56:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_UpdateUser]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_Membership_UpdateUser]
    @ApplicationName      nvarchar(256),
    @UserName             nvarchar(256),
    @Email                nvarchar(256),
    @Comment              ntext,
    @IsApproved           bit,
    @LastLoginDate        datetime,
    @LastActivityDate     datetime,
    @UniqueEmail          int,
    @CurrentTimeUtc       datetime
AS
BEGIN
    DECLARE @UserId uniqueidentifier
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @UserId = NULL
    SELECT  @UserId = u.UserId, @ApplicationId = a.ApplicationId
    FROM    dbo.aspnet_Users u, dbo.aspnet_Applications a, dbo.aspnet_Membership m
    WHERE   LoweredUserName = LOWER(@UserName) AND
            u.ApplicationId = a.ApplicationId  AND
            LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.UserId = m.UserId

    IF (@UserId IS NULL)
        RETURN(1)

    IF (@UniqueEmail = 1)
    BEGIN
        IF (EXISTS (SELECT *
                    FROM  dbo.aspnet_Membership WITH (UPDLOCK, HOLDLOCK)
                    WHERE ApplicationId = @ApplicationId  AND @UserId <> UserId AND LoweredEmail = LOWER(@Email)))
        BEGIN
            RETURN(7)
        END
    END

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
	SET @TranStarted = 0

    UPDATE dbo.aspnet_Users WITH (ROWLOCK)
    SET
         LastActivityDate = @LastActivityDate
    WHERE
       @UserId = UserId

    IF( @@ERROR <> 0 )
        GOTO Cleanup

    UPDATE dbo.aspnet_Membership WITH (ROWLOCK)
    SET
         Email            = @Email,
         LoweredEmail     = LOWER(@Email),
         Comment          = @Comment,
         IsApproved       = @IsApproved,
         LastLoginDate    = @LastLoginDate
    WHERE
       @UserId = UserId

    IF( @@ERROR <> 0 )
        GOTO Cleanup

    IF( @TranStarted = 1 )
    BEGIN
	SET @TranStarted = 0
	COMMIT TRANSACTION
    END

    RETURN 0

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN -1
END' 
END
GO
GRANT EXECUTE ON [dbo].[aspnet_Membership_UpdateUser] TO [aspnet_Membership_FullAccess]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_ChangePasswordQuestionAndAnswer]    Script Date: 04/20/2008 11:56:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_ChangePasswordQuestionAndAnswer]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_Membership_ChangePasswordQuestionAndAnswer]
    @ApplicationName       nvarchar(256),
    @UserName              nvarchar(256),
    @NewPasswordQuestion   nvarchar(256),
    @NewPasswordAnswer     nvarchar(128)
AS
BEGIN
    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL
    SELECT  @UserId = u.UserId
    FROM    dbo.aspnet_Membership m, dbo.aspnet_Users u, dbo.aspnet_Applications a
    WHERE   LoweredUserName = LOWER(@UserName) AND
            u.ApplicationId = a.ApplicationId  AND
            LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.UserId = m.UserId
    IF (@UserId IS NULL)
    BEGIN
        RETURN(1)
    END

    UPDATE dbo.aspnet_Membership
    SET    PasswordQuestion = @NewPasswordQuestion, PasswordAnswer = @NewPasswordAnswer
    WHERE  UserId=@UserId
    RETURN(0)
END' 
END
GO
GRANT EXECUTE ON [dbo].[aspnet_Membership_ChangePasswordQuestionAndAnswer] TO [aspnet_Membership_FullAccess]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetAllUsers]    Script Date: 04/20/2008 11:56:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_GetAllUsers]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_Membership_GetAllUsers]
    @ApplicationName       nvarchar(256),
    @PageIndex             int,
    @PageSize              int
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN 0


    -- Set the page bounds
    DECLARE @PageLowerBound int
    DECLARE @PageUpperBound int
    DECLARE @TotalRecords   int
    SET @PageLowerBound = @PageSize * @PageIndex
    SET @PageUpperBound = @PageSize - 1 + @PageLowerBound

    -- Create a temp table TO store the select results
    CREATE TABLE #PageIndexForUsers
    (
        IndexId int IDENTITY (0, 1) NOT NULL,
        UserId uniqueidentifier
    )

    -- Insert into our temp table
    INSERT INTO #PageIndexForUsers (UserId)
    SELECT u.UserId
    FROM   dbo.aspnet_Membership m, dbo.aspnet_Users u
    WHERE  u.ApplicationId = @ApplicationId AND u.UserId = m.UserId
    ORDER BY u.UserName

    SELECT @TotalRecords = @@ROWCOUNT

    SELECT u.UserName, m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
            m.CreateDate,
            m.LastLoginDate,
            u.LastActivityDate,
            m.LastPasswordChangedDate,
            u.UserId, m.IsLockedOut,
            m.LastLockoutDate
    FROM   dbo.aspnet_Membership m, dbo.aspnet_Users u, #PageIndexForUsers p
    WHERE  u.UserId = p.UserId AND u.UserId = m.UserId AND
           p.IndexId >= @PageLowerBound AND p.IndexId <= @PageUpperBound
    ORDER BY u.UserName
    RETURN @TotalRecords
END' 
END
GO
GRANT EXECUTE ON [dbo].[aspnet_Membership_GetAllUsers] TO [aspnet_Membership_ReportingAccess]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetNumberOfUsersOnline]    Script Date: 04/20/2008 11:56:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_GetNumberOfUsersOnline]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_Membership_GetNumberOfUsersOnline]
    @ApplicationName            nvarchar(256),
    @MinutesSinceLastInActive   int,
    @CurrentTimeUtc             datetime
AS
BEGIN
    DECLARE @DateActive datetime
    SELECT  @DateActive = DATEADD(minute,  -(@MinutesSinceLastInActive), @CurrentTimeUtc)

    DECLARE @NumOnline int
    SELECT  @NumOnline = COUNT(*)
    FROM    dbo.aspnet_Users u(NOLOCK),
            dbo.aspnet_Applications a(NOLOCK),
            dbo.aspnet_Membership m(NOLOCK)
    WHERE   u.ApplicationId = a.ApplicationId                  AND
            LastActivityDate > @DateActive                     AND
            a.LoweredApplicationName = LOWER(@ApplicationName) AND
            u.UserId = m.UserId
    RETURN(@NumOnline)
END' 
END
GO
GRANT EXECUTE ON [dbo].[aspnet_Membership_GetNumberOfUsersOnline] TO [aspnet_Membership_BasicAccess]
GO
GRANT EXECUTE ON [dbo].[aspnet_Membership_GetNumberOfUsersOnline] TO [aspnet_Membership_ReportingAccess]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_FindUsersByName]    Script Date: 04/20/2008 11:56:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_FindUsersByName]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_Membership_FindUsersByName]
    @ApplicationName       nvarchar(256),
    @UserNameToMatch       nvarchar(256),
    @PageIndex             int,
    @PageSize              int
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN 0

    -- Set the page bounds
    DECLARE @PageLowerBound int
    DECLARE @PageUpperBound int
    DECLARE @TotalRecords   int
    SET @PageLowerBound = @PageSize * @PageIndex
    SET @PageUpperBound = @PageSize - 1 + @PageLowerBound

    -- Create a temp table TO store the select results
    CREATE TABLE #PageIndexForUsers
    (
        IndexId int IDENTITY (0, 1) NOT NULL,
        UserId uniqueidentifier
    )

    -- Insert into our temp table
    INSERT INTO #PageIndexForUsers (UserId)
        SELECT u.UserId
        FROM   dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE  u.ApplicationId = @ApplicationId AND m.UserId = u.UserId AND u.LoweredUserName LIKE LOWER(@UserNameToMatch)
        ORDER BY u.UserName


    SELECT  u.UserName, m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
            m.CreateDate,
            m.LastLoginDate,
            u.LastActivityDate,
            m.LastPasswordChangedDate,
            u.UserId, m.IsLockedOut,
            m.LastLockoutDate
    FROM   dbo.aspnet_Membership m, dbo.aspnet_Users u, #PageIndexForUsers p
    WHERE  u.UserId = p.UserId AND u.UserId = m.UserId AND
           p.IndexId >= @PageLowerBound AND p.IndexId <= @PageUpperBound
    ORDER BY u.UserName

    SELECT  @TotalRecords = COUNT(*)
    FROM    #PageIndexForUsers
    RETURN @TotalRecords
END' 
END
GO
GRANT EXECUTE ON [dbo].[aspnet_Membership_FindUsersByName] TO [aspnet_Membership_ReportingAccess]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_FindUsersByEmail]    Script Date: 04/20/2008 11:56:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_FindUsersByEmail]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_Membership_FindUsersByEmail]
    @ApplicationName       nvarchar(256),
    @EmailToMatch          nvarchar(256),
    @PageIndex             int,
    @PageSize              int
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN 0

    -- Set the page bounds
    DECLARE @PageLowerBound int
    DECLARE @PageUpperBound int
    DECLARE @TotalRecords   int
    SET @PageLowerBound = @PageSize * @PageIndex
    SET @PageUpperBound = @PageSize - 1 + @PageLowerBound

    -- Create a temp table TO store the select results
    CREATE TABLE #PageIndexForUsers
    (
        IndexId int IDENTITY (0, 1) NOT NULL,
        UserId uniqueidentifier
    )

    -- Insert into our temp table
    IF( @EmailToMatch IS NULL )
        INSERT INTO #PageIndexForUsers (UserId)
            SELECT u.UserId
            FROM   dbo.aspnet_Users u, dbo.aspnet_Membership m
            WHERE  u.ApplicationId = @ApplicationId AND m.UserId = u.UserId AND m.Email IS NULL
            ORDER BY m.LoweredEmail
    ELSE
        INSERT INTO #PageIndexForUsers (UserId)
            SELECT u.UserId
            FROM   dbo.aspnet_Users u, dbo.aspnet_Membership m
            WHERE  u.ApplicationId = @ApplicationId AND m.UserId = u.UserId AND m.LoweredEmail LIKE LOWER(@EmailToMatch)
            ORDER BY m.LoweredEmail

    SELECT  u.UserName, m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
            m.CreateDate,
            m.LastLoginDate,
            u.LastActivityDate,
            m.LastPasswordChangedDate,
            u.UserId, m.IsLockedOut,
            m.LastLockoutDate
    FROM   dbo.aspnet_Membership m, dbo.aspnet_Users u, #PageIndexForUsers p
    WHERE  u.UserId = p.UserId AND u.UserId = m.UserId AND
           p.IndexId >= @PageLowerBound AND p.IndexId <= @PageUpperBound
    ORDER BY m.LoweredEmail

    SELECT  @TotalRecords = COUNT(*)
    FROM    #PageIndexForUsers
    RETURN @TotalRecords
END' 
END
GO
GRANT EXECUTE ON [dbo].[aspnet_Membership_FindUsersByEmail] TO [aspnet_Membership_ReportingAccess]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_GetProperties]    Script Date: 04/20/2008 11:56:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Profile_GetProperties]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[aspnet_Profile_GetProperties]
    @ApplicationName      nvarchar(256),
    @UserName             nvarchar(256),
    @CurrentTimeUtc       datetime
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN

    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL

    SELECT @UserId = UserId
    FROM   dbo.aspnet_Users
    WHERE  ApplicationId = @ApplicationId AND LoweredUserName = LOWER(@UserName)

    IF (@UserId IS NULL)
        RETURN
    SELECT TOP 1 PropertyNames, PropertyValuesString, PropertyValuesBinary
    FROM         dbo.aspnet_Profile
    WHERE        UserId = @UserId

    IF (@@ROWCOUNT > 0)
    BEGIN
        UPDATE dbo.aspnet_Users
        SET    LastActivityDate=@CurrentTimeUtc
        WHERE  UserId = @UserId
    END
END' 
END
GO
GRANT EXECUTE ON [dbo].[aspnet_Profile_GetProperties] TO [aspnet_Profile_BasicAccess]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Personalization_GetApplicationId]    Script Date: 04/20/2008 11:56:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Personalization_GetApplicationId]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_Personalization_GetApplicationId] (
    @ApplicationName NVARCHAR(256),
    @ApplicationId UNIQUEIDENTIFIER OUT)
AS
BEGIN
    SELECT @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
END' 
END
GO
GRANT EXECUTE ON [dbo].[aspnet_Personalization_GetApplicationId] TO [aspnet_Personalization_BasicAccess]
GO
/****** Object:  StoredProcedure [dbo].[UPDATE_UTILISATEURS_TABLE]    Script Date: 04/20/2008 11:56:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UPDATE_UTILISATEURS_TABLE]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[UPDATE_UTILISATEURS_TABLE]

@LOGIN_NAME	nvarchar(20)	,
@PASSWORD	nvarchar(20)	,
@ID_SPECIALISATION	int	,
@NOM	nvarchar(50)	,
@PRENOM	nvarchar(50)	,
@SEXE	char(1)	,
@ID_SERVICE	nvarchar(10)	

AS
UPDATE UTILISATEURS
SET PASSWORD=@PASSWORD,
ID_SPECIALISATION=@ID_SPECIALISATION,
NOM=@NOM,
PRENOM=@PRENOM,
ID_SERVICE=@ID_SERVICE
WHERE LOGIN_NAME=@LOGIN_NAME' 
END
GO
/****** Object:  StoredProcedure [dbo].[DELETE_UTILISATEURS_TABLE]    Script Date: 04/20/2008 11:56:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DELETE_UTILISATEURS_TABLE]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[DELETE_UTILISATEURS_TABLE]

@LOGIN_NAME	nvarchar(20),
@NOM	nvarchar(50)	

AS
DELETE UTILISATEURS
WHERE LOGIN_NAME=@LOGIN_NAME AND NOM=@NOM' 
END
GO
/****** Object:  StoredProcedure [dbo].[INSERT_INTO_UTILISATEURS_TABLE]    Script Date: 04/20/2008 11:56:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[INSERT_INTO_UTILISATEURS_TABLE]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[INSERT_INTO_UTILISATEURS_TABLE]

@LOGIN_NAME	nvarchar(20)	,
@PASSWORD	nvarchar(20)	,
@ID_SPECIALISATION	int	,
@NOM	nvarchar(50)	,
@PRENOM	nvarchar(50)	,
@SEXE	char(1)	,
@ID_SERVICE	nvarchar(10)	
		
AS
INSERT INTO UTILISATEURS
VALUES(@LOGIN_NAME	,@PASSWORD	,@ID_SPECIALISATION	,@NOM,
@PRENOM	,@SEXE	,@ID_SERVICE	)' 
END
GO
/****** Object:  StoredProcedure [dbo].[INSERT_INTO_COMMANDE_STOCK]    Script Date: 04/20/2008 11:56:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[INSERT_INTO_COMMANDE_STOCK]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[INSERT_INTO_COMMANDE_STOCK]

@ID_STOCK	nvarchar(10),
@CODE_PRODUIT	nvarchar(10)	,
@DATE_DE_COMMANDE	datetime,
@HEURE_COMMANDE	nvarchar(10),
@QUANTITE_COMMANDEE	float,
@OBSERVATIONS	nvarchar(50)	

AS
INSERT INTO COMMANDE_STOCK
VALUES(@ID_STOCK,@CODE_PRODUIT,@DATE_DE_COMMANDE,
@HEURE_COMMANDE,@QUANTITE_COMMANDEE,@OBSERVATIONS)
' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetUserByUserId]    Script Date: 04/20/2008 11:56:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_GetUserByUserId]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_Membership_GetUserByUserId]
    @UserId               uniqueidentifier,
    @CurrentTimeUtc       datetime,
    @UpdateLastActivity   bit = 0
AS
BEGIN
    IF ( @UpdateLastActivity = 1 )
    BEGIN
        UPDATE   dbo.aspnet_Users
        SET      LastActivityDate = @CurrentTimeUtc
        FROM     dbo.aspnet_Users
        WHERE    @UserId = UserId

        IF ( @@ROWCOUNT = 0 ) -- User ID not found
            RETURN -1
    END

    SELECT  m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
            m.CreateDate, m.LastLoginDate, u.LastActivityDate,
            m.LastPasswordChangedDate, u.UserName, m.IsLockedOut,
            m.LastLockoutDate
    FROM    dbo.aspnet_Users u, dbo.aspnet_Membership m
    WHERE   @UserId = u.UserId AND u.UserId = m.UserId

    IF ( @@ROWCOUNT = 0 ) -- User ID not found
       RETURN -1

    RETURN 0
END' 
END
GO
GRANT EXECUTE ON [dbo].[aspnet_Membership_GetUserByUserId] TO [aspnet_Membership_BasicAccess]
GO
GRANT EXECUTE ON [dbo].[aspnet_Membership_GetUserByUserId] TO [aspnet_Membership_ReportingAccess]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Users_CreateUser]    Script Date: 04/20/2008 11:56:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_CreateUser]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[aspnet_Users_CreateUser]
    @ApplicationId    uniqueidentifier,
    @UserName         nvarchar(256),
    @IsUserAnonymous  bit,
    @LastActivityDate DATETIME,
    @UserId           uniqueidentifier OUTPUT
AS
BEGIN
    IF( @UserId IS NULL )
        SELECT @UserId = NEWID()
    ELSE
    BEGIN
        IF( EXISTS( SELECT UserId FROM dbo.aspnet_Users
                    WHERE @UserId = UserId ) )
            RETURN -1
    END

    INSERT dbo.aspnet_Users (ApplicationId, UserId, UserName, LoweredUserName, IsAnonymous, LastActivityDate)
    VALUES (@ApplicationId, @UserId, @UserName, LOWER(@UserName), @IsUserAnonymous, @LastActivityDate)

    RETURN 0
END' 
END
GO
/****** Object:  View [dbo].[vw_aspnet_MembershipUsers]    Script Date: 04/20/2008 11:56:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_aspnet_MembershipUsers]'))
EXEC dbo.sp_executesql @statement = N'
  CREATE VIEW [dbo].[vw_aspnet_MembershipUsers]
  AS SELECT [dbo].[aspnet_Membership].[UserId],
            [dbo].[aspnet_Membership].[PasswordFormat],
            [dbo].[aspnet_Membership].[MobilePIN],
            [dbo].[aspnet_Membership].[Email],
            [dbo].[aspnet_Membership].[LoweredEmail],
            [dbo].[aspnet_Membership].[PasswordQuestion],
            [dbo].[aspnet_Membership].[PasswordAnswer],
            [dbo].[aspnet_Membership].[IsApproved],
            [dbo].[aspnet_Membership].[IsLockedOut],
            [dbo].[aspnet_Membership].[CreateDate],
            [dbo].[aspnet_Membership].[LastLoginDate],
            [dbo].[aspnet_Membership].[LastPasswordChangedDate],
            [dbo].[aspnet_Membership].[LastLockoutDate],
            [dbo].[aspnet_Membership].[FailedPasswordAttemptCount],
            [dbo].[aspnet_Membership].[FailedPasswordAttemptWindowStart],
            [dbo].[aspnet_Membership].[FailedPasswordAnswerAttemptCount],
            [dbo].[aspnet_Membership].[FailedPasswordAnswerAttemptWindowStart],
            [dbo].[aspnet_Membership].[Comment],
            [dbo].[aspnet_Users].[ApplicationId],
            [dbo].[aspnet_Users].[UserName],
            [dbo].[aspnet_Users].[MobileAlias],
            [dbo].[aspnet_Users].[IsAnonymous],
            [dbo].[aspnet_Users].[LastActivityDate]
  FROM [dbo].[aspnet_Membership] INNER JOIN [dbo].[aspnet_Users]
      ON [dbo].[aspnet_Membership].[UserId] = [dbo].[aspnet_Users].[UserId]
  ' 
GO
GRANT SELECT ON [dbo].[vw_aspnet_MembershipUsers] TO [aspnet_Membership_ReportingAccess]
GO
/****** Object:  View [dbo].[vw_aspnet_Users]    Script Date: 04/20/2008 11:56:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_aspnet_Users]'))
EXEC dbo.sp_executesql @statement = N'
  CREATE VIEW [dbo].[vw_aspnet_Users]
  AS SELECT [dbo].[aspnet_Users].[ApplicationId], [dbo].[aspnet_Users].[UserId], [dbo].[aspnet_Users].[UserName], [dbo].[aspnet_Users].[LoweredUserName], [dbo].[aspnet_Users].[MobileAlias], [dbo].[aspnet_Users].[IsAnonymous], [dbo].[aspnet_Users].[LastActivityDate]
  FROM [dbo].[aspnet_Users]
  ' 
GO
GRANT SELECT ON [dbo].[vw_aspnet_Users] TO [aspnet_Membership_ReportingAccess]
GO
GRANT SELECT ON [dbo].[vw_aspnet_Users] TO [aspnet_Personalization_ReportingAccess]
GO
GRANT SELECT ON [dbo].[vw_aspnet_Users] TO [aspnet_Profile_ReportingAccess]
GO
GRANT SELECT ON [dbo].[vw_aspnet_Users] TO [aspnet_Roles_ReportingAccess]
GO
/****** Object:  StoredProcedure [dbo].[INSERT_INTO_CATEGORY_UTILISATEUR]    Script Date: 04/20/2008 11:56:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[INSERT_INTO_CATEGORY_UTILISATEUR]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[INSERT_INTO_CATEGORY_UTILISATEUR]

@DESCRIPTION_USER_CATEG	nvarchar(20)	

AS 
INSERT INTO CATEGORY_UTILISATEUR
VALUES(@DESCRIPTION_USER_CATEG)
' 
END
GO
/****** Object:  StoredProcedure [dbo].[INSERT_INTO_CATEGORY_SERVICE]    Script Date: 04/20/2008 11:56:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[INSERT_INTO_CATEGORY_SERVICE]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[INSERT_INTO_CATEGORY_SERVICE]

@NOM_CATEG_SERVICE	nvarchar(20)	

AS
INSERT INTO CATEGORY_SERVICE
VALUES(@NOM_CATEG_SERVICE)
' 
END
GO
/****** Object:  StoredProcedure [dbo].[DELETE_CATEGORY_SERVICE]    Script Date: 04/20/2008 11:56:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DELETE_CATEGORY_SERVICE]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[DELETE_CATEGORY_SERVICE]

@ID_CATEG_SERVICE	int	

AS
DELETE CATEGORY_SERVICE
WHERE ID_CATEG_SERVICE=@ID_CATEG_SERVICE 
' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_RegisterSchemaVersion]    Script Date: 04/20/2008 11:56:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_RegisterSchemaVersion]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[aspnet_RegisterSchemaVersion]
    @Feature                   nvarchar(128),
    @CompatibleSchemaVersion   nvarchar(128),
    @IsCurrentVersion          bit,
    @RemoveIncompatibleSchema  bit
AS
BEGIN
    IF( @RemoveIncompatibleSchema = 1 )
    BEGIN
        DELETE FROM dbo.aspnet_SchemaVersions WHERE Feature = LOWER( @Feature )
    END
    ELSE
    BEGIN
        IF( @IsCurrentVersion = 1 )
        BEGIN
            UPDATE dbo.aspnet_SchemaVersions
            SET IsCurrentVersion = 0
            WHERE Feature = LOWER( @Feature )
        END
    END

    INSERT  dbo.aspnet_SchemaVersions( Feature, CompatibleSchemaVersion, IsCurrentVersion )
    VALUES( LOWER( @Feature ), @CompatibleSchemaVersion, @IsCurrentVersion )
END' 
END
GO
GRANT EXECUTE ON [dbo].[aspnet_RegisterSchemaVersion] TO [aspnet_Membership_BasicAccess]
GO
GRANT EXECUTE ON [dbo].[aspnet_RegisterSchemaVersion] TO [aspnet_Membership_ReportingAccess]
GO
GRANT EXECUTE ON [dbo].[aspnet_RegisterSchemaVersion] TO [aspnet_Personalization_BasicAccess]
GO
GRANT EXECUTE ON [dbo].[aspnet_RegisterSchemaVersion] TO [aspnet_Personalization_ReportingAccess]
GO
GRANT EXECUTE ON [dbo].[aspnet_RegisterSchemaVersion] TO [aspnet_Profile_BasicAccess]
GO
GRANT EXECUTE ON [dbo].[aspnet_RegisterSchemaVersion] TO [aspnet_Profile_ReportingAccess]
GO
GRANT EXECUTE ON [dbo].[aspnet_RegisterSchemaVersion] TO [aspnet_Roles_BasicAccess]
GO
GRANT EXECUTE ON [dbo].[aspnet_RegisterSchemaVersion] TO [aspnet_Roles_ReportingAccess]
GO
GRANT EXECUTE ON [dbo].[aspnet_RegisterSchemaVersion] TO [aspnet_WebEvent_FullAccess]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_CheckSchemaVersion]    Script Date: 04/20/2008 11:56:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_CheckSchemaVersion]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[aspnet_CheckSchemaVersion]
    @Feature                   nvarchar(128),
    @CompatibleSchemaVersion   nvarchar(128)
AS
BEGIN
    IF (EXISTS( SELECT  *
                FROM    dbo.aspnet_SchemaVersions
                WHERE   Feature = LOWER( @Feature ) AND
                        CompatibleSchemaVersion = @CompatibleSchemaVersion ))
        RETURN 0

    RETURN 1
END' 
END
GO
GRANT EXECUTE ON [dbo].[aspnet_CheckSchemaVersion] TO [aspnet_Membership_BasicAccess]
GO
GRANT EXECUTE ON [dbo].[aspnet_CheckSchemaVersion] TO [aspnet_Membership_ReportingAccess]
GO
GRANT EXECUTE ON [dbo].[aspnet_CheckSchemaVersion] TO [aspnet_Personalization_BasicAccess]
GO
GRANT EXECUTE ON [dbo].[aspnet_CheckSchemaVersion] TO [aspnet_Personalization_ReportingAccess]
GO
GRANT EXECUTE ON [dbo].[aspnet_CheckSchemaVersion] TO [aspnet_Profile_BasicAccess]
GO
GRANT EXECUTE ON [dbo].[aspnet_CheckSchemaVersion] TO [aspnet_Profile_ReportingAccess]
GO
GRANT EXECUTE ON [dbo].[aspnet_CheckSchemaVersion] TO [aspnet_Roles_BasicAccess]
GO
GRANT EXECUTE ON [dbo].[aspnet_CheckSchemaVersion] TO [aspnet_Roles_ReportingAccess]
GO
GRANT EXECUTE ON [dbo].[aspnet_CheckSchemaVersion] TO [aspnet_WebEvent_FullAccess]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UnRegisterSchemaVersion]    Script Date: 04/20/2008 11:56:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_UnRegisterSchemaVersion]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[aspnet_UnRegisterSchemaVersion]
    @Feature                   nvarchar(128),
    @CompatibleSchemaVersion   nvarchar(128)
AS
BEGIN
    DELETE FROM dbo.aspnet_SchemaVersions
        WHERE   Feature = LOWER(@Feature) AND @CompatibleSchemaVersion = CompatibleSchemaVersion
END' 
END
GO
GRANT EXECUTE ON [dbo].[aspnet_UnRegisterSchemaVersion] TO [aspnet_Membership_BasicAccess]
GO
GRANT EXECUTE ON [dbo].[aspnet_UnRegisterSchemaVersion] TO [aspnet_Membership_ReportingAccess]
GO
GRANT EXECUTE ON [dbo].[aspnet_UnRegisterSchemaVersion] TO [aspnet_Personalization_BasicAccess]
GO
GRANT EXECUTE ON [dbo].[aspnet_UnRegisterSchemaVersion] TO [aspnet_Personalization_ReportingAccess]
GO
GRANT EXECUTE ON [dbo].[aspnet_UnRegisterSchemaVersion] TO [aspnet_Profile_BasicAccess]
GO
GRANT EXECUTE ON [dbo].[aspnet_UnRegisterSchemaVersion] TO [aspnet_Profile_ReportingAccess]
GO
GRANT EXECUTE ON [dbo].[aspnet_UnRegisterSchemaVersion] TO [aspnet_Roles_BasicAccess]
GO
GRANT EXECUTE ON [dbo].[aspnet_UnRegisterSchemaVersion] TO [aspnet_Roles_ReportingAccess]
GO
GRANT EXECUTE ON [dbo].[aspnet_UnRegisterSchemaVersion] TO [aspnet_WebEvent_FullAccess]
GO
/****** Object:  UserDefinedFunction [dbo].[Function_Return_Numero]    Script Date: 04/20/2008 11:56:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Function_Return_Numero]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'
CREATE FUNCTION [dbo].[Function_Return_Numero] ()

RETURNS NVARCHAR(50)
AS
BEGIN
	
	DECLARE @NUM  NVARCHAR(50);

	SET @NUM =( SELECT MAX (NUMERO) FROM ESSAI_No WHERE NNo=1)

	-- Return the result of the function
	RETURN @NUM

END
' 
END

GO
/****** Object:  StoredProcedure [dbo].[Select_Max_Numero]    Script Date: 04/20/2008 11:56:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Select_Max_Numero]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE procedure [dbo].[Select_Max_Numero]
AS
BEGIN
	declare @ex nvarchar(50);
	declare @res nvarchar(50);
	declare max_land cursor for
	select land_no from Land_info;
	open max_land;
	fetch next from max_land
	WHILE @@FETCH_STATUS = 0
	begin
		set @ex=(select Numero from Essai_No)
		set @res=substring(@ex,8,5)
--		print(''kdkdkdkdkd'');
		fetch next from max_land;
	end;
	close max_land;
	deallocate max_land;
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[DELETE_CATEGORY_PRODUIT]    Script Date: 04/20/2008 11:56:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DELETE_CATEGORY_PRODUIT]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[DELETE_CATEGORY_PRODUIT]

@ID_CATEG_PRODUIT	int

AS 
DELETE CATEGORY_PRODUIT
WHERE ID_CATEG_PRODUIT=@ID_CATEG_PRODUIT ' 
END
GO
/****** Object:  StoredProcedure [dbo].[INSERT_INTO_CATEGORY_PRODUIT]    Script Date: 04/20/2008 11:56:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[INSERT_INTO_CATEGORY_PRODUIT]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[INSERT_INTO_CATEGORY_PRODUIT]

@DESCRIPTION_CATEGORY	nvarchar(50)

AS 
INSERT INTO CATEGORY_PRODUIT
VALUES(@DESCRIPTION_CATEGORY	)
' 
END
GO
/****** Object:  StoredProcedure [dbo].[INSERT_INTO_CATEGORY_CHAMBRE]    Script Date: 04/20/2008 11:56:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[INSERT_INTO_CATEGORY_CHAMBRE]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[INSERT_INTO_CATEGORY_CHAMBRE]

@DESCRIPTION	nvarchar(50)	,
@PRIX_PAR_CHAMBRE	money	

AS
INSERT INTO CATEGORY_CHAMBRE
VALUES(@DESCRIPTION,@PRIX_PAR_CHAMBRE)
' 
END
GO
/****** Object:  StoredProcedure [dbo].[INSERT_INTO_CATEG_SERVICES_RENDUS]    Script Date: 04/20/2008 11:56:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[INSERT_INTO_CATEG_SERVICES_RENDUS]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[INSERT_INTO_CATEG_SERVICES_RENDUS]

@DESCRIPTION_SERVICE	nvarchar(50)	

AS
INSERT INTO CATEG_SERVICES_RENDUS
VALUES(@DESCRIPTION_SERVICE)
' 
END
GO
/****** Object:  StoredProcedure [dbo].[INSERT_INTO_SORTIE_DE_STOCK]    Script Date: 04/20/2008 11:56:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[INSERT_INTO_SORTIE_DE_STOCK]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[INSERT_INTO_SORTIE_DE_STOCK]

@ID_STOCK	nvarchar(10)	,
@CODE_PRODUIT	nvarchar(10)	,
@DATE_DE_SORTIE	datetime	,
@HEURE_DE_SORTIE	nvarchar(10)	,
@QUANTITE_SORTIE	float	,
@DATE_EXPIRE	datetime

AS
INSERT INTO SORTIE_DE_STOCK
VALUES(@ID_STOCK,@CODE_PRODUIT,@DATE_DE_SORTIE	,
@HEURE_DE_SORTIE,@QUANTITE_SORTIE,@DATE_EXPIRE	)	
' 
END
GO
/****** Object:  StoredProcedure [dbo].[INSERT_INTO_SPECIALISATION_TABLE]    Script Date: 04/20/2008 11:56:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[INSERT_INTO_SPECIALISATION_TABLE]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[INSERT_INTO_SPECIALISATION_TABLE]

@SPECIALITE	nvarchar(50)	,
@ID_CATEG_UTILISATEUR	int	

AS
INSERT INTO SPECIALISATION
VALUES(@SPECIALITE	,@ID_CATEG_UTILISATEUR)
' 
END
GO
/****** Object:  StoredProcedure [dbo].[INSERT_INTO_EXAMENS_A_FAIRE]    Script Date: 04/20/2008 11:56:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[INSERT_INTO_EXAMENS_A_FAIRE]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

CREATE PROCEDURE [dbo].[INSERT_INTO_EXAMENS_A_FAIRE]

@CODE_EXAMEN	nvarchar(10)	,
@ID_SERVICES_RENDUS	nvarchar(10)	,
@EXAM_DESCRIPTION	nvarchar(50)	,
@ID_DEPART_LABO	int,
@UNITE_DE_MESURE	nvarchar(5),
@VALEUR_NORMALE	nvarchar(20),
@PAYES	bit

AS
INSERT INTO EXAMENS_A_FAIRE
VALUES(@CODE_EXAMEN,@ID_SERVICES_RENDUS	,@EXAM_DESCRIPTION,
@ID_DEPART_LABO,@UNITE_DE_MESURE,@VALEUR_NORMALE,0)

' 
END
GO
/****** Object:  StoredProcedure [dbo].[UPDATE_EXAMENS_A_FAIRE]    Script Date: 04/20/2008 11:56:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UPDATE_EXAMENS_A_FAIRE]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'


CREATE PROCEDURE [dbo].[UPDATE_EXAMENS_A_FAIRE]

@CODE_EXAMEN	nvarchar(10)	,
@ID_SERVICES_RENDUS	nvarchar(10)	,
@EXAM_DESCRIPTION	nvarchar(50)	,
@ID_DEPART_LABO	int	,
@UNITE_DE_MESURE	nvarchar(5)	,
@VALEUR_NORMALE	nvarchar(20),
@PAYES	bit	

AS
UPDATE EXAMENS_A_FAIRE
SET EXAM_DESCRIPTION=@EXAM_DESCRIPTION,
ID_DEPART_LABO=@ID_DEPART_LABO,
UNITE_DE_MESURE=@UNITE_DE_MESURE,
VALEUR_NORMALE=@VALEUR_NORMALE,
PAYES=@PAYES
WHERE CODE_EXAMEN=@CODE_EXAMEN AND ID_SERVICES_RENDUS=@ID_SERVICES_RENDUS


' 
END
GO
/****** Object:  View [dbo].[View_RESULTATS_DES_EXAMENS_DE_LABO]    Script Date: 04/20/2008 11:56:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[View_RESULTATS_DES_EXAMENS_DE_LABO]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW [dbo].[View_RESULTATS_DES_EXAMENS_DE_LABO]
AS
SELECT     dbo.CONSULTATION.ID_PATIENT, dbo.CONSULTATION.ID_CONSULTATION, dbo.RESULTATS_EXAMEN.DATE_EXAMEN, 
                      dbo.EXAMENS_A_FAIRE.EXAM_DESCRIPTION, dbo.RESULTATS_EXAMEN.ID_TYPE_ECHANTILLON, dbo.RESULTATS_EXAMEN.RESULTATS, 
                      dbo.EXAMENS_A_FAIRE.ID_SERVICES_RENDUS, dbo.EXAMENS_A_FAIRE.ID_DEPART_LABO, dbo.EXAMENS_A_FAIRE.UNITE_DE_MESURE, 
                      dbo.EXAMENS_A_FAIRE.VALEUR_NORMALE
FROM         dbo.CONSULTATION INNER JOIN
                      dbo.RESULTATS_EXAMEN ON dbo.CONSULTATION.ID_CONSULTATION = dbo.RESULTATS_EXAMEN.ID_CONSULTATION INNER JOIN
                      dbo.EXAMENS_A_FAIRE ON dbo.RESULTATS_EXAMEN.CODE_EXAMEN = dbo.EXAMENS_A_FAIRE.CODE_EXAMEN AND 
                      dbo.RESULTATS_EXAMEN.ID_SERVICES_RENDUS = dbo.EXAMENS_A_FAIRE.ID_SERVICES_RENDUS
' 
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[19] 4[52] 2[12] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1[50] 4[25] 3) )"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4[50] 3) )"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 6
   End
   Begin DiagramPane = 
      PaneHidden = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "CONSULTATION"
            Begin Extent = 
               Top = 11
               Left = 625
               Bottom = 191
               Right = 825
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "RESULTATS_EXAMEN"
            Begin Extent = 
               Top = 10
               Left = 330
               Bottom = 159
               Right = 529
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "EXAMENS_A_FAIRE"
            Begin Extent = 
               Top = 10
               Left = 19
               Bottom = 161
               Right = 213
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
      PaneHidden = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 2040
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'VIEW', @level1name=N'View_RESULTATS_DES_EXAMENS_DE_LABO'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'VIEW', @level1name=N'View_RESULTATS_DES_EXAMENS_DE_LABO'

GO
/****** Object:  View [dbo].[La_LISTE_DES_RESULTATS_d_EXAMENS_de_LABO]    Script Date: 04/20/2008 11:56:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[La_LISTE_DES_RESULTATS_d_EXAMENS_de_LABO]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW [dbo].[La_LISTE_DES_RESULTATS_d_EXAMENS_de_LABO]
AS
SELECT     dbo.EXAMENS_A_FAIRE.EXAM_DESCRIPTION AS nom, dbo.RESULTATS_EXAMEN.RESULTATS AS result, 
                      dbo.EXAMENS_A_FAIRE.EXAM_DESCRIPTION + '' : -->   '' + dbo.RESULTATS_EXAMEN.RESULTATS AS resultat_d_examen
FROM         dbo.EXAMENS_A_FAIRE INNER JOIN
                      dbo.RESULTATS_EXAMEN ON dbo.EXAMENS_A_FAIRE.CODE_EXAMEN = dbo.RESULTATS_EXAMEN.CODE_EXAMEN AND 
                      dbo.EXAMENS_A_FAIRE.ID_SERVICES_RENDUS = dbo.RESULTATS_EXAMEN.ID_SERVICES_RENDUS
' 
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[41] 4[28] 2[13] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "EXAMENS_A_FAIRE"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 179
               Right = 246
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "RESULTATS_EXAMEN"
            Begin Extent = 
               Top = 6
               Left = 270
               Bottom = 180
               Right = 573
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 4335
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'VIEW', @level1name=N'La_LISTE_DES_RESULTATS_d_EXAMENS_de_LABO'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'VIEW', @level1name=N'La_LISTE_DES_RESULTATS_d_EXAMENS_de_LABO'

GO
/****** Object:  StoredProcedure [dbo].[INSERT_INTO_TYPE_D_ECHANTILLON]    Script Date: 04/20/2008 11:56:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[INSERT_INTO_TYPE_D_ECHANTILLON]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[INSERT_INTO_TYPE_D_ECHANTILLON]

@TYPE_D_ECHANTILLON	nvarchar(20)	
	
AS 
INSERT INTO TYPE_D_ECHANTILLON
VALUES(@TYPE_D_ECHANTILLON)
' 
END
GO
/****** Object:  StoredProcedure [dbo].[DELETE_TYPE_D_ECHANTILLON]    Script Date: 04/20/2008 11:56:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DELETE_TYPE_D_ECHANTILLON]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[DELETE_TYPE_D_ECHANTILLON]

@ID_TYPE_ECHANTILLON	int

AS
DELETE TYPE_D_ECHANTILLON
WHERE ID_TYPE_ECHANTILLON=@ID_TYPE_ECHANTILLON ' 
END
GO
/****** Object:  StoredProcedure [dbo].[UPDATE_CONSULTATION_TABLE]    Script Date: 04/20/2008 11:56:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UPDATE_CONSULTATION_TABLE]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'






CREATE PROCEDURE [dbo].[UPDATE_CONSULTATION_TABLE]

@ID_CONSULTATION	nvarchar(50)	,
@ID_PATIENT	nvarchar(20)	,
@POIDS	float	,
@DATE_CONSULTATION	datetime	,
@HEURE_CONSULTATION	nvarchar(10)	,
@OBSERVATIONS	nvarchar(50)	

AS
UPDATE CONSULTATION
SET ID_PATIENT=@ID_PATIENT,
POIDS=@POIDS,
DATE_CONSULTATION=@DATE_CONSULTATION,
HEURE_CONSULTATION=@HEURE_CONSULTATION,
OBSERVATIONS=@OBSERVATIONS
WHERE ID_CONSULTATION=@ID_CONSULTATION






' 
END
GO
/****** Object:  UserDefinedFunction [dbo].[Select_ID_CONSULTATION_Max]    Script Date: 04/20/2008 11:56:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Select_ID_CONSULTATION_Max]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'


CREATE function [dbo].[Select_ID_CONSULTATION_Max](@NUMERO nvarchar(50))
returns nvarchar(50)
as
BEGIN
	DECLARE @CONSULTATION_no nvarchar(50),@var nvarchar(50),@num_to_conv nvarchar(50),@num nvarchar(50)
	set @num=''0''
	DECLARE select_max_ID_CONSULTATION CURSOR FOR 
		SELECT ID_CONSULTATION FROM CONSULTATION
	
	OPEN select_max_ID_CONSULTATION

	FETCH NEXT FROM select_max_ID_CONSULTATION INTO @CONSULTATION_no
	WHILE @@FETCH_STATUS = 0
	BEGIN
	
		set @var=substring(@CONSULTATION_no,1,21)
		if @var=@NUMERO
			BEGIN
				set @num_to_conv=substring(@CONSULTATION_no,23,3)
				if @num_to_conv>@num
					set @num=@num_to_conv
			END
		FETCH NEXT FROM select_max_ID_CONSULTATION INTO @CONSULTATION_no
	END
	CLOSE select_max_ID_CONSULTATION
	DEALLOCATE select_max_ID_CONSULTATION
	return @num
END


' 
END

GO
/****** Object:  StoredProcedure [dbo].[INSERT_INTO_CONSULTATION_TABLE]    Script Date: 04/20/2008 11:56:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[INSERT_INTO_CONSULTATION_TABLE]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

CREATE PROCEDURE [dbo].[INSERT_INTO_CONSULTATION_TABLE]

@ID_CONSULTATION	nvarchar(20),
@ID_SERVICE	nvarchar(10) ,
@ID_PATIENT	nvarchar(20)	,
@POIDS	float	,
@DATE_CONSULTATION	datetime	,
@HEURE_CONSULTATION	nvarchar(10)	,
@OBSERVATIONS	nvarchar(50)	

AS 
DECLARE @DATE_CONS DATETIME
DECLARE @STRING_DATE_CONS NVARCHAR(20)
DECLARE @HEURE_CONS NVARCHAR(10)

SET @DATE_CONS=GETDATE();
SET @STRING_DATE_CONS=@DATE_CONS;
SET @HEURE_CONS=SUBSTRING(@STRING_DATE_CONS,12,11);

INSERT INTO CONSULTATION(ID_CONSULTATION,ID_SERVICE,ID_PATIENT,POIDS	,DATE_CONSULTATION	,
HEURE_CONSULTATION,OBSERVATIONS	)
VALUES(@ID_CONSULTATION,@ID_SERVICE,@ID_PATIENT,@POIDS	,@DATE_CONS	,
@HEURE_CONS,@OBSERVATIONS	)
 
UPDATE RENDEZ_VOUS_CONSULTATION
SET RENDEZ_VOUS_CONSULTATION.DEJA_CONSULTE=1
WHERE RENDEZ_VOUS_CONSULTATION.ID_CONSULTATION=@ID_CONSULTATION








' 
END
GO
/****** Object:  StoredProcedure [dbo].[INSERT_INTO_LES_PLAINTES_DE_CONSULTATION]    Script Date: 04/20/2008 11:56:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[INSERT_INTO_LES_PLAINTES_DE_CONSULTATION]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

CREATE PROCEDURE [dbo].[INSERT_INTO_LES_PLAINTES_DE_CONSULTATION]

@CODE_PLAINTE	int,
@ID_CONSULTATION	nvarchar(50),
@CHECKED	bit

AS
SET @CHECKED=1

INSERT INTO LES_PLAINTES_DE_CONSULTATION
VALUES(@CODE_PLAINTE,@ID_CONSULTATION,@CHECKED)

' 
END
GO
/****** Object:  StoredProcedure [dbo].[UPDATE_LES_PLAINTES_DE_CONSULTATION]    Script Date: 04/20/2008 11:56:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UPDATE_LES_PLAINTES_DE_CONSULTATION]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[UPDATE_LES_PLAINTES_DE_CONSULTATION]

@CODE_PLAINTE	int,
@ID_CONSULTATION	nvarchar(50),
@CHECKED	bit

AS 
UPDATE LES_PLAINTES_DE_CONSULTATION
SET CHECKED=@CHECKED
WHERE @ID_CONSULTATION=@ID_CONSULTATION AND 
@CODE_PLAINTE=@CODE_PLAINTE
' 
END
GO
/****** Object:  StoredProcedure [dbo].[UPDATE_TRAITEMENT_CONSULTATION]    Script Date: 04/20/2008 11:56:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UPDATE_TRAITEMENT_CONSULTATION]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

CREATE PROCEDURE [dbo].[UPDATE_TRAITEMENT_CONSULTATION]

@No_TRAITEMENT_CONS	int	,
@ID_CONSULTATION	nvarchar(50)	,
@ID_SERVICES_RENDUS	nvarchar(10),
@PAYED BIT,
@RENDU BIT	

AS
UPDATE TRAITEMENT_CONSULTATION
SET ID_CONSULTATION=@ID_CONSULTATION,
ID_SERVICES_RENDUS=@ID_SERVICES_RENDUS,
PAYED=@PAYED,
RENDU=@RENDU
WHERE No_TRAITEMENT_CONS=@No_TRAITEMENT_CONS

' 
END
GO
/****** Object:  StoredProcedure [dbo].[INSERT_INTO_TRAITEMENT_CONSULTATION]    Script Date: 04/20/2008 11:56:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[INSERT_INTO_TRAITEMENT_CONSULTATION]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'


CREATE PROCEDURE [dbo].[INSERT_INTO_TRAITEMENT_CONSULTATION]

@ID_CONSULTATION	nvarchar(50)	,
@ID_SERVICES_RENDUS	nvarchar(10),
@PAYED BIT,
@RENDU BIT	
		
AS
INSERT INTO TRAITEMENT_CONSULTATION
VALUES(@ID_CONSULTATION,@ID_SERVICES_RENDUS,@PAYED,@RENDU)


' 
END
GO
/****** Object:  View [dbo].[vw_aspnet_Profiles]    Script Date: 04/20/2008 11:56:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_aspnet_Profiles]'))
EXEC dbo.sp_executesql @statement = N'
  CREATE VIEW [dbo].[vw_aspnet_Profiles]
  AS SELECT [dbo].[aspnet_Profile].[UserId], [dbo].[aspnet_Profile].[LastUpdatedDate],
      [DataSize]=  DATALENGTH([dbo].[aspnet_Profile].[PropertyNames])
                 + DATALENGTH([dbo].[aspnet_Profile].[PropertyValuesString])
                 + DATALENGTH([dbo].[aspnet_Profile].[PropertyValuesBinary])
  FROM [dbo].[aspnet_Profile]
  ' 
GO
GRANT SELECT ON [dbo].[vw_aspnet_Profiles] TO [aspnet_Profile_ReportingAccess]
GO
/****** Object:  StoredProcedure [dbo].[DELETE_PLAINTES_TABLE]    Script Date: 04/20/2008 11:56:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DELETE_PLAINTES_TABLE]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

CREATE PROCEDURE [dbo].[DELETE_PLAINTES_TABLE]

@CODE_PLAINTE	int	

AS 
DELETE PLAINTES
WHERE CODE_PLAINTE=@CODE_PLAINTE 

' 
END
GO
/****** Object:  StoredProcedure [dbo].[INSERT_INTO_PLAINTES_TABLE]    Script Date: 04/20/2008 11:56:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[INSERT_INTO_PLAINTES_TABLE]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'





CREATE PROCEDURE [dbo].[INSERT_INTO_PLAINTES_TABLE]

@DESCRIPTION_PLAINTE	nvarchar(50),
@ID_CATEG_PLAINTES 	int

AS
INSERT INTO PLAINTES
VALUES(@DESCRIPTION_PLAINTE,@ID_CATEG_PLAINTES)





' 
END
GO
/****** Object:  StoredProcedure [dbo].[INSERT_INTO_TRANSFERT_TABLE]    Script Date: 04/20/2008 11:56:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[INSERT_INTO_TRANSFERT_TABLE]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[INSERT_INTO_TRANSFERT_TABLE]

@ID_TRANSFERT	nvarchar(10)	,
@ID_CONSULTATION	nvarchar(50)	,
@ID_DESTINATION	int	,
@DATE_TRANSFERT	datetime	,
@HEURE_TRANSFERT	nvarchar(10)	,
@RECOMMANDATIONS	nvarchar(50)	,
@OBSERVATIONS	nvarchar(50)	
		
AS
INSERT INTO TRANSFERT
VALUES(@ID_TRANSFERT,@ID_CONSULTATION	,@ID_DESTINATION,@DATE_TRANSFERT,
@HEURE_TRANSFERT	,@RECOMMANDATIONS	,@OBSERVATIONS)
' 
END
GO
/****** Object:  StoredProcedure [dbo].[UPDATE_TRANSFERT_TABLE]    Script Date: 04/20/2008 11:56:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UPDATE_TRANSFERT_TABLE]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[UPDATE_TRANSFERT_TABLE]

@ID_TRANSFERT	nvarchar(10)	,
@ID_CONSULTATION	nvarchar(50)	,
@ID_DESTINATION	int	,
@DATE_TRANSFERT	datetime	,
@HEURE_TRANSFERT	nvarchar(10)	,
@RECOMMANDATIONS	nvarchar(50)	,
@OBSERVATIONS	nvarchar(50)	

AS
UPDATE TRANSFERT 
SET ID_CONSULTATION=@ID_CONSULTATION,
ID_DESTINATION=@ID_DESTINATION,
DATE_TRANSFERT=@DATE_TRANSFERT,
HEURE_TRANSFERT=@HEURE_TRANSFERT,
RECOMMANDATIONS=@RECOMMANDATIONS,
OBSERVATIONS=@OBSERVATIONS
WHERE ID_TRANSFERT=@ID_TRANSFERT
' 
END
GO
/****** Object:  View [dbo].[vw_aspnet_Roles]    Script Date: 04/20/2008 11:56:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_aspnet_Roles]'))
EXEC dbo.sp_executesql @statement = N'
  CREATE VIEW [dbo].[vw_aspnet_Roles]
  AS SELECT [dbo].[aspnet_Roles].[ApplicationId], [dbo].[aspnet_Roles].[RoleId], [dbo].[aspnet_Roles].[RoleName], [dbo].[aspnet_Roles].[LoweredRoleName], [dbo].[aspnet_Roles].[Description]
  FROM [dbo].[aspnet_Roles]
  ' 
GO
GRANT SELECT ON [dbo].[vw_aspnet_Roles] TO [aspnet_Roles_ReportingAccess]
GO
/****** Object:  View [dbo].[vw_aspnet_UsersInRoles]    Script Date: 04/20/2008 11:56:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_aspnet_UsersInRoles]'))
EXEC dbo.sp_executesql @statement = N'
  CREATE VIEW [dbo].[vw_aspnet_UsersInRoles]
  AS SELECT [dbo].[aspnet_UsersInRoles].[UserId], [dbo].[aspnet_UsersInRoles].[RoleId]
  FROM [dbo].[aspnet_UsersInRoles]
  ' 
GO
GRANT SELECT ON [dbo].[vw_aspnet_UsersInRoles] TO [aspnet_Roles_ReportingAccess]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Paths_CreatePath]    Script Date: 04/20/2008 11:56:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Paths_CreatePath]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_Paths_CreatePath]
    @ApplicationId UNIQUEIDENTIFIER,
    @Path           NVARCHAR(256),
    @PathId         UNIQUEIDENTIFIER OUTPUT
AS
BEGIN
    BEGIN TRANSACTION
    IF (NOT EXISTS(SELECT * FROM dbo.aspnet_Paths WHERE LoweredPath = LOWER(@Path) AND ApplicationId = @ApplicationId))
    BEGIN
        INSERT dbo.aspnet_Paths (ApplicationId, Path, LoweredPath) VALUES (@ApplicationId, @Path, LOWER(@Path))
    END
    COMMIT TRANSACTION
    SELECT @PathId = PathId FROM dbo.aspnet_Paths WHERE LOWER(@Path) = LoweredPath AND ApplicationId = @ApplicationId
END' 
END
GO
GRANT EXECUTE ON [dbo].[aspnet_Paths_CreatePath] TO [aspnet_Personalization_BasicAccess]
GO
/****** Object:  View [dbo].[vw_aspnet_WebPartState_Paths]    Script Date: 04/20/2008 11:56:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_aspnet_WebPartState_Paths]'))
EXEC dbo.sp_executesql @statement = N'
  CREATE VIEW [dbo].[vw_aspnet_WebPartState_Paths]
  AS SELECT [dbo].[aspnet_Paths].[ApplicationId], [dbo].[aspnet_Paths].[PathId], [dbo].[aspnet_Paths].[Path], [dbo].[aspnet_Paths].[LoweredPath]
  FROM [dbo].[aspnet_Paths]
  ' 
GO
GRANT SELECT ON [dbo].[vw_aspnet_WebPartState_Paths] TO [aspnet_Personalization_ReportingAccess]
GO
/****** Object:  StoredProcedure [dbo].[INSERT_INTO_FICHE_DE_SUIVIE]    Script Date: 04/20/2008 11:56:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[INSERT_INTO_FICHE_DE_SUIVIE]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[INSERT_INTO_FICHE_DE_SUIVIE]

@ID_HOSPITALISATION	nvarchar(20),
@DATE_SUIVIE	datetime,
@HEURE_SUIVIE	nvarchar(10)	,
@ID_SIGNES_VITAUX	int,
@OBSERVATIONS	nvarchar(50)	

AS
DECLARE @DATE_DE_SUIVI AS DATETIME
DECLARE @STRING_DE_DATE AS NVARCHAR(20)
DECLARE @HEURE_DE_SUIVI AS NVARCHAR(10)

SET @DATE_DE_SUIVI=GETDATE();
SET @STRING_DE_DATE=@DATE_DE_SUIVI;
SET @HEURE_DE_SUIVI=SUBSTRING(@STRING_DE_DATE,12,11);
INSERT INTO FICHE_DE_SUIVIE
VALUES(@ID_HOSPITALISATION,@DATE_DE_SUIVI,@HEURE_DE_SUIVI,
@ID_SIGNES_VITAUX,@OBSERVATIONS)


' 
END
GO
/****** Object:  StoredProcedure [dbo].[UPDATE_FICHE_DE_SUIVIE]    Script Date: 04/20/2008 11:56:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UPDATE_FICHE_DE_SUIVIE]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

CREATE PROCEDURE [dbo].[UPDATE_FICHE_DE_SUIVIE]

@ID_SUIVIE	int	,
@ID_HOSPITALISATION	nvarchar(20)	,
@ID_SIGNES_VITAUX	int	,
@OBSERVATIONS	nvarchar(50)	

AS
UPDATE FICHE_DE_SUIVIE
SET ID_SIGNES_VITAUX=@ID_SIGNES_VITAUX,
OBSERVATIONS=@OBSERVATIONS
WHERE ID_SUIVIE=@ID_SUIVIE AND ID_HOSPITALISATION=@ID_HOSPITALISATION
' 
END
GO
/****** Object:  View [dbo].[vw_aspnet_WebPartState_Shared]    Script Date: 04/20/2008 11:56:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_aspnet_WebPartState_Shared]'))
EXEC dbo.sp_executesql @statement = N'
  CREATE VIEW [dbo].[vw_aspnet_WebPartState_Shared]
  AS SELECT [dbo].[aspnet_PersonalizationAllUsers].[PathId], [DataSize]=DATALENGTH([dbo].[aspnet_PersonalizationAllUsers].[PageSettings]), [dbo].[aspnet_PersonalizationAllUsers].[LastUpdatedDate]
  FROM [dbo].[aspnet_PersonalizationAllUsers]
  ' 
GO
GRANT SELECT ON [dbo].[vw_aspnet_WebPartState_Shared] TO [aspnet_Personalization_ReportingAccess]
GO
/****** Object:  View [dbo].[vw_aspnet_WebPartState_User]    Script Date: 04/20/2008 11:56:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_aspnet_WebPartState_User]'))
EXEC dbo.sp_executesql @statement = N'
  CREATE VIEW [dbo].[vw_aspnet_WebPartState_User]
  AS SELECT [dbo].[aspnet_PersonalizationPerUser].[PathId], [dbo].[aspnet_PersonalizationPerUser].[UserId], [DataSize]=DATALENGTH([dbo].[aspnet_PersonalizationPerUser].[PageSettings]), [dbo].[aspnet_PersonalizationPerUser].[LastUpdatedDate]
  FROM [dbo].[aspnet_PersonalizationPerUser]
  ' 
GO
GRANT SELECT ON [dbo].[vw_aspnet_WebPartState_User] TO [aspnet_Personalization_ReportingAccess]
GO
/****** Object:  StoredProcedure [dbo].[UPDATE_LA_GARDE]    Script Date: 04/20/2008 11:56:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UPDATE_LA_GARDE]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[UPDATE_LA_GARDE]

@ID_PERSONNEL	nvarchar(10)	,
@ID_SERVICE	nvarchar(10)	,
@DATE_GARDE_DEBUT	datetime	,
@HEURE_DEBUT	nvarchar(10)	,
@DATE_GARDE_FIN	datetime	,
@HEURE_FIN	nvarchar(10)	

AS
UPDATE LA_GARDE
SET DATE_GARDE_DEBUT=@DATE_GARDE_DEBUT,
HEURE_DEBUT=@HEURE_DEBUT,
DATE_GARDE_FIN=@DATE_GARDE_FIN,
HEURE_FIN=@HEURE_FIN
WHERE ID_PERSONNEL=@ID_PERSONNEL and ID_SERVICE=@ID_SERVICE
' 
END
GO
/****** Object:  StoredProcedure [dbo].[DELETE_LA_GARDE]    Script Date: 04/20/2008 11:56:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DELETE_LA_GARDE]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[DELETE_LA_GARDE]

@ID_PERSONNEL	nvarchar(10)	,
@ID_SERVICE	nvarchar(10)	,
@DATE_GARDE_DEBUT	datetime	

AS
DELETE LA_GARDE
WHERE ID_SERVICE=@ID_SERVICE and ID_PERSONNEL=@ID_PERSONNEL 
and DATE_GARDE_DEBUT=@DATE_GARDE_DEBUT
' 
END
GO
/****** Object:  StoredProcedure [dbo].[INSERT_INTO_RESULTATS_EXAMEN]    Script Date: 04/20/2008 11:56:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[INSERT_INTO_RESULTATS_EXAMEN]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

CREATE PROCEDURE [dbo].[INSERT_INTO_RESULTATS_EXAMEN]

@CODE_EXAMEN	nvarchar(10)	,
@ID_SERVICES_RENDUS	nvarchar(10)	,
@ID_CONSULTATION	nvarchar(50)	,
@DATE_EXAMEN	datetime	,
@ID_TYPE_ECHANTILLON	int	,
@RESULTATS	nvarchar(50),
@DEJA_EXAMINE	bit	

AS

SET @DEJA_EXAMINE=1

INSERT INTO RESULTATS_EXAMEN
VALUES(@CODE_EXAMEN,@ID_SERVICES_RENDUS,@ID_CONSULTATION,
@DATE_EXAMEN,@ID_TYPE_ECHANTILLON,@RESULTATS,@DEJA_EXAMINE)

' 
END
GO
/****** Object:  StoredProcedure [dbo].[INSERT_INTO_TRAITEMENT_SUIVIE]    Script Date: 04/20/2008 11:56:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[INSERT_INTO_TRAITEMENT_SUIVIE]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[INSERT_INTO_TRAITEMENT_SUIVIE]

@ID_SUIVIE	int	,
@ID_SERVICES_RENDUS	nvarchar(10),
@PAYED BIT,
@RENDU BIT	

AS 
INSERT INTO TRAITEMENT_SUIVIE
VALUES(@ID_SUIVIE	,@ID_SERVICES_RENDUS,@PAYED,@RENDU)
' 
END
GO
/****** Object:  StoredProcedure [dbo].[DELETE_TRAITEMENT_SUIVIE]    Script Date: 04/20/2008 11:56:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DELETE_TRAITEMENT_SUIVIE]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[DELETE_TRAITEMENT_SUIVIE]

@No_TRAITEMENT_SUIVIE	int

AS
DELETE TRAITEMENT_SUIVIE
WHERE No_TRAITEMENT_SUIVIE=@No_TRAITEMENT_SUIVIE' 
END
GO
/****** Object:  StoredProcedure [dbo].[UPDATE_ASSUREUR_TABLE]    Script Date: 04/20/2008 11:56:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UPDATE_ASSUREUR_TABLE]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[UPDATE_ASSUREUR_TABLE]

@ID_ASSUREUR	nvarchar(10)	,
@NOM_ASSUREUR	nvarchar(50)	,
@POURCENTAGE	float

AS 
UPDATE ASSUREUR 
SET NOM_ASSUREUR=@NOM_ASSUREUR,
POURCENTAGE=@POURCENTAGE
WHERE ID_ASSUREUR=@ID_ASSUREUR' 
END
GO
/****** Object:  StoredProcedure [dbo].[DELETE_ASSUREUR_TABLE]    Script Date: 04/20/2008 11:56:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DELETE_ASSUREUR_TABLE]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

CREATE PROCEDURE [dbo].[DELETE_ASSUREUR_TABLE]

@ID_ASSUREUR	nvarchar(10)		

AS 
DELETE ASSUREUR 
WHERE ID_ASSUREUR=@ID_ASSUREUR 

' 
END
GO
/****** Object:  StoredProcedure [dbo].[INSERT_INTO_ASSUREUR_TABLE]    Script Date: 04/20/2008 11:56:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[INSERT_INTO_ASSUREUR_TABLE]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[INSERT_INTO_ASSUREUR_TABLE]

@ID_ASSUREUR	nvarchar(10)	,
@NOM_ASSUREUR	nvarchar(50)	,
@POURCENTAGE	float
AS
INSERT INTO ASSUREUR
VALUES(@ID_ASSUREUR	,@NOM_ASSUREUR,@POURCENTAGE)' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_WebEvent_LogEvent]    Script Date: 04/20/2008 11:56:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_WebEvent_LogEvent]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_WebEvent_LogEvent]
        @EventId         char(32),
        @EventTimeUtc    datetime,
        @EventTime       datetime,
        @EventType       nvarchar(256),
        @EventSequence   decimal(19,0),
        @EventOccurrence decimal(19,0),
        @EventCode       int,
        @EventDetailCode int,
        @Message         nvarchar(1024),
        @ApplicationPath nvarchar(256),
        @ApplicationVirtualPath nvarchar(256),
        @MachineName    nvarchar(256),
        @RequestUrl      nvarchar(1024),
        @ExceptionType   nvarchar(256),
        @Details         ntext
AS
BEGIN
    INSERT
        dbo.aspnet_WebEvent_Events
        (
            EventId,
            EventTimeUtc,
            EventTime,
            EventType,
            EventSequence,
            EventOccurrence,
            EventCode,
            EventDetailCode,
            Message,
            ApplicationPath,
            ApplicationVirtualPath,
            MachineName,
            RequestUrl,
            ExceptionType,
            Details
        )
    VALUES
    (
        @EventId,
        @EventTimeUtc,
        @EventTime,
        @EventType,
        @EventSequence,
        @EventOccurrence,
        @EventCode,
        @EventDetailCode,
        @Message,
        @ApplicationPath,
        @ApplicationVirtualPath,
        @MachineName,
        @RequestUrl,
        @ExceptionType,
        @Details
    )
END' 
END
GO
GRANT EXECUTE ON [dbo].[aspnet_WebEvent_LogEvent] TO [aspnet_WebEvent_FullAccess]
GO
/****** Object:  StoredProcedure [dbo].[INSERT_INTO_SEUIL_D_ALERTE]    Script Date: 04/20/2008 11:56:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[INSERT_INTO_SEUIL_D_ALERTE]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[INSERT_INTO_SEUIL_D_ALERTE]

@ID_SEUIL_D_ALERTE	nvarchar(10)	,
@CODE_PRODUIT	nvarchar(10)	,
@ID_SERVICE	nvarchar(10)	,
@UNITE_DE_MESURE	nvarchar(10)	,
@QTE_SEUIL_D_ALERTE	float	

AS 
INSERT INTO SEUIL_D_ALERTE
VALUES(@ID_SEUIL_D_ALERTE	,@CODE_PRODUIT	,@ID_SERVICE	,
@UNITE_DE_MESURE	,@QTE_SEUIL_D_ALERTE)' 
END
GO
/****** Object:  StoredProcedure [dbo].[UPDATE_SEUIL_D_ALERTE]    Script Date: 04/20/2008 11:56:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UPDATE_SEUIL_D_ALERTE]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[UPDATE_SEUIL_D_ALERTE]

@ID_SEUIL_D_ALERTE	nvarchar(10)	,
@CODE_PRODUIT	nvarchar(10)	,
@ID_SERVICE	nvarchar(10)	,
@UNITE_DE_MESURE	nvarchar(10)	,
@QTE_SEUIL_D_ALERTE	float	

AS
UPDATE SEUIL_D_ALERTE
SET ID_SERVICE=@ID_SERVICE,
UNITE_DE_MESURE=@UNITE_DE_MESURE,
QTE_SEUIL_D_ALERTE=@QTE_SEUIL_D_ALERTE
WHERE ID_SEUIL_D_ALERTE=@ID_SEUIL_D_ALERTE AND CODE_PRODUIT=@CODE_PRODUIT' 
END
GO
/****** Object:  StoredProcedure [dbo].[DELETE_SEUIL_D_ALERTE]    Script Date: 04/20/2008 11:56:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DELETE_SEUIL_D_ALERTE]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[DELETE_SEUIL_D_ALERTE]

@ID_SEUIL_D_ALERTE	nvarchar(10)

AS 
DELETE SEUIL_D_ALERTE
WHERE ID_SEUIL_D_ALERTE=@ID_SEUIL_D_ALERTE' 
END
GO
/****** Object:  StoredProcedure [dbo].[INSERT_INTO_PERSONNEL_DE_GARDE]    Script Date: 04/20/2008 11:56:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[INSERT_INTO_PERSONNEL_DE_GARDE]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[INSERT_INTO_PERSONNEL_DE_GARDE]

@ID_PERSONNEL	nvarchar(10)	,
@NOM	kamonyo_name,
@PRENOM	kamonyo_name,
@AUTRE_NOM	kamonyo_name,
@SEXE	char(1)	,
@ID_CATEG_PERSONNEL	int,
@TELEPHONE	nvarchar(20)	

AS 
INSERT INTO PERSONNEL_DE_GARDE
VALUES(@ID_PERSONNEL	,@NOM,@PRENOM	,@AUTRE_NOM,@SEXE	,@ID_CATEG_PERSONNEL,@TELEPHONE)
' 
END
GO
/****** Object:  StoredProcedure [dbo].[UPDATE_PERSONNEL_DE_GARDE]    Script Date: 04/20/2008 11:56:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UPDATE_PERSONNEL_DE_GARDE]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[UPDATE_PERSONNEL_DE_GARDE]

@ID_PERSONNEL	nvarchar(10)	,
@NOM	kamonyo_name,
@PRENOM	kamonyo_name,
@AUTRE_NOM	kamonyo_name,
@SEXE	char(1)	,
@ID_CATEG_PERSONNEL	int,
@TELEPHONE	nvarchar(20)	

AS
UPDATE PERSONNEL_DE_GARDE
SET NOM=@NOM,
PRENOM=@PRENOM,
AUTRE_NOM=@AUTRE_NOM,
ID_CATEG_PERSONNEL=@ID_CATEG_PERSONNEL,
TELEPHONE=@TELEPHONE
WHERE ID_PERSONNEL=@ID_PERSONNEL
' 
END
GO
/****** Object:  StoredProcedure [dbo].[INSERT_INTO_PATIENT_TABLE]    Script Date: 04/20/2008 11:56:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[INSERT_INTO_PATIENT_TABLE]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'


CREATE PROCEDURE [dbo].[INSERT_INTO_PATIENT_TABLE]

@ID_PATIENT	nvarchar(20)	,
@NOM	nvarchar(50)	,
@PRENOM	nvarchar(50)	,
@AUTRE_NOM	nvarchar(50)	,
@ID_ASSUREUR	nvarchar(10)	,
@PROFESSION	nvarchar(20)	,
@SEXE	char(1)	,
@DATE_NAISSANCE	datetime	,
@No_CARTE_IDENTITE	nvarchar(10)	,
@RELIGION	nvarchar(10)	,
@MARITAL_STATUS	nvarchar(20)	,
@CONJOINT	nvarchar(50)	,
@TELEPHONE	nvarchar(20)	,
@CONTACT_D_URGENCE	nvarchar(100),
@DATE_D_ENREGISTREMENT	datetime	,
@No_CARTE_ASSUREUR	nvarchar(20)	,
@ID_CATEGORY_PATIENT	int	,
@NATIONALITY	nvarchar(20)	,
@PROVINCE	nvarchar(20)	,
@DISTRICT	nvarchar(20)	
AS
BEGIN
INSERT INTO PATIENT
VALUES(@ID_PATIENT,@NOM,@PRENOM,@AUTRE_NOM,@ID_ASSUREUR,@PROFESSION,@SEXE,
@DATE_NAISSANCE,@No_CARTE_IDENTITE,@RELIGION,@MARITAL_STATUS,@CONJOINT,@TELEPHONE,
@CONTACT_D_URGENCE,@DATE_D_ENREGISTREMENT,@No_CARTE_ASSUREUR,@ID_CATEGORY_PATIENT,
@NATIONALITY,@PROVINCE,@DISTRICT)
END


' 
END
GO
/****** Object:  View [dbo].[CONSULTATIONS]    Script Date: 04/20/2008 11:56:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[CONSULTATIONS]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW [dbo].[CONSULTATIONS]
AS
SELECT     dbo.CONSULTATION.ID_CONSULTATION, dbo.CONSULTATION.ID_SERVICE, dbo.PATIENT.NOM, dbo.PATIENT.PRENOM, 
                      dbo.CONSULTATION.DATE_CONSULTATION, dbo.CONSULTATION.HEURE_CONSULTATION
FROM         dbo.CONSULTATION INNER JOIN
                      dbo.PATIENT ON dbo.CONSULTATION.ID_PATIENT = dbo.PATIENT.ID_PATIENT
' 
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1[50] 2[25] 3) )"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2[66] 3) )"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 5
   End
   Begin DiagramPane = 
      PaneHidden = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "CONSULTATION"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 200
               Right = 296
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "PATIENT"
            Begin Extent = 
               Top = 6
               Left = 334
               Bottom = 125
               Right = 551
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      PaneHidden = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'VIEW', @level1name=N'CONSULTATIONS'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'VIEW', @level1name=N'CONSULTATIONS'

GO
/****** Object:  View [dbo].[LES_PRIX_des_EXAMENS_a_FAIRE_PATIENT_ASSUREUR]    Script Date: 04/20/2008 11:56:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[LES_PRIX_des_EXAMENS_a_FAIRE_PATIENT_ASSUREUR]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW [dbo].[LES_PRIX_des_EXAMENS_a_FAIRE_PATIENT_ASSUREUR]
AS
SELECT     dbo.CONSULTATION.ID_CONSULTATION, dbo.EXAMENS_A_FAIRE.EXAM_DESCRIPTION, dbo.TARIF_DEL_ASSUREUR.MAXIMA_A_PAYER, 
                      dbo.ASSUREUR.POURCENTAGE, dbo.ASSUREUR.ID_ASSUREUR, 
                      dbo.TARIF_DEL_ASSUREUR.MAXIMA_A_PAYER * dbo.ASSUREUR.POURCENTAGE AS PRIX_du_PATIENT, 
                      dbo.TARIF_DEL_ASSUREUR.MAXIMA_A_PAYER - dbo.TARIF_DEL_ASSUREUR.MAXIMA_A_PAYER * dbo.ASSUREUR.POURCENTAGE AS PRIX_del_ASSUREUR,
                       dbo.EXAMENS_A_FAIRE.EXAM_DESCRIPTION + '' = '' + CAST(dbo.TARIF_DEL_ASSUREUR.MAXIMA_A_PAYER AS NVARCHAR(20)) 
                      + '' FRW'' AS TARIF_DES_EXAMENS, dbo.EXAMENS_A_FAIRE.PAYES
FROM         dbo.ASSUREUR INNER JOIN
                      dbo.PATIENT ON dbo.ASSUREUR.ID_ASSUREUR = dbo.PATIENT.ID_ASSUREUR INNER JOIN
                      dbo.CONSULTATION ON dbo.PATIENT.ID_PATIENT = dbo.CONSULTATION.ID_PATIENT INNER JOIN
                      dbo.RESULTATS_EXAMEN ON dbo.CONSULTATION.ID_CONSULTATION = dbo.RESULTATS_EXAMEN.ID_CONSULTATION INNER JOIN
                      dbo.EXAMENS_A_FAIRE ON dbo.RESULTATS_EXAMEN.CODE_EXAMEN = dbo.EXAMENS_A_FAIRE.CODE_EXAMEN AND 
                      dbo.RESULTATS_EXAMEN.ID_SERVICES_RENDUS = dbo.EXAMENS_A_FAIRE.ID_SERVICES_RENDUS INNER JOIN
                      dbo.SERVICES_RENDUS ON dbo.RESULTATS_EXAMEN.ID_SERVICES_RENDUS = dbo.SERVICES_RENDUS.ID_SERVICES_RENDUS AND 
                      dbo.EXAMENS_A_FAIRE.ID_SERVICES_RENDUS = dbo.SERVICES_RENDUS.ID_SERVICES_RENDUS INNER JOIN
                      dbo.TARIF_DEL_ASSUREUR ON dbo.ASSUREUR.ID_ASSUREUR = dbo.TARIF_DEL_ASSUREUR.ID_ASSUREUR AND 
                      dbo.SERVICES_RENDUS.ID_SERVICES_RENDUS = dbo.TARIF_DEL_ASSUREUR.ID_SERVICES_RENDUS
WHERE     (dbo.EXAMENS_A_FAIRE.PAYES = 0)
' 
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1[50] 4[25] 3) )"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1[50] 2[25] 3) )"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4[30] 2[40] 3) )"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1[73] 3) )"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2[66] 3) )"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1[75] 4) )"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4[60] 2) )"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4) )"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 1
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "ASSUREUR"
            Begin Extent = 
               Top = 161
               Left = 208
               Bottom = 265
               Right = 347
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "PATIENT"
            Begin Extent = 
               Top = 6
               Left = 12
               Bottom = 125
               Right = 184
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "CONSULTATION"
            Begin Extent = 
               Top = 4
               Left = 304
               Bottom = 123
               Right = 470
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "RESULTATS_EXAMEN"
            Begin Extent = 
               Top = 6
               Left = 555
               Bottom = 174
               Right = 754
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "EXAMENS_A_FAIRE"
            Begin Extent = 
               Top = 5
               Left = 788
               Bottom = 175
               Right = 972
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "SERVICES_RENDUS"
            Begin Extent = 
               Top = 222
               Left = 669
               Bottom = 326
               Right = 873
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "TARIF_DEL_ASSUREUR"
            Begin Extent = 
               Top = 177
               Left = 435
               Bottom = 300
               Right = 598
          ' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'VIEW', @level1name=N'LES_PRIX_des_EXAMENS_a_FAIRE_PATIENT_ASSUREUR'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'  End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
      PaneHidden = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 2490
         Width = 795
         Width = 135
         Width = 1290
         Width = 1020
         Width = 630
         Width = 3735
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 2190
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'VIEW', @level1name=N'LES_PRIX_des_EXAMENS_a_FAIRE_PATIENT_ASSUREUR'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'VIEW', @level1name=N'LES_PRIX_des_EXAMENS_a_FAIRE_PATIENT_ASSUREUR'

GO
/****** Object:  StoredProcedure [dbo].[DELETE_PATIENT_TABLE]    Script Date: 04/20/2008 11:56:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DELETE_PATIENT_TABLE]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[DELETE_PATIENT_TABLE]

@ID_PATIENT	nvarchar(20)	,
@NOM	nvarchar(50)		

AS
DELETE PATIENT
WHERE ID_PATIENT=@ID_PATIENT AND NOM=@NOM  
' 
END
GO
/****** Object:  View [dbo].[NOMS_PRENOMS_et_AGE_du_PATIENT_en_CONSULTATION]    Script Date: 04/20/2008 11:56:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[NOMS_PRENOMS_et_AGE_du_PATIENT_en_CONSULTATION]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW [dbo].[NOMS_PRENOMS_et_AGE_du_PATIENT_en_CONSULTATION]
AS
SELECT     dbo.CONSULTATION.ID_CONSULTATION, dbo.PATIENT.NOM, dbo.PATIENT.PRENOM, dbo.PATIENT.DATE_NAISSANCE, DATEDIFF(MONTH, 
                      dbo.PATIENT.DATE_NAISSANCE, GETDATE()) AS MOIS, DATEDIFF(MONTH, dbo.PATIENT.DATE_NAISSANCE, GETDATE()) / 12 AS AGE, 
                      dbo.PATIENT.NOM + ''  '' + dbo.PATIENT.PRENOM AS NOM_PRENOM, dbo.CONSULTATION.ID_PATIENT
FROM         dbo.CONSULTATION INNER JOIN
                      dbo.PATIENT ON dbo.CONSULTATION.ID_PATIENT = dbo.PATIENT.ID_PATIENT
' 
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[30] 4[32] 2[5] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1[50] 4[25] 3) )"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4[31] 2[28] 3) )"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4[26] 3) )"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "CONSULTATION"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 167
               Right = 238
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "PATIENT"
            Begin Extent = 
               Top = 2
               Left = 342
               Bottom = 164
               Right = 559
            End
            DisplayFlags = 280
            TopColumn = 3
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1920
         Width = 960
         Width = 1320
         Width = 2565
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'VIEW', @level1name=N'NOMS_PRENOMS_et_AGE_du_PATIENT_en_CONSULTATION'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'VIEW', @level1name=N'NOMS_PRENOMS_et_AGE_du_PATIENT_en_CONSULTATION'

GO
/****** Object:  UserDefinedFunction [dbo].[Select_IDPATIENT_Max]    Script Date: 04/20/2008 11:56:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Select_IDPATIENT_Max]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'CREATE function [dbo].[Select_IDPATIENT_Max](@NUMERO nvarchar(50))
returns nvarchar(20)
as
BEGIN
	DECLARE @PATIENT_no nvarchar(20),@var nvarchar(20),@num_to_conv nvarchar(15),@num nvarchar(8)
	set @num=''0''
	DECLARE select_max_PATIENT_no CURSOR FOR 
		SELECT ID_PATIENT FROM PATIENT
	
	OPEN select_max_PATIENT_no

	FETCH NEXT FROM select_max_PATIENT_no INTO @PATIENT_no
	WHILE @@FETCH_STATUS = 0
	BEGIN
	
		set @var=substring(@PATIENT_no,1,10)
		if @var=@NUMERO
			BEGIN
				set @num_to_conv=substring(@PATIENT_no,12,4)
				if @num_to_conv>@num
					set @num=@num_to_conv
			END
		FETCH NEXT FROM select_max_PATIENT_no INTO @PATIENT_no
	END
	CLOSE select_max_PATIENT_no
	DEALLOCATE select_max_PATIENT_no
	return @num
END

' 
END

GO
/****** Object:  StoredProcedure [dbo].[UPDATE_PATIENT_TABLE]    Script Date: 04/20/2008 11:56:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UPDATE_PATIENT_TABLE]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

CREATE PROCEDURE [dbo].[UPDATE_PATIENT_TABLE]

@ID_PATIENT	nvarchar(20)	,
@NOM	nvarchar(50)	,
@PRENOM	nvarchar(50)	,
@AUTRE_NOM	nvarchar(50)	,
@ID_ASSUREUR	nvarchar(10)	,
@PROFESSION	nvarchar(20)	,
@SEXE	char(1)	,
@DATE_NAISSANCE	datetime	,
@No_CARTE_IDENTITE	nvarchar(10)	,
@RELIGION	nvarchar(10)	,
@MARITAL_STATUS	nvarchar(10)	,
@CONJOINT	nvarchar(50)	,
@TELEPHONE	nvarchar(20),
@CONTACT_D_URGENCE	nvarchar(100),
@DATE_D_ENREGISTREMENT	datetime	,
@No_CARTE_ASSUREUR	nvarchar(20)	,
@ID_CATEGORY_PATIENT	int	,
@NATIONALITY	nvarchar(20)	,
@PROVINCE	nvarchar(20)	,
@DISTRICT	nvarchar(20)	

AS
UPDATE PATIENT
SET NOM=@NOM,
PRENOM=@PRENOM,
AUTRE_NOM=@AUTRE_NOM,
ID_ASSUREUR=@ID_ASSUREUR,
PROFESSION=@PROFESSION,
No_CARTE_IDENTITE=@No_CARTE_IDENTITE,
RELIGION=@RELIGION,
MARITAL_STATUS=@MARITAL_STATUS,
CONJOINT=@CONJOINT,
TELEPHONE=@TELEPHONE,
CONTACT_D_URGENCE=@CONTACT_D_URGENCE,
DATE_D_ENREGISTREMENT=@DATE_D_ENREGISTREMENT,
No_CARTE_ASSUREUR=@No_CARTE_ASSUREUR,
ID_CATEGORY_PATIENT=@ID_CATEGORY_PATIENT,
NATIONALITY=@NATIONALITY,
PROVINCE=@PROVINCE,
DISTRICT=@DISTRICT
WHERE ID_PATIENT=@ID_PATIENT


' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_CreateUser]    Script Date: 04/20/2008 11:56:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_CreateUser]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_Membership_CreateUser]
    @ApplicationName                        nvarchar(256),
    @UserName                               nvarchar(256),
    @Password                               nvarchar(128),
    @PasswordSalt                           nvarchar(128),
    @Email                                  nvarchar(256),
    @PasswordQuestion                       nvarchar(256),
    @PasswordAnswer                         nvarchar(128),
    @IsApproved                             bit,
    @CurrentTimeUtc                         datetime,
    @CreateDate                             datetime = NULL,
    @UniqueEmail                            int      = 0,
    @PasswordFormat                         int      = 0,
    @UserId                                 uniqueidentifier OUTPUT
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL

    DECLARE @NewUserId uniqueidentifier
    SELECT @NewUserId = NULL

    DECLARE @IsLockedOut bit
    SET @IsLockedOut = 0

    DECLARE @LastLockoutDate  datetime
    SET @LastLockoutDate = CONVERT( datetime, ''17540101'', 112 )

    DECLARE @FailedPasswordAttemptCount int
    SET @FailedPasswordAttemptCount = 0

    DECLARE @FailedPasswordAttemptWindowStart  datetime
    SET @FailedPasswordAttemptWindowStart = CONVERT( datetime, ''17540101'', 112 )

    DECLARE @FailedPasswordAnswerAttemptCount int
    SET @FailedPasswordAnswerAttemptCount = 0

    DECLARE @FailedPasswordAnswerAttemptWindowStart  datetime
    SET @FailedPasswordAnswerAttemptWindowStart = CONVERT( datetime, ''17540101'', 112 )

    DECLARE @NewUserCreated bit
    DECLARE @ReturnValue   int
    SET @ReturnValue = 0

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    EXEC dbo.aspnet_Applications_CreateApplication @ApplicationName, @ApplicationId OUTPUT

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    SET @CreateDate = @CurrentTimeUtc

    SELECT  @NewUserId = UserId FROM dbo.aspnet_Users WHERE LOWER(@UserName) = LoweredUserName AND @ApplicationId = ApplicationId
    IF ( @NewUserId IS NULL )
    BEGIN
        SET @NewUserId = @UserId
        EXEC @ReturnValue = dbo.aspnet_Users_CreateUser @ApplicationId, @UserName, 0, @CreateDate, @NewUserId OUTPUT
        SET @NewUserCreated = 1
    END
    ELSE
    BEGIN
        SET @NewUserCreated = 0
        IF( @NewUserId <> @UserId AND @UserId IS NOT NULL )
        BEGIN
            SET @ErrorCode = 6
            GOTO Cleanup
        END
    END

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @ReturnValue = -1 )
    BEGIN
        SET @ErrorCode = 10
        GOTO Cleanup
    END

    IF ( EXISTS ( SELECT UserId
                  FROM   dbo.aspnet_Membership
                  WHERE  @NewUserId = UserId ) )
    BEGIN
        SET @ErrorCode = 6
        GOTO Cleanup
    END

    SET @UserId = @NewUserId

    IF (@UniqueEmail = 1)
    BEGIN
        IF (EXISTS (SELECT *
                    FROM  dbo.aspnet_Membership m WITH ( UPDLOCK, HOLDLOCK )
                    WHERE ApplicationId = @ApplicationId AND LoweredEmail = LOWER(@Email)))
        BEGIN
            SET @ErrorCode = 7
            GOTO Cleanup
        END
    END

    IF (@NewUserCreated = 0)
    BEGIN
        UPDATE dbo.aspnet_Users
        SET    LastActivityDate = @CreateDate
        WHERE  @UserId = UserId
        IF( @@ERROR <> 0 )
        BEGIN
            SET @ErrorCode = -1
            GOTO Cleanup
        END
    END

    INSERT INTO dbo.aspnet_Membership
                ( ApplicationId,
                  UserId,
                  Password,
                  PasswordSalt,
                  Email,
                  LoweredEmail,
                  PasswordQuestion,
                  PasswordAnswer,
                  PasswordFormat,
                  IsApproved,
                  IsLockedOut,
                  CreateDate,
                  LastLoginDate,
                  LastPasswordChangedDate,
                  LastLockoutDate,
                  FailedPasswordAttemptCount,
                  FailedPasswordAttemptWindowStart,
                  FailedPasswordAnswerAttemptCount,
                  FailedPasswordAnswerAttemptWindowStart )
         VALUES ( @ApplicationId,
                  @UserId,
                  @Password,
                  @PasswordSalt,
                  @Email,
                  LOWER(@Email),
                  @PasswordQuestion,
                  @PasswordAnswer,
                  @PasswordFormat,
                  @IsApproved,
                  @IsLockedOut,
                  @CreateDate,
                  @CreateDate,
                  @CreateDate,
                  @LastLockoutDate,
                  @FailedPasswordAttemptCount,
                  @FailedPasswordAttemptWindowStart,
                  @FailedPasswordAnswerAttemptCount,
                  @FailedPasswordAnswerAttemptWindowStart )

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @TranStarted = 1 )
    BEGIN
	    SET @TranStarted = 0
	    COMMIT TRANSACTION
    END

    RETURN 0

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END' 
END
GO
GRANT EXECUTE ON [dbo].[aspnet_Membership_CreateUser] TO [aspnet_Membership_FullAccess]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_SetProperties]    Script Date: 04/20/2008 11:56:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Profile_SetProperties]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[aspnet_Profile_SetProperties]
    @ApplicationName        nvarchar(256),
    @PropertyNames          ntext,
    @PropertyValuesString   ntext,
    @PropertyValuesBinary   image,
    @UserName               nvarchar(256),
    @IsUserAnonymous        bit,
    @CurrentTimeUtc         datetime
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
       BEGIN TRANSACTION
       SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    EXEC dbo.aspnet_Applications_CreateApplication @ApplicationName, @ApplicationId OUTPUT

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    DECLARE @UserId uniqueidentifier
    DECLARE @LastActivityDate datetime
    SELECT  @UserId = NULL
    SELECT  @LastActivityDate = @CurrentTimeUtc

    SELECT @UserId = UserId
    FROM   dbo.aspnet_Users
    WHERE  ApplicationId = @ApplicationId AND LoweredUserName = LOWER(@UserName)
    IF (@UserId IS NULL)
        EXEC dbo.aspnet_Users_CreateUser @ApplicationId, @UserName, @IsUserAnonymous, @LastActivityDate, @UserId OUTPUT

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    UPDATE dbo.aspnet_Users
    SET    LastActivityDate=@CurrentTimeUtc
    WHERE  UserId = @UserId

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF (EXISTS( SELECT *
               FROM   dbo.aspnet_Profile
               WHERE  UserId = @UserId))
        UPDATE dbo.aspnet_Profile
        SET    PropertyNames=@PropertyNames, PropertyValuesString = @PropertyValuesString,
               PropertyValuesBinary = @PropertyValuesBinary, LastUpdatedDate=@CurrentTimeUtc
        WHERE  UserId = @UserId
    ELSE
        INSERT INTO dbo.aspnet_Profile(UserId, PropertyNames, PropertyValuesString, PropertyValuesBinary, LastUpdatedDate)
             VALUES (@UserId, @PropertyNames, @PropertyValuesString, @PropertyValuesBinary, @CurrentTimeUtc)

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @TranStarted = 1 )
    BEGIN
    	SET @TranStarted = 0
    	COMMIT TRANSACTION
    END

    RETURN 0

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END' 
END
GO
GRANT EXECUTE ON [dbo].[aspnet_Profile_SetProperties] TO [aspnet_Profile_BasicAccess]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_GetCountOfState]    Script Date: 04/20/2008 11:56:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationAdministration_GetCountOfState]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_PersonalizationAdministration_GetCountOfState] (
    @Count int OUT,
    @AllUsersScope bit,
    @ApplicationName NVARCHAR(256),
    @Path NVARCHAR(256) = NULL,
    @UserName NVARCHAR(256) = NULL,
    @InactiveSinceDate DATETIME = NULL)
AS
BEGIN

    DECLARE @ApplicationId UNIQUEIDENTIFIER
    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
        SELECT @Count = 0
    ELSE
        IF (@AllUsersScope = 1)
            SELECT @Count = COUNT(*)
            FROM dbo.aspnet_PersonalizationAllUsers AllUsers, dbo.aspnet_Paths Paths
            WHERE Paths.ApplicationId = @ApplicationId
                  AND AllUsers.PathId = Paths.PathId
                  AND (@Path IS NULL OR Paths.LoweredPath LIKE LOWER(@Path))
        ELSE
            SELECT @Count = COUNT(*)
            FROM dbo.aspnet_PersonalizationPerUser PerUser, dbo.aspnet_Users Users, dbo.aspnet_Paths Paths
            WHERE Paths.ApplicationId = @ApplicationId
                  AND PerUser.UserId = Users.UserId
                  AND PerUser.PathId = Paths.PathId
                  AND (@Path IS NULL OR Paths.LoweredPath LIKE LOWER(@Path))
                  AND (@UserName IS NULL OR Users.LoweredUserName LIKE LOWER(@UserName))
                  AND (@InactiveSinceDate IS NULL OR Users.LastActivityDate <= @InactiveSinceDate)
END' 
END
GO
GRANT EXECUTE ON [dbo].[aspnet_PersonalizationAdministration_GetCountOfState] TO [aspnet_Personalization_ReportingAccess]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_ResetUserState]    Script Date: 04/20/2008 11:56:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationAdministration_ResetUserState]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_PersonalizationAdministration_ResetUserState] (
    @Count                  int                 OUT,
    @ApplicationName        NVARCHAR(256),
    @InactiveSinceDate      DATETIME            = NULL,
    @UserName               NVARCHAR(256)       = NULL,
    @Path                   NVARCHAR(256)       = NULL)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
        SELECT @Count = 0
    ELSE
    BEGIN
        DELETE FROM dbo.aspnet_PersonalizationPerUser
        WHERE Id IN (SELECT PerUser.Id
                     FROM dbo.aspnet_PersonalizationPerUser PerUser, dbo.aspnet_Users Users, dbo.aspnet_Paths Paths
                     WHERE Paths.ApplicationId = @ApplicationId
                           AND PerUser.UserId = Users.UserId
                           AND PerUser.PathId = Paths.PathId
                           AND (@InactiveSinceDate IS NULL OR Users.LastActivityDate <= @InactiveSinceDate)
                           AND (@UserName IS NULL OR Users.LoweredUserName = LOWER(@UserName))
                           AND (@Path IS NULL OR Paths.LoweredPath = LOWER(@Path)))

        SELECT @Count = @@ROWCOUNT
    END
END' 
END
GO
GRANT EXECUTE ON [dbo].[aspnet_PersonalizationAdministration_ResetUserState] TO [aspnet_Personalization_FullAccess]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationPerUser_GetPageSettings]    Script Date: 04/20/2008 11:56:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationPerUser_GetPageSettings]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_PersonalizationPerUser_GetPageSettings] (
    @ApplicationName  NVARCHAR(256),
    @UserName         NVARCHAR(256),
    @Path             NVARCHAR(256),
    @CurrentTimeUtc   DATETIME)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    DECLARE @PathId UNIQUEIDENTIFIER
    DECLARE @UserId UNIQUEIDENTIFIER

    SELECT @ApplicationId = NULL
    SELECT @PathId = NULL
    SELECT @UserId = NULL

    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
    BEGIN
        RETURN
    END

    SELECT @PathId = u.PathId FROM dbo.aspnet_Paths u WHERE u.ApplicationId = @ApplicationId AND u.LoweredPath = LOWER(@Path)
    IF (@PathId IS NULL)
    BEGIN
        RETURN
    END

    SELECT @UserId = u.UserId FROM dbo.aspnet_Users u WHERE u.ApplicationId = @ApplicationId AND u.LoweredUserName = LOWER(@UserName)
    IF (@UserId IS NULL)
    BEGIN
        RETURN
    END

    UPDATE   dbo.aspnet_Users WITH (ROWLOCK)
    SET      LastActivityDate = @CurrentTimeUtc
    WHERE    UserId = @UserId
    IF (@@ROWCOUNT = 0) -- Username not found
        RETURN

    SELECT p.PageSettings FROM dbo.aspnet_PersonalizationPerUser p WHERE p.PathId = @PathId AND p.UserId = @UserId
END' 
END
GO
GRANT EXECUTE ON [dbo].[aspnet_PersonalizationPerUser_GetPageSettings] TO [aspnet_Personalization_BasicAccess]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationPerUser_SetPageSettings]    Script Date: 04/20/2008 11:56:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationPerUser_SetPageSettings]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_PersonalizationPerUser_SetPageSettings] (
    @ApplicationName  NVARCHAR(256),
    @UserName         NVARCHAR(256),
    @Path             NVARCHAR(256),
    @PageSettings     IMAGE,
    @CurrentTimeUtc   DATETIME)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    DECLARE @PathId UNIQUEIDENTIFIER
    DECLARE @UserId UNIQUEIDENTIFIER

    SELECT @ApplicationId = NULL
    SELECT @PathId = NULL
    SELECT @UserId = NULL

    EXEC dbo.aspnet_Applications_CreateApplication @ApplicationName, @ApplicationId OUTPUT

    SELECT @PathId = u.PathId FROM dbo.aspnet_Paths u WHERE u.ApplicationId = @ApplicationId AND u.LoweredPath = LOWER(@Path)
    IF (@PathId IS NULL)
    BEGIN
        EXEC dbo.aspnet_Paths_CreatePath @ApplicationId, @Path, @PathId OUTPUT
    END

    SELECT @UserId = u.UserId FROM dbo.aspnet_Users u WHERE u.ApplicationId = @ApplicationId AND u.LoweredUserName = LOWER(@UserName)
    IF (@UserId IS NULL)
    BEGIN
        EXEC dbo.aspnet_Users_CreateUser @ApplicationId, @UserName, 0, @CurrentTimeUtc, @UserId OUTPUT
    END

    UPDATE   dbo.aspnet_Users WITH (ROWLOCK)
    SET      LastActivityDate = @CurrentTimeUtc
    WHERE    UserId = @UserId
    IF (@@ROWCOUNT = 0) -- Username not found
        RETURN

    IF (EXISTS(SELECT PathId FROM dbo.aspnet_PersonalizationPerUser WHERE UserId = @UserId AND PathId = @PathId))
        UPDATE dbo.aspnet_PersonalizationPerUser SET PageSettings = @PageSettings, LastUpdatedDate = @CurrentTimeUtc WHERE UserId = @UserId AND PathId = @PathId
    ELSE
        INSERT INTO dbo.aspnet_PersonalizationPerUser(UserId, PathId, PageSettings, LastUpdatedDate) VALUES (@UserId, @PathId, @PageSettings, @CurrentTimeUtc)
    RETURN 0
END' 
END
GO
GRANT EXECUTE ON [dbo].[aspnet_PersonalizationPerUser_SetPageSettings] TO [aspnet_Personalization_BasicAccess]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationPerUser_ResetPageSettings]    Script Date: 04/20/2008 11:56:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationPerUser_ResetPageSettings]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_PersonalizationPerUser_ResetPageSettings] (
    @ApplicationName  NVARCHAR(256),
    @UserName         NVARCHAR(256),
    @Path             NVARCHAR(256),
    @CurrentTimeUtc   DATETIME)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    DECLARE @PathId UNIQUEIDENTIFIER
    DECLARE @UserId UNIQUEIDENTIFIER

    SELECT @ApplicationId = NULL
    SELECT @PathId = NULL
    SELECT @UserId = NULL

    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
    BEGIN
        RETURN
    END

    SELECT @PathId = u.PathId FROM dbo.aspnet_Paths u WHERE u.ApplicationId = @ApplicationId AND u.LoweredPath = LOWER(@Path)
    IF (@PathId IS NULL)
    BEGIN
        RETURN
    END

    SELECT @UserId = u.UserId FROM dbo.aspnet_Users u WHERE u.ApplicationId = @ApplicationId AND u.LoweredUserName = LOWER(@UserName)
    IF (@UserId IS NULL)
    BEGIN
        RETURN
    END

    UPDATE   dbo.aspnet_Users WITH (ROWLOCK)
    SET      LastActivityDate = @CurrentTimeUtc
    WHERE    UserId = @UserId
    IF (@@ROWCOUNT = 0) -- Username not found
        RETURN

    DELETE FROM dbo.aspnet_PersonalizationPerUser WHERE PathId = @PathId AND UserId = @UserId
    RETURN 0
END' 
END
GO
GRANT EXECUTE ON [dbo].[aspnet_PersonalizationPerUser_ResetPageSettings] TO [aspnet_Personalization_BasicAccess]
GO
/****** Object:  UserDefinedFunction [dbo].[PRICE_PER_ASSUREUR_EXAMEN_A_FAIRE]    Script Date: 04/20/2008 11:56:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PRICE_PER_ASSUREUR_EXAMEN_A_FAIRE]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'

CREATE FUNCTION [dbo].[PRICE_PER_ASSUREUR_EXAMEN_A_FAIRE] (@ID_CONSULT NVARCHAR(50))
RETURNS money
AS
BEGIN
	DECLARE @PRIX_TOTAL MONEY;
	
	SET @PRIX_TOTAL=(SELECT SUM([Prix de l''Assureur'']) FROM Prix_de_Chaque_Examen_A_Faire WHERE [No CONSULTATION]=@ID_CONSULT );
	
RETURN @PRIX_TOTAL;

END


' 
END

GO
/****** Object:  UserDefinedFunction [dbo].[TOTAL_PRICE_PER_EXAMEN_A_FAIRE]    Script Date: 04/20/2008 11:56:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TOTAL_PRICE_PER_EXAMEN_A_FAIRE]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'

CREATE FUNCTION [dbo].[TOTAL_PRICE_PER_EXAMEN_A_FAIRE] (@ID_CONSULT NVARCHAR(50))
RETURNS money
AS
BEGIN
	DECLARE @PRIX_TOTAL MONEY;
	
	SET @PRIX_TOTAL=(SELECT SUM([Prix Personnel]) FROM Prix_de_Chaque_Examen_A_Faire WHERE [No CONSULTATION]=@ID_CONSULT );
	
RETURN @PRIX_TOTAL;

END


' 
END

GO
/****** Object:  StoredProcedure [dbo].[aspnet_Roles_CreateRole]    Script Date: 04/20/2008 11:56:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Roles_CreateRole]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_Roles_CreateRole]
    @ApplicationName  nvarchar(256),
    @RoleName         nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
        BEGIN TRANSACTION
        SET @TranStarted = 1
    END
    ELSE
        SET @TranStarted = 0

    EXEC dbo.aspnet_Applications_CreateApplication @ApplicationName, @ApplicationId OUTPUT

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF (EXISTS(SELECT RoleId FROM dbo.aspnet_Roles WHERE LoweredRoleName = LOWER(@RoleName) AND ApplicationId = @ApplicationId))
    BEGIN
        SET @ErrorCode = 1
        GOTO Cleanup
    END

    INSERT INTO dbo.aspnet_Roles
                (ApplicationId, RoleName, LoweredRoleName)
         VALUES (@ApplicationId, @RoleName, LOWER(@RoleName))

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
        COMMIT TRANSACTION
    END

    RETURN(0)

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
        ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END' 
END
GO
GRANT EXECUTE ON [dbo].[aspnet_Roles_CreateRole] TO [aspnet_Roles_FullAccess]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAllUsers_SetPageSettings]    Script Date: 04/20/2008 11:56:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationAllUsers_SetPageSettings]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_PersonalizationAllUsers_SetPageSettings] (
    @ApplicationName  NVARCHAR(256),
    @Path             NVARCHAR(256),
    @PageSettings     IMAGE,
    @CurrentTimeUtc   DATETIME)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    DECLARE @PathId UNIQUEIDENTIFIER

    SELECT @ApplicationId = NULL
    SELECT @PathId = NULL

    EXEC dbo.aspnet_Applications_CreateApplication @ApplicationName, @ApplicationId OUTPUT

    SELECT @PathId = u.PathId FROM dbo.aspnet_Paths u WHERE u.ApplicationId = @ApplicationId AND u.LoweredPath = LOWER(@Path)
    IF (@PathId IS NULL)
    BEGIN
        EXEC dbo.aspnet_Paths_CreatePath @ApplicationId, @Path, @PathId OUTPUT
    END

    IF (EXISTS(SELECT PathId FROM dbo.aspnet_PersonalizationAllUsers WHERE PathId = @PathId))
        UPDATE dbo.aspnet_PersonalizationAllUsers SET PageSettings = @PageSettings, LastUpdatedDate = @CurrentTimeUtc WHERE PathId = @PathId
    ELSE
        INSERT INTO dbo.aspnet_PersonalizationAllUsers(PathId, PageSettings, LastUpdatedDate) VALUES (@PathId, @PageSettings, @CurrentTimeUtc)
    RETURN 0
END' 
END
GO
GRANT EXECUTE ON [dbo].[aspnet_PersonalizationAllUsers_SetPageSettings] TO [aspnet_Personalization_BasicAccess]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_DeleteProfiles]    Script Date: 04/20/2008 11:56:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Profile_DeleteProfiles]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[aspnet_Profile_DeleteProfiles]
    @ApplicationName        nvarchar(256),
    @UserNames              nvarchar(4000)
AS
BEGIN
    DECLARE @UserName     nvarchar(256)
    DECLARE @CurrentPos   int
    DECLARE @NextPos      int
    DECLARE @NumDeleted   int
    DECLARE @DeletedUser  int
    DECLARE @TranStarted  bit
    DECLARE @ErrorCode    int

    SET @ErrorCode = 0
    SET @CurrentPos = 1
    SET @NumDeleted = 0
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
        BEGIN TRANSACTION
        SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    WHILE (@CurrentPos <= LEN(@UserNames))
    BEGIN
        SELECT @NextPos = CHARINDEX(N'','', @UserNames,  @CurrentPos)
        IF (@NextPos = 0 OR @NextPos IS NULL)
            SELECT @NextPos = LEN(@UserNames) + 1

        SELECT @UserName = SUBSTRING(@UserNames, @CurrentPos, @NextPos - @CurrentPos)
        SELECT @CurrentPos = @NextPos+1

        IF (LEN(@UserName) > 0)
        BEGIN
            SELECT @DeletedUser = 0
            EXEC dbo.aspnet_Users_DeleteUser @ApplicationName, @UserName, 4, @DeletedUser OUTPUT
            IF( @@ERROR <> 0 )
            BEGIN
                SET @ErrorCode = -1
                GOTO Cleanup
            END
            IF (@DeletedUser <> 0)
                SELECT @NumDeleted = @NumDeleted + 1
        END
    END
    SELECT @NumDeleted
    IF (@TranStarted = 1)
    BEGIN
    	SET @TranStarted = 0
    	COMMIT TRANSACTION
    END
    SET @TranStarted = 0

    RETURN 0

Cleanup:
    IF (@TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END
    RETURN @ErrorCode
END' 
END
GO
GRANT EXECUTE ON [dbo].[aspnet_Profile_DeleteProfiles] TO [aspnet_Profile_FullAccess]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAllUsers_GetPageSettings]    Script Date: 04/20/2008 11:56:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationAllUsers_GetPageSettings]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_PersonalizationAllUsers_GetPageSettings] (
    @ApplicationName  NVARCHAR(256),
    @Path              NVARCHAR(256))
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    DECLARE @PathId UNIQUEIDENTIFIER

    SELECT @ApplicationId = NULL
    SELECT @PathId = NULL

    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
    BEGIN
        RETURN
    END

    SELECT @PathId = u.PathId FROM dbo.aspnet_Paths u WHERE u.ApplicationId = @ApplicationId AND u.LoweredPath = LOWER(@Path)
    IF (@PathId IS NULL)
    BEGIN
        RETURN
    END

    SELECT p.PageSettings FROM dbo.aspnet_PersonalizationAllUsers p WHERE p.PathId = @PathId
END' 
END
GO
GRANT EXECUTE ON [dbo].[aspnet_PersonalizationAllUsers_GetPageSettings] TO [aspnet_Personalization_BasicAccess]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_ResetSharedState]    Script Date: 04/20/2008 11:56:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationAdministration_ResetSharedState]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_PersonalizationAdministration_ResetSharedState] (
    @Count int OUT,
    @ApplicationName NVARCHAR(256),
    @Path NVARCHAR(256))
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
        SELECT @Count = 0
    ELSE
    BEGIN
        DELETE FROM dbo.aspnet_PersonalizationAllUsers
        WHERE PathId IN
            (SELECT AllUsers.PathId
             FROM dbo.aspnet_PersonalizationAllUsers AllUsers, dbo.aspnet_Paths Paths
             WHERE Paths.ApplicationId = @ApplicationId
                   AND AllUsers.PathId = Paths.PathId
                   AND Paths.LoweredPath = LOWER(@Path))

        SELECT @Count = @@ROWCOUNT
    END
END' 
END
GO
GRANT EXECUTE ON [dbo].[aspnet_PersonalizationAdministration_ResetSharedState] TO [aspnet_Personalization_FullAccess]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_DeleteAllState]    Script Date: 04/20/2008 11:56:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationAdministration_DeleteAllState]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_PersonalizationAdministration_DeleteAllState] (
    @AllUsersScope bit,
    @ApplicationName NVARCHAR(256),
    @Count int OUT)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
        SELECT @Count = 0
    ELSE
    BEGIN
        IF (@AllUsersScope = 1)
            DELETE FROM aspnet_PersonalizationAllUsers
            WHERE PathId IN
               (SELECT Paths.PathId
                FROM dbo.aspnet_Paths Paths
                WHERE Paths.ApplicationId = @ApplicationId)
        ELSE
            DELETE FROM aspnet_PersonalizationPerUser
            WHERE PathId IN
               (SELECT Paths.PathId
                FROM dbo.aspnet_Paths Paths
                WHERE Paths.ApplicationId = @ApplicationId)

        SELECT @Count = @@ROWCOUNT
    END
END' 
END
GO
GRANT EXECUTE ON [dbo].[aspnet_PersonalizationAdministration_DeleteAllState] TO [aspnet_Personalization_FullAccess]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAllUsers_ResetPageSettings]    Script Date: 04/20/2008 11:56:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationAllUsers_ResetPageSettings]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_PersonalizationAllUsers_ResetPageSettings] (
    @ApplicationName  NVARCHAR(256),
    @Path              NVARCHAR(256))
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    DECLARE @PathId UNIQUEIDENTIFIER

    SELECT @ApplicationId = NULL
    SELECT @PathId = NULL

    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
    BEGIN
        RETURN
    END

    SELECT @PathId = u.PathId FROM dbo.aspnet_Paths u WHERE u.ApplicationId = @ApplicationId AND u.LoweredPath = LOWER(@Path)
    IF (@PathId IS NULL)
    BEGIN
        RETURN
    END

    DELETE FROM dbo.aspnet_PersonalizationAllUsers WHERE PathId = @PathId
    RETURN 0
END' 
END
GO
GRANT EXECUTE ON [dbo].[aspnet_PersonalizationAllUsers_ResetPageSettings] TO [aspnet_Personalization_BasicAccess]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_FindState]    Script Date: 04/20/2008 11:56:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationAdministration_FindState]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_PersonalizationAdministration_FindState] (
    @AllUsersScope bit,
    @ApplicationName NVARCHAR(256),
    @PageIndex              INT,
    @PageSize               INT,
    @Path NVARCHAR(256) = NULL,
    @UserName NVARCHAR(256) = NULL,
    @InactiveSinceDate DATETIME = NULL)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
        RETURN

    -- Set the page bounds
    DECLARE @PageLowerBound INT
    DECLARE @PageUpperBound INT
    DECLARE @TotalRecords   INT
    SET @PageLowerBound = @PageSize * @PageIndex
    SET @PageUpperBound = @PageSize - 1 + @PageLowerBound

    -- Create a temp table to store the selected results
    CREATE TABLE #PageIndex (
        IndexId int IDENTITY (0, 1) NOT NULL,
        ItemId UNIQUEIDENTIFIER
    )

    IF (@AllUsersScope = 1)
    BEGIN
        -- Insert into our temp table
        INSERT INTO #PageIndex (ItemId)
        SELECT Paths.PathId
        FROM dbo.aspnet_Paths Paths,
             ((SELECT Paths.PathId
               FROM dbo.aspnet_PersonalizationAllUsers AllUsers, dbo.aspnet_Paths Paths
               WHERE Paths.ApplicationId = @ApplicationId
                      AND AllUsers.PathId = Paths.PathId
                      AND (@Path IS NULL OR Paths.LoweredPath LIKE LOWER(@Path))
              ) AS SharedDataPerPath
              FULL OUTER JOIN
              (SELECT DISTINCT Paths.PathId
               FROM dbo.aspnet_PersonalizationPerUser PerUser, dbo.aspnet_Paths Paths
               WHERE Paths.ApplicationId = @ApplicationId
                      AND PerUser.PathId = Paths.PathId
                      AND (@Path IS NULL OR Paths.LoweredPath LIKE LOWER(@Path))
              ) AS UserDataPerPath
              ON SharedDataPerPath.PathId = UserDataPerPath.PathId
             )
        WHERE Paths.PathId = SharedDataPerPath.PathId OR Paths.PathId = UserDataPerPath.PathId
        ORDER BY Paths.Path ASC

        SELECT @TotalRecords = @@ROWCOUNT

        SELECT Paths.Path,
               SharedDataPerPath.LastUpdatedDate,
               SharedDataPerPath.SharedDataLength,
               UserDataPerPath.UserDataLength,
               UserDataPerPath.UserCount
        FROM dbo.aspnet_Paths Paths,
             ((SELECT PageIndex.ItemId AS PathId,
                      AllUsers.LastUpdatedDate AS LastUpdatedDate,
                      DATALENGTH(AllUsers.PageSettings) AS SharedDataLength
               FROM dbo.aspnet_PersonalizationAllUsers AllUsers, #PageIndex PageIndex
               WHERE AllUsers.PathId = PageIndex.ItemId
                     AND PageIndex.IndexId >= @PageLowerBound AND PageIndex.IndexId <= @PageUpperBound
              ) AS SharedDataPerPath
              FULL OUTER JOIN
              (SELECT PageIndex.ItemId AS PathId,
                      SUM(DATALENGTH(PerUser.PageSettings)) AS UserDataLength,
                      COUNT(*) AS UserCount
               FROM aspnet_PersonalizationPerUser PerUser, #PageIndex PageIndex
               WHERE PerUser.PathId = PageIndex.ItemId
                     AND PageIndex.IndexId >= @PageLowerBound AND PageIndex.IndexId <= @PageUpperBound
               GROUP BY PageIndex.ItemId
              ) AS UserDataPerPath
              ON SharedDataPerPath.PathId = UserDataPerPath.PathId
             )
        WHERE Paths.PathId = SharedDataPerPath.PathId OR Paths.PathId = UserDataPerPath.PathId
        ORDER BY Paths.Path ASC
    END
    ELSE
    BEGIN
        -- Insert into our temp table
        INSERT INTO #PageIndex (ItemId)
        SELECT PerUser.Id
        FROM dbo.aspnet_PersonalizationPerUser PerUser, dbo.aspnet_Users Users, dbo.aspnet_Paths Paths
        WHERE Paths.ApplicationId = @ApplicationId
              AND PerUser.UserId = Users.UserId
              AND PerUser.PathId = Paths.PathId
              AND (@Path IS NULL OR Paths.LoweredPath LIKE LOWER(@Path))
              AND (@UserName IS NULL OR Users.LoweredUserName LIKE LOWER(@UserName))
              AND (@InactiveSinceDate IS NULL OR Users.LastActivityDate <= @InactiveSinceDate)
        ORDER BY Paths.Path ASC, Users.UserName ASC

        SELECT @TotalRecords = @@ROWCOUNT

        SELECT Paths.Path, PerUser.LastUpdatedDate, DATALENGTH(PerUser.PageSettings), Users.UserName, Users.LastActivityDate
        FROM dbo.aspnet_PersonalizationPerUser PerUser, dbo.aspnet_Users Users, dbo.aspnet_Paths Paths, #PageIndex PageIndex
        WHERE PerUser.Id = PageIndex.ItemId
              AND PerUser.UserId = Users.UserId
              AND PerUser.PathId = Paths.PathId
              AND PageIndex.IndexId >= @PageLowerBound AND PageIndex.IndexId <= @PageUpperBound
        ORDER BY Paths.Path ASC, Users.UserName ASC
    END

    RETURN @TotalRecords
END' 
END
GO
GRANT EXECUTE ON [dbo].[aspnet_PersonalizationAdministration_FindState] TO [aspnet_Personalization_ReportingAccess]
GO
USE [LA_CROIX_DU_SUD]
GO
USE [LA_CROIX_DU_SUD]
GO
USE [LA_CROIX_DU_SUD]
GO
USE [LA_CROIX_DU_SUD]
GO
USE [LA_CROIX_DU_SUD]
GO
USE [LA_CROIX_DU_SUD]
GO
USE [LA_CROIX_DU_SUD]
GO
USE [LA_CROIX_DU_SUD]
GO
USE [LA_CROIX_DU_SUD]
GO
USE [LA_CROIX_DU_SUD]
GO
USE [LA_CROIX_DU_SUD]
GO
USE [LA_CROIX_DU_SUD]
GO
USE [LA_CROIX_DU_SUD]
GO
USE [LA_CROIX_DU_SUD]
GO
USE [LA_CROIX_DU_SUD]
GO
USE [LA_CROIX_DU_SUD]
GO
USE [LA_CROIX_DU_SUD]
GO
USE [LA_CROIX_DU_SUD]
GO
USE [LA_CROIX_DU_SUD]
GO
USE [LA_CROIX_DU_SUD]
GO
USE [LA_CROIX_DU_SUD]
GO
USE [LA_CROIX_DU_SUD]
GO
USE [LA_CROIX_DU_SUD]
GO
USE [LA_CROIX_DU_SUD]
GO
USE [LA_CROIX_DU_SUD]
GO
USE [LA_CROIX_DU_SUD]
GO
USE [LA_CROIX_DU_SUD]
GO
USE [LA_CROIX_DU_SUD]
GO
USE [LA_CROIX_DU_SUD]
GO
USE [LA_CROIX_DU_SUD]
GO
USE [LA_CROIX_DU_SUD]
GO
USE [LA_CROIX_DU_SUD]
GO
USE [LA_CROIX_DU_SUD]
GO
USE [LA_CROIX_DU_SUD]
GO
USE [LA_CROIX_DU_SUD]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_CONSULTATION_PATIENT]') AND parent_object_id = OBJECT_ID(N'[dbo].[CONSULTATION]'))
ALTER TABLE [dbo].[CONSULTATION]  WITH CHECK ADD  CONSTRAINT [FK_CONSULTATION_PATIENT] FOREIGN KEY([ID_PATIENT])
REFERENCES [dbo].[PATIENT] ([ID_PATIENT])
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_CONSULTATION_SERVICES]') AND parent_object_id = OBJECT_ID(N'[dbo].[CONSULTATION]'))
ALTER TABLE [dbo].[CONSULTATION]  WITH CHECK ADD  CONSTRAINT [FK_CONSULTATION_SERVICES] FOREIGN KEY([ID_SERVICE])
REFERENCES [dbo].[SERVICES] ([ID_SERVICE])
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_RENDEZ_VOUS_CONSULTATION_PATIENT]') AND parent_object_id = OBJECT_ID(N'[dbo].[RENDEZ_VOUS_CONSULTATION]'))
ALTER TABLE [dbo].[RENDEZ_VOUS_CONSULTATION]  WITH CHECK ADD  CONSTRAINT [FK_RENDEZ_VOUS_CONSULTATION_PATIENT] FOREIGN KEY([ID_PATIENT])
REFERENCES [dbo].[PATIENT] ([ID_PATIENT])
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_RENDEZ_VOUS_CONSULTATION_SERVICE]') AND parent_object_id = OBJECT_ID(N'[dbo].[RENDEZ_VOUS_CONSULTATION]'))
ALTER TABLE [dbo].[RENDEZ_VOUS_CONSULTATION]  WITH CHECK ADD  CONSTRAINT [FK_RENDEZ_VOUS_CONSULTATION_SERVICE] FOREIGN KEY([ID_SERVICE])
REFERENCES [dbo].[SERVICES] ([ID_SERVICE])
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_HOSPITALISATION_CHAMBRES]') AND parent_object_id = OBJECT_ID(N'[dbo].[HOSPITALISATION]'))
ALTER TABLE [dbo].[HOSPITALISATION]  WITH CHECK ADD  CONSTRAINT [FK_HOSPITALISATION_CHAMBRES] FOREIGN KEY([No_CHAMBRE])
REFERENCES [dbo].[CHAMBRES] ([No_CHAMBRE])
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_HOSPITALISATION_CONSULTATION]') AND parent_object_id = OBJECT_ID(N'[dbo].[HOSPITALISATION]'))
ALTER TABLE [dbo].[HOSPITALISATION]  WITH CHECK ADD  CONSTRAINT [FK_HOSPITALISATION_CONSULTATION] FOREIGN KEY([ID_CONSULTATION])
REFERENCES [dbo].[CONSULTATION] ([ID_CONSULTATION])
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_HOSPITALISATION_SERVICE]') AND parent_object_id = OBJECT_ID(N'[dbo].[HOSPITALISATION]'))
ALTER TABLE [dbo].[HOSPITALISATION]  WITH CHECK ADD  CONSTRAINT [FK_HOSPITALISATION_SERVICE] FOREIGN KEY([ID_SERVICE])
REFERENCES [dbo].[SERVICES] ([ID_SERVICE])
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_FICHE_DE_SUIVIE_HOSPITALISATION]') AND parent_object_id = OBJECT_ID(N'[dbo].[FICHE_DE_SUIVIE]'))
ALTER TABLE [dbo].[FICHE_DE_SUIVIE]  WITH CHECK ADD  CONSTRAINT [FK_FICHE_DE_SUIVIE_HOSPITALISATION] FOREIGN KEY([ID_HOSPITALISATION])
REFERENCES [dbo].[HOSPITALISATION] ([ID_HOSPITALISATION])
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_FICHE_DE_SUIVIE_SIGNES_VITAUX]') AND parent_object_id = OBJECT_ID(N'[dbo].[FICHE_DE_SUIVIE]'))
ALTER TABLE [dbo].[FICHE_DE_SUIVIE]  WITH CHECK ADD  CONSTRAINT [FK_FICHE_DE_SUIVIE_SIGNES_VITAUX] FOREIGN KEY([ID_SIGNES_VITAUX])
REFERENCES [dbo].[SIGNES_VITAUX] ([ID_SIGNES_VITAUX])
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_EXAMENS_A_FAIRE_LABO_DEPARTMENT]') AND parent_object_id = OBJECT_ID(N'[dbo].[EXAMENS_A_FAIRE]'))
ALTER TABLE [dbo].[EXAMENS_A_FAIRE]  WITH CHECK ADD  CONSTRAINT [FK_EXAMENS_A_FAIRE_LABO_DEPARTMENT] FOREIGN KEY([ID_DEPART_LABO])
REFERENCES [dbo].[LABO_DEPARTMENT] ([ID_DEPART_LABO])
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_EXAMENS_A_FAIRE_SERVICES_RENDUS]') AND parent_object_id = OBJECT_ID(N'[dbo].[EXAMENS_A_FAIRE]'))
ALTER TABLE [dbo].[EXAMENS_A_FAIRE]  WITH CHECK ADD  CONSTRAINT [FK_EXAMENS_A_FAIRE_SERVICES_RENDUS] FOREIGN KEY([ID_SERVICES_RENDUS])
REFERENCES [dbo].[SERVICES_RENDUS] ([ID_SERVICES_RENDUS])
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SORTIE_DE_STOCK_PRODUIT_EN_STOCK]') AND parent_object_id = OBJECT_ID(N'[dbo].[SORTIE_DE_STOCK]'))
ALTER TABLE [dbo].[SORTIE_DE_STOCK]  WITH CHECK ADD  CONSTRAINT [FK_SORTIE_DE_STOCK_PRODUIT_EN_STOCK] FOREIGN KEY([CODE_PRODUIT])
REFERENCES [dbo].[PRODUIT_EN_STOCK] ([CODE_PRODUIT])
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SORTIE_DE_STOCK_STOCK]') AND parent_object_id = OBJECT_ID(N'[dbo].[SORTIE_DE_STOCK]'))
ALTER TABLE [dbo].[SORTIE_DE_STOCK]  WITH CHECK ADD  CONSTRAINT [FK_SORTIE_DE_STOCK_STOCK] FOREIGN KEY([ID_STOCK])
REFERENCES [dbo].[STOCK] ([ID_STOCK])
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_COMMANDE_STOCK_PRODUIT_EN_STOCK]') AND parent_object_id = OBJECT_ID(N'[dbo].[COMMANDE_STOCK]'))
ALTER TABLE [dbo].[COMMANDE_STOCK]  WITH CHECK ADD  CONSTRAINT [FK_COMMANDE_STOCK_PRODUIT_EN_STOCK] FOREIGN KEY([CODE_PRODUIT])
REFERENCES [dbo].[PRODUIT_EN_STOCK] ([CODE_PRODUIT])
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_COMMANDE_STOCK_STOCK]') AND parent_object_id = OBJECT_ID(N'[dbo].[COMMANDE_STOCK]'))
ALTER TABLE [dbo].[COMMANDE_STOCK]  WITH CHECK ADD  CONSTRAINT [FK_COMMANDE_STOCK_STOCK] FOREIGN KEY([ID_STOCK])
REFERENCES [dbo].[STOCK] ([ID_STOCK])
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ENTREE_EN_STOCK_PRODUIT_EN_STOCK]') AND parent_object_id = OBJECT_ID(N'[dbo].[ENTREE_EN_STOCK]'))
ALTER TABLE [dbo].[ENTREE_EN_STOCK]  WITH CHECK ADD  CONSTRAINT [FK_ENTREE_EN_STOCK_PRODUIT_EN_STOCK] FOREIGN KEY([CODE_PRODUIT])
REFERENCES [dbo].[PRODUIT_EN_STOCK] ([CODE_PRODUIT])
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ENTREE_EN_STOCK_STOCK]') AND parent_object_id = OBJECT_ID(N'[dbo].[ENTREE_EN_STOCK]'))
ALTER TABLE [dbo].[ENTREE_EN_STOCK]  WITH CHECK ADD  CONSTRAINT [FK_ENTREE_EN_STOCK_STOCK] FOREIGN KEY([ID_STOCK])
REFERENCES [dbo].[STOCK] ([ID_STOCK])
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SEUIL_D_ALERTE_PRODUIT_EN_STOCK]') AND parent_object_id = OBJECT_ID(N'[dbo].[SEUIL_D_ALERTE]'))
ALTER TABLE [dbo].[SEUIL_D_ALERTE]  WITH CHECK ADD  CONSTRAINT [FK_SEUIL_D_ALERTE_PRODUIT_EN_STOCK] FOREIGN KEY([CODE_PRODUIT])
REFERENCES [dbo].[PRODUIT_EN_STOCK] ([CODE_PRODUIT])
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SEUIL_D_ALERTE_SERVICES]') AND parent_object_id = OBJECT_ID(N'[dbo].[SEUIL_D_ALERTE]'))
ALTER TABLE [dbo].[SEUIL_D_ALERTE]  WITH CHECK ADD  CONSTRAINT [FK_SEUIL_D_ALERTE_SERVICES] FOREIGN KEY([ID_SERVICE])
REFERENCES [dbo].[SERVICES] ([ID_SERVICE])
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_LA_GARDE_PERSONNEL_DE_GARDE]') AND parent_object_id = OBJECT_ID(N'[dbo].[LA_GARDE]'))
ALTER TABLE [dbo].[LA_GARDE]  WITH CHECK ADD  CONSTRAINT [FK_LA_GARDE_PERSONNEL_DE_GARDE] FOREIGN KEY([ID_PERSONNEL])
REFERENCES [dbo].[PERSONNEL_DE_GARDE] ([ID_PERSONNEL])
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_LA_GARDE_SERVICES]') AND parent_object_id = OBJECT_ID(N'[dbo].[LA_GARDE]'))
ALTER TABLE [dbo].[LA_GARDE]  WITH CHECK ADD  CONSTRAINT [FK_LA_GARDE_SERVICES] FOREIGN KEY([ID_SERVICE])
REFERENCES [dbo].[SERVICES] ([ID_SERVICE])
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_UTILISATEURS_SERVICE]') AND parent_object_id = OBJECT_ID(N'[dbo].[UTILISATEURS]'))
ALTER TABLE [dbo].[UTILISATEURS]  WITH CHECK ADD  CONSTRAINT [FK_UTILISATEURS_SERVICE] FOREIGN KEY([ID_SERVICE])
REFERENCES [dbo].[SERVICES] ([ID_SERVICE])
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_UTILISATEURS_SPECIALISATION]') AND parent_object_id = OBJECT_ID(N'[dbo].[UTILISATEURS]'))
ALTER TABLE [dbo].[UTILISATEURS]  WITH CHECK ADD  CONSTRAINT [FK_UTILISATEURS_SPECIALISATION] FOREIGN KEY([ID_SPECIALISATION])
REFERENCES [dbo].[SPECIALISATION] ([ID_SPECIALISATION])
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_STOCK_SERVICE]') AND parent_object_id = OBJECT_ID(N'[dbo].[STOCK]'))
ALTER TABLE [dbo].[STOCK]  WITH CHECK ADD  CONSTRAINT [FK_STOCK_SERVICE] FOREIGN KEY([ID_SERVICE])
REFERENCES [dbo].[SERVICES] ([ID_SERVICE])
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_TRAITEMENT_CONSULTATION_CONSULTATION]') AND parent_object_id = OBJECT_ID(N'[dbo].[TRAITEMENT_CONSULTATION]'))
ALTER TABLE [dbo].[TRAITEMENT_CONSULTATION]  WITH CHECK ADD  CONSTRAINT [FK_TRAITEMENT_CONSULTATION_CONSULTATION] FOREIGN KEY([ID_CONSULTATION])
REFERENCES [dbo].[CONSULTATION] ([ID_CONSULTATION])
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_TRAITEMENT_CONSULTATION_SERVICES_RENDUS]') AND parent_object_id = OBJECT_ID(N'[dbo].[TRAITEMENT_CONSULTATION]'))
ALTER TABLE [dbo].[TRAITEMENT_CONSULTATION]  WITH CHECK ADD  CONSTRAINT [FK_TRAITEMENT_CONSULTATION_SERVICES_RENDUS] FOREIGN KEY([ID_SERVICES_RENDUS])
REFERENCES [dbo].[SERVICES_RENDUS] ([ID_SERVICES_RENDUS])
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_TARIF_DEL_ASSUREUR_ASSUREUR]') AND parent_object_id = OBJECT_ID(N'[dbo].[TARIF_DEL_ASSUREUR]'))
ALTER TABLE [dbo].[TARIF_DEL_ASSUREUR]  WITH CHECK ADD  CONSTRAINT [FK_TARIF_DEL_ASSUREUR_ASSUREUR] FOREIGN KEY([ID_ASSUREUR])
REFERENCES [dbo].[ASSUREUR] ([ID_ASSUREUR])
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_TARIF_DEL_ASSUREUR_SERVICES_RENDUS]') AND parent_object_id = OBJECT_ID(N'[dbo].[TARIF_DEL_ASSUREUR]'))
ALTER TABLE [dbo].[TARIF_DEL_ASSUREUR]  WITH CHECK ADD  CONSTRAINT [FK_TARIF_DEL_ASSUREUR_SERVICES_RENDUS] FOREIGN KEY([ID_SERVICES_RENDUS])
REFERENCES [dbo].[SERVICES_RENDUS] ([ID_SERVICES_RENDUS])
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_RESULTATS_EXAMEN_CONSULTATION]') AND parent_object_id = OBJECT_ID(N'[dbo].[RESULTATS_EXAMEN]'))
ALTER TABLE [dbo].[RESULTATS_EXAMEN]  WITH CHECK ADD  CONSTRAINT [FK_RESULTATS_EXAMEN_CONSULTATION] FOREIGN KEY([ID_CONSULTATION])
REFERENCES [dbo].[CONSULTATION] ([ID_CONSULTATION])
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_RESULTATS_EXAMEN_EXAMENS_A_FAIRE]') AND parent_object_id = OBJECT_ID(N'[dbo].[RESULTATS_EXAMEN]'))
ALTER TABLE [dbo].[RESULTATS_EXAMEN]  WITH CHECK ADD  CONSTRAINT [FK_RESULTATS_EXAMEN_EXAMENS_A_FAIRE] FOREIGN KEY([CODE_EXAMEN], [ID_SERVICES_RENDUS])
REFERENCES [dbo].[EXAMENS_A_FAIRE] ([CODE_EXAMEN], [ID_SERVICES_RENDUS])
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_RESULTATS_EXAMEN_SERVICES_RENDUS]') AND parent_object_id = OBJECT_ID(N'[dbo].[RESULTATS_EXAMEN]'))
ALTER TABLE [dbo].[RESULTATS_EXAMEN]  WITH CHECK ADD  CONSTRAINT [FK_RESULTATS_EXAMEN_SERVICES_RENDUS] FOREIGN KEY([ID_SERVICES_RENDUS])
REFERENCES [dbo].[SERVICES_RENDUS] ([ID_SERVICES_RENDUS])
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_RESULTATS_EXAMEN_TYPE_D_ECHANTILLON]') AND parent_object_id = OBJECT_ID(N'[dbo].[RESULTATS_EXAMEN]'))
ALTER TABLE [dbo].[RESULTATS_EXAMEN]  WITH CHECK ADD  CONSTRAINT [FK_RESULTATS_EXAMEN_TYPE_D_ECHANTILLON] FOREIGN KEY([ID_TYPE_ECHANTILLON])
REFERENCES [dbo].[TYPE_D_ECHANTILLON] ([ID_TYPE_ECHANTILLON])
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_TRAITEMENT_SUIVIE_FICHE_DE_SUIVIE]') AND parent_object_id = OBJECT_ID(N'[dbo].[TRAITEMENT_SUIVIE]'))
ALTER TABLE [dbo].[TRAITEMENT_SUIVIE]  WITH CHECK ADD  CONSTRAINT [FK_TRAITEMENT_SUIVIE_FICHE_DE_SUIVIE] FOREIGN KEY([ID_SUIVIE])
REFERENCES [dbo].[FICHE_DE_SUIVIE] ([ID_SUIVIE])
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_TRAITEMENT_SUIVIE_SERVICES_RENDUS]') AND parent_object_id = OBJECT_ID(N'[dbo].[TRAITEMENT_SUIVIE]'))
ALTER TABLE [dbo].[TRAITEMENT_SUIVIE]  WITH CHECK ADD  CONSTRAINT [FK_TRAITEMENT_SUIVIE_SERVICES_RENDUS] FOREIGN KEY([ID_SERVICES_RENDUS])
REFERENCES [dbo].[SERVICES_RENDUS] ([ID_SERVICES_RENDUS])
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_TRANSFERT_CONSULTATION]') AND parent_object_id = OBJECT_ID(N'[dbo].[TRANSFERT]'))
ALTER TABLE [dbo].[TRANSFERT]  WITH CHECK ADD  CONSTRAINT [FK_TRANSFERT_CONSULTATION] FOREIGN KEY([ID_CONSULTATION])
REFERENCES [dbo].[CONSULTATION] ([ID_CONSULTATION])
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_TRANSFERT_DESTINATION_TRANSFERT]') AND parent_object_id = OBJECT_ID(N'[dbo].[TRANSFERT]'))
ALTER TABLE [dbo].[TRANSFERT]  WITH CHECK ADD  CONSTRAINT [FK_TRANSFERT_DESTINATION_TRANSFERT] FOREIGN KEY([ID_DESTINATION])
REFERENCES [dbo].[DESTINATION_TRANSFERT] ([ID_DESTINATION])
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__aspnet_Ro__Appli__5006DFF2]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_Roles]'))
ALTER TABLE [dbo].[aspnet_Roles]  WITH CHECK ADD FOREIGN KEY([ApplicationId])
REFERENCES [dbo].[aspnet_Applications] ([ApplicationId])
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__aspnet_Pa__Appli__6319B466]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_Paths]'))
ALTER TABLE [dbo].[aspnet_Paths]  WITH CHECK ADD FOREIGN KEY([ApplicationId])
REFERENCES [dbo].[aspnet_Applications] ([ApplicationId])
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__aspnet_Us__Appli__214BF109]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_Users]'))
ALTER TABLE [dbo].[aspnet_Users]  WITH CHECK ADD FOREIGN KEY([ApplicationId])
REFERENCES [dbo].[aspnet_Applications] ([ApplicationId])
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__aspnet_Me__Appli__318258D2]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_Membership]'))
ALTER TABLE [dbo].[aspnet_Membership]  WITH CHECK ADD FOREIGN KEY([ApplicationId])
REFERENCES [dbo].[aspnet_Applications] ([ApplicationId])
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__aspnet_Me__UserI__32767D0B]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_Membership]'))
ALTER TABLE [dbo].[aspnet_Membership]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__aspnet_Us__RoleI__54CB950F]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_UsersInRoles]'))
ALTER TABLE [dbo].[aspnet_UsersInRoles]  WITH CHECK ADD FOREIGN KEY([RoleId])
REFERENCES [dbo].[aspnet_Roles] ([RoleId])
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__aspnet_Us__UserI__53D770D6]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_UsersInRoles]'))
ALTER TABLE [dbo].[aspnet_UsersInRoles]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__aspnet_Pr__UserI__467D75B8]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_Profile]'))
ALTER TABLE [dbo].[aspnet_Profile]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__aspnet_Pe__PathI__6CA31EA0]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationPerUser]'))
ALTER TABLE [dbo].[aspnet_PersonalizationPerUser]  WITH CHECK ADD FOREIGN KEY([PathId])
REFERENCES [dbo].[aspnet_Paths] ([PathId])
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__aspnet_Pe__UserI__6D9742D9]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationPerUser]'))
ALTER TABLE [dbo].[aspnet_PersonalizationPerUser]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SPECIALISATION_CATEGORY_UTILISATEUR]') AND parent_object_id = OBJECT_ID(N'[dbo].[SPECIALISATION]'))
ALTER TABLE [dbo].[SPECIALISATION]  WITH CHECK ADD  CONSTRAINT [FK_SPECIALISATION_CATEGORY_UTILISATEUR] FOREIGN KEY([ID_CATEG_UTILISATEUR])
REFERENCES [dbo].[CATEGORY_UTILISATEUR] ([ID_CATEG_UTILISATEUR])
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SERVICE_CATEGORY_SERVICE]') AND parent_object_id = OBJECT_ID(N'[dbo].[SERVICES]'))
ALTER TABLE [dbo].[SERVICES]  WITH CHECK ADD  CONSTRAINT [FK_SERVICE_CATEGORY_SERVICE] FOREIGN KEY([ID_CATEG_SERVICE])
REFERENCES [dbo].[CATEGORY_SERVICE] ([ID_CATEG_SERVICE])
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_PRODUIT_EN_STOCK_CATEGORY_PRODUIT]') AND parent_object_id = OBJECT_ID(N'[dbo].[PRODUIT_EN_STOCK]'))
ALTER TABLE [dbo].[PRODUIT_EN_STOCK]  WITH CHECK ADD  CONSTRAINT [FK_PRODUIT_EN_STOCK_CATEGORY_PRODUIT] FOREIGN KEY([ID_CATEG_PRODUIT])
REFERENCES [dbo].[CATEGORY_PRODUIT] ([ID_CATEG_PRODUIT])
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_CHAMBRES_CATEGORY_CHAMBRE]') AND parent_object_id = OBJECT_ID(N'[dbo].[CHAMBRES]'))
ALTER TABLE [dbo].[CHAMBRES]  WITH CHECK ADD  CONSTRAINT [FK_CHAMBRES_CATEGORY_CHAMBRE] FOREIGN KEY([ID_CATEG_CHAMBRE])
REFERENCES [dbo].[CATEGORY_CHAMBRE] ([ID_CATEG_CHAMBRE])
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SERVICES_RENDUS_CATEG_SERVICES_RENDUS]') AND parent_object_id = OBJECT_ID(N'[dbo].[SERVICES_RENDUS]'))
ALTER TABLE [dbo].[SERVICES_RENDUS]  WITH CHECK ADD  CONSTRAINT [FK_SERVICES_RENDUS_CATEG_SERVICES_RENDUS] FOREIGN KEY([ID_CATEG_SER_RENDUS])
REFERENCES [dbo].[CATEG_SERVICES_RENDUS] ([ID_CATEG_SER_RENDUS])
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_FACTURES_CONSULTATION]') AND parent_object_id = OBJECT_ID(N'[dbo].[FACTURES]'))
ALTER TABLE [dbo].[FACTURES]  WITH CHECK ADD  CONSTRAINT [FK_FACTURES_CONSULTATION] FOREIGN KEY([ID_CONSULTATION])
REFERENCES [dbo].[CONSULTATION] ([ID_CONSULTATION])
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_LES_PLAINTES_DE_CONSULTATION_CONSULTATION]') AND parent_object_id = OBJECT_ID(N'[dbo].[LES_PLAINTES_DE_CONSULTATION]'))
ALTER TABLE [dbo].[LES_PLAINTES_DE_CONSULTATION]  WITH CHECK ADD  CONSTRAINT [FK_LES_PLAINTES_DE_CONSULTATION_CONSULTATION] FOREIGN KEY([ID_CONSULTATION])
REFERENCES [dbo].[CONSULTATION] ([ID_CONSULTATION])
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_LES_PLAINTES_DE_CONSULTATION_PLAINTES]') AND parent_object_id = OBJECT_ID(N'[dbo].[LES_PLAINTES_DE_CONSULTATION]'))
ALTER TABLE [dbo].[LES_PLAINTES_DE_CONSULTATION]  WITH CHECK ADD  CONSTRAINT [FK_LES_PLAINTES_DE_CONSULTATION_PLAINTES] FOREIGN KEY([CODE_PLAINTE])
REFERENCES [dbo].[PLAINTES] ([CODE_PLAINTE])
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_PLAINTES_CATEGORY_PLAINTES]') AND parent_object_id = OBJECT_ID(N'[dbo].[PLAINTES]'))
ALTER TABLE [dbo].[PLAINTES]  WITH CHECK ADD  CONSTRAINT [FK_PLAINTES_CATEGORY_PLAINTES] FOREIGN KEY([ID_CATEG_PLAINTES])
REFERENCES [dbo].[CATEGORY_PLAINTES] ([ID_CATEG_PLAINTES])
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__aspnet_Pe__PathI__68D28DBC]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationAllUsers]'))
ALTER TABLE [dbo].[aspnet_PersonalizationAllUsers]  WITH CHECK ADD FOREIGN KEY([PathId])
REFERENCES [dbo].[aspnet_Paths] ([PathId])
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_PATIENT_ASSUREUR]') AND parent_object_id = OBJECT_ID(N'[dbo].[PATIENT]'))
ALTER TABLE [dbo].[PATIENT]  WITH CHECK ADD  CONSTRAINT [FK_PATIENT_ASSUREUR] FOREIGN KEY([ID_ASSUREUR])
REFERENCES [dbo].[ASSUREUR] ([ID_ASSUREUR])
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_PATIENT_CATEGORY_PATIENT]') AND parent_object_id = OBJECT_ID(N'[dbo].[PATIENT]'))
ALTER TABLE [dbo].[PATIENT]  WITH CHECK ADD  CONSTRAINT [FK_PATIENT_CATEGORY_PATIENT] FOREIGN KEY([ID_CATEGORY_PATIENT])
REFERENCES [dbo].[CATEGORY_PATIENT] ([ID_CATEGORY_PATIENT])
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_PERSONNEL_DE_GARDE_CATEG_PERSONNEL]') AND parent_object_id = OBJECT_ID(N'[dbo].[PERSONNEL_DE_GARDE]'))
ALTER TABLE [dbo].[PERSONNEL_DE_GARDE]  WITH CHECK ADD  CONSTRAINT [FK_PERSONNEL_DE_GARDE_CATEG_PERSONNEL] FOREIGN KEY([ID_CATEG_PERSONNEL])
REFERENCES [dbo].[CATEG_PERSONNEL] ([ID_CATEG_PERSONNEL])
