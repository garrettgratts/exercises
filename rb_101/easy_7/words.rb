=begin

Problem
  Write a method that takes a single String argument and returns a new string that 
  contains the original value with the first character of every word capitalized, 
  and all other letters lowercase.
Data Structure
  Array
Algorithm
  - Create an array of string characters split on spaces
  - Iterate through the array, capitalizing the first character of each word
  - Return the new array
  - Turn array into string
=end

def word_cap(string)
  string_arr = string.split.map do |word|
    word[0] = (word[0].ord - 32).chr # how to capiialize letter without using String#capitalize?
    word
  end
  string_arr.join(' ')
end

p word_cap('four score and seven') == 'Four Score And Seven'
p word_cap('the javaScript language') #== 'The Javascript Language'
p word_cap('this is a "quoted" word') #== 'This Is A "quoted" Word'
