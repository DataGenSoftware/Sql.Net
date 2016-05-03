CREATE TABLE [SqlNet].[ConfigurationSettings] (
    [Name]  NVARCHAR (255) NOT NULL,
    [Value] NVARCHAR (MAX) NOT NULL,
    CONSTRAINT [PK_Settings] PRIMARY KEY CLUSTERED ([Name] ASC)
);

