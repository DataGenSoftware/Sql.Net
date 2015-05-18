using Microsoft.SqlServer.Server;
using Sql.Net.Common;
using Sql.Net.Extensions;
using System;
using System.Collections.Generic;
using System.Data.SqlTypes;
using System.IO;
using System.Linq;
using System.Text;

namespace Sql.Net.Aggregates
{
	[Serializable]
	[SqlUserDefinedAggregate(Format.UserDefined, IsInvariantToNulls = true, IsInvariantToDuplicates = false, IsInvariantToOrder = true, MaxByteSize = -1, IsNullIfEmpty = true)]
	public struct Median : IBinarySerialize
	{
		private List<decimal> items;

		public void Init()
		{
			this.items = new List<decimal>();
		}

		public void Accumulate(SqlDecimal value)
		{
			if (value.IsNull == false)
			{
				items.Add(value.Value);
			}
		}

		public void Merge(Median value)
		{
			if (value.items != null)
			{
				this.items.AddRange(value.items);
			}
		}

		public SqlDecimal Terminate()
		{
			if (this.items.Count != 0)
			{
				decimal result;
				this.items = this.items.OrderBy(this.OrderBy).ToList();

				if (this.items.Count % 2 == 0)
				{
					result = ((this.items[(this.items.Count / 2) - 1]) + (this.items[this.items.Count / 2])) / 2;
				}
				else
				{
					result = this.items[(this.items.Count - 1) / 2];
				}

				return new SqlDecimal(result);
			}
			else
			{
				return new SqlDecimal();
			}
		}

		private decimal OrderBy(decimal x)
		{
			return x;
		}

		void IBinarySerialize.Read(BinaryReader reader)
		{
			this.items = (List<decimal>)Serializator.Deserialize(reader.ReadString());
		}

		void IBinarySerialize.Write(BinaryWriter writer)
		{
			writer.Write(Serializator.Serialize(this.items));
		}
	}
}