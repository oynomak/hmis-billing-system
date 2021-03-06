set ANSI_NULLS ON
set QUOTED_IDENTIFIER ON
go



ALTER Procedure [dbo].[Facturation_Du_Rendez_Vous_Cons_Par_ID_Patient]

@ID_Patient nvarchar (20)

as
-------------------------------------------CHANGE DATE FORMAT-----------------------------------------------
--DECLARE @DATE_RENDEZ_VOUS NVARCHAR(20)
--declare @Date_New_Format nvarchar(20)
--
--SET @DATE_RENDEZ_VOUS = (SELECT dbo.RENDEZ_VOUS_CONSULTATION.DATE_RENDEZ_VOUS
--						FROM         dbo.RENDEZ_VOUS_CONSULTATION INNER JOIN
--										dbo.PATIENT ON dbo.RENDEZ_VOUS_CONSULTATION.ID_PATIENT = dbo.PATIENT.ID_PATIENT INNER JOIN
--											dbo.SERVICES ON dbo.RENDEZ_VOUS_CONSULTATION.ID_SERVICE = dbo.SERVICES.ID_SERVICE
--						WHERE     (dbo.RENDEZ_VOUS_CONSULTATION.ID_PATIENT = 'KA-MU-0708-0001') AND (dbo.RENDEZ_VOUS_CONSULTATION.DEJA_CONSULTE = 0) AND 
--									(dbo.RENDEZ_VOUS_CONSULTATION.PAYE = 0)
--					     ) 
--
--set @Date_New_Format=Substring(@DATE_RENDEZ_VOUS,1,12)

-------------------------------------------------END--------------------------------------------------------

SELECT     dbo.RENDEZ_VOUS_CONSULTATION.ID_CONSULTATION AS No, UPPER(dbo.PATIENT.NOM + N' ' + dbo.PATIENT.PRENOM) AS Noms, 
                      dbo.RENDEZ_VOUS_CONSULTATION.DATE_RENDEZ_VOUS AS Date, dbo.SERVICES.NOM_SERVICE AS Service
FROM         dbo.RENDEZ_VOUS_CONSULTATION INNER JOIN
                      dbo.PATIENT ON dbo.RENDEZ_VOUS_CONSULTATION.ID_PATIENT = dbo.PATIENT.ID_PATIENT INNER JOIN
                      dbo.SERVICES ON dbo.RENDEZ_VOUS_CONSULTATION.ID_SERVICE = dbo.SERVICES.ID_SERVICE
WHERE     (dbo.RENDEZ_VOUS_CONSULTATION.ID_PATIENT = @ID_Patient) AND (dbo.RENDEZ_VOUS_CONSULTATION.DEJA_CONSULTE = 0) AND 
                      (dbo.RENDEZ_VOUS_CONSULTATION.PAYE = 0)



