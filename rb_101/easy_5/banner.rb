=begin

Problem
  Write a method that will take a short line of text, and print it within a box.
Data Structure
  N/A
Algorithm
  - Take the length of the string
  - Control the length of the box using the str length and dashes
=end


def print_in_box(string)
  top_and_bottom_of_box = '+--+'
  sides_of_box = '|  |'
  length = string.length

  while length > 76 # makes sure it fits on a terminal
    string.chop!
  end

  length.times do
    top_and_bottom_of_box.insert(1, '-')
    sides_of_box.insert(2, ' ')
  end

  puts top_and_bottom_of_box
  puts sides_of_box
  puts "| #{string} |"
  puts sides_of_box
  puts top_and_bottom_of_box
end

print_in_box('To boldly go where no one has gone before.')

# +--------------------------------------------+
# |                                            |
# | To boldly go where no one has gone before. |
# |                                            |
# +--------------------------------------------+

