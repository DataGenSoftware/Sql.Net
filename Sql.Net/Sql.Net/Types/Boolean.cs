using Microsoft.SqlServer.Server;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Sql.Net.Types
{
	public static class BooleanType
	{
		[SqlFunction()]
		public static String ToString(Boolean? value)
		{
			String result = null;
			if (value.HasValue == true)
			{
				result = value.Value.ToString();
			}
			return result;
		}

		[SqlFunction()]
		public static String FalseString()
		{
			return Boolean.FalseString;
		}

		[SqlFunction()]
		public static String TrueString()
		{
			return Boolean.TrueString;
		}

		[SqlFunction()]
		public static Boolean? TryParse(String value)
		{
			Boolean? result = null;
			if (value != null)
			{
				Boolean parsedValue;
				if (Boolean.TryParse(value, out parsedValue) == true)
				{
					result = parsedValue;
				}
			}
			return result;
		}
	}
}
