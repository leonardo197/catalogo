USE [master]
GO
/****** Object:  Database [Catalgo]    Script Date: 25/05/2017 09:10:12 ******/
CREATE DATABASE [Catalgo] ON  PRIMARY 
( NAME = N'Catalgo', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\Catalgo.mdf' , SIZE = 16384KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Catalgo_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\Catalgo_log.ldf' , SIZE = 56640KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Catalgo] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Catalgo].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Catalgo] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Catalgo] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Catalgo] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Catalgo] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Catalgo] SET ARITHABORT OFF 
GO
ALTER DATABASE [Catalgo] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Catalgo] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Catalgo] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Catalgo] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Catalgo] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Catalgo] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Catalgo] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Catalgo] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Catalgo] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Catalgo] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Catalgo] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Catalgo] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Catalgo] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Catalgo] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Catalgo] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Catalgo] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Catalgo] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Catalgo] SET RECOVERY FULL 
GO
ALTER DATABASE [Catalgo] SET  MULTI_USER 
GO
ALTER DATABASE [Catalgo] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Catalgo] SET DB_CHAINING OFF 
GO
USE [Catalgo]
GO
/****** Object:  Table [dbo].[assistencias]    Script Date: 25/05/2017 09:10:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[assistencias](
	[ID_Assistências] [int] IDENTITY(1,1) NOT NULL,
	[ID] [int] NOT NULL,
	[Referência] [nchar](10) NULL,
	[Família] [nchar](20) NOT NULL,
	[Descrição] [nchar](60) NOT NULL,
	[Preço] [numeric](10, 2) NOT NULL,
	[Imagem] [image] NULL,
 CONSTRAINT [PK_Assistências] PRIMARY KEY CLUSTERED 
(
	[ID_Assistências] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[complementos]    Script Date: 25/05/2017 09:10:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[complementos](
	[ID_Complementos] [int] IDENTITY(1,1) NOT NULL,
	[ID] [int] NOT NULL,
	[Referência] [nchar](10) NOT NULL,
	[Família] [nchar](20) NOT NULL,
	[Descrição] [nchar](60) NOT NULL,
	[Cor] [nchar](15) NOT NULL,
	[Preço] [numeric](10, 2) NOT NULL,
	[Imagem] [image] NULL,
 CONSTRAINT [PK_complementos] PRIMARY KEY CLUSTERED 
(
	[ID_Complementos] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[despesas]    Script Date: 25/05/2017 09:10:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[despesas](
	[ID_Despesas de Deslocação] [int] IDENTITY(1,1) NOT NULL,
	[Despesas de Deslocação] [nchar](60) NULL,
	[Preço] [numeric](10, 2) NOT NULL,
 CONSTRAINT [PK_despesas] PRIMARY KEY CLUSTERED 
(
	[ID_Despesas de Deslocação] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[estores]    Script Date: 25/05/2017 09:10:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[estores](
	[ID_Estores] [int] IDENTITY(1,1) NOT NULL,
	[ID] [int] NOT NULL,
	[Referência] [nchar](10) NULL,
	[Família] [nchar](20) NOT NULL,
	[Descrição] [nchar](60) NOT NULL,
	[Cor] [nchar](15) NOT NULL,
	[Preço] [numeric](10, 2) NOT NULL,
	[Imagem] [image] NULL,
 CONSTRAINT [PK_estores] PRIMARY KEY CLUSTERED 
(
	[ID_Estores] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[portas]    Script Date: 25/05/2017 09:10:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[portas](
	[ID_Portas] [int] IDENTITY(1,1) NOT NULL,
	[ID] [int] NOT NULL,
	[Referência] [nchar](10) NOT NULL,
	[Descrição] [nchar](60) NOT NULL,
	[Cor] [nchar](15) NOT NULL,
	[Vidro] [bit] SPARSE  NULL,
	[Grelha] [bit] NULL,
	[Tipo_Grelha] [nchar](10) NULL,
	[Preço] [decimal](18, 2) NOT NULL,
	[Imagem] [image] NOT NULL,
	[Imagem1] [image] NOT NULL,
	[Imagem2] [image] NOT NULL,
	[Imagem3] [image] NOT NULL,
	[Imagem4] [image] NOT NULL,
	[Imagem5] [image] NOT NULL,
	[Imagem6] [image] NOT NULL,
 CONSTRAINT [PK_portas] PRIMARY KEY CLUSTERED 
(
	[ID_Portas] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[puxadores]    Script Date: 25/05/2017 09:10:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[puxadores](
	[ID_Puxadores] [int] IDENTITY(1,1) NOT NULL,
	[ID] [int] NOT NULL,
	[Referência] [nchar](10) NULL,
	[Família] [nchar](20) NOT NULL,
	[Descrição] [nchar](60) NOT NULL,
	[Cor] [nchar](15) NOT NULL,
	[Preço] [numeric](10, 2) NOT NULL,
	[Imagem] [image] NULL,
 CONSTRAINT [PK_Puxadores] PRIMARY KEY CLUSTERED 
(
	[ID_Puxadores] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[utilizador]    Script Date: 25/05/2017 09:10:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[utilizador](
	[ID_Utilizador] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [nchar](15) NOT NULL,
	[Passe] [nchar](20) NOT NULL,
	[Fotocopiar] [bit] NULL,
	[Criar_Registos] [bit] NULL,
	[Eliminar_Registos] [bit] NULL,
	[Modificar_Registros] [bit] NULL,
	[Criar_Utilizadores] [bit] NULL,
 CONSTRAINT [PK_utilizador] PRIMARY KEY CLUSTERED 
(
	[ID_Utilizador] ASC,
	[Nome] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
USE [master]
GO
ALTER DATABASE [Catalgo] SET  READ_WRITE 
GO
