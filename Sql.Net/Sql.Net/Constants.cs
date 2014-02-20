using Microsoft.SqlServer.Server;
using System;

namespace Sql.Net
{
    public static class Constants
    {
        #region Math

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

        #endregion
    }
}