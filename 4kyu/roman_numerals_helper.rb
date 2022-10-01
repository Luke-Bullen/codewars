# Instructions

# Create a RomanNumerals class that can convert a roman numeral to and from an integer value. It should follow the API demonstrated in the examples below. Multiple roman numeral values will be tested for each helper method.

# Modern Roman numerals are written by expressing each digit separately starting with the left most digit and skipping any digit with a value of zero. In Roman numerals 1990 is rendered: 1000=M, 900=CM, 90=XC; resulting in MCMXC. 2008 is written as 2000=MM, 8=VIII; or MMVIII. 1666 uses each Roman symbol in descending order: MDCLXVI.

# Input range : 1 <= n < 4000

# In this kata 4 should be represented as IV, NOT as IIII (the "watchmaker's four").

# Examples
# RomanNumerals.to_roman(1000) # should return 'M'
# RomanNumerals.from_roman('M') # should return 1000


# My Solution

HASH = {
  1000 => "M",
  900 => "CM",
  500 => "D",
  400 => "CD",
  100 => "C",
  90 => "XC",
  50 => "L",
  40 => "XL",
  10 => "X",
  9 => "IX",
  5 => "V",
  4 => "IV",
  1 => "I",
}

class RomanNumerals

  def self.to_roman(num)
    roman = ""
    HASH.each do |number, numeral|
      roman += numeral * (num / number)
      num = num % number
    end
    return roman
  end

  def self.from_roman(str)
    roman = 0
    until str.size.zero?
      last2 = str.slice(-2, 2)
      if HASH.key(last2)
        roman += HASH.key(last2)
        str.chop!.chop!
      else
        roman += HASH.key(str.slice(-1))
        str.chop!
      end
    end
    return roman
  end

end


# to_roman
# create empty string - roman
# iterate through the HASH combos (biggest to smallest)
# - add relevant character string(s) to roman if the input number is a key - matching the number of times of occurence eg: 2000 = "MM"
# - reduce the remianing input number by the added number
# - repeate for the next HASH value

# from_roman
# create roman counter = 0
# initilaize a loop which will run unitl the input string is empty
# - take the last 2 lettters of the input string
# - see if they're a value in the HASH,
#   - if so, add the key to roman
#   - remove those 2 letters from the input string
# - if the 2 letters arn't HASH values,
#   - take the HASH key correleating to the HASH value of the last letter of the input string
#   - Add this valeu to roman
#   - remove the last letter of the input string
