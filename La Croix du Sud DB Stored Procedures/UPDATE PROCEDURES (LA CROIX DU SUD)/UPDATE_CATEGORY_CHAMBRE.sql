CREATE PROCEDURE UPDATE_CATEGORY_CHAMBRE

@ID_CATEG_CHAMBRE	int	,
@DESCRIPTION	nvarchar(50)	,
@PRIX_PAR_CHAMBRE	money

AS
UPDATE CATEGORY_CHAMBRE
SET DESCRIPTION=@DESCRIPTION,
PRIX_PAR_CHAMBRE=@PRIX_PAR_CHAMBRE
WHERE ID_CATEG_CHAMBRE=@ID_CATEG_CHAMBRE