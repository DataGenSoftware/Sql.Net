CREATE FUNCTION [SqlNet].[DecimalToString]
(@value DECIMAL (18, 4), @format NVARCHAR (MAX))
RETURNS NVARCHAR (MAX)
AS
 EXTERNAL NAME [SqlNet].[Sql.Net.Types.DecimalType].[DecimalToString]

