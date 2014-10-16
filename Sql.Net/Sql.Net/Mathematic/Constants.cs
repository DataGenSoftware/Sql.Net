using Microsoft.SqlServer.Server;
using System;

namespace Sql.Net.Mathematic
{
    public static class Constants
    {
        [SqlFunction()]
        public static Double Pi()
        {
            return Math.PI;
        }

        [SqlFunction()]
        public static Double E()
        {
            return Math.E;
        }
    }
}