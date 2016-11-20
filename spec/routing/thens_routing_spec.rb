require "rails_helper"

RSpec.describe ThensController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/thens").to route_to("thens#index")
    end

    it "routes to #new" do
      expect(:get => "/thens/new").to route_to("thens#new")
    end

    it "routes to #show" do
      expect(:get => "/thens/1").to route_to("thens#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/thens/1/edit").to route_to("thens#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/thens").to route_to("thens#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/thens/1").to route_to("thens#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/thens/1").to route_to("thens#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/thens/1").to route_to("thens#destroy", :id => "1")
    end

  end
end
