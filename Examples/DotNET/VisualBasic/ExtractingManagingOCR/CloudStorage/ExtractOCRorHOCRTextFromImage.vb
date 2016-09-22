Imports Com.Aspose.Storage.Api
Imports Com.Aspose.OCR.Api
Imports Com.Aspose.OCR.Model


Namespace ExtractingManagingOCR.CloudStorage

    Class ExtractOCRorHOCRTextFromImage

        Public Shared Sub Run()

            'ExStart:1
            'Instantiate Aspose Storage Cloud API SDK
            Dim storageApi As New StorageApi(Common.APP_KEY, Common.APP_SID, Common.BASEPATH)

            'Instantiate Aspose OCR Cloud API SDK
            Dim ocrApi As New OcrApi(Common.APP_KEY, Common.APP_SID, Common.BASEPATH)

            'Set the image file name 
            Dim name As [String] = "Sampleocr.bmp"

            'Set the language of the document.
            Dim language As [String] = "English"

            'Set X and Y coordinate to recognize text inside..
            Dim rectX As System.Nullable(Of Single) = Nothing
            Dim rectY As System.Nullable(Of Single) = Nothing

            'Set Width and Height to recognize text inside.
            Dim rectWidth As System.Nullable(Of Single) = Nothing
            Dim rectHeight As System.Nullable(Of Single) = Nothing

            'Set the spelling correction is used.
            Dim useDefaultDictionaries As [Boolean] = True

            'Set 3rd party cloud storage server (if any)
            Dim storage As [String] = ""

            'Set folder location at cloud storage
            Dim folder As [String] = ""

            Try

                'upload source file to aspose cloud storage
                storageApi.PutCreate(name, "", "", System.IO.File.ReadAllBytes(Common.GetDataDir + name))

                'invoke Aspose.OCR Cloud SDK API to extract text and partsinfo from an image
                Dim apiResponse As OCRResponse = ocrApi.GetRecognizeDocument(name, language, rectX, rectY, rectWidth, rectHeight, _
                    useDefaultDictionaries, storage, folder)

                If apiResponse IsNot Nothing Then
                    'download generated barcode from cloud storage
                    Console.WriteLine("Text :: " + apiResponse.Text)
                    Console.WriteLine("Extract OCR or HOCR Text from Images, Done!")
                End If

            Catch ex As Exception

                Console.WriteLine("error:" + ex.Message + vbLf + ex.StackTrace)
            End Try
            'ExEnd:1
        End Sub
    End Class
End Namespace
