require "rails_helper"

RSpec.describe OccursController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/occurs").to route_to("occurs#index")
    end

    it "routes to #new" do
      expect(:get => "/occurs").to route_to("occurs#new")
    end

    it "routes to #show" do
      expect(:get => "/occurs/1").to route_to("occurs#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/occurs/1").to route_to("occurs#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/occurs").to route_to("occurs#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/occurs/1").to route_to("occurs#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/occurs/1").to route_to("occurs#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/occurs/1").to route_to("occurs#destroy", :id => "1")
    end

  end
end
