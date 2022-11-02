using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Extractor
{
    internal class Class1
    {
        void f(int[] array)
        {
            bool swapped = true;
            for (int i = 0; i < array.Length && swapped; i++)
            {
                smellline(i);
                swapped = false;
                smellline(i);
                for (int j = 0; j < array.Length - 1 - i; j++)
                {
                    if (array[j] > array[j + 1])
                    {
                        int temp = array[j];
                        array[j] = array[j + 1];
                        //start___comment
                        array[j + 1] = temp;
                        //end___comment
                        swapped = true;
                    }
                }
            }
        }

        void smellline(int i)
        {

        }
    }
}
