module Appartment
  class WoodenHouse < Appartment::House
    def build_pillars
      puts "Building Pillars with Wood coating"
    end

    def build_walls
      puts "Building Wooden Walls"
    end
  end
end
