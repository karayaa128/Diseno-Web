
USE [RESERVAS]
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
ALTER DATABASE [RESERVAS] SET  READ_WRITE 
GO
