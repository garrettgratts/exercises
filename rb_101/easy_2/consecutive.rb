=begin

Problem
  Write a program that asks the user to enter an integer greater than 0,then asks if the user wants
  to determine the sum or product of all numbers between 1 and the entered integer; inclusive
Data Object
  None really
Algorithm
  - prompt the user for an integer
  - get the user input
  - prompt the user for sum or product
  - create a for loop
  - if user wants the sum, return sum of numbers from range 1 to num
    - use a for loop to add numbers to variable 'sum'
  - if user wants the product, return product of number from range 1 to num
    - use a for loop to multiply numbers with the variable 'product'
=end

def get_number
  loop do
    input = gets.chomp.to_i

    return input if input > 0
    puts 'Please enter a number greater than 0.'
  end
end

def get_operator
  loop do
    input = gets.chomp

    if input != 's' || input != 'p'
      return input 
    else
      puts 'Please enter s or p.'
    end
  end
end

def calculate_sum(number)
  (1..number).reduce(:+)
end

def calculate_product(number)
  (1..number).inject(:*)
end

puts '>> Please enter an integer greater than 0:'
number = get_number
puts ">> Enter 's' to compute sum, 'p' to compute the product."
operation = get_operator

if operation == 's'
  sum = calculate_sum(number)
  puts "The sum of the integers between 1 and #{number} is #{sum}."
else
  product = calculate_product(number)
  puts "The product of the integers between 1 and #{number} is #{product}."
end

