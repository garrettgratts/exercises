=begin

Problem
  Modify the word_sizes method from the previous exercise to exclude non-letters when determining word size. For instance, the length of "it's" is 3, not 4.
Data Object
  Array (so we can use iterative methods)
Algorithm
  - Create an array of words from the string
  - Create an empty hash, default value of 0
  - Iterate through the array of words
  - Iterate on each word, removing any non-letters
  - Build the hash
    - Incrementing each length occurence
=end

def word_sizes(words_string)
  counts = Hash.new(0)
  words_string.split.each do |word|
    clean_word = word.delete('^A-Za-z')
    counts[clean_word.size] += 1
  end
  counts
end

p word_sizes('Four score and seven.')  == { 3 => 1, 4 => 1, 5 => 2 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
p word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
p word_sizes('') == {}
