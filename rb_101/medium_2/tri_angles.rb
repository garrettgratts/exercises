=begin

Problem
  Write a method that takes the 3 angles of a triangle as arguments, and returns a symbol :right, :acute, :obtuse, or :invalid
Data Structure
  Array
Algorithm
  - Move the 3 angle numbers into an array
  - Validate the sum and non-zero status of the array
  - Use a case statment, focusing on the angles equal to, less than, or greater than 90
=end

def triangle(ang1, ang2, ang3)
  a, b, c = tri = [ang1, ang2, ang3].sort
  return :invalid if tri.sum < 180 || a * b * c == 0
  case c
  when c > 90 then :right
  when c < 90 then :acute
  else             :obtuse
  end

end

p triangle(60, 70, 50) == :acute
p triangle(30, 90, 60) == :right
p triangle(120, 50, 10) == :obtuse
p triangle(0, 90, 90) == :invalid
p triangle(50, 50, 50) == :invalid
