CREATE FUNCTION [SqlNet].[SingleToString]
(@value REAL, @format NVARCHAR (MAX))
RETURNS NVARCHAR (MAX)
AS
 EXTERNAL NAME [SqlNet].[Sql.Net.Types.SingleType].[SingleToString]



