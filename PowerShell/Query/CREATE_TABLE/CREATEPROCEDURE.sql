GO
	/*	***********************************		CREATE DATABASE*/
	CREATE DATABASE POWERSHELL
GO
	/*	***********************************		CREATE DATABASE*/
	USE POWERSHELL
	CREATE TABLE COLOR (
		ID INTEGER IDENTITY(1,1) NOT NULL,
		NAME VARCHAR(255) NOT NULL
	);
GO
	/*	***********************************		CREATE DATABASE*/
	INSERT INTO COLOR(NAME) VALUES('RED'), ('BLUE'), ('BLACK');
GO
GO

	CREATE PROCEDURE [dbo].[SP_SEL_COLOR]
	AS
		BEGIN
			SELECT ID,NAME FROM COLOR
		END
		
	GO