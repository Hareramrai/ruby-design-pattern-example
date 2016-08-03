require 'test_helper'
require 'pry'
require 'appartment/house'
require 'appartment/wooden_house'
require 'appartment/glass_house'

module Appartment
  describe House do
    it "build a wooden house" do
      final_result = File.read File.expand_path(
        "fixtures/wooden.txt",
        File.dirname(__FILE__)
      )

      capture { Appartment::WoodenHouse.new.build }.string.must_include final_result
    end

    it "build a glass house" do
      final_result = File.read File.expand_path(
        "fixtures/glass.txt",
        File.dirname(__FILE__)
      )
      capture { Appartment::GlassHouse.new.build }.string.must_include final_result
    end

     it "fails to build if calling the house class" do
      -> { Appartment::House.new.build_walls }.must_raise NotImplementedError
      -> { Appartment::House.new.build_pillars }.must_raise NotImplementedError
    end
  end
end
