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


# number of 0s depends on how many multiples of every 5 base it has eg: how many 5s + how many (5**2=125) 125s it has + how many (5**3=625) 625s it has ect.
# create the default number of 0s to = 0 - this is given as 0 if number < 5
# need to check how many power of 5s are needed
# - divide by 5 and increate power counter
# - if remaining value (number) >= 5 divide by 5 again and increase power counter and repeat unitl remaining value < 5
# - when remaining value (number) < 5, take value of power counter as this is the indecie for which 5 is needed - eg: if power counter = 3, only 5**1 (5), 5**2 (25) and 5**3 (125) are needed
# get range of integers from 1 upto and including the power counter
# iterate through each vaue of the range and divide the initial input number by 5**range number and add the result to the number_of_zeros - round down to closest integer
# repeat for every value in the range
# return the number_of_zeors
