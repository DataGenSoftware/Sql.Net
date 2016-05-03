CREATE FUNCTION [SqlNet].[IntToWords]
(@value INT, @culture NVARCHAR (MAX))
RETURNS NVARCHAR (MAX)
AS
 EXTERNAL NAME [SqlNet].[Sql.Net.Types.IntType].[IntToWords]

