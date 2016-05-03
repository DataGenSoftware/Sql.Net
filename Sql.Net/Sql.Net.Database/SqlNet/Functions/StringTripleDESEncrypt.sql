CREATE FUNCTION [SqlNet].[StringTripleDESEncrypt]
(@text NVARCHAR (MAX), @key NVARCHAR (MAX))
RETURNS NVARCHAR (MAX)
AS
 EXTERNAL NAME [SqlNet].[Sql.Net.Types.StringType].[StringTripleDESEncrypt]



