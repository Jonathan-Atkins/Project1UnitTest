require "./lib/triangle"

class Shape
  def initialize
    puts "How many sides does your shape have?"
    @angles = gets.chomp.to_i
    find_shape
  end

  def find_shape
    case @angles
    when 3
      puts Triangle.new.triangle_type
    else
      puts "No shape exists with those angles"
    end
  end
end

Shape.new