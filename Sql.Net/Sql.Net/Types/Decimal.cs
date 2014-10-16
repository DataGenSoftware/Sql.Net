using Microsoft.SqlServer.Server;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Sql.Net.Types
{
    public static class DecimalType
    {
        [SqlFunction()]
        public static String DecimalToString(Decimal? value, String format)
        {
            String result = null;
            if (value.HasValue == true && format != null)
            {
                result = value.Value.ToString(format);
            }
            return result;
        }

        [SqlFunction()]
        public static Decimal DecimalMinValue()
        {
            return Decimal.MinValue;
        }

        [SqlFunction()]
        public static Decimal DecimalMaxValue()
        {
            return Decimal.MaxValue;
        }

        [SqlFunction()]
        public static Decimal? DecimalTryParse(String value)
        {
            Decimal? result = null;
            if (value != null)
            {
                Decimal parsedValue;
                if (Decimal.TryParse(value, out parsedValue) == true)
                {
                    result = parsedValue;
                }
            }
            return result;
        }

        [SqlFunction()]
        public static Decimal? DecimalRound(Decimal? value)
        {
            Decimal? result = null;
            if (value.HasValue == true)
            {
                result = Decimal.Round(value.Value);
            }
            return result;
        }

        [SqlFunction()]
        public static Decimal? DecimalFloor(Decimal? value)
        {
            Decimal? result = null;
            if (value.HasValue == true)
            {
                result = Decimal.Floor(value.Value);
            }
            return result;
        }

        [SqlFunction()]
        public static Decimal? DecimalCeiling(Decimal? value)
        {
            Decimal? result = null;
            if (value.HasValue == true)
            {
                result = Decimal.Ceiling(value.Value);
            }
            return result;
        }

        [SqlFunction()]
        public static Decimal? DecimalTruncate(Decimal? value)
        {
            Decimal? result = null;
            if (value.HasValue == true)
            {
                result = Decimal.Truncate(value.Value);
            }
            return result;
        }
    }
}
