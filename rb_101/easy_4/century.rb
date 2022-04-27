=begin

Problem
  Write a method that takes a year as input and returns the century. The return value should be a
  string that begins with the century number, and ends with st, nd, rd, or th as appropriate for that number.
  New centuries begin in years that end with 01. So, the years 1901-2000 comprise the 20th century.
  Input: Integer
  Output: String
Data Structure
  
How to begin with this?
  Why do you get the century out of the year?
  You check within a range.
  Ohhh, I can use range x..x

  So if the input is 2000, how do I get the century, which is 20?
  I know the 20th century is from this range of years 1901-2000.
  If the input is 1850, what century is that?
  I know the 19th century is from this range of years 18
  The 10th century is from 901-1000.
  If 0-1 is year 1, then 9-10 is the 10th year. So 99-100 is the 100th year. So 101 is the start of the 2nd century. 

So confusing, I'll try brute force
=end

def century(year)
  century = 0
  count = 0

  loop do
    century += 1
    count += 100
    if count >= year
      century = century.to_s
      break
    end
  end

  suffix = 
  if century.end_with?('4', '5', '6', '7', '8', '9', '0', '11', '12', '13')
    'th'
  elsif century.end_with?('3')
    'rd'
  elsif century.end_with?('2')
    'nd'
  elsif century.end_with?('1')
    'st'
  end

  century + suffix
end

p century(2000) == '20th'
p century(2001) == '21st'
p century(1965) == '20th'
p century(256) == '3rd'
p century(5) == '1st'
p century(10103) == '102nd'
p century(1052) == '11th'
p century(1127) == '12th'
p century(11201) == '113th'

# 1st
# 2nd
# 3rd
# 4th
# 5th
# 6th
# 7th
# 8th
# 9th
# 10th
# 11th 1st
# 12th 2nd
# 13th 3rd
# 14th 4th
# 15th 5th
# 16th 6th
# 17th 7th
# 18th 8th
# 19th
# 20th
# 21st
# 22nd
# 23rd
# 24th
# 25th
# 26th
# 27th
# 28th
# 29th
# 30th
# 31st
# 32nd
# 33rd
# th
# th
# th
# th
# th
# th
# th
# 41st
# 42nd
# 43rd
# 44th

# I'll try a case statement for this, eg. case century.last
# 'th' is guranteed if the century ends with 4567890, or is divisible by 11.
# 'rd' is guranteed if the century ends with 3
# 'st' goes after one, except when the number is divisible by 11
