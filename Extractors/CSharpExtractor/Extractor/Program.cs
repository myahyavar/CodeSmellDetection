using CommandLine;
using CsvHelper;
using System;
using System.Collections.Generic;
using System.Globalization;
using System.IO;
using System.Linq;
using System.Text;

namespace Extractor
{
    class Program
    {
        static List<String> ExtractWhole(string filename, Options opts)
        {
            string data = File.ReadAllText(filename);
            var extractor = new Extractor(data, opts);
            List<String> result = extractor.ExtractWithWalker(false);
            return result;
        }
        static List<String> ExtractSmell(string filename, Options opts)
        {
            string data = File.ReadAllText(filename);
            var extractor = new Extractor(data, opts);
            List<String> result = extractor.ExtractWithWalker(true);
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
            string path = @"C:/Users/YAHYA/Desktop/Software_Stuff/LSTM/DeepLearningPractice/Extractors/CSharpExtractor/Extractor/data/";
            string[] files;
            if (Directory.Exists(path))
            {
                files = Directory.GetFiles(path, "*.cs", SearchOption.TopDirectoryOnly);
                Console.WriteLine("Parse Successfull");
            }
            else
            {
                files = new string[] { path };
            }

            IEnumerable<string> wholeCode = null;
            IEnumerable<string> smells = null;
            wholeCode = files.AsParallel().WithDegreeOfParallelism(options.Threads).SelectMany(filename => ExtractWhole(filename, options));
            smells = files.AsParallel().WithDegreeOfParallelism(options.Threads).SelectMany(filename => ExtractSmell(filename, options));
            using (StreamWriter sw = new StreamWriter("C:/Users/YAHYA/Desktop/Software_Stuff/LSTM/DeepLearningPractice/astnn-master/data/results.csv", append: false))
            {
                foreach (var res in wholeCode)
                {
                    sw.WriteLine(res);

                }
            }
            using (var writer = new StreamWriter("codes.csv"))
            using (var csvw = new CsvWriter(writer, CultureInfo.InvariantCulture))
            {
                var whole = new StringBuilder();

                foreach (var res in wholeCode)
                {
                    var code = res.ToString();
                    writer.Write(code);
                    whole.AppendLine(code);
                }
                //csvw.WriteField(whole);
                //writer.Write(whole);
            }
            using (var writer = new StreamWriter("smells.csv"))
            using (var csvw = new CsvWriter(writer, CultureInfo.InvariantCulture)){
                var smell = new StringBuilder();
                foreach (var res in smells)
                {
                    var code = res.ToString();
                    smell.AppendLine(code);
                }
                csvw.WriteField(smell);
            }
        }
    }
}
