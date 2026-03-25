class Circle
  def initialize(input: $stdin)
    @radius = input.gets("What is the circles radius").chomp.to_i
  end

  def circle_size
    if valid_radius?
      diameter?
      area?
    end
  end

  def diameter?
    diameter = @radius * 2
    "Your diameter is #{diameter}"
  end

  def area?
    (Math::PI * @radius**2).round(2)
  end

  private

  def valid_radius?
    false if @radius <= 0
  end
end
