# lib/shape.rb
require "./lib/triangle"

class Shape
  def find_shape(angles, side_a = nil, side_b = nil, side_c = nil)
    case angles
    when 3
      Triangle.new(side_a, side_b, side_c).triangle_type
    else
      "No shape exists with those angles"
    end
  end
end