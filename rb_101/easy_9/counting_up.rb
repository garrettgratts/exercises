=begin

Problem
  Write a method that takes an integer argument, and returns an Array of all integers, in sequence, between 1 and the argument
Data structure
  N/A
Algorithm
  - Create a range value from 1 to integer inclusive
  - Iterate on the range using map, returning a new array of all integers

  - Came up with a faster way. Create the range like before, and instead of iterating on every integer in the range, turn it into an array of integers
=end

def sequence(integer)
  integer > 0 ? (1..integer).to_a : (integer..1).to_a.reverse # added this part so it can return sequences from 1 to negative integers too
end

p sequence(5) #== [1, 2, 3, 4, 5]
p sequence(3) == [1, 2, 3]
sequence(3) # => [1, 2, 3]
sequence(-3) # => [1, 0, -1, -2, -3]


