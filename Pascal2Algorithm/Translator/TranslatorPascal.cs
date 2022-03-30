using Pascal2Algorithm.Abstract;
using System;
using System.Collections.Generic;
using System.Text.RegularExpressions;

namespace Pascal2Algorithm.Translator
{
    public class TranslatorPascal : AbstractTranslator
    {

        private string _code;

        public override void Input(string code)
        {
            if ((code.Length == 0) || (string.IsNullOrEmpty(code)))
                throw new Exception("Код пустой или содержит пустые строки!");

            _code = code;
        }

        public override void Translate(Dictionary<string, string> instructions)
        {
            foreach (var instruction in instructions)
            {
                string result = Regex.Replace(
                    _code,
                    instruction.Key,
                    instruction.Value,
                    RegexOptions.Multiline
                );
                _code = result;
            }
        }

        public override string Output() => _code;
    }
}
