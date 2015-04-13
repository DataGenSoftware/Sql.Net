CREATE FUNCTION [SqlNet].[DateTimeDaysInMonth]
(@year INT, @month INT)
RETURNS INT
AS
 EXTERNAL NAME [SqlNet].[Sql.Net.Types.DateTimeType].[DateTimeDaysInMonth]

