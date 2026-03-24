require './lib/circle'

describe Circle do
  it "can be created" do
    expect(Circle.new).to be_a(Circle)
  end

  it "returns the correct type message" do
    circle = Circle.new
    expect(circle.circle_type).to eq("You have a circle")
  end
  it "can determine if the radius is valid" do
end
