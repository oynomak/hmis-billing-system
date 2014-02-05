CREATE PROCEDURE UPDATE_RENDEZ_VOUS_CONSULTATION

@ID_RENDEZ_VOUS	int	,
@ID_PATIENT	nvarchar(10)	,
@ID_SERVICE	nvarchar(10)	,
@DATE_RENDEZ_VOUS	datetime	,
@HEURE_RENDEZ_VOUS	nvarchar(10)	

AS
UPDATE RENDEZ_VOUS_CONSULTATION
SET ID_PATIENT=@ID_PATIENT,
ID_SERVICE=@ID_SERVICE,
DATE_RENDEZ_VOUS=@DATE_RENDEZ_VOUS,
HEURE_RENDEZ_VOUS=@HEURE_RENDEZ_VOUS
WHERE ID_RENDEZ_VOUS=@ID_RENDEZ_VOUS