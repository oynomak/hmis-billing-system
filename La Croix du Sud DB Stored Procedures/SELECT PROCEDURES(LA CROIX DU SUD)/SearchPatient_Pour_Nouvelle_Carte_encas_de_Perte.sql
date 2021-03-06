set ANSI_NULLS ON
set QUOTED_IDENTIFIER ON
go

ALTER Procedure [dbo].[SearchPatient_Pour_Nouvelle_Carte_encas_de_Perte]

@nom nvarchar(50), @prenom nvarchar(50)

as

SELECT     ID_PATIENT,NOM, PRENOM, AUTRE_NOM, No_CARTE_IDENTITE, DATE_D_ENREGISTREMENT, No_CARTE_ASSUREUR
FROM         dbo.PATIENT
WHERE     ((NOM = @nom) AND (PRENOM = @prenom)) OR
                      ((NOM = @prenom) AND (PRENOM = @nom))
