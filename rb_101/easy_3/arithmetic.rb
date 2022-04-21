=begin

Problem
  Write a program that prompts the user for two positive integers, and then prints the results of the following operations on those two numbers:
  addition, subtraction, product, quotient, remainer, and power. Do not worry about validating user input.
Data Structure
  N/A
Algorithm
  - prompt the user for a positive number
  - get the first number, assign it to a variable
  - prompt the user for a second positive number
  - get the second number, assign it to a variable
  - puts all six operations (1 + 1 = 2, etc...)
=end


arr = ['+', '-', '*', '/', '%', '**']

puts '==> Enter the first number'
num1 = gets.chomp.to_i

puts '==> Enter the second number'
num2 = gets.chomp.to_i

arr.each do |operator|
  puts "#{num1} #{operator} #{num2} = #{num1.send(operator, num2)}"

  if num2 == 0
    arr.delete('/') 
    arr.delete('%') 
  end
end


=begin
puts '==> Enter the first number'
num1 = gets.chomp.to_i

puts '==> Enter the second number'
num2 = gets.chomp.to_i

puts "#{num1} + #{num2} = #{num1 + num2}"
puts "#{num1} - #{num2} = #{num1 - num2}"
puts "#{num1} * #{num2} = #{num1 * num2}"
puts "#{num1} / #{num2} = #{num1 / num2}"
puts "#{num1} % #{num2} = #{num1 % num2}"
puts "#{num1} ** #{num2} = #{num1 ** num2}"

_________________________________________

def add(num1, num2)
  num1 + num2
end

def subtract(num1, num2)
  num1 - num2
end

def product(num1, num2)
  num1 * num2
end

def divide(num1, num2)
  num1 / num2
end

def remainder(num1, num2)
  num1 % num2
end

def power(num1, num2)
  num1 ** num2
end

puts '==> Enter the first number'
num1 = gets.chomp.to_i

puts '==> Enter the second number'
num2 = gets.chomp.to_i

puts "#{num1} + #{num2} = #{add(num1, num2)}"
puts "#{num1} - #{num2} = #{subtract(num1, num2)}"
puts "#{num1} * #{num2} = #{product(num1, num2)}"
puts "#{num1} / #{num2} = #{divide(num1, num2)}"
puts "#{num1} % #{num2} = #{remainder(num1, num2)}"
puts "#{num1} ** #{num2} = #{power(num1, num2)}"
=end
