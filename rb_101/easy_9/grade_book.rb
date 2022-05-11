=begin

Problem
  Write a method that determines the mean (average) of the three scores passed to it, and returns the letter value associated with that grade.
Data Structure
  N/A
Algorithm
  - Create array constant of numbers 0 to 100
  - Create hash constant of arrays as keys for grade range, and capital letters as values for grade result
  - Compute average of the three number arguments
  - Iterate on the hash keys
  - Check if the score is within each key
  - Once it is, return the value of that key
=end

def get_grade(s1, s2, s3)
  result = (s1 + s2 + s3)/3

  case result
  when 100..   then 'A+' # in case of extra credit
  when 90..100 then 'A'
  when 80..89  then 'B'
  when 70..79  then 'C'
  when 60..69  then 'D'
  else              'F'
  end
end

p get_grade(95, 100, 107) == "A+"
p get_grade(50, 50, 95) == "D"
