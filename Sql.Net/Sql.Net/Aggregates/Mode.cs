using Microsoft.SqlServer.Server;
using System;
using System.Collections.Generic;
using System.Data.SqlTypes;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.IO;
using System.Collections.Concurrent;
using System.Runtime.Serialization.Formatters.Binary;
using System.Runtime.Serialization;
using Sql.Net.Common;

namespace Sql.Net.Aggregates
{
	[Serializable]
	[SqlUserDefinedAggregate(Format.UserDefined, IsInvariantToOrder = true, IsInvariantToNulls = true, IsInvariantToDuplicates = false, MaxByteSize = -1)]
	public struct Mode : IBinarySerialize
	{
		private ConcurrentDictionary<object, int> result;

		public void Init()
		{
			this.result = new ConcurrentDictionary<object, int>();
		}

		public void Accumulate(object value)
		{
			if (value != null)
			{
				if (this.result.ContainsKey(value) || !this.result.TryAdd(value, 1))
				{
					this.result[value]++;
				}
			}
		}

		public void Merge(Mode value)
		{
			foreach(var valueResult in value.result)
			{
				if (this.result.ContainsKey(valueResult.Key) || !this.result.TryAdd(valueResult.Key, valueResult.Value))
				{
					this.result[valueResult.Key] += valueResult.Value;
				}
			}
		}

		public object Terminate()
		{
			if (this.result != null && this.result.Count > 0)
			{
				var modeValue = this.result.OrderByDescending(item => item.Value).First().Value;
				var modeFirstKey = this.result.Where(item => item.Value == modeValue).OrderBy(item => item.Key).First().Key;
				return modeFirstKey;
			}
			else
			{
				return null;
			}
		}

		void IBinarySerialize.Read(BinaryReader reader)
		{
			this.result = (ConcurrentDictionary<object, int>)Serializator.Deserialize(reader.ReadString());
		}

		void IBinarySerialize.Write(BinaryWriter writer)
		{
			writer.Write(Serializator.Serialize(this.result));
		}
	}
}
