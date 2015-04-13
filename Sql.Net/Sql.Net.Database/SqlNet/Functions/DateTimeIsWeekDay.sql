CREATE FUNCTION [SqlNet].[DateTimeIsWeekDay]
(@dateTime DATETIME)
RETURNS BIT
AS
 EXTERNAL NAME [SqlNet].[Sql.Net.Types.DateTimeType].[DateTimeIsWeekDay]

