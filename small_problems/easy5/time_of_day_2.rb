def after_midnight(time)
  hours, minutes = time.split(':')
  total_mins = hours.to_i * 60 + minutes.to_i
  if total_mins == 1440
    total_mins = 0
  end
  total_mins
end

def before_midnight(time)
  hours, minutes = time.split(':')
  before_hours = 23 - hours.to_i
  before_minutes = 60 - minutes.to_i
  before_total_mins = before_hours * 60 + before_minutes
end
