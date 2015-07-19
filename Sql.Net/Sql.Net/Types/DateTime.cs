using Microsoft.SqlServer.Server;
using System;
using System.Collections.Generic;
using System.Data.SqlTypes;
using System.Linq;
using System.Text;
using DataGen.Extensions;

namespace Sql.Net.Types
{
	public static class DateTimeType
	{
		[SqlFunction()]
		public static String DateTimeToString(DateTime? dateTime, String format)
		{
			String result = null;
			if (dateTime.HasValue == true && format != null)
			{
				result = dateTime.Value.ToString(format);
			}
			return result;
		}

		[SqlFunction()]
		public static Int32? DateTimeDaysInMonth(Int32? year, Int32? month)
		{
			Int32? result = null;
			if (year.HasValue == true && month.HasValue == true)
			{
				result = DateTime.DaysInMonth(year.Value, month.Value);
			}
			return result;
		}

		[SqlFunction()]
		public static Int32? DateTimeDaysInYear(Int32? year)
		{
			Int32? result = null;
			if (year.HasValue == true)
			{
				bool? isLeapYear = DateTimeType.DateTimeIsLeapYear(year);
				if (isLeapYear.HasValue)
				{
					result = isLeapYear.Value ? 366 : 365;
				}
			}
			return result;
		}

		[SqlFunction()]
		public static Boolean? DateTimeIsLeapYear(Int32? year)
		{
			Boolean? result = null;
			if (year.HasValue == true)
			{
				result = DateTime.IsLeapYear(year.Value);
			}
			return result;
		}

		[SqlFunction()]
		public static DateTime? DateTimeDate(DateTime? dateTime)
		{
			DateTime? result = null;
			if (dateTime.HasValue == true)
			{
				result = dateTime.Value.Date;
			}
			return result;
		}

		[SqlFunction()]
		public static TimeSpan? DateTimeTimeOfDay(DateTime? dateTime)
		{
			TimeSpan? result = null;
			if (dateTime.HasValue == true)
			{
				result = dateTime.Value.TimeOfDay;
			}
			return result;
		}

		[SqlFunction()]
		public static Boolean? DateTimeIsWeekendDay(DateTime? dateTime)
		{
			Boolean? result = null;
			if (dateTime.HasValue == true)
			{
				result = dateTime.Value.IsWeekendDay();
			}
			return result;
		}

		[SqlFunction()]
		public static Boolean? DateTimeIsWeekDay(DateTime? dateTime)
		{
			Boolean? result = null;
			if (dateTime.HasValue == true)
			{
				result = dateTime.Value.IsWeekDay();
			}
			return result;
		}

		[SqlFunction()]
		public static Boolean? DateTimeIsToday(DateTime? dateTime)
		{
			Boolean? result = null;
			if (dateTime.HasValue == true)
			{
				result = dateTime.Value.IsToday();
			}
			return result;
		}

		[SqlFunction()]
		public static DateTime? DateBeginingOfDay(DateTime? dateTime)
		{
			DateTime? result = null;
			if (dateTime.HasValue == true)
			{
				result = dateTime.Value.BeginingOfDay();
			}
			return result;
		}

		[SqlFunction()]
		public static DateTime? DateEndOfDay(DateTime? dateTime)
		{
			DateTime? result = null;
			if (dateTime.HasValue == true)
			{
				result = dateTime.Value.EndOfDay();
			}
			return result;
		}

		[SqlFunction()]
		public static DateTime? DateBeginingOfMonth(DateTime? dateTime)
		{
			DateTime? result = null;
			if (dateTime.HasValue == true)
			{
				result = dateTime.Value.BeginingOfDay();
			}
			return result;
		}

		[SqlFunction()]
		public static DateTime? DateEndOfMonth(DateTime? dateTime)
		{
			DateTime? result = null;
			if (dateTime.HasValue == true)
			{
				result = dateTime.Value.EndOfDay();
			}
			return result;
		}

		[SqlFunction()]
		public static DateTime? DateFirstDayOfMonth(DateTime? dateTime)
		{
			DateTime? result = null;
			if (dateTime.HasValue == true)
			{
				result = dateTime.Value.BeginingOfMonth();
			}
			return result;
		}

		[SqlFunction()]
		public static DateTime? DateLastDayOfMonth(DateTime? dateTime)
		{
			DateTime? result = null;
			if (dateTime.HasValue == true)
			{
				result = dateTime.Value.EndOfMonth();
			}
			return result;
		}

		[SqlFunction(DataAccess = DataAccessKind.Read, SystemDataAccess = SystemDataAccessKind.Read)]
		public static DateTime? DateBeginingOfWeek(DateTime? dateTime)
		{
			DateTime? result = null;
			if (dateTime.HasValue == true)
			{
				result = dateTime.Value.BeginingOfWeek();
			}
			return result;
		}

		[SqlFunction(DataAccess = DataAccessKind.Read, SystemDataAccess = SystemDataAccessKind.Read)]
		public static DateTime? DateEndOfWeek(DateTime? dateTime)
		{
			DateTime? result = null;
			if (dateTime.HasValue == true)
			{
				result = dateTime.Value.EndOfWeek();
			}
			return result;
		}

		[SqlFunction()]
		public static DateTime? DateBeginingOfYear(DateTime? dateTime)
		{
			DateTime? result = null;
			if (dateTime.HasValue == true)
			{
				result = dateTime.Value.BeginingOfWeek();
			}
			return result;
		
		}

		[SqlFunction()]
		public static DateTime? DateEndOfYear(DateTime? dateTime)
		{
			DateTime? result = null;
			if (dateTime.HasValue == true)
			{
				result = dateTime.Value.EndOfWeek();
			}
			return result;
		}
	}
}
