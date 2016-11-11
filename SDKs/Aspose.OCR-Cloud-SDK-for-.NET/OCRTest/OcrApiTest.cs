using Com.Aspose.OCR.Api;
using Com.Aspose.OCR.Model;
using Com.Aspose.Storage.Api;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using System;

namespace OCRTest
{
    
    
    /// <summary>
    ///This is a test class for TestOcrApi and is intended
    ///to contain all TestOcrApi Unit Tests
    ///</summary>
    [TestClass()]
    public class TestOcrApi
    {

        string APIKEY = "xxxxxx";
        string APPSID = "xxxxxx";
        string BASEPATH = "http://api.aspose.cloud/v1.1";
        private TestContext testContextInstance;

        /// <summary>
        ///Gets or sets the test context which provides
        ///information about and functionality for the current test run.
        ///</summary>
        public TestContext TestContext
        {
            get
            {
                return testContextInstance;
            }
            set
            {
                testContextInstance = value;
            }
        }

        #region Additional test attributes
        // 
        //You can use the following additional attributes as you write your tests:
        //
        //Use ClassInitialize to run code before running the first test in the class
        //[ClassInitialize()]
        //public static void MyClassInitialize(TestContext testContext)
        //{
        //}
        //
        //Use ClassCleanup to run code after all tests in a class have run
        //[ClassCleanup()]
        //public static void MyClassCleanup()
        //{
        //}
        //
        //Use TestInitialize to run code before running each test
        //[TestInitialize()]
        //public void MyTestInitialize()
        //{
        //}
        //
        //Use TestCleanup to run code after each test has run
        //[TestCleanup()]
        //public void MyTestCleanup()
        //{
        //}
        //
        #endregion



        /// <summary>
        ///A test for GetRecognizeDocument
        ///</summary>
        [TestMethod()]
        public void TestGetRecognizeDocument()
        {
            OcrApi target = new OcrApi(APIKEY, APPSID, BASEPATH);
            StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

            string name =  "Sampleocr.bmp";
            string language =  "english";
            int? rectX = null;
            int? rectY = null;
            int? rectWidth = null;
            int? rectHeight = null;
            bool?  useDefaultDictionaries = null;
            string storage =  null;
            string folder =  null;

            storageApi.PutCreate(name, "", "", System.IO.File.ReadAllBytes("\\temp\\ocr\\resources\\" + name));
            
            Com.Aspose.OCR.Model.OCRResponse actual;
            actual = target.GetRecognizeDocument(name, language, rectX, rectY, rectWidth, rectHeight, useDefaultDictionaries, storage, folder);
            
            Assert.AreEqual("200", actual.Code);
            Assert.IsInstanceOfType(new OCRResponse(), actual.GetType()); 
        }

        /// <summary>
        ///A test for PostOcrFromUrlOrContent
        ///</summary>
        [TestMethod()]
        public void TestPostOcrFromUrlOrContent()
        {
            OcrApi target = new OcrApi(APIKEY, APPSID, BASEPATH);
            StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

            string name = "Sampleocr.bmp";
            string url =  null;
            string language = "english";
            bool?  useDefaultDictionaries=null;
            byte[] file = System.IO.File.ReadAllBytes("\\temp\\ocr\\resources\\" + name);
            
            Com.Aspose.OCR.Model.OCRResponse actual;
            actual = target.PostOcrFromUrlOrContent(url, language, useDefaultDictionaries, file);

            Assert.AreEqual("200", actual.Code);
            Assert.IsInstanceOfType(new OCRResponse(), actual.GetType()); 
        }

    }
}
