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
	public class BoolToStringUnitTest : SqlDatabaseTestClass
	{

		public BoolToStringUnitTest()
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
			Microsoft.Data.Tools.Schema.Sql.UnitTesting.SqlDatabaseTestAction SqlNet_FalseToStringTest_TestAction;
			System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(BoolToStringUnitTest));
			Microsoft.Data.Tools.Schema.Sql.UnitTesting.Conditions.ScalarValueCondition scalarValueCondition1;
			Microsoft.Data.Tools.Schema.Sql.UnitTesting.SqlDatabaseTestAction SqlNet_TrueToStringTest_TestAction;
			Microsoft.Data.Tools.Schema.Sql.UnitTesting.Conditions.ScalarValueCondition scalarValueCondition2;
			this.SqlNet_FalseToStringTestData = new Microsoft.Data.Tools.Schema.Sql.UnitTesting.SqlDatabaseTestActions();
			this.SqlNet_TrueToStringTestData = new Microsoft.Data.Tools.Schema.Sql.UnitTesting.SqlDatabaseTestActions();
			SqlNet_FalseToStringTest_TestAction = new Microsoft.Data.Tools.Schema.Sql.UnitTesting.SqlDatabaseTestAction();
			scalarValueCondition1 = new Microsoft.Data.Tools.Schema.Sql.UnitTesting.Conditions.ScalarValueCondition();
			SqlNet_TrueToStringTest_TestAction = new Microsoft.Data.Tools.Schema.Sql.UnitTesting.SqlDatabaseTestAction();
			scalarValueCondition2 = new Microsoft.Data.Tools.Schema.Sql.UnitTesting.Conditions.ScalarValueCondition();
			// 
			// SqlNet_FalseToStringTestData
			// 
			this.SqlNet_FalseToStringTestData.PosttestAction = null;
			this.SqlNet_FalseToStringTestData.PretestAction = null;
			this.SqlNet_FalseToStringTestData.TestAction = SqlNet_FalseToStringTest_TestAction;
			// 
			// SqlNet_FalseToStringTest_TestAction
			// 
			SqlNet_FalseToStringTest_TestAction.Conditions.Add(scalarValueCondition1);
			resources.ApplyResources(SqlNet_FalseToStringTest_TestAction, "SqlNet_FalseToStringTest_TestAction");
			// 
			// scalarValueCondition1
			// 
			scalarValueCondition1.ColumnNumber = 1;
			scalarValueCondition1.Enabled = true;
			scalarValueCondition1.ExpectedValue = "False";
			scalarValueCondition1.Name = "scalarValueCondition1";
			scalarValueCondition1.NullExpected = false;
			scalarValueCondition1.ResultSet = 1;
			scalarValueCondition1.RowNumber = 1;
			// 
			// SqlNet_TrueToStringTestData
			// 
			this.SqlNet_TrueToStringTestData.PosttestAction = null;
			this.SqlNet_TrueToStringTestData.PretestAction = null;
			this.SqlNet_TrueToStringTestData.TestAction = SqlNet_TrueToStringTest_TestAction;
			// 
			// SqlNet_TrueToStringTest_TestAction
			// 
			SqlNet_TrueToStringTest_TestAction.Conditions.Add(scalarValueCondition2);
			resources.ApplyResources(SqlNet_TrueToStringTest_TestAction, "SqlNet_TrueToStringTest_TestAction");
			// 
			// scalarValueCondition2
			// 
			scalarValueCondition2.ColumnNumber = 1;
			scalarValueCondition2.Enabled = true;
			scalarValueCondition2.ExpectedValue = "True";
			scalarValueCondition2.Name = "scalarValueCondition2";
			scalarValueCondition2.NullExpected = false;
			scalarValueCondition2.ResultSet = 1;
			scalarValueCondition2.RowNumber = 1;
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
		public void SqlNet_FalseToStringTest()
		{
			SqlDatabaseTestActions testActions = this.SqlNet_FalseToStringTestData;
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
		[TestMethod()]
		public void SqlNet_TrueToStringTest()
		{
			SqlDatabaseTestActions testActions = this.SqlNet_TrueToStringTestData;
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

		private SqlDatabaseTestActions SqlNet_FalseToStringTestData;
		private SqlDatabaseTestActions SqlNet_TrueToStringTestData;
	}
}
