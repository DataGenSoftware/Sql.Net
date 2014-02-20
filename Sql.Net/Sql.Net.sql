--PREINSTALL
EXEC sp_configure 'clr enabled' , '1' 
GO
RECONFIGURE 
GO

--INSTALL
CREATE ASSEMBLY [Sql.Net]
FROM 'C:\Users\nms\Documents\GitHub\sql.net\Sql.Net\Sql.Net\bin\Release\Sql.Net.dll'
GO

CREATE SCHEMA [Sql.Net]
GO

CREATE FUNCTION [Sql.Net].[Constants.Pi]() RETURNS float
AS EXTERNAL NAME [Sql.Net].[Sql.Net.Constants].[Pi]
GO
CREATE FUNCTION [Sql.Net].[Constants.E]() RETURNS float
AS EXTERNAL NAME [Sql.Net].[Sql.Net.Constants].[E]
GO


--UNINSTALL
DROP FUNCTION [Sql.Net].[Constants.Pi]
GO
DROP FUNCTION [Sql.Net].[Constants.E]
GO

DROP SCHEMA [Sql.Net]
GO

DROP ASSEMBLY [Sql.Net]
GO

--TEST
SELECT [Sql.Net].[Constants.Pi]()
SELECT [Sql.Net].[Constants.E]()