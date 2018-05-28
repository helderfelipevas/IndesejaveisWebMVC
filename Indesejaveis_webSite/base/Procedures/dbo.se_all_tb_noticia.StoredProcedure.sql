USE [base_indesejaveis]
GO
/****** Object:  StoredProcedure [dbo].[se_all_tb_noticia]    Script Date: 27/05/2018 21:59:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================      
-- Author:  <Helder Felipe>      
-- Create date: <21/04/2018>      
-- Description: <Selecionar Todas as Noticia>       
-- =============================================      
CREATE PROCEDURE [dbo].[se_all_tb_noticia]       
  
  AS    
      
BEGIN      
      
 SELECT n.*,i.nom_imagem FROM tb_noticia AS n
 INNER JOIN tb_imagem AS i ON n.cod_imagem = i.cod_imagem 
  
END 
GO
