=begin

Problem
  Write a method that takes two arguments: the first is the starting number, and the second
  is the ending number. Print out all numbers between the two numbers, except
  if a number is divisible by 3, print "Fizz",
  if a number is divisible by 5, print "Buzz",
  and finally if a number is divisible by 3 and 5, print "FizzBuzz".
Data Structure
  N/A
Algorithm
  - Use the two arguments in a range
  - Iterate on the range
  - If/Else statement
=end

def fizzbuzz(num1, num2)
  (num1..num2).each do |num|
    case
    when num.remainder(15) == 0 then puts 'Fizzbuzz'
    when num.remainder(3)  == 0 then puts 'Fizz'
    when num.remainder(5)  == 0 then puts 'Buzz'
    else
      puts num
    end
  end
  nil
end

p fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz
