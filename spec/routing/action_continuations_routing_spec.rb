require "rails_helper"

RSpec.describe ActionContinuationsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/action_continuations").to route_to("action_continuations#index")
    end

    it "routes to #new" do
      expect(:get => "/action_continuations/new").to route_to("action_continuations#new")
    end

    it "routes to #show" do
      expect(:get => "/action_continuations/1").to route_to("action_continuations#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/action_continuations/1/edit").to route_to("action_continuations#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/action_continuations").to route_to("action_continuations#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/action_continuations/1").to route_to("action_continuations#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/action_continuations/1").to route_to("action_continuations#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/action_continuations/1").to route_to("action_continuations#destroy", :id => "1")
    end

  end
end
