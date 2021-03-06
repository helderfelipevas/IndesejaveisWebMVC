USE [base_indesejaveis]
GO
/****** Object:  Table [dbo].[tb_noticia]    Script Date: 27/05/2018 21:59:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_noticia](
	[cod_noticia] [int] IDENTITY(1,1) NOT NULL,
	[nom_titulo_noticia] [varchar](100) NULL,
	[ds_tipo_noticia] [varchar](30) NULL,
	[ds_noticia] [varchar](1000) NULL,
	[dat_noticia] [datetime] NULL,
	[cod_imagem] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[cod_noticia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tb_noticia]  WITH CHECK ADD  CONSTRAINT [fk_ImagemNoticia] FOREIGN KEY([cod_imagem])
REFERENCES [dbo].[tb_imagem] ([cod_imagem])
GO
ALTER TABLE [dbo].[tb_noticia] CHECK CONSTRAINT [fk_ImagemNoticia]
GO
