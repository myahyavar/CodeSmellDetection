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
        List<int> mainSmellLines = new List<int> { 7 };
        public StringBuilder astString = new StringBuilder();
        public override void Visit(SyntaxNode node)
        {
            int lineNumber = node.GetLocation().GetLineSpan().StartLinePosition.Line;
            int lineNumberEnd = node.GetLocation().GetLineSpan().EndLinePosition.Line;

            Tabs++;
            var indents = new String('\t', Tabs);


            //astString.Append(indents + lineNumber.ToString() + " " + node.Kind() + "\n");

            if (mainSmellLines.Contains(lineNumber))
            {
                if (lineNumber != lineNumberEnd && !mainSmellLines.Contains(lineNumberEnd))
                {
                    for (int i = lineNumber; i <= lineNumberEnd; i++)
                    {
                        mainSmellLines.Add(i);
                    }
                }
                astString.Append(indents + lineNumber.ToString() + " " + node.Kind() + "\n");
            }

            base.Visit(node);
            Tabs--;
        }
    }
}
