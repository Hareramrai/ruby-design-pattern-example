require 'test_helper'
require 'pry'
require 'icalculator'
require 'calculators/plus_operator'
require 'calculators/multiply_operator'

module Calculator
  describe ICalculator do
    it "sums two number" do
      ICalculator.new(10,20,:plus).calculate.must_equal 30
    end

    it "multiply two number" do
      ICalculator.new(10,20,:multiply).calculate.must_equal 200
    end

  end
end
