require "rails_helper"

RSpec.describe ContinuationsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/continuations").to route_to("continuations#index")
    end

    it "routes to #new" do
      expect(:get => "/continuations").to route_to("continuations#new")
    end

    it "routes to #show" do
      expect(:get => "/continuations/1").to route_to("continuations#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/continuations/1").to route_to("continuations#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/continuations").to route_to("continuations#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/continuations/1").to route_to("continuations#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/continuations/1").to route_to("continuations#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/continuations/1").to route_to("continuations#destroy", :id => "1")
    end

  end
end
