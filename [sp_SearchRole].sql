USE [Training]
GO
/****** Object:  StoredProcedure [dbo].[sp_SearchUser]    Script Date: 10/18/2018 5:04:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
ALTER PROCEDURE [dbo].[sp_SearchRole] 
@roleName varchar(30)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * from TM_ROLEMASTER where roleName=@roleName
END
