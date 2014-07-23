class Timer
  attr_accessor :seconds
  
  def initialize
    @seconds = 0 
  end
  
  def time_string
    seconds = self.seconds
    
    # get number of hours
    if seconds >= 3600
      hours = seconds / 3600
      seconds = seconds % 3600
      if hours < 10
        hour_str = "0" + hours.to_s
      else
        hour_str = hours.to_s
      end
    else
      hour_str = "00"
    end
    
    # get number of minutes
    if seconds >= 60
      minutes = seconds / 60
      seconds = seconds % 60
      if minutes < 10
        minutes_str = "0" + minutes.to_s
      else
        minutes_str = minutes.to_s
      end
    else
      minutes_str = "00"
    end
    
    if seconds < 10
      sec_str = "0" + seconds.to_s
    else
      sec_str = seconds.to_s
    end
    
    str = hour_str + ":" + minutes_str + ":" + sec_str
    return str
    
    # refactored solution
    # hours = @seconds/3600
    # remainder = @seconds%3600
    # sprintf("%02d:%02d:%02d", hours, remainder/60, remainder%60)
  end
  
end