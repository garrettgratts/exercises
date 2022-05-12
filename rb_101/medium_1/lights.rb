=begin

Problem
  Write a method that takes one argument, the total number of switches, and
  returns an Array that identifies which lights are on after n repetitions.
Data Structure
  Array
Algorithm
  - Create an array of numbers from 1 to the total number of switches
  - Use nested loops
  - Counter is equal to the total number of switches
  - Iterate through the array with selection condition: number is divisible by 1, return new array
  - Iterate through this array with selection condition: number is divisible by 2, return new array

  - How can I impliment the on/off nature of the light switches?
  - Maybe I can have two arrays, one of on switches, another for off switches

  - As it moves from integer 1 to n, when integer is odd, push to 'on' array 
  - When integer is odd, push to 'on' array

  - I can move numbers into a array if they aren't present in the array

  - On the first iteration, every number is returned to an array, the on array
    - Because the array is empty, no number is present
  - On second iteration, every even number is returned to another array, the off array
  - On the third iteration, every number divisible by 3 is returned to the 'on' array
  - I can have two arrays, and I can return the 'on' array after n repetitions

  - Tested for 3, 3 works. Trying 10 now
  - n is 1, 10 is on (in the 'on' array)
  - n is 2, 10 is off (in the 'off' array)
  - n is 3, 10 is off (in the 'off' array)
  - n is 4, 10 is off (in the 'off' array)
  - n is 5, 10 is on (in the 'on' array)
  - n is 6..9, 10 is on
  - n is 10, 10 is off
  - n is 11, 10 is off and will stay off

  - 10 has 4 common factors, 1, 2, 5, 10
  - 100 has 9 common factors, 1, 2, 4, 5, 10, 20, 25, 50, 100
  - numbers with an even number of common factors will be off after n repetitions
  - numbers with an odd number of common factors will be on after n repetitions

  - I will iterate on the array of numbers from 1 to n
  - I will select numbers that have an odd number of common factors
    - Take the number
    - Divide it by all numbers from 1 to that number, inclusive
    - Whenever it is divisible, increment some counter
    - Select the number when the counter is odd
  - Return a new array
=end

def lights_on(n)
  array = (1..n).to_a

  array.select do |number|
    common_factors = 0

    (1..number).each do |factor|
      if number.remainder(factor) == 0
        common_factors += 1
      end
    end

    common_factors.odd?
  end
end

p lights_on(1000)
