use lib 'lib';
use strict;
use warnings;
use utf8;
use File::Slurp; # From CPAN
use JSON;

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

#Instantiate Aspose.OCR API SDK
my $ocrApi = AsposeOcrCloud::OcrApi->new();

#Set the image file name
my $name = 'Sampleocr.bmp';

#Set the language of the document
my $language = 'English';

#Set the spelling correction is used
my $useDefaultDictionaries = 'true';

#invoke Aspose.OCR Cloud SDK API to extract image text from local file                           
my $response = $ocrApi->PostOcrFromUrlOrContent(language=> $language, useDefaultDictionaries=>$useDefaultDictionaries, file => $data_path.$name);

if($response->{'Status'} eq 'OK'){
    print "\n Text :: " . $response->{'Text'};
    
    print "\n Extract OCR or HOCR Text from Images without using Storage, Done!";
	
}
#ExEnd:1