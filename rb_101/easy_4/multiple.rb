=begin

Problem
  Write a method that searches for all multiples of 3 or 5 that lie between 1 and
  some other number, and then computes the sum of those multiples. For instance, if
  the supplied number is 20, the result should be 98 (3 + 5 + 6 + 9 + 10 + 12 + 15 + 18 + 20).
Data Structure
  Array
Algorithm
  - 
=end

def multiple?(number, divisor1, divisor2=nil)
  if divisor2 == nil
    number % divisor1 == 0
  else
    number % divisor1 == 0 || number % divisor2 == 0
  end
end

# def multisum(num)
#   multi_arr = []

#   for num in 1..num
#     multi_arr << num if multiple?(num, 3)
#   end

#   multi_arr.sum
# end

def multisum(num)
  multi_arr = []

  1.upto(num) do |current_num|
    multi_arr << current_num if multiple?(current_num, 3, 5)
  end

  multi_arr.sum
end

def multisum(max_value)
  (1..max_value).inject(0) do |sum, num|
    multiple?(num, 3, 5) ? sum + num : sum + 0
  end
end

p multisum(3) == 3
p multisum(5) == 8
p multisum(10) == 33
p multisum(1000) == 234168
