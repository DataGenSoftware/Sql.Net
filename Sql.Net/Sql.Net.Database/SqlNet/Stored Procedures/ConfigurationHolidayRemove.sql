CREATE PROCEDURE [SqlNet].[ConfigurationHolidayRemove] @date datetime AS
BEGIN
	SET @date = [SqlNet].[DateTimeDate](@date)
	DELETE FROM [SqlNet].[ConfigurationHolidays] WHERE [Date] = @date
END
