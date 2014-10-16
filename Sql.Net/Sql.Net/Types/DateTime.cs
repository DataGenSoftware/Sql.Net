using Microsoft.SqlServer.Server;
using System;
using System.Collections.Generic;
using System.Data.SqlTypes;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

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
        public static SqlDateTime DateTimeMinValue()
        {
            return SqlDateTime.MinValue;
        }

        [SqlFunction()]
        public static SqlDateTime DateTimeMaxValue()
        {
            return SqlDateTime.MaxValue;
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
    }
}
