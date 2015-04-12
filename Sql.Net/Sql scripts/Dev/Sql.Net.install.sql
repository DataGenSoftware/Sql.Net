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
FROM 'D:\DataGen\Sql.Net\Sql.Net\Sql.Net\bin\Release\Sql.Net.dll'
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
CREATE SYNONYM [SqlNet].[Settings] FOR [SqlNet].[ConfigurationSettings]
GO
CREATE PROCEDURE [SqlNet].[ConfigurationSettingsClear] AS
BEGIN
	TRUNCATE TABLE [SqlNet].[ConfigurationSettings]
END
GO
CREATE SYNONYM [SqlNet].[SettingsClear] FOR [SqlNet].[ConfigurationSettingsClear]
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
CREATE SYNONYM [SqlNet].[SettingSet] FOR [SqlNet].[ConfigurationSettingSet]
GO
CREATE PROCEDURE [SqlNet].[ConfigurationSettingUnset] @name nvarchar(255) AS
BEGIN
	DELETE FROM [SqlNet].[ConfigurationSettings] WHERE [Name] = @name
END
GO
CREATE SYNONYM [SqlNet].[SettingUnset] FOR [SqlNet].[ConfigurationSettingUnset]
GO
CREATE FUNCTION [SqlNet].[ConfigurationSettingGet] (@name nvarchar(255))
RETURNS nvarchar(max)
AS
BEGIN
	RETURN 
		(SELECT [Value] FROM [SqlNet].[ConfigurationSettings] WHERE [Name] = @name)
END
GO
CREATE SYNONYM [SqlNet].[SettingGet] FOR [SqlNet].[ConfigurationSettingGet]
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
CREATE SYNONYM [SqlNet].[Holidays] FOR [SqlNet].[ConfigurationHolidays]
GO
CREATE PROCEDURE [SqlNet].[ConfigurationHolidaysClear] AS
BEGIN
	TRUNCATE TABLE [SqlNet].[ConfigurationHolidays]
END
GO
CREATE SYNONYM [SqlNet].[HolidaysClear] FOR [SqlNet].[ConfigurationHolidaysClear]
GO
CREATE PROCEDURE [SqlNet].[ConfigurationHolidayAdd] @date datetime AS
BEGIN
	SET @date = [SqlNet].[DateTimeDate](@date)
	INSERT INTO [SqlNet].[ConfigurationHolidays] ([Date]) VALUES (@date)
END
GO
CREATE SYNONYM [SqlNet].[HolidayAdd] FOR [SqlNet].[ConfigurationHolidayAdd]
GO
CREATE PROCEDURE [SqlNet].[ConfigurationHolidayRemove] @date datetime AS
BEGIN
	SET @date = [SqlNet].[DateTimeDate](@date)
	DELETE FROM [SqlNet].[ConfigurationHolidays] WHERE [Date] = @date
END
GO
CREATE SYNONYM [SqlNet].[HolidayRemove] FOR [SqlNet].[ConfigurationHolidayRemove]
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
CREATE SYNONYM [SqlNet].[Pi] FOR [SqlNet].[MathPi]
GO
CREATE FUNCTION [SqlNet].[MathE]() RETURNS float
AS EXTERNAL NAME [SqlNet].[Sql.Net.Mathematic.Constants].[E]
GO
CREATE SYNONYM [SqlNet].[E] FOR [SqlNet].[MathE]
GO

CREATE FUNCTION [SqlNet].[BoolToString](@value bit) RETURNS nvarchar(max)
AS EXTERNAL NAME [SqlNet].[Sql.Net.Types.BooleanType].[ToString]
GO
CREATE FUNCTION [SqlNet].[BoolFalseString]() RETURNS nvarchar(max)
AS EXTERNAL NAME [SqlNet].[Sql.Net.Types.BooleanType].[FalseString]
GO
CREATE SYNONYM [SqlNet].[FalseString] FOR [SqlNet].[BoolFalseString]
GO
CREATE FUNCTION [SqlNet].[BoolTrueString]() RETURNS nvarchar(max)
AS EXTERNAL NAME [SqlNet].[Sql.Net.Types.BooleanType].[TrueString]
GO
CREATE SYNONYM [SqlNet].[TrueString] FOR [SqlNet].[BoolTrueString]
GO
CREATE FUNCTION [SqlNet].[BoolTryParse](@value nvarchar(max)) RETURNS bit
AS EXTERNAL NAME [SqlNet].[Sql.Net.Types.BooleanType].[TryParse]
GO

CREATE FUNCTION [SqlNet].[CharIsControl](@character nchar(1)) RETURNS bit
AS EXTERNAL NAME [SqlNet].[Sql.Net.Types.CharType].[IsControl]
GO
CREATE SYNONYM [SqlNet].[IsControl] FOR [SqlNet].[CharIsControl]
GO
CREATE FUNCTION [SqlNet].[CharIsDigit](@character nchar(1)) RETURNS bit
AS EXTERNAL NAME [SqlNet].[Sql.Net.Types.CharType].[IsDigit]
GO
CREATE SYNONYM [SqlNet].[IsDigit] FOR [SqlNet].[CharIsDigit]
GO
CREATE FUNCTION [SqlNet].[CharIsLetter](@character nchar(1)) RETURNS bit
AS EXTERNAL NAME [SqlNet].[Sql.Net.Types.CharType].[IsLetter]
GO
CREATE SYNONYM [SqlNet].[IsLetter] FOR [SqlNet].[CharIsLetter]
GO
CREATE FUNCTION [SqlNet].[CharIsLetterOrDigit](@character nchar(1)) RETURNS bit
AS EXTERNAL NAME [SqlNet].[Sql.Net.Types.CharType].[IsLetterOrDigit]
GO
CREATE SYNONYM [SqlNet].[IsLetterOrDigit] FOR [SqlNet].[CharIsLetterOrDigit]
GO
CREATE FUNCTION [SqlNet].[CharIsLower](@character nchar(1)) RETURNS bit
AS EXTERNAL NAME [SqlNet].[Sql.Net.Types.CharType].[IsLower]
GO
CREATE SYNONYM [SqlNet].[IsLower] FOR [SqlNet].[CharIsLower]
GO
CREATE FUNCTION [SqlNet].[CharIsNumber](@character nchar(1)) RETURNS bit
AS EXTERNAL NAME [SqlNet].[Sql.Net.Types.CharType].[IsNumber]
GO
CREATE SYNONYM [SqlNet].[IsNumber] FOR [SqlNet].[CharIsNumber]
GO
CREATE FUNCTION [SqlNet].[CharIsPunctuation](@character nchar(1)) RETURNS bit
AS EXTERNAL NAME [SqlNet].[Sql.Net.Types.CharType].[IsPunctuation]
GO
CREATE SYNONYM [SqlNet].[IsPunctuation] FOR [SqlNet].[CharIsPunctuation]
GO
CREATE FUNCTION [SqlNet].[CharIsSeparator](@character nchar(1)) RETURNS bit
AS EXTERNAL NAME [SqlNet].[Sql.Net.Types.CharType].[IsSeparator]
GO
CREATE SYNONYM [SqlNet].[IsSeparator] FOR [SqlNet].[CharIsSeparator]
GO
CREATE FUNCTION [SqlNet].[CharIsSymbol](@character nchar(1)) RETURNS bit
AS EXTERNAL NAME [SqlNet].[Sql.Net.Types.CharType].[IsSymbol]
GO
CREATE SYNONYM [SqlNet].[IsSymbol] FOR [SqlNet].[CharIsSymbol]
GO
CREATE FUNCTION [SqlNet].[CharIsUpper](@character nchar(1)) RETURNS bit
AS EXTERNAL NAME [SqlNet].[Sql.Net.Types.CharType].[IsUpper]
GO
CREATE SYNONYM [SqlNet].[IsUpper] FOR [SqlNet].[CharIsUpper]
GO
CREATE FUNCTION [SqlNet].[CharIsWhiteSpace](@character nchar(1)) RETURNS bit
AS EXTERNAL NAME [SqlNet].[Sql.Net.Types.CharType].[IsWhiteSpace]
GO
CREATE SYNONYM [SqlNet].[IsWhiteSpace] FOR [SqlNet].[CharIsWhiteSpace]
GO

CREATE FUNCTION [SqlNet].[DateTimeToString](@dateTime datetime, @format nvarchar(max)) RETURNS nvarchar(max)
AS EXTERNAL NAME [SqlNet].[Sql.Net.Types.DateTimeType].DateTimeToString
GO
CREATE FUNCTION [SqlNet].[DateTimeDaysInMonth](@year int, @month int) RETURNS int
AS EXTERNAL NAME [SqlNet].[Sql.Net.Types.DateTimeType].DateTimeDaysInMonth
GO
CREATE SYNONYM [SqlNet].[DaysInMonth] FOR [SqlNet].[DateTimeDaysInMonth]
GO
CREATE FUNCTION [SqlNet].[DateTimeDaysInYear](@year int) RETURNS int
AS EXTERNAL NAME [SqlNet].[Sql.Net.Types.DateTimeType].DateTimeDaysInYear
GO
CREATE SYNONYM [SqlNet].[DaysInYear] FOR [SqlNet].[DateTimeDaysInYear]
GO
CREATE FUNCTION [SqlNet].[DateTimeIsLeapYear](@year int) RETURNS bit
AS EXTERNAL NAME [SqlNet].[Sql.Net.Types.DateTimeType].DateTimeIsLeapYear
GO
CREATE SYNONYM [SqlNet].[IsLeapYear] FOR [SqlNet].[DateTimeIsLeapYear]
GO
CREATE FUNCTION [SqlNet].[DateTimeDate](@dateTime datetime) RETURNS datetime
AS EXTERNAL NAME [SqlNet].[Sql.Net.Types.DateTimeType].DateTimeDate
GO
CREATE SYNONYM [SqlNet].[Date] FOR [SqlNet].[DateTimeDate]
GO
CREATE FUNCTION [SqlNet].[DateTimeTimeOfDay](@dateTime datetime) RETURNS time
AS EXTERNAL NAME [SqlNet].[Sql.Net.Types.DateTimeType].DateTimeTimeOfDay
GO
CREATE SYNONYM [SqlNet].[TimeOfDay] FOR [SqlNet].[DateTimeTimeOfDay]
GO
CREATE FUNCTION [SqlNet].[DateTimeIsWeekendDay](@dateTime datetime) RETURNS bit
AS EXTERNAL NAME [SqlNet].[Sql.Net.Types.DateTimeType].DateTimeIsWeekendDay
GO
CREATE SYNONYM [SqlNet].[IsWeekendDay] FOR [SqlNet].[DateTimeIsWeekendDay]
GO
CREATE FUNCTION [SqlNet].[DateTimeIsWeekDay](@dateTime datetime) RETURNS bit
AS EXTERNAL NAME [SqlNet].[Sql.Net.Types.DateTimeType].DateTimeIsWeekDay
GO
CREATE SYNONYM [SqlNet].[IsWeekDay] FOR [SqlNet].[DateTimeIsWeekDay]
GO
CREATE FUNCTION [SqlNet].[DateTimeIsToday](@dateTime datetime) RETURNS bit
AS EXTERNAL NAME [SqlNet].[Sql.Net.Types.DateTimeType].DateTimeIsToday
GO
CREATE SYNONYM [SqlNet].[IsToday] FOR [SqlNet].[DateTimeIsToday]
GO
CREATE FUNCTION [SqlNet].[DateTimeBeginingOfDay](@dateTime datetime) RETURNS datetime
AS EXTERNAL NAME [SqlNet].[Sql.Net.Types.DateTimeType].DateBeginingOfDay
GO
CREATE SYNONYM [SqlNet].[BeginingOfDay] FOR [SqlNet].[DateTimeBeginingOfDay]
GO
CREATE FUNCTION [SqlNet].[DateTimeEndOfDay](@dateTime datetime) RETURNS datetime
AS EXTERNAL NAME [SqlNet].[Sql.Net.Types.DateTimeType].DateEndOfDay
GO
CREATE SYNONYM [SqlNet].[EndOfDay] FOR [SqlNet].[DateTimeEndOfDay]
GO
CREATE FUNCTION [SqlNet].[DateTimeBeginingOfMonth](@dateTime datetime) RETURNS datetime
AS EXTERNAL NAME [SqlNet].[Sql.Net.Types.DateTimeType].DateBeginingOfMonth
GO
CREATE SYNONYM [SqlNet].[BeginingOfMonth] FOR [SqlNet].[DateTimeBeginingOfMonth]
GO
CREATE FUNCTION [SqlNet].[DateTimeEndOfMonth](@dateTime datetime) RETURNS datetime
AS EXTERNAL NAME [SqlNet].[Sql.Net.Types.DateTimeType].DateEndOfMonth
GO
CREATE SYNONYM [SqlNet].[EndOfMonth] FOR [SqlNet].[DateTimeEndOfMonth]
GO
CREATE FUNCTION [SqlNet].[DateTimeFirstDayOfMonth](@dateTime datetime) RETURNS datetime
AS EXTERNAL NAME [SqlNet].[Sql.Net.Types.DateTimeType].DateFirstDayOfMonth
GO
CREATE SYNONYM [SqlNet].[FirstDayOfMonth] FOR [SqlNet].[DateTimeFirstDayOfMonth]
GO
CREATE FUNCTION [SqlNet].[DateTimeLastDayOfMonth](@dateTime datetime) RETURNS datetime
AS EXTERNAL NAME [SqlNet].[Sql.Net.Types.DateTimeType].DateLastDayOfMonth
GO
CREATE SYNONYM [SqlNet].[LastDayOfMonth] FOR [SqlNet].[DateTimeLastDayOfMonth]
GO
CREATE FUNCTION [SqlNet].[DateTimeBeginingOfWeek](@dateTime datetime) RETURNS datetime
AS EXTERNAL NAME [SqlNet].[Sql.Net.Types.DateTimeType].DateBeginingOfWeek
GO
CREATE SYNONYM [SqlNet].[BeginingOfWeek] FOR [SqlNet].[DateTimeBeginingOfWeek]
GO
CREATE FUNCTION [SqlNet].[DateTimeEndOfWeek](@dateTime datetime) RETURNS datetime
AS EXTERNAL NAME [SqlNet].[Sql.Net.Types.DateTimeType].DateEndOfWeek
GO
CREATE SYNONYM [SqlNet].[EndOfWeek] FOR [SqlNet].[DateTimeEndOfWeek]
GO
CREATE FUNCTION [SqlNet].[DateTimeBeginingOfYear](@dateTime datetime) RETURNS datetime
AS EXTERNAL NAME [SqlNet].[Sql.Net.Types.DateTimeType].DateBeginingOfYear
GO
CREATE SYNONYM [SqlNet].[BeginingOfYear] FOR [SqlNet].[DateTimeBeginingOfYear]
GO
CREATE FUNCTION [SqlNet].[DateTimeEndOfYear](@dateTime datetime) RETURNS datetime
AS EXTERNAL NAME [SqlNet].[Sql.Net.Types.DateTimeType].DateEndOfYear
GO
CREATE SYNONYM [SqlNet].[EndOfYear] FOR [SqlNet].[DateTimeEndOfYear]
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
CREATE SYNONYM [SqlNet].[IsHoliday] FOR [SqlNet].[DateTimeIsHoliday]
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
CREATE SYNONYM [SqlNet].[DaysBetweenDates] FOR [SqlNet].[DateTimeDaysBetweenDates]
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
CREATE SYNONYM [SqlNet].[ToWordsPL] FOR [SqlNet].[IntToWordsPL]
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
CREATE SYNONYM [SqlNet].[Contains] FOR [SqlNet].[StringContains]
GO
CREATE FUNCTION [SqlNet].[StringEndsWith](@text nvarchar(max), @value nvarchar(max)) RETURNS bit
AS EXTERNAL NAME [SqlNet].[Sql.Net.Types.StringType].StringEndsWith
GO
CREATE SYNONYM [SqlNet].[EndsWith] FOR [SqlNet].[StringEndsWith]
GO
CREATE FUNCTION [SqlNet].[StringStartsWith](@text nvarchar(max), @value nvarchar(max)) RETURNS bit
AS EXTERNAL NAME [SqlNet].[Sql.Net.Types.StringType].StringStartsWith
GO
CREATE SYNONYM [SqlNet].[StartsWith] FOR [SqlNet].[StringStartsWith]
GO
CREATE FUNCTION [SqlNet].[StringIndexOf](@text nvarchar(max), @value nvarchar(max)) RETURNS int
AS EXTERNAL NAME [SqlNet].[Sql.Net.Types.StringType].StringIndexOf
GO
CREATE SYNONYM [SqlNet].[IndexOf] FOR [SqlNet].[StringIndexOf]
GO
CREATE FUNCTION [SqlNet].[StringLastIndexOf](@text nvarchar(max), @value nvarchar(max)) RETURNS int
AS EXTERNAL NAME [SqlNet].[Sql.Net.Types.StringType].StringLastIndexOf
GO
CREATE SYNONYM [SqlNet].[LastIndexOf] FOR [SqlNet].[StringLastIndexOf]
GO
CREATE FUNCTION [SqlNet].[StringInsert](@text nvarchar(max), @startIndex int, @value nvarchar(max)) RETURNS nvarchar(max)
AS EXTERNAL NAME [SqlNet].[Sql.Net.Types.StringType].StringInsert
GO
CREATE SYNONYM [SqlNet].[Insert] FOR [SqlNet].[StringInsert]
GO
CREATE FUNCTION [SqlNet].[StringPadLeft](@text nvarchar(max), @totalWidth int) RETURNS nvarchar(max)
AS EXTERNAL NAME [SqlNet].[Sql.Net.Types.StringType].StringPadLeft
GO
CREATE SYNONYM [SqlNet].[PadLeft] FOR [SqlNet].[StringPadLeft]
GO
CREATE FUNCTION [SqlNet].[StringPadRight](@text nvarchar(max), @totalWidth int) RETURNS nvarchar(max)
AS EXTERNAL NAME [SqlNet].[Sql.Net.Types.StringType].StringPadRight
GO
CREATE SYNONYM [SqlNet].[PadRight] FOR [SqlNet].[StringPadRight]
GO
CREATE FUNCTION [SqlNet].[StringSplit](@text nvarchar(max), @separator nvarchar(max)) RETURNS table (string nvarchar(max))
AS EXTERNAL NAME [SqlNet].[Sql.Net.Types.StringType].StringSplit
GO
CREATE SYNONYM [SqlNet].[Split] FOR [SqlNet].[StringSplit]
GO
CREATE FUNCTION [SqlNet].[StringTextGetBetweenTexts](@text nvarchar(max), @startText nvarchar(max), @endText nvarchar(max)) RETURNS nvarchar(max)
AS EXTERNAL NAME [SqlNet].[Sql.Net.Types.StringType].StringTextGetBetweenTexts
GO
CREATE SYNONYM [SqlNet].[TextGetBetweenTexts] FOR [SqlNet].[StringTextGetBetweenTexts]
GO
CREATE FUNCTION [SqlNet].[StringTripleDESEncrypt](@text nvarchar(max), @key nvarchar(max)) RETURNS nvarchar(max)
AS EXTERNAL NAME [SqlNet].[Sql.Net.Types.StringType].StringTripleDESEncrypt
GO
CREATE SYNONYM [SqlNet].[TripleDESEncrypt] FOR [SqlNet].[StringTripleDESEncrypt]
GO
CREATE FUNCTION [SqlNet].[StringTripleDESDecrypt](@text nvarchar(max), @key nvarchar(max)) RETURNS nvarchar(max)
AS EXTERNAL NAME [SqlNet].[Sql.Net.Types.StringType].StringTripleDESDecrypt
GO
CREATE SYNONYM [SqlNet].[TripleDESDecrypt] FOR [SqlNet].[StringTripleDESDecrypt]
GO
CREATE FUNCTION [SqlNet].[StringMD5ComputeHash](@text nvarchar(max)) RETURNS nvarchar(max)
AS EXTERNAL NAME [SqlNet].[Sql.Net.Types.StringType].StringMD5ComputeHash
GO
CREATE SYNONYM [SqlNet].[MD5ComputeHash] FOR [SqlNet].[StringMD5ComputeHash]
GO
CREATE FUNCTION [SqlNet].[StringMD5VerifyHash](@text nvarchar(max), @hash nvarchar(max)) RETURNS bit
AS EXTERNAL NAME [SqlNet].[Sql.Net.Types.StringType].StringMD5VerifyHash
GO
CREATE SYNONYM [SqlNet].[MD5VerifyHash] FOR [SqlNet].[StringMD5VerifyHash]
GO
CREATE FUNCTION [SqlNet].[StringSHA1ComputeHash](@text nvarchar(max)) RETURNS nvarchar(max)
AS EXTERNAL NAME [SqlNet].[Sql.Net.Types.StringType].StringSHA1ComputeHash
GO
CREATE SYNONYM [SqlNet].[SHA1ComputeHash] FOR [SqlNet].[StringSHA1ComputeHash]
GO
CREATE FUNCTION [SqlNet].[StringSHA1VerifyHash](@text nvarchar(max), @hash nvarchar(max)) RETURNS bit
AS EXTERNAL NAME [SqlNet].[Sql.Net.Types.StringType].StringSHA1VerifyHash
GO
CREATE SYNONYM [SqlNet].[SHA1VerifyHash] FOR [SqlNet].[StringSHA1VerifyHash]
GO

CREATE FUNCTION [SqlNet].[SystemEnvironmentVariableGet](@name nvarchar(max)) RETURNS nvarchar(max)
AS EXTERNAL NAME [SqlNet].[Sql.Net.System.EnvironmentVariables].Get
GO
CREATE SYNONYM [SqlNet].[EnvironmentVariableGet] FOR [SqlNet].[SystemEnvironmentVariableGet]
GO
