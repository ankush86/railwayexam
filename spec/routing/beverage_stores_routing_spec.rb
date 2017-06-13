require "rails_helper"

RSpec.describe BeverageStoresController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/beverage_stores").to route_to("beverage_stores#index")
    end

    it "routes to #new" do
      expect(:get => "/beverage_stores/new").to route_to("beverage_stores#new")
    end

    it "routes to #show" do
      expect(:get => "/beverage_stores/1").to route_to("beverage_stores#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/beverage_stores/1/edit").to route_to("beverage_stores#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/beverage_stores").to route_to("beverage_stores#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/beverage_stores/1").to route_to("beverage_stores#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/beverage_stores/1").to route_to("beverage_stores#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/beverage_stores/1").to route_to("beverage_stores#destroy", :id => "1")
    end

  end
end
