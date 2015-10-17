package com.aspose.ocr.cloud.examples;

import com.aspose.ocr.model.OCRResponse;

import java.io.IOException;
import java.nio.file.Path;

public class ExtractTextFromSpecificBlock {
    public static void main(String... args) throws IOException {
        String input = "Sample3.bmp";
        Path inputFile = Utils.getPath(ExtractTextFromSpecificBlock.class, input);

        String language = "english";
        int rectX = 10;
        int rectY = 10;
        int rectWidth = 600;
        int rectHeight = 400;
        boolean useDefaultDictionaries = true;

        Utils.getStorageSdk().PutCreate(
                input,
                null,
                Utils.STORAGE,
                inputFile.toFile()
        );

        OCRResponse r = Utils.getOcrSdk().GetRecognizeDocument(
                input,
                language,
                rectX,
                rectY,
                rectWidth,
                rectHeight,
                useDefaultDictionaries,
                Utils.STORAGE,
                Utils.FOLDER
        );

        System.out.println(r.getText());
    }
}

