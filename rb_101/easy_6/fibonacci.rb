=begin

Problem
  Write a method that calculates and returns the first index in the Fibonacci
  sequence that has the number of digits specified in the argument
Data Structure
  Array
Algorithm
  - Until last number of the list equals the length(aka the argument)
  - Calculate fibonacci numbers
    - Create arr with two elements, 1 and 1
    - Get the sum of elements at index 0 and 1, to get two
    - Add two to the array
    - Increment index 0 to 1, and index 1 to 2
    - Repeat until condition is met
  - Return index of that number
=end

def find_fibonacci_by_length(length)
  fibonacci_arr = [1, 1]
  index_1 = 0
  index_2 = 1

  loop do 
    fibonacci_arr << fibonacci_arr[index_1] + fibonacci_arr[index_2]
    index_1 += 1 
    index_2 += 1

    break if fibonacci_arr[-1].to_s.length == length
  end
  fibonacci_arr.index(fibonacci_arr.last) + 1
end

puts find_fibonacci_by_length(2)


