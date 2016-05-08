DECLARE @date datetime

SET @date = convert(datetime, '20160101', 112)
EXECUTE [Sql.Net].[Configuration.HolidayAdd] @date

SET @date = convert(datetime, '20160106', 112)
EXECUTE [Sql.Net].[Configuration.HolidayAdd] @date

SET @date = convert(datetime, '20160327', 112)
EXECUTE [Sql.Net].[Configuration.HolidayAdd] @date

SET @date = convert(datetime, '20160328', 112)
EXECUTE [Sql.Net].[Configuration.HolidayAdd] @date

SET @date = convert(datetime, '20160501', 112)
EXECUTE [Sql.Net].[Configuration.HolidayAdd] @date

SET @date = convert(datetime, '20160503', 112)
EXECUTE [Sql.Net].[Configuration.HolidayAdd] @date

SET @date = convert(datetime, '20160515', 112)
EXECUTE [Sql.Net].[Configuration.HolidayAdd] @date

SET @date = convert(datetime, '20160526', 112)
EXECUTE [Sql.Net].[Configuration.HolidayAdd] @date

SET @date = convert(datetime, '20160815', 112)
EXECUTE [Sql.Net].[Configuration.HolidayAdd] @date

SET @date = convert(datetime, '20161101', 112)
EXECUTE [Sql.Net].[Configuration.HolidayAdd] @date

SET @date = convert(datetime, '2016111', 112)
EXECUTE [Sql.Net].[Configuration.HolidayAdd] @date

SET @date = convert(datetime, '20161225', 112)
EXECUTE [Sql.Net].[Configuration.HolidayAdd] @date

SET @date = convert(datetime, '20161226', 112)
EXECUTE [Sql.Net].[Configuration.HolidayAdd] @date
