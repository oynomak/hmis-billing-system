CREATE PROCEDURE DELETE_FICHE_DE_SUIVIE

@ID_SUIVIE	int,
@ID_HOSPITALISATION	nvarchar(10)

AS 
DELETE FICHE_DE_SUIVIE
WHERE ID_SUIVIE=@ID_SUIVIE AND ID_HOSPITALISATION=@ID_HOSPITALISATION