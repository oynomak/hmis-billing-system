set ANSI_NULLS ON
set QUOTED_IDENTIFIER ON
go

ALTER PROCEDURE [dbo].[SELECT_FACTURATION_du_SEJOUR_del_HOSPITALISATION]

@ID_HOSPITALISATION NVARCHAR(50)

AS

SELECT     dbo.CHAMBRES.No_CHAMBRE AS Chambre,dbo.ASSUREUR.NOM_ASSUREUR AS Assureur, dbo.HOSPITALISATION.DATE_D_ENTREE AS Entrée, dbo.HOSPITALISATION.DATE_DE_SORTIE AS Sortie, 
                      DATEDIFF(DAY, dbo.HOSPITALISATION.DATE_D_ENTREE, dbo.HOSPITALISATION.DATE_DE_SORTIE) + 1 AS [Durée de séjour], dbo.ASSUREUR.POURCENTAGE * 100 AS [%], 
                      dbo.TARIF_DEL_ASSUREUR.MAXIMA_A_PAYER * (DATEDIFF(DAY, dbo.HOSPITALISATION.DATE_D_ENTREE, 
                      dbo.HOSPITALISATION.DATE_DE_SORTIE) + 1) AS Total, dbo.TARIF_DEL_ASSUREUR.MAXIMA_A_PAYER * (DATEDIFF(DAY, 
                      dbo.HOSPITALISATION.DATE_D_ENTREE, dbo.HOSPITALISATION.DATE_DE_SORTIE) + 1) 
                      - dbo.ASSUREUR.POURCENTAGE * (dbo.TARIF_DEL_ASSUREUR.MAXIMA_A_PAYER * (DATEDIFF(DAY, dbo.HOSPITALISATION.DATE_D_ENTREE, 
                      dbo.HOSPITALISATION.DATE_DE_SORTIE) + 1)) AS [Prix de l''assureur''], 
                      dbo.ASSUREUR.POURCENTAGE * (dbo.TARIF_DEL_ASSUREUR.MAXIMA_A_PAYER * (DATEDIFF(DAY, dbo.HOSPITALISATION.DATE_D_ENTREE, 
                      dbo.HOSPITALISATION.DATE_DE_SORTIE) + 1)) AS Tarif
FROM         dbo.CHAMBRES INNER JOIN
                      dbo.CATEGORY_CHAMBRE ON dbo.CHAMBRES.ID_CATEG_CHAMBRE = dbo.CATEGORY_CHAMBRE.ID_CATEG_CHAMBRE INNER JOIN
                      dbo.HOSPITALISATION ON dbo.CHAMBRES.No_CHAMBRE = dbo.HOSPITALISATION.No_CHAMBRE INNER JOIN
                      dbo.SERVICES_RENDUS ON dbo.CATEGORY_CHAMBRE.ID_SERVICES_RENDUS = dbo.SERVICES_RENDUS.ID_SERVICES_RENDUS INNER JOIN
                      dbo.TARIF_DEL_ASSUREUR ON dbo.SERVICES_RENDUS.ID_SERVICES_RENDUS = dbo.TARIF_DEL_ASSUREUR.ID_SERVICES_RENDUS INNER JOIN
                      dbo.CONSULTATION ON dbo.HOSPITALISATION.ID_CONSULTATION = dbo.CONSULTATION.ID_CONSULTATION INNER JOIN
                      dbo.PATIENT ON dbo.CONSULTATION.ID_PATIENT = dbo.PATIENT.ID_PATIENT INNER JOIN
                      dbo.ASSUREUR ON dbo.TARIF_DEL_ASSUREUR.ID_ASSUREUR = dbo.ASSUREUR.ID_ASSUREUR AND 
                      dbo.PATIENT.ID_ASSUREUR = dbo.ASSUREUR.ID_ASSUREUR
WHERE     (dbo.CONSULTATION.ID_CONSULTATION = @ID_HOSPITALISATION) OR
                      (dbo.HOSPITALISATION.ID_HOSPITALISATION = @ID_HOSPITALISATION)
