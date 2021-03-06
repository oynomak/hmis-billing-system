Create Procedure UPDATE_RESULTAT_EXAM_HOSPIT_SET_IT_AS_PAYE

@ID_HOSPITALISATION NVARCHAR(20),
@NOM_EXAMEN NVARCHAR(50)

AS

DECLARE @CODE_EXAM NVARCHAR(20)

SET @CODE_EXAM=(SELECT     dbo.RESULTATS_EXAMS_HOSPITALISATION.CODE_EXAMEN
FROM         dbo.FICHE_DE_SUIVIE INNER JOIN
                      dbo.HOSPITALISATION ON dbo.FICHE_DE_SUIVIE.ID_HOSPITALISATION = dbo.HOSPITALISATION.ID_HOSPITALISATION INNER JOIN
                      dbo.RESULTATS_EXAMS_HOSPITALISATION ON dbo.FICHE_DE_SUIVIE.ID_SUIVIE = dbo.RESULTATS_EXAMS_HOSPITALISATION.ID_SUIVI INNER JOIN
                      dbo.EXAMENS_A_FAIRE ON dbo.RESULTATS_EXAMS_HOSPITALISATION.CODE_EXAMEN = dbo.EXAMENS_A_FAIRE.CODE_EXAMEN
WHERE     (dbo.FICHE_DE_SUIVIE.ID_HOSPITALISATION = @ID_HOSPITALISATION) AND (dbo.RESULTATS_EXAMS_HOSPITALISATION.DEJA_EXAMINE = 0) AND 
                      (dbo.RESULTATS_EXAMS_HOSPITALISATION.PAYES = 0) AND (dbo.EXAMENS_A_FAIRE.EXAM_DESCRIPTION = @NOM_EXAMEN))
-----------------------------------------------------------------------------------------------
DECLARE @NoSUIVI INT

SET @NoSUIVI=(SELECT     dbo.RESULTATS_EXAMS_HOSPITALISATION.ID_SUIVI
FROM         dbo.FICHE_DE_SUIVIE INNER JOIN
                      dbo.HOSPITALISATION ON dbo.FICHE_DE_SUIVIE.ID_HOSPITALISATION = dbo.HOSPITALISATION.ID_HOSPITALISATION INNER JOIN
                      dbo.RESULTATS_EXAMS_HOSPITALISATION ON dbo.FICHE_DE_SUIVIE.ID_SUIVIE = dbo.RESULTATS_EXAMS_HOSPITALISATION.ID_SUIVI INNER JOIN
                      dbo.EXAMENS_A_FAIRE ON dbo.RESULTATS_EXAMS_HOSPITALISATION.CODE_EXAMEN = dbo.EXAMENS_A_FAIRE.CODE_EXAMEN
WHERE     (dbo.FICHE_DE_SUIVIE.ID_HOSPITALISATION = @ID_HOSPITALISATION) AND (dbo.RESULTATS_EXAMS_HOSPITALISATION.DEJA_EXAMINE = 0) AND 
                      (dbo.RESULTATS_EXAMS_HOSPITALISATION.PAYES = 0) AND (dbo.EXAMENS_A_FAIRE.EXAM_DESCRIPTION = @NOM_EXAMEN))
-----------------------------------------------------------------------------------------------

UPDATE RESULTATS_EXAMS_HOSPITALISATION 
SET PAYES=1
WHERE (dbo.RESULTATS_EXAMS_HOSPITALISATION.CODE_EXAMEN = @CODE_EXAM)
		 AND (dbo.RESULTATS_EXAMS_HOSPITALISATION.ID_SUIVI = @NoSUIVI)

