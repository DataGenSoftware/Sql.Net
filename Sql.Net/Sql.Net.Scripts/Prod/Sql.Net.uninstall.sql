--UNINSTALL

SET NOCOUNT ON
GO

DROP PROCEDURE [SqlNet].[ConfigurationSettingsFlush]
GO
DROP SYNONYM [SqlNet].[SettingsFlush]
GO
DROP TABLE [SqlNet].[ConfigurationSettings]
GO
DROP SYNONYM [SqlNet].[Settings]
GO
DROP PROCEDURE [SqlNet].[ConfigurationSettingsClear]
GO
DROP SYNONYM [SqlNet].[SettingsClear]
GO
DROP PROCEDURE [SqlNet].[ConfigurationSettingSet]
GO
DROP SYNONYM [SqlNet].[SettingSet]
GO
DROP PROCEDURE [SqlNet].[ConfigurationSettingUnset]
GO
DROP SYNONYM [SqlNet].[SettingUnset]
GO
DROP FUNCTION [SqlNet].[ConfigurationSettingGet]
GO
DROP SYNONYM [SqlNet].[SettingGet]
GO
DROP PROCEDURE [SqlNet].[ConfigurationHolidaysClear]
GO
DROP SYNONYM [SqlNet].[HolidaysClear]
GO
DROP PROCEDURE [SqlNet].[ConfigurationHolidayAdd]
GO
DROP SYNONYM [SqlNet].[HolidayAdd]
GO
DROP PROCEDURE [SqlNet].[ConfigurationHolidayRemove]
GO
DROP SYNONYM [SqlNet].[HolidayRemove]
GO
DROP TABLE [SqlNet].[ConfigurationHolidays]
GO
DROP SYNONYM [SqlNet].[Holidays]
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
DROP SYNONYM [SqlNet].[Pi]
GO
DROP FUNCTION [SqlNet].[MathE]
GO
DROP SYNONYM [SqlNet].[E]
GO

DROP FUNCTION [SqlNet].[BoolToString]
GO
DROP FUNCTION [SqlNet].[BoolFalseString]
GO
DROP SYNONYM [SqlNet].[FalseString]
GO
DROP FUNCTION [SqlNet].[BoolTrueString]
GO
DROP SYNONYM [SqlNet].[TrueString]
GO
DROP FUNCTION [SqlNet].[BoolTryParse]
GO

DROP FUNCTION [SqlNet].[CharIsControl]
GO
DROP SYNONYM [SqlNet].[IsControl]
GO
DROP FUNCTION [SqlNet].[CharIsDigit]
GO
DROP SYNONYM [SqlNet].[IsDigit]
GO
DROP FUNCTION [SqlNet].[CharIsLetter]
GO
DROP SYNONYM [SqlNet].[IsLetter]
GO
DROP FUNCTION [SqlNet].[CharIsLetterOrDigit]
GO
DROP SYNONYM [SqlNet].[IsLetterOrDigit]
GO
DROP FUNCTION [SqlNet].[CharIsLower]
GO
DROP SYNONYM [SqlNet].[IsLower]
GO
DROP FUNCTION [SqlNet].[CharIsNumber]
GO
DROP SYNONYM [SqlNet].[IsNumber]
GO
DROP FUNCTION [SqlNet].[CharIsPunctuation]
GO
DROP SYNONYM [SqlNet].[IsPunctuation]
GO
DROP FUNCTION [SqlNet].[CharIsSeparator]
GO
DROP SYNONYM [SqlNet].[IsSeparator]
GO
DROP FUNCTION [SqlNet].[CharIsSymbol]
GO
DROP SYNONYM [SqlNet].[IsSymbol]
GO
DROP FUNCTION [SqlNet].[CharIsUpper]
GO
DROP SYNONYM [SqlNet].[IsUpper]
GO
DROP FUNCTION [SqlNet].[CharIsWhiteSpace]
GO
DROP SYNONYM [SqlNet].[IsWhiteSpace]
GO

DROP FUNCTION [SqlNet].[DateTimeToString]
GO
DROP FUNCTION [SqlNet].[DateTimeDaysInMonth]
GO
DROP SYNONYM [SqlNet].[DaysInMonth]
GO
DROP FUNCTION [SqlNet].[DateTimeDaysInYear]
GO
DROP SYNONYM [SqlNet].[DaysInYear]
GO
DROP FUNCTION [SqlNet].[DateTimeIsLeapYear]
GO
DROP SYNONYM [SqlNet].[IsLeapYear]
GO
DROP FUNCTION [SqlNet].[DateTimeDate]
GO
DROP SYNONYM [SqlNet].[Date]
GO
DROP FUNCTION [SqlNet].[DateTimeTimeOfDay]
GO
DROP SYNONYM [SqlNet].[TimeOfDay]
GO
DROP FUNCTION [SqlNet].[DateTimeIsWeekendDay]
GO
DROP SYNONYM [SqlNet].[IsWeekendDay]
GO
DROP FUNCTION [SqlNet].[DateTimeIsWeekDay]
GO
DROP SYNONYM [SqlNet].[IsWeekDay]
GO
DROP FUNCTION [SqlNet].[DateTimeIsToday]
GO
DROP SYNONYM [SqlNet].[IsToday]
GO
DROP FUNCTION [SqlNet].[DateTimeBeginingOfDay]
GO
DROP SYNONYM [SqlNet].[BeginingOfDay]
GO
DROP FUNCTION [SqlNet].[DateTimeEndOfDay]
GO
DROP SYNONYM [SqlNet].[EndOfDay]
GO
DROP FUNCTION [SqlNet].[DateTimeBeginingOfMonth]
GO
DROP SYNONYM [SqlNet].[BeginingOfMonth]
GO
DROP FUNCTION [SqlNet].[DateTimeEndOfMonth]
GO
DROP SYNONYM [SqlNet].[EndOfMonth]
GO
DROP FUNCTION [SqlNet].[DateTimeFirstDayOfMonth]
GO
DROP SYNONYM [SqlNet].[FirstDayOfMonth]
GO
DROP FUNCTION [SqlNet].[DateTimeLastDayOfMonth]
GO
DROP SYNONYM [SqlNet].[LastDayOfMonth]
GO
DROP FUNCTION [SqlNet].[DateTimeBeginingOfWeek]
GO
DROP SYNONYM [SqlNet].[BeginingOfWeek]
GO
DROP FUNCTION [SqlNet].[DateTimeEndOfWeek]
GO
DROP SYNONYM [SqlNet].[EndOfWeek]
GO
DROP FUNCTION [SqlNet].[DateTimeBeginingOfYear]
GO
DROP SYNONYM [SqlNet].[BeginingOfYear]
GO
DROP FUNCTION [SqlNet].[DateTimeEndOfYear]
GO
DROP SYNONYM [SqlNet].[EndOfYear]
GO
DROP FUNCTION [SqlNet].[DateTimeIsHoliday]
GO
DROP SYNONYM [SqlNet].[IsHoliday]
GO
DROP FUNCTION [SqlNet].[DateTimeDaysBetweenDates]
GO
DROP SYNONYM [SqlNet].[DaysBetweenDates]
GO
DROP FUNCTION [SqlNet].[DateTimeQuarterNumberOfYear]
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
DROP FUNCTION [SqlNet].[IntToWords]
GO
DROP SYNONYM [SqlNet].[ToWords]
GO

DROP FUNCTION [SqlNet].[SingleToString]
GO
DROP FUNCTION [SqlNet].[SingleTryParse]
GO

DROP FUNCTION [SqlNet].[StringContains]
GO
DROP SYNONYM [SqlNet].[Contains]
GO
DROP FUNCTION [SqlNet].[StringEndsWith]
GO
DROP SYNONYM [SqlNet].[EndsWith]
GO
DROP FUNCTION [SqlNet].[StringStartsWith]
GO
DROP SYNONYM [SqlNet].[StartsWith]
GO
DROP FUNCTION [SqlNet].[StringIndexOf]
GO
DROP SYNONYM [SqlNet].[IndexOf]
GO
DROP FUNCTION [SqlNet].[StringLastIndexOf]
GO
DROP SYNONYM [SqlNet].[LastIndexOf]
GO
DROP FUNCTION [SqlNet].[StringInsert]
GO
DROP SYNONYM [SqlNet].[Insert]
GO
DROP FUNCTION [SqlNet].[StringPadLeft]
GO
DROP SYNONYM [SqlNet].[PadLeft]
GO
DROP FUNCTION [SqlNet].[StringPadRight]
GO
DROP SYNONYM [SqlNet].[PadRight]
GO
DROP FUNCTION [SqlNet].[StringSplit]
GO
DROP SYNONYM [SqlNet].[Split]
GO
DROP FUNCTION [SqlNet].[StringTextGetBetweenTexts]
GO
DROP SYNONYM [SqlNet].[TextGetBetweenTexts]
GO
DROP FUNCTION [SqlNet].[StringTripleDESEncrypt]
GO
DROP SYNONYM [SqlNet].[TripleDESEncrypt]
GO
DROP FUNCTION [SqlNet].[StringTripleDESDecrypt]
GO
DROP SYNONYM [SqlNet].[TripleDESDecrypt]
GO
DROP FUNCTION [SqlNet].[StringMD5ComputeHash]
GO
DROP SYNONYM [SqlNet].[MD5ComputeHash]
GO
DROP FUNCTION [SqlNet].[StringMD5VerifyHash]
GO
DROP SYNONYM [SqlNet].[MD5VerifyHash]
GO
DROP FUNCTION [SqlNet].[StringSHA1ComputeHash]
GO
DROP SYNONYM [SqlNet].[SHA1ComputeHash]
GO
DROP FUNCTION [SqlNet].[StringSHA1VerifyHash]
GO
DROP SYNONYM [SqlNet].[SHA1VerifyHash]
GO

DROP FUNCTION [SqlNet].[SystemEnvironmentVariableGet]
GO
DROP SYNONYM [SqlNet].[EnvironmentVariableGet]
GO

DROP SCHEMA [SqlNet]
GO

DROP ASSEMBLY [SqlNet]
GO

DROP ASSEMBLY [DataGen.NumberToWords]
GO

DROP ASSEMBLY [DataGen.Cryptography]
GO

DROP ASSEMBLY [DataGen.Extensions]
GO