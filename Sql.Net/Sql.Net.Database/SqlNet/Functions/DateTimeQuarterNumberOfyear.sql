CREATE FUNCTION [SqlNet].[DateTimeQuarterNumberOfyear](@dateTime datetime)
RETURNS INT
AS
BEGIN
	RETURN DATEPART(quarter, @dateTime)
END
