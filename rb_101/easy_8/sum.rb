=begin

Problem
  Write a method takes an Array of numbers and then retursn the sum of the sums of 
  each leading subsequence for that array
Data Structure
  Array
Algorithm
  - Use counter and loop to get the sums
  - Use the index of each element, from the range of 0..counter on each iteration
=end

def sum_of_sums(array)
  sum_total = 0
  counter = 0

  loop do
    array[0..counter].each { |number| sum_total += number }
    counter += 1
    break if counter == array.length
  end
  sum_total
end

p sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
p sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
p sum_of_sums([4]) == 4
p sum_of_sums([1, 2, 3, 4, 5]) == 35
