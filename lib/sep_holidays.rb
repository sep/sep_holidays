require 'ostruct'
require 'date'

class Date
  SEP_HOLIDAYS = [
    OpenStruct.new(date: Date.new(2010, 12, 31), name: "New Year's"),
    OpenStruct.new(date: Date.new(2011, 5, 30), name: "Memorial Day"),
    OpenStruct.new(date: Date.new(2011, 7, 4), name: "Independence Day"),
    OpenStruct.new(date: Date.new(2011, 9, 5), name: "Labor Day"),
    OpenStruct.new(date: Date.new(2011, 11, 24), name: "Thanksgiving"),
    OpenStruct.new(date: Date.new(2011, 11, 25), name: "Thanksgiving"),
    OpenStruct.new(date: Date.new(2011, 12, 26), name: "Christmas"),
    OpenStruct.new(date: Date.new(2011, 12, 27), name: "Christmas"),
    OpenStruct.new(date: Date.new(2011, 12, 28), name: "Christmas"),
    OpenStruct.new(date: Date.new(2011, 12, 29), name: "Christmas"),
    OpenStruct.new(date: Date.new(2011, 12, 30), name: "Christmas"),
    OpenStruct.new(date: Date.new(2012, 1, 2), name: "New Year's"),
    OpenStruct.new(date: Date.new(2012, 5, 28), name: "Memorial Day"),
    OpenStruct.new(date: Date.new(2012, 7, 4), name: "Independence Day"),
    OpenStruct.new(date: Date.new(2012, 9, 3), name: "Labor Day"),
    OpenStruct.new(date: Date.new(2012, 11, 22), name: "Thanksgiving"),
    OpenStruct.new(date: Date.new(2012, 11, 23), name: "Thanksgiving"),
    OpenStruct.new(date: Date.new(2012, 12, 24), name: "Christmas"),
    OpenStruct.new(date: Date.new(2012, 12, 25), name: "Christmas"),
    OpenStruct.new(date: Date.new(2012, 12, 26), name: "Christmas"),
    OpenStruct.new(date: Date.new(2012, 12, 27), name: "Christmas"),
    OpenStruct.new(date: Date.new(2012, 12, 28), name: "Christmas"),
    OpenStruct.new(date: Date.new(2013, 1, 1), name: "New Year's"),
    OpenStruct.new(date: Date.new(2013, 5, 27), name: "Memorial Day"),
    OpenStruct.new(date: Date.new(2013, 7, 4), name: "Independence Day"),
    OpenStruct.new(date: Date.new(2013, 9, 2), name: "Labor Day"),
    OpenStruct.new(date: Date.new(2013, 11, 28), name: "Thanksgiving"),
    OpenStruct.new(date: Date.new(2013, 11, 29), name: "Thanksgiving"),
    OpenStruct.new(date: Date.new(2013, 12, 23), name: "Christmas"),
    OpenStruct.new(date: Date.new(2013, 12, 24), name: "Christmas"),
    OpenStruct.new(date: Date.new(2013, 12, 25), name: "Christmas"),
    OpenStruct.new(date: Date.new(2013, 12, 26), name: "Christmas"),
    OpenStruct.new(date: Date.new(2013, 12, 27), name: "Christmas"),
  ]

  def is_sep_holiday?
    SEP_HOLIDAYS.map{|h| h.date}.include? self
  end 
  
  def next_sep_holiday(date)
    next_holidays = SEP_HOLIDAYS.drop_while {|h| h.date < date}

    next_holiday = next_holidays.first

    return next_holiday if next_holiday.date != date

    next_holidays.drop_while {|h| h.name == next_holiday.name}.first
  end 
end
