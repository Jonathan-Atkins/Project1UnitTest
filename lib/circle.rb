class Circle
  def initialize(input: $stdin)
    puts "What is the circles radius"
    @radius = input.gets.chomp.to_i
  end

  def circle_size
    return false if radius_valid? 
    "You have a circle"
  end
end
