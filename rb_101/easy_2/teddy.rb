=begin

Problem
  Build a program that randomly generates and prints Teddy's age. To get the age, you should generate a random number between 20 and 200.
Data Object
  Integer
Algorithm
  - Use the rand method to randomly return a number between 20 and 200
  - Assign the value to a variable
  - Interpolate the variable into a message
=end

 age = rand(20..200)

 puts "What is your name?"
 name = gets.chomp

 if name == ''
  name = 'Teddy'
 end

 puts "#{name} is #{age} years old!"
