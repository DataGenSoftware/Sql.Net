using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Runtime.Serialization;
using System.Runtime.Serialization.Formatters.Binary;
using System.Text;
using System.Threading.Tasks;

namespace Sql.Net.Common
{
	public class Serializator
	{
		public static string Serialize(object Object)
		{
			string SerializedObject = "";
			if (Object != null)
			{
				MemoryStream Memory = new MemoryStream();
				IFormatter Formatter = new BinaryFormatter();
				Formatter.Serialize(Memory, Object);
				SerializedObject = Convert.ToBase64String(Memory.ToArray());
				Memory.Close();
			}
			return SerializedObject;
		}

		public static object Deserialize(string SerializedObject)
		{
			object Object = new object();
			if (SerializedObject.Length > 0)
			{
				IFormatter Formatter = new BinaryFormatter();
				MemoryStream Memory = new MemoryStream();
				Memory.Write(Convert.FromBase64String(SerializedObject), 0, Convert.FromBase64String(SerializedObject).Length);
				Memory.Position = 0;
				Object = Formatter.Deserialize(Memory);
				Memory.Close();
			}
			return Object;
		}
	}
}
