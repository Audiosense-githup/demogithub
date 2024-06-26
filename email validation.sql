USE [EmployeeDetails]
GO
/****** Object:  StoredProcedure [dbo].[EmailvalidationforLogin]    Script Date: 04-06-2024 12:29:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Admin
-- Create date: 25/05/2024
-- Description:		Email validation and login Details
-- =============================================
ALTER PROCEDURE [dbo].[EmailvalidationforLogin]
	-- Add the parameters for the stored procedure here
	@AdminId nvarchar(50), 
	@password nvarchar(50),
	@ConfrimPassword nvarchar(50),
	 @responseMessage NVARCHAR(250) OUTPUT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;




	 BEGIN TRY

        INSERT INTO AdminTable(AdminId,Password)VALUES(@AdminId,@password,@ConfrimPassword,@
        SET @responseMessage='Success'

    END TRY
    BEGIN CATCH
        SET @responseMessage=ERROR_MESSAGE() 
    END CATCH

    -- Insert statements for procedure here
	
SELECT * FROM EmployeeLogin

WHERE

    CHARINDEX('@',EmailId) > 1 AND  -- "@" is not at the start

    CHARINDEX('.', EmailId) > CHARINDEX('@', EmailId) + 1 AND  -- There's a "." after "@"

    LEN(EmailId) - CHARINDEX('.', REVERSE(EmailId)) >= 2 AND  -- At least two characters after the last "."

    LEN(EmailId) - CHARINDEX('@', REVERSE(EmailId)) > 2;  -- At least one character after "@" and before "."
END


