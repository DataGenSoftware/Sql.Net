CREATE FUNCTION [SqlNet].[DateTimeTimeOfDay]
(@dateTime DATETIME)
RETURNS TIME (7)
AS
 EXTERNAL NAME [SqlNet].[Sql.Net.Types.DateTimeType].[DateTimeTimeOfDay]



