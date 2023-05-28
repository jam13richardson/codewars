# Your task in order to complete this Kata is to write a function which formats a duration, given as a number of seconds, in a human-friendly way.

# The function must accept a non-negative integer. If it is zero, it just returns "now". Otherwise, the duration is expressed as a combination of years, days, hours, minutes and seconds.

# 1 mintute = 60 secs 
# 1 hour = 3,600
# 1 day = 86,400 seconds/day
# 1 year = 31,536,000 secs

# * For seconds = 62, your function should return 
#     "1 minute and 2 seconds"
# * For seconds = 3662, your function should return
#     "1 hour, 1 minute and 2 seconds"

def format_duration(seconds)
    return "now" if seconds == 0
  
    years = seconds / (365 * 24 * 60 * 60)
    days = (seconds / (24 * 60 * 60)) % 365
    hours = (seconds / (60 * 60)) % 24
    minutes = (seconds / 60) % 60
    seconds = seconds % 60
  
    duration = []
  
    duration << "#{years} #{years == 1 ? 'year' : 'years'}" if years > 0
    duration << "#{days} #{days == 1 ? 'day' : 'days'}" if days > 0
    duration << "#{hours} #{hours == 1 ? 'hour' : 'hours'}" if hours > 0
    duration << "#{minutes} #{minutes == 1 ? 'minute' : 'minutes'}" if minutes > 0
    duration << "#{seconds} #{seconds == 1 ? 'second' : 'seconds'}" if seconds > 0
  
    case duration.size
    when 1
      duration.first
    when 2
      duration.join(' and ')
    else
      last = duration.pop
      "#{duration.join(', ')} and #{last}"
    end
  end