set ANSI_NULLS ON
set QUOTED_IDENTIFIER ON
go

ALTER PROCEDURE [dbo].[INSERT_INTO_FICHE_DE_SUIVIE]

@ID_HOSPITALISATION	nvarchar(10)	,
@DATE_SUIVIE	datetime,
@HEURE_SUIVIE	nvarchar(10)	,
@ID_SIGNES_VITAUX	int,
@OBSERVATIONS	nvarchar(50)	

AS
INSERT INTO FICHE_DE_SUIVIE
VALUES(@ID_HOSPITALISATION,@DATE_SUIVIE,@HEURE_SUIVIE	,
@ID_SIGNES_VITAUX,@OBSERVATIONS)
