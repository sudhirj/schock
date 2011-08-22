require 'spec_helper'

describe "Chocolates" do
  describe "GET /chocolates" do
    it "should load" do
      get chocolates_path
      response.status.should be(200)
    end
  end
end
