=begin

Problem
  A featured number (something unique to this exercise) is:
  - an odd number
  - a multiple of 7
  - whose digits occur exactly once each.

  Write a method that takes a single integer as an argument, and returns the next featured number that is greater than the argument.
  Return an error message if there is no next featured number.
Data Structure
  Array
Algorithm
  - Increment the number until it is odd and divisible by 7
  - Check if its digits occur exactly once each
  - If so, return the number
  - If not, increment the number by 14 and check its digits again
=end

def featured(integer)
  return 'error' if integer >= 9_999_999_999
  integer += 1
  integer += 1 until integer.odd? && integer % 7 == 0

  loop do
    num_chars = integer.to_s.chars
    return integer if num_chars.length == num_chars.uniq.length
    integer += 14
  end
end

p featured(12) == 21
p featured(20) == 21
p featured(21) == 35
p featured(997) == 1029
p featured(1029) == 1043
p featured(999_999) == 1_023_547
p featured(999_999_987) == 1_023_456_987

p featured(9_999_999_999) # -> There is no possible number that fulfills those requirements
