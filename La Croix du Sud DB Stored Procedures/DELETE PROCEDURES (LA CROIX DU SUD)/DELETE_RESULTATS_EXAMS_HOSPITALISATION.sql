CREATE PROCEDURE DELETE_RESULTATS_EXAMS_HOSPITALISATION

@CODE_EXAMEN	nvarchar(10),
@ID_SUIVI INT

AS
DELETE RESULTATS_EXAMS_HOSPITALISATION
WHERE CODE_EXAMEN=@CODE_EXAMEN and ID_SUIVI=@ID_SUIVI