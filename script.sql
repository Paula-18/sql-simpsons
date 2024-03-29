USE [db_simpsons]
GO
/****** Object:  User [simpsons]    Script Date: 16/10/2019 01:17:23 a. m. ******/
CREATE USER [simpsons] FOR LOGIN [simpsons] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_owner] ADD MEMBER [simpsons]
GO
/****** Object:  Table [dbo].[tbl_character]    Script Date: 16/10/2019 01:17:23 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_character](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[firstName] [varchar](20) NULL,
	[secondName] [varchar](20) NULL,
	[lastName] [varchar](20) NULL,
	[age] [int] NULL,
	[descp] [varchar](100) NULL,
	[birthDate] [varchar](30) NULL,
 CONSTRAINT [PK_tbl_character] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tbl_character] ON 

INSERT [dbo].[tbl_character] ([id], [firstName], [secondName], [lastName], [age], [descp], [birthDate]) VALUES (1, N'Homero', N'Jay', N'Simpson', 36, N'Esposo de Marge, Padre de la familia', N'12 de mayo')
INSERT [dbo].[tbl_character] ([id], [firstName], [secondName], [lastName], [age], [descp], [birthDate]) VALUES (3, N'Bartolomeo', N'J.', N'Simpson', 10, N'Hijo mayor de la familia Simpson, hermano de Lisa y Maggie', N'23 de febrero')
INSERT [dbo].[tbl_character] ([id], [firstName], [secondName], [lastName], [age], [descp], [birthDate]) VALUES (4, N'Marjorie', N'Jacqueline', N'Simpson', 34, N'Esposa de Homero, Madre de Bart, Lisa y Maggie', N'18 de mayo')
INSERT [dbo].[tbl_character] ([id], [firstName], [secondName], [lastName], [age], [descp], [birthDate]) VALUES (5, N'Lisa', N'Marie', N'Simpson', 8, N'Hija mayor de la familia Simpson, hermana menor de Bart y hemana mayor de Maggie', N'11 de mayo')
INSERT [dbo].[tbl_character] ([id], [firstName], [secondName], [lastName], [age], [descp], [birthDate]) VALUES (6, N'Maggie', N'Evelyn', N'Simpson', 1, N'Hija menor de la famila Simpson, hermana menor de Bart y Lisa', N'12 de enero')
SET IDENTITY_INSERT [dbo].[tbl_character] OFF
