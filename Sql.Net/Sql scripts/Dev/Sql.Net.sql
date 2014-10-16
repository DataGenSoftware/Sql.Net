--PREINSTALL
EXEC sp_configure 'clr enabled' , '1' 
GO
RECONFIGURE 
GO

--INSTALL
CREATE ASSEMBLY [Sql.Net]
FROM 'C:\Users\nms\Documents\GitHub\sql.net\Sql.Net\Sql.Net\bin\Debug\Sql.Net.dll'
GO

CREATE SCHEMA [Sql.Net]
GO

CREATE FUNCTION [Sql.Net].[Math.Const.Pi]() RETURNS float
AS EXTERNAL NAME [Sql.Net].[Sql.Net.Mathematic.Constants].[Pi]
GO
CREATE FUNCTION [Sql.Net].[Math.Const.E]() RETURNS float
AS EXTERNAL NAME [Sql.Net].[Sql.Net.Mathematic.Constants].[E]
GO

CREATE FUNCTION [Sql.Net].[Types.Bool.ToString](@value bit) RETURNS nvarchar(max)
AS EXTERNAL NAME [Sql.Net].[Sql.Net.Types.BooleanType].[ToString]
GO
CREATE FUNCTION [Sql.Net].[Types.Bool.FalseString]() RETURNS nvarchar(max)
AS EXTERNAL NAME [Sql.Net].[Sql.Net.Types.BooleanType].[FalseString]
GO
CREATE FUNCTION [Sql.Net].[Types.Bool.TrueString]() RETURNS nvarchar(max)
AS EXTERNAL NAME [Sql.Net].[Sql.Net.Types.BooleanType].[TrueString]
GO
CREATE FUNCTION [Sql.Net].[Types.Bool.TryParse](@value nvarchar(max)) RETURNS bit
AS EXTERNAL NAME [Sql.Net].[Sql.Net.Types.BooleanType].[TryParse]
GO

CREATE FUNCTION [Sql.Net].[Types.Char.IsControl](@character nchar(1)) RETURNS bit
AS EXTERNAL NAME [Sql.Net].[Sql.Net.Types.CharType].[IsControl]
GO
CREATE FUNCTION [Sql.Net].[Types.Char.IsDigit](@character nchar(1)) RETURNS bit
AS EXTERNAL NAME [Sql.Net].[Sql.Net.Types.CharType].[IsDigit]
GO
CREATE FUNCTION [Sql.Net].[Types.Char.IsHighSurrogate](@character nchar(1)) RETURNS bit
AS EXTERNAL NAME [Sql.Net].[Sql.Net.Types.CharType].[IsHighSurrogate]
GO
CREATE FUNCTION [Sql.Net].[Types.Char.IsLetter](@character nchar(1)) RETURNS bit
AS EXTERNAL NAME [Sql.Net].[Sql.Net.Types.CharType].[IsLetter]
GO
CREATE FUNCTION [Sql.Net].[Types.Char.IsLetterOrDigit](@character nchar(1)) RETURNS bit
AS EXTERNAL NAME [Sql.Net].[Sql.Net.Types.CharType].[IsLetterOrDigit]
GO
CREATE FUNCTION [Sql.Net].[Types.Char.IsLower](@character nchar(1)) RETURNS bit
AS EXTERNAL NAME [Sql.Net].[Sql.Net.Types.CharType].[IsLower]
GO
CREATE FUNCTION [Sql.Net].[Types.Char.IsLowSurrogate](@character nchar(1)) RETURNS bit
AS EXTERNAL NAME [Sql.Net].[Sql.Net.Types.CharType].[IsLowSurrogate]
GO
CREATE FUNCTION [Sql.Net].[Types.Char.IsNumber](@character nchar(1)) RETURNS bit
AS EXTERNAL NAME [Sql.Net].[Sql.Net.Types.CharType].[IsNumber]
GO
CREATE FUNCTION [Sql.Net].[Types.Char.IsPunctuation](@character nchar(1)) RETURNS bit
AS EXTERNAL NAME [Sql.Net].[Sql.Net.Types.CharType].[IsPunctuation]
GO
CREATE FUNCTION [Sql.Net].[Types.Char.IsSeparator](@character nchar(1)) RETURNS bit
AS EXTERNAL NAME [Sql.Net].[Sql.Net.Types.CharType].[IsSeparator]
GO
CREATE FUNCTION [Sql.Net].[Types.Char.IsSurrogate](@character nchar(1)) RETURNS bit
AS EXTERNAL NAME [Sql.Net].[Sql.Net.Types.CharType].[IsSurrogate]
GO
CREATE FUNCTION [Sql.Net].[Types.Char.IsSurrogatePair](@character1 nchar(1), @character2 nchar(1)) RETURNS bit
AS EXTERNAL NAME [Sql.Net].[Sql.Net.Types.CharType].[IsSurrogatePair]
GO
CREATE FUNCTION [Sql.Net].[Types.Char.IsSymbol](@character nchar(1)) RETURNS bit
AS EXTERNAL NAME [Sql.Net].[Sql.Net.Types.CharType].[IsSymbol]
GO
CREATE FUNCTION [Sql.Net].[Types.Char.IsUpper](@character nchar(1)) RETURNS bit
AS EXTERNAL NAME [Sql.Net].[Sql.Net.Types.CharType].[IsUpper]
GO
CREATE FUNCTION [Sql.Net].[Types.Char.IsWhiteSpace](@character nchar(1)) RETURNS bit
AS EXTERNAL NAME [Sql.Net].[Sql.Net.Types.CharType].[IsWhiteSpace]
GO
CREATE FUNCTION [Sql.Net].[Types.Char.MinValue]() RETURNS nchar(1)
AS EXTERNAL NAME [Sql.Net].[Sql.Net.Types.CharType].[MinValue]
GO
CREATE FUNCTION [Sql.Net].[Types.Char.MaxValue]() RETURNS nchar(1)
AS EXTERNAL NAME [Sql.Net].[Sql.Net.Types.CharType].[MaxValue]
GO
CREATE FUNCTION [Sql.Net].[Types.Char.ToLower](@character nchar(1)) RETURNS nchar(1)
AS EXTERNAL NAME [Sql.Net].[Sql.Net.Types.CharType].[ToLower]
GO
CREATE FUNCTION [Sql.Net].[Types.Char.ToUpper](@character nchar(1)) RETURNS nchar(1)
AS EXTERNAL NAME [Sql.Net].[Sql.Net.Types.CharType].[ToUpper]
GO

CREATE AGGREGATE [Sql.Net].[Aggr.Join] (@value nvarchar(max), @delimiter nvarchar(max)) RETURNS nvarchar(max)
EXTERNAL NAME [Sql.Net].[Sql.Net.Aggregates.Join]


--UNINSTALL
DROP FUNCTION [Sql.Net].[Math.Const.Pi]
GO
DROP FUNCTION [Sql.Net].[Math.Const.E]
GO


DROP AGGREGATE [Sql.Net].[Aggr.Join]
GO
 
DROP SCHEMA [Sql.Net]
GO

DROP ASSEMBLY [Sql.Net]
GO

--TEST
SELECT [Sql.Net].[Math.Const.Pi]()
SELECT [Sql.Net].[Math.Const.E]()

select [Sql.Net].[Types.Bool.ToString](0)
select [Sql.Net].[Types.Bool.FalseString]()
select [Sql.Net].[Types.Bool.TrueString]()
select [Sql.Net].[Types.Bool.TryParse]('false')

select [Sql.Net].[Types.Char.IsDigit]('1d')
select [Sql.Net].[Types.Char.IsNumber]('0')
select [Sql.Net].[Types.Char.IsUpper]('A')

select [Sql.Net].[Aggr.Join](name, ',') from sys.objects