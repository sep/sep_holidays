require 'date'

class Date
    SEP_HOLIDAYS = {
        Date.new(2010, 12, 31), #New Year's Day
        Date.new(2011, 5, 30),  #Memorial Day
        Date.new(2011, 7, 4),   #Independence Day
        Date.new(2011, 9, 5),   #Labor Day
        Date.new(2011, 11, 24), #Thanksgiving (2 days)
        Date.new(2011, 11, 25),
        Date.new(2011, 12, 26), #Christmas (5 days)
        Date.new(2011, 12, 27),
        Date.new(2011, 12, 28),
        Date.new(2011, 12, 29),
        Date.new(2011, 12, 30),
        Date.new(2012, 1, 2),   #New Year's Day
        Date.new(2012, 5, 28),  #Memorial Day
        Date.new(2012, 7, 4),   #Independence Day
        Date.new(2012, 9, 3),   #Labor Day
        Date.new(2012, 11, 22), #Thanksgiving (2 days)
        Date.new(2012, 11, 23),
        Date.new(2012, 12, 24), #Christmas (5 days)
        Date.new(2012, 12, 25),
        Date.new(2012, 12, 26),
        Date.new(2012, 12, 27),
        Date.new(2012, 12, 28),
    }

    def is_sep_holiday?
        SEP_HOLIDAYS.include? self
    end 
end