CREATE FUNCTION [SqlNet].[StringMD5VerifyHash]
(@text NVARCHAR (MAX), @hash NVARCHAR (MAX))
RETURNS BIT
AS
 EXTERNAL NAME [SqlNet].[Sql.Net.Types.StringType].[StringMD5VerifyHash]

