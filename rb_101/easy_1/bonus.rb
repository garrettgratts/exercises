=begin

Problem
  Write a method that takes two arguments, a positive integer and a boolean, and calculates the bonus for a given salary. 
  If the boolean is true, the bonus should be half of the salary. If the boolean is false, the bonus should be 0.
Data Object
  Integer
Algorithm
  - This method takes have two parameters, an integer and a boolean
  - Write an if else statement that determines the return value of the method
  - If the boolean is true, increase integer by 50%
  - If the boolean is false, return the integer
=end

def calculate_bonus(integer, boolean)
  if boolean == true
    integer / 2
  elsif boolean == false
    0
  end
end

puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000
