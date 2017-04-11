/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.aspose.ocr.api;

import static org.junit.Assert.assertNull;

import java.io.File;
import java.nio.file.Path;
import java.nio.file.Paths;

import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;

import com.aspose.ocr.client.ApiException;
import com.aspose.ocr.model.OCRResponse;

/**
 *
 * @author Imran Anwar
 * @author Farooq Sheikh
*/
public class OcrApiTest {
	OcrApi ocrApi;
	String appSID = "xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx";
	String apiKey = "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx";
	
	private static Path getPath(Class example, String filename) {
		final File f = new File(example.getProtectionDomain().getCodeSource().getLocation().getPath());
		String path = f.getAbsolutePath();
		int subPathIndex = path.indexOf("Examples");
		String subPath = path.substring(0, subPathIndex) + "Data/" + filename;

		Path p = Paths.get(subPath);
		return p;
	}
	
	public OcrApiTest() {
	}
	
	@BeforeClass
	public static void setUpClass() {
	}
	
	@AfterClass
	public static void tearDownClass() {
	}
	
	@Before
	public void setUp() {
		ocrApi = new OcrApi("http://api.aspose.cloud/v1.1",apiKey,appSID);
	}
	
	@After
	public void tearDown() {
	}

	/**
	 * Test of GetRecognizeDocument method, of class OcrApi.
	 */
	@Test
	public void testGetRecognizeDocument() {
		System.out.println("GetRecognizeDocument");
		String name = "Sampleocr.bmp";
		String language = "";
		Integer rectX = 0;
		Integer rectY = 0;
		Integer rectWidth = 100;
		Integer rectHeight = 100;
		Boolean useDefaultDictionaries = true;
		String storage = "";
		String folder = "";

		try{
		OCRResponse result = ocrApi.GetRecognizeDocument(name, language, rectX, rectY, rectWidth, rectHeight, useDefaultDictionaries, storage, folder);
		}catch(ApiException apiExp){
			System.out.println("exp:" + apiExp.getMessage());
			assertNull(apiExp);
		}

	}

	/**
	 * Test of PostOcrFromUrlOrContent method, of class OcrApi.
	 */
	@Test
	public void testPostOcrFromUrlOrContent() {
		System.out.println("PostOcrFromUrlOrContent");
		String url = "";
		String language = "";
		Boolean useDefaultDictionaries = true;
		File file;

		try{
			file =getPath(OcrApiTest.class, "Sampleocr.bmp").toFile();
			OCRResponse result = ocrApi.PostOcrFromUrlOrContent("http://s017.radikal.ru/i406/1202/7b/70183bef7a09.jpg", language, useDefaultDictionaries, file);
		}catch(ApiException apiExp){
			System.out.println("exp:" + apiExp.getMessage());
			assertNull(apiExp);
		}

	}
}
