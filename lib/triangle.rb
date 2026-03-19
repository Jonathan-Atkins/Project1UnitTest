class Triangle
  attr_reader :side_a,
              :side_b,
              :side_c

  def initialize(side_a, side_b, side_c)
    @side_a = side_a
    @side_b = side_b
    @side_c = side_c
  end

def triangle_type
  return "Not a valid triangle" unless valid_sides?
  case
  when equilateral?
    "You have an equilateral triangle"
  when isosceles?
    "You have an isosceles triangle"
  when scalene?
    "You have a scalene triangle"
  else
    "Unidentified triangle"
  end
end

private

  def valid_sides?
    return false if @side_a <= 0 || @side_b <= 0 || @side_c <= 0
    (@side_a + @side_b > @side_c) && (@side_a + @side_c > @side_b) && (@side_b + @side_c > @side_a)
  end

  def equilateral?
    @side_a == @side_b && @side_b == @side_c
  end

  def isosceles?
    @side_a == @side_b || @side_a == @side_c || @side_b == @side_c
  end

  def scalene?
    @side_a != @side_b && @side_a != @side_c && @side_b != @side_c
  end
end
