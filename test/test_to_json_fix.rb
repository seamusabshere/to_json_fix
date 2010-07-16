require 'helper'

class TestToJsonFix < Test::Unit::TestCase
  should "to_json a hash with Symbol values" do
    assert_equal "{\"a\":\"b\"}", { :a => :b }.to_json
  end
  
  should "to_json a hash with Date values" do
    assert_equal "{\"a\":\"2009-01-01\"}", { :a => Date.parse('2009-01-01') }.to_json
  end
  
  should "to_json a hash with Time values" do
    assert_equal "{\"a\":\"2009-01-01T00:00:00Z\"}", { :a => Time.utc('2009-01-01') }.to_json
  end
  
  should "to_json a hash with DateTime values" do
    assert_equal "{\"a\":\"2009-01-01T00:00:00+00:00\"}", { :a => DateTime.parse('2009-01-01') }.to_json
  end
  
  should "to_json a HashWithIndifferentAccess" do
    assert_equal "{\"a\":\"b\"}", ActiveSupport::HashWithIndifferentAccess.new(:a => :b).to_json
  end
end
