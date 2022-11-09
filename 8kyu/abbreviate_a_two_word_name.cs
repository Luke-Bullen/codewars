// Instructions:

// Write a function to convert a name into initials. This kata strictly takes two words with one space in between them.

// The output should be two capital letters with a dot separating them.

// It should look like this:

// Sam Harris => S.H

// patrick feeney => P.F

// My Solution:

public class Kata
{
  public static string AbbrevName(string name)
  {
    string[] words = name.Split(' ');
    return (words[0][0] + "." + words[1][0]).ToUpper();
  }
}


// Another clever solution
using System;
using System.Linq;
public class Kata
{
       public static string AbbrevName(string name) => string.Join(".", name.Split(' ').Select(w => w[0])).ToUpper();
}
