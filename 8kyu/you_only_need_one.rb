# Instructions

# You will be given an array a and a value x. All you need to do is check whether the provided array contains the value.

#   Array can contain numbers or strings. X can be either.

#   Return true if the array contains the value, false if not.


# My Solution

def check(arr,element)
  arr.include? element
end

# without .include

def check(arr,element)
  counter = 0
  arr.each do |i|
    i == element ? counter = 1 : nil
  end
  counter > 0 ? true : false
end
