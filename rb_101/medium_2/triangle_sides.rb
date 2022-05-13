=begin

Problem
  Write a method that takes the lengths of the 3 sides of a triangle as arguments, and returns a symbol :equilateral, :isosceles, :scalene, or :invalid
  depending on whether the triangle is equilateral, isosceles, scalene, or invalid.
Data Structure
  Array
Algorithm
  - Move the length into a sorted array
  - Assign the lengths to variables a b and c
  - If a is greater than the sum of b and c, invalid
  - If they're equal it is equilateral
  - If they're all different, it's scalene. Such as if a is not equal to b, and b is also no equal to c.
  - If 2a is equal to 2b or 2 c, it is isosceles
=end

def triangle (s1, s2, s3)
  a, b, c = tri = [s1, s2, s3].sort
  return :invalid if a + b <= c
  case tri.uniq.size
  when 1 then :equilateral
  when 2 then :isosceles
  when 3 then :scalene
  end
end

triangle(3, 3, 1.5)
p triangle(3, 3, 3) == :equilateral
p triangle(3, 3, 1.5) == :isosceles
p triangle(3, 4, 5) == :scalene
p triangle(0, 3, 3) == :invalid
p triangle(3, 1, 1) == :invalid
