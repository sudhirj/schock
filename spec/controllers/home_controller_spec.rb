require 'spec_helper'

describe HomeController do
  
  describe "GET 'index'" do
    
    it "should be successful" do
      get 'index'
      response.should be_success      
    end
    
    it 'should load the list of chocolates' do
      Chocolate.stub!(:all).and_return(:all_chocolates)
      get 'index'
      assigns[:chocolates].should == :all_chocolates
    end
    
  end  
  
end