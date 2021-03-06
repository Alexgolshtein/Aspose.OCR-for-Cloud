package com.aspose.ocr.cloud.client.examples.cloudStorage;

import android.content.Context;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

import com.aspose.ocr.api.OcrApi;
import com.aspose.ocr.cloud.client.examples.Configuration;
import com.aspose.ocr.cloud.client.examples.R;
import com.aspose.ocr.cloud.client.examples.Utils;
import com.aspose.ocr.model.OCRResponse;
import com.aspose.storage.api.StorageApi;

/**
 * 
 * This example allows you to extract text from a BMP, TIFF, PNG, JPEG or GIF image using Aspose.OCR for Cloud API in your applications.
 *  
 */
public class ExtractOCRorHOCRTextFromSpecificBlockImage {

	public static void execute(Context context) {

		// ExStart:1
		try {

			// Instantiate Aspose Storage Cloud API SDK
			StorageApi storageApi = new StorageApi(Configuration.apiKey, Configuration.appSID, true);
			// Instantiate Aspose OCR Cloud API SDK
			OcrApi ocrApi = new OcrApi(Configuration.apiKey, Configuration.appSID, true);

            // Set the image file name 
			String fileName = "Sampleocr.bmp";
			
			// Set the language of the document.
			String language = "English";
			
			// Set X and Y coordinate to recognize text inside..
			Integer rectX = 150;
			Integer rectY = 100;
			
			//Set Width and Height to recognize text inside.
			Integer rectWidth = 1000;
			Integer rectHeight = 300;
			
			//Set the spelling correction is used.
			Boolean useDefaultDictionaries = true;

			// Set 3rd party cloud storage server (if any)
			String storage = ""; // .

			// Set folder location at cloud storage
			String folder = "";

			//upload file to aspose cloud storage
			File input = Utils.stream2file("Sampleocr","bmp", context.getResources().openRawResource(R.raw.Sampleocr));
			  
			//invoke Aspose.OCR Cloud SDK API to extract text and partsinfo from an image           
			 OCRResponse apiResponse = ocrApi.GetRecognizeDocument(fileName, language, rectX, rectY, rectWidth, rectHeight, useDefaultDictionaries, storage, folder);   
			 
			if (apiResponse != null && apiResponse.getStatus().equals("OK")) {

				System.out.println("Text :: " + apiResponse.getText());
				
				System.out.println("Extract OCR or HOCR Text from a specific Block, Done!");
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		//ExEnd: 1
	}

}
