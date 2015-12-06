Imports System
Imports Aspose.Cloud

Namespace Aspose.OCR.Cloud.Examples
	Friend Class ExtractTextFromImageUrl
		Shared Sub Main()
			Dim url As String = "http://cdn.aspose.com/tmp/ocr-sample.bmp"
			Dim language As OCRLanguages = OCRLanguages.English
			Dim useDefaultDictionaries As Boolean = True

			Dim r As OCRResponse = Common.OCRService.RecognizeImageTextFromUrl(url, language, useDefaultDictionaries)

			For Each p As Part In r.PartsInfo.Parts
				Console.WriteLine(p.Text)
			Next p

			Common.Pause()
		End Sub
	End Class
End Namespace
