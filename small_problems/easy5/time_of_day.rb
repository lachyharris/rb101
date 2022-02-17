MIN_DAY = 1440
HOUR_DAY = 24
MIN_HOUR = 60

def positive_minutes(input)
  while input < 0
    input += MIN_DAY
  end
  input % MIN_DAY
end

def time_of_day(input)
  positive_minutes(input)
  hours = input / 60
  minutes = input % 60
  format('%02d:%02d', hours, minutes)
end

