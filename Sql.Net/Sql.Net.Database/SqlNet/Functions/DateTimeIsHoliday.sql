CREATE FUNCTION [SqlNet].[DateTimeIsHoliday](@dateTime datetime) RETURNS BIT AS
BEGIN
	SET @dateTime = [SqlNet].[DateTimeDate](@dateTime)
	RETURN 
		(SELECT CONVERT(BIT, COUNT([Date])) 
			FROM [SqlNet].[ConfigurationHolidays] 
			WHERE [Date] =  @dateTime)
END
