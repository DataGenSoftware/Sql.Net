CREATE FUNCTION [SqlNet].[BoolFalseString]
( )
RETURNS NVARCHAR (MAX)
AS
 EXTERNAL NAME [SqlNet].[Sql.Net.Types.BooleanType].[FalseString]



