-- ================================================
-- Template generated from Template Explorer using:
-- Create Procedure (New Menu).SQL
--
-- Use the Specify Values for Template Parameters 
-- command (Ctrl-Shift-M) to fill in the parameter 
-- values below.
--
-- This block of comments will not be included in
-- the definition of the procedure.
-- ================================================
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Admin
-- Create date: 25/05/2024
-- Description:	Email validation for admin
-- =============================================
Alter PROCEDURE ADMINLOGINVALIDATION(@AdminEmailId varchar(50),@Password varchar(50),@ConfrimPassword varchar(50))
AS
BEGIN
	
	SET NOCOUNT ON;

	IF EXISTS(SELECT * FROM AdminTable WHERE AdminEmailId = @AdminEmailId AND password = @password)
    SELECT 'true' AS UserExists
ELSE
    SELECT 'false' AS UserExists
 
END
GO


select * from AdminTable 