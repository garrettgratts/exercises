=begin

Problem 
  Write a method that takes an array of strings, and returns an array of the same string values,
  except with the vowels (a, e, i, o, u) removed.
Data Structures
  N/A
Algorithm
  - Iterate through the array
  - Remove vowels from each element of the array
  - Return new array
=end

def remove_vowels(arr)
  arr.map { |string| string.delete('AEIOUaeiou') }
end

p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
p remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
p remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']
