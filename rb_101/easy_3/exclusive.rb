
# write a function named xor that takes two arguments, and returns true if exactly one of its arguments is truthy, false otherwise. 
# Note that we are looking for a boolean result instead of a truthy/falsy value as returned by || and &&.

def xor?(boolean1, boolean2)
  return false if boolean1 == boolean2
  true
end

# T T => false
# F F => false
# T F => true
# F T => true

p xor?(5.even?, 4.even?) == true
p xor?(5.odd?, 4.odd?) == true
p xor?(5.odd?, 4.even?) == false
p xor?(5.even?, 4.odd?) == false

# Can you think of a situation in which a boolean xor method would be useful? 

# Yes, a walkie talkie. You cannot speak simultaneously. It only works when one person turns the channel on. 

# || and && are so-called short circuit operators in that the second operand is not evaluated if its value is not needed.
# Does the xor method perform short-circuit evaluation of its operands? Why or why not? Does short-circuit evaluation in xor operations even make sense?

# No. It needs to evaluate both, it's irreleveant if the first value is true or false. No, we are comparing, not selecting.
