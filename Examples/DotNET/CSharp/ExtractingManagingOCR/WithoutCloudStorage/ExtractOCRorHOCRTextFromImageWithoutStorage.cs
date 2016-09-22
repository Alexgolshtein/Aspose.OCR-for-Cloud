using System;
using Com.Aspose.OCR.Api;
using Com.Aspose.OCR.Model;

namespace CSharp.ExtractingManagingOCR.WithoutCloudStorage
{
    class ExtractOCRorHOCRTextFromImageWithoutStorage
    {
        public static void Run()
        {

            // ExStart:1

            // Instantiate Aspose OCR Cloud API SDK
            OcrApi ocrApi = new OcrApi(Common.APP_KEY, Common.APP_SID, Common.BASEPATH);

            // Set the image file name 
            String name = "Sampleocr.bmp";

            // Set the image file url. 
            String url = null;

            // Set the language of the document.
            String language = "english";

            //Set the spelling correction is used.
            bool? useDefaultDictionaries = true;

            //Set the local file (if any)
            byte[] file = System.IO.File.ReadAllBytes(Common.GetDataDir() + name);

            try
            {
                // invoke Aspose.OCR Cloud SDK API to extract image text from URL           
                OCRResponse apiResponse = ocrApi.PostOcrFromUrlOrContent(url, language, useDefaultDictionaries, file); 
               
                if (apiResponse != null)
                {
                    Console.WriteLine("Codetext: " + apiResponse.Text+ "\n");

                    Console.WriteLine("Extract OCR or HOCR Text from Images without using Storage, Done!");
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine("error:" + ex.Message + "\n" + ex.StackTrace);
            }
            // ExEnd:1
        }
    }
}
