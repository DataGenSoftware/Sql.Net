CREATE FUNCTION [SqlNet].[DateTimeBeginingOfYear]
(@dateTime DATETIME)
RETURNS DATETIME
AS
 EXTERNAL NAME [SqlNet].[Sql.Net.Types.DateTimeType].[DateBeginingOfYear]

