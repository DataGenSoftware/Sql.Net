CREATE FUNCTION [SqlNet].[DateTimeToString]
(@dateTime DATETIME, @format NVARCHAR (MAX))
RETURNS NVARCHAR (MAX)
AS
 EXTERNAL NAME [SqlNet].[Sql.Net.Types.DateTimeType].[DateTimeToString]

