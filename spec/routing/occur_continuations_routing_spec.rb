require "rails_helper"

RSpec.describe OccurContinuationsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/occur_continuations").to route_to("occur_continuations#index")
    end

    it "routes to #new" do
      expect(:get => "/occur_continuations/new").to route_to("occur_continuations#new")
    end

    it "routes to #show" do
      expect(:get => "/occur_continuations/1").to route_to("occur_continuations#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/occur_continuations/1/edit").to route_to("occur_continuations#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/occur_continuations").to route_to("occur_continuations#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/occur_continuations/1").to route_to("occur_continuations#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/occur_continuations/1").to route_to("occur_continuations#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/occur_continuations/1").to route_to("occur_continuations#destroy", :id => "1")
    end

  end
end
