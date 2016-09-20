package com.aspose.ocr.cloud.client.examples.extractingManagingOCR.withoutCloudStorage;



import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

import com.aspose.ocr.api.OcrApi;
import com.aspose.ocr.model.OCRResponse;
import com.aspose.storage.api.StorageApi;

/**
 * This example allows you to extract image text from local file using Aspose.OCR for Cloud API in your applications.
 * 
 */
public class ExtractOCRorHOCRTextFromImageWithoutStorage {

	public static void main(String[] args) {

		Properties prop = new Properties();
		String propFileName = "config.properties";
		// App SID
		String appSID = "";
		// App Key
		String apiKey = "";
		// output folder
		String outFolder = "c:\\temp\\";

		InputStream inputStream = ExtractOCRorHOCRTextFromImageWithoutStorage.class
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

			// Instantiate Aspose OCR Cloud API SDK
			OcrApi ocrApi = new OcrApi(apiKey, appSID, true);
			
            // Set the image file name 
			String fileName = "Sampleocr.bmp";
			
            // Set the image file url. 
			String url = null;
			
			// Set the language of the document.
			String language = "English";
			
			//Set the spelling correction is used.
			Boolean useDefaultDictionaries = true;

			//Set the local file (if any)
			File file = new File(ExtractOCRorHOCRTextFromImageWithoutStorage.class.getResource("/" + fileName).toURI());
			
			// invoke Aspose.OCR Cloud SDK API to extract image text from local file                      
			OCRResponse apiResponse = ocrApi.PostOcrFromUrlOrContent(url, language, useDefaultDictionaries, file);      
			 
			if (apiResponse != null && apiResponse.getStatus().equals("OK")) {

				System.out.println("Text :: " + apiResponse.getText());
				
				System.out.println("Extract OCR or HOCR Text from Images without using Storage, Done!");
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		// ExEnd:1
	}

}
