=begin

Problem
  Write a method that implements a miniature stack-and-register-based programming language that has the following commands:

  n     Place a value n in the "register". Do not modify the stack.
  PUSH  Push the register value on to the stack. Leave the value in the register.
  ADD   Pops a value from the stack and adds it to the register value, storing the result in the register.
  SUB   Pops a value from the stack and subtracts it from the register value, storing the result in the register.
  MULT  Pops a value from the stack and multiplies it by the register value, storing the result in the register.
  DIV   Pops a value from the stack and divides it into the register value, storing the integer result in the register.
  MOD   Pops a value from the stack and divides it into the register value, storing the integer remainder of the division in the register.
  POP   Remove the topmost item from the stack and place in register
  PRINT Print the register value
Data Structure
  Array
Algorithm
  - Create "stack" empty array
  - Create "register" empty array
  - Take the string input, create an array of words
  - Iterate on this array of words
  - Perform commands according to each word
    - Create case statement of commands
=end

def minilang(string)
  stack = []
  register = 0
  array = string.split

  array.each do |word|
    case word
    when ('-'+'1'..'-'+'9') then register = word.to_i
    when ('0'..'9') then register = word.to_i
    when 'PUSH'  then stack.push(register)
    when 'ADD'   then register += stack.pop
    when 'SUB'   then register -= stack.pop
    when 'MULT'  then register *= stack.pop
    when 'DIV'   then register /= stack.pop
    when 'MOD'   then register %= stack.pop
    when 'POP'   then register = stack.pop
    when 'PRINT' then puts register
    end
  end
end



minilang('-3 PUSH 5 SUB PRINT')
# 8

minilang('6 PUSH')
#(nothing printed; no PRINT commands)

minilang('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT')
