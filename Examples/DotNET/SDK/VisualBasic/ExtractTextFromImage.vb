Imports System
Imports Aspose.Cloud

Namespace Aspose.OCR.Cloud.Examples
	Friend Class ExtractTextFromImage
		Shared Sub Main()
			Dim dataDir As String = Common.GetDataDir(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType)
			Dim input As String = "sample1.bmp"
			Dim inputPath As String = dataDir & input

			Dim r As OCRResponse = Common.OCRService.RecognizeImageText(inputPath, OCRLanguages.English, True)

			For Each p As Part In r.PartsInfo.Parts
				Console.WriteLine(p.Text)
			Next p

			Common.Pause()
		End Sub
	End Class
End Namespace
