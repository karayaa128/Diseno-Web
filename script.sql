USE [master]
GO
/****** Object:  Database [HOTEL]    Script Date: 26/10/2019 13:35:08 ******/
CREATE DATABASE [HOTEL]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'HOTEL', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER01\MSSQL\DATA\HOTEL.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'HOTEL_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER01\MSSQL\DATA\HOTEL_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [HOTEL] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [HOTEL].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [HOTEL] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [HOTEL] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [HOTEL] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [HOTEL] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [HOTEL] SET ARITHABORT OFF 
GO
ALTER DATABASE [HOTEL] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [HOTEL] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [HOTEL] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [HOTEL] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [HOTEL] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [HOTEL] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [HOTEL] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [HOTEL] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [HOTEL] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [HOTEL] SET  DISABLE_BROKER 
GO
ALTER DATABASE [HOTEL] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [HOTEL] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [HOTEL] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [HOTEL] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [HOTEL] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [HOTEL] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [HOTEL] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [HOTEL] SET RECOVERY FULL 
GO
ALTER DATABASE [HOTEL] SET  MULTI_USER 
GO
ALTER DATABASE [HOTEL] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [HOTEL] SET DB_CHAINING OFF 
GO
ALTER DATABASE [HOTEL] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [HOTEL] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [HOTEL] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'HOTEL', N'ON'
GO
ALTER DATABASE [HOTEL] SET QUERY_STORE = OFF
GO
USE [HOTEL]
GO
/****** Object:  Table [dbo].[HABITACION]    Script Date: 26/10/2019 13:35:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HABITACION](
	[HAB_CODIGO] [int] NOT NULL,
	[HAB_CAN_HUESP] [int] NULL,
	[HAB_TIPO] [varchar](50) NULL,
	[HAB_PRECIO] [decimal](10, 2) NULL,
	[HOT_CODIGO] [int] NULL,
	[HAB_ESTADO] [char](1) NULL,
 CONSTRAINT [PK_HABITACION] PRIMARY KEY CLUSTERED 
(
	[HAB_CODIGO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HOTEL]    Script Date: 26/10/2019 13:35:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HOTEL](
	[HOT_CODIGO] [int] NOT NULL,
	[HOT_NOMBRE] [varchar](100) NULL,
	[HOT_EMAIL] [varchar](100) NULL,
	[HOT_DIRECCION] [varchar](300) NULL,
 CONSTRAINT [PK_HOTEL] PRIMARY KEY CLUSTERED 
(
	[HOT_CODIGO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RESERVA]    Script Date: 26/10/2019 13:35:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RESERVA](
	[RES_CODIGO] [int] NOT NULL,
	[RES_FECHA] [datetime] NOT NULL,
	[RES_FECHA_INGRESO] [datetime] NULL,
	[RES_FECHA_SALIDA] [datetime] NULL,
	[RES_ESTADO] [char](1) NULL,
	[USU_CODIGO] [int] NULL,
	[RES_TOTAL] [decimal](12, 2) NULL,
	[HAB_CODIGO] [int] NULL,
 CONSTRAINT [PK_RESERVA] PRIMARY KEY CLUSTERED 
(
	[RES_CODIGO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[USUARIO]    Script Date: 26/10/2019 13:35:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[USUARIO](
	[USU_CODIGO] [int] IDENTITY(3,1) NOT NULL,
	[USU_IDENTIFICACION] [varchar](100) NOT NULL,
	[USU_NOMBRE] [varchar](100) NOT NULL,
	[USU_PASSWORD] [varchar](100) NOT NULL,
	[USU_EMAIL] [varchar](100) NOT NULL,
	[USU_ESTADO] [char](1) NOT NULL,
	[USU_FEC_NAC] [datetime] NOT NULL,
 CONSTRAINT [PK_USUARIO] PRIMARY KEY CLUSTERED 
(
	[USU_CODIGO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [HOTEL] SET  READ_WRITE 
GO
