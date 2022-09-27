# Instructions

# Usually when you buy something, you're asked whether your credit card number, phone number or answer to your most secret question is still correct. However, since someone could look over your shoulder, you don't want that shown on your screen. Instead, we mask it.

# Your task is to write a function maskify, which changes all but the last four characters into '#'.

# Examples
# "4556364607935616" --> "############5616"
#      "64607935616" -->      "#######5616"
#                "1" -->                "1"
#                 "" -->                 ""

# // "What was the name of your first pet?"

# "Skippy" --> "##ippy"

# "Nananananananananananananananana Batman!"
# -->
# "####################################man!"


# My Solution

def maskify(cc)
  cc.sub(/\A(.*)(....)\z/) {
    "#"*$1.length + $2
  }
end


# Take the input and do a substitution
# set the string with \A and \z
# allowed for all charactes before the 4 final - group 1
# take the last 4 characters - grouo 2
# take the lenght of group 1 and substite the same number of "#" in their place
# leave group 2 as it is
# If less than 4 charcaters, all charcaters are unchanged as group 2 is a set number that fills first
