# Write a program that will ask for the users name, and then greet the user
# If user input ends with '!' then the computer yells back to the user

print 'What is your name? '
name = gets.chomp!

if name[-1] == '!'
  name = name.chop!
  puts "HELLO #{name.upcase}. WHY ARE WE SCREAMING."
else
  puts "Hello #{name}."
end
