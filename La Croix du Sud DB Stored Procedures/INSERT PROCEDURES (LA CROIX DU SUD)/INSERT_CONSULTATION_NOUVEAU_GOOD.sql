set ANSI_NULLS ON
set QUOTED_IDENTIFIER ON
go

ALTER Procedure [dbo].[INSERT_CONSULTATION_NOUVEAU_GOOD]

@ID_CONSULTATION NVARCHAR(50)

AS

DECLARE @No_SERVICE INT
DECLARE @No_patient NVARCHAR(20)

SET @No_SERVICE=(SELECT ID_SERVICE
				FROM   dbo.RENDEZ_VOUS_CONSULTATION
				WHERE  ID_CONSULTATION = @ID_CONSULTATION)

SET @No_patient=(SELECT ID_PATIENT
				FROM   dbo.RENDEZ_VOUS_CONSULTATION
				WHERE  ID_CONSULTATION = @ID_CONSULTATION)

INSERT INTO CONSULTATION(ID_CONSULTATION,ID_SERVICE,ID_PATIENT)
VALUES(@ID_CONSULTATION,@No_SERVICE,@No_patient)

--------- INSERT INTO TRAITEMENT_CONSULTATION ------------------
DECLARE @CATEG_PATIENT INT

SET @CATEG_PATIENT=(SELECT     dbo.PATIENT.ID_CATEGORY_PATIENT
					FROM         dbo.PATIENT INNER JOIN
                      dbo.RENDEZ_VOUS_CONSULTATION ON dbo.PATIENT.ID_PATIENT = dbo.RENDEZ_VOUS_CONSULTATION.ID_PATIENT
					WHERE     (dbo.RENDEZ_VOUS_CONSULTATION.ID_CONSULTATION = @ID_CONSULTATION))

IF(@CATEG_PATIENT=1200)
BEGIN
INSERT INTO TRAITEMENT_CONSULTATION
VALUES(@ID_CONSULTATION,'CONS-2',0,0)
END

IF(@CATEG_PATIENT=1000)
BEGIN
INSERT INTO TRAITEMENT_CONSULTATION
VALUES(@ID_CONSULTATION,'CONS-1',0,0)
END