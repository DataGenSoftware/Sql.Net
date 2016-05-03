CREATE FUNCTION [SqlNet].[StringTextGetBetweenTexts]
(@text NVARCHAR (MAX), @startText NVARCHAR (MAX), @endText NVARCHAR (MAX))
RETURNS NVARCHAR (MAX)
AS
 EXTERNAL NAME [SqlNet].[Sql.Net.Types.StringType].[StringTextGetBetweenTexts]

