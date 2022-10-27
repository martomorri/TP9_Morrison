USE [master]
GO
/****** Object:  Database [Donnamia]    Script Date: 27/10/2022 11:30:42 ******/
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
/****** Object:  User [alumno]    Script Date: 27/10/2022 11:30:42 ******/
CREATE USER [alumno] FOR LOGIN [alumno] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[Categoria]    Script Date: 27/10/2022 11:30:42 ******/
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
/****** Object:  Table [dbo].[Compra]    Script Date: 27/10/2022 11:30:42 ******/
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
/****** Object:  Table [dbo].[Genero]    Script Date: 27/10/2022 11:30:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Genero](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[genero] [varchar](255) NOT NULL,
 CONSTRAINT [PK_Genero] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Marca]    Script Date: 27/10/2022 11:30:42 ******/
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
/****** Object:  Table [dbo].[Pais]    Script Date: 27/10/2022 11:30:42 ******/
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
/****** Object:  Table [dbo].[Producto]    Script Date: 27/10/2022 11:30:42 ******/
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
	[imagen] [varchar](max) NOT NULL,
	[precio] [real] NOT NULL,
	[color] [varchar](255) NOT NULL,
	[talle] [varchar](255) NOT NULL,
	[stock_actual] [int] NOT NULL,
	[id_marca] [int] NOT NULL,
 CONSTRAINT [PK_Producto] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 27/10/2022 11:30:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuario](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[username] [varchar](255) NOT NULL,
	[password] [varchar](255) NOT NULL,
	[nombre] [varchar](255) NOT NULL,
	[apellido] [varchar](255) NOT NULL,
	[dni] [varchar](8) NOT NULL,
	[fecha_nacimiento] [date] NOT NULL,
	[foto_perfil] [varchar](max) NOT NULL,
	[num_telefono] [varchar](8) NOT NULL,
	[email] [varchar](255) NOT NULL,
	[id_genero] [int] NOT NULL,
	[id_pais] [int] NOT NULL,
	[administrador] [bit] NOT NULL,
 CONSTRAINT [PK_Usuario] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Categoria] ON 

INSERT [dbo].[Categoria] ([id], [categoria]) VALUES (8, N'Pijamas')
INSERT [dbo].[Categoria] ([id], [categoria]) VALUES (12, N'Camisones y Remerones')
INSERT [dbo].[Categoria] ([id], [categoria]) VALUES (13, N'Batas')
INSERT [dbo].[Categoria] ([id], [categoria]) VALUES (14, N'Pantuflas')
INSERT [dbo].[Categoria] ([id], [categoria]) VALUES (15, N'Camisetas')
INSERT [dbo].[Categoria] ([id], [categoria]) VALUES (16, N'Monos y Enteritos')
INSERT [dbo].[Categoria] ([id], [categoria]) VALUES (17, N'Vestidos Playeros')
SET IDENTITY_INSERT [dbo].[Categoria] OFF
GO
SET IDENTITY_INSERT [dbo].[Genero] ON 

INSERT [dbo].[Genero] ([id], [genero]) VALUES (1, N'Masculino')
INSERT [dbo].[Genero] ([id], [genero]) VALUES (2, N'Femenino')
INSERT [dbo].[Genero] ([id], [genero]) VALUES (3, N'Personalizado')
INSERT [dbo].[Genero] ([id], [genero]) VALUES (4, N'Prefiero no decirlo')
SET IDENTITY_INSERT [dbo].[Genero] OFF
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
ALTER TABLE [dbo].[Usuario]  WITH CHECK ADD  CONSTRAINT [FK_Usuario_Genero] FOREIGN KEY([id_genero])
REFERENCES [dbo].[Genero] ([id])
GO
ALTER TABLE [dbo].[Usuario] CHECK CONSTRAINT [FK_Usuario_Genero]
GO
ALTER TABLE [dbo].[Usuario]  WITH CHECK ADD  CONSTRAINT [FK_Usuario_Pais] FOREIGN KEY([id_pais])
REFERENCES [dbo].[Pais] ([id])
GO
ALTER TABLE [dbo].[Usuario] CHECK CONSTRAINT [FK_Usuario_Pais]
GO
/****** Object:  StoredProcedure [dbo].[CargarProducto]    Script Date: 27/10/2022 11:30:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CargarProducto]
	@nombre varchar(255), @descripcion varchar(255), @articulo varchar(50), @id_categoria int, @imagen varchar(MAX), @precio real, @color varchar(255), @talle varchar(255), @stock_actual int, @id_marca int
AS
BEGIN
	INSERT INTO Producto (nombre, descripcion, articulo, id_categoria, imagen, precio, color, talle, stock_actual, id_marca) VALUES (@nombre, @descripcion, @articulo, @id_categoria, @imagen, @precio, @color, @talle, @stock_actual, @id_marca)
END
GO
/****** Object:  StoredProcedure [dbo].[CargarUsuario]    Script Date: 27/10/2022 11:30:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CargarUsuario]
	@username varchar(255),
	@password varchar(255),
	@nombre varchar(255),
	@apellido varchar(255),
	@dni varchar(8),
	@fecha_nacimiento date,
	@foto_perfil varchar(MAX),
	@num_telefono varchar(8),
	@email varchar(255),
	@id_genero int,
	@id_pais int,
	@administrador bit
AS
BEGIN
	INSERT INTO Usuario (username, [password], nombre, apellido, dni, fecha_nacimiento, foto_perfil, num_telefono, email, id_genero, id_pais, administrador) VALUES (@username, @password, @nombre, @apellido, @dni, @fecha_nacimiento, @foto_perfil, @num_telefono, @email, @id_genero, @id_pais, @administrador)
END
GO
/****** Object:  StoredProcedure [dbo].[ComprarProducto]    Script Date: 27/10/2022 11:30:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ComprarProducto]
	@id_usuario int, @id_producto int, @nombre varchar(255), @apellido varchar(255), @num_tarjeta varchar(255), @fecha_vencimiento date, @cod_seguridad varchar(255)
AS
BEGIN
	INSERT INTO Compra (id_usuario, id_producto, nombre, apellido, num_tarjeta, fecha_vencimiento, cod_seguridad) VALUES (@id_usuario, @id_producto, @nombre, @apellido, @num_tarjeta, @fecha_vencimiento , @cod_seguridad)
END
GO
/****** Object:  StoredProcedure [dbo].[EliminarProducto]    Script Date: 27/10/2022 11:30:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[EliminarProducto] 
	@id_producto int
AS
BEGIN
	DELETE FROM Producto WHERE id = @id_producto
END
GO
/****** Object:  StoredProcedure [dbo].[ListarCategorias]    Script Date: 27/10/2022 11:30:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ListarCategorias]
AS
BEGIN
	SELECT * FROM Categoria
END
GO
/****** Object:  StoredProcedure [dbo].[ListarPaises]    Script Date: 27/10/2022 11:30:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ListarPaises]
AS
BEGIN
	SELECT pais FROM Pais
END
GO
/****** Object:  StoredProcedure [dbo].[ListarProductos]    Script Date: 27/10/2022 11:30:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ListarProductos]
AS
BEGIN
	SELECT * FROM Producto
END
GO
/****** Object:  StoredProcedure [dbo].[ListarProductosXCategoria]    Script Date: 27/10/2022 11:30:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ListarProductosXCategoria]
	@id_categoria int
AS
BEGIN
	SELECT P.*, C.categoria, M.marca FROM Producto P
	INNER JOIN Categoria C ON C.id = P.id_categoria
	INNER JOIN Marca M ON M.id = P.id_marca
	WHERE id_categoria = @id_categoria
END
GO
/****** Object:  StoredProcedure [dbo].[ListarProductoXID]    Script Date: 27/10/2022 11:30:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ListarProductoXID]
	@id_producto int
AS
BEGIN
	SELECT P.*, C.categoria, M.marca FROM Producto P
	INNER JOIN Categoria C ON C.id = P.id_categoria
	INNER JOIN Marca M ON M.id = P.id_marca
	WHERE P.id = @id_producto
END
GO
/****** Object:  StoredProcedure [dbo].[ListarUsuarioXID]    Script Date: 27/10/2022 11:30:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ListarUsuarioXID]
	@id_usuario int
AS
BEGIN
	SELECT U.*, P.pais, G.genero FROM Usuario U
	INNER JOIN Pais P ON P.id = U.id_pais
	INNER JOIN Genero G ON G.id = U.id_genero
	WHERE U.id = @id_usuario
END
GO
/****** Object:  StoredProcedure [dbo].[VerificarLogin]    Script Date: 27/10/2022 11:30:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[VerificarLogin]
	@username varchar(255), @password varchar(255)
AS
BEGIN
	SELECT CASE
		WHEN @username IN (SELECT username FROM Usuario) AND @password = (SELECT [password] FROM Usuario WHERE username = @username) THEN '1'
		ELSE '0' END
	FROM Usuario
END
GO
USE [master]
GO
ALTER DATABASE [Donnamia] SET  READ_WRITE 
GO
