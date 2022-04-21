=begin

Problem
  Write a program that solicits 6 numbers from the user, then prints a message that
  describes whether or not the 6th number appears amongst the first 5 numbers
Data Structure
  Array
Algorithm
  - Create a loop that gets user input 5 times
    - Move each input into an array during each loop
  - Get the last number from user
  - print a messages confirming or denying the presence of the 6th number
=end


ordinal_numbers = ['1st', '2nd', '3rd', '4th', '5th', '6th', 'last']
num_arr = []

ordinal_numbers.each do |num|
  puts "==> Enter the #{num} number:"
  num_arr << gets.chomp.to_i
end

if num_arr.include?(num_arr.last)
  puts "The number #{num_arr.last} appears in #{num_arr}."
else
  puts "The number #{num_arr.last} does not appear in #{num_arr}."
end

