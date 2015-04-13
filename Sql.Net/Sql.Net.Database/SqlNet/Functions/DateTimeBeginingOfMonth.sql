CREATE FUNCTION [SqlNet].[DateTimeBeginingOfMonth]
(@dateTime DATETIME)
RETURNS DATETIME
AS
 EXTERNAL NAME [SqlNet].[Sql.Net.Types.DateTimeType].[DateBeginingOfMonth]

