CREATE PROCEDURE UPDATE_COMMANDE_STOCK

@No_RECQUISITION	int	,
@ID_STOCK	nvarchar(10)	,
@CODE_PRODUIT	nvarchar(10)	,
@DATE_DE_COMMANDE	datetime	,
@HEURE_COMMANDE	nvarchar(10)	,
@QUANTITE_COMMANDEE	float	,
@OBSERVATIONS	nvarchar(50)	

AS
UPDATE COMMANDE_STOCK
SET ID_STOCK=@ID_STOCK,
CODE_PRODUIT=@CODE_PRODUIT,
DATE_DE_COMMANDE=@DATE_DE_COMMANDE,
HEURE_COMMANDE=@HEURE_COMMANDE,
QUANTITE_COMMANDEE=@QUANTITE_COMMANDEE,
OBSERVATIONS=@OBSERVATIONS
WHERE No_RECQUISITION=@No_RECQUISITION