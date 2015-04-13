CREATE FUNCTION [SqlNet].[BoolTrueString]
( )
RETURNS NVARCHAR (MAX)
AS
 EXTERNAL NAME [SqlNet].[Sql.Net.Types.BooleanType].[TrueString]

