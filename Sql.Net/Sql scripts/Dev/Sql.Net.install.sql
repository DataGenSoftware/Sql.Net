--INSTALL
CREATE ASSEMBLY [Sql.Net]
FROM 'C:\DataGen\Sql.Net\Sql.Net\Sql.Net\bin\Release\Sql.Net.dll'
WITH PERMISSION_SET = UNSAFE 
GO

CREATE SCHEMA [Sql.Net]
GO

CREATE AGGREGATE [Sql.Net].[Aggregate.Join] (@value nvarchar(max), @delimiter nvarchar(max)) RETURNS nvarchar(max)
EXTERNAL NAME [Sql.Net].[Sql.Net.Aggregates.Join]
GO
CREATE SYNONYM [dbo].[join] FOR [Sql.Net].[Aggregate.Join]
GO
CREATE AGGREGATE [Sql.Net].[Aggregate.Mode] (@value sql_variant) RETURNS sql_variant
EXTERNAL NAME [Sql.Net].[Sql.Net.Aggregates.Mode]
GO
CREATE SYNONYM [dbo].[mode] FOR [Sql.Net].[Aggregate.Mode]
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
CREATE FUNCTION [Sql.Net].[Types.DateTime.BeginingOfWeek](@dateTime datetime) RETURNS datetime
AS EXTERNAL NAME [Sql.Net].[Sql.Net.Types.DateTimeType].DateBeginingOfWeek
GO
CREATE FUNCTION [Sql.Net].[Types.DateTime.EndOfWeek](@dateTime datetime) RETURNS datetime
AS EXTERNAL NAME [Sql.Net].[Sql.Net.Types.DateTimeType].DateEndOfWeek
GO
CREATE TABLE [Sql.Net].[Holidays]
(
	[Date] [datetime] NOT NULL,
	CONSTRAINT [PK_Holidays] PRIMARY KEY CLUSTERED 
	(
		[Date] ASC
	)
)
GO
CREATE PROCEDURE [Sql.Net].[HolidaysClear] AS
BEGIN
	TRUNCATE TABLE [Sql.Net].[Holidays]
END
GO
CREATE PROCEDURE [Sql.Net].[HolidayAdd] @date datetime AS
BEGIN
	SET @date = [Sql.Net].[Types.DateTime.Date](@date)
	INSERT INTO [Sql.Net].[Holidays] ([Date]) VALUES (@date)
END
GO
CREATE PROCEDURE [Sql.Net].[HolidayRemove] @date datetime AS
BEGIN
	SET @date = [Sql.Net].[Types.DateTime.Date](@date)
	DELETE FROM [Sql.Net].[Holidays] WHERE [Date] = @date
END
GO
CREATE FUNCTION [Sql.Net].[Types.DateTime.IsHoliday](@dateTime datetime) RETURNS BIT AS
BEGIN
	SET @dateTime = [Sql.Net].[Types.DateTime.Date](@dateTime)
	RETURN 
		(SELECT CONVERT(BIT, COUNT([Date])) 
			FROM [Sql.Net].[Holidays] 
			WHERE [Date] =  @dateTime)
END
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

CREATE FUNCTION [Sql.Net].[Types.Int.ToString](@value int, @format nvarchar(max)) RETURNS nvarchar(max)
AS EXTERNAL NAME [Sql.Net].[Sql.Net.Types.IntType].IntToString
GO
CREATE FUNCTION [Sql.Net].[Types.Int.TryParse](@value nvarchar(max)) RETURNS int
AS EXTERNAL NAME [Sql.Net].[Sql.Net.Types.IntType].IntTryParse
GO
CREATE FUNCTION [Sql.Net].[Types.Int.MinValue]() RETURNS int
AS EXTERNAL NAME [Sql.Net].[Sql.Net.Types.IntType].IntMinValue
GO
CREATE FUNCTION [Sql.Net].[Types.Int.MaxValue]() RETURNS int
AS EXTERNAL NAME [Sql.Net].[Sql.Net.Types.IntType].IntMaxValue
GO
CREATE FUNCTION [Sql.Net].[Types.Int.ToWordsPL](@value int) RETURNS nvarchar(max)
AS EXTERNAL NAME [Sql.Net].[Sql.Net.Types.IntType].IntToWordsPL
GO

CREATE FUNCTION [Sql.Net].[Types.Single.ToString](@value real, @format nvarchar(max)) RETURNS nvarchar(max)
AS EXTERNAL NAME [Sql.Net].[Sql.Net.Types.SingleType].SingleToString
GO
CREATE FUNCTION [Sql.Net].[Types.Single.TryParse](@value nvarchar(max)) RETURNS real
AS EXTERNAL NAME [Sql.Net].[Sql.Net.Types.SingleType].SingleTryParse
GO

CREATE FUNCTION [Sql.Net].[Types.String.Contains](@text nvarchar(max), @value nvarchar(max)) RETURNS bit
AS EXTERNAL NAME [Sql.Net].[Sql.Net.Types.StringType].StringContains
GO
CREATE FUNCTION [Sql.Net].[Types.String.EndsWith](@text nvarchar(max), @value nvarchar(max)) RETURNS bit
AS EXTERNAL NAME [Sql.Net].[Sql.Net.Types.StringType].StringEndsWith
GO
CREATE FUNCTION [Sql.Net].[Types.String.StartsWith](@text nvarchar(max), @value nvarchar(max)) RETURNS bit
AS EXTERNAL NAME [Sql.Net].[Sql.Net.Types.StringType].StringStartsWith
GO
CREATE FUNCTION [Sql.Net].[Types.String.IndexOf](@text nvarchar(max), @value nvarchar(max)) RETURNS int
AS EXTERNAL NAME [Sql.Net].[Sql.Net.Types.StringType].StringIndexOf
GO
CREATE FUNCTION [Sql.Net].[Types.String.LastIndexOf](@text nvarchar(max), @value nvarchar(max)) RETURNS int
AS EXTERNAL NAME [Sql.Net].[Sql.Net.Types.StringType].StringLastIndexOf
GO
CREATE FUNCTION [Sql.Net].[Types.String.Insert](@text nvarchar(max), @startIndex int, @value nvarchar(max)) RETURNS nvarchar(max)
AS EXTERNAL NAME [Sql.Net].[Sql.Net.Types.StringType].StringInsert
GO
CREATE FUNCTION [Sql.Net].[Types.String.PadLeft](@text nvarchar(max), @totalWidth int) RETURNS nvarchar(max)
AS EXTERNAL NAME [Sql.Net].[Sql.Net.Types.StringType].StringPadLeft
GO
CREATE FUNCTION [Sql.Net].[Types.String.PadRight](@text nvarchar(max), @totalWidth int) RETURNS nvarchar(max)
AS EXTERNAL NAME [Sql.Net].[Sql.Net.Types.StringType].StringPadRight
GO
CREATE FUNCTION [Sql.Net].[Types.String.Split](@text nvarchar(max), @separator nvarchar(max)) RETURNS table (string nvarchar(max))
AS EXTERNAL NAME [Sql.Net].[Sql.Net.Types.StringType].StringSplit
GO
CREATE FUNCTION [Sql.Net].[Types.String.TextGetBetweenTexts](@text nvarchar(max), @startText nvarchar(max), @endText nvarchar(max)) RETURNS nvarchar(max)
AS EXTERNAL NAME [Sql.Net].[Sql.Net.Types.StringType].StringTextGetBetweenTexts
GO
CREATE FUNCTION [Sql.Net].[Types.String.TripleDESEncrypt](@text nvarchar(max), @key nvarchar(max)) RETURNS nvarchar(max)
AS EXTERNAL NAME [Sql.Net].[Sql.Net.Types.StringType].StringTripleDESEncrypt
GO
CREATE FUNCTION [Sql.Net].[Types.String.TripleDESDecrypt](@text nvarchar(max), @key nvarchar(max)) RETURNS nvarchar(max)
AS EXTERNAL NAME [Sql.Net].[Sql.Net.Types.StringType].StringTripleDESDecrypt
GO
CREATE FUNCTION [Sql.Net].[Types.String.MD5ComputeHash](@text nvarchar(max)) RETURNS nvarchar(max)
AS EXTERNAL NAME [Sql.Net].[Sql.Net.Types.StringType].StringMD5ComputeHash
GO
CREATE FUNCTION [Sql.Net].[Types.String.MD5VerifyHash](@text nvarchar(max), @hash nvarchar(max)) RETURNS bit
AS EXTERNAL NAME [Sql.Net].[Sql.Net.Types.StringType].StringMD5VerifyHash
GO
CREATE FUNCTION [Sql.Net].[Types.String.SHA1ComputeHash](@text nvarchar(max)) RETURNS nvarchar(max)
AS EXTERNAL NAME [Sql.Net].[Sql.Net.Types.StringType].StringSHA1ComputeHash
GO
CREATE FUNCTION [Sql.Net].[Types.String.SHA1VerifyHash](@text nvarchar(max), @hash nvarchar(max)) RETURNS bit
AS EXTERNAL NAME [Sql.Net].[Sql.Net.Types.StringType].StringSHA1VerifyHash
GO

CREATE FUNCTION [Sql.Net].[System.EnvironmentVariables.Get](@name nvarchar(max)) RETURNS nvarchar(max)
AS EXTERNAL NAME [Sql.Net].[Sql.Net.System.EnvironmentVariables].Get
GO
