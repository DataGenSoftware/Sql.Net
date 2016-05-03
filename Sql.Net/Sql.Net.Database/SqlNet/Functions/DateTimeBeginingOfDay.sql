CREATE FUNCTION [SqlNet].[DateTimeBeginingOfDay]
(@dateTime DATETIME)
RETURNS DATETIME
AS
 EXTERNAL NAME [SqlNet].[Sql.Net.Types.DateTimeType].[DateBeginingOfDay]

