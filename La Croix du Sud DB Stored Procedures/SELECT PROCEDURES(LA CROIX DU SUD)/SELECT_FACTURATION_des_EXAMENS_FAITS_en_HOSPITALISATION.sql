set ANSI_NULLS ON
set QUOTED_IDENTIFIER ON
go

ALTER PROCEDURE [dbo].[SELECT_FACTURATION_des_EXAMENS_FAITS_en_HOSPITALISATION]

@ID_HOSPITALISATION NVARCHAR(20)

AS

SELECT     dbo.EXAMENS_A_FAIRE.EXAM_DESCRIPTION AS Examen, dbo.ASSUREUR.NOM_ASSUREUR AS Assureur, 
                      dbo.TARIF_DEL_ASSUREUR.MAXIMA_A_PAYER * dbo.ASSUREUR.POURCENTAGE * 100 AS [%], 
                      dbo.TARIF_DEL_ASSUREUR.MAXIMA_A_PAYER AS Total, 
                      dbo.TARIF_DEL_ASSUREUR.MAXIMA_A_PAYER - dbo.TARIF_DEL_ASSUREUR.MAXIMA_A_PAYER * dbo.ASSUREUR.POURCENTAGE AS [Prix de l''assureur''],
                       dbo.TARIF_DEL_ASSUREUR.MAXIMA_A_PAYER * dbo.ASSUREUR.POURCENTAGE AS Tarif
FROM         dbo.TARIF_DEL_ASSUREUR INNER JOIN
                      dbo.ASSUREUR INNER JOIN
                      dbo.HOSPITALISATION INNER JOIN
                      dbo.CONSULTATION ON dbo.HOSPITALISATION.ID_CONSULTATION = dbo.CONSULTATION.ID_CONSULTATION INNER JOIN
                      dbo.FICHE_DE_SUIVIE ON dbo.HOSPITALISATION.ID_HOSPITALISATION = dbo.FICHE_DE_SUIVIE.ID_HOSPITALISATION INNER JOIN
                      dbo.RESULTATS_EXAMS_HOSPITALISATION ON dbo.FICHE_DE_SUIVIE.ID_SUIVIE = dbo.RESULTATS_EXAMS_HOSPITALISATION.ID_SUIVI INNER JOIN
                      dbo.EXAMENS_A_FAIRE ON dbo.RESULTATS_EXAMS_HOSPITALISATION.CODE_EXAMEN = dbo.EXAMENS_A_FAIRE.CODE_EXAMEN INNER JOIN
                      dbo.PATIENT ON dbo.CONSULTATION.ID_PATIENT = dbo.PATIENT.ID_PATIENT ON dbo.ASSUREUR.ID_ASSUREUR = dbo.PATIENT.ID_ASSUREUR ON 
                      dbo.TARIF_DEL_ASSUREUR.ID_ASSUREUR = dbo.ASSUREUR.ID_ASSUREUR INNER JOIN
                      dbo.SERVICES_RENDUS ON dbo.TARIF_DEL_ASSUREUR.ID_SERVICES_RENDUS = dbo.SERVICES_RENDUS.ID_SERVICES_RENDUS AND 
                      dbo.EXAMENS_A_FAIRE.ID_SERVICES_RENDUS = dbo.SERVICES_RENDUS.ID_SERVICES_RENDUS INNER JOIN
                      dbo.CATEG_SERVICES_RENDUS ON 
                      dbo.SERVICES_RENDUS.ID_CATEG_SER_RENDUS = dbo.CATEG_SERVICES_RENDUS.ID_CATEG_SER_RENDUS
WHERE     (dbo.HOSPITALISATION.ID_HOSPITALISATION = @ID_HOSPITALISATION) AND (dbo.RESULTATS_EXAMS_HOSPITALISATION.PAYES = 0) AND 
                      (dbo.RESULTATS_EXAMS_HOSPITALISATION.DEJA_EXAMINE = 0)
