CREATE FUNCTION [SqlNet].[DateTimeEndOfWeek]
(@dateTime DATETIME)
RETURNS DATETIME
AS
 EXTERNAL NAME [SqlNet].[Sql.Net.Types.DateTimeType].[DateEndOfWeek]

