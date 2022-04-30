=begin

Problem
  Write a method that takes an integer, and converts it to a string representation.
Data Structure
  Array for storing signs
Algorithm
  - use if else statement to decide sign
  - pass integer into integer_to_string method
  - prepend the sign if integer isn't zero
=end

NUM_TO_STR = {
  1 => '1', 2 => '2', 3 => '3', 4 => '4', 5 => '5',
  6 => '6', 7 => '7', 8 => '8', 9 => '9', 0 => '0'
}

def integer_to_string(number)
  string = ''
  loop do
    number, remainder = number.divmod(10)
    string.insert(0, NUM_TO_STR[remainder])
    return string if number == 0
  end
end

def signed_integer_to_string(number) # my answer
  case number <=> 0
  when -1 then "-#{integer_to_string(-number)}"
  when +1 then "+#{integer_to_string(number)}"
  else         integer_to_string(number)
  end
end

# Refactor our solution to reduce the 3 integer_to_string calls to just one.

def signed_integer_to_string(number)
  sign = ''
  case number <=> 0
  when -1 then sign = '-'; number = -number
  when +1 then sign = '+' 
  end
  integer_to_string(number).prepend(sign)
end

# Further Exploration - Refactor to call integer_to_string once

p signed_integer_to_string(4321) == '+4321'
p signed_integer_to_string(-123) == '-123'
p signed_integer_to_string(0) == '0'
