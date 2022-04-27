=begin

Problem
  In the modern era under the Gregorian Calendar, leap years occur in every year that is evenly divisible by 4,
  unless the year is also divisible by 100. If the year is evenly divisible by 100, then it is not a leap year
  unless the year is evenly divisible by 400.

  Assume this rule is good for any year greater than year 0. Write a method that takes any year greater than 0
  as input, and returns true if the year is a leap year, or false if it is not a leap year.
  
  Divisible by 4 => true
  Divisible by 400 => true
  Divisible by 100 => false

  Input: Integer greater than 0
  Output: Just returns a boolean
Data Structure
  N/A
Algorithm
  - modulo the number by 4 and 400
=end

def leap_year?(num) # my solution
  (num % 4 == 0 && num % 100 != 0) || num % 400 == 0
end

def leap_year?(year) # LS solution
  if year % 400 == 0
    true
  elsif year % 100 == 0
    false
  else
    year % 4 == 0
  end
end

# Further Exploration

def leap_year?(year) # this will fail on every year divisible by 400
  if year % 100 == 0
    false
  elsif year % 400 == 0
    true
  else
    year % 4 == 0
  end
end

# does it work if order reversed? Yes, more complex logic, less readable. 
def leap_year?(year)
  if year % 4 != 0
    false
  else
    if year % 100 != 0
      true
    else
      if year % 400 == 0
        true
      else
        false
      end
    end
  end
end

def leap_year?(year) # more compact
  return false if year % 4 != 0
  
  return true if year % 100 != 0
  year % 400 == 0 ? true : false
end
