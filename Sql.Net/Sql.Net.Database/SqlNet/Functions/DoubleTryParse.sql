CREATE FUNCTION [SqlNet].[DoubleTryParse]
(@value NVARCHAR (MAX))
RETURNS FLOAT (53)
AS
 EXTERNAL NAME [SqlNet].[Sql.Net.Types.DoubleType].[DoubleTryParse]

