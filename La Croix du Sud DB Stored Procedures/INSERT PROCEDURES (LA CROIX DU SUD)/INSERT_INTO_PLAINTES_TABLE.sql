set ANSI_NULLS ON
set QUOTED_IDENTIFIER ON
go

ALTER PROCEDURE [dbo].[INSERT_INTO_PLAINTES_TABLE]

@DESCRIPTION_PLAINTE	nvarchar(50)	

AS
INSERT INTO PLAINTES
VALUES(@DESCRIPTION_PLAINTE)
