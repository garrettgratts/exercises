=begin Part 1

Problem
  write a method that takes one argument, a string, and returns a new string with the words in reverse order
Data Object
  Array
Algorithm
  - Collect the words in the string, into an array
    - Use the split method with a space as a delimiter
  - Iterate on this array
  - From the last to first element, remove each element
  - As each element is removed, add each element to a new array
  - Turn this new array into a string
    - Use the join method
=end

def reverse_string(string)
  new_string = []
  string_arr = string.split

  until string_arr.empty?
    new_string.push(string_arr.pop)
  end
  new_string.join(' ')
end

=begin Part 2

Problem 
  Write a method that takes one argument, a string containing one or more words, and returns the given string with 
  words that contain five or more characters reversed. 
Data Object
  Array
Algorithm
  - Collect the words of the string into an array
    -Use the split method with no argument
  - Reverse each element of five or more characters
    -Iterate on each element with the map method
    -Reverse if 5 or more characters
  -Turn array into a string
    -Use the join method with a space as the argument
=end

def reverse_words(string)
  new_string = string.split.map! do |word|
    if word.length >= 5
      word.reverse 
    else
      word
    end
  end

  p new_string.join(' ')
end

reverse_words('Walk around the block')
