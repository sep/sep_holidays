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
    OpenStruct.new(date: Date.new(2014, 1, 1), name: "New Year's"),
    OpenStruct.new(date: Date.new(2014, 5, 26), name: "Memorial Day"),
    OpenStruct.new(date: Date.new(2014, 7, 4), name: "Independence Day"),
    OpenStruct.new(date: Date.new(2014, 9, 1), name: "Labor Day"),
    OpenStruct.new(date: Date.new(2014, 11, 27), name: "Thanksgiving"),
    OpenStruct.new(date: Date.new(2014, 11, 28), name: "Thanksgiving"),
    OpenStruct.new(date: Date.new(2014, 12, 24), name: "Christmas"),
    OpenStruct.new(date: Date.new(2014, 12, 25), name: "Christmas"),
    OpenStruct.new(date: Date.new(2014, 12, 26), name: "Christmas"),
    OpenStruct.new(date: Date.new(2014, 12, 29), name: "Christmas"),
    OpenStruct.new(date: Date.new(2014, 12, 30), name: "Christmas"),
  ]

  def is_sep_holiday?
    SEP_HOLIDAYS.map{|h| h.date}.include? self
  end 
  
  def next_sep_holiday
    today_holiday = find_holiday_on_date(self)

    if today_holiday.nil?
        SEP_HOLIDAYS.find{|h| h.date > self}
    else
        SEP_HOLIDAYS.find{|h| h.date > self && h.name != today_holiday.name}
    end
  end 

  private
  def find_holiday_on_date(target_date)
    SEP_HOLIDAYS.find{|h| h.date == target_date}
  end
end
