require './lib/shape'

RSpec.describe "Shape" do
  before(:each) do
    @shape = Shape.new
  end

  it "exists" do
    expect(@shape).to be_an(Shape)
  end

  it "validates a triange" do

    expect(@shape.triangle?).to be(True)
    
  end
  
  
end

