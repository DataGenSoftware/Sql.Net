CREATE FUNCTION [SqlNet].[CharIsUpper]
(@character NCHAR (1))
RETURNS BIT
AS
 EXTERNAL NAME [SqlNet].[Sql.Net.Types.CharType].[IsUpper]



