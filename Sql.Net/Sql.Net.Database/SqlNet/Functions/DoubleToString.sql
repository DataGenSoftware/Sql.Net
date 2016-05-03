CREATE FUNCTION [SqlNet].[DoubleToString]
(@value FLOAT (53), @format NVARCHAR (MAX))
RETURNS NVARCHAR (MAX)
AS
 EXTERNAL NAME [SqlNet].[Sql.Net.Types.DoubleType].[DoubleToString]

