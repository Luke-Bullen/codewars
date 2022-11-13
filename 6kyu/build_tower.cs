// Instructions:

// Build a pyramid-shaped tower, as an array/list of strings, given a positive integer number of floors. A tower block is represented with "*" character.

// For example, a tower with 3 floors looks like this:

// [
//   "  *  ",
//   " *** ",
//   "*****"
// ]
// And a tower with 6 floors looks like this:

// [
//   "     *     ",
//   "    ***    ",
//   "   *****   ",
//   "  *******  ",
//   " ********* ",
//   "***********"
// ]

// My Solution:

public class Kata
{
  public static string[] TowerBuilder(int nFloors)
  {
    var result = new string[nFloors];
    for(int i=0;i<nFloors;i++)
      result[i] = string.Concat(new string(' ',nFloors - i - 1),
                                new string('*',i * 2 + 1),
                                new string(' ',nFloors - i - 1));
    return result;
  }
}
