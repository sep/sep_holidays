require 'date'

class Date
  SEP_HOLIDAYS = [
    Date.new(2010, 12, 31),
    Date.new(2011, 5, 30),
    Date.new(2011, 7, 4),
    Date.new(2011, 9, 5),
    Date.new(2011, 11, 24),
    Date.new(2011, 11, 25),
    Date.new(2011, 12, 26),
    Date.new(2011, 12, 27),
    Date.new(2011, 12, 28),
    Date.new(2011, 12, 29),
    Date.new(2011, 12, 30),
    Date.new(2012, 1, 2),
    Date.new(2012, 5, 28),
    Date.new(2012, 7, 4),
    Date.new(2012, 9, 3),
    Date.new(2012, 11, 22),
    Date.new(2012, 11, 23),
    Date.new(2012, 12, 24),
    Date.new(2012, 12, 25),
    Date.new(2012, 12, 26),
    Date.new(2012, 12, 27),
    Date.new(2012, 12, 28),
    Date.new(2013, 1, 1),
    Date.new(2013, 5, 27),
    Date.new(2013, 7, 4),
    Date.new(2013, 9, 2),
    Date.new(2013, 11, 28),
    Date.new(2013, 11, 29),
    Date.new(2013, 12, 23),
    Date.new(2013, 12, 24),
    Date.new(2013, 12, 25),
    Date.new(2013, 12, 26),
    Date.new(2013, 12, 27),
  ]

  def is_sep_holiday?
    SEP_HOLIDAYS.include? self
  end 
end
