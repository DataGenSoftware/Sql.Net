CREATE FUNCTION [SqlNet].[SystemEnvironmentVariableGet]
(@name NVARCHAR (MAX))
RETURNS NVARCHAR (MAX)
AS
 EXTERNAL NAME [SqlNet].[Sql.Net.System.EnvironmentVariables].[Get]

