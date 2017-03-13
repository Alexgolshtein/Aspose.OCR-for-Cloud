//
//  RecognizeText.m
//  Aspose.OCR
//
//  Created by Muhammad Sohail Ismail on 13/03/2017.
//  Copyright © 2017 Aspose. All rights reserved.
//

#import "RecognizeText.h"
#import "ASPOcrApi.h"
#import "Utils.h"

@implementation RecognizeText

- (id)init {
    self = [super init];
    
    self.ocrApi = [[ASPOcrApi alloc] init];
    
    return self;
}

- (void)recognizeImageTextFromURL {
    
    //Set the image file url
    NSString *url = @"https://dl.dropboxusercontent.com/s/zj35mqdouoxy3rs/Sampleocr.bmp";
    
    [self.ocrApi postOcrFromUrlOrContentWithCompletionBlock:url
                                                   language:@"English"
                                     useDefaultDictionaries:[NSNumber numberWithBool:YES]
                                                       file:nil
                                          completionHandler:^(ASPOCRResponse *output, NSError *error) {
                                              NSLog(@"%@", output);
                                          }];
}

- (void)recognizeImageTextFromTheRequestBody {
    
    NSURL *pathToFile = [[NSBundle mainBundle] URLForResource:@"Sampleocr" withExtension:@"bmp"];
    
    [self.ocrApi postOcrFromUrlOrContentWithCompletionBlock:nil
                                                   language:@"English"
                                     useDefaultDictionaries:[NSNumber numberWithBool:YES]
                                                       file:pathToFile
                                          completionHandler:^(ASPOCRResponse *output, NSError *error) {
                                              NSLog(@"%@", output);
                                          }];
}


@end
