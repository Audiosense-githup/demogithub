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
-- Author:		ADMIN
-- Create date: 25/05/2024
-- Description:	SELECT,INSERT,DELETE,UPATE OPRATION FOR EMPLOYEE TABLE 
-- =============================================
ALTER PROCEDURE EMPLOYEEDETAILSSELECTINSERTDELETEUPDATEOPRATION(
@EmployeeID INT,@Firstname VARCHAR(50),@Lastname VARCHAR(50),@EmailId VARCHAR(50),@Password VARCHAR(50),@Designation VARCHAR(50),@Qualification VARCHAR(50),
@Address VARCHAR(50),@Contact VARCHAR(50),@StatementType NVARCHAR(20) = ''
)
AS
BEGIN
	  IF @StatementType = 'Insert'
        BEGIN
            INSERT INTO EmployeeDetails(EmployeeID,Firstname,Lastname,EmailId,Password,Designation,Qualification,Address,Contact)
			VALUES
			(@EmployeeID,@Firstname,@Lastname,@EmailId,@Password,@Designation,@Qualification,@Address,@Contact)

	END

    IF @StatementType = 'Select'
        BEGIN
            SELECT *
            FROM   EmployeeDetails
        END	
		 
		 IF @StatementType = 'Update'
        BEGIN
            UPDATE EmployeeDetails
            SET    Firstname = @Firstname,
                   Lastname = @Lastname,
                   EmailId = @EmailId,
                   Password =@Password,
				   Designation=@Designation,
				   Qualification=@Qualification,
				   Address=@Address,
	               Contact=@Contact

            WHERE  EmployeeID = @EmployeeID
        END
      ELSE IF @StatementType = 'Delete'
        BEGIN
            DELETE FROM EmployeeDetails
            WHERE  EmployeeID = @EmployeeID;
        END
		END