require "rails_helper"

RSpec.describe WhensController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/whens").to route_to("whens#index")
    end

    it "routes to #new" do
      expect(:get => "/whens/new").to route_to("whens#new")
    end

    it "routes to #show" do
      expect(:get => "/whens/1").to route_to("whens#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/whens/1/edit").to route_to("whens#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/whens").to route_to("whens#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/whens/1").to route_to("whens#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/whens/1").to route_to("whens#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/whens/1").to route_to("whens#destroy", :id => "1")
    end

  end
end
