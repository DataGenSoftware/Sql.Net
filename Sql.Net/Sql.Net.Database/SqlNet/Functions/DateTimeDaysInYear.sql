CREATE FUNCTION [SqlNet].[DateTimeDaysInYear]
(@year INT)
RETURNS INT
AS
 EXTERNAL NAME [SqlNet].[Sql.Net.Types.DateTimeType].[DateTimeDaysInYear]

