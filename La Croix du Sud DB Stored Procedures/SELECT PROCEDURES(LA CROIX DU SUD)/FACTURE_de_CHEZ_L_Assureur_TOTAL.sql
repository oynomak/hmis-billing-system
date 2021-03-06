CREATE PROCEDURE FACTURE_de_CHEZ_L_Assureur_TOTAL

@ID_ASSUREUR INT,
@DATE_Debut datetime,
@DATE_Fin datetime

AS

SELECT     TOP (100) PERCENT dbo.PATIENT.No_CARTE_ASSUREUR, dbo.FACTURES.NO_FACTURE, dbo.FACTURE_DETAILS.ACTE_A_FACTURER, 
                      dbo.FACTURE_DETAILS.MAXIMA_A_PAYER, dbo.FACTURE_DETAILS.PAYE_PAR_PATIENT, dbo.FACTURE_DETAILS.PAYE_PAR_ASSUREUR, 
                      dbo.FACTURE_DETAILS.DateFacture
FROM         dbo.FACTURES INNER JOIN
                      dbo.FACTURE_DETAILS ON dbo.FACTURES.NO_FACTURE = dbo.FACTURE_DETAILS.No_FACTURE INNER JOIN
                      dbo.CONSULTATION ON dbo.FACTURES.ID_CONSULTATION = dbo.CONSULTATION.ID_CONSULTATION INNER JOIN
                      dbo.PATIENT ON dbo.CONSULTATION.ID_PATIENT = dbo.PATIENT.ID_PATIENT INNER JOIN
                      dbo.ASSUREUR ON dbo.PATIENT.ID_ASSUREUR = dbo.ASSUREUR.ID_ASSUREUR INNER JOIN
                      dbo.Type_Facture ON dbo.FACTURE_DETAILS.ID_Type_Facture = dbo.Type_Facture.ID_Type_Facture
WHERE     (dbo.ASSUREUR.ID_ASSUREUR = @ID_ASSUREUR) 
			and (dbo.FACTURE_DETAILS.DateFacture BETWEEN @DATE_Debut AND @DATE_Fin)
ORDER BY dbo.Type_Facture.Type_de_Facture