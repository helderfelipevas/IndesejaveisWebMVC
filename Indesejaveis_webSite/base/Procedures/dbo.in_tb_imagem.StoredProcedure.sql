USE [base_indesejaveis]
GO
/****** Object:  StoredProcedure [dbo].[in_tb_imagem]    Script Date: 27/05/2018 21:59:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Helder Felipe>
-- Create date: <17/03/2018>
-- Description:	<Inserir Imagem>
-- =============================================
CREATE PROCEDURE [dbo].[in_tb_imagem] 

@nom_imagem VARCHAR(100),
@ds_imagem VARCHAR(200),
@ds_origem_imagem VARCHAR(100)

AS

BEGIN


	INSERT INTO tb_imagem (nom_imagem, ds_imagem, ds_origem_imagem) VALUES (@nom_imagem, @ds_imagem, @ds_origem_imagem)


END
GO
