CREATE PROCEDURE DELETE_SIGNES_VITAUX

@ID_SIGNES_VITAUX	int	,
@SIGNES_VITAUX	nvarchar(50)

AS
DELETE SIGNES_VITAUX
WHERE ID_SIGNES_VITAUX=@ID_SIGNES_VITAUX AND SIGNES_VITAUX=@SIGNES_VITAUX