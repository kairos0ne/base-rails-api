require "rails_helper"

RSpec.describe BriefsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/briefs").to route_to("briefs#index")
    end

    it "routes to #new" do
      expect(:get => "/briefs/new").to route_to("briefs#new")
    end

    it "routes to #show" do
      expect(:get => "/briefs/1").to route_to("briefs#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/briefs/1/edit").to route_to("briefs#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/briefs").to route_to("briefs#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/briefs/1").to route_to("briefs#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/briefs/1").to route_to("briefs#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/briefs/1").to route_to("briefs#destroy", :id => "1")
    end

  end
end
