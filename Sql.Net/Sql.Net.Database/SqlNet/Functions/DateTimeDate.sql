CREATE FUNCTION [SqlNet].[DateTimeDate]
(@dateTime DATETIME)
RETURNS DATETIME
AS
 EXTERNAL NAME [SqlNet].[Sql.Net.Types.DateTimeType].[DateTimeDate]

