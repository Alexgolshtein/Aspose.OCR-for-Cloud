use lib 'lib';
use strict;
use warnings;
use utf8;
use File::Slurp; # From CPAN
use JSON;

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

# Instantiate Aspose.OCR API SDK
my $ocrApi = AsposeOcrCloud::OcrApi->new();

# Set the image file url
my $url = "https://dl.dropboxusercontent.com/s/zj35mqdouoxy3rs/Sampleocr.bmp";

# Set the language of the document
my $language = 'English';

# Set the spelling correction is used
my $useDefaultDictionaries = 'true';

# Invoke Aspose.OCR Cloud SDK API to extract image text from local file                           
my $response = $ocrApi->PostOcrFromUrlOrContent(url=> $url, language=> $language, useDefaultDictionaries=>$useDefaultDictionaries);

if($response->{'Status'} eq 'OK'){
    print "\n Text :: " . $response->{'Text'};
    
    print "\n Extract OCR or HOCR Text from image url, Done!";
	
}
#ExEnd:1