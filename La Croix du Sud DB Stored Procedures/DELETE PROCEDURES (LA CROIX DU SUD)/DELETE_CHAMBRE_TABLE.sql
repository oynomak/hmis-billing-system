CREATE PROCEDURE DELETE_CHAMBRE_TABLE

@No_CHAMBRE	nvarchar(10)	

AS 
DELETE CHAMBRE
WHERE No_CHAMBRE=@No_CHAMBRE