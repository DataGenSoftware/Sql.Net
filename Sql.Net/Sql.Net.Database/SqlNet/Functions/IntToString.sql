CREATE FUNCTION [SqlNet].[IntToString]
(@value INT, @format NVARCHAR (MAX))
RETURNS NVARCHAR (MAX)
AS
 EXTERNAL NAME [SqlNet].[Sql.Net.Types.IntType].[IntToString]



