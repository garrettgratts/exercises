=begin

Problem
  Create a method that takes two integers as arguments. A count, and the first number of a sequence the method creates.
  Return an Array that contains the same number of elements as the count argument,
  while the values of each element will be multiples of the starting number.

  sequence(5, 1) == [1, 2, 3, 4, 5]
  sequence(4, -7) == [-7, -14, -21, -28]
  sequence(3, 0) == [0, 0, 0]
  sequence(0, 1000000) == []
Data Structure
  N/A
Algorithm
  - Create range from 1 to count inclusive
  - Iterate on the range of sequence numbers with Array#map
  - Multiply the sequence number by the second argument number
=end

def sequence(count, number)
  (1..count).map { |sequence| number * sequence}
end

p sequence(5, 1) == [1, 2, 3, 4, 5]
p sequence(4, -7) == [-7, -14, -21, -28]
p sequence(3, 0) == [0, 0, 0]
p sequence(0, 1000000) == []
