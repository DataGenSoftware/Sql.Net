CREATE FUNCTION [SqlNet].[ConfigurationSettingGet] (@name nvarchar(255))
RETURNS nvarchar(max)
AS
BEGIN
	RETURN 
		(SELECT [Value] FROM [SqlNet].[ConfigurationSettings] WHERE [Name] = @name)
END
