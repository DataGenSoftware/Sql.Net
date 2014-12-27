using Microsoft.SqlServer.Server;
using System;

namespace Sql.Net.System
{
	public static class EnvironmentVariables
	{
		[SqlFunction()]
		public static String Get(String name)
		{
			String result = null;
			if (name != null)
			{
				result = Environment.GetEnvironmentVariable(name);
			}
			return result;
		}
	}
}
