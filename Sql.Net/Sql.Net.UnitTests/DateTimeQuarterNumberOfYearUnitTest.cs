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
    public class DateTimeQuarterNumberOfYearUnitTest : SqlDatabaseTestClass
    {

        public DateTimeQuarterNumberOfYearUnitTest()
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
            Microsoft.Data.Tools.Schema.Sql.UnitTesting.SqlDatabaseTestAction DateTimeQuarterNumberOfYear_1stFeb_Returns1_TestAction;
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(DateTimeQuarterNumberOfYearUnitTest));
            Microsoft.Data.Tools.Schema.Sql.UnitTesting.Conditions.ScalarValueCondition scalarValueCondition1;
            Microsoft.Data.Tools.Schema.Sql.UnitTesting.SqlDatabaseTestAction DateTimeQuarterNumberOfYear_1stJune_Returns2_TestAction;
            Microsoft.Data.Tools.Schema.Sql.UnitTesting.Conditions.ScalarValueCondition scalarValueCondition2;
            Microsoft.Data.Tools.Schema.Sql.UnitTesting.SqlDatabaseTestAction DateTimeQuarterNumberOfYear_NULL_ReturnsNULL_TestAction;
            Microsoft.Data.Tools.Schema.Sql.UnitTesting.Conditions.ScalarValueCondition scalarValueCondition3;
            this.DateTimeQuarterNumberOfYear_1stFeb_Returns1Data = new Microsoft.Data.Tools.Schema.Sql.UnitTesting.SqlDatabaseTestActions();
            this.DateTimeQuarterNumberOfYear_1stJune_Returns2Data = new Microsoft.Data.Tools.Schema.Sql.UnitTesting.SqlDatabaseTestActions();
            this.DateTimeQuarterNumberOfYear_NULL_ReturnsNULLData = new Microsoft.Data.Tools.Schema.Sql.UnitTesting.SqlDatabaseTestActions();
            DateTimeQuarterNumberOfYear_1stFeb_Returns1_TestAction = new Microsoft.Data.Tools.Schema.Sql.UnitTesting.SqlDatabaseTestAction();
            scalarValueCondition1 = new Microsoft.Data.Tools.Schema.Sql.UnitTesting.Conditions.ScalarValueCondition();
            DateTimeQuarterNumberOfYear_1stJune_Returns2_TestAction = new Microsoft.Data.Tools.Schema.Sql.UnitTesting.SqlDatabaseTestAction();
            scalarValueCondition2 = new Microsoft.Data.Tools.Schema.Sql.UnitTesting.Conditions.ScalarValueCondition();
            DateTimeQuarterNumberOfYear_NULL_ReturnsNULL_TestAction = new Microsoft.Data.Tools.Schema.Sql.UnitTesting.SqlDatabaseTestAction();
            scalarValueCondition3 = new Microsoft.Data.Tools.Schema.Sql.UnitTesting.Conditions.ScalarValueCondition();
            // 
            // DateTimeQuarterNumberOfYear_1stFeb_Returns1Data
            // 
            this.DateTimeQuarterNumberOfYear_1stFeb_Returns1Data.PosttestAction = null;
            this.DateTimeQuarterNumberOfYear_1stFeb_Returns1Data.PretestAction = null;
            this.DateTimeQuarterNumberOfYear_1stFeb_Returns1Data.TestAction = DateTimeQuarterNumberOfYear_1stFeb_Returns1_TestAction;
            // 
            // DateTimeQuarterNumberOfYear_1stFeb_Returns1_TestAction
            // 
            DateTimeQuarterNumberOfYear_1stFeb_Returns1_TestAction.Conditions.Add(scalarValueCondition1);
            resources.ApplyResources(DateTimeQuarterNumberOfYear_1stFeb_Returns1_TestAction, "DateTimeQuarterNumberOfYear_1stFeb_Returns1_TestAction");
            // 
            // scalarValueCondition1
            // 
            scalarValueCondition1.ColumnNumber = 1;
            scalarValueCondition1.Enabled = true;
            scalarValueCondition1.ExpectedValue = "1";
            scalarValueCondition1.Name = "scalarValueCondition1";
            scalarValueCondition1.NullExpected = false;
            scalarValueCondition1.ResultSet = 1;
            scalarValueCondition1.RowNumber = 1;
            // 
            // DateTimeQuarterNumberOfYear_1stJune_Returns2Data
            // 
            this.DateTimeQuarterNumberOfYear_1stJune_Returns2Data.PosttestAction = null;
            this.DateTimeQuarterNumberOfYear_1stJune_Returns2Data.PretestAction = null;
            this.DateTimeQuarterNumberOfYear_1stJune_Returns2Data.TestAction = DateTimeQuarterNumberOfYear_1stJune_Returns2_TestAction;
            // 
            // DateTimeQuarterNumberOfYear_1stJune_Returns2_TestAction
            // 
            DateTimeQuarterNumberOfYear_1stJune_Returns2_TestAction.Conditions.Add(scalarValueCondition2);
            resources.ApplyResources(DateTimeQuarterNumberOfYear_1stJune_Returns2_TestAction, "DateTimeQuarterNumberOfYear_1stJune_Returns2_TestAction");
            // 
            // scalarValueCondition2
            // 
            scalarValueCondition2.ColumnNumber = 1;
            scalarValueCondition2.Enabled = true;
            scalarValueCondition2.ExpectedValue = "2";
            scalarValueCondition2.Name = "scalarValueCondition2";
            scalarValueCondition2.NullExpected = false;
            scalarValueCondition2.ResultSet = 1;
            scalarValueCondition2.RowNumber = 1;
            // 
            // DateTimeQuarterNumberOfYear_NULL_ReturnsNULLData
            // 
            this.DateTimeQuarterNumberOfYear_NULL_ReturnsNULLData.PosttestAction = null;
            this.DateTimeQuarterNumberOfYear_NULL_ReturnsNULLData.PretestAction = null;
            this.DateTimeQuarterNumberOfYear_NULL_ReturnsNULLData.TestAction = DateTimeQuarterNumberOfYear_NULL_ReturnsNULL_TestAction;
            // 
            // DateTimeQuarterNumberOfYear_NULL_ReturnsNULL_TestAction
            // 
            DateTimeQuarterNumberOfYear_NULL_ReturnsNULL_TestAction.Conditions.Add(scalarValueCondition3);
            resources.ApplyResources(DateTimeQuarterNumberOfYear_NULL_ReturnsNULL_TestAction, "DateTimeQuarterNumberOfYear_NULL_ReturnsNULL_TestAction");
            // 
            // scalarValueCondition3
            // 
            scalarValueCondition3.ColumnNumber = 1;
            scalarValueCondition3.Enabled = true;
            scalarValueCondition3.ExpectedValue = null;
            scalarValueCondition3.Name = "scalarValueCondition3";
            scalarValueCondition3.NullExpected = true;
            scalarValueCondition3.ResultSet = 1;
            scalarValueCondition3.RowNumber = 1;
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
        public void DateTimeQuarterNumberOfYear_1stFeb_Returns1()
        {
            SqlDatabaseTestActions testActions = this.DateTimeQuarterNumberOfYear_1stFeb_Returns1Data;
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
        public void DateTimeQuarterNumberOfYear_1stJune_Returns2()
        {
            SqlDatabaseTestActions testActions = this.DateTimeQuarterNumberOfYear_1stJune_Returns2Data;
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
        public void DateTimeQuarterNumberOfYear_NULL_ReturnsNULL()
        {
            SqlDatabaseTestActions testActions = this.DateTimeQuarterNumberOfYear_NULL_ReturnsNULLData;
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


        private SqlDatabaseTestActions DateTimeQuarterNumberOfYear_1stFeb_Returns1Data;
        private SqlDatabaseTestActions DateTimeQuarterNumberOfYear_1stJune_Returns2Data;
        private SqlDatabaseTestActions DateTimeQuarterNumberOfYear_NULL_ReturnsNULLData;
    }
}
