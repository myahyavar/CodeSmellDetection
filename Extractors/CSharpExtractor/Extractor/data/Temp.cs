using System;
class Program
{
    int num = 34;
    AppDomain domain;
    String name = "ahmet";
    public static void PrintIndexAndValues(Array myArray)
    {
        for (int i = myArray.GetLowerBound(0); i <= myArray.GetUpperBound(0); i++)
            Console.WriteLine("\t[{0}]:\t{1}", i, myArray.GetValue(i));
    }

    static void PrintingNames()
    {
        Console.Write("My name is ");
        Console.Write("Tod Vachev and I am ");
        Console.Write("learning C#\n");
    }
    static void ColorfulWriteLine(string text, ConsoleColor color)
    {
        Console.ForegroundColor = color;
        Console.WriteLine(text);
        Console.ResetColor();
    }

    static void PrintingNames(string firstName, string secondName)
    {
        Console.WriteLine($"My name is {firstName} {secondName}");
    }

    static int[] SortThreeNumbers(int a, int b, int c)
    {
        int[] sortedIntegers = new int[3];

        if ((a < b) && (a < c))
        {
            sortedIntegers[0] = a;

            if (b < c) // c > b > a
            {
                sortedIntegers[1] = b;
                sortedIntegers[2] = c;
            }
            else // b > c > a
            {
                sortedIntegers[1] = c;
                sortedIntegers[2] = b;
            }
        }
        else if ((b < a) && (b < c))
        {
            sortedIntegers[0] = b;

            if (a < c) // c > a > b
            {
                sortedIntegers[1] = a;
                sortedIntegers[2] = c;
            }
            else // a > c > b
            {
                sortedIntegers[1] = c;
                sortedIntegers[2] = a;
            }
        }
        else if ((c < a) && (c < b))
        {
            sortedIntegers[0] = c;

            if (a < b) // a > b > c
            {
                sortedIntegers[1] = a;
                sortedIntegers[2] = b;
            }
            else // b > a > c
            {
                sortedIntegers[1] = b;
                sortedIntegers[2] = a;
            }
        }

        return sortedIntegers;
    }

    static int Addition(int firstNumber, int secondNumber)
    {
        int result = firstNumber + secondNumber;

        return result;
    }

    static double Area(double side)
    {
        return side * side;
    }

    static double Area(double sideA, double sideB)
    {
        return sideA * sideB;
    }

    static double Area(double sideA, double sideB, double sideC)
    {
        double s = Sum(sideA, sideB, sideC) / 2;
        double area = Math.Sqrt(s * (s - sideA) * (s - sideB) * (s - sideC));

        return area;
    }

    static void PrintNames(string firstName, string lastName)
    {
        Console.WriteLine($"My name is {firstName} {lastName}.");
    }

    static void PrintNames(string firstName, string middleName, string lastName)
    {
        Console.WriteLine($"My name is {firstName} {middleName} {lastName}.");
    }

    static void PrintNames(string firstName, string lastName, ConsoleColor color)
    {
        Console.ForegroundColor = color;
        Console.WriteLine($"My name is {firstName} {lastName}.");
        Console.ResetColor();
    }

    static int Sum(int firstNumber, int secondNumber)
    {
        return firstNumber + secondNumber;
    }

    static double Sum(double firstNumber, double secondNumber, double thirdNumber)
    {
        return firstNumber + secondNumber + thirdNumber;
    }

    static int Sum(int firstNumber, int secondNumber, int thirdNumber, int fourthNumber)
    {
        return firstNumber + secondNumber + thirdNumber + fourthNumber;
    }

    static void WriteLinePlaceholders(string text, params string[] variables)
    {
        string newText = string.Empty;
        int placeholderIndex = 0;

        for (int i = 0; i < text.Length; i++)
        {
            if (text[i].ToString() == "[")
            {
                placeholderIndex = int.Parse(text[i + 1].ToString());
                newText += variables[placeholderIndex];
                i += 2;
            }
            else
            {
                newText += text[i];
            }
        }

        Console.WriteLine(newText);
    }

    static int Perimeter(params int[] numbers)
    {
        int sum = 0;

        for (int i = 0; i < numbers.Length; i++)
        {
            sum += numbers[i];
        }

        return sum;
    }

    static int Sum(int firstNumber, int secondNumber, int thirdNumber = 0)
    {
        return firstNumber + secondNumber + thirdNumber;
    }

    static int Multi(int firstNumber, int secondNumber, int thirdNumber = 1)
    {
        return firstNumber * secondNumber * thirdNumber;
    }

    static void ConnectToDB(string username, string password, string ipAddress = "127.0.0.1")
    {
        Console.WriteLine($"Hello {username}, connecting to {ipAddress}, please wait ...");
    }
    static void ModifyArray(int intValue)
    {
        intValue++;
    }
    static void AreaAndPerimeterOfRectangle(double sideA, double sideB, out double area, out double perimeter)
    {
        area = sideA * sideB;
        perimeter = 2 * sideA + 2 * sideB;
    }
}
