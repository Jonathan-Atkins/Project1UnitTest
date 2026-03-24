require "./lib/shape"

RSpec.describe "Shape" do

  def build_equilateral
    fake_input = StringIO.new("3\n3\n3\n3\n")
    Shape.new(input: fake_input)
  end

  def build_isosceles
    fake_input = StringIO.new("3\n3\n3\n2\n")
    Shape.new(input: fake_input)
  end

  def build_scalene
    fake_input = StringIO.new("3\n3\n4\n5\n")
    Shape.new(input: fake_input)
  end

  it "exists" do
    shape = build_equilateral
    expect(shape).to be_an(Shape)
  end

  it "can determine all triangle types" do
    expect(build_equilateral.find_shape(3)).to eq("You have an equilateral triangle")
    expect(build_isosceles.find_shape(3)).to eq("You have an isosceles triangle")
    expect(build_scalene.find_shape(3)).to eq("You have a scalene triangle")
  end
end
