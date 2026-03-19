class Triangle
  attr_reader :side_a,
              :side_b,
              :side_c

  def initialize(side_a, side_b, side_c)
    @side_a = side_a
    @side_b = side_b
    @side_c = side_c
  end

  def valid_triangle?
    (@side_a + @side_b) > @side_c && (@side_a + @side_c) > @side_b && (@side_c + @side_b) > @side_a
  end

  def equilateral?
    @side_a == @side_b && @side_b == @side_c
  end

  def isosceles?
    @side_a == @side_b || @side_a == @side_c || @side_b == @side_c
  end
end
