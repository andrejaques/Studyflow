using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace curso.api.Models
{
    public class ValidaCampoViewModelOutPut
    {
        public IEnumerable<string> Erros { get; private set; }

        public ValidaCampoViewModelOutPut(IEnumerable<string> erros)
        {
            Erros = erros;
        }
    }
}
