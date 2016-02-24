exports.models = {
  "HttpStatusCode": {
  "id" : "HttpStatusCode"
},"TextEffect": {
  "id" : "TextEffect"
},"PageBorderAppliesTo": {
  "id" : "PageBorderAppliesTo"
},"OCRResponse": {
  "properties" : {
    "Text" : {
      "type" : "string"
    },
    "PartsInfo" : {
      "$ref" : "PartsInfo"
    },
    "PagesInfo" : {
      "$ref" : "PagesInfo"
    },
    "Code" : {
      "type" : "string"
    },
    "Status" : {
      "type" : "string"
    }
  },
  "id" : "OCRResponse"
},"Orientation": {
  "id" : "Orientation"
},"PagesInfo": {
  "id" : "PagesInfo"
},"PageVerticalAlignment": {
  "id" : "PageVerticalAlignment"
},"NumberStyle": {
  "id" : "NumberStyle"
},"PartsInfo": {
  "id" : "PartsInfo"
},"StyleIdentifier": {
  "id" : "StyleIdentifier"
},"PageBorderDistanceFrom": {
  "id" : "PageBorderDistanceFrom"
},"LineNumberRestartMode": {
  "id" : "LineNumberRestartMode"
},"PaperSize": {
  "id" : "PaperSize"
},"ReportType": {
  "id" : "ReportType"
},"Underline": {
  "id" : "Underline"
},"SectionStart": {
  "id" : "SectionStart"
},"HttpResponseMessage": {
  "properties" : {
    "Content" : {
      "type" : "string"
    },
    "Headers" : {
      "type" : "string"
    },
    "IsSuccessStatusCode" : {
      "$ref" : "bool"
    },
    "ReasonPhrase" : {
      "type" : "string"
    },
    "RequestMessage" : {
      "type" : "string"
    },
    "StatusCode" : {
      "type" : "string"
    },
    "Version" : {
      "type" : "string"
    }
  },
  "id" : "HttpResponseMessage"
}
}