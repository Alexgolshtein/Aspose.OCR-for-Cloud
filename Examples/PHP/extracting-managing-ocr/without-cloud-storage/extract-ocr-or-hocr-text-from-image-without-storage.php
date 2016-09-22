<?php

/**
 * Include the SDK by using the autoloader from Composer.
 */
require __DIR__ . '/../../vendor/autoload.php';

/**
 * Include the configuration values.
 *
 * Ensure that you have edited the configuration.php file
 * to include your application keys.
 */
$config = require __DIR__ . '/../../configuration.php';

$apiKey = $config ['apiKey'];
$appSid = $config ['appSid'];
$out_folder = $config ['outFolder'];
$data_folder = '../../data/'; // resouece data folder

/**
 * The namespaces provided by the SDK.
 */
use Aspose\OCR\OcrApi;

// ExStart:1
\Aspose\OCR\AsposeApp::$apiKey = $apiKey;
\Aspose\OCR\AsposeApp::$appSID = $appSid;

// Instantiate Aspose OCR Cloud API SDK
$ocr = new OcrApi();

//Set the image file name
$name = "Sampleocr.bmp";

//Set the image file url (if any)
$url = null;

//Set the language of the document
$language = "English";

//Set the spelling correction is used
$useDefaultDictionaries = true;

// Set local file (if any)
$file = $data_folder . $name;

try {
	
	//invoke Aspose.OCR Cloud SDK API to extract image text from local file
	$response = $ocr->PostOcrFromUrlOrContent($url, $language, $useDefaultDictionaries, $file);
	print_r ( $response );
	
	if ($response != null && $response->Status = "OK") {
		
		echo "\nText :: " . $response->Text;		
		
		echo "\n\nExtract OCR or HOCR Text from Images without using Storage, Done!";
	}
} catch ( \Aspose\Barcode\ApiException $exp ) {
	echo "Exception:" . $exp->getMessage ();
}
//ExEnd:1
