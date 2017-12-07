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

my $configFile = '../../Config/config.json';
my $configPropsText = read_file($configFile);
my $configProps = decode_json($configPropsText);

my $data_path = '../../../../Data/';
my $out_path = $configProps->{'out_folder'};;

#ExStart:1
$AsposeOcrCloud::Configuration::app_sid = $configProps->{'app_sid'};
$AsposeOcrCloud::Configuration::api_key = $configProps->{'api_key'};
$AsposeOcrCloud::Configuration::debug = 1;
$AsposeStorageCloud::Configuration::app_sid = $AsposeOcrCloud::Configuration::app_sid;
$AsposeStorageCloud::Configuration::api_key = $AsposeOcrCloud::Configuration::api_key;

# Instantiate Aspose.Storage API SDK 
my $storageApi = AsposeStorageCloud::StorageApi->new();

# Instantiate Aspose.OCR API SDK
my $ocrApi = AsposeOcrCloud::OcrApi->new();

# Set the image file name
my $name = 'Sampleocr.bmp';

# Set the language of the document
my $language = 'English';

# Set X and Y coordinate to recognize text inside
my $rectX = 150;
my $rectY = 100;

# Set Width and Height to recognize text inside
my $rectWidth = 1000;
my $rectHeight = 300;

# Set the spelling correction is used
my $useDefaultDictionaries = 'true';

# Upload file to aspose cloud storage 
my $response = $storageApi->PutCreate(Path => $name, file => $data_path.$name);

# Invoke Aspose.OCR Cloud SDK API to extract text and partsinfo from an image                         
$response = $ocrApi->GetRecognizeDocument(name=> $name, language=> $language, rectX=> $rectX, rectY=> $rectY, rectWidth=> $rectWidth, rectHeight=> $rectHeight, useDefaultDictionaries=> $useDefaultDictionaries);

if($response->{'Status'} eq 'OK'){
    print "\n Text :: " . $response->{'Text'};
    
    print "\n Extract OCR or HOCR Text from a specific Block, Done!";
	
}
#ExEnd:1