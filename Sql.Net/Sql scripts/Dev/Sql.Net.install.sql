--INSTALL

EXEC sp_configure 'clr enabled' , '1' 
GO
RECONFIGURE 
GO
DECLARE @query nvarchar(max)
SET @query = 'ALTER DATABASE [' + db_name() + '] SET TRUSTWORTHY ON'
EXEC sp_executesql @query
GO

CREATE ASSEMBLY [SqlNet]
FROM 'C:\DataGen\Sql.Net\Sql.Net\Sql.Net\bin\Release\Sql.Net.dll'
WITH PERMISSION_SET = UNSAFE 
GO

CREATE SCHEMA [SqlNet]
GO

CREATE TABLE [SqlNet].[ConfigurationSettings]
(
	[Name] [nvarchar](255) NOT NULL,
	[Value] [nvarchar](max) NOT NULL,
	CONSTRAINT [PK_Settings] PRIMARY KEY CLUSTERED 
	(
		[Name] ASC
	)
)
GO
CREATE PROCEDURE [SqlNet].[ConfigurationSettingsClear] AS
BEGIN
	TRUNCATE TABLE [SqlNet].[ConfigurationSettings]
END
GO
CREATE PROCEDURE [SqlNet].[ConfigurationSettingSet] @name nvarchar(255), @value nvarchar(max) AS
BEGIN
    MERGE [SqlNet].[ConfigurationSettings] AS target
    USING (SELECT @name, @value) AS source ([Name], [Value])
    ON (target.[Name] = source.[Name])
    WHEN MATCHED THEN 
		UPDATE SET [Value] = source.[Value]
	WHEN NOT MATCHED THEN
		INSERT ([Name], [Value]) VALUES (source.[Name], source.[Value]);
END
GO
CREATE PROCEDURE [SqlNet].[ConfigurationSettingUnset] @name nvarchar(255) AS
BEGIN
	DELETE FROM [SqlNet].[ConfigurationSettings] WHERE [Name] = @name
END
GO
CREATE FUNCTION [SqlNet].[ConfigurationSettingGet] (@name nvarchar(255))
RETURNS nvarchar(max)
AS
BEGIN
	RETURN 
		(SELECT [Value] FROM [SqlNet].[ConfigurationSettings] WHERE [Name] = @name)
END
GO
EXECUTE [SqlNet].[ConfigurationSettingSet] 'FirstDayOfWeek', 'Monday'
EXECUTE [SqlNet].[ConfigurationSettingSet] 'WeekendDays', 'Saturday|Sunday'
GO
CREATE TABLE [SqlNet].[ConfigurationHolidays]
(
	[Date] [datetime] NOT NULL,
	CONSTRAINT [PK_Holidays] PRIMARY KEY CLUSTERED 
	(
		[Date] ASC
	)
)
GO
CREATE PROCEDURE [SqlNet].[ConfigurationHolidaysClear] AS
BEGIN
	TRUNCATE TABLE [SqlNet].[ConfigurationHolidays]
END
GO
CREATE PROCEDURE [SqlNet].[ConfigurationHolidayAdd] @date datetime AS
BEGIN
	SET @date = [SqlNet].[DateTimeDate](@date)
	INSERT INTO [SqlNet].[ConfigurationHolidays] ([Date]) VALUES (@date)
END
GO
CREATE PROCEDURE [SqlNet].[ConfigurationHolidayRemove] @date datetime AS
BEGIN
	SET @date = [SqlNet].[DateTimeDate](@date)
	DELETE FROM [SqlNet].[ConfigurationHolidays] WHERE [Date] = @date
END
GO

CREATE AGGREGATE [SqlNet].[AggregateJoin] (@value nvarchar(max), @delimiter nvarchar(max)) RETURNS nvarchar(max)
EXTERNAL NAME [SqlNet].[Sql.Net.Aggregates.Join]
GO
CREATE SYNONYM [SqlNet].[Join] FOR [SqlNet].[AggregateJoin]
GO
CREATE AGGREGATE [SqlNet].[AggregateMedian] (@value decimal(18, 4)) RETURNS decimal(18, 4)
EXTERNAL NAME [SqlNet].[Sql.Net.Aggregates.Median]
GO
CREATE SYNONYM [SqlNet].[Median] FOR [SqlNet].[AggregateMedian]
GO
CREATE AGGREGATE [SqlNet].[AggregateMode] (@value sql_variant) RETURNS sql_variant
EXTERNAL NAME [SqlNet].[Sql.Net.Aggregates.Mode]
GO
CREATE SYNONYM [SqlNet].[Mode] FOR [SqlNet].[AggregateMode]
GO

CREATE FUNCTION [SqlNet].[MathPi]() RETURNS float
AS EXTERNAL NAME [SqlNet].[Sql.Net.Mathematic.Constants].[Pi]
GO
CREATE FUNCTION [SqlNet].[MathE]() RETURNS float
AS EXTERNAL NAME [SqlNet].[Sql.Net.Mathematic.Constants].[E]
GO

CREATE FUNCTION [SqlNet].[BoolToString](@value bit) RETURNS nvarchar(max)
AS EXTERNAL NAME [SqlNet].[Sql.Net.Types.BooleanType].[ToString]
GO
CREATE FUNCTION [SqlNet].[BoolFalseString]() RETURNS nvarchar(max)
AS EXTERNAL NAME [SqlNet].[Sql.Net.Types.BooleanType].[FalseString]
GO
CREATE FUNCTION [SqlNet].[BoolTrueString]() RETURNS nvarchar(max)
AS EXTERNAL NAME [SqlNet].[Sql.Net.Types.BooleanType].[TrueString]
GO
CREATE FUNCTION [SqlNet].[BoolTryParse](@value nvarchar(max)) RETURNS bit
AS EXTERNAL NAME [SqlNet].[Sql.Net.Types.BooleanType].[TryParse]
GO

CREATE FUNCTION [SqlNet].[CharIsControl](@character nchar(1)) RETURNS bit
AS EXTERNAL NAME [SqlNet].[Sql.Net.Types.CharType].[IsControl]
GO
CREATE FUNCTION [SqlNet].[CharIsDigit](@character nchar(1)) RETURNS bit
AS EXTERNAL NAME [SqlNet].[Sql.Net.Types.CharType].[IsDigit]
GO
CREATE FUNCTION [SqlNet].[CharIsLetter](@character nchar(1)) RETURNS bit
AS EXTERNAL NAME [SqlNet].[Sql.Net.Types.CharType].[IsLetter]
GO
CREATE FUNCTION [SqlNet].[CharIsLetterOrDigit](@character nchar(1)) RETURNS bit
AS EXTERNAL NAME [SqlNet].[Sql.Net.Types.CharType].[IsLetterOrDigit]
GO
CREATE FUNCTION [SqlNet].[CharIsLower](@character nchar(1)) RETURNS bit
AS EXTERNAL NAME [SqlNet].[Sql.Net.Types.CharType].[IsLower]
GO
CREATE FUNCTION [SqlNet].[CharIsNumber](@character nchar(1)) RETURNS bit
AS EXTERNAL NAME [SqlNet].[Sql.Net.Types.CharType].[IsNumber]
GO
CREATE FUNCTION [SqlNet].[CharIsPunctuation](@character nchar(1)) RETURNS bit
AS EXTERNAL NAME [SqlNet].[Sql.Net.Types.CharType].[IsPunctuation]
GO
CREATE FUNCTION [SqlNet].[CharIsSeparator](@character nchar(1)) RETURNS bit
AS EXTERNAL NAME [SqlNet].[Sql.Net.Types.CharType].[IsSeparator]
GO
CREATE FUNCTION [SqlNet].[CharIsSymbol](@character nchar(1)) RETURNS bit
AS EXTERNAL NAME [SqlNet].[Sql.Net.Types.CharType].[IsSymbol]
GO
CREATE FUNCTION [SqlNet].[CharIsUpper](@character nchar(1)) RETURNS bit
AS EXTERNAL NAME [SqlNet].[Sql.Net.Types.CharType].[IsUpper]
GO
CREATE FUNCTION [SqlNet].[CharIsWhiteSpace](@character nchar(1)) RETURNS bit
AS EXTERNAL NAME [SqlNet].[Sql.Net.Types.CharType].[IsWhiteSpace]
GO

CREATE FUNCTION [SqlNet].[DateTimeToString](@dateTime datetime, @format nvarchar(max)) RETURNS nvarchar(max)
AS EXTERNAL NAME [SqlNet].[Sql.Net.Types.DateTimeType].DateTimeToString
GO
CREATE FUNCTION [SqlNet].[DateTimeDaysInMonth](@year int, @month int) RETURNS int
AS EXTERNAL NAME [SqlNet].[Sql.Net.Types.DateTimeType].DateTimeDaysInMonth
GO
CREATE FUNCTION [SqlNet].[DateTimeDaysInYear](@year int) RETURNS int
AS EXTERNAL NAME [SqlNet].[Sql.Net.Types.DateTimeType].DateTimeDaysInYear
GO
CREATE FUNCTION [SqlNet].[DateTimeIsLeapYear](@year int) RETURNS bit
AS EXTERNAL NAME [SqlNet].[Sql.Net.Types.DateTimeType].DateTimeIsLeapYear
GO
CREATE FUNCTION [SqlNet].[DateTimeDate](@dateTime datetime) RETURNS datetime
AS EXTERNAL NAME [SqlNet].[Sql.Net.Types.DateTimeType].DateTimeDate
GO
CREATE FUNCTION [SqlNet].[DateTimeTimeOfDay](@dateTime datetime) RETURNS time
AS EXTERNAL NAME [SqlNet].[Sql.Net.Types.DateTimeType].DateTimeTimeOfDay
GO
CREATE FUNCTION [SqlNet].[DateTimeIsWeekendDay](@dateTime datetime) RETURNS bit
AS EXTERNAL NAME [SqlNet].[Sql.Net.Types.DateTimeType].DateTimeIsWeekendDay
GO
CREATE FUNCTION [SqlNet].[DateTimeIsWeekDay](@dateTime datetime) RETURNS bit
AS EXTERNAL NAME [SqlNet].[Sql.Net.Types.DateTimeType].DateTimeIsWeekDay
GO
CREATE FUNCTION [SqlNet].[DateTimeIsToday](@dateTime datetime) RETURNS bit
AS EXTERNAL NAME [SqlNet].[Sql.Net.Types.DateTimeType].DateTimeIsToday
GO
CREATE FUNCTION [SqlNet].[DateTimeBeginingOfDay](@dateTime datetime) RETURNS datetime
AS EXTERNAL NAME [SqlNet].[Sql.Net.Types.DateTimeType].DateBeginingOfDay
GO
CREATE FUNCTION [SqlNet].[DateTimeEndOfDay](@dateTime datetime) RETURNS datetime
AS EXTERNAL NAME [SqlNet].[Sql.Net.Types.DateTimeType].DateEndOfDay
GO
CREATE FUNCTION [SqlNet].[DateTimeBeginingOfMonth](@dateTime datetime) RETURNS datetime
AS EXTERNAL NAME [SqlNet].[Sql.Net.Types.DateTimeType].DateBeginingOfMonth
GO
CREATE FUNCTION [SqlNet].[DateTimeEndOfMonth](@dateTime datetime) RETURNS datetime
AS EXTERNAL NAME [SqlNet].[Sql.Net.Types.DateTimeType].DateEndOfMonth
GO
CREATE FUNCTION [SqlNet].[DateTimeFirstDayOfMonth](@dateTime datetime) RETURNS datetime
AS EXTERNAL NAME [SqlNet].[Sql.Net.Types.DateTimeType].DateFirstDayOfMonth
GO
CREATE FUNCTION [SqlNet].[DateTimeLastDayOfMonth](@dateTime datetime) RETURNS datetime
AS EXTERNAL NAME [SqlNet].[Sql.Net.Types.DateTimeType].DateLastDayOfMonth
GO
CREATE FUNCTION [SqlNet].[DateTimeBeginingOfWeek](@dateTime datetime) RETURNS datetime
AS EXTERNAL NAME [SqlNet].[Sql.Net.Types.DateTimeType].DateBeginingOfWeek
GO
CREATE FUNCTION [SqlNet].[DateTimeEndOfWeek](@dateTime datetime) RETURNS datetime
AS EXTERNAL NAME [SqlNet].[Sql.Net.Types.DateTimeType].DateEndOfWeek
GO
CREATE FUNCTION [SqlNet].[DateTimeBeginingOfYear](@dateTime datetime) RETURNS datetime
AS EXTERNAL NAME [SqlNet].[Sql.Net.Types.DateTimeType].DateBeginingOfYear
GO
CREATE FUNCTION [SqlNet].[DateTimeEndOfYear](@dateTime datetime) RETURNS datetime
AS EXTERNAL NAME [SqlNet].[Sql.Net.Types.DateTimeType].DateEndOfYear
GO
CREATE FUNCTION [SqlNet].[DateTimeIsHoliday](@dateTime datetime) RETURNS BIT AS
BEGIN
	SET @dateTime = [SqlNet].[DateTimeDate](@dateTime)
	RETURN 
		(SELECT CONVERT(BIT, COUNT([Date])) 
			FROM [SqlNet].[ConfigurationHolidays] 
			WHERE [Date] =  @dateTime)
END
GO
CREATE FUNCTION [SqlNet].[DateTimeDaysBetweenDates](@startDate DATETIME, @endDate DATETIME)
RETURNS @dates TABLE
(
	[Date] DATETIME
)
AS
BEGIN

	WHILE @startDate < @endDate
	BEGIN
		INSERT INTO @dates ([Date]) VALUES (@startDate)
		SET @startDate = DATEADD(d, 1, @startDate)
	END

	RETURN

END
GO
CREATE FUNCTION [SqlNet].[DateTimeQuarterNumberOfyear](@dateTime datetime)
RETURNS INT
AS
BEGIN
	RETURN DATEPART(quarter, @dateTime)
END
GO
CREATE SYNONYM [SqlNet].[Quarter] FOR [SqlNet].[DateTimeQuarterNumberOfyear]
GO

CREATE FUNCTION [SqlNet].[DecimalToString](@value decimal(18, 4), @format nvarchar(max)) RETURNS nvarchar(max)
AS EXTERNAL NAME [SqlNet].[Sql.Net.Types.DecimalType].DecimalToString
GO
CREATE FUNCTION [SqlNet].[DecimalTryParse](@value nvarchar(max)) RETURNS decimal(18, 4)
AS EXTERNAL NAME [SqlNet].[Sql.Net.Types.DecimalType].DecimalTryParse
GO

CREATE FUNCTION [SqlNet].[DoubleToString](@value float, @format nvarchar(max)) RETURNS nvarchar(max)
AS EXTERNAL NAME [SqlNet].[Sql.Net.Types.DoubleType].DoubleToString
GO
CREATE FUNCTION [SqlNet].[DoubleTryParse](@value nvarchar(max)) RETURNS float
AS EXTERNAL NAME [SqlNet].[Sql.Net.Types.DoubleType].DoubleTryParse
GO

CREATE FUNCTION [SqlNet].[IntToString](@value int, @format nvarchar(max)) RETURNS nvarchar(max)
AS EXTERNAL NAME [SqlNet].[Sql.Net.Types.IntType].IntToString
GO
CREATE FUNCTION [SqlNet].[IntTryParse](@value nvarchar(max)) RETURNS int
AS EXTERNAL NAME [SqlNet].[Sql.Net.Types.IntType].IntTryParse
GO
CREATE FUNCTION [SqlNet].[IntMinValue]() RETURNS int
AS EXTERNAL NAME [SqlNet].[Sql.Net.Types.IntType].IntMinValue
GO
CREATE FUNCTION [SqlNet].[IntMaxValue]() RETURNS int
AS EXTERNAL NAME [SqlNet].[Sql.Net.Types.IntType].IntMaxValue
GO
CREATE FUNCTION [SqlNet].[IntToWordsPL](@value int) RETURNS nvarchar(max)
AS EXTERNAL NAME [SqlNet].[Sql.Net.Types.IntType].IntToWordsPL
GO

CREATE FUNCTION [SqlNet].[SingleToString](@value real, @format nvarchar(max)) RETURNS nvarchar(max)
AS EXTERNAL NAME [SqlNet].[Sql.Net.Types.SingleType].SingleToString
GO
CREATE FUNCTION [SqlNet].[SingleTryParse](@value nvarchar(max)) RETURNS real
AS EXTERNAL NAME [SqlNet].[Sql.Net.Types.SingleType].SingleTryParse
GO

CREATE FUNCTION [SqlNet].[StringContains](@text nvarchar(max), @value nvarchar(max)) RETURNS bit
AS EXTERNAL NAME [SqlNet].[Sql.Net.Types.StringType].StringContains
GO
CREATE FUNCTION [SqlNet].[StringEndsWith](@text nvarchar(max), @value nvarchar(max)) RETURNS bit
AS EXTERNAL NAME [SqlNet].[Sql.Net.Types.StringType].StringEndsWith
GO
CREATE FUNCTION [SqlNet].[StringStartsWith](@text nvarchar(max), @value nvarchar(max)) RETURNS bit
AS EXTERNAL NAME [SqlNet].[Sql.Net.Types.StringType].StringStartsWith
GO
CREATE FUNCTION [SqlNet].[StringIndexOf](@text nvarchar(max), @value nvarchar(max)) RETURNS int
AS EXTERNAL NAME [SqlNet].[Sql.Net.Types.StringType].StringIndexOf
GO
CREATE FUNCTION [SqlNet].[StringLastIndexOf](@text nvarchar(max), @value nvarchar(max)) RETURNS int
AS EXTERNAL NAME [SqlNet].[Sql.Net.Types.StringType].StringLastIndexOf
GO
CREATE FUNCTION [SqlNet].[StringInsert](@text nvarchar(max), @startIndex int, @value nvarchar(max)) RETURNS nvarchar(max)
AS EXTERNAL NAME [SqlNet].[Sql.Net.Types.StringType].StringInsert
GO
CREATE FUNCTION [SqlNet].[StringPadLeft](@text nvarchar(max), @totalWidth int) RETURNS nvarchar(max)
AS EXTERNAL NAME [SqlNet].[Sql.Net.Types.StringType].StringPadLeft
GO
CREATE FUNCTION [SqlNet].[StringPadRight](@text nvarchar(max), @totalWidth int) RETURNS nvarchar(max)
AS EXTERNAL NAME [SqlNet].[Sql.Net.Types.StringType].StringPadRight
GO
CREATE FUNCTION [SqlNet].[StringSplit](@text nvarchar(max), @separator nvarchar(max)) RETURNS table (string nvarchar(max))
AS EXTERNAL NAME [SqlNet].[Sql.Net.Types.StringType].StringSplit
GO
CREATE FUNCTION [SqlNet].[StringTextGetBetweenTexts](@text nvarchar(max), @startText nvarchar(max), @endText nvarchar(max)) RETURNS nvarchar(max)
AS EXTERNAL NAME [SqlNet].[Sql.Net.Types.StringType].StringTextGetBetweenTexts
GO
CREATE FUNCTION [SqlNet].[StringTripleDESEncrypt](@text nvarchar(max), @key nvarchar(max)) RETURNS nvarchar(max)
AS EXTERNAL NAME [SqlNet].[Sql.Net.Types.StringType].StringTripleDESEncrypt
GO
CREATE FUNCTION [SqlNet].[StringTripleDESDecrypt](@text nvarchar(max), @key nvarchar(max)) RETURNS nvarchar(max)
AS EXTERNAL NAME [SqlNet].[Sql.Net.Types.StringType].StringTripleDESDecrypt
GO
CREATE FUNCTION [SqlNet].[StringMD5ComputeHash](@text nvarchar(max)) RETURNS nvarchar(max)
AS EXTERNAL NAME [SqlNet].[Sql.Net.Types.StringType].StringMD5ComputeHash
GO
CREATE FUNCTION [SqlNet].[StringMD5VerifyHash](@text nvarchar(max), @hash nvarchar(max)) RETURNS bit
AS EXTERNAL NAME [SqlNet].[Sql.Net.Types.StringType].StringMD5VerifyHash
GO
CREATE FUNCTION [SqlNet].[StringSHA1ComputeHash](@text nvarchar(max)) RETURNS nvarchar(max)
AS EXTERNAL NAME [SqlNet].[Sql.Net.Types.StringType].StringSHA1ComputeHash
GO
CREATE FUNCTION [SqlNet].[StringSHA1VerifyHash](@text nvarchar(max), @hash nvarchar(max)) RETURNS bit
AS EXTERNAL NAME [SqlNet].[Sql.Net.Types.StringType].StringSHA1VerifyHash
GO

CREATE FUNCTION [SqlNet].[SystemEnvironmentVariableGet](@name nvarchar(max)) RETURNS nvarchar(max)
AS EXTERNAL NAME [SqlNet].[Sql.Net.System.EnvironmentVariables].Get
GO
