=begin

Problem
  Write a method that takes a string argument, and returns true if all of the alphabetic characters inside the string are uppercase, false otherwise.
Data Structure
  Array
Algorithm
  - Assign nil to variable
  - Iterate on each character
  - Use ternary
  - Condition: character == character as uppercase
  - Result: true : return false
=end

def uppercase?(string)
  letters = string.delete('^A-Za-z')
  boolean_array = []
  index = 0

  loop do
    alphabetic_character = letters[index]

    if alphabetic_character =~ /[A-Z]/
      boolean_array << true
    else
      boolean_array << false
    end

    index += 1
    break if index >= letters.size
  end

  boolean_array.all? 
end

p uppercase?('t') == false
p uppercase?('T') == true
p uppercase?('Four Score') == false
p uppercase?('FOUR SCORE') == true
p uppercase?('4SCORE!') == true
p uppercase?('') == true

#puts '?' if 'cat'.match?(/[A-Za-z]/)
