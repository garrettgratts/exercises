=begin

Problem
  Write a method that takes one argument, a positive integer, and returns the sum of its digits.
Data Object
  Array
Algorithm
  - Create two variables, sum and count; assign 0 to both
  - Turn the integer into a string
  - Turn the string into an array of characters
  - Iterate through the array, turning each element into an integer and appending it to sum
  - Return sum
=end

# def sum(int)
#   sum = 0
#   count = 0

#   array = int.to_s.chars
#   array.each do |num|
#     sum += num.to_i
#   end

#   sum
# end

def sum(int)
  integer_array = int.to_s.chars.map { |num| num.to_i }
  sum = integer_array.reduce(:+)
end

puts sum(123)
