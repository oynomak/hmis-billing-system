CREATE PROCEDURE DELETE_SORTIE_DE_STOCK

@No_REFERENCE	int,
@CODE_PRODUIT	nvarchar(10)	

AS
DELETE SORTIE_DE_STOCK
WHERE No_REFERENCE=@No_REFERENCE AND CODE_PRODUIT=@CODE_PRODUIT