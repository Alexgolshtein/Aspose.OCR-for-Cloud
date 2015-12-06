Imports System
Imports Aspose.Cloud

Namespace Aspose.OCR.Cloud.Examples
	Friend Class ExtractTextFromSpecificBlock
		Shared Sub Main()
			Dim dataDir As String = Common.GetDataDir(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType)
			Dim input As String = "Sample3.bmp"
			Dim inputPath As String = dataDir & input

			Dim language As OCRLanguages = OCRLanguages.English
			Dim rectX As Integer = 10
			Dim rectY As Integer = 10
			Dim rectWidth As Integer = 600
			Dim rectHeight As Integer = 400
			Dim useDefaultDictionaries As Boolean = True

			Common.StorageService.File.UploadFile(inputPath, input, storage:= Common.STORAGE)

			Dim r As OCRResponse = Common.OCRService.RecognizeImageText(input, language, rectX, rectY, rectWidth, rectHeight, useDefaultDictionaries, Common.FOLDER, Common.STORAGE)

			For Each p As Part In r.PartsInfo.Parts
				Console.WriteLine(p.Text)
			Next p

			Common.Pause()
		End Sub
	End Class
End Namespace
