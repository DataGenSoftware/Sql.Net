CREATE FUNCTION [SqlNet].[DateTimeLastDayOfMonth]
(@dateTime DATETIME)
RETURNS DATETIME
AS
 EXTERNAL NAME [SqlNet].[Sql.Net.Types.DateTimeType].[DateLastDayOfMonth]

