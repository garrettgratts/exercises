=begin

Problem
  Write a recursive method that computes the nth Fibonacci number, where nth is an argument to the method.
Data Structure
  N/A
Algorithm
  - return 1 if argument is less than 3
  - Add the method to itself with two arguemnts
    - argument minus 1
    - argument minus 2
=end

def fibonacci(n)
  return 1 if n < 3
  fibonacci(n - 1) + fibonacci(n - 2)
end

p fibonacci(1) == 1
p fibonacci(2) == 1
p fibonacci(3) == 2
p fibonacci(4) == 3
p fibonacci(5) == 5
p fibonacci(12) == 144
p fibonacci(20) == 6765
