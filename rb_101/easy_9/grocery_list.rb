=begin

Problem
  Write a method which takes a grocery list (array) of fruits with quantities and converts it into an array of the correct number of each fruit.

  buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]
Data Structure
  Array
Algorithm
  - Iterate on the array
  - Return a new array of values by multiplying the fruit string by its quantity
  - Flatten new array
=end

def buy_fruit(array)
  array.map { |fruit, quantity| [fruit] * quantity }.flatten
end

