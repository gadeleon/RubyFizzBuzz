require 'test/unit'
require_relative 'fizzbuzz'

class TestFizzOrBuzz < Test::Unit::TestCase
  test "Happy Path" do
    e = FizzBuzz.new(15,3,5)
    # Least Common is 15
    fb = e.fizzorbuzz(15)
    assert_equal("FizzBuzz",fb)
  end
  test "FizzBuzz is snum, quit" do
    assert_raises Exception do
      tc = FizzBuzz.new(100, 4,20)
    end
  end
end