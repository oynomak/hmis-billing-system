CREATE PROCEDURE UPDATE_SORTIE_D_HOSPITALISATION

@ID_HOSPITALISATION	nvarchar(10)	,
@DATE_DE_SORTIE	datetime	,
@HEURE_DE_SORTIE	nvarchar(10)	

AS
UPDATE SORTIE_D_HOSPITALISATION
SET DATE_DE_SORTIE=@DATE_DE_SORTIE,
HEURE_DE_SORTIE=@HEURE_DE_SORTIE
WHERE ID_HOSPITALISATION=@ID_HOSPITALISATION