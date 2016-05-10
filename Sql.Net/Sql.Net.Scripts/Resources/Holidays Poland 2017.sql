DECLARE @date datetime

SET @date = convert(datetime, '20170101', 112)
EXECUTE [Sql.Net].[Configuration.HolidayAdd] @date

SET @date = convert(datetime, '20170106', 112)
EXECUTE [Sql.Net].[Configuration.HolidayAdd] @date

SET @date = convert(datetime, '20170416', 112)
EXECUTE [Sql.Net].[Configuration.HolidayAdd] @date

SET @date = convert(datetime, '20170417', 112)
EXECUTE [Sql.Net].[Configuration.HolidayAdd] @date

SET @date = convert(datetime, '20170501', 112)
EXECUTE [Sql.Net].[Configuration.HolidayAdd] @date

SET @date = convert(datetime, '20170503', 112)
EXECUTE [Sql.Net].[Configuration.HolidayAdd] @date

SET @date = convert(datetime, '20170605', 112)
EXECUTE [Sql.Net].[Configuration.HolidayAdd] @date

SET @date = convert(datetime, '20170615', 112)
EXECUTE [Sql.Net].[Configuration.HolidayAdd] @date

SET @date = convert(datetime, '20170815', 112)
EXECUTE [Sql.Net].[Configuration.HolidayAdd] @date

SET @date = convert(datetime, '20171101', 112)
EXECUTE [Sql.Net].[Configuration.HolidayAdd] @date

SET @date = convert(datetime, '20171111', 112)
EXECUTE [Sql.Net].[Configuration.HolidayAdd] @date

SET @date = convert(datetime, '20171225', 112)
EXECUTE [Sql.Net].[Configuration.HolidayAdd] @date

SET @date = convert(datetime, '20171226', 112)
EXECUTE [Sql.Net].[Configuration.HolidayAdd] @date
