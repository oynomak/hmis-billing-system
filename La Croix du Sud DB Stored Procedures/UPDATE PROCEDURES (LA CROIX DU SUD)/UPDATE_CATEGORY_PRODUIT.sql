CREATE PROCEDURE UPDATE_CATEGORY_PRODUIT

@ID_CATEG_PRODUIT	int	,
@DESCRIPTION_CATEGORY	nvarchar(50)	

AS
UPDATE CATEGORY_PRODUIT
SET DESCRIPTION_CATEGORY=@DESCRIPTION_CATEGORY
WHERE ID_CATEG_PRODUIT=@ID_CATEG_PRODUIT