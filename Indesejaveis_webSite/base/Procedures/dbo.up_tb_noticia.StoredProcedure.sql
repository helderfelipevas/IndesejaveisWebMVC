USE [base_indesejaveis]
GO
/****** Object:  StoredProcedure [dbo].[up_tb_noticia]    Script Date: 27/05/2018 21:59:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================      
-- Author:  <Helder Felipe>      
-- Create date: <21/04/2018>      
-- Description: <Atualizar Noticia>   
-- Action: Hfvas - 21/04/2018 - Criando um EXEC para alterar na tb_imagem tambem.    
-- Action: Hfvas - 27/05/2018 - Aumento do parametro im_vitrine de 25 para 100.  
-- =============================================      
CREATE PROCEDURE [dbo].[up_tb_noticia]       
  
@cod_noticia INT,      
@nom_titulo_noticia VARCHAR(100),      
@ds_noticia VARCHAR(1000),      
@ds_tipo_noticia VARCHAR(30),    
@im_vitrine VARCHAR(100)   
      
AS      
      
BEGIN      
      
 DECLARE @cod_imagem INT = (SELECT cod_imagem FROM tb_noticia WHERE cod_noticia = @cod_noticia)   
    
 EXEC up_tb_imagem @cod_imagem, @im_vitrine, @ds_tipo_noticia, 'tb_noticia'  
  
 UPDATE   
 tb_noticia   
 SET   
 nom_titulo_noticia = @nom_titulo_noticia,   
 ds_noticia = @ds_noticia,   
 ds_tipo_noticia = @ds_tipo_noticia  
 WHERE  
 cod_noticia = @cod_noticia  
  
END   
  
GO
