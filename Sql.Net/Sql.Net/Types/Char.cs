using Microsoft.SqlServer.Server;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Sql.Net.Types
{
	public static class CharType
	{
		[SqlFunction()]
		public static Boolean IsControl(Char? character)
		{
			Boolean result = false;
			if (character.HasValue == true)
			{
				result = Char.IsControl(character.Value);
			}
			return result;
		}

		[SqlFunction()]
		public static Boolean IsDigit(Char? character)
		{
			Boolean result = false;
			if (character.HasValue == true)
			{
				result = Char.IsDigit(character.Value);
			}
			return result;
		}

		[SqlFunction()]
		public static Boolean IsLetter(Char? character)
		{
			Boolean result = false;
			if (character.HasValue == true)
			{
				result = Char.IsLetter(character.Value);
			}
			return result;
		}

		[SqlFunction()]
		public static Boolean IsLetterOrDigit(Char? character)
		{
			Boolean result = false;
			if (character.HasValue == true)
			{
				result = Char.IsLetterOrDigit(character.Value);
			}
			return result;
		}

		[SqlFunction()]
		public static Boolean IsLower(Char? character)
		{
			Boolean result = false;
			if (character.HasValue == true)
			{
				result = Char.IsLower(character.Value);
			}
			return result;
		}

		[SqlFunction()]
		public static Boolean IsNumber(Char? character)
		{
			Boolean result = false;
			if (character.HasValue == true)
			{
				result = Char.IsNumber(character.Value);
			}
			return result;
		}

		[SqlFunction()]
		public static Boolean IsPunctuation(Char? character)
		{
			Boolean result = false;
			if (character.HasValue == true)
			{
				result = Char.IsPunctuation(character.Value);
			}
			return result;
		}

		[SqlFunction()]
		public static Boolean IsSeparator(Char? character)
		{
			Boolean result = false;
			if (character.HasValue == true)
			{
				result = Char.IsSeparator(character.Value);
			}
			return result;
		}

		[SqlFunction()]
		public static Boolean IsSymbol(Char? character)
		{
			Boolean result = false;
			if (character.HasValue == true)
			{
				result = Char.IsSymbol(character.Value);
			}
			return result;
		}

		[SqlFunction()]
		public static Boolean IsUpper(Char? character)
		{
			Boolean result = false;
			if (character.HasValue == true)
			{
				result = Char.IsUpper(character.Value);
			}
			return result;
		}

		[SqlFunction()]
		public static Boolean IsWhiteSpace(Char? character)
		{
			Boolean result = false;
			if (character.HasValue == true)
			{
				result = Char.IsWhiteSpace(character.Value);
			}
			return result;
		}
	}
}
