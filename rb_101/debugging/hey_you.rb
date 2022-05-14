def shout_out_to(name)
  name = name.chars.each { |c| c.upcase! }.join

  puts 'HEY ' + name
end

shout_out_to('you') # expected: 'HEY YOU'

# the method created an array using the information from the string parameter, and mutated the array.
# vari = 'passed in string'
# name = 'passed in string' -> name.chars -> %w(passed in string) -> %w(PASSED IN STRING)
# PUTS 'HEY' + name
# I think name.chars created a new object, filled with information from another object.
# So when you mutate the array object, it has nothing to do with the string
