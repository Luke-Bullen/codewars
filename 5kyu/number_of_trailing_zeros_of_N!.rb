# Instructions

# Write a program that will calculate the number of trailing zeros in a factorial of a given number.

# N! = 1 * 2 * 3 *  ... * N

# Be careful 1000! has 2568 digits...

# For more info, see: http://mathworld.wolfram.com/Factorial.html

# Examples
# zeros(6) = 1
# # 6! = 1 * 2 * 3 * 4 * 5 * 6 = 720 --> 1 trailing zero

# zeros(12) = 2
# # 12! = 479001600 --> 2 trailing zeros
# Hint: You're not meant to calculate the factorial. Find another way to find the number of zeros.


# My Solution

def zeros(n)

  number_of_zeros = 0
  power_counter = 0
  number = n.to_f

  until number < 5 do
    number = number / 5
    power_counter += 1
  end

  i = (1..power_counter)
  i.each do |x|
    number_of_zeros += n / (5**x)
  end
  return number_of_zeros
end
