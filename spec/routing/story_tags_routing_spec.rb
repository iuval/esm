require "spec_helper"

describe StoryTagsController do
  describe "routing" do

    it "routes to #index" do
      get("/story_tags").should route_to("story_tags#index")
    end

    it "routes to #new" do
      get("/story_tags/new").should route_to("story_tags#new")
    end

    it "routes to #show" do
      get("/story_tags/1").should route_to("story_tags#show", :id => "1")
    end

    it "routes to #edit" do
      get("/story_tags/1/edit").should route_to("story_tags#edit", :id => "1")
    end

    it "routes to #create" do
      post("/story_tags").should route_to("story_tags#create")
    end

    it "routes to #update" do
      put("/story_tags/1").should route_to("story_tags#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/story_tags/1").should route_to("story_tags#destroy", :id => "1")
    end

  end
end
