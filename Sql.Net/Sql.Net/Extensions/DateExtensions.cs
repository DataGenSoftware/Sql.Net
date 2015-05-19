﻿using Microsoft.SqlServer.Server;
using Sql.Net.Core;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;

namespace Sql.Net.Extensions
{
	public static class DateTimeExtensions
	{
		private static DayOfWeek FirstDayOfWeek()
		{
			return Settings.Instance.FirstDayOfWeek;
		}

		private static IEnumerable<DayOfWeek> WeekendDays()
		{
			return Settings.Instance.WeekendDays;
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
