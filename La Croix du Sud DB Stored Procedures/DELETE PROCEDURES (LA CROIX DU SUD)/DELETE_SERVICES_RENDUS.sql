CREATE PROCEDURE DELETE_SERVICES_RENDUS

@ID_SERVICES_RENDUS	nvarchar(10)	,
@DESCRIPTION_SERV_RENDUS	nvarchar(50)

AS
DELETE SERVICES_RENDUS
WHERE ID_SERVICES_RENDUS=@ID_SERVICES_RENDUS AND DESCRIPTION_SERV_RENDUS=@DESCRIPTION_SERV_RENDUS