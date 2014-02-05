CREATE PROCEDURE UPDATE_CHAMBRES_TABLE

@No_CHAMBRE	nvarchar(10)	,
@ID_CATEG_CHAMBRE	int	,
@DISPONIBLE	bit	

AS
UPDATE CHAMBRES
SET ID_CATEG_CHAMBRE=@ID_CATEG_CHAMBRE,
DISPONIBLE=@DISPONIBLE
WHERE No_CHAMBRE=@No_CHAMBRE