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
    public class CharIsUpperUnitTest : SqlDatabaseTestClass
    {

        public CharIsUpperUnitTest()
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
            Microsoft.Data.Tools.Schema.Sql.UnitTesting.SqlDatabaseTestAction CharIsUpper_UppercaseLetter_ReturnsTrue_TestAction;
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(CharIsUpperUnitTest));
            Microsoft.Data.Tools.Schema.Sql.UnitTesting.Conditions.ScalarValueCondition scalarValueCondition1;
            Microsoft.Data.Tools.Schema.Sql.UnitTesting.SqlDatabaseTestAction CharIsUpper_LowercaseLetter_ReturnsFalse_TestAction;
            Microsoft.Data.Tools.Schema.Sql.UnitTesting.Conditions.ScalarValueCondition scalarValueCondition2;
            Microsoft.Data.Tools.Schema.Sql.UnitTesting.SqlDatabaseTestAction CharIsUpper_NULL_ReturnsFalse_TestAction;
            Microsoft.Data.Tools.Schema.Sql.UnitTesting.Conditions.ScalarValueCondition scalarValueCondition3;
            Microsoft.Data.Tools.Schema.Sql.UnitTesting.SqlDatabaseTestAction CharIsUpper_SpecialCharacter_ReturnsFalse_TestAction;
            Microsoft.Data.Tools.Schema.Sql.UnitTesting.Conditions.ScalarValueCondition scalarValueCondition4;
            Microsoft.Data.Tools.Schema.Sql.UnitTesting.SqlDatabaseTestAction CharIsUpper_Digit_ReturnsFalse_TestAction;
            Microsoft.Data.Tools.Schema.Sql.UnitTesting.Conditions.ScalarValueCondition scalarValueCondition5;
            this.CharIsUpper_UppercaseLetter_ReturnsTrueData = new Microsoft.Data.Tools.Schema.Sql.UnitTesting.SqlDatabaseTestActions();
            this.CharIsUpper_LowercaseLetter_ReturnsFalseData = new Microsoft.Data.Tools.Schema.Sql.UnitTesting.SqlDatabaseTestActions();
            this.CharIsUpper_NULL_ReturnsFalseData = new Microsoft.Data.Tools.Schema.Sql.UnitTesting.SqlDatabaseTestActions();
            this.CharIsUpper_SpecialCharacter_ReturnsFalseData = new Microsoft.Data.Tools.Schema.Sql.UnitTesting.SqlDatabaseTestActions();
            this.CharIsUpper_Digit_ReturnsFalseData = new Microsoft.Data.Tools.Schema.Sql.UnitTesting.SqlDatabaseTestActions();
            CharIsUpper_UppercaseLetter_ReturnsTrue_TestAction = new Microsoft.Data.Tools.Schema.Sql.UnitTesting.SqlDatabaseTestAction();
            scalarValueCondition1 = new Microsoft.Data.Tools.Schema.Sql.UnitTesting.Conditions.ScalarValueCondition();
            CharIsUpper_LowercaseLetter_ReturnsFalse_TestAction = new Microsoft.Data.Tools.Schema.Sql.UnitTesting.SqlDatabaseTestAction();
            scalarValueCondition2 = new Microsoft.Data.Tools.Schema.Sql.UnitTesting.Conditions.ScalarValueCondition();
            CharIsUpper_NULL_ReturnsFalse_TestAction = new Microsoft.Data.Tools.Schema.Sql.UnitTesting.SqlDatabaseTestAction();
            scalarValueCondition3 = new Microsoft.Data.Tools.Schema.Sql.UnitTesting.Conditions.ScalarValueCondition();
            CharIsUpper_SpecialCharacter_ReturnsFalse_TestAction = new Microsoft.Data.Tools.Schema.Sql.UnitTesting.SqlDatabaseTestAction();
            scalarValueCondition4 = new Microsoft.Data.Tools.Schema.Sql.UnitTesting.Conditions.ScalarValueCondition();
            CharIsUpper_Digit_ReturnsFalse_TestAction = new Microsoft.Data.Tools.Schema.Sql.UnitTesting.SqlDatabaseTestAction();
            scalarValueCondition5 = new Microsoft.Data.Tools.Schema.Sql.UnitTesting.Conditions.ScalarValueCondition();
            // 
            // CharIsUpper_UppercaseLetter_ReturnsTrueData
            // 
            this.CharIsUpper_UppercaseLetter_ReturnsTrueData.PosttestAction = null;
            this.CharIsUpper_UppercaseLetter_ReturnsTrueData.PretestAction = null;
            this.CharIsUpper_UppercaseLetter_ReturnsTrueData.TestAction = CharIsUpper_UppercaseLetter_ReturnsTrue_TestAction;
            // 
            // CharIsUpper_UppercaseLetter_ReturnsTrue_TestAction
            // 
            CharIsUpper_UppercaseLetter_ReturnsTrue_TestAction.Conditions.Add(scalarValueCondition1);
            resources.ApplyResources(CharIsUpper_UppercaseLetter_ReturnsTrue_TestAction, "CharIsUpper_UppercaseLetter_ReturnsTrue_TestAction");
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
            // 
            // CharIsUpper_LowercaseLetter_ReturnsFalseData
            // 
            this.CharIsUpper_LowercaseLetter_ReturnsFalseData.PosttestAction = null;
            this.CharIsUpper_LowercaseLetter_ReturnsFalseData.PretestAction = null;
            this.CharIsUpper_LowercaseLetter_ReturnsFalseData.TestAction = CharIsUpper_LowercaseLetter_ReturnsFalse_TestAction;
            // 
            // CharIsUpper_LowercaseLetter_ReturnsFalse_TestAction
            // 
            CharIsUpper_LowercaseLetter_ReturnsFalse_TestAction.Conditions.Add(scalarValueCondition2);
            resources.ApplyResources(CharIsUpper_LowercaseLetter_ReturnsFalse_TestAction, "CharIsUpper_LowercaseLetter_ReturnsFalse_TestAction");
            // 
            // scalarValueCondition2
            // 
            scalarValueCondition2.ColumnNumber = 1;
            scalarValueCondition2.Enabled = true;
            scalarValueCondition2.ExpectedValue = "False";
            scalarValueCondition2.Name = "scalarValueCondition2";
            scalarValueCondition2.NullExpected = false;
            scalarValueCondition2.ResultSet = 1;
            scalarValueCondition2.RowNumber = 1;
            // 
            // CharIsUpper_NULL_ReturnsFalseData
            // 
            this.CharIsUpper_NULL_ReturnsFalseData.PosttestAction = null;
            this.CharIsUpper_NULL_ReturnsFalseData.PretestAction = null;
            this.CharIsUpper_NULL_ReturnsFalseData.TestAction = CharIsUpper_NULL_ReturnsFalse_TestAction;
            // 
            // CharIsUpper_NULL_ReturnsFalse_TestAction
            // 
            CharIsUpper_NULL_ReturnsFalse_TestAction.Conditions.Add(scalarValueCondition3);
            resources.ApplyResources(CharIsUpper_NULL_ReturnsFalse_TestAction, "CharIsUpper_NULL_ReturnsFalse_TestAction");
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
            // CharIsUpper_SpecialCharacter_ReturnsFalseData
            // 
            this.CharIsUpper_SpecialCharacter_ReturnsFalseData.PosttestAction = null;
            this.CharIsUpper_SpecialCharacter_ReturnsFalseData.PretestAction = null;
            this.CharIsUpper_SpecialCharacter_ReturnsFalseData.TestAction = CharIsUpper_SpecialCharacter_ReturnsFalse_TestAction;
            // 
            // CharIsUpper_SpecialCharacter_ReturnsFalse_TestAction
            // 
            CharIsUpper_SpecialCharacter_ReturnsFalse_TestAction.Conditions.Add(scalarValueCondition4);
            resources.ApplyResources(CharIsUpper_SpecialCharacter_ReturnsFalse_TestAction, "CharIsUpper_SpecialCharacter_ReturnsFalse_TestAction");
            // 
            // scalarValueCondition4
            // 
            scalarValueCondition4.ColumnNumber = 1;
            scalarValueCondition4.Enabled = true;
            scalarValueCondition4.ExpectedValue = "False";
            scalarValueCondition4.Name = "scalarValueCondition4";
            scalarValueCondition4.NullExpected = false;
            scalarValueCondition4.ResultSet = 1;
            scalarValueCondition4.RowNumber = 1;
            // 
            // CharIsUpper_Digit_ReturnsFalseData
            // 
            this.CharIsUpper_Digit_ReturnsFalseData.PosttestAction = null;
            this.CharIsUpper_Digit_ReturnsFalseData.PretestAction = null;
            this.CharIsUpper_Digit_ReturnsFalseData.TestAction = CharIsUpper_Digit_ReturnsFalse_TestAction;
            // 
            // CharIsUpper_Digit_ReturnsFalse_TestAction
            // 
            CharIsUpper_Digit_ReturnsFalse_TestAction.Conditions.Add(scalarValueCondition5);
            resources.ApplyResources(CharIsUpper_Digit_ReturnsFalse_TestAction, "CharIsUpper_Digit_ReturnsFalse_TestAction");
            // 
            // scalarValueCondition5
            // 
            scalarValueCondition5.ColumnNumber = 1;
            scalarValueCondition5.Enabled = true;
            scalarValueCondition5.ExpectedValue = "False";
            scalarValueCondition5.Name = "scalarValueCondition5";
            scalarValueCondition5.NullExpected = false;
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
        public void CharIsUpper_UppercaseLetter_ReturnsTrue()
        {
            SqlDatabaseTestActions testActions = this.CharIsUpper_UppercaseLetter_ReturnsTrueData;
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
        public void CharIsUpper_LowercaseLetter_ReturnsFalse()
        {
            SqlDatabaseTestActions testActions = this.CharIsUpper_LowercaseLetter_ReturnsFalseData;
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
        public void CharIsUpper_NULL_ReturnsFalse()
        {
            SqlDatabaseTestActions testActions = this.CharIsUpper_NULL_ReturnsFalseData;
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
        public void CharIsUpper_SpecialCharacter_ReturnsFalse()
        {
            SqlDatabaseTestActions testActions = this.CharIsUpper_SpecialCharacter_ReturnsFalseData;
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
        public void CharIsUpper_Digit_ReturnsFalse()
        {
            SqlDatabaseTestActions testActions = this.CharIsUpper_Digit_ReturnsFalseData;
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




        private SqlDatabaseTestActions CharIsUpper_UppercaseLetter_ReturnsTrueData;
        private SqlDatabaseTestActions CharIsUpper_LowercaseLetter_ReturnsFalseData;
        private SqlDatabaseTestActions CharIsUpper_NULL_ReturnsFalseData;
        private SqlDatabaseTestActions CharIsUpper_SpecialCharacter_ReturnsFalseData;
        private SqlDatabaseTestActions CharIsUpper_Digit_ReturnsFalseData;
    }
}
