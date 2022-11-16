// Instructions:

// Complete the solution so that the function will break up camel casing, using a space between words.

// Example
// "camelCasing"  =>  "camel Casing"
// "identifier"   =>  "identifier"
// ""             =>  ""

// My Solution:

using System;
using System.Linq;

public class Kata
{
  public static string BreakCamelCase(string str)
  {
    return(string.Concat(str.Select(s => Char.IsUpper(s) ? " " + s : s.ToString())));
  }
}
