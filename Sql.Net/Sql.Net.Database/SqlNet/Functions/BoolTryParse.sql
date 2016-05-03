CREATE FUNCTION [SqlNet].[BoolTryParse]
(@value NVARCHAR (MAX))
RETURNS BIT
AS
 EXTERNAL NAME [SqlNet].[Sql.Net.Types.BooleanType].[TryParse]



