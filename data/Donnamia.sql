USE [master]
GO
/****** Object:  Database [Donnamia]    Script Date: 13/10/2022 10:29:40 ******/
CREATE DATABASE [Donnamia]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Donnamia', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Donnamia.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Donnamia_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Donnamia_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Donnamia] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Donnamia].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Donnamia] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Donnamia] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Donnamia] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Donnamia] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Donnamia] SET ARITHABORT OFF 
GO
ALTER DATABASE [Donnamia] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Donnamia] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Donnamia] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Donnamia] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Donnamia] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Donnamia] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Donnamia] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Donnamia] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Donnamia] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Donnamia] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Donnamia] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Donnamia] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Donnamia] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Donnamia] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Donnamia] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Donnamia] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Donnamia] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Donnamia] SET RECOVERY FULL 
GO
ALTER DATABASE [Donnamia] SET  MULTI_USER 
GO
ALTER DATABASE [Donnamia] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Donnamia] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Donnamia] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Donnamia] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Donnamia] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Donnamia', N'ON'
GO
ALTER DATABASE [Donnamia] SET QUERY_STORE = OFF
GO
USE [Donnamia]
GO
/****** Object:  User [alumno]    Script Date: 13/10/2022 10:29:40 ******/
CREATE USER [alumno] FOR LOGIN [alumno] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[Categoria]    Script Date: 13/10/2022 10:29:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categoria](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[categoria] [varchar](255) NOT NULL,
 CONSTRAINT [PK_Categoria] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Compra]    Script Date: 13/10/2022 10:29:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Compra](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_usuario] [int] NOT NULL,
	[id_producto] [int] NOT NULL,
	[nombre] [varchar](255) NOT NULL,
	[apellido] [varchar](255) NOT NULL,
	[num_tarjeta] [varchar](255) NOT NULL,
	[fecha_vencimiento] [date] NOT NULL,
	[cod_seguridad] [varchar](3) NOT NULL,
 CONSTRAINT [PK_Compra] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Marca]    Script Date: 13/10/2022 10:29:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Marca](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[marca] [varchar](255) NOT NULL,
 CONSTRAINT [PK_Marca] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pais]    Script Date: 13/10/2022 10:29:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pais](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[pais] [varchar](255) NOT NULL,
 CONSTRAINT [PK_Pais] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Producto]    Script Date: 13/10/2022 10:29:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Producto](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](255) NOT NULL,
	[descripcion] [varchar](255) NOT NULL,
	[articulo] [varchar](50) NOT NULL,
	[id_categoria] [int] NOT NULL,
	[imagen] [varchar](255) NOT NULL,
	[precio] [real] NOT NULL,
	[color] [varchar](255) NOT NULL,
	[talle] [varchar](255) NOT NULL,
	[stock_actual] [int] NOT NULL,
	[id_marca] [int] NULL,
 CONSTRAINT [PK_Producto] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 13/10/2022 10:29:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuario](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[username] [varchar](255) NOT NULL,
	[nombre] [varchar](255) NOT NULL,
	[apellido] [varchar](255) NOT NULL,
	[dni] [varchar](8) NOT NULL,
	[fecha_nacimiento] [date] NOT NULL,
	[num_telefono] [varchar](8) NOT NULL,
	[email] [varchar](255) NOT NULL,
	[genero] [varchar](255) NOT NULL,
	[id_pais] [int] NOT NULL,
	[administrador] [bit] NOT NULL,
 CONSTRAINT [PK_Usuario] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Categoria] ON 

INSERT [dbo].[Categoria] ([id], [categoria]) VALUES (8, N'Pijamas Mujer')
INSERT [dbo].[Categoria] ([id], [categoria]) VALUES (9, N'Pijamas Hombre')
INSERT [dbo].[Categoria] ([id], [categoria]) VALUES (10, N'Pijamas Niños')
INSERT [dbo].[Categoria] ([id], [categoria]) VALUES (11, N'Pijamas Niñas')
INSERT [dbo].[Categoria] ([id], [categoria]) VALUES (12, N'Camisones/Remerones')
INSERT [dbo].[Categoria] ([id], [categoria]) VALUES (13, N'Batas')
INSERT [dbo].[Categoria] ([id], [categoria]) VALUES (14, N'Pantuflas')
INSERT [dbo].[Categoria] ([id], [categoria]) VALUES (15, N'Camisetas')
INSERT [dbo].[Categoria] ([id], [categoria]) VALUES (16, N'Monos/Enteritos')
INSERT [dbo].[Categoria] ([id], [categoria]) VALUES (17, N'Vestidos Playeros')
SET IDENTITY_INSERT [dbo].[Categoria] OFF
GO
SET IDENTITY_INSERT [dbo].[Marca] ON 

INSERT [dbo].[Marca] ([id], [marca]) VALUES (1, N'Donnamia')
INSERT [dbo].[Marca] ([id], [marca]) VALUES (2, N'Doncelle')
INSERT [dbo].[Marca] ([id], [marca]) VALUES (3, N'Luna')
SET IDENTITY_INSERT [dbo].[Marca] OFF
GO
SET IDENTITY_INSERT [dbo].[Pais] ON 

INSERT [dbo].[Pais] ([id], [pais]) VALUES (1, N'Argentina')
INSERT [dbo].[Pais] ([id], [pais]) VALUES (2, N'España')
INSERT [dbo].[Pais] ([id], [pais]) VALUES (3, N'Estados Unidos')
INSERT [dbo].[Pais] ([id], [pais]) VALUES (4, N'Colombia')
INSERT [dbo].[Pais] ([id], [pais]) VALUES (5, N'Brasil')
INSERT [dbo].[Pais] ([id], [pais]) VALUES (6, N'Ecuador')
INSERT [dbo].[Pais] ([id], [pais]) VALUES (7, N'Peru')
INSERT [dbo].[Pais] ([id], [pais]) VALUES (8, N'Brasil')
INSERT [dbo].[Pais] ([id], [pais]) VALUES (9, N'Bolivia')
INSERT [dbo].[Pais] ([id], [pais]) VALUES (10, N'Uruguay')
INSERT [dbo].[Pais] ([id], [pais]) VALUES (11, N'Paraguay')
INSERT [dbo].[Pais] ([id], [pais]) VALUES (12, N'Venezuela')
INSERT [dbo].[Pais] ([id], [pais]) VALUES (13, N'Canada')
INSERT [dbo].[Pais] ([id], [pais]) VALUES (14, N'Mexico')
INSERT [dbo].[Pais] ([id], [pais]) VALUES (15, N'Chile')
INSERT [dbo].[Pais] ([id], [pais]) VALUES (16, N'Francia')
INSERT [dbo].[Pais] ([id], [pais]) VALUES (17, N'Alemania')
INSERT [dbo].[Pais] ([id], [pais]) VALUES (18, N'Inglaterra')
INSERT [dbo].[Pais] ([id], [pais]) VALUES (19, N'Italia')
INSERT [dbo].[Pais] ([id], [pais]) VALUES (20, N'Portugal')
INSERT [dbo].[Pais] ([id], [pais]) VALUES (21, N'Israel')
INSERT [dbo].[Pais] ([id], [pais]) VALUES (22, N'Suiza')
INSERT [dbo].[Pais] ([id], [pais]) VALUES (23, N'Holanda')
INSERT [dbo].[Pais] ([id], [pais]) VALUES (24, N'Polonia')
INSERT [dbo].[Pais] ([id], [pais]) VALUES (25, N'China')
INSERT [dbo].[Pais] ([id], [pais]) VALUES (26, N'Japon')
INSERT [dbo].[Pais] ([id], [pais]) VALUES (27, N'Rusia')
INSERT [dbo].[Pais] ([id], [pais]) VALUES (28, N'Dinamarca')
INSERT [dbo].[Pais] ([id], [pais]) VALUES (29, N'Australia')
SET IDENTITY_INSERT [dbo].[Pais] OFF
GO
ALTER TABLE [dbo].[Compra]  WITH CHECK ADD  CONSTRAINT [FK_Compra_Producto] FOREIGN KEY([id_producto])
REFERENCES [dbo].[Producto] ([id])
GO
ALTER TABLE [dbo].[Compra] CHECK CONSTRAINT [FK_Compra_Producto]
GO
ALTER TABLE [dbo].[Compra]  WITH CHECK ADD  CONSTRAINT [FK_Compra_Usuario] FOREIGN KEY([id_usuario])
REFERENCES [dbo].[Usuario] ([id])
GO
ALTER TABLE [dbo].[Compra] CHECK CONSTRAINT [FK_Compra_Usuario]
GO
ALTER TABLE [dbo].[Producto]  WITH CHECK ADD  CONSTRAINT [FK_Producto_Categoria] FOREIGN KEY([id_categoria])
REFERENCES [dbo].[Categoria] ([id])
GO
ALTER TABLE [dbo].[Producto] CHECK CONSTRAINT [FK_Producto_Categoria]
GO
ALTER TABLE [dbo].[Producto]  WITH CHECK ADD  CONSTRAINT [FK_Producto_Marca] FOREIGN KEY([id_marca])
REFERENCES [dbo].[Marca] ([id])
GO
ALTER TABLE [dbo].[Producto] CHECK CONSTRAINT [FK_Producto_Marca]
GO
ALTER TABLE [dbo].[Usuario]  WITH CHECK ADD  CONSTRAINT [FK_Usuario_Pais] FOREIGN KEY([id_pais])
REFERENCES [dbo].[Pais] ([id])
GO
ALTER TABLE [dbo].[Usuario] CHECK CONSTRAINT [FK_Usuario_Pais]
GO
USE [master]
GO
ALTER DATABASE [Donnamia] SET  READ_WRITE 
GO
