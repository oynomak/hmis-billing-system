CREATE PROCEDURE UPDATE_CATEG_SERVICES_RENDUS

@ID_CATEG_SER_RENDUS	int	,
@DESCRIPTION_SERVICE	nvarchar(50)

AS
UPDATE CATEG_SERVICES_RENDUS
SET DESCRIPTION_SERVICE=@DESCRIPTION_SERVICE
WHERE ID_CATEG_SER_RENDUS=@ID_CATEG_SER_RENDUS