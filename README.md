<html style="background:none;">
<div>
  <div class="top" style="margin-left:auto;
  margin-right:auto;  width:100%;  padding:10px;  background: url(https://cms.asposeptyltd.com/templates/aspose/App_Themes/V3/images/bg/header1.png);repeat-y;">
    <div style="float:left; width:70%; color: white">
      <h3 style="font-size: 250%; margin-left:2rem; margin-top:1%;">
        Perform OCR on images anywhere, any platform
      </h3>
      <div class="menu" style="width:100%;
  height:30px;
  margin:24px 0px 0px 33px;">
          <div class='btn' style="float:left;height: 100%;color: white; margin: 1px;  text-align:center;background-color:#f1c40f;border-color:#eea236;"><div style="padding:3px 15px 5px 15px; font-weight:700;">Free Trial</div></div>
          <div class='btn' style="float:left;  height: 100%;  color: white;  margin: 1px;  text-align:center; background-color:#29c26a; border-color:#4cae4c;"><div style="padding:3px 15px 5px 15px;  font-weight:700;">Learn</div></div>
          <div class='btn' style="float:left;  height: 100%;  color: white;  margin: 1px;  text-align:center; background-color:#323e80; border-color:#darkblue;"><div style="padding:3px 15px 5px 15px;  font-weight:700;">Buy</div></div>
      </div>
    </div>
    <div style="float:right; width:30%; max-width:170px;">
      <a href="">
        <img style="width:100%; border-radius:10%; background:none;" src="https://www.aspose.cloud/templates/aspose/App_Themes/V3/images/ocr/header/aspose_ocr-for-cloud-min.png"/>
      </a>
    </div>
    <div style="clear:both;"></div>
  </div>
</div>
<div style="width:100%"><br><br></div>


Aspose.OCR for Cloud is a REST API for optical character recognition and documents scanning in the cloud. It supports reading and recognizing characters from most commonly used raster image formats. Just pass specific image name and its format to the Aspose.OCR for Cloud REST API and it will return response in XML or JSON format including recognized text, font name, font size, font style.

## Kick-start
Try out our [demo](http://saltov-gpu-3.dynabic.com:8083/) right now or make your own solution using sdk or REST, follow this steps:

#### 1. Get API keys if you haven't
Make a personal account on [Aspose for Cloud](https://dashboard.aspose.cloud/#/) and click _Get Keys_. This keys are usefull for all Aspose Cloud products. If you have any trouble, look at this [detailed manual](https://docs.aspose.cloud/display/totalcloud/Create+New+App+and+Get+App+Key+and+SID).

#### 2. Upload image file on storage
On the same [page](https://dashboard.aspose.cloud/#/files) go to the _My Files_ tab and upload files you want to recognize.

#### 3. Check the API 
Use [API Reference page](https://apireference.aspose.cloud/ocr/) to check oyur keys and API usage.


## How to use it in Your project?
Aspose.OCR for Cloud is implemented as a REST API.

Our API is completely independent of your operating system, database system or development language. You can use any language and platform that supports HTTP to interact with our API. However, manually writing client code can be difficult, error-prone and time-consuming. Therefore, we have provided and support API SDKs in many development languages in order to make it easier to integrate with us.
If you use SDK, it hides the REST API calls and lets you use Aspose.OCR features in a native way for your preferred language.


<p align="center">
  <a title="Download ZIP" href="https://github.com/aspose-ocr/Aspose.OCR-for-Cloud/archive/master.zip">
     <img src="http://i.imgur.com/hwNhrGZ.png" />
  </a>
</p>

_________________________

Currently we have two versions of Cloud OCR: **V2** and **V3**:

#### V2 [DEMO](http://saltov-gpu-3.dynabic.com:8083/)

This vesion uses our latest stable developments.It produces a good result on almost all types of images for an acceptable execution time.

#### V3 [DEMO](http://saltov-gpu-3.dynabic.com:8084/)

We have not released this version yet, but you can see the demo site. It's based on the most advanced algorithms on neural networks, distributed computing. [fix]_We are very actively engaged in the development of this version_ __....[TBD]__ 

The APIs of these versions are the same, differ only in the server address, so You can use *V2* now and swith to *V3* in future.

___________________________

## SDK
[.NET](SDKs/Aspose.OCR-Cloud-SDK-for-CSharp)

## Examples
```csharp
// Upload file using storage API
OcrApi ocrApi = new OcrApi(APIKEY, APPSID, BASEPATH);
IOcrV2Api ocrApiV2 = new OcrV2Api(APIKEY, APPSID, BASEPATH);
StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);
ResponseMessage putCreateResponse = storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes(Path.Combine(DataFolder, name)));

// Recognize using OCR Cloud API
OCRResponse ocrResponseV2 = ocrApiV2.OcrV2GetRecognizeDocument(name, null, null);
```

## Roadmap

In the upcoming releases, we are set to implement a number of new features:
* Add output formats _hocr_ and _pdf_
* Add new functionality to the API: 
* * Custom regions selection



## Resources

+ **Website:** [www.aspose.com](http://www.aspose.com)
+ **Product Home:** [Aspose.OCR for Cloud](http://www.aspose.com/cloud/ocr-api.aspx)
+ **Documentation:** [Aspose.OCR for Cloud Documentation](http://www.aspose.com/docs/display/ocrcloud)
+ **Forum:** [Aspose.OCR for Cloud Forum](http://www.aspose.com/community/forums/aspose.ocr-product-family/493/showforum.aspx)
+ **Blog:** [Aspose.OCR for Cloud Blog](http://www.aspose.com/blogs/aspose-products/aspose-ocr-product-family.html)
