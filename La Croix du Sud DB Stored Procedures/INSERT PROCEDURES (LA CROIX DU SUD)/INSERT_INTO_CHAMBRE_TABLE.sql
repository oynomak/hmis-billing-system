CREATE PROCEDURE INSERT_INTO_CHAMBRE_TABLE

@No_CHAMBRE	nvarchar(10),
@ID_CATEG_CHAMBRE	int,
@DISPONIBLE	bit

AS 
INSERT INTO CHAMBRE
VALUES(@No_CHAMBRE	,@ID_CATEG_CHAMBRE,@DISPONIBLE)