USE [master]
GO
/****** Object:  Database [DBShopNearby]    Script Date: 04/08/2020 0:46:55 ******/
CREATE DATABASE [DBShopNearby]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DBShopNearby', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\DBShopNearby.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'DBShopNearby_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\DBShopNearby_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [DBShopNearby] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DBShopNearby].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DBShopNearby] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DBShopNearby] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DBShopNearby] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DBShopNearby] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DBShopNearby] SET ARITHABORT OFF 
GO
ALTER DATABASE [DBShopNearby] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DBShopNearby] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DBShopNearby] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DBShopNearby] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DBShopNearby] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DBShopNearby] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DBShopNearby] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DBShopNearby] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DBShopNearby] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DBShopNearby] SET  DISABLE_BROKER 
GO
ALTER DATABASE [DBShopNearby] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DBShopNearby] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DBShopNearby] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DBShopNearby] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DBShopNearby] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DBShopNearby] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DBShopNearby] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DBShopNearby] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [DBShopNearby] SET  MULTI_USER 
GO
ALTER DATABASE [DBShopNearby] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DBShopNearby] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DBShopNearby] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DBShopNearby] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [DBShopNearby] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [DBShopNearby] SET QUERY_STORE = OFF
GO
USE [DBShopNearby]
GO
/****** Object:  Table [dbo].[Ciudad]    Script Date: 04/08/2020 0:46:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ciudad](
	[idCiudad] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Identificador] [varchar](10) NULL,
	[Identificador_P] [varchar](10) NULL,
 CONSTRAINT [PK_Ciudad] PRIMARY KEY CLUSTERED 
(
	[idCiudad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Propietario]    Script Date: 04/08/2020 0:46:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Propietario](
	[idPropietario] [int] IDENTITY(1,1) NOT NULL,
	[Nombres] [varchar](200) NULL,
	[Apellidos] [varchar](200) NULL,
	[Cedula] [varchar](15) NULL,
	[N_Telefono] [varchar](10) NULL,
	[Usuario] [varchar](200) NULL,
	[Contrasena] [varchar](200) NULL,
 CONSTRAINT [PK_Propietario] PRIMARY KEY CLUSTERED 
(
	[idPropietario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Provincia]    Script Date: 04/08/2020 0:46:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Provincia](
	[idProvincia] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Identificador] [varchar](10) NULL,
 CONSTRAINT [PK_Provincia] PRIMARY KEY CLUSTERED 
(
	[idProvincia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sector]    Script Date: 04/08/2020 0:46:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sector](
	[idSector] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Identificador_P] [varchar](10) NULL,
 CONSTRAINT [PK_Sector] PRIMARY KEY CLUSTERED 
(
	[idSector] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tienda]    Script Date: 04/08/2020 0:46:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tienda](
	[idTienda] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NULL,
	[R_Social] [varchar](50) NULL,
	[N_Telefono] [varchar](10) NULL,
	[Direccion] [varchar](200) NULL,
	[Estado] [nchar](1) NULL,
	[Horario] [varchar](50) NULL,
	[idProvincia] [int] NULL,
	[idCiudad] [int] NULL,
	[idSector] [int] NULL,
 CONSTRAINT [PK_Tienda] PRIMARY KEY CLUSTERED 
(
	[idTienda] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Ciudad] ON 

INSERT [dbo].[Ciudad] ([idCiudad], [Nombre], [Identificador], [Identificador_P]) VALUES (1, N'Salcedo', N'1', N'1')
SET IDENTITY_INSERT [dbo].[Ciudad] OFF
GO
SET IDENTITY_INSERT [dbo].[Propietario] ON 

INSERT [dbo].[Propietario] ([idPropietario], [Nombres], [Apellidos], [Cedula], [N_Telefono], [Usuario], [Contrasena]) VALUES (1002, N'Alejandro', N'Salazar', N'0550207484', N'0995391561', N'qwe', N'123')
INSERT [dbo].[Propietario] ([idPropietario], [Nombres], [Apellidos], [Cedula], [N_Telefono], [Usuario], [Contrasena]) VALUES (1003, N'Jose', N'Salazar', N'0439834983', N'0284294298', N'jkl', N'123')
INSERT [dbo].[Propietario] ([idPropietario], [Nombres], [Apellidos], [Cedula], [N_Telefono], [Usuario], [Contrasena]) VALUES (1004, N'Luis', N'Salazar', N'0329432983', N'0429842149', N'ghj', N'123')
SET IDENTITY_INSERT [dbo].[Propietario] OFF
GO
SET IDENTITY_INSERT [dbo].[Provincia] ON 

INSERT [dbo].[Provincia] ([idProvincia], [Nombre], [Identificador]) VALUES (1, N'Cotopaxi', N'1')
SET IDENTITY_INSERT [dbo].[Provincia] OFF
GO
SET IDENTITY_INSERT [dbo].[Sector] ON 

INSERT [dbo].[Sector] ([idSector], [Nombre], [Identificador_P]) VALUES (1, N'San Miguel', N'1')
SET IDENTITY_INSERT [dbo].[Sector] OFF
GO
SET IDENTITY_INSERT [dbo].[Tienda] ON 

INSERT [dbo].[Tienda] ([idTienda], [Nombre], [R_Social], [N_Telefono], [Direccion], [Estado], [Horario], [idProvincia], [idCiudad], [idSector]) VALUES (2, N'Santamaria', N'Supermercado', N'0932923242', N'Calles: Quito y Ambato', N'H', N'8:00 - 19:00', 1, 1, 1)
SET IDENTITY_INSERT [dbo].[Tienda] OFF
GO
ALTER TABLE [dbo].[Tienda]  WITH CHECK ADD  CONSTRAINT [FK_Tienda_Ciudad] FOREIGN KEY([idCiudad])
REFERENCES [dbo].[Ciudad] ([idCiudad])
GO
ALTER TABLE [dbo].[Tienda] CHECK CONSTRAINT [FK_Tienda_Ciudad]
GO
ALTER TABLE [dbo].[Tienda]  WITH CHECK ADD  CONSTRAINT [FK_Tienda_Provincia] FOREIGN KEY([idProvincia])
REFERENCES [dbo].[Provincia] ([idProvincia])
GO
ALTER TABLE [dbo].[Tienda] CHECK CONSTRAINT [FK_Tienda_Provincia]
GO
ALTER TABLE [dbo].[Tienda]  WITH CHECK ADD  CONSTRAINT [FK_Tienda_Sector] FOREIGN KEY([idSector])
REFERENCES [dbo].[Sector] ([idSector])
GO
ALTER TABLE [dbo].[Tienda] CHECK CONSTRAINT [FK_Tienda_Sector]
GO
USE [master]
GO
ALTER DATABASE [DBShopNearby] SET  READ_WRITE 
GO
