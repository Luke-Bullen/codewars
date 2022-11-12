// Instructions:

// Return the number (count) of vowels in the given string.

// We will consider a, e, i, o, u as vowels for this Kata (but not y).

// The input string will only consist of lower case letters and/or spaces.



// My Solution:

using System;
using System.Linq;

public static class Kata
{
    public static int GetVowelCount(string str)
    {
      return str.Count(i => "aeiou".Contains(i));
    }
}
