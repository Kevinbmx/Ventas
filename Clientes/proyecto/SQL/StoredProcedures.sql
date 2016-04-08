
/******************************************************************************
******************************************************************************/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[sp_sysdiagramsInsert]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
	drop procedure [dbo].[sp_sysdiagramsInsert]
GO

CREATE PROCEDURE [dbo].[sp_sysdiagramsInsert]
(
	@name nvarchar(128),
	@principal_id int,
	@version int,
	@definition varbinary(-1)
)

AS

SET NOCOUNT ON

INSERT INTO [sysdiagrams]
(
	[name],
	[principal_id],
	[version],
	[definition]
)
VALUES
(
	@name,
	@principal_id,
	@version,
	@definition
)

SELECT CAST(scope_identity() AS int)
GO

/******************************************************************************
******************************************************************************/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[sp_sysdiagramsUpdate]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
	drop procedure [dbo].[sp_sysdiagramsUpdate]
GO

CREATE PROCEDURE [dbo].[sp_sysdiagramsUpdate]
(
	@name nvarchar(128),
	@principal_id int,
	@diagram_id int,
	@version int,
	@definition varbinary(-1)
)

AS

SET NOCOUNT ON

UPDATE [sysdiagrams]
SET [name] = @name,
	[principal_id] = @principal_id,
	[version] = @version,
	[definition] = @definition
WHERE [diagram_id] = @diagram_id
GO

/******************************************************************************
******************************************************************************/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[sp_sysdiagramsDelete]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
	drop procedure [dbo].[sp_sysdiagramsDelete]
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

/******************************************************************************
******************************************************************************/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[sp_sysdiagramsSelect]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
	drop procedure [dbo].[sp_sysdiagramsSelect]
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

/******************************************************************************
******************************************************************************/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[sp_sysdiagramsSelectAll]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
	drop procedure [dbo].[sp_sysdiagramsSelectAll]
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

/******************************************************************************
******************************************************************************/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[sp_tbl_clienteInsert]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
	drop procedure [dbo].[sp_tbl_clienteInsert]
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

/******************************************************************************
******************************************************************************/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[sp_tbl_clienteUpdate]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
	drop procedure [dbo].[sp_tbl_clienteUpdate]
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

/******************************************************************************
******************************************************************************/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[sp_tbl_clienteDelete]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
	drop procedure [dbo].[sp_tbl_clienteDelete]
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

/******************************************************************************
******************************************************************************/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[sp_tbl_clienteSelect]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
	drop procedure [dbo].[sp_tbl_clienteSelect]
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

/******************************************************************************
******************************************************************************/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[sp_tbl_clienteSelectAll]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
	drop procedure [dbo].[sp_tbl_clienteSelectAll]
GO

CREATE PROCEDURE [dbo].[sp_tbl_clienteSelectAll]

AS

SET NOCOUNT ON

SELECT [cliente_id],
	[nombre],
	[nit]
FROM [tbl_cliente]
GO

/******************************************************************************
******************************************************************************/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[sp_tbl_detalleVentaInsert]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
	drop procedure [dbo].[sp_tbl_detalleVentaInsert]
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

/******************************************************************************
******************************************************************************/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[sp_tbl_detalleVentaDeleteAllByProducto_id]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
	drop procedure [dbo].[sp_tbl_detalleVentaDeleteAllByProducto_id]
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

/******************************************************************************
******************************************************************************/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[sp_tbl_detalleVentaDeleteAllByVenta_id]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
	drop procedure [dbo].[sp_tbl_detalleVentaDeleteAllByVenta_id]
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

/******************************************************************************
******************************************************************************/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[sp_tbl_detalleVentaSelectAllByProducto_id]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
	drop procedure [dbo].[sp_tbl_detalleVentaSelectAllByProducto_id]
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

/******************************************************************************
******************************************************************************/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[sp_tbl_detalleVentaSelectAllByVenta_id]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
	drop procedure [dbo].[sp_tbl_detalleVentaSelectAllByVenta_id]
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

/******************************************************************************
******************************************************************************/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[sp_tbl_productoInsert]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
	drop procedure [dbo].[sp_tbl_productoInsert]
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

/******************************************************************************
******************************************************************************/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[sp_tbl_productoUpdate]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
	drop procedure [dbo].[sp_tbl_productoUpdate]
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

/******************************************************************************
******************************************************************************/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[sp_tbl_productoDelete]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
	drop procedure [dbo].[sp_tbl_productoDelete]
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

/******************************************************************************
******************************************************************************/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[sp_tbl_productoSelect]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
	drop procedure [dbo].[sp_tbl_productoSelect]
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

/******************************************************************************
******************************************************************************/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[sp_tbl_productoSelectAll]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
	drop procedure [dbo].[sp_tbl_productoSelectAll]
GO

CREATE PROCEDURE [dbo].[sp_tbl_productoSelectAll]

AS

SET NOCOUNT ON

SELECT [producto_id],
	[nombre],
	[precio]
FROM [tbl_producto]
GO

/******************************************************************************
******************************************************************************/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[sp_tbl_ventaInsert]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
	drop procedure [dbo].[sp_tbl_ventaInsert]
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

/******************************************************************************
******************************************************************************/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[sp_tbl_ventaUpdate]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
	drop procedure [dbo].[sp_tbl_ventaUpdate]
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

/******************************************************************************
******************************************************************************/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[sp_tbl_ventaDelete]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
	drop procedure [dbo].[sp_tbl_ventaDelete]
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

/******************************************************************************
******************************************************************************/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[sp_tbl_ventaDeleteAllByCliente_id]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
	drop procedure [dbo].[sp_tbl_ventaDeleteAllByCliente_id]
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

/******************************************************************************
******************************************************************************/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[sp_tbl_ventaSelect]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
	drop procedure [dbo].[sp_tbl_ventaSelect]
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

/******************************************************************************
******************************************************************************/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[sp_tbl_ventaSelectAll]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
	drop procedure [dbo].[sp_tbl_ventaSelectAll]
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

/******************************************************************************
******************************************************************************/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[sp_tbl_ventaSelectAllByCliente_id]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
	drop procedure [dbo].[sp_tbl_ventaSelectAllByCliente_id]
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
