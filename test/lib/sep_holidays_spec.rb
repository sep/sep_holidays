require_relative "../test_helper"

describe "SEP company holidays" do
  describe "#is_sep_holiday?" do
    it "tells you when it is a SEP holiday" do
      d = Date.new(2012, 12, 25)
      assert d.is_sep_holiday?
    end

    it "tells you when it is not an SEP holiday" do
      d = Date.new(2012, 12, 1)
      refute d.is_sep_holiday?
    end
  end

  describe "yearly holidays" do
    it "should handle 2011 holidays" do
      d = Date.new(2011, 7, 4)
      assert d.is_sep_holiday?
    end

    it "should handle 2012 holidays" do
      d = Date.new(2012, 11, 22)
      assert d.is_sep_holiday?
    end

    it "should handle 2013 holidays" do
      d = Date.new(2013, 9, 2)
      assert d.is_sep_holiday?
    end
  end

  describe "#next_sep_holiday" do
    it "should be thanksgiving on nov 2" do
      d = Date.new(2012, 11, 2)
      assert_equal  "Thanksgiving", d.next_sep_holiday.name
    end

    it "should be new years on christmas" do
      d = Date.new(2012, 12, 25)
      assert_equal "New Year's", d.next_sep_holiday.name
    end
  end
end
