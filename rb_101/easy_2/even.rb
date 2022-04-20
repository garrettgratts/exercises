# print all numbers 1 to 99, inclusive, to the console, with each number on a separate line

for num in 1..99 do 
  puts num if num.even?
end

num = 2
until num >= 99
  puts num
  num += 2
end
