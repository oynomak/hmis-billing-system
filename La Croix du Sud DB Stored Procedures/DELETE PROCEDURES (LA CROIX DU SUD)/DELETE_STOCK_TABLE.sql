CREATE PROCEDURE DELETE_STOCK_TABLE

@ID_STOCK	nvarchar(10),
@NAME_STOCK	nvarchar(20)	

AS
DELETE STOCK
WHERE ID_STOCK=@ID_STOCK AND NAME_STOCK=@NAME_STOCK