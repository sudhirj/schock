require 'test_helper'

class ChocolateTest < ActiveSupport::TestCase
  test "validations" do
    choc = Chocolate.new
    assert !choc.save
    
    choc.name = 'Almond Truffles'
    choc.desc = 'Some awesome truffles'
    
    assert choc.save    
  end
end
