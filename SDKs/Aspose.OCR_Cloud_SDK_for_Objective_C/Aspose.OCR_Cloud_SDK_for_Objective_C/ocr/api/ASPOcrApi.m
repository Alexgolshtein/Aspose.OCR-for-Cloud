#import "ASPOcrApi.h"
#import "ASPQueryParamCollection.h"
#import "ASPOCRResponse.h"


@interface ASPOcrApi ()
    @property (readwrite, nonatomic, strong) NSMutableDictionary *defaultHeaders;
@end

@implementation ASPOcrApi

#pragma mark - Initialize methods

- (id) init {
    self = [super init];
    if (self) {
        ASPConfiguration *config = [ASPConfiguration sharedConfig];
        if (config.apiClient == nil) {
            config.apiClient = [[ASPApiClient alloc] init];
        }
        self.apiClient = config.apiClient;
        self.defaultHeaders = [NSMutableDictionary dictionary];
    }
    return self;
}

- (id) initWithApiClient:(ASPApiClient *)apiClient {
    self = [super init];
    if (self) {
        self.apiClient = apiClient;
        self.defaultHeaders = [NSMutableDictionary dictionary];
    }
    return self;
}

#pragma mark -

+(ASPOcrApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key {
    static ASPOcrApi* singletonAPI = nil;

    if (singletonAPI == nil) {
        singletonAPI = [[ASPOcrApi alloc] init];
        [singletonAPI addHeader:headerValue forKey:key];
    }
    return singletonAPI;
}

-(void) addHeader:(NSString*)value forKey:(NSString*)key {
    [self.defaultHeaders setValue:value forKey:key];
}

-(void) setHeaderValue:(NSString*) value
           forKey:(NSString*)key {
    [self.defaultHeaders setValue:value forKey:key];
}

-(unsigned long) requestQueueSize {
    return [ASPApiClient requestQueueSize];
}

#pragma mark - Api Methods

///
/// Recognize image text from some url if provided or from the request body content, language can be selected, default dictionaries can be used for correction.
/// 
///  @param url The image file url.
///
///  @param language Language of the document.
///
///  @param useDefaultDictionaries Use default dictionaries for result correction.
///
///  @param file 
///
///  @returns ASPOCRResponse*
///
-(NSNumber*) postOcrFromUrlOrContentWithCompletionBlock: (NSString*) url
         language: (NSString*) language
         useDefaultDictionaries: (NSNumber*) useDefaultDictionaries
         file: (NSURL*) file
        
        completionHandler: (void (^)(ASPOCRResponse* output, NSError* error))completionBlock { 
        

    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/ocr/recognize"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(url != nil) {
        
        queryParams[@"url"] = url;
    }
    if(language != nil) {
        
        queryParams[@"language"] = language;
    }
    if(useDefaultDictionaries != nil) {
        
        queryParams[@"useDefaultDictionaries"] = useDefaultDictionaries;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[@"multipart/form-data"]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    
    files[@"file"] = file;
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"POST"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPOCRResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPOCRResponse*)data, error);
              }
          ];
}

///
/// Recognize image text, language and text region can be selected, default dictionaries can be used for correction.
/// 
///  @param name Name of the file to recognize.
///
///  @param language Language of the document.
///
///  @param rectX Top left point X coordinate of Rectangle to recognize text inside.
///
///  @param rectY Top left point Y coordinate of Rectangle to recognize text inside.
///
///  @param rectWidth Width of Rectangle to recognize text inside.
///
///  @param rectHeight Height of Rectangle to recognize text inside.
///
///  @param useDefaultDictionaries Use default dictionaries for result correction.
///
///  @param storage Image's storage.
///
///  @param folder Image's folder.
///
///  @returns ASPOCRResponse*
///
-(NSNumber*) getRecognizeDocumentWithCompletionBlock: (NSString*) name
         language: (NSString*) language
         rectX: (NSNumber*) rectX
         rectY: (NSNumber*) rectY
         rectWidth: (NSNumber*) rectWidth
         rectHeight: (NSNumber*) rectHeight
         useDefaultDictionaries: (NSNumber*) useDefaultDictionaries
         storage: (NSString*) storage
         folder: (NSString*) folder
        
        completionHandler: (void (^)(ASPOCRResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'name' is set
    if (name == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `name` when calling `getRecognizeDocument`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/ocr/{name}/recognize"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        pathParams[@"name"] = name;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(language != nil) {
        
        queryParams[@"language"] = language;
    }
    if(rectX != nil) {
        
        queryParams[@"rectX"] = rectX;
    }
    if(rectY != nil) {
        
        queryParams[@"rectY"] = rectY;
    }
    if(rectWidth != nil) {
        
        queryParams[@"rectWidth"] = rectWidth;
    }
    if(rectHeight != nil) {
        
        queryParams[@"rectHeight"] = rectHeight;
    }
    if(useDefaultDictionaries != nil) {
        
        queryParams[@"useDefaultDictionaries"] = useDefaultDictionaries;
    }
    if(storage != nil) {
        
        queryParams[@"storage"] = storage;
    }
    if(folder != nil) {
        
        queryParams[@"folder"] = folder;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [ASPApiClient selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"text/javascript"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [ASPApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"GET"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"ASPOCRResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((ASPOCRResponse*)data, error);
              }
          ];
}



@end
