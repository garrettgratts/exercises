=begin

Problem
  Write a method that returns 2 times the number provided as an argument, unless the argument is a double number;
  double numbers should be returned as-is
Data Structure
  N/A
Algorithm
  - Turn the number into a string
  - Divide the length of the string by 2, call it...index
  - Compare the string range from index 0 to 'index' non-inclusive, with the rest of the string
  - return it as is, else double it and return that
=end

def twice(number)
  string = number.to_s
  half = string.length / 2

  string[0...half] == string[half..-1] ? string.to_i : string.to_i * 2
end

p twice(37) == 74
p twice(44) == 44
p twice(334433) == 668866
p twice(444) == 888
p twice(107) == 214
p twice(103103) == 103103
p twice(3333) == 3333
p twice(7676) == 7676
p twice(123_456_789_123_456_789) == 123_456_789_123_456_789
p twice(5) == 10
