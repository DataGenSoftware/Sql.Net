CREATE FUNCTION [SqlNet].[StringPadLeft]
(@text NVARCHAR (MAX), @totalWidth INT)
RETURNS NVARCHAR (MAX)
AS
 EXTERNAL NAME [SqlNet].[Sql.Net.Types.StringType].[StringPadLeft]

