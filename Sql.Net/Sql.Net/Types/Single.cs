using Microsoft.SqlServer.Server;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Sql.Net.Types
{
    public static class SingleType
    {
        [SqlFunction()]
        public static String SingleTostring(Single? value, String format)
        {
            String result = null;
            if (value.HasValue == true && format != null)
            {
                result = value.Value.ToString(format);
            }
            return result;
        }

        [SqlFunction()]
        public static Single SingleMinValue()
        {
            return Single.MinValue;
        }

        [SqlFunction()]
        public static Single SingleMaxValue()
        {
            return Single.MaxValue;
        }

        [SqlFunction()]
        public static Single? SingleTryParse(String value)
        {
            Single? result = null;
            if (value != null)
            {
                Single parsedValue;
                if (Single.TryParse(value, out parsedValue) == true)
                {
                    result = parsedValue;
                }
            }
            return result;
        }

        [SqlFunction()]
        public static Single SingleEpsilon()
        {
            return Single.Epsilon;
        }

        [SqlFunction()]
        public static Single SingleNaN()
        {
            return Single.NaN;
        }

        [SqlFunction()]
        public static Single SinglePositiveInfinity()
        {
            return Single.PositiveInfinity;
        }

        [SqlFunction()]
        public static Single SingleNegativeInfinity()
        {
            return Single.NegativeInfinity;
        }

        [SqlFunction()]
        public static Boolean? SingleIsInfinity(Single? value)
        {
            Boolean? result = null;
            if (value.HasValue == true)
            {
                result = Single.IsInfinity(value.Value);
            }
            return result;
        }

        [SqlFunction()]
        public static Boolean? SingleIsNaN(Single? value)
        {
            Boolean? result = null;
            if (value.HasValue == true)
            {
                result = Single.IsNaN(value.Value);
            }
            return result;
        }

        [SqlFunction()]
        public static Boolean? SingleIsPositiveInfinity(Single? value)
        {
            Boolean? result = null;
            if (value.HasValue == true)
            {
                result = Single.IsPositiveInfinity(value.Value);
            }
            return result;
        }

        [SqlFunction()]
        public static Boolean? SingleIsNegativeInfinity(Single? value)
        {
            Boolean? result = null;
            if (value.HasValue == true)
            {
                result = Single.IsNegativeInfinity(value.Value);
            }
            return result;
        }
    }
}
