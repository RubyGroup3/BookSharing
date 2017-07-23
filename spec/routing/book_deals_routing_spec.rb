require "rails_helper"

RSpec.describe BookDealsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/book_deals").to route_to("book_deals#index")
    end

    it "routes to #new" do
      expect(:get => "/book_deals/new").to route_to("book_deals#new")
    end

    it "routes to #show" do
      expect(:get => "/book_deals/1").to route_to("book_deals#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/book_deals/1/edit").to route_to("book_deals#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/book_deals").to route_to("book_deals#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/book_deals/1").to route_to("book_deals#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/book_deals/1").to route_to("book_deals#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/book_deals/1").to route_to("book_deals#destroy", :id => "1")
    end

  end
end
