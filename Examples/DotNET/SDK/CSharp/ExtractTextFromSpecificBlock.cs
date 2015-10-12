using System;
using Aspose.Cloud;

namespace Aspose.OCR.Cloud.Examples
{
    class ExtractTextFromSpecificBlock
    {
        static void Main()
        {
            string dataDir = Common.GetDataDir(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType);
            string input = "Sample3.bmp";
            string inputPath = dataDir + input;

            OCRLanguages language = OCRLanguages.English;
            int rectX = 10;
            int rectY = 10;
            int rectWidth = 600;
            int rectHeight = 400;
            bool useDefaultDictionaries = true;

            Common.StorageService.File.UploadFile(
                inputPath,
                input,
                storage: Common.STORAGE
                );

            OCRResponse r = Common.OCRService.RecognizeImageText(
                input,
                language,
                rectX,
                rectY,
                rectWidth,
                rectHeight,
                useDefaultDictionaries,
                Common.FOLDER,
                Common.STORAGE
            );

            foreach (Part p in r.PartsInfo.Parts) {
                Console.WriteLine(p.Text);
            }

            Common.Pause();
        }
    }
}
