=begin

-define a method that takes an array argument
-create an empty hash
-add the array elements to the keys of the hash
-




=end

def count_occurences(array)
  array.count
end

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

puts count_occurences(vehicles)
