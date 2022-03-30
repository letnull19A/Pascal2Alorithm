using Pascal2Algorithm.Abstract;
using System.Collections.Generic;
using System.IO;
using Newtonsoft.Json.Linq;
using Newtonsoft.Json;

namespace Pascal2Algorithm
{
    public sealed class Pipeline<T> where T : AbstractTranslator
    {

        private T _translator;
        private Dictionary<string, string> instruction;
        private string _pathForPatterns = @".\Patterns\pascal.json";

        public Pipeline(T translator) 
        {
            _translator = translator;
        }

        public string Compile(string code)
        {
            string _patterns = File.ReadAllText(_pathForPatterns);

            // instruction = JsonConvert.DeserializeObject<Dictionary<string, string>>(_patterns);
            instruction = new Dictionary<string, string>();

            instruction.Add(@"  ", "\t");
            instruction.Add(@"^(program|Program)\s(?<program_name>((\w*)*(?=;)))", "алг ${program_name} (арг <__args__>)");
            instruction.Add(@"(for)\s(?<parametr>[^for\s])\s*(:=)\s*(?<start>[0-9a-zA-Z])\s*(to)\s(?<end>\d*[0-9a-zA-Z]).*[^begin].*(?<code>(\s*(\w|\W)*(?=end;))).*[^end;]", "нц для ${parametr} от ${start} до ${end} шаг 1${code}кц\n");
            instruction.Add(@"(if)\s(?<condition>(\(|(\w|\W)*)).?(?= then).*[^then].*[^begin]\w*(?<code>(\s*(\w|\W)*)).*[^end;]", "если ${condition} то\n${code}всё");
            instruction.Add(@"else", "иначе");
            instruction.Add(@"(Writeln)..(?<message>(.*(\w)))...", "вывод ${message}");

            _translator.Input(code);
            _translator.Translate(instruction);
            return _translator.Output();
        }

    }
}
