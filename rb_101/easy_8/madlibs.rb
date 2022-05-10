=begin

Problem
  Create a mad-lib probram that prompts for a
    noun
    verb
    adverb
    adjective
  and injects those into a story that you create
Data Strucure
  N/A
Algorithm
  - Prompt and get user input for noun, verb, adjective, and adverb
  - Use string interpolation to puts the joke


Enter a noun: dog
Enter a verb: walk
Enter an adjective: blue
Enter an adverb: quickly

Do you walk your blue dog quickly? That's hilarious!
=end

print 'Enter a noun: '
noun = gets.chomp

print 'Enter a verb: '
verb = gets.chomp

print 'Enter an adjective: '
adjective = gets.chomp

print 'Enter an adverb: '
adverb = gets.chomp

puts "I heard you like to #{verb} your #{adjective} #{noun}s #{adverb} LMAOOOOO"
