using Microsoft.SqlServer.Server;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Sql.Net.Types
{
	public static class SingleType
	{
		[SqlFunction()]
		public static String SingleToString(Single? value, String format)
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
