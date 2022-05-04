=begin

Problem
  Write a method that takes a time using this minute-based format and returns the time of day in 24 hour format (hh:mm).
  Your method should work with any integer input.
Data Structure
  Array or storage maybe?
Algorithm
  - Integer input modulo 60 always generates the minute output
  - Integer input divided by 60 always generates the hours output
  - Perform arithemetic for hh and mm of hh:mm
  - Assign to two variables
  - Use String#format to created time string variables
  - Return time string
=end

# def time_of_day(integer) # my answer, only looked at String#format documentation, and tested stuff in irb
#   hours = (integer / 60) % 24
#   minutes = integer % 60

#   hr_format = format("%02d", hours)
#   min_format = format("%02d", minutes)

#   "#{hr_format}:#{min_format}"
# end

# def time_of_day(integer) # my answer, used syntax sugar from launch school's answer
#   hours = (integer / 60) % 24
#   minutes = integer % 60
#   format('%02d:%02d', hours, minutes)
# end

# Launch School's answer
MINUTES_PER_HOUR = 60
HOURS_PER_DAY = 24

MINUTES_PER_DAY = HOURS_PER_DAY * MINUTES_PER_HOUR

def normalize_minutes_to_zero_through_1439(minutes)
  while minutes < 0
    minutes += MINUTES_PER_DAY
  end

  minutes % MINUTES_PER_DAY
end

def time_of_day(delta_minutes)
  delta_minutes = normalize_minutes_to_zero_through_1439(delta_minutes)
end

p time_of_day(3000)
