using Microsoft.SqlServer.Server;
using Sql.Net.Common;
using DataGen.Extensions;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Reflection;
using System.Text;

namespace Sql.Net.Core
{
public sealed class Settings : ISettings
{
	#region Singleton

	private static readonly ISettings instance = new Settings();

    static Settings() { }

	private Settings() { }

	public static ISettings Instance
	{
        get
        {
            return instance;
        }
    }

	#endregion

		private DayOfWeek? firstDayOfWeek;

		public DayOfWeek FirstDayOfWeek
		{
			get
			{
				string firstDayOfWeekSetting = Get("FirstDayOfWeek");

				if (firstDayOfWeekSetting != null)
				{
					this.firstDayOfWeek = EnumExtensions.TryParse<DayOfWeek>(firstDayOfWeekSetting);
				}

				return this.firstDayOfWeek.HasValue ? this.firstDayOfWeek.Value : DayOfWeek.Monday;
			}
		}

		public List<DayOfWeek> WeekendDays
		{
			get
			{
				List<DayOfWeek> weekendDays = new List<DayOfWeek>();
				string weekendDaysSetting = Get("WeekendDays");

				if (weekendDaysSetting != null)
				{
					foreach (string weekendDaySetting in weekendDaysSetting.Split(new string[] { "|" }, StringSplitOptions.RemoveEmptyEntries))
					{
						DayOfWeek? weekendDay = EnumExtensions.TryParse<DayOfWeek>(weekendDaySetting);
						if (weekendDay.HasValue)
						{
							weekendDays.Add(weekendDay.Value);
						}
					}
				}
				else
				{
					weekendDays.AddRange
					(
						new DayOfWeek[]
						{
							DayOfWeek.Saturday,
							DayOfWeek.Sunday,
						}
					);
				}

				return weekendDays;
			}

		}

		public string Get(string name)
		{
			string settingValue = null;

			using (SqlConnection connection = new SqlConnection("context connection=true"))
			{
				connection.Open();
				SqlCommand command = new SqlCommand(string.Format("SELECT [SqlNet].[ConfigurationSettingGet] (@settingName)"), connection);
				SqlParameter settingNameParameter = new SqlParameter("@settingName", name);
				command.Parameters.Add(settingNameParameter);

				try
				{
					settingValue = (string)command.ExecuteScalar();
				}
				catch (SqlException ex)
				{
					throw ex;
				}
			}

			return settingValue;
		}

		[SqlProcedure()]
		public static void Flush()
		{
			//Settings.instance = null;
		}
	}
}
