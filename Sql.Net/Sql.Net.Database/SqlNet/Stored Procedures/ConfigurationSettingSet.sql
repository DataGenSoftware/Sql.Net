CREATE PROCEDURE [SqlNet].[ConfigurationSettingSet] @name nvarchar(255), @value nvarchar(max) AS
BEGIN
    MERGE [SqlNet].[ConfigurationSettings] AS target
    USING (SELECT @name, @value) AS source ([Name], [Value])
    ON (target.[Name] = source.[Name])
    WHEN MATCHED THEN 
		UPDATE SET [Value] = source.[Value]
	WHEN NOT MATCHED THEN
		INSERT ([Name], [Value]) VALUES (source.[Name], source.[Value]);
END
