CREATE PROCEDURE INSERT_INTO_SORTIE_D_HOSPITALISATION

@ID_HOSPITALISATION	nvarchar(10)	,
@DATE_DE_SORTIE	datetime,
@HEURE_DE_SORTIE	nvarchar(10)	

AS
INSERT INTO SORTIE_D_HOSPITALISATION
VALUES(@ID_HOSPITALISATION,@DATE_DE_SORTIE	,@HEURE_DE_SORTIE)