// Instructions:

// Simple, remove the spaces from the string, then return the resultant string.

// My Solution:

namespace Solution
{
  public static class SpacesRemover
  {
    public static string NoSpace(string input)
    {
      string[] words = input.Split(' ');
      string final = "";
      foreach (string word in words){
        final += word;
      }
      return (final);
    }
  }
}
