class Timer
    attr_accessor :seconds
    
    def initialize
        @seconds = 0
    end
    
    def time_string
        seconds_in_hour = 3600
        seconds_in_minute = 60
        
        hours =  (@seconds / seconds_in_hour).floor
        minutes = ((@seconds - hours * seconds_in_hour) / seconds_in_minute).floor
        seconds = @seconds - (hours * seconds_in_hour) - (minutes * seconds_in_minute)
        
        hours = two_digits(hours)
        minutes = two_digits(minutes)
        seconds = two_digits(seconds)
        
        hours + ":" + minutes + ":" + seconds
    end
    
    private
    def two_digits(num)
        digit_count = num.to_s.size 
        zeros_to_add = 2 - digit_count
        ("0" * zeros_to_add) + num.to_s
    end
end
