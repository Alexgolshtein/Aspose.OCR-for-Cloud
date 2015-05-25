<?php

use Aspose\OCR\OcrApi;

class OcrApiTest extends PHPUnit_Framework_TestCase {
    
    protected $ocr;

    protected function setUp()
    {        
        $this->ocr = new OcrApi();
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
        
        $result = $this->ocr->GetRecognizeDocument($name, $language, $rectX, $rectY, $rectWidth, $rectHeight, $useDefaultDictionaries, $storage, $folder);
        $this->assertEquals(200, $result->Code);
    }
    
    public function testPostOcrFromUrlOrContent()
    {
        $url = "http://s017.radikal.ru/i406/1202/7b/70183bef7a09.jpg";
        $language = "";
        $useDefaultDictionaries = true;
        $file = "url.jpg";
        
        $result = $this->ocr->PostOcrFromUrlOrContent($url, $language, $useDefaultDictionaries, $file);
        $this->assertEquals(200, $result->Code);
    }
                         
}    