# Instructions

# Enough is enough!
# Alice and Bob were on a holiday. Both of them took many pictures of the places they've been, and now they want to show Charlie their entire collection. However, Charlie doesn't like these sessions, since the motif usually repeats. He isn't fond of seeing the Eiffel tower 40 times.
# He tells them that he will only sit for the session if they show the same motif at most N times. Luckily, Alice and Bob are able to encode the motif as a number. Can you help them to remove numbers such that their list contains each number only up to N times, without changing the order?

# Task
# Given a list and a number, create a new list that contains each number of list at most N times, without reordering.
# For example if the input number is 2, and the input list is [1,2,3,1,2,1,2,3], you take [1,2,3,1,2], drop the next [1,2] since this would lead to 1 and 2 being in the result 3 times, and then take 3, which leads to [1,2,3,1,2,3].
# With list [20,37,20,21] and number 1, the result would be [20,37,21].


# My Solution


def delete_nth(order,max_e)
  new_array = []

  order.each do |x|
    if new_array.count(x) < max_e
      new_array << x
    end
#     if statment as ternary operator:
#     new_array.count(x) < max_e ? new_array << x : nil
  end

  return new_array
end


# create empty new_array
# iterate through the order array - for each element, check to see how many times it appears in the new_array
# if the count is less than the desired max count, then push the element to new_array
# this will result in new_array having no more than the max occurence of each element
