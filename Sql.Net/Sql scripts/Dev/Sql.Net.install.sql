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
CREATE FUNCTION [Sql.Net].[Types.Char.IsLetter](@character nchar(1)) RETURNS bit
AS EXTERNAL NAME [Sql.Net].[Sql.Net.Types.CharType].[IsLetter]
GO
CREATE FUNCTION [Sql.Net].[Types.Char.IsLetterOrDigit](@character nchar(1)) RETURNS bit
AS EXTERNAL NAME [Sql.Net].[Sql.Net.Types.CharType].[IsLetterOrDigit]
GO
CREATE FUNCTION [Sql.Net].[Types.Char.IsLower](@character nchar(1)) RETURNS bit
AS EXTERNAL NAME [Sql.Net].[Sql.Net.Types.CharType].[IsLower]
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
CREATE FUNCTION [Sql.Net].[Types.Char.IsSymbol](@character nchar(1)) RETURNS bit
AS EXTERNAL NAME [Sql.Net].[Sql.Net.Types.CharType].[IsSymbol]
GO
CREATE FUNCTION [Sql.Net].[Types.Char.IsUpper](@character nchar(1)) RETURNS bit
AS EXTERNAL NAME [Sql.Net].[Sql.Net.Types.CharType].[IsUpper]
GO
CREATE FUNCTION [Sql.Net].[Types.Char.IsWhiteSpace](@character nchar(1)) RETURNS bit
AS EXTERNAL NAME [Sql.Net].[Sql.Net.Types.CharType].[IsWhiteSpace]
GO

CREATE FUNCTION [Sql.Net].[Types.DateTime.ToString](@dateTime datetime, @format nvarchar(max)) RETURNS nvarchar(max)
AS EXTERNAL NAME [Sql.Net].[Sql.Net.Types.DateTimeType].DateTimeToString
GO
CREATE FUNCTION [Sql.Net].[Types.DateTime.DaysInMonth](@year int, @month int) RETURNS int
AS EXTERNAL NAME [Sql.Net].[Sql.Net.Types.DateTimeType].DateTimeDaysInMonth
GO
CREATE FUNCTION [Sql.Net].[Types.DateTime.DaysInYear](@year int) RETURNS int
AS EXTERNAL NAME [Sql.Net].[Sql.Net.Types.DateTimeType].DateTimeDaysInYear
GO
CREATE FUNCTION [Sql.Net].[Types.DateTime.IsLeapYear](@year int) RETURNS bit
AS EXTERNAL NAME [Sql.Net].[Sql.Net.Types.DateTimeType].DateTimeIsLeapYear
GO
CREATE FUNCTION [Sql.Net].[Types.DateTime.Date](@dateTime datetime) RETURNS datetime
AS EXTERNAL NAME [Sql.Net].[Sql.Net.Types.DateTimeType].DateTimeDate
GO
CREATE FUNCTION [Sql.Net].[Types.DateTime.TimeOfDay](@dateTime datetime) RETURNS time
AS EXTERNAL NAME [Sql.Net].[Sql.Net.Types.DateTimeType].DateTimeTimeOfDay
GO
CREATE FUNCTION [Sql.Net].[Types.DateTime.IsWeekendDay](@dateTime datetime) RETURNS bit
AS EXTERNAL NAME [Sql.Net].[Sql.Net.Types.DateTimeType].DateTimeIsWeekendDay
GO
CREATE FUNCTION [Sql.Net].[Types.DateTime.IsWeekDay](@dateTime datetime) RETURNS bit
AS EXTERNAL NAME [Sql.Net].[Sql.Net.Types.DateTimeType].DateTimeIsWeekDay
GO
CREATE FUNCTION [Sql.Net].[Types.DateTime.IsToday](@dateTime datetime) RETURNS bit
AS EXTERNAL NAME [Sql.Net].[Sql.Net.Types.DateTimeType].DateTimeIsToday
GO
CREATE FUNCTION [Sql.Net].[Types.DateTime.BeginingOfDay](@dateTime datetime) RETURNS datetime
AS EXTERNAL NAME [Sql.Net].[Sql.Net.Types.DateTimeType].DateBeginingOfDay
GO
CREATE FUNCTION [Sql.Net].[Types.DateTime.EndOfDay](@dateTime datetime) RETURNS datetime
AS EXTERNAL NAME [Sql.Net].[Sql.Net.Types.DateTimeType].DateEndOfDay
GO
CREATE FUNCTION [Sql.Net].[Types.DateTime.BeginingOfMonth](@dateTime datetime) RETURNS datetime
AS EXTERNAL NAME [Sql.Net].[Sql.Net.Types.DateTimeType].DateBeginingOfMonth
GO
CREATE FUNCTION [Sql.Net].[Types.DateTime.EndOfMonth](@dateTime datetime) RETURNS datetime
AS EXTERNAL NAME [Sql.Net].[Sql.Net.Types.DateTimeType].DateEndOfMonth
GO
CREATE FUNCTION [Sql.Net].[Types.DateTime.FirstDayOfMonth](@dateTime datetime) RETURNS datetime
AS EXTERNAL NAME [Sql.Net].[Sql.Net.Types.DateTimeType].DateFirstDayOfMonth
GO
CREATE FUNCTION [Sql.Net].[Types.DateTime.LastDayOfMonth](@dateTime datetime) RETURNS datetime
AS EXTERNAL NAME [Sql.Net].[Sql.Net.Types.DateTimeType].DateLastDayOfMonth
GO

CREATE FUNCTION [Sql.Net].[Types.Decimal.ToString](@value decimal, @format nvarchar(max)) RETURNS nvarchar(max)
AS EXTERNAL NAME [Sql.Net].[Sql.Net.Types.DecimalType].DecimalToString
GO
CREATE FUNCTION [Sql.Net].[Types.Decimal.TryParse](@value nvarchar(max)) RETURNS decimal
AS EXTERNAL NAME [Sql.Net].[Sql.Net.Types.DecimalType].DecimalTryParse
GO

CREATE FUNCTION [Sql.Net].[Types.Double.ToString](@value float, @format nvarchar(max)) RETURNS nvarchar(max)
AS EXTERNAL NAME [Sql.Net].[Sql.Net.Types.DoubleType].DoubleToString
GO
CREATE FUNCTION [Sql.Net].[Types.Double.TryParse](@value nvarchar(max)) RETURNS float
AS EXTERNAL NAME [Sql.Net].[Sql.Net.Types.DoubleType].DoubleTryParse
GO

CREATE FUNCTION [Sql.Net].[Types.Single.ToString](@value real, @format nvarchar(max)) RETURNS nvarchar(max)
AS EXTERNAL NAME [Sql.Net].[Sql.Net.Types.SingleType].SingleToString
GO
CREATE FUNCTION [Sql.Net].[Types.Single.TryParse](@value nvarchar(max)) RETURNS real
AS EXTERNAL NAME [Sql.Net].[Sql.Net.Types.SingleType].SingleTryParse
GO


