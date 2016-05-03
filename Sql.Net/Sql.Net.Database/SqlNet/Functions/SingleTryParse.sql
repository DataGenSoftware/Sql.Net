CREATE FUNCTION [SqlNet].[SingleTryParse]
(@value NVARCHAR (MAX))
RETURNS REAL
AS
 EXTERNAL NAME [SqlNet].[Sql.Net.Types.SingleType].[SingleTryParse]

