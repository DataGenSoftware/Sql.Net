CREATE FUNCTION [SqlNet].[DateTimeIsLeapYear]
(@year INT)
RETURNS BIT
AS
 EXTERNAL NAME [SqlNet].[Sql.Net.Types.DateTimeType].[DateTimeIsLeapYear]

