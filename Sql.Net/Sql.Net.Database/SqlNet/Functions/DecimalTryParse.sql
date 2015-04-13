CREATE FUNCTION [SqlNet].[DecimalTryParse]
(@value NVARCHAR (MAX))
RETURNS DECIMAL (18, 4)
AS
 EXTERNAL NAME [SqlNet].[Sql.Net.Types.DecimalType].[DecimalTryParse]

