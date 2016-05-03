CREATE FUNCTION [SqlNet].[StringMD5ComputeHash]
(@text NVARCHAR (MAX))
RETURNS NVARCHAR (MAX)
AS
 EXTERNAL NAME [SqlNet].[Sql.Net.Types.StringType].[StringMD5ComputeHash]

