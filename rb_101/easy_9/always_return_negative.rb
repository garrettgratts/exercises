=begin

Problem
  Write a method that takes a number as an argument. If the argument is a positive number, return the negative of that number.
  If the number is 0 or negative, return the original number.
Data Structure
  N/A
Algorithm
  - If/Else statement
    - If the number is greater than zero, return negative. 
    - Or else return the number as is
=end

def negative(number)
  number > 0 ? -number : number
end

p negative(5) == -5
p negative(-3) == -3
p negative(0) == 0      # There's no such thing as -0 in ruby
