using System;
using System.Text;
using System.Collections;
using System.Collections.Generic;

namespace Com.Aspose.OCR.Model {
  public class OCRResponse {
    public string Text { get; set; }

    public PartsInfo PartsInfo { get; set; }

    public PagesInfo PagesInfo { get; set; }

    public string Code { get; set; }

    public string Status { get; set; }

    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class OCRResponse {\n");
      sb.Append("  Text: ").Append(Text).Append("\n");
      sb.Append("  PartsInfo: ").Append(PartsInfo).Append("\n");
      sb.Append("  PagesInfo: ").Append(PagesInfo).Append("\n");
      sb.Append("  Code: ").Append(Code).Append("\n");
      sb.Append("  Status: ").Append(Status).Append("\n");
      sb.Append("}\n");
      return sb.ToString();
    }
  }
  }
