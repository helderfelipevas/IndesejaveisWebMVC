USE [base_indesejaveis]
GO
/****** Object:  StoredProcedure [dbo].[in_tb_noticia]    Script Date: 27/05/2018 21:59:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================      
-- Author:  <Helder Felipe>      
-- Create date: <24/02/2018>      
-- Description: <Inserir Noticia>     
-- Action: Hfvas - 15/04/2018 - Adicao do Campo ds_tipo_noticia e im_vitrine.  
-- Action: Hfvas - 21/04/2018 - Salvando na tb_imagem para ter o cod_imagem e salvar na tb_imagem. 
-- Action: Hfvas - 20/05/2018 - Aumento do parametro im_vitrine de 25 para 100.
-- =============================================      
CREATE PROCEDURE [dbo].[in_tb_noticia]       
  
@nom_titulo_noticia VARCHAR(100),      
@ds_noticia VARCHAR(1000),      
@ds_tipo_noticia VARCHAR(30),    
@im_vitrine VARCHAR(100)  
      
AS      
      
BEGIN      
  
 exec in_tb_imagem @im_vitrine,@ds_tipo_noticia,'tb_noticia'  
  
 DECLARE @cod_imagem INT = (SELECT TOP (1) cod_imagem FROM tb_imagem ORDER BY cod_imagem DESC)  
  
 INSERT INTO     
 tb_noticia (nom_titulo_noticia, ds_noticia, dat_noticia, ds_tipo_noticia, cod_imagem)     
 VALUES     
 (@nom_titulo_noticia, @ds_noticia, GETDATE(), @ds_tipo_noticia, @cod_imagem)      
      
END 
GO
