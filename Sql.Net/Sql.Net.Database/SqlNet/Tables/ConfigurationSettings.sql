CREATE TABLE [SqlNet].[ConfigurationSettings] (
    [Name]  NVARCHAR (255) NOT NULL,
    [Value] NVARCHAR (MAX) NOT NULL,
    CONSTRAINT [PK_Settings] PRIMARY KEY CLUSTERED ([Name] ASC)
);




GO
CREATE TRIGGER [SqlNet].[ConfigurationSettingsChanged] 
ON [SqlNet].[ConfigurationSettings]
AFTER INSERT, UPDATE, DELETE
AS 
BEGIN
	SET NOCOUNT ON

	EXECUTE [SqlNet].[ConfigurationSettingsFlush]
END