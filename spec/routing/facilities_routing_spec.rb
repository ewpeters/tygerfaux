require "spec_helper"

describe FacilitiesController do
  describe "routing" do

    it "routes to #index" do
      get("/facilities").should route_to("facilities#index")
    end

    it "routes to #new" do
      get("/facilities/new").should route_to("facilities#new")
    end

    it "routes to #show" do
      get("/facilities/1").should route_to("facilities#show", :id => "1")
    end

    it "routes to #edit" do
      get("/facilities/1/edit").should route_to("facilities#edit", :id => "1")
    end

    it "routes to #create" do
      post("/facilities").should route_to("facilities#create")
    end

    it "routes to #update" do
      put("/facilities/1").should route_to("facilities#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/facilities/1").should route_to("facilities#destroy", :id => "1")
    end

  end
end
