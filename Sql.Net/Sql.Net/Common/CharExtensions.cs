﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Sql.Net.Common
{
	public static class CharExtensions
	{
		public static string Replicate(this char value, int count)
		{
			return value.ToString().Replicate(count);
		}
	}
}