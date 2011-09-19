require 'spec_helper'

describe Chocolate do
  it {should have(1).errors_on(:name)}
  it {should have(2).errors_on(:desc)}
  it {Chocolate.new(:desc => 'A').should have(1).errors_on(:desc)}  
  it {should have(1).error_on(:price)}
end
