CREATE FUNCTION [SqlNet].[StringPadRight]
(@text NVARCHAR (MAX), @totalWidth INT)
RETURNS NVARCHAR (MAX)
AS
 EXTERNAL NAME [SqlNet].[Sql.Net.Types.StringType].[StringPadRight]



