using Microsoft.SqlServer.Server;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Sql.Net.Types
{
    public partial class Doubletype
    {
        [SqlFunction()]
        public static String DoubleTostring(Double? value, String format)
        {
            String result = null;
            if (value.HasValue == true && format != null)
            {
                result = value.Value.ToString(format);
            }
            return result;
        }

        [SqlFunction()]
        public static Double DoubleMinValue()
        {
            return Double.MinValue;
        }

        [SqlFunction()]
        public static Double DoubleMaxValue()
        {
            return Double.MaxValue;
        }

        [SqlFunction()]
        public static Double? DoubleTryParse(String value)
        {
            Double? result = null;
            if (value != null)
            {
                Double parsedValue;
                if (Double.TryParse(value, out parsedValue) == true)
                {
                    result = parsedValue;
                }
            }
            return result;
        }

        [SqlFunction()]
        public static Double DoubleEpsilon()
        {
            return Double.Epsilon;
        }

        [SqlFunction()]
        public static Double DoubleNaN()
        {
            return Double.NaN;
        }

        [SqlFunction()]
        public static Double DoublePositiveInfinity()
        {
            return Double.PositiveInfinity;
        }

        [SqlFunction()]
        public static Double DoubleNegativeInfinity()
        {
            return Double.NegativeInfinity;
        }

        [SqlFunction()]
        public static Boolean? DoubleIsInfinity(Double? value)
        {
            Boolean? result = null;
            if (value.HasValue == true)
            {
                result = Double.IsInfinity(value.Value);
            }
            return result;
        }

        [SqlFunction()]
        public static Boolean? DoubleIsNaN(Double? value)
        {
            Boolean? result = null;
            if (value.HasValue == true)
            {
                result = Double.IsNaN(value.Value);
            }
            return result;
        }

        [SqlFunction()]
        public static Boolean? DoubleIsPositiveInfinity(Double? value)
        {
            Boolean? result = null;
            if (value.HasValue == true)
            {
                result = Double.IsPositiveInfinity(value.Value);
            }
            return result;
        }

        [SqlFunction()]
        public static Boolean? DoubleIsNegativeInfinity(Double? value)
        {
            Boolean? result = null;
            if (value.HasValue == true)
            {
                result = Double.IsNegativeInfinity(value.Value);
            }
            return result;
        }
    }
}
