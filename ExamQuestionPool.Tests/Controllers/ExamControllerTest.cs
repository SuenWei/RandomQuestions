using ExamQuestionPool;
using ExamQuestionPool.Controllers;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web.Mvc;

namespace ExamQuestionPool.Tests.Controllers
{
    [TestClass]
    public class ExamControllerTest
    {
        [TestMethod]
        public void Index()
        {
            // Arrange
            ExamController controller = new ExamController();

            // Act
            ViewResult result = controller.Index() as ViewResult;

            // Assert
            Assert.IsNotNull(result);
        }

        [TestMethod]
        public void About()
        {
            // Arrange
            ExamController controller = new ExamController();

        }

        [TestMethod]
        public void Contact()
        {
            // Arrange
            ExamController controller = new ExamController();


        }
    }
}
