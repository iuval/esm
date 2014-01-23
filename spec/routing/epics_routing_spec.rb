require "spec_helper"

describe EpicsController do
  describe "routing" do

    it "routes to #index" do
      get("/epics").should route_to("epics#index")
    end

    it "routes to #new" do
      get("/epics/new").should route_to("epics#new")
    end

    it "routes to #show" do
      get("/epics/1").should route_to("epics#show", :id => "1")
    end

    it "routes to #edit" do
      get("/epics/1/edit").should route_to("epics#edit", :id => "1")
    end

    it "routes to #create" do
      post("/epics").should route_to("epics#create")
    end

    it "routes to #update" do
      put("/epics/1").should route_to("epics#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/epics/1").should route_to("epics#destroy", :id => "1")
    end

  end
end
