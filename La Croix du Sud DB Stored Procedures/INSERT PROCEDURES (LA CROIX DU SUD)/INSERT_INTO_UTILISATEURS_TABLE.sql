CREATE PROCEDURE INSERT_INTO_UTILISATEURS_TABLE

@LOGIN_NAME	nvarchar(20)	,
@PASSWORD	nvarchar(20)	,
@ID_SPECIALISATION	int	,
@NOM	nvarchar(50)	,
@PRENOM	nvarchar(50)	,
@SEXE	char(1)	,
@ID_SERVICE	nvarchar(10)	
		
AS
INSERT INTO UTILISATEURS
VALUES(@LOGIN_NAME	,@PASSWORD	,@ID_SPECIALISATION	,@NOM,
@PRENOM	,@SEXE	,@ID_SERVICE	)