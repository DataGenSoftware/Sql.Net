using Microsoft.SqlServer.Server;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Sql.Net.Types
{
	public partial class DoubleType
	{
		[SqlFunction()]
		public static String DoubleToString(Double? value, String format)
		{
			String result = null;
			if (value.HasValue == true && format != null)
			{
				result = value.Value.ToString(format);
			}
			return result;
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
	}
}
