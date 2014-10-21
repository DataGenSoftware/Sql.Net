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
DROP FUNCTION [Sql.Net].[Types.Char.IsHighSurrogate]
GO
DROP FUNCTION [Sql.Net].[Types.Char.IsLetter]
GO
DROP FUNCTION [Sql.Net].[Types.Char.IsLetterOrDigit]
GO
DROP FUNCTION [Sql.Net].[Types.Char.IsLower]
GO
DROP FUNCTION [Sql.Net].[Types.Char.IsLowSurrogate]
GO
DROP FUNCTION [Sql.Net].[Types.Char.IsNumber]
GO
DROP FUNCTION [Sql.Net].[Types.Char.IsPunctuation]
GO
DROP FUNCTION [Sql.Net].[Types.Char.IsSeparator]
GO
DROP FUNCTION [Sql.Net].[Types.Char.IsSurrogate]
GO
DROP FUNCTION [Sql.Net].[Types.Char.IsSurrogatePair]
GO
DROP FUNCTION [Sql.Net].[Types.Char.IsSymbol]
GO
DROP FUNCTION [Sql.Net].[Types.Char.IsUpper]
GO
DROP FUNCTION [Sql.Net].[Types.Char.IsWhiteSpace]
GO
DROP FUNCTION [Sql.Net].[Types.Char.MinValue]
GO
DROP FUNCTION [Sql.Net].[Types.Char.MaxValue]
GO
DROP FUNCTION [Sql.Net].[Types.Char.ToLower]
GO
DROP FUNCTION [Sql.Net].[Types.Char.ToUpper]
GO

DROP FUNCTION [Sql.Net].[Types.DateTime.ToString]
GO
DROP FUNCTION [Sql.Net].[Types.DateTime.MinValue]
GO
DROP FUNCTION [Sql.Net].[Types.DateTime.MaxValue]
GO
DROP FUNCTION [Sql.Net].[Types.DateTime.DaysInMonth]
GO
DROP FUNCTION [Sql.Net].[Types.DateTime.IsLeapYear]
GO
DROP FUNCTION [Sql.Net].[Types.DateTime.Date]
GO
DROP FUNCTION [Sql.Net].[Types.DateTime.DateTimeTimeOfDay]
GO

DROP FUNCTION [Sql.Net].[Types.Decimal.ToString]
GO
DROP FUNCTION [Sql.Net].[Types.Decimal.MinValue]
GO
DROP FUNCTION [Sql.Net].[Types.Decimal.MaxValue]
GO
DROP FUNCTION [Sql.Net].[Types.Decimal.TryParse]
GO
DROP FUNCTION [Sql.Net].[Types.Decimal.Round]
GO
DROP FUNCTION [Sql.Net].[Types.Decimal.Floor]
GO
DROP FUNCTION [Sql.Net].[Types.Decimal.Ceiling]
GO
DROP FUNCTION [Sql.Net].[Types.Decimal.Truncate]
GO


 
DROP SCHEMA [Sql.Net]
GO

DROP ASSEMBLY [Sql.Net]
GO