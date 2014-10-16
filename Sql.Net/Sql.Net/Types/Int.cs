using Microsoft.SqlServer.Server;
using System;
using Sql.Net.Common;

namespace Sql.Net.Types
{
    public static class IntType
    {
        #region Int

        [SqlFunction()]
        public static String IntToString(Int32? value, String format)
        {
            return Int32ToString(value, format);
        }

        [SqlFunction()]
        public static String IntToWordsPL(Int32? value)
        {
            return Int64ToWordsPL(value);
        }

        [SqlFunction()]
        public static Int32 IntMinValue()
        {
            return Int32MinValue();
        }

        [SqlFunction()]
        public static Int32 IntMaxValue()
        {
            return Int32MaxValue();
        }

        [SqlFunction()]
        public static Int32? IntTryParse(String value)
        {
            return Int32TryParse(value);
        }

        #endregion

        #region Int16

        [SqlFunction()]
        public static String Int16ToString(Int16? value, String format)
        {
            String result = null;
            if (value.HasValue == true && format != null)
            {
                result = value.Value.ToString(format);
            }
            return result;
        }

        [SqlFunction()]
        public static Int16 Int16MinValue()
        {
            return Int16.MinValue;
        }

        [SqlFunction()]
        public static Int16 Int16MaxValue()
        {
            return Int16.MaxValue;
        }

        [SqlFunction()]
        public static Int16? Int16TryParse(String value)
        {
            Int16? result = null;
            if (value != null)
            {
                Int16 parsedValue;
                if (Int16.TryParse(value, out parsedValue) == true)
                {
                    result = parsedValue;
                }
            }
            return result;
        }

        #endregion

        #region Int32

        [SqlFunction()]
        public static String Int32ToString(Int32? value, String format)
        {
            String result = null;
            if (value.HasValue == true && format != null)
            {
                result = value.Value.ToString(format);
            }
            return result;
        }

        [SqlFunction()]
        public static Int32 Int32MinValue()
        {
            return Int32.MinValue;
        }

        [SqlFunction()]
        public static Int32 Int32MaxValue()
        {
            return Int32.MaxValue;
        }

        [SqlFunction()]
        public static Int32? Int32TryParse(String value)
        {
            Int32? result = null;
            if (value != null)
            {
                Int32 parsedValue;
                if (Int32.TryParse(value, out parsedValue) == true)
                {
                    result = parsedValue;
                }
            }
            return result;
        }

        #endregion

        #region Int64

        [SqlFunction()]
        public static String Int64ToString(Int64? value, String format)
        {
            String result = null;
            if (value.HasValue == true && format != null)
            {
                result = value.Value.ToString(format);
            }
            return result;
        }

        [SqlFunction()]
        public static String Int64ToWordsPL(Int64? value)
        {
            String result = null;
            if (value.HasValue == true)
            {
                result = value.Value.ToWords();
            }
            return result;
        }

        [SqlFunction()]
        public static Int64 Int64MinValue()
        {
            return Int64.MinValue;
        }

        [SqlFunction()]
        public static Int64 Int64MaxValue()
        {
            return Int64.MaxValue;
        }

        [SqlFunction()]
        public static Int64? Int64TryParse(String value)
        {
            Int64? result = null;
            if (value != null)
            {
                Int64 parsedValue;
                if (Int64.TryParse(value, out parsedValue) == true)
                {
                    result = parsedValue;
                }
            }
            return result;
        }

        #endregion
    }
}
