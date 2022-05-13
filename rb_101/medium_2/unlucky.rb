=begin

Problem
  Write a method that returns the number of Friday the 13ths in the year given by an argument.
Data Structure
  Array
Algorithm
  - The year is the argument. The month is months 1-12. The day is 13.
  - Use the time class
  - Iterate 12 times on a range of 1 to 12 using selection
  - Call time class, with the range number as the month
  - This will return an array of booleans
  - Count the number of boolean true, this is the number of Friday the 13ths in the given year
=end

require 'date'
def friday_13th(year)
  booleans = (1..12).select do |month|
    t = Date.civil(year, month, 13)
    t.friday?
  end
  booleans.length
end

p friday_13th(2015) == 3
p friday_13th(1986) == 1
p friday_13th(2019) == 2
