set ANSI_NULLS ON
set QUOTED_IDENTIFIER ON
go




ALTER Procedure [dbo].[SELECT_CARTE_de_HOSPITALISATION_By_IDHosp] @IDHospitalisation nvarchar(20)
As

--Declarer le champ qui va stocker le numero de consultation en barcodes
-----------------------------------------------------------------------------------------------
Declare @BarcodeImage as BINARY
SET @BarcodeImage=NULL

--Creer la table temporelle qui nous aidera a stocker les donnees dont nous nous servirons sur la carte
------------------------------------------------------------------------------------------------------------------------------------
Create Table #CarteTemporelleDeHOSPITALISATION 
(
NOM Nvarchar(50),
Prenom nvarchar(50),
IDHospitalisation nvarchar(20),
NoChambre nvarchar(10),
DatedEntree datetime,
NOM_ASSUREUR nvarchar(50),
ServiceMedical nvarchar(50),
NoEnBarcode Image
)

--Insertion des valeurs a afficher sur la carte de consultation dans la table temporelle
--------------------------------------------------------------------------------------------------------------
Insert Into #CarteTemporelleDeHOSPITALISATION
SELECT     UPPER(dbo.PATIENT.NOM), UPPER(dbo.PATIENT.PRENOM), dbo.HOSPITALISATION.ID_HOSPITALISATION, 
                      dbo.HOSPITALISATION.No_CHAMBRE, dbo.HOSPITALISATION.DATE_D_ENTREE, dbo.ASSUREUR.NOM_ASSUREUR, 
                      dbo.SERVICES.NOM_SERVICE,@BarcodeImage
FROM         dbo.HOSPITALISATION INNER JOIN
                      dbo.CONSULTATION ON dbo.HOSPITALISATION.ID_CONSULTATION = dbo.CONSULTATION.ID_CONSULTATION INNER JOIN
                      dbo.SERVICES ON dbo.CONSULTATION.ID_SERVICE = dbo.SERVICES.ID_SERVICE INNER JOIN
                      dbo.PATIENT ON dbo.CONSULTATION.ID_PATIENT = dbo.PATIENT.ID_PATIENT INNER JOIN
                      dbo.ASSUREUR ON dbo.PATIENT.ID_ASSUREUR = dbo.ASSUREUR.ID_ASSUREUR
WHERE     (dbo.HOSPITALISATION.ID_HOSPITALISATION = @IDHospitalisation)

--Selectionner toutes les donnees qui devront s'afficher sur la carte de consultation
------------------------------------------------------------------------------------------------------------
SELECT NOM+' '+Prenom as NomsDuPatient,IDHospitalisation,NoChambre,DatedEntree,NOM_ASSUREUR,ServiceMedical,NoEnBarcode From #CarteTemporelleDeHOSPITALISATION 

--Where NoConsultation=@ID_Consultation
--where NoConsultation=@IdConsultation 

--Suppression de la table temporelle a la fin de son usage 
--------------------------------------------------------------------------- 
Drop Table #CarteTemporelleDeHOSPITALISATION



