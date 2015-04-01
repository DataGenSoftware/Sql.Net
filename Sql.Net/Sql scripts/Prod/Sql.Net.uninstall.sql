--UNINSTALL

DROP PROCEDURE [SqlNet].[ConfigurationSettingsClear]
GO
DROP PROCEDURE [SqlNet].[ConfigurationSettingSet]
GO
DROP PROCEDURE [SqlNet].[ConfigurationSettingUnset]
GO
DROP FUNCTION [SqlNet].[ConfigurationSettingGet]
GO
DROP TABLE [SqlNet].[ConfigurationSettings]
GO
DROP PROCEDURE [SqlNet].[ConfigurationHolidaysClear]
GO
DROP PROCEDURE [SqlNet].[ConfigurationHolidayAdd]
GO
DROP PROCEDURE [SqlNet].[ConfigurationHolidayRemove]
GO
DROP TABLE [SqlNet].[ConfigurationHolidays]
GO

DROP AGGREGATE [SqlNet].[AggregateJoin]
GO
DROP SYNONYM [SqlNet].[Join]
GO
DROP AGGREGATE [SqlNet].[AggregateMedian]
GO
DROP SYNONYM [SqlNet].[Median]
GO
DROP AGGREGATE [SqlNet].[AggregateMode]
GO
DROP SYNONYM [SqlNet].[Mode]
GO

DROP FUNCTION [SqlNet].[MathPi]
GO
DROP FUNCTION [SqlNet].[MathE]
GO

DROP FUNCTION [SqlNet].[BoolToString]
GO
DROP FUNCTION [SqlNet].[BoolFalseString]
GO
DROP FUNCTION [SqlNet].[BoolTrueString]
GO
DROP FUNCTION [SqlNet].[BoolTryParse]
GO

DROP FUNCTION [SqlNet].[CharIsControl]
GO
DROP FUNCTION [SqlNet].[CharIsDigit]
GO
DROP FUNCTION [SqlNet].[CharIsLetter]
GO
DROP FUNCTION [SqlNet].[CharIsLetterOrDigit]
GO
DROP FUNCTION [SqlNet].[CharIsLower]
GO
DROP FUNCTION [SqlNet].[CharIsNumber]
GO
DROP FUNCTION [SqlNet].[CharIsPunctuation]
GO
DROP FUNCTION [SqlNet].[CharIsSeparator]
GO
DROP FUNCTION [SqlNet].[CharIsSymbol]
GO
DROP FUNCTION [SqlNet].[CharIsUpper]
GO
DROP FUNCTION [SqlNet].[CharIsWhiteSpace]
GO

DROP FUNCTION [SqlNet].[DateTimeToString]
GO
DROP FUNCTION [SqlNet].[DateTimeDaysInMonth]
GO
DROP FUNCTION [SqlNet].[DateTimeDaysInYear]
GO
DROP FUNCTION [SqlNet].[DateTimeIsLeapYear]
GO
DROP FUNCTION [SqlNet].[DateTimeDate]
GO
DROP FUNCTION [SqlNet].[DateTimeTimeOfDay]
GO
DROP FUNCTION [SqlNet].[DateTimeIsWeekendDay]
GO
DROP FUNCTION [SqlNet].[DateTimeIsWeekDay]
GO
DROP FUNCTION [SqlNet].[DateTimeIsToday]
GO
DROP FUNCTION [SqlNet].[DateTimeBeginingOfDay]
GO
DROP FUNCTION [SqlNet].[DateTimeEndOfDay]
GO
DROP FUNCTION [SqlNet].[DateTimeBeginingOfMonth]
GO
DROP FUNCTION [SqlNet].[DateTimeEndOfMonth]
GO
DROP FUNCTION [SqlNet].[DateTimeFirstDayOfMonth]
GO
DROP FUNCTION [SqlNet].[DateTimeLastDayOfMonth]
GO
DROP FUNCTION [SqlNet].[DateTimeBeginingOfWeek]
GO
DROP FUNCTION [SqlNet].[DateTimeEndOfWeek]
GO
DROP FUNCTION [SqlNet].[DateTimeBeginingOfYear]
GO
DROP FUNCTION [SqlNet].[DateTimeEndOfYear]
GO
DROP FUNCTION [SqlNet].[DateTimeIsHoliday]
GO
DROP FUNCTION [SqlNet].[DateTimeDaysBetweenDates]
GO
DROP FUNCTION [SqlNet].[DateTimeQuarterNumberOfyear]
GO
DROP SYNONYM [SqlNet].[Quarter]
GO

DROP FUNCTION [SqlNet].[DecimalToString]
GO
DROP FUNCTION [SqlNet].[DecimalTryParse]
GO

DROP FUNCTION [SqlNet].[DoubleToString]
GO
DROP FUNCTION [SqlNet].[DoubleTryParse]
GO

DROP FUNCTION [SqlNet].[IntToString]
GO
DROP FUNCTION [SqlNet].[IntTryParse]
GO
DROP FUNCTION [SqlNet].[IntMinValue]
GO
DROP FUNCTION [SqlNet].[IntMaxValue]
GO
DROP FUNCTION [SqlNet].[IntToWordsPL]
GO

DROP FUNCTION [SqlNet].[SingleToString]
GO
DROP FUNCTION [SqlNet].[SingleTryParse]
GO

DROP FUNCTION [SqlNet].[StringContains]
GO
DROP FUNCTION [SqlNet].[StringEndsWith]
GO
DROP FUNCTION [SqlNet].[StringStartsWith]
GO
DROP FUNCTION [SqlNet].[StringIndexOf]
GO
DROP FUNCTION [SqlNet].[StringLastIndexOf]
GO
DROP FUNCTION [SqlNet].[StringInsert]
GO
DROP FUNCTION [SqlNet].[StringPadLeft]
GO
DROP FUNCTION [SqlNet].[StringPadRight]
GO
DROP FUNCTION [SqlNet].[StringSplit]
GO
DROP FUNCTION [SqlNet].[StringTextGetBetweenTexts]
GO
DROP FUNCTION [SqlNet].[StringTripleDESEncrypt]
GO
DROP FUNCTION [SqlNet].[StringTripleDESDecrypt]
GO
DROP FUNCTION [SqlNet].[StringMD5ComputeHash]
GO
DROP FUNCTION [SqlNet].[StringMD5VerifyHash]
GO
DROP FUNCTION [SqlNet].[StringSHA1ComputeHash]
GO
DROP FUNCTION [SqlNet].[StringSHA1VerifyHash]
GO

DROP FUNCTION [SqlNet].[SystemEnvironmentVariableGet]
GO

DROP SCHEMA [SqlNet]
GO

DROP ASSEMBLY [SqlNet]
GO