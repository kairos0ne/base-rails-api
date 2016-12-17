require "rails_helper"

RSpec.describe GivensController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/givens").to route_to("givens#index")
    end

    it "routes to #new" do
      expect(:get => "/givens").to route_to("givens#new")
    end

    it "routes to #show" do
      expect(:get => "/givens/1").to route_to("givens#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/givens/1").to route_to("givens#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/givens").to route_to("givens#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/givens/1").to route_to("givens#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/givens/1").to route_to("givens#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/givens/1").to route_to("givens#destroy", :id => "1")
    end

  end
end
