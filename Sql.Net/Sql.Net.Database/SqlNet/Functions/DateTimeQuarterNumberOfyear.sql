CREATE FUNCTION [SqlNet].[DateTimeQuarterNumberOfYear](@dateTime datetime)
RETURNS INT
AS
BEGIN
	RETURN DATEPART(quarter, @dateTime)
END