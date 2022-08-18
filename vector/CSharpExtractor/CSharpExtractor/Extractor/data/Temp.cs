
using System;

class Program
{
    public static void PrintIndexAndValues(Array myArray)
    {
        for (int i = myArray.GetLowerBound(0); i <= myArray.GetUpperBound(0); i++)
            Console.WriteLine("\t[{0}]:\t{1}", i, myArray.GetValue(i));
    }
}
