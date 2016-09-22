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
use Aspose\Storage\StorageApi;

// ExStart:1

\Aspose\Storage\AsposeApp::$apiKey = $apiKey;
\Aspose\Storage\AsposeApp::$appSID = $appSid;
\Aspose\OCR\AsposeApp::$apiKey = $apiKey;
\Aspose\OCR\AsposeApp::$appSID = $appSid;

// Instantiate Aspose Storage Cloud API SDK
$storageApi = new StorageApi ();

// Instantiate Aspose OCR Cloud API SDK
$ocr = new OcrApi();

//Set the image file name
$name = "Sampleocr.bmp";

//Set the language of the document
$language = "English";

//Set X and Y coordinate to recognize text inside
$rectX = 150;
$rectY = 100;

//Set Width and Height to recognize text inside
$rectWidth = 1000;
$rectHeight = 300;

//Set the spelling correction is used
$useDefaultDictionaries = true;

// Set 3rd party cloud storage server (if any)
$storage = "";

// Set folder location at cloud storage
$folder = "";

try {
	
	// upload file to aspose cloud storage
	$result = $storageApi->PutCreate ( $name, "", $storage, $data_folder . $name );
	
	//invoke Aspose.OCR Cloud SDK API to extract text and partsinfo from an image
	$response = $ocr->GetRecognizeDocument($name, $language, $rectX, $rectY, $rectWidth, $rectHeight, $useDefaultDictionaries, $storage, $folder);
	print_r ( $response );
	
	if ($response != null && $response->Status = "OK") {
		
		echo "\nText :: " . $response->Text;		
		
		echo "\n\nExtract OCR or HOCR Text from a specific Block, Done!";
	}
} catch ( \Aspose\Barcode\ApiException $exp ) {
	echo "Exception:" . $exp->getMessage ();
}
//ExEnd:1
