require "rails_helper"

RSpec.describe EpicsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/epics").to route_to("epics#index")
    end

    it "routes to #new" do
      expect(:get => "/epics/new").to route_to("epics#new")
    end

    it "routes to #show" do
      expect(:get => "/epics/1").to route_to("epics#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/epics/1/edit").to route_to("epics#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/epics").to route_to("epics#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/epics/1").to route_to("epics#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/epics/1").to route_to("epics#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/epics/1").to route_to("epics#destroy", :id => "1")
    end

  end
end
