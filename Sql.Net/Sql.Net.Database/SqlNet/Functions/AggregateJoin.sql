CREATE AGGREGATE [SqlNet].[AggregateJoin](@value NVARCHAR (MAX), @delimiter NVARCHAR (MAX))
    RETURNS NVARCHAR (MAX)
    EXTERNAL NAME [SqlNet].[Sql.Net.Aggregates.Join];



