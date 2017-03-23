//
//  ExtractText.m
//  Aspose.OCR
//
//  Created by Muhammad Sohail Ismail on 13/03/2017.
//  Copyright © 2017 Aspose. All rights reserved.
//

#import "ExtractText.h"
#import "ASPOcrApi.h"
#import "Utils.h"

@implementation ExtractText

- (id)init {
    self = [super init];
    
    self.ocrApi = [[ASPOcrApi alloc] init];
    
    return self;
}

- (void)extractTextFromImages {
//ExStart:ExtractTextFromImages
    NSString *fileName = @"Sampleocr.bmp";
    [Utils uploadFile:fileName];
    
    [self.ocrApi getRecognizeDocumentWithCompletionBlock:fileName
                                                language:@"English"
                                                   rectX:nil
                                                   rectY:nil
                                               rectWidth:nil
                                              rectHeight:nil
                                  useDefaultDictionaries:nil
                                                 storage:nil
                                                  folder:nil
                                       completionHandler:^(ASPOCRResponse *output, NSError *error) {
                                           NSLog(@"%@", output);
                                       }];
//ExEnd:ExtractTextFromImages
}

- (void)extractOCROrHOCRTextFromASpecificBlock {
//ExStart:ExtractOCROrHOCRTextFromASpecificBlock
    NSString *fileName = @"Sampleocr.bmp";
    [Utils uploadFile:fileName];
    
    [self.ocrApi getRecognizeDocumentWithCompletionBlock:fileName
                                                language:@"English"
                                                   rectX:[NSNumber numberWithInt:150]
                                                   rectY:[NSNumber numberWithInt:150]
                                               rectWidth:[NSNumber numberWithInt:1000]
                                              rectHeight:[NSNumber numberWithInt:300]
                                  useDefaultDictionaries:[NSNumber numberWithBool:YES]
                                                 storage:nil
                                                  folder:nil
                                       completionHandler:^(ASPOCRResponse *output, NSError *error) {
                                           NSLog(@"%@", output);
                                       }];
//ExEnd:ExtractOCROrHOCRTextFromASpecificBlock
}

@end

