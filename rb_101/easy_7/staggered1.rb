=begin

Problem
  Write a method that takes a String as an argument, and return a new String
  that contains the orginal value using a staggered capitalization scheme in
  which every other character is capitalized, and the remaining characters
  are lowercase.
Data Structure
  Array
Algorithm
  - Create array of characters
  - Iterate through the array, returning a new array
  - If/Else Statement, if alphabetal character range A..Z, a..z 
  - Join array to string
  - Return new string
=end

def staggered_case(string)
  result = ''
  array = string.chars
  
  array.each_with_index do |char, index|
    index.even? ? char.upcase! : char.downcase!
    result += char
  end
  result
end

p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'

# Further Exploration
def staggered_case(string, upperfirst = true)
  result = ''
  need_upper = upperfirst
  string.chars.each do |char|
    if need_upper
      result += char.upcase
    else
      result += char.downcase
    end
    need_upper = !need_upper
  end
  result
end

p staggered_case('I Love Launch School!', false) #== 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS', false) #== 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers', false) #== 'IgNoRe 77 ThE 444 NuMbErS'
