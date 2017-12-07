using System;
using System.Collections.Generic;
using System.Text;
using Com.Aspose.OCR.Api;
using Com.Aspose.Storage.Api;
using Com.Aspose.OCR.Model;

namespace AsposeOCR
{
    class ocr
    {
        public static void Main(String[] args)
        {

string APIKEY = "xxxxxx";
string APPSID = "xxxxxx";
string BASEPATH = "http://api.aspose.cloud/v1.1";


///*
//*  Working with OCR
//*  Extract OCR or HOCR Text from Images without using Storage 
//*/

//OcrApi ocrApi = new OcrApi(APIKEY, APPSID, BASEPATH);
//StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

//String fileName = "Sampleocr.bmp";
//String url = null;
//String language = "english";
//Boolean useDefaultDictionaries = true;
//byte[] file = System.IO.File.ReadAllBytes("\\temp\\ocr\\resources\\" + fileName);

//try
//{
//    //invoke Aspose.PDF Cloud SDK API to append word document
//    OCRResponse apiResponse = ocrApi.PostOcrFromUrlOrContent(url, language, useDefaultDictionaries, file);

//    if (apiResponse != null)
//    {
//        //download appended document from storage server
//        Console.WriteLine("Text :: " + apiResponse.Text);
//        Console.WriteLine("Extract OCR or HOCR Text from Images without using Storage , Done!");
//        Console.ReadKey();
//    }
//}
//catch (Exception ex)
//{
//    System.Diagnostics.Debug.WriteLine("error:" + ex.Message + "\n" + ex.StackTrace);

//}


///*
//*  Working with OCR
//*  Extract OCR or HOCR Text from Images 
//*/

//OcrApi ocrApi = new OcrApi(APIKEY, APPSID, BASEPATH);
//StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

//String fileName = "Sampleocr.bmp";
//String language = "";
//int rectX = 0;
//int rectY = 0;
//int rectWidth = 0;
//int rectHeight = 0;
//Boolean useDefaultDictionaries = true;
//String storage = "";
//String folder = "";

//try
//{
//    //upload source file to aspose cloud storage
//    storageApi.PutCreate(fileName, "", "", System.IO.File.ReadAllBytes("\\temp\\ocr\\resources\\" + fileName));

//    //invoke Aspose.PDF Cloud SDK API to append word document
//    OCRResponse apiResponse = ocrApi.GetRecognizeDocument(fileName, language, rectX, rectY, rectWidth, rectHeight, useDefaultDictionaries, storage, folder);

//    if (apiResponse != null)
//    {
//        //download appended document from storage server
//        Console.WriteLine("Text :: " + apiResponse.Text);
//        Console.WriteLine("Extract OCR or HOCR Text from Images without using Storage , Done!");
//        Console.ReadKey();
//    }
//}
//catch (Exception ex)
//{
//    System.Diagnostics.Debug.WriteLine("error:" + ex.Message + "\n" + ex.StackTrace);

//}



///*
//*  Working with OCR
//*  Extract OCR or HOCR Text from Images 
//*/

//OcrApi ocrApi = new OcrApi(APIKEY, APPSID, BASEPATH);
//StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

//String fileName = "Sampleocr.bmp";
//String language = "english";
//int rectX = 150;
//int rectY = 100;
//int rectWidth = 1000;
//int rectHeight = 300;
//Boolean useDefaultDictionaries = true;
//String storage = "";
//String folder = "";

//try
//{
//    //upload source file to aspose cloud storage
//    storageApi.PutCreate(fileName, "", "", System.IO.File.ReadAllBytes("\\temp\\ocr\\resources\\" + fileName));

//    //invoke Aspose.PDF Cloud SDK API to append word document
//    OCRResponse apiResponse = ocrApi.GetRecognizeDocument(fileName, language, rectX, rectY, rectWidth, rectHeight, useDefaultDictionaries, storage, folder);

//    if (apiResponse != null)
//    {
//        //download appended document from storage server
//        Console.WriteLine("Text :: " + apiResponse.Text);
//        Console.WriteLine("Extract OCR or HOCR Text from Images without using Storage , Done!");
//        Console.ReadKey();
//    }
//}
//catch (Exception ex)
//{
//    System.Diagnostics.Debug.WriteLine("error:" + ex.Message + "\n" + ex.StackTrace);

//}



/*
*  Working with OCR
*  Extract OCR or HOCR Text from Images without using Storage 
*/

OcrApi ocrApi = new OcrApi(APIKEY, APPSID, BASEPATH);
StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

String url = "https://dl.dropboxusercontent.com/s/zj35mqdouoxy3rs/Sampleocr.bmp";
String language = "english";
Boolean useDefaultDictionaries = true;
byte[] file = null;

try
{
    //invoke Aspose.PDF Cloud SDK API to append word document
    OCRResponse apiResponse = ocrApi.PostOcrFromUrlOrContent(url, language, useDefaultDictionaries, file);

    if (apiResponse != null)
    {
        //download appended document from storage server
        Console.WriteLine("Text :: " + apiResponse.Text);
        Console.WriteLine("Extract OCR or HOCR Text from Images without using Storage , Done!");
        Console.ReadKey();
    }
}
catch (Exception ex)
{
    System.Diagnostics.Debug.WriteLine("error:" + ex.Message + "\n" + ex.StackTrace);

}



            ///*
            //*  Working with OCR
            //*  Extract OCR or HOCR Text from Images without using Storage 
            //*/

            //OcrApi ocrApi = new OcrApi(APIKEY, APPSID, BASEPATH);
            //StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

            //String fileName = "Sampleocr.bmp";
            //String url = null;
            //String language = "english";
            //Boolean useDefaultDictionaries = true;
            //byte[] file = System.IO.File.ReadAllBytes("\\temp\\ocr\\resources\\" + fileName);

            //try
            //{
            //    //invoke Aspose.PDF Cloud SDK API to append word document
            //    OCRResponse apiResponse = ocrApi.PostOcrFromUrlOrContent(url, language, useDefaultDictionaries, file);

            //    if (apiResponse != null)
            //    {
            //        //download appended document from storage server
            //        Console.WriteLine("Text :: " + apiResponse.Text);
            //        Console.WriteLine("Extract OCR or HOCR Text from Images without using Storage , Done!");
            //        Console.ReadKey();
            //    }
            //}
            //catch (Exception ex)
            //{
            //    System.Diagnostics.Debug.WriteLine("error:" + ex.Message + "\n" + ex.StackTrace);

            //}


//...
//End
        }
    }
}
