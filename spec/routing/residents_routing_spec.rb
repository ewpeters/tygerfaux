require "spec_helper"

describe ResidentsController do
  describe "routing" do

    it "routes to #index" do
      get("/residents").should route_to("residents#index")
    end

    it "routes to #new" do
      get("/residents/new").should route_to("residents#new")
    end

    it "routes to #show" do
      get("/residents/1").should route_to("residents#show", :id => "1")
    end

    it "routes to #edit" do
      get("/residents/1/edit").should route_to("residents#edit", :id => "1")
    end

    it "routes to #create" do
      post("/residents").should route_to("residents#create")
    end

    it "routes to #update" do
      put("/residents/1").should route_to("residents#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/residents/1").should route_to("residents#destroy", :id => "1")
    end

  end
end
