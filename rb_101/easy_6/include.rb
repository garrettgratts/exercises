=begin

Problem
  Write a method that takes an array and a search value as arguements. 
  This method returns true if the value is in the array, false if not.
Data Structure
  Array
Algorithm
  - Create variable called result, with a default value of false
  - Iterate through the array argument
  - reassign the result variable to true if value is found
  - return result
=end

def include?(array, search_value)
  result = false
  array.each do |value|
    result = true if value == search_value
  end
  result
end

p include?([1,2,3,4,5], 3) == true
p include?([1,2,3,4,5], 6) == false
p include?([], 3) == false
p include?([nil], nil) == true
p include?([], nil) == false
