=begin

Problem
  Create a method that takes 2 arguments: array and hash
  The array will contain 2 or more elements that, when combined with adjoining spaces, will produce a person's name.
  The hash will contain two keys, :title, and :occupation, and the appropriate values. Your method should return a greeting
  that uses the person's full name, and mentions the person's title and occupation.
Data Structure
  Array and Hash
Algorithm
  - Use string interpolation to print a greeting to the screen
  - Use the arguments to create two variables, name and job, both empty strings
  - Get the info into the variables
  - Print those variable to the screen with string interpolation
=end

# def greetings(array, hash)
#   name = array.join(' ')
#   job = "#{hash[:title]} #{hash[:occupation]}"

#   puts "=> Hello #{name}! Nice to have a #{job} around."
# end

def greetings(name, status)
  "Hello, #{name.join(' ')}!
  Nice to have a #{status[:title]} #{status[:occupation]} around."
end

p greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
#=> Hello, John Q Doe! Nice to have a Master Plumber around.

