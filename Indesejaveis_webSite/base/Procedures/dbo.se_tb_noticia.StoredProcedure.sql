USE [base_indesejaveis]
GO
/****** Object:  StoredProcedure [dbo].[se_tb_noticia]    Script Date: 27/05/2018 21:59:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================      
-- Author:  <Helder Felipe>      
-- Create date: <21/04/2018>      
-- Description: <Selecionar com parametros para as Noticias>   
-- Action: Hfvas - 21/04/2018 - Acrescentar INNER JOIN com tb_imagem.        
-- =============================================      
CREATE PROCEDURE [dbo].[se_tb_noticia]       
@nom_titulo_noticia VARCHAR(100),      
@ds_noticia VARCHAR(1000),      
@ds_tipo_noticia VARCHAR(30)  
  AS    
      
BEGIN      
      
 SELECT   
 n.*, i.nom_imagem  
 FROM   
 tb_noticia AS n  
 INNER JOIN tb_imagem AS i ON n.cod_imagem = i.cod_imagem  
 WHERE  
 nom_titulo_noticia like '%' + @nom_titulo_noticia + '%' or  
 ds_noticia like '%' + @ds_noticia + '%' or  
 ds_tipo_noticia like @ds_tipo_noticia  
  
  
END 
GO
