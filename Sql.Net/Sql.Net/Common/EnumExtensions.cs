﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Sql.Net.Common
{
	public static class EnumExtensions
	{
		public static bool TryParse<TEnum>(string value, TEnum defaultValue, out TEnum result)
		{
			if (value == null || !Enum.IsDefined(typeof(Enum), value))
			{
				result = defaultValue;
				return false;
			}
			else
			{
				result = (TEnum)Enum.Parse(typeof(TEnum), value);
				return true;
			}
		}

		public static TEnum? TryParse<TEnum>(string value) where TEnum:struct
		{
			//TEnum? result = (TEnum?)null;
			if (value == null || !Enum.IsDefined(typeof(Enum), value))
			{
				return null;
			}
			else
			{
				return (TEnum?)Enum.Parse(typeof(TEnum), value);
			}
		}
	}
}
