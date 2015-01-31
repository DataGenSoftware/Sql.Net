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

			using (SqlConnection connection = new SqlConnection("context connection=true"))
			{
				connection.Open();
				SqlCommand command = new SqlCommand("SELECT [Sql.Net].[Configuration.SettingGet] ('FirstDayOfWeek')", connection);

				try
				{
					firstDayOfWeekSetting = (string)command.ExecuteScalar();
				}
				catch (SqlException ex)
				{
					//throw;
				}
			}

			if (firstDayOfWeekSetting != null)
			{
				Enum.TryParse<DayOfWeek>(firstDayOfWeekSetting, out firstDayOfWeek);
			}

			return firstDayOfWeek;
		}

		public static bool IsWeekendDay(this DateTime value)
		{
			return value.DayOfWeek == DayOfWeek.Saturday || value.DayOfWeek == DayOfWeek.Sunday;
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
	}
}
