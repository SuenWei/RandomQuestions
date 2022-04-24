using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using ExamQuestionPool.Models;
using System.Data.Entity.Validation;
using System.Windows;

namespace ExamQuestionPool.Controllers
{
    public class ExamController : Controller
    {

        dbQuestionPoolEntities db = new dbQuestionPoolEntities();


        public ActionResult Index()
        {
            return View();
        }

        public ActionResult QuestionPool()
        {
            var AllQuestionsCount = db.tblQuestionPool.Count(); //題庫內總題數
            ViewBag.AllQuestionsCount = AllQuestionsCount;

            var Questions = db.tblQuestionPool
                .OrderBy(q => q.fQuestionID)
                .ToList();
            return View(Questions);
        }

        public ActionResult RandomTenQuestion()
        {
            var AllQuestionsCount = db.tblQuestionPool.Count(); //題庫內總題數
            ViewBag.AllQuestionsCount = AllQuestionsCount;

            // LINQ 
            var query = (from p in db.tblQuestionPool
                         orderby Guid.NewGuid()
                         select p).Take(10).ToList();

            // Lambda 
            var query2 = db.tblQuestionPool.OrderBy(x => Guid.NewGuid()).Take(10);

            return View(query);
        }

        //做輸出成考卷 但不一致
        public ActionResult RandomTenQuestion_PartialView()
        {
            var AllQuestionsCount = db.tblQuestionPool.Count(); //題庫內總題數
            ViewBag.AllQuestionsCount = AllQuestionsCount;

            // LINQ 
            var query = (from p in db.tblQuestionPool
                         orderby Guid.NewGuid()
                         select p).Take(10).ToList();

            // Lambda 
            var query2 = db.tblQuestionPool.OrderBy(x => Guid.NewGuid()).Take(10);

            return View(query);
        }

        //不用自己寫 //用Linq 或 Lambda 的 Guid.NewGuid() Take(10)
        public ActionResult RandomQuestion()
        {            
            var AllQuestionsCount = db.tblQuestionPool.Count(); //題庫內總題數
            ViewBag.AllQuestionsCount = AllQuestionsCount;

            int[] randomArray = new int[10]; //儲存十個題目編號ID
            Random rnd = new Random();  //產生亂數初始值

            if (AllQuestionsCount >= 10) //總題數大於10
            {
                for (int i = 0; i < 10; i++)
                {
                    randomArray[i] = rnd.Next(1, AllQuestionsCount+1);   //亂數產生 亂數產生的範圍是 1~總題數
                    for (int j = 0; j < i; j++)
                    {
                        while (randomArray[j] == randomArray[i])    //檢查是否與前面產生的數值發生重複，如果有就重新產生
                        {
                            j = 0;  //如有重複，將變數j設為0，再次檢查 (因為還是有重複的可能)
                            randomArray[i] = rnd.Next(1, AllQuestionsCount+1);   //重新產生，存回陣列，亂數產生的範圍是1~9
                        }
                    }
                }
            }
            else //總題數小於10    
            {
                for (int i = 0; i < AllQuestionsCount; i++)
                {
                    randomArray[i] = i+1;   
                }
            }        

            ViewBag.Question1 = randomArray[0];
            ViewBag.Question2 = randomArray[1];
            ViewBag.Question3 = randomArray[2];
            ViewBag.Question4 = randomArray[3];
            ViewBag.Question5 = randomArray[4];
            ViewBag.Question6 = randomArray[5];
            ViewBag.Question7 = randomArray[6];
            ViewBag.Question8 = randomArray[7];
            ViewBag.Question9 = randomArray[8];
            ViewBag.Question10 = randomArray[9];  

            return View();
        }


        public ActionResult CreateQuestion()
        {
            return View();
        }

        [HttpPost]
        public ActionResult CreateQuestion(tblQuestionPool question) 
        {
            try
            {
                if (ModelState.IsValid)
                {
                    var QuestionID = db.tblQuestionPool
                        .Where(q => q.fQuestionID == question.fQuestionID)
                        .FirstOrDefault();

                    if (QuestionID != null)
                    {
                        return View(question);
                    }
                    db.tblQuestionPool.Add(question);

                    //新增題目假如都未填 自動產生平方題目
                    if (question.fQuestion == null &&
                        question.fChoice1 == null &&
                        question.fChoice2 == null &&
                        question.fChoice3 == null &&
                        question.fChoice4 == null &&
                        question.fAnswer == null
                        )
                    {
                        Random Random = new Random();  //產生亂數初始值       
                        int Num = Random.Next(1, 100);
                        int Random1to4 = Random.Next(1, 5);

                        if (question.fQuestion == null)
                        {
                            question.fQuestion = "請問 " + Convert.ToString(Num) + " 的平方等於 ?";
                        }

                        if (question.fChoice1 == null)
                        {
                            question.fChoice1 = Convert.ToString(Random.Next(1, 10000));
                        }
                        if (question.fChoice2 == null)
                        {
                            question.fChoice2 = Convert.ToString(Random.Next(1, 10000));
                        }
                        if (question.fChoice3 == null)
                        {
                            question.fChoice3 = Convert.ToString(Math.Pow(Convert.ToDouble(Num), 2));

                        }
                        if (question.fChoice4 == null)
                        {
                            question.fChoice4 = Convert.ToString(Random.Next(1, 10000));
                        }

                        if (question.fAnswer == null)
                        {
                            question.fAnswer = question.fChoice3;
                        }
                    }

                    db.SaveChanges();
                    return RedirectToAction("QuestionPool");
                }

            }
            catch(Exception ex) {
                MessageBox.Show( "請輸入完整題目、選項及答案","All Or None");
            }

            return View(question);
        }

      

        public ActionResult EditQuestion(int QuestionID)
        {
            var question = db.tblQuestionPool
                .Where(q => q.fQuestionID == QuestionID)
                .FirstOrDefault();
            return View(question);
        }

        [HttpPost]
        public ActionResult EditQuestion(tblQuestionPool question)
        {
            if (ModelState.IsValid)
            {
                var temp = db.tblQuestionPool
                    .Where(q => q.fQuestionID == question.fQuestionID)
                    .FirstOrDefault();
                temp.fQuestion = question.fQuestion;
                temp.fChoice1 = question.fChoice1;
                temp.fChoice2 = question.fChoice2;
                temp.fChoice3 = question.fChoice3;
                temp.fChoice4 = question.fChoice4;
                temp.fAnswer = question.fAnswer;
                db.SaveChanges();
                return RedirectToAction("QuestionPool");
            }
            return View(question);

        }

        public ActionResult DeleteQuestion(int QuestionID) 
        {
            if (QuestionID != 0 ) {
                tblQuestionPool question = db.tblQuestionPool
                    .FirstOrDefault(q => q.fQuestionID == QuestionID);
                if (question != null) 
                {
                    db.tblQuestionPool.Remove(question);
                    db.SaveChanges();
                }
            }
            return RedirectToAction("QuestionPool");
        }











    }
}