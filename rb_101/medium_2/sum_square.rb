=begin

Problem
  Write a method that computes the difference between the square of the sum of the first n positive integers
  and the sum of the squares of the first n positive integers.
  (square of the sum) - (sum of the squares)
Data Structure
  N/A
Algorithm
  - Create an array of numbers from 1 to n
  - Iterate on the array
  - Return a new array, containing each squared number
  - Get the sum of both
  - Subtract
=end

def sum_square_difference(n)
  int_sum = 0
  squares = (1..n).map do |num|
    int_sum += num
    num**2
  end

  int_sum**2 - squares.sum
end

p sum_square_difference(3) == 22
   # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
p sum_square_difference(10) == 2640
p sum_square_difference(1) == 0
p sum_square_difference(100) == 25164150
