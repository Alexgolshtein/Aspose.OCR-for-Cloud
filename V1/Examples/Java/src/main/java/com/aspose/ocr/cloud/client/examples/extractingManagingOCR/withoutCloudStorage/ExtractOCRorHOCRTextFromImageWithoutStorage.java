package com.aspose.ocr.cloud.client.examples.extractingManagingOCR.withoutCloudStorage;

import java.nio.file.Path;

import com.aspose.ocr.api.OcrApi;
import com.aspose.ocr.cloud.client.examples.Configuration;
import com.aspose.ocr.cloud.client.examples.Utils;
import com.aspose.ocr.cloud.client.examples.extractingManagingOCR.cloudStorage.ExtractOCRorHOCRTextFromImage;
import com.aspose.ocr.model.OCRResponse;

/**
 * This example allows you to extract image text from local file using
 * Aspose.OCR for Cloud API in your applications.
 * 
 */
public class ExtractOCRorHOCRTextFromImageWithoutStorage {

	public static void main(String[] args) {
		

		// ExStart:1
		try {

			// Instantiate Aspose OCR Cloud API SDK
			OcrApi ocrApi = new OcrApi(Configuration.apiKey, Configuration.appSID, true);

			// Set the image file name
			String fileName = "Sampleocr.bmp";

			// Set the image file url.
			String url = null;

			// Set the language of the document.
			String language = "English";

			// Set the spelling correction is used.
			Boolean useDefaultDictionaries = true;

			Path path=Utils.getPath(ExtractOCRorHOCRTextFromImage.class, fileName);
		
			// invoke Aspose.OCR Cloud SDK API to extract image text from local
			// file
			OCRResponse apiResponse = ocrApi.PostOcrFromUrlOrContent(url, language, useDefaultDictionaries, path.toFile());

			if (apiResponse != null && apiResponse.getStatus().equals("OK")) {

				System.out.println("Text :: " + apiResponse.getText());

				System.out.println("Extract OCR or HOCR Text from Images without using Storage, Done!");
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		// ExEnd: ExtractOCRorHOCRTextFromImageWithoutStorage
	}
}
