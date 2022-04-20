
# the String#upcase! method is mutates the string itself, any variable that was referring
# to this object is now pointing at a modified variable. In this case, an all caps "BOB".

name = 'Bob'
save_name = name
name.upcase!
puts name, save_name
u
