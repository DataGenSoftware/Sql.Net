DECLARE @date datetime

SET @date = convert(datetime, '20150101', 112)
EXECUTE [Sql.Net].[Configuration.HolidayAdd] @date

SET @date = convert(datetime, '20150106', 112)
EXECUTE [Sql.Net].[Configuration.HolidayAdd] @date

SET @date = convert(datetime, '20150405', 112)
EXECUTE [Sql.Net].[Configuration.HolidayAdd] @date

SET @date = convert(datetime, '20150406', 112)
EXECUTE [Sql.Net].[Configuration.HolidayAdd] @date

SET @date = convert(datetime, '20150501', 112)
EXECUTE [Sql.Net].[Configuration.HolidayAdd] @date

SET @date = convert(datetime, '20150503', 112)
EXECUTE [Sql.Net].[Configuration.HolidayAdd] @date

SET @date = convert(datetime, '20150124', 112)
EXECUTE [Sql.Net].[Configuration.HolidayAdd] @date

SET @date = convert(datetime, '20150604', 112)
EXECUTE [Sql.Net].[Configuration.HolidayAdd] @date

SET @date = convert(datetime, '20150815', 112)
EXECUTE [Sql.Net].[Configuration.HolidayAdd] @date

SET @date = convert(datetime, '20151101', 112)
EXECUTE [Sql.Net].[Configuration.HolidayAdd] @date

SET @date = convert(datetime, '2015111', 112)
EXECUTE [Sql.Net].[Configuration.HolidayAdd] @date

SET @date = convert(datetime, '20151225', 112)
EXECUTE [Sql.Net].[Configuration.HolidayAdd] @date

SET @date = convert(datetime, '20151226', 112)
EXECUTE [Sql.Net].[Configuration.HolidayAdd] @date
