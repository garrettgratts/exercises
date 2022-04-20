# Build a program that asks a user for the length and width of a room in meters and then
# displays the area of the room in both square meters and square feet.
# Note: 1 square meter == 10.7639 square feet

SQFEET_TO_CM = 929.0304

puts '=> What is the length of the room in feet?'
length = gets.chomp.to_f

puts '=> What is the width of the room in feet?'
width = gets.chomp.to_f

sq_feet = (length * width).round(2)
sq_inch = (sq_feet * 144).round(2)
sq_cm = (sq_feet * SQFEET_TO_CM).round(2)

puts "=> The area of the room is #{sq_feet} square feet (#{sq_inch} square inches) (#{sq_cm} square centimeters)."


