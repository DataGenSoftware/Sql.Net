CREATE FUNCTION [SqlNet].[BoolToString]
(@value BIT)
RETURNS NVARCHAR (MAX)
AS
 EXTERNAL NAME [SqlNet].[Sql.Net.Types.BooleanType].[ToString]

