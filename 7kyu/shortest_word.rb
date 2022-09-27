# Instructions

# Simple, given a string of words, return the length of the shortest word(s).

# String will never be empty and you do not need to account for different data types.



# My Solution

def find_short(s)
  array = s.split
  sorted_array = array.sort_by(&:length)
  l = sorted_array[0].length
  return l # l: length of the shortest word
end

# split the string into an array of strings where each string is a word (eg: ["hello", "my", "name"])
# sorted this array by length - defaults shortest to longest
# selected index[0] of this sorted array and returned it's length
