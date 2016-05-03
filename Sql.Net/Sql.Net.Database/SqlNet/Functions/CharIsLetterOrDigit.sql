CREATE FUNCTION [SqlNet].[CharIsLetterOrDigit]
(@character NCHAR (1))
RETURNS BIT
AS
 EXTERNAL NAME [SqlNet].[Sql.Net.Types.CharType].[IsLetterOrDigit]



