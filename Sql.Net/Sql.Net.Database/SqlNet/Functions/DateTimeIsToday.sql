CREATE FUNCTION [SqlNet].[DateTimeIsToday]
(@dateTime DATETIME)
RETURNS BIT
AS
 EXTERNAL NAME [SqlNet].[Sql.Net.Types.DateTimeType].[DateTimeIsToday]

