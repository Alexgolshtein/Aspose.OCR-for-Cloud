using System;
using System.IO;
using Aspose.Cloud;

namespace Aspose.OCR.Cloud.Examples
{
    class Common
    {
        public static string APP_SID = null;
        public static string APP_KEY = null;

        public static string STORAGE = null;
        public static string FOLDER = null;

        public static string GetDataDir(Type t)
        {
            string c = t.FullName;
            c = c.Replace("Aspose.OCR.Cloud.Examples.", "");
            c = c.Replace('.', Path.DirectorySeparatorChar);
            string p = Path.GetFullPath(Path.Combine(Directory.GetCurrentDirectory(), "..", "..", "..", "Data", c));
            p += Path.DirectorySeparatorChar;
            Console.WriteLine("Using Data Dir {0}", p);
            return p;
        }

        
        public static StorageService StorageService
        {
            get
            {
                if (string.IsNullOrEmpty(APP_SID) || string.IsNullOrEmpty(APP_KEY))
                {
                    throw new Exception("APP_SID and APP_KEY must be valid");
                }

                StorageService s = new StorageService(APP_SID, APP_KEY);
                return s;
            }
        }

        public static OCRService OCRService
        {
            get
            {
                if (string.IsNullOrEmpty(APP_SID) || string.IsNullOrEmpty(APP_KEY))
                {
                    throw new Exception("APP_SID and APP_KEY must be valid");
                }

                OCRService s = new OCRService(APP_SID, APP_KEY);
                return s;
            }
        }

        static void Main()
        {
            Console.WriteLine("Change the 'Startup Object' in 'Project Properties' to run an example");
        }

        public static void Pause()
        {
            Console.WriteLine("Press any key to continue...");
            Console.ReadKey();
        }
    }
}
