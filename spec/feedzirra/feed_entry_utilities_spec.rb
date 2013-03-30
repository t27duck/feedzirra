require 'spec_helper'

describe Feedzirra::FeedUtilities do
  before(:each) do
    @klass = Class.new do
      include Feedzirra::FeedEntryUtilities
    end
  end
  
  describe "handling dates" do
    it "should parse an ISO 8601 formatted datetime into Time" do
      time = @klass.new.parse_datetime("2008-02-20T8:05:00-010:00")
      time.class.should == Time
      time.should == Time.parse_safely("Wed Feb 20 18:05:00 UTC 2008")
    end
  end
  
end