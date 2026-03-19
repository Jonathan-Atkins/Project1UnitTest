require './lib/triangle'

RSpec.describe "Triangle" do
  before(:each) do
    @triangle = Triangle.new(3,4,5)
  end
  it "exists" do
    expect(@triangle).to be_an(Triangle)
  end
  it "can determine if a valid triangle is valid" do
    expect(@triangle.valid_triangle?).to be(true)
  end
  it "can determine if an invalid triangle is invalid" do
    triangle = Triangle.new(1, 1, 10)
    expect(triangle.valid_triangle?).to be(false)
  end
  it "can determine if triangle is equilateral" do
    triangle = Triangle.new(3, 3, 3)
    expect(triangle.equilateral?).to be(true)
  end
  it "can determine if a triangle is not equilateral" do
    triangle = Triangle.new(3, 2, 3)
    expect(triangle.equilateral?).to be(false)
  end
  it "can determine if the triangle is isosceles" do
    triangle = Triangle.new(3, 2, 3)
    expect(triangle.isosceles?).to eq(true)
  end
  it "can determine if the triangle is not isosceles" do
    triangle = Triangle.new(1, 2, 3)
    expect(triangle.isosceles?).to eq(false)
  end
  it "can determine if the triangle is scalene" do
    triangle = Triangle.new(3, 4, 5)
    expect(triangle.scalene?).to eq(true)
  end
  it "can determine if the triangle is not scalene" do
    triangle = Triangle.new(3, 3, 5)
    expect(triangle.scalene?).to eq(false)
  end
end