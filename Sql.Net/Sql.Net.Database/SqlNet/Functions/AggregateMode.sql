CREATE AGGREGATE [SqlNet].[AggregateMode](@value SQL_VARIANT)
    RETURNS SQL_VARIANT
    EXTERNAL NAME [SqlNet].[Sql.Net.Aggregates.Mode];

