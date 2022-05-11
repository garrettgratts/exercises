=begin

Problem
  Write a program that prints out groups of words that are anagrams. 
Data Structure
  Array
Algorithm
  - Iterate over array
  - Sort each word into alphabetical order
  - If key exists, append current word into value (array)
  - Otherwise, create a new key with this sorted word
=end

def sort_string(string)
  string.split('').sort.join
end

words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
  'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
  'flow', 'neon']

results = []
sorted_words_array = []

words.each_index do |index|
  first_word = words[index]

  sorted_words_array = words.map { |word| sort_string!(word) }

end

p words

