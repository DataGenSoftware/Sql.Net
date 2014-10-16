using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Threading.Tasks;

namespace Sql.Net.Common
{
    public static class IntExtensions
    {
        public static string ToWords(this short Liczba)
        {
            return ((long)Liczba).ToWords();
        }

        public static string ToWords(this int Liczba)
        {
            return ((long)Liczba).ToWords();
        }

        public static string ToWords(this long Liczba)
        {
            string Slownie;
            Slownie = "";

            if (Liczba < 0)
            {
                Slownie += "minus ";
                Liczba = Liczba * (-1);
            }

            //Liczba = Convert.ToDecimal(Math.Floor(Convert.ToDouble(Liczba)));

            bool Tysiace;
            int Liczba_tys;
            Liczba_tys = 0;

            int Liczba_int;
            Liczba_int = Convert.ToInt32(Liczba);

            string Liczba_str;
            Liczba_str = Liczba_int.ToString();

            int Liczba_tmp;

            while (Liczba_str.Length > 0)
            {
                Tysiace = false;
                Liczba_tmp = Convert.ToInt32(Liczba_str.Substring(0, 1));
                Liczba_tys += Liczba_tmp;
                if ((Liczba_str.Length % 3) == 1)
                {
                    switch (Liczba_tmp)
                    {
                        case 1:
                            Slownie += "jeden "; break;
                        case 2:
                            Slownie += "dwa "; break;
                        case 3:
                            Slownie += "trzy "; break;
                        case 4:
                            Slownie += "cztery "; break;
                        case 5:
                            Slownie += "pięć "; break;
                        case 6:
                            Slownie += "sześć "; break;
                        case 7:
                            Slownie += "siedem "; break;
                        case 8:
                            Slownie += "osiem "; break;
                        case 9:
                            Slownie += "dziewięć "; break;
                        default:
                            Slownie += ""; break;
                    }
                }
                else if ((Liczba_str.Length % 3) == 2)
                {
                    if (Liczba_tmp == 1)
                    {

                        Liczba_str = Liczba_str.Substring(1, Liczba_str.Length - 1);
                        Liczba_tmp = Convert.ToInt32(Liczba_str.Substring(0, 1));

                        switch (Liczba_tmp)
                        {
                            case 1:
                                Slownie += "jedenaście "; break;
                            case 2:
                                Slownie += "dwanaście "; break;
                            case 3:
                                Slownie += "trzynaście "; break;
                            case 4:
                                Slownie += "czternascie "; break;
                            case 5:
                                Slownie += "piętnaście "; break;
                            case 6:
                                Slownie += "szesnaście "; break;
                            case 7:
                                Slownie += "siedemnaście "; break;
                            case 8:
                                Slownie += "osiemnaście "; break;
                            case 9:
                                Slownie += "dziewiętnaście "; break;
                            case 0:
                                Slownie += "dziesięć "; break;
                            default:
                                Slownie += ""; break;
                        }
                        if (Liczba_tys > 0)
                        {
                            if (Liczba_str.Length == 4)
                            {
                                Slownie += "tysięcy ";
                                Tysiace = true;
                            }
                            if (Liczba_str.Length == 7)
                            {
                                Slownie += "milionów ";
                                Tysiace = true;
                            }
                            if (Liczba_str.Length == 10)
                            {
                                Slownie += "miliardów ";
                                Tysiace = true;
                            }
                        }
                        Liczba_tys = 0;
                    }
                    else
                    {
                        switch (Liczba_tmp)
                        {
                            case 1:
                                Slownie += ""; break;
                            case 2:
                                Slownie += "dwadzieścia "; break;
                            case 3:
                                Slownie += "trzydzieści "; break;
                            case 4:
                                Slownie += "czterdzieści "; break;
                            case 5:
                                Slownie += "pięćdziesiąt "; break;
                            case 6:
                                Slownie += "sześćdziesiąt "; break;
                            case 7:
                                Slownie += "siedemdziesiąt "; break;
                            case 8:
                                Slownie += "osiemdziesiąt "; break;
                            case 9:
                                Slownie += "dziewięćdziesiąt "; break;
                            default:
                                Slownie += ""; break;
                        }
                    }
                }
                else if ((Liczba_str.Length % 3) == 0)
                {
                    switch (Liczba_tmp)
                    {
                        case 1:
                            Slownie += "sto "; break;
                        case 2:
                            Slownie += "dwieście "; break;
                        case 3:
                            Slownie += "trzysta "; break;
                        case 4:
                            Slownie += "czterysta "; break;
                        case 5:
                            Slownie += "pięćset "; break;
                        case 6:
                            Slownie += "sześćset "; break;
                        case 7:
                            Slownie += "siedemset "; break;
                        case 8:
                            Slownie += "osiemset "; break;
                        case 9:
                            Slownie += "dziewięćset "; break;
                        default:
                            Slownie += ""; break;
                    }
                }
                if (Tysiace == false && Liczba_tys > 0)
                {
                    if (Liczba_str.Length == 4)
                    {
                        switch (Liczba_tmp)
                        {
                            case 1:
                                Slownie += "tysiąc "; break;
                            case 2:
                            case 3:
                            case 4:
                                Slownie += "tysiące "; break;
                            case 5:
                            case 6:
                            case 7:
                            case 8:
                            case 9:
                            case 0:
                                Slownie += "tysięcy "; break;
                            default:
                                Slownie += ""; break;
                        }
                        Liczba_tys = 0;
                    }
                    if (Liczba_str.Length == 7)
                    {
                        switch (Liczba_tmp)
                        {
                            case 1:
                                Slownie += "milion "; break;
                            case 2:
                            case 3:
                            case 4:
                                Slownie += "miliony "; break;
                            case 5:
                            case 6:
                            case 7:
                            case 8:
                            case 9:
                            case 0:
                                Slownie += "milionów "; break;
                            default:
                                Slownie += ""; break;
                        }
                        Liczba_tys = 0;
                    }
                    if (Liczba_str.Length == 10)
                    {
                        switch (Liczba_tmp)
                        {
                            case 1:
                                Slownie += "miliard "; break;
                            case 2:
                            case 3:
                            case 4:
                                Slownie += "milirady "; break;
                            case 5:
                            case 6:
                            case 7:
                            case 8:
                            case 9:
                            case 0:
                                Slownie += "miliardów "; break;
                            default:
                                Slownie += ""; break;
                        }
                        Liczba_tys = 0;
                    }
                }

                Liczba_str = Liczba_str.Substring(1, Liczba_str.Length - 1);
            }
            if (Slownie.Trim() == "")
            {
                return " - - - ";
            }
            else
            {
                return Slownie;
            }

        }
    }

    public static class CharExtensions
    {
        public static string Replicate(this char value, int count)
        {
            return value.ToString().Replicate(count);
        }
    }

    public static class StringExtensions
    {
        public static bool IsNull(this string value)
        {
            if (value == null)
                return true;
            else
                return false;
        }

        public static bool IsNotNull(this string value)
        {
            return value.IsNull() == false;
        }

        public static string EmptyIfNull(this string value)
        {
            return value ?? string.Empty;
        }

        public static string Replicate(this string value, int count)
        {
            StringBuilder result = new StringBuilder();
            for (int i = 0; i < count; i++)
            {
                result.Append(value);
            }
            return result.ToString();
        }

        public static string LeadWithChar(this string value, char character, int length)
        {
            return value ?? (character.Replicate(length - value.Length) + value);
        }

        public static string SymmetricAlgorithmEncrypt(this string value, SymmetricAlgorithm symmetricAlgorithm, string key)
        {
            if (value.IsNotNull() && key.IsNotNull())
            {
                return value.SymmetricAlgorithmEncrypt(symmetricAlgorithm, UTF8Encoding.UTF8.GetBytes(key));
            }
            else
                return null;
        }

        public static string SymmetricAlgorithmEncrypt(this string value, SymmetricAlgorithm symmetricAlgorithm, byte[] keyBytes)
        {
            if (value.IsNotNull() && keyBytes.IsNotNull())
            {
                byte[] valueBytes = UTF8Encoding.UTF8.GetBytes(value);

                symmetricAlgorithm.Key = keyBytes;

                ICryptoTransform CryptoTransform = symmetricAlgorithm.CreateEncryptor();
                byte[] result = CryptoTransform.TransformFinalBlock(valueBytes, 0, valueBytes.Length);
                symmetricAlgorithm.Clear();

                return Convert.ToBase64String(result, 0, result.Length);
            }
            else
                return null;
        }

        public static string SymmetricAlgorithmDecrypt(this string value, SymmetricAlgorithm symmetricAlgorithm, string key)
        {
            if (value.IsNotNull() && key.IsNotNull())
            {
                return value.SymmetricAlgorithmDecrypt(symmetricAlgorithm, UTF8Encoding.UTF8.GetBytes(key));
            }
            else
                return null;
        }

        public static string SymmetricAlgorithmDecrypt(this string value, SymmetricAlgorithm symmetricAlgorithm, byte[] keyBytes)
        {
            if (value.IsNotNull() && keyBytes.IsNotNull())
            {
                byte[] valueBytes = Convert.FromBase64String(value);

                symmetricAlgorithm.Key = keyBytes;

                ICryptoTransform CryptoTransform = symmetricAlgorithm.CreateDecryptor();
                byte[] result = CryptoTransform.TransformFinalBlock(valueBytes, 0, valueBytes.Length);
                symmetricAlgorithm.Clear();

                return UTF8Encoding.UTF8.GetString(result);
            }
            else
                return null;
        }
        public static string DESEncrypt(this string value, string key)
        {
            SymmetricAlgorithm symmetricAlgorithm = new DESCryptoServiceProvider();
            symmetricAlgorithm.Mode = CipherMode.ECB;
            symmetricAlgorithm.Padding = PaddingMode.PKCS7;
            byte[] keyBytes = key.IsNotNull() ? UTF8Encoding.UTF8.GetBytes(key).MD5ComputeHash().Take(8).ToArray() : null;
            return value.SymmetricAlgorithmEncrypt(symmetricAlgorithm, keyBytes);
        }

        public static string DESDecrypt(this string value, string key)
        {
            SymmetricAlgorithm symmetricAlgorithm = new DESCryptoServiceProvider();
            symmetricAlgorithm.Mode = CipherMode.ECB;
            symmetricAlgorithm.Padding = PaddingMode.PKCS7;
            byte[] keyBytes = key.IsNotNull() ? UTF8Encoding.UTF8.GetBytes(key).MD5ComputeHash().Take(8).ToArray() : null;
            return value.SymmetricAlgorithmDecrypt(symmetricAlgorithm, keyBytes);
        }

        public static string RC2Encrypt(this string value, string key)
        {
            SymmetricAlgorithm symmetricAlgorithm = new RC2CryptoServiceProvider();
            symmetricAlgorithm.Mode = CipherMode.ECB;
            symmetricAlgorithm.Padding = PaddingMode.PKCS7;
            byte[] keyBytes = key.IsNotNull() ? UTF8Encoding.UTF8.GetBytes(key).MD5ComputeHash() : null;
            return value.SymmetricAlgorithmEncrypt(symmetricAlgorithm, keyBytes);
        }

        public static string RC2Decrypt(this string value, string key)
        {
            SymmetricAlgorithm symmetricAlgorithm = new RC2CryptoServiceProvider();
            symmetricAlgorithm.Mode = CipherMode.ECB;
            symmetricAlgorithm.Padding = PaddingMode.PKCS7;
            byte[] keyBytes = key.IsNotNull() ? UTF8Encoding.UTF8.GetBytes(key).MD5ComputeHash() : null;
            return value.SymmetricAlgorithmDecrypt(symmetricAlgorithm, keyBytes);
        }

        public static string TripleDESEncrypt(this string value, string key)
        {
            SymmetricAlgorithm symmetricAlgorithm = new TripleDESCryptoServiceProvider();
            symmetricAlgorithm.Mode = CipherMode.ECB;
            symmetricAlgorithm.Padding = PaddingMode.PKCS7;
            byte[] keyBytes = key.IsNotNull() ? UTF8Encoding.UTF8.GetBytes(key).MD5ComputeHash() : null;
            return value.SymmetricAlgorithmEncrypt(symmetricAlgorithm, keyBytes);
        }

        public static string TripleDESDecrypt(this string value, string key)
        {
            SymmetricAlgorithm symmetricAlgorithm = new TripleDESCryptoServiceProvider();
            symmetricAlgorithm.Mode = CipherMode.ECB;
            symmetricAlgorithm.Padding = PaddingMode.PKCS7;
            byte[] keyBytes = key.IsNotNull() ? UTF8Encoding.UTF8.GetBytes(key).MD5ComputeHash() : null;
            return value.SymmetricAlgorithmDecrypt(symmetricAlgorithm, keyBytes);
        }

        public static string HashAlgorithmComputeHash(this string value, HashAlgorithm hashAlgorithm)
        {
            if (value.IsNotNull() == true)
            {
                byte[] hash = hashAlgorithm.ComputeHash(Encoding.UTF8.GetBytes(value));
                StringBuilder result = new StringBuilder();
                for (int i = 0; i < hash.Length; i++)
                {
                    result.Append(hash[i].ToString("X2"));
                }
                return result.ToString();
            }
            else
                return null;
        }

        public static bool HashAlgorithmVerifyHash(this string value, string hash, HashAlgorithm hashAlgorithm)
        {
            return StringComparer.OrdinalIgnoreCase.Compare(value.HashAlgorithmComputeHash(hashAlgorithm), hash) == 0;
        }

        public static string KeyedHashAlgorithmComputeHash(this string value)
        {
            return value.HashAlgorithmComputeHash(KeyedHashAlgorithm.Create());
        }

        public static bool KeyedHashAlgorithmVerifyHash(this string value, string hash)
        {
            return value.HashAlgorithmVerifyHash(hash, KeyedHashAlgorithm.Create());
        }

        public static string MD5ComputeHash(this string value)
        {
            return value.HashAlgorithmComputeHash(MD5.Create());
        }

        public static bool MD5VerifyHash(this string value, string hash)
        {
            return value.HashAlgorithmVerifyHash(hash, MD5.Create());
        }

        public static string SHA1ComputeHash(this string value)
        {
            return value.HashAlgorithmComputeHash(SHA1.Create());
        }

        public static bool SHA1VerifyHash(this string value, string hash)
        {
            return value.HashAlgorithmVerifyHash(hash, SHA1.Create());
        }

        public static string SHA256ComputeHash(this string value)
        {
            return value.HashAlgorithmComputeHash(SHA256.Create());
        }

        public static bool SHA256VerifyHash(this string value, string hash)
        {
            return value.HashAlgorithmVerifyHash(hash, SHA256.Create());
        }

        public static string SHA384ComputeHash(this string value)
        {
            return value.HashAlgorithmComputeHash(SHA384.Create());
        }

        public static bool SHA384VerifyHash(this string value, string hash)
        {
            return value.HashAlgorithmVerifyHash(hash, SHA384.Create());
        }

        public static string SHA512ComputeHash(this string value)
        {
            return value.HashAlgorithmComputeHash(SHA512.Create());
        }

        public static bool SHA512VerifyHash(this string value, string hash)
        {
            return value.HashAlgorithmVerifyHash(hash, SHA512.Create());
        }
    }

    public static class ByteExtensions
    {
        public static bool IsNull(this byte[] value)
        {
            if (value == null)
                return true;
            else
                return false;
        }

        public static bool IsNotNull(this byte[] value)
        {
            return value.IsNull() == false;
        }

        public static byte[] HashAlgorithmComputeHash(this byte[] value, HashAlgorithm hashAlgorithm)
        {
            if (value.IsNotNull() == true)
            {
                return hashAlgorithm.ComputeHash(value);
            }
            else
                return null;
        }

        public static bool HashAlgorithmVerifyHash(this byte[] value, byte[] hash, HashAlgorithm hashAlgorithm)
        {
            return value.HashAlgorithmComputeHash(hashAlgorithm).Equals(hash);
        }

        public static byte[] MD5ComputeHash(this byte[] value)
        {
            return value.HashAlgorithmComputeHash(MD5.Create());
        }

        public static bool MD5VerifyHash(this byte[] value, byte[] hash)
        {
            return value.HashAlgorithmVerifyHash(hash, MD5.Create());
        }
    }

    public static class DateTimeExtensions
    {
        public static bool IsWeekendDay(DateTime value)
        {
            return value.DayOfWeek == DayOfWeek.Saturday || value.DayOfWeek == DayOfWeek.Sunday;
        }

        public static bool IsWeekDay(DateTime value)
        {
            return DateTimeExtensions.IsWeekendDay(value) == false;
        }

        public static DateTime BeginingOfDay(this DateTime value)
        {
            return value.Subtract(value.TimeOfDay);
        }

        public static DateTime EndOfDay(this DateTime value)
        {
            return value.Subtract(value.TimeOfDay).AddDays(1).AddTicks(-1);
        }

        public static DateTime FirstDayOfMonth(this DateTime value)
        {
            return value.BeginingOfDay().AddDays(-1 * value.Day);
        }

        public static DateTime LastDayOfMonth(this DateTime value)
        {
            return value.FirstDayOfMonth().AddMonths(1).AddDays(-1);
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
