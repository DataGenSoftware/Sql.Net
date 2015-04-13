using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Common;
using System.Text;
using Microsoft.Data.Tools.Schema.Sql.UnitTesting;
using Microsoft.Data.Tools.Schema.Sql.UnitTesting.Conditions;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace Sql.Net.UnitTests
{
	[TestClass()]
	public class BoolTrueStringUnitTest : SqlDatabaseTestClass
	{

		public BoolTrueStringUnitTest()
		{
			InitializeComponent();
		}

		[TestInitialize()]
		public void TestInitialize()
		{
			base.InitializeTest();
		}
		[TestCleanup()]
		public void TestCleanup()
		{
			base.CleanupTest();
		}

		#region Designer support code

		/// <summary> 
		/// Required method for Designer support - do not modify 
		/// the contents of this method with the code editor.
		/// </summary>
		private void InitializeComponent()
		{
			Microsoft.Data.Tools.Schema.Sql.UnitTesting.SqlDatabaseTestAction SqlNet_BoolTrueStringTest_TestAction;
			System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(BoolTrueStringUnitTest));
			Microsoft.Data.Tools.Schema.Sql.UnitTesting.Conditions.ScalarValueCondition scalarValueCondition1;
			this.SqlNet_BoolTrueStringTestData = new Microsoft.Data.Tools.Schema.Sql.UnitTesting.SqlDatabaseTestActions();
			SqlNet_BoolTrueStringTest_TestAction = new Microsoft.Data.Tools.Schema.Sql.UnitTesting.SqlDatabaseTestAction();
			scalarValueCondition1 = new Microsoft.Data.Tools.Schema.Sql.UnitTesting.Conditions.ScalarValueCondition();
			// 
			// SqlNet_BoolTrueStringTestData
			// 
			this.SqlNet_BoolTrueStringTestData.PosttestAction = null;
			this.SqlNet_BoolTrueStringTestData.PretestAction = null;
			this.SqlNet_BoolTrueStringTestData.TestAction = SqlNet_BoolTrueStringTest_TestAction;
			// 
			// SqlNet_BoolTrueStringTest_TestAction
			// 
			SqlNet_BoolTrueStringTest_TestAction.Conditions.Add(scalarValueCondition1);
			resources.ApplyResources(SqlNet_BoolTrueStringTest_TestAction, "SqlNet_BoolTrueStringTest_TestAction");
			// 
			// scalarValueCondition1
			// 
			scalarValueCondition1.ColumnNumber = 1;
			scalarValueCondition1.Enabled = true;
			scalarValueCondition1.ExpectedValue = "True";
			scalarValueCondition1.Name = "scalarValueCondition1";
			scalarValueCondition1.NullExpected = false;
			scalarValueCondition1.ResultSet = 1;
			scalarValueCondition1.RowNumber = 1;
		}

		#endregion


		#region Additional test attributes
		//
		// You can use the following additional attributes as you write your tests:
		//
		// Use ClassInitialize to run code before running the first test in the class
		// [ClassInitialize()]
		// public static void MyClassInitialize(TestContext testContext) { }
		//
		// Use ClassCleanup to run code after all tests in a class have run
		// [ClassCleanup()]
		// public static void MyClassCleanup() { }
		//
		#endregion


		[TestMethod()]
		public void SqlNet_BoolTrueStringTest()
		{
			SqlDatabaseTestActions testActions = this.SqlNet_BoolTrueStringTestData;
			// Execute the pre-test script
			// 
			System.Diagnostics.Trace.WriteLineIf((testActions.PretestAction != null), "Executing pre-test script...");
			SqlExecutionResult[] pretestResults = TestService.Execute(this.PrivilegedContext, this.PrivilegedContext, testActions.PretestAction);
			try
			{
				// Execute the test script
				// 
				System.Diagnostics.Trace.WriteLineIf((testActions.TestAction != null), "Executing test script...");
				SqlExecutionResult[] testResults = TestService.Execute(this.ExecutionContext, this.PrivilegedContext, testActions.TestAction);
			}
			finally
			{
				// Execute the post-test script
				// 
				System.Diagnostics.Trace.WriteLineIf((testActions.PosttestAction != null), "Executing post-test script...");
				SqlExecutionResult[] posttestResults = TestService.Execute(this.PrivilegedContext, this.PrivilegedContext, testActions.PosttestAction);
			}
		}
		private SqlDatabaseTestActions SqlNet_BoolTrueStringTestData;
	}
}
