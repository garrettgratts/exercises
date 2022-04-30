=begin

Problem
  Write a method that takes a positive integer or zero, and converts it to a string representation.
Data Structure
  Hash for storage, Array for iteration
Algorithm
  - create a hash constant that maps integers 0-9 to their string representation
  - create an empty string
  - create empty array
  - create loop
  - until integer argument equals 0
  - divide by 10, move integer into array
  - iterate on the array of integers
  - using each integer as a key, return values from the hash, adding each string to an empty string
  - reverse the string, return the string
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

p integer_to_string(4321)
p integer_to_string(0) == '0'
p integer_to_string(5000) == '5000'
