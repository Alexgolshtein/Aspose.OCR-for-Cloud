<?php

use Aspose\OCR\OcrApi;
use Aspose\Storage\StorageApi;

class OcrApiTest extends PHPUnit_Framework_TestCase {
    
    protected $ocr;
    protected $storageApi;

    protected function setUp()
    {        
        $this->ocr = new OcrApi();
	$this->storageApi = new StorageApi();
    }
    
    public function testGetRecognizeDocument()
    {
        $name = "ocr.png";
        $language = "";
        $rectX = 0;
        $rectY = 0;
        $rectWidth = 100;
        $rectHeight = 100;
        $useDefaultDictionaries = true;
        $storage = "";
        $folder = "";
	
	$result = $this->storageApi->PutCreate($name, "", $storage = "", getcwd() . '\\Data\\Input\\' . $name);
        
        $result = $this->ocr->GetRecognizeDocument($name, $language, $rectX, $rectY, $rectWidth, $rectHeight, $useDefaultDictionaries, $storage, $folder);
        $this->assertEquals(200, $result->Code);
	$this->assertInstanceOf('\Aspose\OCR\Models\OCRResponse', $result);
    }
    
    public function testPostOcrFromUrlOrContent()
    {
        $url = "http://s017.radikal.ru/i406/1202/7b/70183bef7a09.jpg";
        $language = "";
        $useDefaultDictionaries = true;
        $file = "url.jpg";
        
        $result = $this->ocr->PostOcrFromUrlOrContent($url, $language, $useDefaultDictionaries, $file);
        $this->assertEquals(200, $result->Code);
	$this->assertInstanceOf('\Aspose\OCR\Models\OCRResponse', $result);
    }
                         
}    