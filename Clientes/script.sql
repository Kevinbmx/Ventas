USE [Clientes]
GO
/****** Object:  StoredProcedure [dbo].[sp_sysdiagramsDelete]    Script Date: 08/04/2016 03:20:24 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_sysdiagramsDelete]
(
	@diagram_id int
)

AS

SET NOCOUNT ON

DELETE FROM [sysdiagrams]
WHERE [diagram_id] = @diagram_id

GO
/****** Object:  StoredProcedure [dbo].[sp_sysdiagramsSelect]    Script Date: 08/04/2016 03:20:24 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_sysdiagramsSelect]
(
	@diagram_id int
)

AS

SET NOCOUNT ON

SELECT [name],
	[principal_id],
	[diagram_id],
	[version],
	[definition]
FROM [sysdiagrams]
WHERE [diagram_id] = @diagram_id

GO
/****** Object:  StoredProcedure [dbo].[sp_sysdiagramsSelectAll]    Script Date: 08/04/2016 03:20:24 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_sysdiagramsSelectAll]

AS

SET NOCOUNT ON

SELECT [name],
	[principal_id],
	[diagram_id],
	[version],
	[definition]
FROM [sysdiagrams]

GO
/****** Object:  StoredProcedure [dbo].[sp_tbl_clienteDelete]    Script Date: 08/04/2016 03:20:24 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_tbl_clienteDelete]
(
	@cliente_id int
)

AS

SET NOCOUNT ON

DELETE FROM [tbl_cliente]
WHERE [cliente_id] = @cliente_id

GO
/****** Object:  StoredProcedure [dbo].[sp_tbl_clienteInsert]    Script Date: 08/04/2016 03:20:24 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_tbl_clienteInsert]
(
	@nombre nchar(250),
	@nit int
)

AS

SET NOCOUNT ON

INSERT INTO [tbl_cliente]
(
	[nombre],
	[nit]
)
VALUES
(
	@nombre,
	@nit
)

SELECT CAST(scope_identity() AS int)

GO
/****** Object:  StoredProcedure [dbo].[sp_tbl_clienteSelect]    Script Date: 08/04/2016 03:20:24 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_tbl_clienteSelect]
(
	@cliente_id int
)

AS

SET NOCOUNT ON

SELECT [cliente_id],
	[nombre],
	[nit]
FROM [tbl_cliente]
WHERE [cliente_id] = @cliente_id

GO
/****** Object:  StoredProcedure [dbo].[sp_tbl_clienteSelectAll]    Script Date: 08/04/2016 03:20:24 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_tbl_clienteSelectAll]

AS

SET NOCOUNT ON

SELECT [cliente_id],
	[nombre],
	[nit]
FROM [tbl_cliente]

GO
/****** Object:  StoredProcedure [dbo].[sp_tbl_clienteUpdate]    Script Date: 08/04/2016 03:20:24 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_tbl_clienteUpdate]
(
	@cliente_id int,
	@nombre nchar(250),
	@nit int
)

AS

SET NOCOUNT ON

UPDATE [tbl_cliente]
SET [nombre] = @nombre,
	[nit] = @nit
WHERE [cliente_id] = @cliente_id

GO
/****** Object:  StoredProcedure [dbo].[sp_tbl_detalleVentaDeleteAllByProducto_id]    Script Date: 08/04/2016 03:20:24 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_tbl_detalleVentaDeleteAllByProducto_id]
(
	@producto_id int
)

AS

SET NOCOUNT ON

DELETE FROM [tbl_detalleVenta]
WHERE [producto_id] = @producto_id

GO
/****** Object:  StoredProcedure [dbo].[sp_tbl_detalleVentaDeleteAllByVenta_id]    Script Date: 08/04/2016 03:20:24 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_tbl_detalleVentaDeleteAllByVenta_id]
(
	@venta_id int
)

AS

SET NOCOUNT ON

DELETE FROM [tbl_detalleVenta]
WHERE [venta_id] = @venta_id

GO
/****** Object:  StoredProcedure [dbo].[sp_tbl_detalleVentaInsert]    Script Date: 08/04/2016 03:20:24 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_tbl_detalleVentaInsert]
(
	@venta_id int,
	@precio int,
	@cantidad int,
	@subtotal int,
	@producto_id int
)

AS

SET NOCOUNT ON

INSERT INTO [tbl_detalleVenta]
(
	[venta_id],
	[precio],
	[cantidad],
	[subtotal],
	[producto_id]
)
VALUES
(
	@venta_id,
	@precio,
	@cantidad,
	@subtotal,
	@producto_id
)

GO
/****** Object:  StoredProcedure [dbo].[sp_tbl_detalleVentaSelectAllByProducto_id]    Script Date: 08/04/2016 03:20:24 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_tbl_detalleVentaSelectAllByProducto_id]
(
	@producto_id int
)

AS

SET NOCOUNT ON

SELECT [venta_id],
	[precio],
	[cantidad],
	[subtotal],
	[producto_id]
FROM [tbl_detalleVenta]
WHERE [producto_id] = @producto_id

GO
/****** Object:  StoredProcedure [dbo].[sp_tbl_detalleVentaSelectAllByVenta_id]    Script Date: 08/04/2016 03:20:24 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_tbl_detalleVentaSelectAllByVenta_id]
(
	@venta_id int
)

AS

SET NOCOUNT ON

SELECT [venta_id],
	[precio],
	[cantidad],
	[subtotal],
	[producto_id]
FROM [tbl_detalleVenta]
WHERE [venta_id] = @venta_id

GO
/****** Object:  StoredProcedure [dbo].[sp_tbl_productoDelete]    Script Date: 08/04/2016 03:20:24 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_tbl_productoDelete]
(
	@producto_id int
)

AS

SET NOCOUNT ON

DELETE FROM [tbl_producto]
WHERE [producto_id] = @producto_id

GO
/****** Object:  StoredProcedure [dbo].[sp_tbl_productoInsert]    Script Date: 08/04/2016 03:20:24 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_tbl_productoInsert]
(
	@nombre nvarchar(250),
	@precio int
)

AS

SET NOCOUNT ON

INSERT INTO [tbl_producto]
(
	[nombre],
	[precio]
)
VALUES
(
	@nombre,
	@precio
)

SELECT CAST(scope_identity() AS int)

GO
/****** Object:  StoredProcedure [dbo].[sp_tbl_productoSelect]    Script Date: 08/04/2016 03:20:24 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_tbl_productoSelect]
(
	@producto_id int
)

AS

SET NOCOUNT ON

SELECT [producto_id],
	[nombre],
	[precio]
FROM [tbl_producto]
WHERE [producto_id] = @producto_id

GO
/****** Object:  StoredProcedure [dbo].[sp_tbl_productoSelectAll]    Script Date: 08/04/2016 03:20:24 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_tbl_productoSelectAll]

AS

SET NOCOUNT ON

SELECT [producto_id],
	[nombre],
	[precio]
FROM [tbl_producto]

GO
/****** Object:  StoredProcedure [dbo].[sp_tbl_productoUpdate]    Script Date: 08/04/2016 03:20:24 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_tbl_productoUpdate]
(
	@producto_id int,
	@nombre nvarchar(250),
	@precio int
)

AS

SET NOCOUNT ON

UPDATE [tbl_producto]
SET [nombre] = @nombre,
	[precio] = @precio
WHERE [producto_id] = @producto_id

GO
/****** Object:  StoredProcedure [dbo].[sp_tbl_ventaDelete]    Script Date: 08/04/2016 03:20:24 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_tbl_ventaDelete]
(
	@venta_id int
)

AS

SET NOCOUNT ON

DELETE FROM [tbl_venta]
WHERE [venta_id] = @venta_id

GO
/****** Object:  StoredProcedure [dbo].[sp_tbl_ventaDeleteAllByCliente_id]    Script Date: 08/04/2016 03:20:24 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_tbl_ventaDeleteAllByCliente_id]
(
	@cliente_id int
)

AS

SET NOCOUNT ON

DELETE FROM [tbl_venta]
WHERE [cliente_id] = @cliente_id

GO
/****** Object:  StoredProcedure [dbo].[sp_tbl_ventaInsert]    Script Date: 08/04/2016 03:20:24 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_tbl_ventaInsert]
(
	@fecha varchar(50),
	@total int,
	@cliente_id int
)

AS

SET NOCOUNT ON

INSERT INTO [tbl_venta]
(
	[fecha],
	[total],
	[cliente_id]
)
VALUES
(
	@fecha,
	@total,
	@cliente_id
)

SELECT CAST(scope_identity() AS int)

GO
/****** Object:  StoredProcedure [dbo].[sp_tbl_ventaSelect]    Script Date: 08/04/2016 03:20:24 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_tbl_ventaSelect]
(
	@venta_id int
)

AS

SET NOCOUNT ON

SELECT [venta_id],
	[fecha],
	[total],
	[cliente_id]
FROM [tbl_venta]
WHERE [venta_id] = @venta_id

GO
/****** Object:  StoredProcedure [dbo].[sp_tbl_ventaSelectAll]    Script Date: 08/04/2016 03:20:24 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_tbl_ventaSelectAll]

AS

SET NOCOUNT ON

SELECT [venta_id],
	[fecha],
	[total],
	[cliente_id]
FROM [tbl_venta]

GO
/****** Object:  StoredProcedure [dbo].[sp_tbl_ventaSelectAllByCliente_id]    Script Date: 08/04/2016 03:20:24 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_tbl_ventaSelectAllByCliente_id]
(
	@cliente_id int
)

AS

SET NOCOUNT ON

SELECT [venta_id],
	[fecha],
	[total],
	[cliente_id]
FROM [tbl_venta]
WHERE [cliente_id] = @cliente_id

GO
/****** Object:  StoredProcedure [dbo].[sp_tbl_ventaUpdate]    Script Date: 08/04/2016 03:20:24 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_tbl_ventaUpdate]
(
	@venta_id int,
	@fecha varchar(50),
	@total int,
	@cliente_id int
)

AS

SET NOCOUNT ON

UPDATE [tbl_venta]
SET [fecha] = @fecha,
	[total] = @total,
	[cliente_id] = @cliente_id
WHERE [venta_id] = @venta_id

GO
/****** Object:  StoredProcedure [dbo].[usp_actualizarContacto]    Script Date: 08/04/2016 03:20:24 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Kevin Delgadillo Salazar
-- Create date: 07/04/2016
-- Description:	actualiza un cliente
-- =============================================
CREATE PROCEDURE [dbo].[usp_actualizarContacto]
	@varNombre			NVARCHAR(250),
	@intNit				INT,
	
	@intClienteId		INT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	UPDATE	 [dbo].[tbl_cliente]
		SET	 [nombre] = @varNombre
			,[nit] =@intNit
			
	WHERE	 [cliente_id]=@intClienteId


   END

GO
/****** Object:  StoredProcedure [dbo].[usp_eliminarContacto]    Script Date: 08/04/2016 03:20:24 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Kevin Delgadillo Salazar
-- Create date: 07/04/2016
-- Description:	eliminar un cliente
-- =============================================
CREATE PROCEDURE [dbo].[usp_eliminarContacto]
	
	@intClienteId		INT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	DELETE FROM	 [dbo].[tbl_cliente]
		
	WHERE	 [cliente_id]=@intClienteId


   END

GO
/****** Object:  StoredProcedure [dbo].[usp_GetContacto]    Script Date: 08/04/2016 03:20:24 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Kevin Delgadillo Salazar
-- Create date: 07/04/2016
-- Description:	Obtiene un cliente
-- =============================================
CREATE PROCEDURE [dbo].[usp_GetContacto]
	
	@intClienteId		INT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	SELECT	 [cliente_id],
			 [nombre],
			 [nit],
			 [direccion]
	FROM	 [dbo].[tbl_cliente]
	WHERE	 [cliente_id]=@intClienteId


   END

GO
/****** Object:  StoredProcedure [dbo].[usp_GetContactolista]    Script Date: 08/04/2016 03:20:24 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Kevin Delgadillo Salazar
-- Create date: 07/04/2016
-- Description:	Obtiene una lista del cliente
-- =============================================
CREATE PROCEDURE [dbo].[usp_GetContactolista]
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	SELECT	 [cliente_id],
			 [nombre],
			 [nit]
			
	FROM	 [dbo].[tbl_cliente]


   END

GO
/****** Object:  StoredProcedure [dbo].[usp_InsertarContacto]    Script Date: 08/04/2016 03:20:24 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Kevin Delgadillo Salazar
-- Create date: 07/04/2016
-- Description:	imsertar cliente
-- =============================================
CREATE PROCEDURE [dbo].[usp_InsertarContacto]
	@varNombre		NVARCHAR(250),
	@intNit			INT,
	
	@intClienteId	INT OUTPUT

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	INSERT INTO [dbo].[tbl_cliente]

			
			 ([nombre],
			 [nit])
	VALUES	 
			(@varNombre,
			@intNit)
	SET @intClienteId = SCOPE_IDENTITY()
   END

GO
/****** Object:  Table [dbo].[tbl_cliente]    Script Date: 08/04/2016 03:20:24 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_cliente](
	[cliente_id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [nchar](250) NOT NULL,
	[nit] [int] NOT NULL,
 CONSTRAINT [PK_tbl_cliente] PRIMARY KEY CLUSTERED 
(
	[cliente_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_detalleVenta]    Script Date: 08/04/2016 03:20:24 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_detalleVenta](
	[venta_id] [int] NOT NULL,
	[precio] [int] NOT NULL,
	[cantidad] [int] NOT NULL,
	[subtotal] [int] NOT NULL,
	[producto_id] [int] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_producto]    Script Date: 08/04/2016 03:20:24 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_producto](
	[producto_id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [nvarchar](250) NOT NULL,
	[precio] [int] NOT NULL,
 CONSTRAINT [PK_tbl_producto] PRIMARY KEY CLUSTERED 
(
	[producto_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_venta]    Script Date: 08/04/2016 03:20:24 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_venta](
	[venta_id] [int] IDENTITY(1,1) NOT NULL,
	[fecha] [varchar](50) NOT NULL,
	[total] [int] NOT NULL,
	[cliente_id] [int] NOT NULL,
 CONSTRAINT [PK_tbl_venta] PRIMARY KEY CLUSTERED 
(
	[venta_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[tbl_detalleVenta]  WITH CHECK ADD  CONSTRAINT [FK_tbl_detalleVenta_tbl_producto] FOREIGN KEY([producto_id])
REFERENCES [dbo].[tbl_producto] ([producto_id])
GO
ALTER TABLE [dbo].[tbl_detalleVenta] CHECK CONSTRAINT [FK_tbl_detalleVenta_tbl_producto]
GO
ALTER TABLE [dbo].[tbl_detalleVenta]  WITH CHECK ADD  CONSTRAINT [FK_tbl_detalleVenta_tbl_venta] FOREIGN KEY([venta_id])
REFERENCES [dbo].[tbl_venta] ([venta_id])
GO
ALTER TABLE [dbo].[tbl_detalleVenta] CHECK CONSTRAINT [FK_tbl_detalleVenta_tbl_venta]
GO
ALTER TABLE [dbo].[tbl_venta]  WITH CHECK ADD  CONSTRAINT [FK_tbl_venta_tbl_cliente] FOREIGN KEY([cliente_id])
REFERENCES [dbo].[tbl_cliente] ([cliente_id])
GO
ALTER TABLE [dbo].[tbl_venta] CHECK CONSTRAINT [FK_tbl_venta_tbl_cliente]
GO
