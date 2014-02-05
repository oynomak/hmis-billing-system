CREATE PROCEDURE UPDATE_CONSULTATION_TABLE

@ID_CONSULTATION	nvarchar(20)	,
@ID_PATIENT	nvarchar(10)	,
@POIDS	float	,
@DATE_CONSULTATION	datetime	,
@HEURE_CONSULTATION	nvarchar(10)	,
@CODE_PLAINTE	int	,
@OBSERVATIONS	nvarchar(50)	

AS
UPDATE CONSULTATION
SET ID_PATIENT=@ID_PATIENT,
POIDS=@POIDS,
DATE_CONSULTATION=@DATE_CONSULTATION,
HEURE_CONSULTATION=@HEURE_CONSULTATION,
CODE_PLAINTE=@CODE_PLAINTE,
OBSERVATIONS=@OBSERVATIONS
WHERE ID_CONSULTATION=@ID_CONSULTATION