# Instructions

# The wave (known as the Mexican wave in the English-speaking world outside North America) is an example of metachronal rhythm achieved in a packed stadium when successive groups of spectators briefly stand, yell, and raise their arms. Immediately upon stretching to full height, the spectator returns to the usual seated position.

# The result is a wave of standing spectators that travels through the crowd, even though individual spectators never move away from their seats. In many large arenas the crowd is seated in a contiguous circuit all the way around the sport field, and so the wave is able to travel continuously around the arena; in discontiguous seating arrangements, the wave can instead reflect back and forth through the crowd. When the gap in seating is narrow, the wave can sometimes pass through it. Usually only one wave crest will be present at any given time in an arena, although simultaneous, counter-rotating waves have been produced. (Source Wikipedia)
# Task
# In this simple Kata your task is to create a function that turns a string into a Mexican Wave. You will be passed a string and you must return that string in an array where an uppercase letter is a person standing up.
# Rules
#  1.  The input string will always be lower case but maybe empty.

#  2.  If the character in the string is whitespace then pass over it as if it was an empty seat
# Example
# wave("hello") => ["Hello", "hEllo", "heLlo", "helLo", "hellO"]


# My Solution


def wave(str)
  array = []
  length = str.chars.length
  i = 0
  length.times do
    if str.chars[i] != " "
      if i == 0
        array << str.chars[i].upcase + str.chars[i+1..-1].join
      elsif i == length - 1
        array << str.chars[0...i].join + str.chars[i].upcase
      else
        array << str.chars[0...i].join + str.chars[i].upcase + str.chars[i+1..-1].join
      end
    end
    i += 1
  end
  return array
end

# create emoty Array
# get the length of the string
# initilaize a counter (i) = 0
# loop through the following process 'length' number of times
# - start from 1st character in the string, upcase it if its a letter
# - if its a space, skip to the next character
# - append the capitalized letter to the rest of the string in the correct place
# - push this to the array, creating an array of strings, each with a capitalized letter
# - i is used to keep track of which character of the string to opperate the process on
# - first 2 returns of the if statement are for the first and last character of the string
# return the array of strings
