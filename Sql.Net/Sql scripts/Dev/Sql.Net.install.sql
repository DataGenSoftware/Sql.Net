--INSTALL
CREATE ASSEMBLY [Sql.Net]
FROM 'C:\Users\nms\Documents\GitHub\sql.net\Sql.Net\Sql.Net\bin\Debug\Sql.Net.dll'
GO

CREATE SCHEMA [Sql.Net]
GO

CREATE AGGREGATE [Sql.Net].[Aggr.Join] (@value nvarchar(max), @delimiter nvarchar(max)) RETURNS nvarchar(max)
EXTERNAL NAME [Sql.Net].[Sql.Net.Aggregates.Join]
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

CREATE FUNCTION [Sql.Net].[Types.DateTime.ToString](@dateTime datetime, @format nvarchar(max)) RETURNS nvarchar(max)
AS EXTERNAL NAME [Sql.Net].[Sql.Net.Types.DateTimeType].DateTimeToString
GO
CREATE FUNCTION [Sql.Net].[Types.DateTime.MinValue]() RETURNS datetime
AS EXTERNAL NAME [Sql.Net].[Sql.Net.Types.DateTimeType].DateTimeMinValue
GO
CREATE FUNCTION [Sql.Net].[Types.DateTime.MaxValue]() RETURNS datetime
AS EXTERNAL NAME [Sql.Net].[Sql.Net.Types.DateTimeType].DateTimeMaxValue
GO
CREATE FUNCTION [Sql.Net].[Types.DateTime.DaysInMonth](@year int, @month int) RETURNS int
AS EXTERNAL NAME [Sql.Net].[Sql.Net.Types.DateTimeType].DateTimeDaysInMonth
GO
CREATE FUNCTION [Sql.Net].[Types.DateTime.IsLeapYear](@year int) RETURNS bit
AS EXTERNAL NAME [Sql.Net].[Sql.Net.Types.DateTimeType].DateTimeIsLeapYear
GO
CREATE FUNCTION [Sql.Net].[Types.DateTime.Date](@dateTime datetime) RETURNS datetime
AS EXTERNAL NAME [Sql.Net].[Sql.Net.Types.DateTimeType].DateTimeDate
GO
CREATE FUNCTION [Sql.Net].[Types.DateTime.DateTimeTimeOfDay](@dateTime datetime) RETURNS time
AS EXTERNAL NAME [Sql.Net].[Sql.Net.Types.DateTimeType].DateTimeTimeOfDay
GO

CREATE FUNCTION [Sql.Net].[Types.Decimal.ToString](@value decimal, @format nvarchar(max)) RETURNS nvarchar(max)
AS EXTERNAL NAME [Sql.Net].[Sql.Net.Types.DecimalType].DecimalToString
GO
CREATE FUNCTION [Sql.Net].[Types.Decimal.MinValue]() RETURNS decimal(38,18)
AS EXTERNAL NAME [Sql.Net].[Sql.Net.Types.DecimalType].DecimalMinValue
GO
CREATE FUNCTION [Sql.Net].[Types.Decimal.MaxValue]() RETURNS decimal
AS EXTERNAL NAME [Sql.Net].[Sql.Net.Types.DecimalType].DecimalMaxValue
GO
CREATE FUNCTION [Sql.Net].[Types.Decimal.TryParse](@value nvarchar(max)) RETURNS decimal
AS EXTERNAL NAME [Sql.Net].[Sql.Net.Types.DecimalType].DecimalTryParse
GO
CREATE FUNCTION [Sql.Net].[Types.Decimal.Round](@value decimal) RETURNS decimal
AS EXTERNAL NAME [Sql.Net].[Sql.Net.Types.DecimalType].DecimalRound
GO
CREATE FUNCTION [Sql.Net].[Types.Decimal.Floor](@value decimal) RETURNS decimal
AS EXTERNAL NAME [Sql.Net].[Sql.Net.Types.DecimalType].DecimalFloor
GO
CREATE FUNCTION [Sql.Net].[Types.Decimal.Ceiling](@value decimal) RETURNS decimal
AS EXTERNAL NAME [Sql.Net].[Sql.Net.Types.DecimalType].DecimalCeiling
GO
CREATE FUNCTION [Sql.Net].[Types.Decimal.Truncate](@value decimal) RETURNS decimal
AS EXTERNAL NAME [Sql.Net].[Sql.Net.Types.DecimalType].DecimalTruncate
GO




