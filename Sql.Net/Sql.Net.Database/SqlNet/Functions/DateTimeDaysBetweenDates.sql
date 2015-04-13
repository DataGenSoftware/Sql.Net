CREATE FUNCTION [SqlNet].[DateTimeDaysBetweenDates](@startDate DATETIME, @endDate DATETIME)
RETURNS @dates TABLE
(
	[Date] DATETIME
)
AS
BEGIN

	WHILE @startDate < @endDate
	BEGIN
		INSERT INTO @dates ([Date]) VALUES (@startDate)
		SET @startDate = DATEADD(d, 1, @startDate)
	END

	RETURN

END
