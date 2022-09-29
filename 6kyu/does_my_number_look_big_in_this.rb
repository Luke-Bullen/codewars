# Instructions

# A Narcissistic Number is a positive number which is the sum of its own digits, each raised to the power of the number of digits in a given base. In this Kata, we will restrict ourselves to decimal (base 10).

# For example, take 153 (3 digits), which is narcisstic:

#     1^3 + 5^3 + 3^3 = 1 + 125 + 27 = 153
# and 1652 (4 digits), which isn't:

#     1^4 + 6^4 + 5^4 + 2^4 = 1 + 1296 + 625 + 16 = 1938
# The Challenge:

# Your code must return true or false (not 'true' and 'false') depending upon whether the given number is a Narcissistic number in base 10. This may be True and False in your language, e.g. PHP.

# Error checking for text strings or other invalid inputs is not required, only valid positive non-zero integers will be passed into the function.



# My Solution

def narcissistic?(value)
  array = []
  value_array = value.digits
  value_array.each do |num|
    array << num ** value_array.length
  end
  sum = array.sum
  value == sum ? true : false
end

# create empty array
# turn the value integer into an array of the digits
# iterate through each integer and raise it to the power of the length of the number of digits of the value by using the value_array, and push to the empty array
# After the iteration - sum the array
# compare the valeu to the sum and if they're equal, true - if not, flase
