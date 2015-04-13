CREATE PROCEDURE [SqlNet].[ConfigurationHolidayAdd] @date datetime AS
BEGIN
	SET @date = [SqlNet].[DateTimeDate](@date)
	INSERT INTO [SqlNet].[ConfigurationHolidays] ([Date]) VALUES (@date)
END
