set ANSI_NULLS ON
set QUOTED_IDENTIFIER ON
go





ALTER Procedure [dbo].[SELECT_ALL_RENDEZ_VOUS_CONSULTATION] @ID_Consultation nvarchar(50)
As

--Declarer le champ qui va stocker le numero de consultation en barcodes
-----------------------------------------------------------------------------------------------
Declare @BarcodeImage as BINARY
SET @BarcodeImage=NULL

--Creer la table temporelle qui nous aidera a stocker les donnees dont nous nous servirons sur la carte
------------------------------------------------------------------------------------------------------------------------------------
Create Table #CarteTemporelleDeConsultation 
(
NomPatient nvarchar(50),
PrenomPatient nvarchar(50),
ServiceMedical nvarchar(50),
NoConsultation nvarchar(50),
NoEnBarcode image
)

--Insertion des valeurs a afficher sur la carte de consultation dans la table temporelle
--------------------------------------------------------------------------------------------------------------
Insert Into #CarteTemporelleDeConsultation
SELECT     UPPER(dbo.PATIENT.NOM), UPPER(dbo.PATIENT.PRENOM), dbo.SERVICES.NOM_SERVICE, dbo.RENDEZ_VOUS_CONSULTATION.ID_CONSULTATION,@BarcodeImage
FROM         dbo.PATIENT INNER JOIN
                      dbo.RENDEZ_VOUS_CONSULTATION ON dbo.PATIENT.ID_PATIENT = dbo.RENDEZ_VOUS_CONSULTATION.ID_PATIENT INNER JOIN
                      dbo.SERVICES ON dbo.RENDEZ_VOUS_CONSULTATION.ID_SERVICE = dbo.SERVICES.ID_SERVICE
Where dbo.RENDEZ_VOUS_CONSULTATION.ID_CONSULTATION=@ID_Consultation and dbo.RENDEZ_VOUS_CONSULTATION.PAYE=1

--Selectionner toutes les donnees qui devront s'afficher sur la carte de consultation
------------------------------------------------------------------------------------------------------------
Select NomPatient+' '+PrenomPatient as NomsPatient,ServiceMedical,NoConsultation,NoEnBarcode From #CarteTemporelleDeConsultation 
--Where NoConsultation=@ID_Consultation
--where NoConsultation=@IdConsultation 

--Suppression de la table temporelle a la fin de son usage 
--------------------------------------------------------------------------- 
Drop Table #CarteTemporelleDeConsultation 





