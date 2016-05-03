CREATE FUNCTION [SqlNet].[DateTimeIsWeekendDay]
(@dateTime DATETIME)
RETURNS BIT
AS
 EXTERNAL NAME [SqlNet].[Sql.Net.Types.DateTimeType].[DateTimeIsWeekendDay]



