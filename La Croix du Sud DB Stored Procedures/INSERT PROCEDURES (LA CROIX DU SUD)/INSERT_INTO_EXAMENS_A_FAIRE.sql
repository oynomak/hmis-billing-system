CREATE PROCEDURE INSERT_INTO_EXAMENS_A_FAIRE

@CODE_EXAMEN	nvarchar(10)	,
@ID_SERVICES_RENDUS	nvarchar(10)	,
@EXAM_DESCRIPTION	nvarchar(50)	,
@ID_DEPART_LABO	int,
@UNITE_DE_MESURE	nvarchar(5),
@VALEUR_NORMALE	float

AS
INSERT INTO EXAMENS_A_FAIRE
VALUES(@CODE_EXAMEN,@ID_SERVICES_RENDUS	,@EXAM_DESCRIPTION,
@ID_DEPART_LABO,@UNITE_DE_MESURE,@VALEUR_NORMALE)