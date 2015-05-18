using Microsoft.SqlServer.Server;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Sql.Net.Extensions;

namespace Sql.Net.Types
{
	public static class EnumType
	{
		[SqlFunction()]
		public static String EnumToString(String enumName, Int32 value)
		{
			String result = null;
			if (enumName.IsNotNull() == true)
			{
				Type enumType = Type.GetType(enumName);
				if (enumType != null && enumType.IsEnum == true)
				{
					result = Enum.GetName(enumType, value);
				}
			}
			return result;
		}

		[SqlFunction()]
		public static Int32? EnumParse(String enumName, String valueName)
		{
			Int32? result = null;
			if (enumName.IsNotNull() == true)
			{
				Type enumType = Type.GetType(enumName);
				if (enumType != null && enumType.IsEnum == true && valueName.IsNotNull() == true)
				{
					result = (Int32)Enum.Parse(enumType, valueName);
				}
			}
			return result;
		}
	}
}
