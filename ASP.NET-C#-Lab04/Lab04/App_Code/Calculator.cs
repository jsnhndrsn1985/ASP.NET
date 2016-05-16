using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Calculator
/// </summary>
public class Calculator
{
    public double Add(double a, double b)
    {
        return a + b;
    }

    public double Subtract(double a, double b)
    {
        return a - b;
    }

    public double Multiply(double a, double b)
    {
        return a * b;
    }

    public double Divide(double a, double b)
    {
        return a / b;
    }

    public double Mod(double a, double b)
    {
        return a % b;
    }

    public List<String> GetOperators() {

        List<string> Operators = new List<String>();

        Operators.Add("+");
        Operators.Add("-");
        Operators.Add("*");
        Operators.Add("/");
        Operators.Add("Mod");

        return Operators;


    }

    /// <summary>
    /// Performs the calculation identified by the oper argument.
    /// </summary>
    /// <param name="oper">The operation to perform "+", "-", etc.</param>
    /// <param name="value1">The first value in the calculation.</param>
    /// <param name="value2">The second value in the calculation</param>
    /// <returns>The result of the calculation.</returns>
    public double Calc(string oper, double value1, double value2)
    {
        double result = 0;

        switch (oper)
        {
            case "+":
                result = Add(value1, value2);
                break;

            case "-":
                result = Subtract(value1, value2);
                break;

            case "*":
                result = Multiply(value1, value2);
                break;

            case "/":
                result = Divide(value1, value2);
                break;

            case "Mod":
                result = Mod(value1, value2);
                break;

            default:
                result = double.MinValue;
                break;
        }
        return result;
    }
}



