require "rails_helper"

RSpec.describe IllustrationsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/illustrations").to route_to("illustrations#index")
    end

    it "routes to #new" do
      expect(:get => "/illustrations/new").to route_to("illustrations#new")
    end

    it "routes to #show" do
      expect(:get => "/illustrations/1").to route_to("illustrations#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/illustrations/1/edit").to route_to("illustrations#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/illustrations").to route_to("illustrations#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/illustrations/1").to route_to("illustrations#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/illustrations/1").to route_to("illustrations#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/illustrations/1").to route_to("illustrations#destroy", :id => "1")
    end

  end
end
