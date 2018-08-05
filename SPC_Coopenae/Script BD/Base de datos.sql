USE [SPC]
GO
/****** Object:  Table [dbo].[DetalleEscala]    Script Date: 4/8/2018 19:27:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DetalleEscala](
	[IdDetalleEscala] [int] IDENTITY(1,1) NOT NULL,
	[Escala] [int] NOT NULL,
	[PCTMinimo] [int] NOT NULL,
	[PCTMaximo] [int] NOT NULL,
	[PCTComision] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_DetalleEscala] PRIMARY KEY CLUSTERED 
(
	[IdDetalleEscala] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DetalleInicio]    Script Date: 4/8/2018 19:27:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DetalleInicio](
	[IdDetalleInicio] [int] IDENTITY(1,1) NOT NULL,
	[MesesDuracion] [int] NOT NULL,
	[SalarioInicio] [decimal](18, 2) NOT NULL,
	[Bono] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_DetalleInicio] PRIMARY KEY CLUSTERED 
(
	[IdDetalleInicio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ejecutivo]    Script Date: 4/8/2018 19:27:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ejecutivo](
	[Cedula] [int] NOT NULL,
	[CodigoVendedor] [varchar](50) NOT NULL,
	[Nombre] [varchar](100) NOT NULL,
	[Apellidos] [varchar](100) NOT NULL,
	[Telefono] [int] NOT NULL,
	[Correo] [varchar](100) NOT NULL,
	[FechaNacimiento] [date] NOT NULL,
	[FechaContratacion] [date] NOT NULL,
	[Estado] [bit] NOT NULL,
	[UnidadNegocio] [int] NOT NULL,
 CONSTRAINT [PK_Vendedor] PRIMARY KEY CLUSTERED 
(
	[Cedula] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Escala]    Script Date: 4/8/2018 19:27:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Escala](
	[IdEscala] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](50) NOT NULL,
	[Estado] [bit] NOT NULL,
 CONSTRAINT [PK_Escala] PRIMARY KEY CLUSTERED 
(
	[IdEscala] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Meta]    Script Date: 4/8/2018 19:27:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Meta](
	[IdMeta] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](50) NOT NULL,
	[Estado] [bit] NOT NULL,
	[Escala] [int] NOT NULL,
	[Salario] [int] NOT NULL,
 CONSTRAINT [PK_Meta] PRIMARY KEY CLUSTERED 
(
	[IdMeta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MetaCDP]    Script Date: 4/8/2018 19:27:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MetaCDP](
	[IdMetaCDP] [int] IDENTITY(1,1) NOT NULL,
	[MetaCDP] [decimal](18, 2) NOT NULL,
	[ValorIDP] [decimal](18, 2) NOT NULL,
	[Meta] [int] NOT NULL,
 CONSTRAINT [PK_MetaCDP] PRIMARY KEY CLUSTERED 
(
	[IdMetaCDP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MetaCredito]    Script Date: 4/8/2018 19:27:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MetaCredito](
	[IdMetaCredito] [int] IDENTITY(1,1) NOT NULL,
	[MetaColocacion] [decimal](18, 2) NOT NULL,
	[ValorIDP] [decimal](18, 2) NOT NULL,
	[Meta] [int] NOT NULL,
 CONSTRAINT [PK_DetalleMeta] PRIMARY KEY CLUSTERED 
(
	[IdMetaCredito] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MetaTipoProducto]    Script Date: 4/8/2018 19:27:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MetaTipoProducto](
	[IdMetaTipoProducto] [int] IDENTITY(1,1) NOT NULL,
	[MetaCantidad] [int] NOT NULL,
	[ValorIDP] [decimal](18, 2) NOT NULL,
	[Meta] [int] NOT NULL,
 CONSTRAINT [PK_MetaProducto] PRIMARY KEY CLUSTERED 
(
	[IdMetaTipoProducto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MetaTipoProductoDetalle]    Script Date: 4/8/2018 19:27:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MetaTipoProductoDetalle](
	[MetaTipoProducto] [int] NOT NULL,
	[TipoProducto] [int] NOT NULL,
 CONSTRAINT [PK_MetaProductoDetalle_1] PRIMARY KEY CLUSTERED 
(
	[MetaTipoProducto] ASC,
	[TipoProducto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Producto]    Script Date: 4/8/2018 19:27:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Producto](
	[IdProducto] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](200) NOT NULL,
	[Comision] [decimal](18, 2) NOT NULL,
	[Estado] [bit] NOT NULL,
	[TipoProducto] [int] NOT NULL,
 CONSTRAINT [PK_Producto] PRIMARY KEY CLUSTERED 
(
	[IdProducto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Salario]    Script Date: 4/8/2018 19:27:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Salario](
	[IdSalario] [int] IDENTITY(1,1) NOT NULL,
	[Base] [decimal](18, 2) NOT NULL,
	[DetalleInicio] [int] NOT NULL,
	[Descripcion] [varchar](100) NOT NULL,
	[Estado] [bit] NOT NULL,
 CONSTRAINT [PK_Salario] PRIMARY KEY CLUSTERED 
(
	[IdSalario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoCambio]    Script Date: 4/8/2018 19:27:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoCambio](
	[IdTipoCambio] [int] IDENTITY(1,1) NOT NULL,
	[Valor] [decimal](18, 2) NOT NULL,
	[Fecha] [date] NOT NULL,
	[Estado] [bit] NOT NULL,
 CONSTRAINT [PK_TipoCambio] PRIMARY KEY CLUSTERED 
(
	[IdTipoCambio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoCDP]    Script Date: 4/8/2018 19:27:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoCDP](
	[IdTipoCDP] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](100) NOT NULL,
	[Moneda] [char](1) NOT NULL,
	[ComisionMaxima] [decimal](18, 2) NOT NULL,
	[PlazoMesesMaximo] [int] NOT NULL,
	[Estado] [bit] NOT NULL,
 CONSTRAINT [PK_TipoCDP] PRIMARY KEY CLUSTERED 
(
	[IdTipoCDP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoCredito]    Script Date: 4/8/2018 19:27:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoCredito](
	[IdTipoCredito] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](100) NOT NULL,
	[ComisionDistinta] [decimal](18, 2) NOT NULL,
	[MaximoComision] [decimal](18, 2) NOT NULL,
	[SumaIDP] [bit] NOT NULL,
	[Estado] [bit] NOT NULL,
 CONSTRAINT [PK_TipoCredito] PRIMARY KEY CLUSTERED 
(
	[IdTipoCredito] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoProducto]    Script Date: 4/8/2018 19:27:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoProducto](
	[IdTipoProducto] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](20) NOT NULL,
	[Moneda] [char](1) NOT NULL,
	[Estado] [bit] NOT NULL,
 CONSTRAINT [PK_TipoProducto] PRIMARY KEY CLUSTERED 
(
	[IdTipoProducto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UnidadNegocio]    Script Date: 4/8/2018 19:27:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UnidadNegocio](
	[IdUnidad] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nchar](10) NOT NULL,
	[Estado] [bit] NOT NULL,
	[Meta] [int] NOT NULL,
 CONSTRAINT [PK_UnidadNegocio] PRIMARY KEY CLUSTERED 
(
	[IdUnidad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VentaCDP]    Script Date: 4/8/2018 19:27:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VentaCDP](
	[IdVentaCDP] [int] IDENTITY(1,1) NOT NULL,
	[Ejecutivo] [int] NOT NULL,
	[Fecha] [datetime] NOT NULL,
	[Cedula] [int] NOT NULL,
	[Nombre] [varchar](500) NOT NULL,
	[CentroTrabajo] [varchar](200) NOT NULL,
	[Monto] [decimal](18, 2) NOT NULL,
	[PlazoMeses] [int] NOT NULL,
	[Periocidad] [int] NOT NULL,
	[Tasa] [decimal](18, 2) NULL,
	[SobreTasa] [decimal](18, 2) NULL,
	[Estado] [bit] NOT NULL,
	[TipoCDP] [int] NOT NULL,
 CONSTRAINT [PK_VentaCDP] PRIMARY KEY CLUSTERED 
(
	[IdVentaCDP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VentaCredito]    Script Date: 4/8/2018 19:27:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VentaCredito](
	[IdVentaCredito] [int] IDENTITY(1,1) NOT NULL,
	[Ejecutivo] [int] NOT NULL,
	[Fecha] [datetime] NOT NULL,
	[Cedula] [int] NOT NULL,
	[Nombre] [varchar](500) NOT NULL,
	[CentroTrabajo] [varchar](200) NOT NULL,
	[FechaAfiliacion] [date] NOT NULL,
	[NumeroOperacion] [int] NOT NULL,
	[Monto] [decimal](18, 2) NOT NULL,
	[PlazoMeses] [int] NOT NULL,
	[Estado] [bit] NOT NULL,
	[TipoCredito] [int] NOT NULL,
 CONSTRAINT [PK_VentaCredito] PRIMARY KEY CLUSTERED 
(
	[IdVentaCredito] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VentaProducto]    Script Date: 4/8/2018 19:27:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VentaProducto](
	[IdVentaProducto] [int] IDENTITY(1,1) NOT NULL,
	[Ejecutivo] [int] NOT NULL,
	[Fecha] [datetime] NOT NULL,
	[Cedula] [int] NOT NULL,
	[Nombre] [varchar](500) NOT NULL,
	[CentroTrabajo] [varchar](200) NOT NULL,
	[Producto] [int] NOT NULL,
	[Estado] [bit] NOT NULL,
 CONSTRAINT [PK_VentaProducto] PRIMARY KEY CLUSTERED 
(
	[IdVentaProducto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DetalleEscala]  WITH CHECK ADD  CONSTRAINT [FK_DetalleEscala_Escala] FOREIGN KEY([Escala])
REFERENCES [dbo].[Escala] ([IdEscala])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[DetalleEscala] CHECK CONSTRAINT [FK_DetalleEscala_Escala]
GO
ALTER TABLE [dbo].[Ejecutivo]  WITH CHECK ADD  CONSTRAINT [FK_Vendedor_UnidadNegocio] FOREIGN KEY([UnidadNegocio])
REFERENCES [dbo].[UnidadNegocio] ([IdUnidad])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Ejecutivo] CHECK CONSTRAINT [FK_Vendedor_UnidadNegocio]
GO
ALTER TABLE [dbo].[Meta]  WITH CHECK ADD  CONSTRAINT [FK_Meta_Escala] FOREIGN KEY([Escala])
REFERENCES [dbo].[Escala] ([IdEscala])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Meta] CHECK CONSTRAINT [FK_Meta_Escala]
GO
ALTER TABLE [dbo].[Meta]  WITH CHECK ADD  CONSTRAINT [FK_Meta_Salario] FOREIGN KEY([Salario])
REFERENCES [dbo].[Salario] ([IdSalario])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Meta] CHECK CONSTRAINT [FK_Meta_Salario]
GO
ALTER TABLE [dbo].[MetaCDP]  WITH CHECK ADD  CONSTRAINT [FK_MetaCDP_Meta1] FOREIGN KEY([Meta])
REFERENCES [dbo].[Meta] ([IdMeta])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[MetaCDP] CHECK CONSTRAINT [FK_MetaCDP_Meta1]
GO
ALTER TABLE [dbo].[MetaCredito]  WITH CHECK ADD  CONSTRAINT [FK_MetaCredito_Meta1] FOREIGN KEY([Meta])
REFERENCES [dbo].[Meta] ([IdMeta])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[MetaCredito] CHECK CONSTRAINT [FK_MetaCredito_Meta1]
GO
ALTER TABLE [dbo].[MetaTipoProducto]  WITH CHECK ADD  CONSTRAINT [FK_MetaTipoProducto_Meta] FOREIGN KEY([Meta])
REFERENCES [dbo].[Meta] ([IdMeta])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[MetaTipoProducto] CHECK CONSTRAINT [FK_MetaTipoProducto_Meta]
GO
ALTER TABLE [dbo].[MetaTipoProductoDetalle]  WITH CHECK ADD  CONSTRAINT [FK_MetaProductoDetalle_MetaTipoProducto] FOREIGN KEY([MetaTipoProducto])
REFERENCES [dbo].[MetaTipoProducto] ([IdMetaTipoProducto])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[MetaTipoProductoDetalle] CHECK CONSTRAINT [FK_MetaProductoDetalle_MetaTipoProducto]
GO
ALTER TABLE [dbo].[MetaTipoProductoDetalle]  WITH CHECK ADD  CONSTRAINT [FK_MetaProductoDetalle_TipoProducto] FOREIGN KEY([TipoProducto])
REFERENCES [dbo].[TipoProducto] ([IdTipoProducto])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[MetaTipoProductoDetalle] CHECK CONSTRAINT [FK_MetaProductoDetalle_TipoProducto]
GO
ALTER TABLE [dbo].[Producto]  WITH CHECK ADD  CONSTRAINT [FK_Producto_TipoProducto] FOREIGN KEY([TipoProducto])
REFERENCES [dbo].[TipoProducto] ([IdTipoProducto])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Producto] CHECK CONSTRAINT [FK_Producto_TipoProducto]
GO
ALTER TABLE [dbo].[Salario]  WITH CHECK ADD  CONSTRAINT [FK_Salario_DetalleInicio] FOREIGN KEY([DetalleInicio])
REFERENCES [dbo].[DetalleInicio] ([IdDetalleInicio])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Salario] CHECK CONSTRAINT [FK_Salario_DetalleInicio]
GO
ALTER TABLE [dbo].[UnidadNegocio]  WITH CHECK ADD  CONSTRAINT [FK_UnidadNegocio_Meta] FOREIGN KEY([Meta])
REFERENCES [dbo].[Meta] ([IdMeta])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[UnidadNegocio] CHECK CONSTRAINT [FK_UnidadNegocio_Meta]
GO
ALTER TABLE [dbo].[VentaCDP]  WITH CHECK ADD  CONSTRAINT [FK_VentaCDP_TipoCDP] FOREIGN KEY([TipoCDP])
REFERENCES [dbo].[TipoCDP] ([IdTipoCDP])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[VentaCDP] CHECK CONSTRAINT [FK_VentaCDP_TipoCDP]
GO
ALTER TABLE [dbo].[VentaCDP]  WITH CHECK ADD  CONSTRAINT [FK_VentaCDP_Vendedor] FOREIGN KEY([Ejecutivo])
REFERENCES [dbo].[Ejecutivo] ([Cedula])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[VentaCDP] CHECK CONSTRAINT [FK_VentaCDP_Vendedor]
GO
ALTER TABLE [dbo].[VentaCredito]  WITH CHECK ADD  CONSTRAINT [FK_VentaCredito_TipoCredito] FOREIGN KEY([TipoCredito])
REFERENCES [dbo].[TipoCredito] ([IdTipoCredito])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[VentaCredito] CHECK CONSTRAINT [FK_VentaCredito_TipoCredito]
GO
ALTER TABLE [dbo].[VentaCredito]  WITH CHECK ADD  CONSTRAINT [FK_VentaCredito_Vendedor] FOREIGN KEY([Ejecutivo])
REFERENCES [dbo].[Ejecutivo] ([Cedula])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[VentaCredito] CHECK CONSTRAINT [FK_VentaCredito_Vendedor]
GO
ALTER TABLE [dbo].[VentaProducto]  WITH CHECK ADD  CONSTRAINT [FK_VentaProducto_Producto] FOREIGN KEY([Producto])
REFERENCES [dbo].[Producto] ([IdProducto])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[VentaProducto] CHECK CONSTRAINT [FK_VentaProducto_Producto]
GO
ALTER TABLE [dbo].[VentaProducto]  WITH CHECK ADD  CONSTRAINT [FK_VentaProducto_Vendedor] FOREIGN KEY([Ejecutivo])
REFERENCES [dbo].[Ejecutivo] ([Cedula])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[VentaProducto] CHECK CONSTRAINT [FK_VentaProducto_Vendedor]
GO
