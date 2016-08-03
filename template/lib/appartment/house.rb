module Appartment
  class House

    def build
      build_foundation
      puts "calling pillars"
      build_pillars
      puts "calling walls"
      build_walls
      puts "calling Windows"
      build_windows
      puts "House is built."
    end

    def build_windows
      puts "Building Glass Windows"
    end

    #methods to be implemented by subclasses
    def build_pillars
      raise NotImplementedError
    end

    def build_walls
      raise NotImplementedError
    end

    def build_foundation
      puts "Building foundation with cement,iron rods and sand"
    end
  end
end
