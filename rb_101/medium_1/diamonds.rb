=begin

Problem
  Write a method that displays a 4-pointed diamond in an n x n grid, where n is an odd integer that
  is supplied as an argument to the method. You may assume that the argument will always be an odd integer.
Data Structure
  N/A
Algorithm
  - Using n, measure the number of spaces and astrisks per line
  - n is the number of lines
  - Have n number of spaces on each line
  - Substitute the astrisks into the spaces
=end

def diamond(n)
  space = ' ' * (n / 2)
  star = '*'

  n.times do |index|
    puts space + star + space

    if index < n / 2
      star += '**'
      space.chop!
    else
      star.chop!; star.chop!
      space += ' '
    end
  end
end

diamond(13)
