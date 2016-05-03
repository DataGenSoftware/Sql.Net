CREATE FUNCTION [SqlNet].[IntTryParse]
(@value NVARCHAR (MAX))
RETURNS INT
AS
 EXTERNAL NAME [SqlNet].[Sql.Net.Types.IntType].[IntTryParse]



