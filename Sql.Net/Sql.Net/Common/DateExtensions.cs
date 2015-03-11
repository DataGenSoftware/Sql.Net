using Microsoft.SqlServer.Server;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Sql.Net.Common
{
	public static class DateTimeExtensions
	{
		private static DayOfWeek FirstDayOfWeek()
		{
			DayOfWeek firstDayOfWeek = DayOfWeek.Monday;
			string firstDayOfWeekSetting = null;

			firstDayOfWeekSetting = SettingGet("FirstDayOfWeek");

			if (firstDayOfWeekSetting != null)
			{
				Enum.TryParse<DayOfWeek>(firstDayOfWeekSetting, out firstDayOfWeek);
			}

			return firstDayOfWeek;
		}

		private static IEnumerable<DayOfWeek> WeekendDays()
		{
			List<DayOfWeek> weekendDays = new List<DayOfWeek>();
			string weekendDaysSetting = null;

			weekendDaysSetting = SettingGet("WeekendDays");

			if (weekendDaysSetting != null)
			{
				foreach (string weekendDaySetting in weekendDaysSetting.Split(new string[] { "|" }, StringSplitOptions.RemoveEmptyEntries))
				{
					DayOfWeek weekendDay;
					if (Enum.TryParse<DayOfWeek>(weekendDaySetting, out weekendDay))
					{
						weekendDays.Add(weekendDay);
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

		private static string SettingGet(string settingName)
		{
			string settingValue = null;

			using (SqlConnection connection = new SqlConnection("context connection=true"))
			{
				connection.Open();
				SqlCommand command = new SqlCommand(string.Format("SELECT [Sql.Net].[Configuration.SettingGet] ('{0}')", settingName), connection);

				try
				{
					settingValue = (string)command.ExecuteScalar();
				}
				catch (SqlException ex)
				{
					//throw;
				}
			}

			return settingValue;
		}

		public static bool IsWeekendDay(this DateTime value)
		{
			return WeekendDays().Contains(value.DayOfWeek);
		}

		public static bool IsWeekDay(this DateTime value)
		{
			return DateTimeExtensions.IsWeekendDay(value) == false;
		}

		public static DateTime BeginingOfDay(this DateTime value)
		{
			return value.Date;
		}

		public static DateTime EndOfDay(this DateTime value)
		{
			return value.Date.AddDays(1).AddTicks(-1);
		}

		public static DateTime BeginingOfMonth(this DateTime value)
		{
			return new DateTime(value.Year, value.Month, 1);
		}

		public static DateTime EndOfMonth(this DateTime value)
		{
			return value.BeginingOfMonth().AddMonths(1).AddTicks(-1);
		}

		public static DateTime FirstDayOfMonth(this DateTime value)
		{
			return new DateTime(value.Year, value.Month, 1);
		}

		public static DateTime LastDayOfMonth(this DateTime value)
		{
			return value.FirstDayOfMonth().AddMonths(1).AddDays(-1);
		}

		public static DateTime BeginingOfWeek(this DateTime value, DayOfWeek firstDayOfWeek)
		{
			int daysOffset = firstDayOfWeek - value.DayOfWeek;
			return value.AddDays(daysOffset).Date;
		}

		public static DateTime BeginingOfWeek(this DateTime value)
		{
			return value.BeginingOfWeek(FirstDayOfWeek());
		}

		public static DateTime EndOfWeek(this DateTime value, DayOfWeek firstDayOfWeek)
		{
			return value.BeginingOfWeek(firstDayOfWeek).AddWeeks(1).AddTicks(-1);
		}

		public static DateTime EndOfWeek(this DateTime value)
		{
			return value.EndOfWeek(FirstDayOfWeek());
		}

		public static bool IsToday(this DateTime value)
		{
			return value.Date == DateTime.Today;
		}

		public static DateTime AddWeeks(this DateTime value, int count)
		{
			return value.AddDays(7 * count);
		}

		public static DateTime BeginingOfYear(this DateTime value)
		{
			return new DateTime(value.Year, 1, 1);
		}

		public static DateTime EndOfYear(this DateTime value)
		{
			return value.BeginingOfYear().AddYears(1).AddTicks(-1);
		}
	}
}
