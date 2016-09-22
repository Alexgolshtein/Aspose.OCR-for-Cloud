package com.aspose.ocr.cloud.client.examples.extractingManagingOCR.cloudStorage;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

import com.aspose.ocr.api.OcrApi;
import com.aspose.ocr.model.OCRResponse;
import com.aspose.storage.api.StorageApi;

/**
* This example allows you to extract text from a BMP, TIFF, PNG, JPEG or GIF image using Aspose.OCR for Cloud API in your applications.
 * 
 */
public class ExtractOCRorHOCRTextFromImage {

	public static void main(String[] args) {

		Properties prop = new Properties();
		String propFileName = "config.properties";
		// App SID
		String appSID = "";
		// App Key
		String apiKey = "";
		// output folder
		String outFolder = "c:\\temp\\";

		InputStream inputStream = ExtractOCRorHOCRTextFromImage.class
				.getClassLoader().getResourceAsStream(propFileName);
		try {
			if (inputStream != null) {
				prop.load(inputStream);
				appSID = prop.getProperty("app_sid");
				apiKey = prop.getProperty("api_key");
				outFolder = prop.getProperty("out_folder");

			} else {
				System.out.println("property file '" + propFileName
						+ "' not found in the classpath");
				System.exit(1);
			}
		} catch (IOException ioe) {
			System.out.println("property file '" + propFileName
					+ "' not found in the classpath");
			ioe.printStackTrace();
			System.exit(1);
		}

		// ExStart:1
		try {

			// Instantiate Aspose Storage Cloud API SDK
			StorageApi storageApi = new StorageApi(apiKey, appSID, true);

			// Instantiate Aspose OCR Cloud API SDK
			OcrApi ocrApi = new OcrApi(apiKey, appSID, true);

            // Set the image file name 
			String fileName = "Sampleocr.bmp";
			
			// Set the language of the document.
			String language = "English";
			
			// Set X and Y coordinate to recognize text inside..
			Integer rectX = 0;
			Integer rectY = 0;
			
			//Set Width and Height to recognize text inside.
			Integer rectWidth = 0;
			Integer rectHeight = 0;
			
			//Set the spelling correction is used.
			Boolean useDefaultDictionaries = true;

			// Set 3rd party cloud storage server (if any)
			String storage = ""; // .

			// Set folder location at cloud storage
			String folder = "";

			//upload file to aspose cloud storage
			  storageApi.PutCreate(fileName, "", "", new File(ExtractOCRorHOCRTextFromImage.class.getResource("/" + fileName).toURI()));
			  
			//invoke Aspose.OCR Cloud SDK API to extract text and partsinfo from an image           
			 OCRResponse apiResponse = ocrApi.GetRecognizeDocument(fileName, language, rectX, rectY, rectWidth, rectHeight, useDefaultDictionaries, storage, folder);   
			 
			if (apiResponse != null && apiResponse.getStatus().equals("OK")) {

				System.out.println("Text :: " + apiResponse.getText());
				
				System.out.println("Extract OCR or HOCR Text from Images, Done!");
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		// ExEnd:1
	}

}
