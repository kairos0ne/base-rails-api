require "rails_helper"

RSpec.describe TransitionsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/transitions").to route_to("transitions#index")
    end

    it "routes to #new" do
      expect(:get => "/transitions/new").to route_to("transitions#new")
    end

    it "routes to #show" do
      expect(:get => "/transitions/1").to route_to("transitions#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/transitions/1/edit").to route_to("transitions#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/transitions").to route_to("transitions#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/transitions/1").to route_to("transitions#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/transitions/1").to route_to("transitions#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/transitions/1").to route_to("transitions#destroy", :id => "1")
    end

  end
end
