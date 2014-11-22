using Microsoft.SqlServer.Server;
using System;
using System.Collections.Generic;
using System.Data.SqlTypes;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.IO;

namespace Sql.Net.Aggregates
{
	[Serializable]
	[SqlUserDefinedAggregate(Format.UserDefined, IsInvariantToOrder = false, IsInvariantToNulls = true, IsInvariantToDuplicates = true, MaxByteSize = -1)]
	public struct Join : IBinarySerialize
	{
		private StringBuilder result;
		private string delimiter;

		public void Init()
		{
			this.result = new StringBuilder();
			this.delimiter = String.Empty;
		}

		public void Accumulate(SqlString value, SqlString delimiter)
		{
			if (value.IsNull == false)
			{
				if (delimiter.IsNull == false)
				{
					this.delimiter = delimiter.Value;
					if (this.result.Length > 0)
					{
						this.result.Append(delimiter.Value);
					}
				}
				this.result.Append(value.Value);
			}
		}

		public void Merge(Join value)
		{
			if (this.result.Length > 0)
			{
				this.result.Append(delimiter);
			}
			this.result.Append(value.result.ToString());
		}

		public SqlString Terminate()
		{
			return (SqlString)this.result.ToString();
		}

		void IBinarySerialize.Read(BinaryReader reader)
		{
			this.delimiter = reader.ReadString();
			this.result = new StringBuilder(reader.ReadString());
		}

		void IBinarySerialize.Write(BinaryWriter writer)
		{
			writer.Write(this.delimiter);
			writer.Write(this.result.ToString());
		}
	}
}
