--PREINSTALL
EXEC sp_configure 'clr enabled' , '1' 
GO
RECONFIGURE 
GO
declare @query nvarchar(max)
set @query = 'ALTER DATABASE [' + db_name() + '] SET TRUSTWORTHY ON'
exec sp_executesql @query
GO