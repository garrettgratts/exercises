=begin

Problem
  Write a method that takes a sentence string as input, and returns the same string with any sequence of the words
  'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine'
  converted to a string of digits.
Data Structure
  Array
Algorithm
  - Create an array constant of the provided sequence of words
  - Iterate on the constant array
  - As it iterates on each array word, it will see if that array word is in the sentence
  - If it is, it will be substituted by the index of that array word
  - Return the sentence
=end

ARRAY = 'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine'

def word_to_digit(sentence)
  ARRAY.each do |word|
    sentence.gsub!(/\b#{word}\b/, ARRAY.index(word).to_s)
  end
  sentence
end

p word_to_digit('Please call me at five five five one two three four. Thanks.') #== 'Please call me at 5 5 5 1 2 3 4. Thanks.'
