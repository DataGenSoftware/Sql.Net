--UNINSTALL

DROP PROCEDURE [Sql.Net].[Configuration.SettingsClear]
GO
DROP PROCEDURE [Sql.Net].[Configuration.SettingSet]
GO
DROP PROCEDURE [Sql.Net].[Configuration.SettingUnset]
GO
DROP FUNCTION [Sql.Net].[Configuration.SettingGet]
GO
DROP TABLE [Sql.Net].[Configuration.Settings]
GO
DROP PROCEDURE [Sql.Net].[Configuration.HolidaysClear]
GO
DROP PROCEDURE [Sql.Net].[Configuration.HolidayAdd]
GO
DROP PROCEDURE [Sql.Net].[Configuration.HolidayRemove]
GO
DROP TABLE [Sql.Net].[Configuration.Holidays]
GO

DROP AGGREGATE [Sql.Net].[Aggregate.Join]
GO
DROP SYNONyM [dbo].[join]
GO
DROP AGGREGATE [Sql.Net].[Aggregate.Median]
GO
DROP SYNONyM [dbo].[median]
GO
DROP AGGREGATE [Sql.Net].[Aggregate.Mode]
GO
DROP SYNONyM [dbo].[mode]
GO

DROP FUNCTION [Sql.Net].[Math.Pi]
GO
DROP FUNCTION [Sql.Net].[Math.E]
GO

DROP FUNCTION [Sql.Net].[Bool.ToString]
GO
DROP FUNCTION [Sql.Net].[Bool.FalseString]
GO
DROP FUNCTION [Sql.Net].[Bool.TrueString]
GO
DROP FUNCTION [Sql.Net].[Bool.TryParse]
GO

DROP FUNCTION [Sql.Net].[Char.IsControl]
GO
DROP FUNCTION [Sql.Net].[Char.IsDigit]
GO
DROP FUNCTION [Sql.Net].[Char.IsLetter]
GO
DROP FUNCTION [Sql.Net].[Char.IsLetterOrDigit]
GO
DROP FUNCTION [Sql.Net].[Char.IsLower]
GO
DROP FUNCTION [Sql.Net].[Char.IsNumber]
GO
DROP FUNCTION [Sql.Net].[Char.IsPunctuation]
GO
DROP FUNCTION [Sql.Net].[Char.IsSeparator]
GO
DROP FUNCTION [Sql.Net].[Char.IsSymbol]
GO
DROP FUNCTION [Sql.Net].[Char.IsUpper]
GO
DROP FUNCTION [Sql.Net].[Char.IsWhiteSpace]
GO

DROP FUNCTION [Sql.Net].[DateTime.ToString]
GO
DROP FUNCTION [Sql.Net].[DateTime.DaysInMonth]
GO
DROP FUNCTION [Sql.Net].[DateTime.DaysInYear]
GO
DROP FUNCTION [Sql.Net].[DateTime.IsLeapYear]
GO
DROP FUNCTION [Sql.Net].[DateTime.Date]
GO
DROP FUNCTION [Sql.Net].[DateTime.TimeOfDay]
GO
DROP FUNCTION [Sql.Net].[DateTime.IsWeekendDay]
GO
DROP FUNCTION [Sql.Net].[DateTime.IsWeekDay]
GO
DROP FUNCTION [Sql.Net].[DateTime.IsToday]
GO
DROP FUNCTION [Sql.Net].[DateTime.BeginingOfDay]
GO
DROP FUNCTION [Sql.Net].[DateTime.EndOfDay]
GO
DROP FUNCTION [Sql.Net].[DateTime.BeginingOfMonth]
GO
DROP FUNCTION [Sql.Net].[DateTime.EndOfMonth]
GO
DROP FUNCTION [Sql.Net].[DateTime.FirstDayOfMonth]
GO
DROP FUNCTION [Sql.Net].[DateTime.LastDayOfMonth]
GO
DROP FUNCTION [Sql.Net].[DateTime.BeginingOfWeek]
GO
DROP FUNCTION [Sql.Net].[DateTime.EndOfWeek]
GO
DROP FUNCTION [Sql.Net].[DateTime.IsHoliday]
GO
DROP FUNCTION [Sql.Net].[DateTime.DaysBetweenDates]
GO

DROP FUNCTION [Sql.Net].[Decimal.ToString]
GO
DROP FUNCTION [Sql.Net].[Decimal.TryParse]
GO

DROP FUNCTION [Sql.Net].[Double.ToString]
GO
DROP FUNCTION [Sql.Net].[Double.TryParse]
GO

DROP FUNCTION [Sql.Net].[Int.ToString]
GO
DROP FUNCTION [Sql.Net].[Int.TryParse]
GO
DROP FUNCTION [Sql.Net].[Int.MinValue]
GO
DROP FUNCTION [Sql.Net].[Int.MaxValue]
GO
DROP FUNCTION [Sql.Net].[Int.ToWordsPL]
GO

DROP FUNCTION [Sql.Net].[Single.ToString]
GO
DROP FUNCTION [Sql.Net].[Single.TryParse]
GO

DROP FUNCTION [Sql.Net].[String.Contains]
GO
DROP FUNCTION [Sql.Net].[String.EndsWith]
GO
DROP FUNCTION [Sql.Net].[String.StartsWith]
GO
DROP FUNCTION [Sql.Net].[String.IndexOf]
GO
DROP FUNCTION [Sql.Net].[String.LastIndexOf]
GO
DROP FUNCTION [Sql.Net].[String.Insert]
GO
DROP FUNCTION [Sql.Net].[String.PadLeft]
GO
DROP FUNCTION [Sql.Net].[String.PadRight]
GO
DROP FUNCTION [Sql.Net].[String.Split]
GO
DROP FUNCTION [Sql.Net].[String.TextGetBetweenTexts]
GO
DROP FUNCTION [Sql.Net].[String.TripleDESEncrypt]
GO
DROP FUNCTION [Sql.Net].[String.TripleDESDecrypt]
GO
DROP FUNCTION [Sql.Net].[String.MD5ComputeHash]
GO
DROP FUNCTION [Sql.Net].[String.MD5VerifyHash]
GO
DROP FUNCTION [Sql.Net].[String.SHA1ComputeHash]
GO
DROP FUNCTION [Sql.Net].[String.SHA1VerifyHash]
GO

DROP FUNCTION [Sql.Net].[System.EnvironmentVariableGet]
GO

DROP SCHEMA [Sql.Net]
GO

DROP ASSEMBLY [Sql.Net]
GO