require './lib/triangle'

RSpec.describe "Triangle" do
  it "exists" do
    triangle = Triangle.new(3, 4, 5)
    expect(triangle).to be_an(Triangle)
  end

  it "identifies an equilateral triangle" do
    triangle = Triangle.new(3, 3, 3)
    expect(triangle.triangle_type).to eq("You have an equilateral triangle")
  end

  it "identifies an isosceles triangle" do
    triangle = Triangle.new(3, 3, 4)
    expect(triangle.triangle_type).to eq("You have an isosceles triangle")
  end

  it "identifies a scalene triangle" do
    triangle = Triangle.new(3, 4, 5)
    expect(triangle.triangle_type).to eq("You have a scalene triangle")
  end

  it "returns invalid message for invalid triangle" do
    triangle = Triangle.new(1, 1, 10)
    expect(triangle.triangle_type).to eq("Not a valid triangle")
  end

  it "returns invalid message when side is zero" do
    triangle = Triangle.new(0, 4, 5)
    expect(triangle.triangle_type).to eq("Not a valid triangle")
  end

  it "returns invalid message when side is negative" do
    triangle = Triangle.new(-3, 4, 5)
    expect(triangle.triangle_type).to eq("Not a valid triangle")
  end
end