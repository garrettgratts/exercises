=begin

Problem
  Modify the method from the previous exercise so it ignores non-alphabetic
  characters when determining whether it should uppercase or lowercase
  each letter. The non-alphabetic characters should still be included in
  the return value; they just don't count when toggling the desired case.
Data Structure
  Array
Algorithm
  - 
=end

def staggered_case(string)
  result = ''
  array = string.chars
  toggle = true

  array.each_with_index do |char, index|
    toggle ? char.upcase! : char.downcase!
    toggle = !toggle if char =~ /[a-z]/i
    result += char
  end
  result
end

p staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS') == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'
