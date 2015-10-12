using System;
using Aspose.Cloud;

namespace Aspose.OCR.Cloud.Examples
{
    class ExtractTextFromImage
    {
        static void Main()
        {
            string dataDir = Common.GetDataDir(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType);
            string input = "sample1.bmp";
            string inputPath = dataDir + input;

            OCRResponse r = Common.OCRService.RecognizeImageText(
                inputPath,
                OCRLanguages.English,
                true
                );

            foreach (Part p in r.PartsInfo.Parts) {
                Console.WriteLine(p.Text);
            }

            Common.Pause();
        }
    }
}
