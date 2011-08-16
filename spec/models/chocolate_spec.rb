require 'spec_helper'

describe Chocolate do
  it "fails validation with no name" do
    Chocolate.new.should have(2).errors_on(:name)
  end
  
  it "fails validation with no desciption" do
    Chocolate.new.should have(4).errors_on(:desc)    
  end
  
  it "fails validation with very short descriptions" do
    Chocolate.new(:desc => 'A').should have(2).errors_on(:desc)
  end
end
