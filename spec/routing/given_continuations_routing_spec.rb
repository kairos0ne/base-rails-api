require "rails_helper"

RSpec.describe GivenContinuationsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/given_continuations").to route_to("given_continuations#index")
    end

    it "routes to #new" do
      expect(:get => "/given_continuations/new").to route_to("given_continuations#new")
    end

    it "routes to #show" do
      expect(:get => "/given_continuations/1").to route_to("given_continuations#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/given_continuations/1/edit").to route_to("given_continuations#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/given_continuations").to route_to("given_continuations#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/given_continuations/1").to route_to("given_continuations#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/given_continuations/1").to route_to("given_continuations#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/given_continuations/1").to route_to("given_continuations#destroy", :id => "1")
    end

  end
end
