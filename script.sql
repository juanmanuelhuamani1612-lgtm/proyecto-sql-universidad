DEBO DE MEJORAR EL ORDEN E IMPLEMENTAR LOS COMANDOS NUEVOS
USE [UNIVERSIDAD]
GO
/****** Object:  Table [dbo].[AULAS]    Script Date: 15/04/2026 12:49:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AULAS](
	[id_aulas] [int] NOT NULL,
	[nombre_aulas] [varchar](5) NULL,
	[capacidad] [char](5) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_aulas] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CURSOS]    Script Date: 15/04/2026 12:49:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CURSOS](
	[id_curso] [int] NOT NULL,
	[nombre_curso] [varchar](15) NULL,
	[creditos] [int] NULL,
	[id_escuela] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_curso] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DOCENTES]    Script Date: 15/04/2026 12:49:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DOCENTES](
	[id_docente] [int] NOT NULL,
	[nombre_docente] [varchar](20) NULL,
	[apellido_docente] [varchar](25) NULL,
	[especialidad] [varchar](25) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_docente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ESCUELAS]    Script Date: 15/04/2026 12:49:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ESCUELAS](
	[id_escuela] [int] NOT NULL,
	[nombre_escuela] [varchar](20) NULL,
	[id_facultad] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_escuela] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ESTUDIANTES]    Script Date: 15/04/2026 12:49:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ESTUDIANTES](
	[id_estudiante] [int] NOT NULL,
	[nombre_estudiante] [varchar](20) NULL,
	[apellido_estudiante] [varchar](20) NULL,
	[dni] [int] NULL,
	[id_escuela] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_estudiante] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FACULTADES]    Script Date: 15/04/2026 12:49:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FACULTADES](
	[id_facultad] [int] NOT NULL,
	[nombre_facultad] [varchar](15) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_facultad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MATRICULAS]    Script Date: 15/04/2026 12:49:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MATRICULAS](
	[fecha] [date] NOT NULL,
	[id_estudiante] [int] NOT NULL,
	[id_seccion] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_estudiante] ASC,
	[id_seccion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SECCIONES]    Script Date: 15/04/2026 12:49:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SECCIONES](
	[id_seccion] [int] NOT NULL,
	[ciclo] [varchar](10) NULL,
	[id_curso] [int] NOT NULL,
	[id_docente] [int] NOT NULL,
	[id_aulas] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_seccion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[AULAS] ([id_aulas], [nombre_aulas], [capacidad]) VALUES (221, N'A-333', N'20   ')
INSERT [dbo].[AULAS] ([id_aulas], [nombre_aulas], [capacidad]) VALUES (222, N'A-332', N'20   ')
INSERT [dbo].[AULAS] ([id_aulas], [nombre_aulas], [capacidad]) VALUES (223, N'B-465', N'20   ')
INSERT [dbo].[AULAS] ([id_aulas], [nombre_aulas], [capacidad]) VALUES (224, N'B-787', N'20   ')
INSERT [dbo].[AULAS] ([id_aulas], [nombre_aulas], [capacidad]) VALUES (225, N'C-354', N'20   ')
INSERT [dbo].[AULAS] ([id_aulas], [nombre_aulas], [capacidad]) VALUES (226, N'C-349', N'20   ')
INSERT [dbo].[AULAS] ([id_aulas], [nombre_aulas], [capacidad]) VALUES (227, N'D-398', N'20   ')
GO
INSERT [dbo].[CURSOS] ([id_curso], [nombre_curso], [creditos], [id_escuela]) VALUES (1, N'CALCULO', 5, 66)
INSERT [dbo].[CURSOS] ([id_curso], [nombre_curso], [creditos], [id_escuela]) VALUES (3, N'LOGICA', 3, 77)
INSERT [dbo].[CURSOS] ([id_curso], [nombre_curso], [creditos], [id_escuela]) VALUES (4, N'BIOLOGIA', 5, 88)
GO
INSERT [dbo].[DOCENTES] ([id_docente], [nombre_docente], [apellido_docente], [especialidad]) VALUES (1, N'juan', N'huamani', N'base de datos')
INSERT [dbo].[DOCENTES] ([id_docente], [nombre_docente], [apellido_docente], [especialidad]) VALUES (2, N'carlos', N'tarazona', N'matematica')
INSERT [dbo].[DOCENTES] ([id_docente], [nombre_docente], [apellido_docente], [especialidad]) VALUES (3, N'manuel', N'ayta', N'etica')
INSERT [dbo].[DOCENTES] ([id_docente], [nombre_docente], [apellido_docente], [especialidad]) VALUES (4, N'luis', N'contreras', N'calculo')
INSERT [dbo].[DOCENTES] ([id_docente], [nombre_docente], [apellido_docente], [especialidad]) VALUES (5, N'farid', N'arenas', N'algoritmos')
INSERT [dbo].[DOCENTES] ([id_docente], [nombre_docente], [apellido_docente], [especialidad]) VALUES (6, N'miguel', N'llosa', N'fisica')
INSERT [dbo].[DOCENTES] ([id_docente], [nombre_docente], [apellido_docente], [especialidad]) VALUES (7, N'antonio', N'rimache', N'anatomia')
INSERT [dbo].[DOCENTES] ([id_docente], [nombre_docente], [apellido_docente], [especialidad]) VALUES (9, N'cristhian', N'condo', N'estadistica')
GO
INSERT [dbo].[ESCUELAS] ([id_escuela], [nombre_escuela], [id_facultad]) VALUES (66, N'ingsistemas', 112)
INSERT [dbo].[ESCUELAS] ([id_escuela], [nombre_escuela], [id_facultad]) VALUES (77, N'odontologia', 113)
INSERT [dbo].[ESCUELAS] ([id_escuela], [nombre_escuela], [id_facultad]) VALUES (88, N'derecho', 114)
GO
INSERT [dbo].[FACULTADES] ([id_facultad], [nombre_facultad]) VALUES (112, N'ingenieria')
INSERT [dbo].[FACULTADES] ([id_facultad], [nombre_facultad]) VALUES (113, N'ciencias social')
INSERT [dbo].[FACULTADES] ([id_facultad], [nombre_facultad]) VALUES (114, N'salud')
GO
ALTER TABLE [dbo].[CURSOS]  WITH CHECK ADD FOREIGN KEY([id_escuela])
REFERENCES [dbo].[ESCUELAS] ([id_escuela])
GO
ALTER TABLE [dbo].[ESCUELAS]  WITH CHECK ADD FOREIGN KEY([id_facultad])
REFERENCES [dbo].[FACULTADES] ([id_facultad])
GO
ALTER TABLE [dbo].[ESTUDIANTES]  WITH CHECK ADD FOREIGN KEY([id_escuela])
REFERENCES [dbo].[ESCUELAS] ([id_escuela])
GO
ALTER TABLE [dbo].[MATRICULAS]  WITH CHECK ADD FOREIGN KEY([id_estudiante])
REFERENCES [dbo].[ESTUDIANTES] ([id_estudiante])
GO
ALTER TABLE [dbo].[MATRICULAS]  WITH CHECK ADD FOREIGN KEY([id_seccion])
REFERENCES [dbo].[SECCIONES] ([id_seccion])
GO
ALTER TABLE [dbo].[SECCIONES]  WITH CHECK ADD FOREIGN KEY([id_aulas])
REFERENCES [dbo].[AULAS] ([id_aulas])
GO
ALTER TABLE [dbo].[SECCIONES]  WITH CHECK ADD FOREIGN KEY([id_curso])
REFERENCES [dbo].[CURSOS] ([id_curso])
GO
ALTER TABLE [dbo].[SECCIONES]  WITH CHECK ADD FOREIGN KEY([id_docente])
REFERENCES [dbo].[DOCENTES] ([id_docente])
GO
