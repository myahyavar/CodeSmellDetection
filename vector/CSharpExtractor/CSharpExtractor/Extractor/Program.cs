using CommandLine;
using CommandLine.Text;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;

namespace Extractor
{
    class Program
    {
        static List<String> ExtractSingleFile(string filename, Options opts)
        {
            string data = File.ReadAllText(filename);
            var extractor = new Extractor(data, opts);
            List<String> result = extractor.Extract();
            return result;
        }

        static void Main(string[] args)
        {
            Options options = new Options();
            Parser.Default.ParseArguments<Options>(args)
                .WithParsed(opt => options = opt)
                .WithNotParsed(errors =>
                {
                    Console.WriteLine(errors);
                    return;
                });
            Console.WriteLine("1");
            string path = "C:/Users/YAHYA/Desktop/Software_Stuff/LSTM/DeepLearningPractice/vector/CSharpExtractor/CSharpExtractor/Extractor/data/";
            string[] files;
            if (Directory.Exists(path))
            {
                files = Directory.GetFiles(path, "*.cs", SearchOption.TopDirectoryOnly);
                Console.WriteLine("*******************************************************************************************");

            }
            else
            {
                files = new string[] { path };
            }

            IEnumerable<string> results = null;
            results = files.AsParallel().WithDegreeOfParallelism(options.Threads).SelectMany(filename => ExtractSingleFile(filename, options));
            using (StreamWriter sw = new StreamWriter(options.OFileName, append: true))
            {
                foreach (var res in results)
                {
                    sw.WriteLine(res);
                    Console.WriteLine(res);
                }
            }
        }
    }
}
