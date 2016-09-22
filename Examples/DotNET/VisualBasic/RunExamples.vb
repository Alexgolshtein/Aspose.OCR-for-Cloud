Imports System.Collections.Generic
Imports System.IO
Imports System.Configuration
Imports VisualBasic.ExtractingManagingOCR.CloudStorage


Module RunExamples

    Sub Main()
        Console.WriteLine("Open RunExamples.cs. In Main() method, Un-comment the example that you want to run")
        Console.WriteLine("=====================================================")

        ' Un-comment the one you want to try out 

        '' =====================================================
        '' =====================================================
        '' ExtractingManagingOCR - CloudStorage
        '' =====================================================
        '' =====================================================

        'ExtractOCRorHOCRTextFromImage.Run()
        'ExtractOCRorHOCRTextFromSpecificBlockImage.Run()
        
        '' =====================================================
        '' =====================================================
        '' ExtractingManagingOCR - WithoutCloudStorage
        '' =====================================================
        '' =====================================================

        'ExtractOCRorHOCRTextFromImageWithoutStorage.Run()
        ExtractOCRorHOCRTextFromURLImage.Run()

        ' Stop before exiting
        Console.WriteLine(vbLf & vbLf & "Program Finished. Press any key to exit....")
        Console.ReadKey()
    End Sub

End Module

