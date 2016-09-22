Imports Com.Aspose.OCR.Api
Imports Com.Aspose.OCR.Model


Namespace ExtractingManagingOCR.CloudStorage

    Class ExtractOCRorHOCRTextFromImageWithoutStorage

        Public Shared Sub Run()

            'ExStart:1
            'Instantiate Aspose OCR Cloud API SDK 
            Dim ocrApi As New OcrApi(Common.APP_KEY, Common.APP_SID, Common.BASEPATH)

            'Set the image file name 
            Dim name As [String] = "Sampleocr.bmp"

            'Set the image file url. 
            Dim url As [String] = Nothing

            'Set the language of the document.
            Dim language As [String] = "English"

            'Set the spelling correction is used.
            Dim useDefaultDictionaries As [Boolean] = True

            'Set the local file (if any)
            Dim file As Byte() = System.IO.File.ReadAllBytes(Common.GetDataDir() + name)

            Try

                'invoke Aspose.OCR Cloud SDK API to extract image text from file
                Dim apiResponse As OCRResponse = ocrApi.PostOcrFromUrlOrContent(url, language, useDefaultDictionaries, file)

                If apiResponse IsNot Nothing Then
                    'download generated barcode from cloud storage
                    Console.WriteLine("Text :: " + apiResponse.Text)
                    Console.WriteLine("Extract OCR or HOCR Text from Images without using Storage, Done!")
                End If

            Catch ex As Exception

                Console.WriteLine("error:" + ex.Message + vbLf + ex.StackTrace)
            End Try
            'ExEnd:1
        End Sub
    End Class
End Namespace
