using System;
using System.Collections.Generic;

namespace Pascal2Algorithm.Abstract
{
    public abstract class AbstractTranslator
    {
        public abstract void Input(string code);

        public abstract void Translate(Dictionary<string, string> instruction);

        public abstract string Output();
    }
}
