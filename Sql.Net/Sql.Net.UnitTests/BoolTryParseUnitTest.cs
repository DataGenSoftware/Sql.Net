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
    public class BoolTryParseUnitTest : SqlDatabaseTestClass
    {

        public BoolTryParseUnitTest()
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
            Microsoft.Data.Tools.Schema.Sql.UnitTesting.SqlDatabaseTestAction BoolTryParse_Null_ReturnsNull_TestAction;
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(BoolTryParseUnitTest));
            Microsoft.Data.Tools.Schema.Sql.UnitTesting.Conditions.ScalarValueCondition scalarValueCondition1;
            Microsoft.Data.Tools.Schema.Sql.UnitTesting.SqlDatabaseTestAction BoolTryParse_True_ReturnsTrue_TestAction;
            Microsoft.Data.Tools.Schema.Sql.UnitTesting.Conditions.ScalarValueCondition scalarValueCondition2;
            Microsoft.Data.Tools.Schema.Sql.UnitTesting.SqlDatabaseTestAction BoolTryParse_False_ReturnsFalse_TestAction;
            Microsoft.Data.Tools.Schema.Sql.UnitTesting.Conditions.ScalarValueCondition scalarValueCondition3;
            Microsoft.Data.Tools.Schema.Sql.UnitTesting.SqlDatabaseTestAction BoolTryParse_TrueLowercase_ReturnsTrue_TestAction;
            Microsoft.Data.Tools.Schema.Sql.UnitTesting.Conditions.ScalarValueCondition scalarValueCondition4;
            Microsoft.Data.Tools.Schema.Sql.UnitTesting.SqlDatabaseTestAction BoolTryParse_SomeString_ReturnsNull_TestAction;
            Microsoft.Data.Tools.Schema.Sql.UnitTesting.Conditions.ScalarValueCondition scalarValueCondition5;
            this.BoolTryParse_Null_ReturnsNullData = new Microsoft.Data.Tools.Schema.Sql.UnitTesting.SqlDatabaseTestActions();
            this.BoolTryParse_True_ReturnsTrueData = new Microsoft.Data.Tools.Schema.Sql.UnitTesting.SqlDatabaseTestActions();
            this.BoolTryParse_False_ReturnsFalseData = new Microsoft.Data.Tools.Schema.Sql.UnitTesting.SqlDatabaseTestActions();
            this.BoolTryParse_TrueLowercase_ReturnsTrueData = new Microsoft.Data.Tools.Schema.Sql.UnitTesting.SqlDatabaseTestActions();
            this.BoolTryParse_SomeString_ReturnsNullData = new Microsoft.Data.Tools.Schema.Sql.UnitTesting.SqlDatabaseTestActions();
            BoolTryParse_Null_ReturnsNull_TestAction = new Microsoft.Data.Tools.Schema.Sql.UnitTesting.SqlDatabaseTestAction();
            scalarValueCondition1 = new Microsoft.Data.Tools.Schema.Sql.UnitTesting.Conditions.ScalarValueCondition();
            BoolTryParse_True_ReturnsTrue_TestAction = new Microsoft.Data.Tools.Schema.Sql.UnitTesting.SqlDatabaseTestAction();
            scalarValueCondition2 = new Microsoft.Data.Tools.Schema.Sql.UnitTesting.Conditions.ScalarValueCondition();
            BoolTryParse_False_ReturnsFalse_TestAction = new Microsoft.Data.Tools.Schema.Sql.UnitTesting.SqlDatabaseTestAction();
            scalarValueCondition3 = new Microsoft.Data.Tools.Schema.Sql.UnitTesting.Conditions.ScalarValueCondition();
            BoolTryParse_TrueLowercase_ReturnsTrue_TestAction = new Microsoft.Data.Tools.Schema.Sql.UnitTesting.SqlDatabaseTestAction();
            scalarValueCondition4 = new Microsoft.Data.Tools.Schema.Sql.UnitTesting.Conditions.ScalarValueCondition();
            BoolTryParse_SomeString_ReturnsNull_TestAction = new Microsoft.Data.Tools.Schema.Sql.UnitTesting.SqlDatabaseTestAction();
            scalarValueCondition5 = new Microsoft.Data.Tools.Schema.Sql.UnitTesting.Conditions.ScalarValueCondition();
            // 
            // BoolTryParse_Null_ReturnsNullData
            // 
            this.BoolTryParse_Null_ReturnsNullData.PosttestAction = null;
            this.BoolTryParse_Null_ReturnsNullData.PretestAction = null;
            this.BoolTryParse_Null_ReturnsNullData.TestAction = BoolTryParse_Null_ReturnsNull_TestAction;
            // 
            // BoolTryParse_Null_ReturnsNull_TestAction
            // 
            BoolTryParse_Null_ReturnsNull_TestAction.Conditions.Add(scalarValueCondition1);
            resources.ApplyResources(BoolTryParse_Null_ReturnsNull_TestAction, "BoolTryParse_Null_ReturnsNull_TestAction");
            // 
            // scalarValueCondition1
            // 
            scalarValueCondition1.ColumnNumber = 1;
            scalarValueCondition1.Enabled = true;
            scalarValueCondition1.ExpectedValue = null;
            scalarValueCondition1.Name = "scalarValueCondition1";
            scalarValueCondition1.NullExpected = true;
            scalarValueCondition1.ResultSet = 1;
            scalarValueCondition1.RowNumber = 1;
            // 
            // BoolTryParse_True_ReturnsTrueData
            // 
            this.BoolTryParse_True_ReturnsTrueData.PosttestAction = null;
            this.BoolTryParse_True_ReturnsTrueData.PretestAction = null;
            this.BoolTryParse_True_ReturnsTrueData.TestAction = BoolTryParse_True_ReturnsTrue_TestAction;
            // 
            // BoolTryParse_True_ReturnsTrue_TestAction
            // 
            BoolTryParse_True_ReturnsTrue_TestAction.Conditions.Add(scalarValueCondition2);
            resources.ApplyResources(BoolTryParse_True_ReturnsTrue_TestAction, "BoolTryParse_True_ReturnsTrue_TestAction");
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
            // 
            // BoolTryParse_False_ReturnsFalseData
            // 
            this.BoolTryParse_False_ReturnsFalseData.PosttestAction = null;
            this.BoolTryParse_False_ReturnsFalseData.PretestAction = null;
            this.BoolTryParse_False_ReturnsFalseData.TestAction = BoolTryParse_False_ReturnsFalse_TestAction;
            // 
            // BoolTryParse_False_ReturnsFalse_TestAction
            // 
            BoolTryParse_False_ReturnsFalse_TestAction.Conditions.Add(scalarValueCondition3);
            resources.ApplyResources(BoolTryParse_False_ReturnsFalse_TestAction, "BoolTryParse_False_ReturnsFalse_TestAction");
            // 
            // scalarValueCondition3
            // 
            scalarValueCondition3.ColumnNumber = 1;
            scalarValueCondition3.Enabled = true;
            scalarValueCondition3.ExpectedValue = "False";
            scalarValueCondition3.Name = "scalarValueCondition3";
            scalarValueCondition3.NullExpected = false;
            scalarValueCondition3.ResultSet = 1;
            scalarValueCondition3.RowNumber = 1;
            // 
            // BoolTryParse_TrueLowercase_ReturnsTrueData
            // 
            this.BoolTryParse_TrueLowercase_ReturnsTrueData.PosttestAction = null;
            this.BoolTryParse_TrueLowercase_ReturnsTrueData.PretestAction = null;
            this.BoolTryParse_TrueLowercase_ReturnsTrueData.TestAction = BoolTryParse_TrueLowercase_ReturnsTrue_TestAction;
            // 
            // BoolTryParse_TrueLowercase_ReturnsTrue_TestAction
            // 
            BoolTryParse_TrueLowercase_ReturnsTrue_TestAction.Conditions.Add(scalarValueCondition4);
            resources.ApplyResources(BoolTryParse_TrueLowercase_ReturnsTrue_TestAction, "BoolTryParse_TrueLowercase_ReturnsTrue_TestAction");
            // 
            // scalarValueCondition4
            // 
            scalarValueCondition4.ColumnNumber = 1;
            scalarValueCondition4.Enabled = true;
            scalarValueCondition4.ExpectedValue = "True";
            scalarValueCondition4.Name = "scalarValueCondition4";
            scalarValueCondition4.NullExpected = false;
            scalarValueCondition4.ResultSet = 1;
            scalarValueCondition4.RowNumber = 1;
            // 
            // BoolTryParse_SomeString_ReturnsNullData
            // 
            this.BoolTryParse_SomeString_ReturnsNullData.PosttestAction = null;
            this.BoolTryParse_SomeString_ReturnsNullData.PretestAction = null;
            this.BoolTryParse_SomeString_ReturnsNullData.TestAction = BoolTryParse_SomeString_ReturnsNull_TestAction;
            // 
            // BoolTryParse_SomeString_ReturnsNull_TestAction
            // 
            BoolTryParse_SomeString_ReturnsNull_TestAction.Conditions.Add(scalarValueCondition5);
            resources.ApplyResources(BoolTryParse_SomeString_ReturnsNull_TestAction, "BoolTryParse_SomeString_ReturnsNull_TestAction");
            // 
            // scalarValueCondition5
            // 
            scalarValueCondition5.ColumnNumber = 1;
            scalarValueCondition5.Enabled = true;
            scalarValueCondition5.ExpectedValue = null;
            scalarValueCondition5.Name = "scalarValueCondition5";
            scalarValueCondition5.NullExpected = true;
            scalarValueCondition5.ResultSet = 1;
            scalarValueCondition5.RowNumber = 1;
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
        public void BoolTryParse_Null_ReturnsNull()
        {
            SqlDatabaseTestActions testActions = this.BoolTryParse_Null_ReturnsNullData;
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
        public void BoolTryParse_True_ReturnsTrue()
        {
            SqlDatabaseTestActions testActions = this.BoolTryParse_True_ReturnsTrueData;
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
        public void BoolTryParse_False_ReturnsFalse()
        {
            SqlDatabaseTestActions testActions = this.BoolTryParse_False_ReturnsFalseData;
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
        public void BoolTryParse_TrueLowercase_ReturnsTrue()
        {
            SqlDatabaseTestActions testActions = this.BoolTryParse_TrueLowercase_ReturnsTrueData;
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
        public void BoolTryParse_SomeString_ReturnsNull()
        {
            SqlDatabaseTestActions testActions = this.BoolTryParse_SomeString_ReturnsNullData;
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




        private SqlDatabaseTestActions BoolTryParse_Null_ReturnsNullData;
        private SqlDatabaseTestActions BoolTryParse_True_ReturnsTrueData;
        private SqlDatabaseTestActions BoolTryParse_False_ReturnsFalseData;
        private SqlDatabaseTestActions BoolTryParse_TrueLowercase_ReturnsTrueData;
        private SqlDatabaseTestActions BoolTryParse_SomeString_ReturnsNullData;
    }
}
