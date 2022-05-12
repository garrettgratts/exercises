=begin

Problem
  Compute a method that returns the last digit of the nth Fibonacci number.
Data Structure
  N/A
Algorithm
  - Create two variables, representing the first two fibonacci numbers, 1 and 1
  - Make these variables represent a nested array, so I can easily get the last digit
  - Compute the sum procedurally, and return the last digit the "last" variable
=end

def fibonacci_last(nth)
  last_2 = [1, 1]
  3.upto(nth) do
    last_2 = [last_2.last, (last_2.first + last_2.last) % 10]
    p last_2
  end

  last_2
end

p fibonacci_last(100)        # -> 0  (the 15th Fibonacci number is 610)
# p fibonacci_last(20)        # -> 5 (the 20th Fibonacci number is 6765)
# p fibonacci_last(100)       # -> 5 (the 100th Fibonacci number is 354224848179261915075)
# p fibonacci_last(100_001)   # -> 1 (this is a 20899 digit number)
# p fibonacci_last(1_000_007) # -> 3 (this is a 208989 digit number)
# p fibonacci_last(123456789) # -> 4
=begin
n = 1, 1
n = 2, 1
n = 3, 2
n = 4, 3
n = 5, 5
n = 6, 8
n = 7, 13, 3
n = 8, 21, 1
n = 9, 34, 4
=end
