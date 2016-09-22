use lib 'lib';
use strict;
use warnings;
use utf8;
use File::Slurp; # From CPAN
use JSON;

use AsposeStorageCloud::StorageApi;
use AsposeStorageCloud::ApiClient;
use AsposeStorageCloud::Configuration;

use AsposeOcrCloud::OcrApi;
use AsposeOcrCloud::ApiClient;
use AsposeOcrCloud::Configuration;

my $configFile = '../../data/config.json';
my $configPropsText = read_file($configFile);
my $configProps = decode_json($configPropsText);

my $data_path = '../../data/';
my $out_path = $configProps->{'out_folder'};;

#ExStart:1
$AsposeOcrCloud::Configuration::app_sid = $configProps->{'app_sid'};
$AsposeOcrCloud::Configuration::api_key = $configProps->{'api_key'};
$AsposeOcrCloud::Configuration::debug = 1;
$AsposeStorageCloud::Configuration::app_sid = $AsposeOcrCloud::Configuration::app_sid;
$AsposeStorageCloud::Configuration::api_key = $AsposeOcrCloud::Configuration::api_key;

#Instantiate Aspose.Storage API SDK 
my $storageApi = AsposeStorageCloud::StorageApi->new();

#Instantiate Aspose.OCR API SDK
my $ocrApi = AsposeOcrCloud::OcrApi->new();

#Set the image file name
my $name = 'Sampleocr.bmp';

#Set the language of the document
my $language = 'English';

#Set the spelling correction is used
my $useDefaultDictionaries = 'true';

#upload file to aspose cloud storage 
my $response = $storageApi->PutCreate(Path => $name, file => $data_path.$name);

#invoke Aspose.OCR Cloud SDK API to extract text and partsinfo from an image                         
$response = $ocrApi->GetRecognizeDocument(name=> $name, language=> $language, useDefaultDictionaries=> $useDefaultDictionaries);

if($response->{'Status'} eq 'OK'){
    print "\n Text :: " . $response->{'Text'};
    
    print "\n Extract OCR or HOCR Text from Images, Done!";
	
}
#ExEnd:1