--UNINSTALL

DROP AGGREGATE [Sql.Net].[Aggr.Join]
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

DROP FUNCTION [Sql.Net].[Types.Decimal.ToString]
GO
DROP FUNCTION [Sql.Net].[Types.Decimal.TryParse]
GO

DROP FUNCTION [Sql.Net].[Types.Double.ToString]
GO
DROP FUNCTION [Sql.Net].[Types.Double.TryParse]
GO

DROP FUNCTION [Sql.Net].[Types.Single.ToString]
GO
DROP FUNCTION [Sql.Net].[Types.Single.TryParse]
GO

DROP SCHEMA [Sql.Net]
GO

DROP ASSEMBLY [Sql.Net]
GO