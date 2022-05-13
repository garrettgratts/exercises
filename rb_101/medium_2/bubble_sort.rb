=begin

Problem
  Write a method that takes an Array as an argument, and sorts that Array using the bubble sort algorithm as just described.
Data Structure
  Array
Algorithm
  - Compare two element of the array repeatedly
  - Create a range of number from 1 to the number of element in the array
  - Nevermind, I want to iterate through the array directly
  - Iterate through the array using the simultaneous variable assignment technique
  - How to grab two elements?
  - Call Array#each on the array
  - We are iterating on pairs, so the number of iterations is always equal to one less than the total number of elements
  - Maybe I should just straight up loop forever until the array is sorted

  - Loop
  - Assign names to the first two elements. Element 1 is array[0], element 2 is array[1]
  - a, b = array[0], array[1]
  - If a is greater than b, I swap them. b, a = array[1], array[0]
  - Increment the index numbers
  - When element 2 is the last element, reset the index numbers
  - How to break the loop?
    - During comparisons, add true or false, if a is larger than b or not
    - If the array only have truthy values at the end of the loop, then the array is sorted
    - If not, reset the array
=end

def bubble_sort!(array)
  index = 0
  swaps = 0
  loop do
    a, b = array[index], array[index + 1]

    if a > b
      array[index], array[index + 1] = b, a
      swaps += 1
    end

    if a == array.last || b == array.last
      swaps == 0 ? break : (index, swaps = 0, 0)
    else
      index += 1
    end
  end
end

array = [5, 3]
bubble_sort!(array)
p array == [3, 5]

array = [6, 2, 7, 1, 4]
bubble_sort!(array)
p array == [1, 2, 4, 6, 7]

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
bubble_sort!(array)
p array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)

