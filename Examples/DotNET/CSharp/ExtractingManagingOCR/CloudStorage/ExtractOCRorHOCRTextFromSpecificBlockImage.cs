using System;
using Com.Aspose.OCR.Api;
using Com.Aspose.OCR.Model;
using Com.Aspose.Storage.Api;

namespace CSharp.ExtractingManagingOCR.CloudStorage
{
    class ExtractOCRorHOCRTextFromSpecificBlockImage
    {
        public static void Run()
        {

            // ExStart:1
            // Instantiate Aspose Storage Cloud API SDK
            StorageApi storageApi = new StorageApi(Common.APP_KEY, Common.APP_SID, Common.BASEPATH);

            // Instantiate Aspose OCR Cloud API SDK
            OcrApi ocrApi = new OcrApi(Common.APP_KEY, Common.APP_SID, Common.BASEPATH);

            // Set the image file name 
            String name = "Sampleocr.bmp";

            // Set the language of the document.
            String language = "English";

            // Set X and Y coordinate to recognize text inside..
            int? rectX = 150;
            int? rectY = 100;

            //Set Width and Height to recognize text inside.
            int? rectWidth = 1000;
            int? rectHeight = 300;

            //Set the spelling correction is used.
            bool? useDefaultDictionaries = true;

            //Set 3rd party cloud storage server (if any)
            String storage = "";
            String folder = "";

            try
            {
                //upload source file to aspose cloud storage
                storageApi.PutCreate(name, "", "", System.IO.File.ReadAllBytes(Common.GetDataDir() + name));

                // invoke Aspose.OCR Cloud SDK API to extract text and partsinfo from an image           
                OCRResponse apiResponse = ocrApi.GetRecognizeDocument(name, language, rectX, rectY, rectWidth, rectHeight, useDefaultDictionaries, storage, folder); 
               
                if (apiResponse != null)
                {
                    Console.WriteLine("Codetext: " + apiResponse.Text+ "\n");

                    Console.WriteLine("Extract OCR or HOCR Text from a specific Block, Done!");
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
