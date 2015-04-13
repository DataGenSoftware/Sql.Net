CREATE FUNCTION [SqlNet].[DateTimeEndOfYear]
(@dateTime DATETIME)
RETURNS DATETIME
AS
 EXTERNAL NAME [SqlNet].[Sql.Net.Types.DateTimeType].[DateEndOfYear]

