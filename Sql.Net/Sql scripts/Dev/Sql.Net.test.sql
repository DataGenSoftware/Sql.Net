--TEST
SELECT [Sql.Net].[Math.Const.Pi]()
SELECT [Sql.Net].[Math.Const.E]()

select [Sql.Net].[Types.Bool.ToString](0)
select [Sql.Net].[Types.Bool.FalseString]()
select [Sql.Net].[Types.Bool.TrueString]()
select [Sql.Net].[Types.Bool.TryParse]('false')

select [Sql.Net].[Types.Char.IsDigit]('1d')
select [Sql.Net].[Types.Char.IsNumber]('0')
select [Sql.Net].[Types.Char.IsUpper]('A')
select [Sql.Net].[Types.Char.IsPunctuation]('.')

select [Sql.Net].[Types.DateTime.MinValue]()
select [Sql.Net].[Types.DateTime.MaxValue]()
select [Sql.Net].[Types.DateTime.IsLeapYear](1900)
select [Sql.Net].[Types.DateTime.DateTimeTimeOfDay](getdate())

select [Sql.Net].[Types.Decimal.MinValue]()
select [Sql.Net].[Types.Decimal.MaxValue]()

select [Sql.Net].[Types.Decimal.Floor](1.4)
select [Sql.Net].[Types.Decimal.Ceiling](1.4)


select [Sql.Net].[Aggr.Join](name, ',') from sys.objects