package com.aspose.ocr.cloud.examples;

import java.io.IOException;
import com.aspose.ocr.model.OCRResponse;

public class ExtractTextFromImageUrl {
    public static void main(String... args) throws IOException {
        String url = "http://cdn.aspose.com/tmp/ocr-sample.bmp";
        String language = "english";
        boolean useDefaultDictionaries = true;

        OCRResponse r = Utils.getOcrSdk().PostOcrFromUrlOrContent(
                url,
                language,
                useDefaultDictionaries,
                null
        );

        System.out.println(r.getText());
    }
}

