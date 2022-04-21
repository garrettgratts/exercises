
# Write a method that returns true if its integer argument is palindromic, false otherwise.

# def palindromic_number?(int) # my initial long answer
#   str_arr = int.to_s.chars.map { |numstr| numstr.to_i}
#   str_arr == str_arr.reverse
# end

# def palindrome?(input)
#   input == input.reverse
# end

# def palindromic_number?(number)# Launch School's answer
#   p number
#   palindrome?(number.to_s)
# end

# def palindromic_number?(int) # this method has no problem with leading zeros
#   str_num = '0%o' % int # String#% 0123 => "0123"
#   str_num == str_num.reverse
# end

=begin
LS answer
So simple, just turn the number into a string, and reverse it.

My answer is way longer because once I saw integers can't just be reversed,
I thought I needed to turn the number into an array of integers reverse it. I overlooked
the opportunity to just reverse it as a string. I did .to_s.chars.map{ |x| x.to_i }.reverse
=end

# Suppose your number begins with one or more 0s. Will your method still work? Why or why not? Is there any way to address this?
# It's won't work, because ruby Integer class does not store leading zeros. You can address this, format it with String#% or Kernel#sprintf. See below. 

def number_to_string(num)
  '00%o' % num
end

def palindromic_number?(int)
  str_num = '0%o' % int
  str_num == str_num.reverse
end

 p number_to_string(000123000)
