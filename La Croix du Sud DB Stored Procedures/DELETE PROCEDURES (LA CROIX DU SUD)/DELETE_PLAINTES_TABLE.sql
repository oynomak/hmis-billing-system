CREATE PROCEDURE DELETE_PLAINTES_TABLE

@CODE_PLAINTE	int	,
@DESCRIPTION_PLAINTE	nvarchar(50)

AS 
DELETE PLAINTES
WHERE CODE_PLAINTE=@CODE_PLAINTE AND DESCRIPTION_PLAINTE=@DESCRIPTION_PLAINTE