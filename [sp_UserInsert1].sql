USE [Training]
GO
/****** Object:  StoredProcedure [dbo].[sp_UserInsert]    Script Date: 10/22/2018 2:37:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
create PROCEDURE [dbo].[sp_UserInsert1] 
	-- Add the parameters for the stored procedure here
@mode nvarchar(10),
	@userName varchar(150),
	@password varchar(20),
	@roleName varchar(30)
AS
if @mode='Add'
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
Insert into TM_USERMASTER(userName,password,roleName) values(@userName,@password,@roleName)
END
ELSE IF 
@mode='Edit'
BEGIN
UPDATE TM_USERMASTER
SET 
userName=@userName,
password=@password,
roleName=@roleName
where userName=@userName
End
