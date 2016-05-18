using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Sql.Net.Core
{
	public interface ISettings
	{
		string Get(string name);

		//void Flush();
	}
}
