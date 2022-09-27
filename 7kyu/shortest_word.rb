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
