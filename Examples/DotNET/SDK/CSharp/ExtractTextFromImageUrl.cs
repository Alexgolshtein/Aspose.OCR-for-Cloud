using System;
using Aspose.Cloud;

namespace Aspose.OCR.Cloud.Examples
{
    class ExtractTextFromImageUrl
    {
        static void Main()
        {
            string url = "http://cdn.aspose.com/tmp/ocr-sample.bmp";
            OCRLanguages language = OCRLanguages.English;
            bool useDefaultDictionaries = true;

            OCRResponse r = Common.OCRService.RecognizeImageTextFromUrl(
                url,
                language,
                useDefaultDictionaries
                );

            foreach (Part p in r.PartsInfo.Parts) {
                Console.WriteLine(p.Text);
            }

            Common.Pause();
        }
    }
}
