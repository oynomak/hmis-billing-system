CREATE PROCEDURE DELETE_LABO_DEPARTMENT

@ID_DEPART_LABO	int	,
@NOM_DEPART_LABO	nvarchar(50)	

AS
DELETE LABO_DEPARTMENT
WHERE ID_DEPART_LABO=@ID_DEPART_LABO AND NOM_DEPART_LABO=@NOM_DEPART_LABO