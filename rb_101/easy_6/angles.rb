=begin

Problem
  Write a method that takes a floating point number that represents an angle between 0 and 360 degrees
  and returns a String that represents that angle in degrees, minutes and seconds. 

  1.0 is 60 minutes
  0.1 is 6 minutes
  0.01 is 36 seconds

Data Structure
  Array
Algorithm
  - Floating point number modulo 60
  - Assign the result to pre_minutes
  - Find true minutes and seconds
=end

DEGREE = "\xC2\xB0"
MINUTES_PER_DEGREE = 60
SECONDS_PER_MINUTE = 60

def dms(num) 
  degrees = num.to_i
  total_minutes = num * 60
  minutes = (total_minutes % 60).round(2)
  seconds = (minutes % 1 * SECONDS_PER_MINUTE).round(2)

  formatted_degrees = degrees
  formatted_minutes = "%02d" % minutes
  formatted_seconds = "%02d" % seconds

  %(#{formatted_degrees}#{DEGREE}#{formatted_minutes}'#{formatted_seconds}")
end

puts dms(30) == %(30°00'00")
puts dms(76.73) == %(76°43'48")
puts dms(254.6) == %(254°36'00")
puts dms(93.034773) == %(93°02'05")
puts dms(0) == %(0°00'00")
puts dms(360) == %(360°00'00") || dms(360) == %(0°00'00")
