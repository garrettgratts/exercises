=begin

Problem
  Write a method that returns true if the word passed in as an argument can be spelled from this set of blocks, false otherwise.

  B:O   X:K   D:Q   C:P   N:A
  G:T   R:E   F:S   J:W   H:U
  V:I   L:Y   Z:M
Data Structure
  Hash
Algorithm
  - Create a hash using the block letters
  - Create an array of characters
  - Iterate on the hash, we have both block arguments for the hash
  - On each iteration, check if the string has both key and value in it
  - If so, return false
=end

BLOCKS = %w(BO XK DQ CP NA GT RE FS JW HU VI LY ZM).freeze

def block_word?(string)
  up_string = string.upcase
  BLOCKS.none? { |block| up_string.count(block) > 1 }
end

p block_word?('BATCH') == true
p block_word?('BUTCH') == false
p block_word?('jest') == true
