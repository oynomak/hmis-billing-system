CREATE PROCEDURE DELETE_SORTIE_D_HOSPITALISATION

@ID_HOSPITALISATION	nvarchar(10)	,
@DATE_DE_SORTIE	datetime

AS
DELETE SORTIE_D_HOSPITALISATION
WHERE ID_HOSPITALISATION=@ID_HOSPITALISATION AND DATE_DE_SORTIE=@DATE_DE_SORTIE