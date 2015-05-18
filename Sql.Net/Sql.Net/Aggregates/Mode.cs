using Microsoft.SqlServer.Server;
using System;
using System.Collections.Generic;
using System.Data.SqlTypes;
using System.Linq;
using System.Text;
using System.IO;
using System.Runtime.Serialization.Formatters.Binary;
using System.Runtime.Serialization;
using Sql.Net.Extensions;
using Sql.Net.Common;

namespace Sql.Net.Aggregates
{
	[Serializable]
	[SqlUserDefinedAggregate(Format.UserDefined, IsInvariantToOrder = true, IsInvariantToNulls = true, IsInvariantToDuplicates = false, MaxByteSize = -1)]
	public struct Mode : IBinarySerialize
	{
		private Dictionary<object, int> result;

		public void Init()
		{
			this.result = new Dictionary<object, int>();
		}

		public void Accumulate(object value)
		{
			if (value != null)
			{
				if (this.result.ContainsKey(value))
				{
					this.result[value]++;
				}
				else
				{
					this.result.Add(value, 1);
				}
			}
		}

		public void Merge(Mode value)
		{
			foreach (var valueResult in value.result)
			{
				if (this.result.ContainsKey(valueResult.Key))
				{
					this.result[valueResult.Key] += valueResult.Value;
				}
				else
				{
					this.result.Add(valueResult.Key, valueResult.Value);
				}
			}
		}

		private int ModeValue { get;set;}

		public object Terminate()
		{
			if (this.result != null && this.result.Count > 0)
			{
				this.ModeValue = this.result.OrderByDescending(this.OrderByValue).First().Value;
				var modeFirstKey = this.result.Where(FilterModeValue).OrderBy(this.OrderByKey).First().Key;

				return modeFirstKey;
			}
			else
			{
				return null;
			}
		}

		private int OrderByValue(KeyValuePair<object, int> item)
		{
			return item.Value;
		}

		private object OrderByKey(KeyValuePair<object, int> item)
		{
			return item.Key;
		}

		private bool FilterModeValue(KeyValuePair<object, int> item)
		{
			return item.Value == this.ModeValue;
		}

		void IBinarySerialize.Read(BinaryReader reader)
		{
			this.result = (Dictionary<object, int>)Serializator.Deserialize(reader.ReadString());
		}

		void IBinarySerialize.Write(BinaryWriter writer)
		{
			writer.Write(Serializator.Serialize(this.result));
		}
	}
}
