using Microsoft.SqlServer.Server;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Data.SqlTypes;
using System.Linq;
using System.Text;
using DataGen.Extensions;
using DataGen.Cryptography;

namespace Sql.Net.Types
{
	public static class StringType
	{
        [SqlFunction()]
        public static Boolean StringIsNullOrEmpty(String text)
        {
            return string.IsNullOrEmpty(text);
        }

        [SqlFunction()]
        public static Boolean StringIsNullOrWhiteSpace(String text)
        {
            return string.IsNullOrEmpty(text.Trim());
        }

        [SqlFunction()]
		public static Boolean? StringContains(String text, String value)
		{
			Boolean? result = null;
			if (text != null && value != null)
			{
				result = text.Contains(value);
			}
			return result;
		}

		[SqlFunction()]
		public static Boolean? StringEndsWith(String text, String value)
		{
			Boolean? result = null;
			if (text != null && value != null)
			{
				result = text.EndsWith(value);
			}
			return result;
		}

		[SqlFunction()]
		public static Boolean? StringStartsWith(String text, String value)
		{
			Boolean? result = null;
			if (text != null && value != null)
			{
				result = text.StartsWith(value);
			}
			return result;
		}

		[SqlFunction()]
		public static Int32? StringIndexOf(String text, String value)
		{
			Int32? result = null;
			if (text != null && value != null)
			{
				result = text.IndexOf(value) + 1;
			}
			return result;
		}

		[SqlFunction()]
		public static Int32? StringLastIndexOf(String text, String value)
		{
			Int32? result = null;
			if (text != null && value != null)
			{
				result = text.LastIndexOf(value) + 1;
			}
			return result;
		}

		[SqlFunction()]
		public static String StringInsert(String text, Int32? startIndex, String value)
		{
			String result = null;
			if (text != null && value != null && startIndex.HasValue == true)
			{
				result = text.Insert(startIndex.Value, value);
			}
			return result;
		}

		[SqlFunction()]
		public static String StringPadLeft(String text, Int32? totalWidth)
		{
			String result = null;
			if (text != null && totalWidth.HasValue == true)
			{
				result = text.PadLeft(totalWidth.Value);
			}
			return result;
		}

		[SqlFunction()]
		public static String StringPadRight(String text, Int32? totalWidth)
		{
			String result = null;
			if (text != null && totalWidth.HasValue == true)
			{
				result = text.PadRight(totalWidth.Value);
			}
			return result;
		}

		[SqlFunction(FillRowMethodName = "StringSplitFillRow")]
		public static IEnumerable StringSplit(String text, String separator)
		{
			IEnumerable result = null;
			if (text.IsNotNull() && separator.IsNotNull())
			{
				result = text.Split(new string[] { separator }, StringSplitOptions.None);
			}
			return result;
		}

		private static void StringSplitFillRow(Object text, out SqlString result)
		{
			result = (String)text;
		}

		[SqlFunction()]
		public static String StringTextGetBetweenTexts(String text, String startText, String endText)
		{
			String result = null;
			if (text != null && startText != null && endText != null)
			{
				int startIndex = text.IndexOf(startText) + startText.Length;
				int endIndex = text.IndexOf(endText) - startIndex;
				result = text.Substring(startIndex, endIndex);
			}
			return result;
		}

		[SqlFunction()]
		public static String StringDESEncrypt(String text, String key)
		{
			return text.DESEncrypt(key);
		}

		[SqlFunction()]
		public static String StringDESDecrypt(String text, String key)
		{
			return text.DESDecrypt(key);
		}

		[SqlFunction()]
		public static String StringRC2Encrypt(String text, String key)
		{
			return text.RC2Encrypt(key);
		}

		[SqlFunction()]
		public static String StringRC2Decrypt(String text, String key)
		{
			return text.RC2Decrypt(key);
		}

		[SqlFunction()]
		public static String StringTripleDESEncrypt(String text, String key)
		{
			return text.TripleDESEncrypt(key);
		}

		[SqlFunction()]
		public static String StringTripleDESDecrypt(String text, String key)
		{
			return text.TripleDESDecrypt(key);
		}

		[SqlFunction()]
		public static String StringKeyedHashAlgorithmComputeHash(String text)
		{
			return text.KeyedHashAlgorithmComputeHash();
		}

		[SqlFunction()]
		public static Boolean StringKeyedHashAlgorithmVerifyHash(String text, String hash)
		{
			return text.KeyedHashAlgorithmVerifyHash(hash);
		}

		[SqlFunction()]
		public static String StringMD5ComputeHash(String text)
		{
			return text.MD5ComputeHash();
		}

		[SqlFunction()]
		public static Boolean StringMD5VerifyHash(String text, String hash)
		{
			return text.MD5VerifyHash(hash);
		}

		[SqlFunction()]
		public static String StringSHA1ComputeHash(String text)
		{
			return text.SHA1ComputeHash();
		}

		[SqlFunction()]
		public static Boolean StringSHA1VerifyHash(String text, String hash)
		{
			return text.SHA1VerifyHash(hash);
		}

		[SqlFunction()]
		public static String StringSHA256ComputeHash(String text)
		{
			return text.SHA256ComputeHash();
		}

		[SqlFunction()]
		public static Boolean StringSHA256VerifyHash(String text, String hash)
		{
			return text.SHA256VerifyHash(hash);
		}

		[SqlFunction()]
		public static String StringSHA384ComputeHash(String text)
		{
			return text.SHA384ComputeHash();
		}

		[SqlFunction()]
		public static Boolean StringSHA384VerifyHash(String text, String hash)
		{
			return text.SHA384VerifyHash(hash);
		}

		[SqlFunction()]
		public static String StringSHA512ComputeHash(String text)
		{
			return text.SHA512ComputeHash();
		}

		[SqlFunction()]
		public static Boolean StringSHA512VerifyHash(String text, String hash)
		{
			return text.SHA512VerifyHash(hash);
		}
	}
}
