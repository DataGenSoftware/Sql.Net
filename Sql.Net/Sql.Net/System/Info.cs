using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;
using System.Text;

namespace Sql.Net.System
{
    public static class Info
    {
        public static string GetAssemblyVersion()
        {
            Version version = Assembly.GetExecutingAssembly().GetName().Version;

            return version.ToString();
        }
    }
}
