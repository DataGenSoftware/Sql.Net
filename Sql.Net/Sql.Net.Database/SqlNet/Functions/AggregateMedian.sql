CREATE AGGREGATE [SqlNet].[AggregateMedian](@value DECIMAL (18, 4))
    RETURNS DECIMAL (18, 4)
    EXTERNAL NAME [SqlNet].[Sql.Net.Aggregates.Median];

