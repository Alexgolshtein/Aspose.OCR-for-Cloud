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

	public function recognizeImageTextFromURL() {
		//Set the image file url
		$url = "https://dl.dropboxusercontent.com/s/zj35mqdouoxy3rs/Sampleocr.bmp";

		//Set the language of the document
		$language = "English";

		//Set the spelling correction is used
		$useDefaultDictionaries = true;

		// Set local file (if any)
		$file = "empty.fle";

		//invoke Aspose.OCR Cloud SDK API to extract image text from file url
		$response = $this->ocrApi->PostOcrFromUrlOrContent($url, $language, $useDefaultDictionaries, $file);
		print_r ( $response );
	}
}

$recognizeText = new RecognizeText();
$recognizeText->recognizeImageTextFromURL();

?>