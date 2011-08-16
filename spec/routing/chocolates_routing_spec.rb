require "spec_helper"

describe ChocolatesController do
  describe "routing" do

    it "routes to #index" do
      get("/chocolates").should route_to("chocolates#index")
    end

    it "routes to #new" do
      get("/chocolates/new").should route_to("chocolates#new")
    end

    it "routes to #show" do
      get("/chocolates/1").should route_to("chocolates#show", :id => "1")
    end

    it "routes to #edit" do
      get("/chocolates/1/edit").should route_to("chocolates#edit", :id => "1")
    end

    it "routes to #create" do
      post("/chocolates").should route_to("chocolates#create")
    end

    it "routes to #update" do
      put("/chocolates/1").should route_to("chocolates#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/chocolates/1").should route_to("chocolates#destroy", :id => "1")
    end

  end
end
