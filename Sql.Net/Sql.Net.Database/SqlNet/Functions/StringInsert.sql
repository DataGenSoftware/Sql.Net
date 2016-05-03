CREATE FUNCTION [SqlNet].[StringInsert]
(@text NVARCHAR (MAX), @startIndex INT, @value NVARCHAR (MAX))
RETURNS NVARCHAR (MAX)
AS
 EXTERNAL NAME [SqlNet].[Sql.Net.Types.StringType].[StringInsert]

