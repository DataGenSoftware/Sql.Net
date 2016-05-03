CREATE FUNCTION [SqlNet].[DateTimeFirstDayOfMonth]
(@dateTime DATETIME)
RETURNS DATETIME
AS
 EXTERNAL NAME [SqlNet].[Sql.Net.Types.DateTimeType].[DateFirstDayOfMonth]

