CREATE FUNCTION [SqlNet].[StringTripleDESDecrypt]
(@text NVARCHAR (MAX), @key NVARCHAR (MAX))
RETURNS NVARCHAR (MAX)
AS
 EXTERNAL NAME [SqlNet].[Sql.Net.Types.StringType].[StringTripleDESDecrypt]

