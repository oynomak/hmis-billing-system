Create Procedure SELECT_ID_CONS_par_MAX_No_RENDEZ_VOUS

@ID_Patient nvarchar(20)

AS

SELECT  dbo.RENDEZ_VOUS_CONSULTATION.ID_CONSULTATION 
FROM    dbo.PATIENT INNER JOIN
        dbo.RENDEZ_VOUS_CONSULTATION ON dbo.PATIENT.ID_PATIENT = dbo.RENDEZ_VOUS_CONSULTATION.ID_PATIENT
WHERE  ID_RENDEZ_VOUS=(Select Max(ID_RENDEZ_VOUS)	 
						from RENDEZ_VOUS_CONSULTATION
						Where ID_PATIENT=@ID_Patient)