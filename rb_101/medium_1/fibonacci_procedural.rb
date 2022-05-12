=begin

Problem
  Rewrite your recursive fibonacci method so that it computes its results without recursion.
Data Structure
  N/A
Algorithm
  - We know what the first two numbers are, 1 and 1
  - Put them into an array
  - Assign them to variables first and last, respectively
  - From 1 to n, reassign first to the value of last, and reassign last to the sum of first and last
=end

def fibonacci(n)
  first, last = [1, 1]

  1.upto(n) do 
    first, last = [last, first + last]
  end
  last 
end

p fibonacci(3)
