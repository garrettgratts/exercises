=begin

Problem 
  Write a method that takes one argument, a positive integer, and returns a string of alternating 1s and 0s, always starting with 1. 
  The length of the string should match the given integer.
Data Object
  String
Algorithm
  - Create a new empty string
  - Loop until the length of the empty string r argument
    - Within the loop create an array of two elements, 1 and 0
    - Add the first element for the array to the empty string
    - Reverse the array
      - Call the reverse! method
  - Return the new string
=end


def stringy(int, idx=0) # The second argument will make the output start on 1 or 0. It the index of the array I'm getting numbers from.
  num_string = ''
  arr = [1, 0]

  int.times do
    num_string += "#{arr[idx]}"
    arr.reverse!
  end

  num_string
end

puts stringy(4, 1)

