//
//  RecognizeText.h
//  Aspose.OCR
//
//  Created by Muhammad Sohail Ismail on 13/03/2017.
//  Copyright © 2017 Aspose. All rights reserved.
//

#import <Foundation/Foundation.h>
@class ASPOcrApi;

@interface RecognizeText : NSObject

@property(nonatomic, strong) ASPOcrApi *ocrApi;

- (void)recognizeImageTextFromURL;
- (void)recognizeImageTextFromTheRequestBody;

@end
