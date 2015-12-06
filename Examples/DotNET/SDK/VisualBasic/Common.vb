Imports System
Imports System.IO
Imports Aspose.Cloud

Namespace Aspose.OCR.Cloud.Examples
	Friend Class Common
		Public Shared APP_SID As String = Nothing
		Public Shared APP_KEY As String = Nothing

		Public Shared STORAGE As String = Nothing
		Public Shared FOLDER As String = Nothing

		Public Shared Function GetDataDir(ByVal t As Type) As String
			Dim c As String = t.FullName
			c = c.Replace("Aspose.OCR.Cloud.Examples.", "")
			c = c.Replace("."c, Path.DirectorySeparatorChar)
			Dim p As String = Path.GetFullPath(Path.Combine(Directory.GetCurrentDirectory(), "..", "..", "..", "Data", c))
			p &= Path.DirectorySeparatorChar
			Console.WriteLine("Using Data Dir {0}", p)
			Return p
		End Function


		Public Shared ReadOnly Property StorageService() As StorageService
			Get
				If String.IsNullOrEmpty(APP_SID) OrElse String.IsNullOrEmpty(APP_KEY) Then
					Throw New Exception("APP_SID and APP_KEY must be valid")
				End If

				Dim s As New StorageService(APP_SID, APP_KEY)
				Return s
			End Get
		End Property

		Public Shared ReadOnly Property OCRService() As OCRService
			Get
				If String.IsNullOrEmpty(APP_SID) OrElse String.IsNullOrEmpty(APP_KEY) Then
					Throw New Exception("APP_SID and APP_KEY must be valid")
				End If

				Dim s As New OCRService(APP_SID, APP_KEY)
				Return s
			End Get
		End Property

		Shared Sub Main()
			Console.WriteLine("Change the 'Startup Object' in 'Project Properties' to run an example")
		End Sub

		Public Shared Sub Pause()
			Console.WriteLine("Press any key to continue...")
			Console.ReadKey()
		End Sub
	End Class
End Namespace
