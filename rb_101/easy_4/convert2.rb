# def string_to_signed_integer(string)
#   num = 0
#   sign = ''
#   string_arr = string.chars

#   if string_arr.first == '+'
#     string_arr.shift
#   elsif string_arr.first == '-'
#     sign = string_arr.shift
#   end

#   string_arr.each do |char|
#     num *= 10
#     num += char.ord - 48
#   end

#   if sign == '-'
#     num *= -1
#   end

#   num
# end

# p string_to_signed_integer('4321') == 4321
# p string_to_signed_integer('-570') == -570
# p string_to_signed_integer('+100') == 100

# In our solution, we call string[1..-1] twice, and call string_to_integer three times. This is somewhat repetitive.
# Refactor our solution so it only makes these two calls once each.

def string_to_integer(string)
  num = 0
  string_arr = string.chars

  string_arr.each do |char|
    num *= 10
    num += char.ord - 48
  end

  num
end

def string_to_signed_integer(string)
  sign = 1

  case string[0]
  when '-' then string[0] = '0'; sign = -1
  when '+' then string[0] = '0'
  end

  string_to_integer(string) * sign
end

p string_to_signed_integer('4321') == 4321
p string_to_signed_integer('-570') == -570
p string_to_signed_integer('+100') == 100
