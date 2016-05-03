CREATE FUNCTION [SqlNet].[MathPi]
( )
RETURNS FLOAT (53)
AS
 EXTERNAL NAME [SqlNet].[Sql.Net.Mathematic.Constants].[Pi]

