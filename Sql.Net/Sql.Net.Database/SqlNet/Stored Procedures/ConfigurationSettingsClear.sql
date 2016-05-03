CREATE PROCEDURE [SqlNet].[ConfigurationSettingsClear] AS
BEGIN
	TRUNCATE TABLE [SqlNet].[ConfigurationSettings]
END
