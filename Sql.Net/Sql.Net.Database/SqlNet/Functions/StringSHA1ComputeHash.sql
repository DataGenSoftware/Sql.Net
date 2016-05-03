CREATE FUNCTION [SqlNet].[StringSHA1ComputeHash]
(@text NVARCHAR (MAX))
RETURNS NVARCHAR (MAX)
AS
 EXTERNAL NAME [SqlNet].[Sql.Net.Types.StringType].[StringSHA1ComputeHash]

