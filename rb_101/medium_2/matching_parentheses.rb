=begin

Problem
  Write a method that takes a string as an argument, and returns true if all parentheses in the string are properly balanced, false otherwise.
  To be properly balanced, parentheses must occur in matching '(' and ')' pairs.
Data Structure
  N/A
Algorithm
  - Create a count of the number of paranthesis
  - Iterate over a array of characters
  - Increment and deincrement on the presence of ( and ) respectively
  - break when parens is less than 0
    - this means the string is beginning a parenthesis with a close. i.e. 'hello)' or 'he(ll)o)'
=end

PAIRS = []

def balanced?(string)
  parans = 0
  characters = string.chars
  characters.each do |char|
    case char
    when '('
    when ')'
    when '['
    when ']'
    when

    parans += 1 if char == '('
    parans -= 1 if char == ')'
    break if parans < 0
  end
  parans.even?
end

p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false
