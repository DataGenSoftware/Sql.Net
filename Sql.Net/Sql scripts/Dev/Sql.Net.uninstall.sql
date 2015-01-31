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
DROP AGGREGATE [Sql.Net].[Aggregate.Mode]
GO
DROP SYNONyM [dbo].[mode]
GO

DROP FUNCTION [Sql.Net].[Math.Const.Pi]
GO
DROP FUNCTION [Sql.Net].[Math.Const.E]
GO

DROP FUNCTION [Sql.Net].[Types.Bool.ToString]
GO
DROP FUNCTION [Sql.Net].[Types.Bool.FalseString]
GO
DROP FUNCTION [Sql.Net].[Types.Bool.TrueString]
GO
DROP FUNCTION [Sql.Net].[Types.Bool.TryParse]
GO

DROP FUNCTION [Sql.Net].[Types.Char.IsControl]
GO
DROP FUNCTION [Sql.Net].[Types.Char.IsDigit]
GO
DROP FUNCTION [Sql.Net].[Types.Char.IsLetter]
GO
DROP FUNCTION [Sql.Net].[Types.Char.IsLetterOrDigit]
GO
DROP FUNCTION [Sql.Net].[Types.Char.IsLower]
GO
DROP FUNCTION [Sql.Net].[Types.Char.IsNumber]
GO
DROP FUNCTION [Sql.Net].[Types.Char.IsPunctuation]
GO
DROP FUNCTION [Sql.Net].[Types.Char.IsSeparator]
GO
DROP FUNCTION [Sql.Net].[Types.Char.IsSymbol]
GO
DROP FUNCTION [Sql.Net].[Types.Char.IsUpper]
GO
DROP FUNCTION [Sql.Net].[Types.Char.IsWhiteSpace]
GO

DROP FUNCTION [Sql.Net].[Types.DateTime.ToString]
GO
DROP FUNCTION [Sql.Net].[Types.DateTime.DaysInMonth]
GO
DROP FUNCTION [Sql.Net].[Types.DateTime.DaysInYear]
GO
DROP FUNCTION [Sql.Net].[Types.DateTime.IsLeapYear]
GO
DROP FUNCTION [Sql.Net].[Types.DateTime.Date]
GO
DROP FUNCTION [Sql.Net].[Types.DateTime.TimeOfDay]
GO
DROP FUNCTION [Sql.Net].[Types.DateTime.IsWeekendDay]
GO
DROP FUNCTION [Sql.Net].[Types.DateTime.IsWeekDay]
GO
DROP FUNCTION [Sql.Net].[Types.DateTime.IsToday]
GO
DROP FUNCTION [Sql.Net].[Types.DateTime.BeginingOfDay]
GO
DROP FUNCTION [Sql.Net].[Types.DateTime.EndOfDay]
GO
DROP FUNCTION [Sql.Net].[Types.DateTime.BeginingOfMonth]
GO
DROP FUNCTION [Sql.Net].[Types.DateTime.EndOfMonth]
GO
DROP FUNCTION [Sql.Net].[Types.DateTime.FirstDayOfMonth]
GO
DROP FUNCTION [Sql.Net].[Types.DateTime.LastDayOfMonth]
GO
DROP FUNCTION [Sql.Net].[Types.DateTime.BeginingOfWeek]
GO
DROP FUNCTION [Sql.Net].[Types.DateTime.EndOfWeek]
GO
DROP FUNCTION [Sql.Net].[Types.DateTime.IsHoliday]
GO

DROP FUNCTION [Sql.Net].[Types.Decimal.ToString]
GO
DROP FUNCTION [Sql.Net].[Types.Decimal.TryParse]
GO

DROP FUNCTION [Sql.Net].[Types.Double.ToString]
GO
DROP FUNCTION [Sql.Net].[Types.Double.TryParse]
GO

DROP FUNCTION [Sql.Net].[Types.Int.ToString]
GO
DROP FUNCTION [Sql.Net].[Types.Int.TryParse]
GO
DROP FUNCTION [Sql.Net].[Types.Int.MinValue]
GO
DROP FUNCTION [Sql.Net].[Types.Int.MaxValue]
GO
DROP FUNCTION [Sql.Net].[Types.Int.ToWordsPL]
GO

DROP FUNCTION [Sql.Net].[Types.Single.ToString]
GO
DROP FUNCTION [Sql.Net].[Types.Single.TryParse]
GO

DROP FUNCTION [Sql.Net].[Types.String.Contains]
GO
DROP FUNCTION [Sql.Net].[Types.String.EndsWith]
GO
DROP FUNCTION [Sql.Net].[Types.String.StartsWith]
GO
DROP FUNCTION [Sql.Net].[Types.String.IndexOf]
GO
DROP FUNCTION [Sql.Net].[Types.String.LastIndexOf]
GO
DROP FUNCTION [Sql.Net].[Types.String.Insert]
GO
DROP FUNCTION [Sql.Net].[Types.String.PadLeft]
GO
DROP FUNCTION [Sql.Net].[Types.String.PadRight]
GO
DROP FUNCTION [Sql.Net].[Types.String.Split]
GO
DROP FUNCTION [Sql.Net].[Types.String.TextGetBetweenTexts]
GO
DROP FUNCTION [Sql.Net].[Types.String.TripleDESEncrypt]
GO
DROP FUNCTION [Sql.Net].[Types.String.TripleDESDecrypt]
GO
DROP FUNCTION [Sql.Net].[Types.String.MD5ComputeHash]
GO
DROP FUNCTION [Sql.Net].[Types.String.MD5VerifyHash]
GO
DROP FUNCTION [Sql.Net].[Types.String.SHA1ComputeHash]
GO
DROP FUNCTION [Sql.Net].[Types.String.SHA1VerifyHash]
GO

DROP FUNCTION [Sql.Net].[System.EnvironmentVariables.Get]
GO

DROP SCHEMA [Sql.Net]
GO

DROP ASSEMBLY [Sql.Net]
GO