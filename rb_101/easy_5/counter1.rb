=begin

Problem
  Write a method that takes a string of one or more separated words and returns a hash that shows the number of words of different sizes. 
Data Structure
  Array for iteration, Hash for storage
Algorithm
  str --> arr of words --> arr of word lengths --> arr of frequencies of each word length --> hash[number length = freq
  - Use the string to create an array of words 
  - Iterate through the array of words
  - Build an array out of the lengths of each word
  - Find the frequency of each number in this array
  - Build a hash with numbers as keys, and frequencies as values
=end

# def word_sizes(string)
#   word_lengths_arr = string.split.map { |word| word.length }
#   freq_lengths_arr = word_lengths_arr.uniq.map do |length|
#     word_lengths_arr.count(length)
#   end

#   length_and_freq_hash = {}
#   word_lengths_arr.uniq.each_with_index do |length, index|  
#     length_and_freq_hash[length] = freq_lengths_arr[index]
#   end
  
#   length_and_freq_hash
# end

def word_sizes(words_string)
  counts = Hash.new(0)
  words_string.split.each do |word|
    counts[word.size] += 1
  end
  counts
end


counts = Hash.new(0)
arr = ['big', 'big', 'big', 'boyy']
arr.each do |word|
  p counts[word.size] = counts[word.size] + 1 # counts[3] would return nil but this hash has a default value of 0, so it returns 0
end
p counts
