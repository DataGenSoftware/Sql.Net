CREATE PROCEDURE [SqlNet].[ConfigurationSettingUnset] @name nvarchar(255) AS
BEGIN
	DELETE FROM [SqlNet].[ConfigurationSettings] WHERE [Name] = @name
END
