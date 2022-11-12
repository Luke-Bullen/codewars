// Instructions:

// Check to see if a string has the same amount of 'x's and 'o's. The method must return a boolean and be case insensitive. The string can contain any char.

// Examples input/output:

// XO("ooxx") => true
// XO("xooxx") => false
// XO("ooxXm") => true
// XO("zpzpzpp") => true // when no 'x' and 'o' is present should return true
// XO("zzoo") => false

// My Solution:

using System.Linq;
using System;
public static class Kata
{
  public static bool XO (string input)
  {
    string lower = input.ToLower();
    int xcount = lower.Count(i => "x".Contains(i));
    int ocount = lower.Count(i => "o".Contains(i));
    return (xcount == ocount);
  }
}

// Single line version:

return input.ToLower().Count(i => i == 'x') == input.ToLower().Count(i => i == 'o');
