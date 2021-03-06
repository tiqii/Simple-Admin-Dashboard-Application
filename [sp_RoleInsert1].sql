USE [Training]
GO
/****** Object:  StoredProcedure [dbo].[sp_RoleInsert1]    Script Date: 10/22/2018 3:27:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE  [dbo].[sp_RoleInsert1]
	-- Add the parameters for the stored procedure here
	@mode nvarchar(10),
	@roleName varchar(30),
	@roleDescription varchar(150)
AS
if @mode='Add'
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	Insert into TM_ROLEMASTER(roleName, roleDescription) values(@roleName, @roleDescription)
END
Else If @mode='Edit'
BEGIN
UPDATE TM_ROLEMASTER
SET 
roleName=@roleName,
roleDescription=@roleDescription
where roleName=@roleName
End
