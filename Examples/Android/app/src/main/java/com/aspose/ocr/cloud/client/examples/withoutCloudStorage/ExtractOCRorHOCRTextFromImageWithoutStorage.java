package com.aspose.ocr.cloud.client.examples.withoutCloudStorage;

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
 * This example allows you to extract image text from local file using
 * Aspose.OCR for Cloud API in your applications.
 * 
 */
public class ExtractOCRorHOCRTextFromImageWithoutStorage {

	public static void execute(Context context){


		// ExStart:1
		try {

			// Instantiate Aspose Storage Cloud API SDK
			StorageApi storageApi = new StorageApi(Configuration.apiKey, Configuration.appSID, true);
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

			// Set the local file (if any)
			File input = Utils.stream2file("Sampleocr","bmp", context.getResources().openRawResource(R.raw.Sampleocr));

			// invoke Aspose.OCR Cloud SDK API to extract image text from local
			// file
			OCRResponse apiResponse = ocrApi.PostOcrFromUrlOrContent(url, language, useDefaultDictionaries, input);

			if (apiResponse != null && apiResponse.getStatus().equals("OK")) {

				System.out.println("Text :: " + apiResponse.getText());

				System.out.println("Extract OCR or HOCR Text from Images without using Storage, Done!");
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		// ExEnd: 1
	}
}
