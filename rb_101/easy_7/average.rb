=begin

Problem
  Write a method that takes an Array of integers as input,
  multiplies all the numbers together,
  divides the result by the number of entries in the Array,
  and then prints the result rounded to 3 decimal places.
  Assume the array is non-empty.
Data Structure
  Array
Algorithm
  - Use Araay#inject to get teh sum of all numbers
  - Divide by array length
  - Use Kernel#format
=end

def show_multiplicative_average(array)
  product = array.inject(1) { |product, number| product *= number}
  average = product / array.length.to_f
  puts "The result is #{sprintf("%.3f", average)}"
end

show_multiplicative_average([3, 5])                # => The result is 7.500
show_multiplicative_average([6])                   # => The result is 6.000
show_multiplicative_average([2, 5, 7, 11, 13, 17]) # => The result is 28361.667
