CREATE FUNCTION [SqlNet].[DateTimeBeginingOfWeek]
(@dateTime DATETIME)
RETURNS DATETIME
AS
 EXTERNAL NAME [SqlNet].[Sql.Net.Types.DateTimeType].[DateBeginingOfWeek]



