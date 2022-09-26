# Your task is to make a function that can take any non-negative integer as an argument and return it with its digits in descending order. Essentially, rearrange the digits to create the highest possible number.

# Examples:
# Input: 42145 Output: 54421

# Input: 145263 Output: 654321

# Input: 123456789 Output: 987654321


# My solution

def descending_order(n)
  n.digits.sort.reverse.join.to_i
end

# splits the integer into an array of integers (eg: [6, 3, 9])
# sort the array (lowest to highest)
# reverse the array so it's now highest to lowest
# join the array together into a string
# convert the string back into an integer


# Old soltuion before learning about .digits


def descending_order(n)
  n.to_s.chars.sort.reverse.join.to_i
end

# puts the integer into a string,
# splits the string into an array of strings (each string being 1 integer, eg: ["1", "9", "7"])
# sort the array (lowest to highest)
# reverse the array so it's now highest to lowest
# join the array together into a string
# convert the string back into an integer
