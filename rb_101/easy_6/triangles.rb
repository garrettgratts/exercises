=begin

Problem
  Write a method that takes a positive integer, n, as an argument, and displays a right
  triangle whose sides each have n stars. 
Data Structure
  N/A
Algorithm
  - Create two variables, spaces and stars
  - Spaces equals (integer - 1), stars equals (1)
  - Loop integer number of times
  - puts spaces + asterisks
  - increment stars by 1
  - deincrement spaces by 1
=end

def triangle(integer)
  number_of_spaces = integer - 1
  number_of_stars = 1

  integer.times do
    puts ('*' * number_of_stars) + (' ' * number_of_spaces)
    number_of_spaces += 1
    number_of_stars += 1
  end
end

triangle(8)
