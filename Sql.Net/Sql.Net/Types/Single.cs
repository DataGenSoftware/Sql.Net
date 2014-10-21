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
    }
}
