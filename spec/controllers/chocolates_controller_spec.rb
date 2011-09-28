require 'spec_helper'

describe ChocolatesController do

  def valid_attributes
    {
      :name => 'Almond Truffles',
      :desc => 'Dark Chocolate Truffles made with pure Almonds',
      :price => 0.4      
    }
  end

  describe "GET index" do
    it "assigns all chocolates as @chocolates" do
      chocolate = Chocolate.create! valid_attributes
      get :index
      assigns(:chocolates).should eq([chocolate])
    end
  end

  describe "GET show" do
    it "assigns the requested chocolate as @chocolate" do
      chocolate = Chocolate.create! valid_attributes
      get :show, :id => chocolate.id.to_s
      assigns(:chocolate).should eq(chocolate)
    end
  end
end
