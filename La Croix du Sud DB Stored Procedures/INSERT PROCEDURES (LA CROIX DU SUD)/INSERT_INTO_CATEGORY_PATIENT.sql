CREATE PROCEDURE INSERT_INTO_CATEGORY_PATIENT

@DESCRIPTION_PATIENT	nvarchar(50)	

AS 
INSERT INTO CATEGORY_PATIENT
VALUES(@DESCRIPTION_PATIENT)