CREATE FUNCTION [SqlNet].[DateTimeEndOfMonth]
(@dateTime DATETIME)
RETURNS DATETIME
AS
 EXTERNAL NAME [SqlNet].[Sql.Net.Types.DateTimeType].[DateEndOfMonth]

