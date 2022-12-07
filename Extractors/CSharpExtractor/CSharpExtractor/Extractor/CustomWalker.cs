using Microsoft.CodeAnalysis.CSharp;
using Microsoft.CodeAnalysis;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Extractor
{

    public class CustomWalker : CSharpSyntaxWalker
    {
        static int Tabs = 0;
        public StringBuilder astString=new StringBuilder();
        public override void Visit(SyntaxNode node)
        {
            Tabs++;
            var indents = new String('\t', Tabs);
            astString.Append(indents + node.Kind()+"\n");
            base.Visit(node);
            Tabs--;
        }
    }
}
