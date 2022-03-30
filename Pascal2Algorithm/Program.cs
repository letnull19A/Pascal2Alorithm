using System;
using Pascal2Algorithm.Translator;
using Pascal2Algorithm.Abstract;
using System.IO;
using System.Collections.Generic;
using System.Threading;

namespace Pascal2Algorithm
{
    public class Program
    {
        private static Pipeline<TranslatorPascal> pipeline = new Pipeline<TranslatorPascal>(new TranslatorPascal());
        private static string _pathCode = @".\Code\";
        private static string _pathOut = @".\Out\";

        public static void Main(string[] args)
        {

            DisplayMessage();

            if (!Directory.Exists(_pathCode)) 
            {
                Console.WriteLine($"Директории {_pathCode} небыло... пришлось её создать у тебя на компьютере =)");
                Directory.CreateDirectory(_pathCode);
            }

            string[] _files = Directory.GetFiles(_pathCode);

            Console.WriteLine($"Найдено: {_files.Length} файлов");

            foreach (string _file in _files)
            {
                string result = "";
                result = pipeline.Compile(File.ReadAllText(_file));

                if (!Directory.Exists(_pathOut)) 
                {
                    Directory.CreateDirectory(_pathOut);
                }

                File.WriteAllText(_pathOut + DateTime.Now.Year + "_" + DateTime.Now.Month + "_" + DateTime.Now.Day + "_" + DateTime.Now.Hour + "_" + DateTime.Now.Minute + "_" + DateTime.Now.Second + "_" + DateTime.Now.Millisecond + ".txt", result);
                Console.WriteLine($"Переведён +1 файл");
                Thread.Sleep(10000);
            }

            Console.WriteLine("Готово!");
            Console.ReadKey();

        }

        private static void DisplayMessage() 
        {
            string message = $"╔════════════════════════════════════════════╗\n║	                                     ║\n║   Привет, это конвертор из языка Паскаля   ║\n║   в алгоритмический                        ║\n║                                            ║\n╠════════════════════════════════════════════╣\n║                                            ║\n║   Дополнительные ссылки:                   ║\n║   vk: vk.com/letnull19A                    ║\n║   githib: https://github.com/letnull19A    ║\n║                                            ║\n╠════════════════════════════════════════════╣\n║   Версия                                   ║\n╚════════════════════════════════════════════╝";

            Console.WriteLine(message);
        } 
    }
}
