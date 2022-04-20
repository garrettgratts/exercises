# Build a program that displays when the user will retire
# and how many years they have until retirement

print 'What is your age? '
present_age = gets.to_i

print 'At what age would you like to retire? '
retirement_age = gets.to_i

current_yr = Time.new.year
yrs_left = retirement_age - present_age
retirement_yr = current_yr + yrs_left

puts "It's #{Time.new.year}. You will retire in #{retirement_yr}."
puts "You only have #{yrs_left} years to go!"

