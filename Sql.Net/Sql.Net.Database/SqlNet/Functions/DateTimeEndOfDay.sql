CREATE FUNCTION [SqlNet].[DateTimeEndOfDay]
(@dateTime DATETIME)
RETURNS DATETIME
AS
 EXTERNAL NAME [SqlNet].[Sql.Net.Types.DateTimeType].[DateEndOfDay]

