=begin

Problem
  Write two methods that each take a time of day in 24 hour format,
  and return the number of minutes before and after midnight, respectively.
  Both methods should return a value in the range 0..1439.
Data Structure
  N/A
Algorithm
  - after midnight
    - take the characters at index 0 and 1, convert them to an integer
    - multiply that integer by 60
    - save it to a variable
    - convert the characters at index 3 and 4 to an integer
    - save it to a variable
    - add the integers together, and return integer modulo 1440
  - before midnight
    - 
=end

MINUTES_PER_HOUR = 60
HOURS_PER_DAY = 24

MINUTES_PER_DAY = HOURS_PER_DAY * MINUTES_PER_HOUR

def after_midnight(time)
  hours   = time[0..1].to_i
  minutes = time[3..4].to_i

  total_minutes = (hours * MINUTES_PER_ HOUR) + minutes
  total_minutes % MINUTES_PER_DAY
end

def before_midnight(time)
  return 0 if after_midnight(time) == 0
  MINUTES_PER_DAY - after_midnight(time)
end

p  after_midnight('00:00') == 0
p before_midnight('00:00') == 0
p after_midnight('12:34') == 754
p before_midnight('12:34') == 686
p after_midnight('24:00') == 0
p before_midnight('24:00') == 0
