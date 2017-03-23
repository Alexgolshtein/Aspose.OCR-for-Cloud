//ExStart:
<?php
require_once realpath(__DIR__ . '/../..') . '/vendor/autoload.php';
require_once realpath(__DIR__ . '/../..') . '/Utils.php';

use Aspose\OCR\OcrApi;
use Aspose\OCR\AsposeApp;

class RecognizeText {

	public $barcodeApi;

	public function __construct() {
		AsposeApp::$appSID = Utils::appSID;
		AsposeApp::$apiKey = Utils::apiKey;
		$this->ocrApi = new OcrApi();
	}

	public function recognizeImageTextFromTheRequestBody() {

		//Set the image file name
		$name = "Sampleocr.bmp";

		//Set the image file url (if any)
		$url = null;

		//Set the language of the document
		$language = "English";

		//Set the spelling correction is used
		$useDefaultDictionaries = true;

		// Set local file (if any)
		$file = realpath(__DIR__ . '/../../../..') . '/Data/' . $name;

		//invoke Aspose.OCR Cloud SDK API to extract image text from local file
		$response = $this->ocrApi->PostOcrFromUrlOrContent($url, $language, $useDefaultDictionaries, $file);
		print_r ( $response );
	}
}

$recognizeText = new RecognizeText();
$recognizeText->recognizeImageTextFromTheRequestBody();

?>
//ExEnd:
