=begin

Problem
  Write a program that will ask the user for a word or multiple words, and give back the number of characters.
  Spaces should not be counted as characters.
Data Strucure
  Array unless I can remove spaces from strings without to_a
  Checked the documentation, I gotta use an array through String#split
Algorithm
  - Prompt the user for a word or multiple words
  - Get the user input, assign to variable
  - Call String#split on the user input so I can remove spaces
  - Call Array#join on the array to create a string
  - Call String#length on the string, assign result to a variable
  - Print to the screen, the number of characters along with the original string

=end

def get_length(str)
  str.split.join.length
end

def print_length_in_str(user_str, length)
  puts "There are #{length} characters in #{user_str}."
end

print 'Please write word or multiple words: '
user_str = gets.chomp.inspect

length = get_length(user_str)

print_length_in_str(user_str, length)

# ohhhh you can use String#delete to deleting space in strings
