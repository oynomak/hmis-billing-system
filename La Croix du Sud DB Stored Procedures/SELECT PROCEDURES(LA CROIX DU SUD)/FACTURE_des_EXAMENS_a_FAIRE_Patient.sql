CREATE PROCEDURE FACTURE_des_EXAMENS_a_FAIRE_Patient

@ID_CONSULTATION NVARCHAR(50)

AS

SELECT     dbo.PATIENT.NOM + '  ' + dbo.PATIENT.PRENOM AS Noms, dbo.FACTURE_DETAILS.ASSUREUR AS Assureur, 
                      dbo.FACTURE_DETAILS.POURCENTAGE AS [%], dbo.PATIENT.No_CARTE_ASSUREUR AS [No d'assurance'], 
                      dbo.FACTURE_DETAILS.NoREFERENCE + dbo.FACTURES.NO_FACTURE AS NoFacture, dbo.FACTURE_DETAILS.DateFacture AS Date, 
                      dbo.FACTURE_DETAILS.ACTE_A_FACTURER AS [Acte medical], dbo.FACTURE_DETAILS.MAXIMA_A_PAYER AS Total, 
                      dbo.FACTURE_DETAILS.PAYE_PAR_ASSUREUR AS [Prix de l'assureur'], dbo.FACTURE_DETAILS.PAYE_PAR_PATIENT AS [Prix du patient]
FROM         dbo.FACTURE_DETAILS INNER JOIN
                      dbo.FACTURES ON dbo.FACTURE_DETAILS.No_FACTURE = dbo.FACTURES.NO_FACTURE INNER JOIN
                      dbo.CONSULTATION ON dbo.FACTURES.ID_CONSULTATION = dbo.CONSULTATION.ID_CONSULTATION INNER JOIN
                      dbo.PATIENT ON dbo.CONSULTATION.ID_PATIENT = dbo.PATIENT.ID_PATIENT INNER JOIN
                      dbo.Type_Facture ON dbo.FACTURE_DETAILS.ID_Type_Facture = dbo.Type_Facture.ID_Type_Facture
WHERE     (dbo.FACTURES.ID_CONSULTATION = @ID_CONSULTATION) AND (dbo.FACTURE_DETAILS.PAYE = 1) AND 
                      (dbo.FACTURE_DETAILS.ID_Type_Facture = 3)