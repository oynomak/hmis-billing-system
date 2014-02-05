CREATE PROCEDURE LISTE_de_TOUS_les_PATIENT

AS

SELECT     UPPER(dbo.PATIENT.NOM) AS Nom, UPPER(dbo.PATIENT.PRENOM) AS Prénom, UPPER(dbo.PATIENT.AUTRE_NOM) AS [Autres noms], 
                      dbo.ASSUREUR.NOM_ASSUREUR AS Assureur, dbo.PATIENT.TELEPHONE AS Tel, 
                      dbo.PATIENT.DATE_D_ENREGISTREMENT AS [Date d'enregistrement'], dbo.PATIENT.No_CARTE_ASSUREUR AS [No d'assurance']
FROM         dbo.PATIENT INNER JOIN
                      dbo.ASSUREUR ON dbo.PATIENT.ID_ASSUREUR = dbo.ASSUREUR.ID_ASSUREUR