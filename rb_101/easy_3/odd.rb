
# Write a method that returns an array that is every other element of the array that is passed in
# as an argument. 

# Algorithm
# - Iterate through the array
# - Select elements that have an odd index
# - Return the new array

# def oddities(arr) # returns new array of 1st, 3rd, 5th elements
#   odd_arr = []

#   arr.each_index do |idx|
#     odd_arr.push(arr[idx]) if idx.even?
#   end

#   odd_arr
# end

# def oddities(arr) # returns new array of 2nd, 4th, 6th elements
#   odd_arr = []

#   arr.each_index do |idx|
#     odd_arr.push(arr[idx]) if idx.odd?
#   end

#   odd_arr
# end

# p oddities([1, 2, 3, 4, 5])

def oddities(arr) # returns a new array of 1st, 3rd, 5th elements
  count = 1
  new_arr = []

  loop do
    p new_arr << arr[count]
    count += 2
    return new_arr if count >= arr.length
  end
end

numbers = [1, 2, 3, 4, 5]
oddities(numbers)
