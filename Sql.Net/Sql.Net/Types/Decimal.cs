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
    }
}
