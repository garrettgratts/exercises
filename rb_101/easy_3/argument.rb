
# Using the multiply method from the "Multiplying Two Numbers" problem, write a method that computes the square of its argument
# (the square is the result of multiplying a number by itself).

def multiply(num1, num2)
  num1 * num2
end

def square(num)
  multiply(num, num)
end

# What if we wanted to generalize this method to a "power to the n" type method: cubed, to the 4th power, to the 5th, etc.
# How would we go about doing that while still using the multiply method?

def power_to_the_n(base, exponent)
  num = 1
  exponent.times { num = multiply(base, num) }
  num
end

p power_to_the_n(2, 5)
