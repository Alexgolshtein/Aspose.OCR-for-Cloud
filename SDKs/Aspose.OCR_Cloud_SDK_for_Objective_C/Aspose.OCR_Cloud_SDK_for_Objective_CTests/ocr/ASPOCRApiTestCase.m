//
//  ASPOCRApiTestCase.m
//  Aspose.OCR_Cloud_SDK_For_ObjectiveC
//
//  Created by Muhammad Sohail Ismail on 24/11/2015.
//  Copyright © 2015 Aspose. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "ASPOcrApi.h"
#import "ASPStorageApi.h"
#import "AppDelegate.h"

@interface ASPOCRApiTestCase : XCTestCase
@property(nonatomic, strong) ASPOcrApi *ocrApi;
@end

@implementation ASPOCRApiTestCase

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
    self.ocrApi = [[ASPOcrApi alloc] init];
    //Get App key and App SID from https://cloud.aspose.com
    [ASPApiClient setAppKey:ASPAppKey andAppSID:ASPAppSID];
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)uploadFile:(NSString *) fileName {
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    ASPStorageApi *storageApi = [[ASPStorageApi alloc] init];
    
    NSURL *pathToFile = [[NSBundle mainBundle] URLForResource:[fileName stringByDeletingPathExtension] withExtension:[fileName pathExtension]];
    [storageApi putCreateWithCompletionBlock:fileName
                                        file:pathToFile
                                   versionId:nil
                                     storage:nil
                           completionHandler:^(ASPBaseResponse *output, NSError *error) {
                               XCTAssertNotNil(output, @"Failed to upload a specific file.");
                               [expectation fulfill];
                           }];
    
    [self waitForExpectationsWithTimeout:180.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testPostOcrFromUrlOrContent {
    
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    NSURL *pathToFile = [[NSBundle mainBundle] URLForResource:@"Sampleocr" withExtension:@"bmp"];
    
    [self.ocrApi postOcrFromUrlOrContentWithCompletionBlock:nil
                                                   language:@"English"
                                     useDefaultDictionaries:nil
                                                       file:pathToFile
                                          completionHandler:^(ASPOCRResponse *output, NSError *error) {
                                             XCTAssertNotNil(output, @"Failed to recognize image text from some url if provided or from the request body content.");
                                             [expectation fulfill];
    }];
    
    [self waitForExpectationsWithTimeout:180.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

- (void)testGetRecognizeDocument {
    
    NSString *fileName = @"Sampleocr.bmp";
    [self uploadFile:fileName];
    
    XCTestExpectation *expectation = [self expectationWithDescription:@""];
    
    [self.ocrApi getRecognizeDocumentWithCompletionBlock:fileName
                                                language:nil
                                                   rectX:nil
                                                   rectY:nil
                                               rectWidth:nil
                                              rectHeight:nil
                                  useDefaultDictionaries:nil
                                                 storage:nil
                                                  folder:nil
                                       completionHandler:^(ASPOCRResponse *output, NSError *error) {
                                           XCTAssertNotNil(output, @"Failed to recognize image text.");
                                           [expectation fulfill];
    }];
    
    [self waitForExpectationsWithTimeout:180.0 handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

@end
