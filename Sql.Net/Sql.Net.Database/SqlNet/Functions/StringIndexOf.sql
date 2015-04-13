CREATE FUNCTION [SqlNet].[StringIndexOf]
(@text NVARCHAR (MAX), @value NVARCHAR (MAX))
RETURNS INT
AS
 EXTERNAL NAME [SqlNet].[Sql.Net.Types.StringType].[StringIndexOf]

