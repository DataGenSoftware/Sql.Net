CREATE FUNCTION [SqlNet].[StringSHA1VerifyHash]
(@text NVARCHAR (MAX), @hash NVARCHAR (MAX))
RETURNS BIT
AS
 EXTERNAL NAME [SqlNet].[Sql.Net.Types.StringType].[StringSHA1VerifyHash]



