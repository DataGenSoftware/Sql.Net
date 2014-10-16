using Microsoft.SqlServer.Server;
using System;

// TODO: change the namespace
namespace Sql.Net.Sys
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

        [SqlFunction()]
        public static String MachineName()
        {
            return Environment.MachineName;
        }

        [SqlFunction()]
        public static String NewLine()
        {
            return Environment.NewLine;
        }

        [SqlFunction()]
        public static String OSVersion()
        {
            return Environment.OSVersion.VersionString;
        }

        [SqlFunction()]
        public static Int32 ProcessorCount()
        {
            return Environment.ProcessorCount;
        }

        [SqlFunction()]
        public static String SystemDirectory()
        {
            return Environment.SystemDirectory;
        }

        [SqlFunction()]
        public static String UserDomainName()
        {
            return Environment.UserDomainName;
        }

        [SqlFunction()]
        public static String UserName()
        {
            return Environment.UserName;
        }
    }

}
