set ANSI_NULLS ON
set QUOTED_IDENTIFIER ON
go



ALTER Procedure [dbo].[SELECT_ALL_PATIENTS] @NoPatient nvarchar(20)
As

--Ajout d'un champ image qui recevra les barcode de l'idpatient
----------------------------------------------------------------------------------

DECLARE @barcodeImage AS BINARY
      SET @barcodeImage = NULL

--creation de la table qui va stocker la carte avec BarcodeIdPatient 
-----------------------------------------------------------------------------------------
CREATE Table #Carte_du_Patient 
(
NoPatient nvarchar(20),
NomPatient nvarchar(50),
PrenomPatient nvarchar(50),
AutrenomPatient nvarchar(50),
Sexe char(1),
DOB datetime,
CategoryPatient nvarchar(50),
BarcodeIdPatient image
)

--Insertion des parametres necessaires dans la carte du patient
----------------------------------------------------------------------------------
INSERT INTO #Carte_du_Patient
SELECT     dbo.PATIENT.ID_PATIENT, UPPER(dbo.PATIENT.NOM), UPPER(dbo.PATIENT.PRENOM), UPPER(dbo.PATIENT.AUTRE_NOM), dbo.PATIENT.SEXE, 
                 dbo.PATIENT.DATE_NAISSANCE,dbo.CATEGORY_PATIENT.DESCRIPTION_PATIENT,@barcodeImage
FROM       dbo.CATEGORY_PATIENT INNER JOIN 
dbo.PATIENT ON dbo.CATEGORY_PATIENT.ID_CATEGORY_PATIENT = dbo.PATIENT.ID_CATEGORY_PATIENT
Where dbo.PATIENT.ID_PATIENT=@NoPatient

--Selection de toutes les donnees stockees dans la carte du patient
---------------------------------------------------------------------------------------
Select NoPatient,NomPatient,PrenomPatient,AutrenomPatient,Sexe,DOB,BarcodeIdPatient from #Carte_du_Patient 
--where NoPatient=@NoPatient

--Supprimer la table temporaire cree pour nous aider a stocker la carte pour le moment
----------------------------------------------------------------------------------------------------------------
Drop Table #Carte_du_Patient








