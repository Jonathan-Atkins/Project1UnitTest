require "./lib/shape"

RSpec.describe "Shape" do
  def build_shape(a)
    fake_input = String.IO.new("#{a}\n")
    Shape.new(input: fake_input)
  end

  it "exists" do
    shape = Shape.new
    expect(shape).to be_an(Shape)
  end
  it "can determine a shape based on input" do
    shape = Shape.new
    expect(shape.find_shape(3)).to eq("You have an equilateral triangle")
  end
end
