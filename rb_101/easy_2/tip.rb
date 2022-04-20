# Create a simple tip calculator. The program should prompt for a bill amount and a tip rate.
# The program must compute the tip and then display both the tip and the total amount of the bill.

puts 'What is the bill?'
bill = gets.chomp.to_i

puts 'What is the percentage of extra money?'
percent = gets.chomp.to_i * 0.01

extra_money = (bill * percent).round(2)
total = (bill + extra_money).round(2)

puts "The extra money is %.2f" % extra_money # Kernel#format is used to print the results with two decimal places
puts "The total is %.2f" % total
