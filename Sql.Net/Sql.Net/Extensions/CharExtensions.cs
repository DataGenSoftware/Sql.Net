﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Sql.Net.Extensions
{
	public static class CharExtensions
	{
		public static string Replicate(this char value, int count)
		{
			return value.ToString().Replicate(count);
		}
	}
}
