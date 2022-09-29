# Instructions

# Write simple .camelCase method (camel_case function in PHP, CamelCase in C# or camelCase in Java) for strings. All words must have their first letter capitalized without spaces.

# For instance:

# 'hello case'.camelcase => HelloCase
# 'camel case word'.camelcase => CamelCaseWord


# My Solution


class String
  def camelcase
    self.split.map(&:capitalize).join
  end
end

# or can be done using .each

class String
  def camelcase
    string = ""
    self.split.each do |up|
      string += up.capitalize
    end
    return string
  end
end



# split up the string into an array of strings
# iterate through each string and capitalize it
# join the array's strings back together with no spaces

# In the .each case - append the capitlaized sting to an existing string which starts blank and then is filled with previously capitlized words
