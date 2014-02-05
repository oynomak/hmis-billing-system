CREATE PROCEDURE UPDATE_TRANSFERT_TABLE

@ID_TRANSFERT	nvarchar(10)	,
@ID_CONSULTATION	nvarchar(20)	,
@ID_DESTINATION	int	,
@DATE_TRANSFERT	datetime	,
@HEURE_TRANSFERT	nvarchar(10)	,
@RECOMMANDATIONS	nvarchar(50)	,
@OBSERVATIONS	nvarchar(50)	

AS
UPDATE TRANSFERT 
SET ID_CONSULTATION=@ID_CONSULTATION,
ID_DESTINATION=@ID_DESTINATION,
DATE_TRANSFERT=@DATE_TRANSFERT,
HEURE_TRANSFERT=@HEURE_TRANSFERT,
RECOMMANDATIONS=@RECOMMANDATIONS,
OBSERVATIONS=@OBSERVATIONS
WHERE ID_TRANSFERT=@ID_TRANSFERT