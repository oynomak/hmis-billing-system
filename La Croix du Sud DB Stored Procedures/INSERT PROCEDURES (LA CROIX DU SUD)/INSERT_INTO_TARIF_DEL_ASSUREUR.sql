set ANSI_NULLS ON
set QUOTED_IDENTIFIER ON
go

ALTER PROCEDURE [dbo].[INSERT_INTO_TARIF_DEL_ASSUREUR]

@ID_ASSUREUR	nvarchar(10)	,
@ID_SERVICES_RENDUS	nvarchar(10)	,
@MAXIMA_A_PAYER	money	
		
AS 
INSERT INTO TARIF_DEL_ASSUREUR
VALUES(@ID_ASSUREUR,@ID_SERVICES_RENDUS	,@MAXIMA_A_PAYER)
