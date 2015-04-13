CREATE FUNCTION [SqlNet].[IntToWordsPL]
(@value INT)
RETURNS NVARCHAR (MAX)
AS
 EXTERNAL NAME [SqlNet].[Sql.Net.Types.IntType].[IntToWordsPL]

