using System;
using System.IO;
using System.Text;
using System.Text.RegularExpressions;
using System.Collections.Generic;

namespace Pascal2Algorithm
{
    public class Program
    {
        private static string _path = "";
        private static string _code = "";
        private static string _algorithm = "/* Noop */";
        private static string _pathOut = ".\\Out\\";

        static void Main(string[] args)
        {

#if DEBUG
            Console.WriteLine("[Отладка] Отладочная версия");
            _path = "./Test/Program134.pas";
#endif

            Console.WriteLine("### Введите путь до файла: (*.pas)");

#if !DEBUG
            _path = Console.ReadLine();
#endif

            try
            {
                if (string.IsNullOrEmpty(_path))
                    throw new Exception("Пустой путь к файлу!");

                _code = File.ReadAllText(_path);

#if DEBUG
                Console.WriteLine("\n### Исходный код:\n");
                Console.WriteLine(_code);
#endif

                Console.WriteLine("### Чтение завершено успешно!");
                
                _algorithm = Pascal2Algorithm(ref _code);

#if DEBUG
                Console.WriteLine("\n### Код на алгоритмическом языке\n");
                Console.WriteLine(_algorithm);
#endif

                SaveAlgorithm(_algorithm);

            }
            catch (Exception ex)
            {
                Console.WriteLine($"[Ошибка] {ex.Message}");
            }
        }

        public static void SaveAlgorithm(string algorithm)
        {
            string _tempPath = _pathOut + DateTime.Now.Year + "_" + DateTime.Now.Month + "_" + DateTime.Now.Day + "_" + DateTime.Now.Hour + "_" + DateTime.Now.Minute + "_" + DateTime.Now.Second + ".txt";

            Console.WriteLine(_tempPath);

            if (!Directory.Exists(_pathOut))
                Directory.CreateDirectory(_pathOut);


            File.WriteAllText(_tempPath, algorithm, Encoding.Default);

            Console.WriteLine("\n### Запись завершена успешно!");
        }

        public static string Pascal2Algorithm(ref string code)
        {
            string result = code;
            string programName = "Default";
            string programArgs = "";

            string[] _strings = code.Split(' ', '\t', '\n');

            programName = FindProgramName(_strings);
            programArgs = NormalizeArgs(FindArgs(code));
            

            StringBuilder stringBuilder = new StringBuilder(code);

            string _old = $"program {programName}";
            string _new = string.Concat("алг ", programName, " (арг ", programArgs, ")");

            stringBuilder.Replace(_old, _new);

            RenameWords(stringBuilder);
            
            result = stringBuilder.ToString();
            
            result = RemoveVariables(result);
            result = NormalizeCaseBlock(result);

            return result;
        }

        private static StringBuilder RenameWords(StringBuilder stringBuilder)
        {
            Dictionary<string, string> patterns = new Dictionary<string, string>();

            patterns.Add(@"integer", "цел");
            patterns.Add(@"real", "вещ");
            patterns.Add(@"char", "сим");
            patterns.Add(@"string", "лит");
            patterns.Add(@"boolean", "лог");
            patterns.Add(@";", "");
            patterns.Add(@"begin", "нач");
            patterns.Add(@"end\.", "кон");
            patterns.Add(@"end", "всё");
            patterns.Add(@"Writeln", "Вывод ");
            patterns.Add(@"Readln", "Ввод ");
            patterns.Add(@"\(|\'|\)", "");
            patterns.Add(@"if", "если");
            patterns.Add(@"then", "\n  то");
            patterns.Add(@"else", "иначе");
            // patterns.Add(@"var", "");
            patterns.Add(@"case", "выбор");
            patterns.Add(@"of", "");

            foreach (var item in patterns)
            {
                stringBuilder.Replace(item.Key, item.Value);
            }

            return stringBuilder;
        }

        private static string FindArgs(string strings) 
        {
            string result = "";

            result = strings.Substring(
                strings.IndexOf("var"),
                (strings.IndexOf("begin") - strings.IndexOf("var"))
                );

            result = result
                .Replace("var", "")
                .Replace("begin", "")
                .Replace("\t", "")
                .Replace("\n", "")
                .Replace(" ", "");

            return result;
        }

        private static string NormalizeArgs(string programArguments) 
        {
            string result = "";

            string[] buffer = programArguments.Split(':');

            for (int i = 0; i < buffer.Length - 1; i++) 
            {
                result += buffer[i] + " " + buffer[i + 1] + " ";
            }

            return result;
        }

        private static string RemoveVariables(string code) 
        {
            string result = "";

            result = code.Remove(code.IndexOf("var"), (code.IndexOf("нач") - code.IndexOf("var")));

            return result;
        }

        private static string FindProgramName(string[] strings)
        {
            string result = "";
            int programNameIndex = -1;

            foreach (string s in strings)
            {

                programNameIndex++;

                if (s == "program")
                    break;

            }

            result = strings[programNameIndex + 1];

            result = Regex.Replace(result, @";|\n|\t|\s", "");

            return result;
        }

        private static string NormalizeCaseBlock(string code) 
        {
            string result = "";

            result = code;

            return result;
        }
    }
}
