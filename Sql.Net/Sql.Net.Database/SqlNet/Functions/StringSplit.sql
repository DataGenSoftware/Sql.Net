CREATE FUNCTION [SqlNet].[StringSplit]
(@text NVARCHAR (MAX), @separator NVARCHAR (MAX))
RETURNS 
     TABLE (
        [string] NVARCHAR (MAX) NULL)
AS
 EXTERNAL NAME [SqlNet].[Sql.Net.Types.StringType].[StringSplit]



