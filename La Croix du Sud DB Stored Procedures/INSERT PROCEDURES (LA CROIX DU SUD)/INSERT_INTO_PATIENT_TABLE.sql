set ANSI_NULLS ON
set QUOTED_IDENTIFIER ON
go


ALTER PROCEDURE [dbo].[INSERT_INTO_PATIENT_TABLE]

@ID_PATIENT	nvarchar(20)	,
@NOM	nvarchar(50)	,
@PRENOM	nvarchar(50)	,
@AUTRE_NOM	nvarchar(50)	,
@ID_ASSUREUR	nvarchar(10)	,
@PROFESSION	nvarchar(20)	,
@SEXE	char(1)	,
@DATE_NAISSANCE	datetime	,
@No_CARTE_IDENTITE	nvarchar(10)	,
@RELIGION	nvarchar(10)	,
@MARITAL_STATUS	nvarchar(20)	,
@CONJOINT	nvarchar(50)	,
@TELEPHONE	nvarchar(20)	,
@CONTACT_D_URGENCE	nvarchar(100),
@No_CARTE_ASSUREUR	nvarchar(20)	,
@ID_CATEGORY_PATIENT	int	,
@NATIONALITY	nvarchar(20)	,
@PROVINCE	nvarchar(20)	,
@DISTRICT	nvarchar(20)	

AS
begin

	DECLARE @DATE_ENREG DATETIME,@NomPatient varchar(50)
	DECLARE @ErrorVar INT



	SET @DATE_ENREG=GETDATE();
	set @NomPatient =(select nom from patient 
						where NOM=@NOM and PRENOM=@PRENOM and AUTRE_NOM=@AUTRE_NOM and SEXE=@SEXE and 
							DATE_NAISSANCE=@DATE_NAISSANCE and No_CARTE_IDENTITE=@No_CARTE_IDENTITE)

	if @NomPatient is null
	BEGIN
		INSERT INTO PATIENT
		VALUES(@ID_PATIENT,@NOM,@PRENOM,@AUTRE_NOM,@ID_ASSUREUR,@PROFESSION,@SEXE,
		@DATE_NAISSANCE,@No_CARTE_IDENTITE,@RELIGION,@MARITAL_STATUS,@CONJOINT,@TELEPHONE,
		@CONTACT_D_URGENCE,@DATE_ENREG,@No_CARTE_ASSUREUR,@ID_CATEGORY_PATIENT,
		@NATIONALITY,@PROVINCE,@DISTRICT)
	END
	else
		RAISERROR('Le patient existe déjà dans la BD.', 16, 1);
end



