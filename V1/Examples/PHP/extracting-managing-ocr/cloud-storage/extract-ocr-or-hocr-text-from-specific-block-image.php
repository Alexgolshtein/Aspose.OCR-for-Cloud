//ExStart:
<?php
require_once realpath(__DIR__ . '/../..') . '/vendor/autoload.php';
require_once realpath(__DIR__ . '/../..') . '/Utils.php';

use Aspose\OCR\OcrApi;
use Aspose\OCR\AsposeApp;

class ExtractText {

	public $barcodeApi;

	public function __construct() {
		AsposeApp::$appSID = Utils::appSID;
		AsposeApp::$apiKey = Utils::apiKey;
		$this->ocrApi = new OcrApi();
	}

	public function extractOCROrHOCRTextFromASpecificBlock() {

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

		// upload file to aspose cloud storage
		Utils::uploadFile($name);
		
		//invoke Aspose.OCR Cloud SDK API to extract text and partsinfo from an image
		$response = $this->ocrApi->GetRecognizeDocument($name, $language, $rectX, $rectY, $rectWidth, $rectHeight, $useDefaultDictionaries, $storage, $folder);
		print_r ( $response );
	}
}

$extractText = new ExtractText();
$extractText->extractOCROrHOCRTextFromASpecificBlock();

?>
//ExEnd:
