require "rails_helper"

RSpec.describe QuesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/ques").to route_to("ques#index")
    end


    it "routes to #show" do
      expect(:get => "/ques/1").to route_to("ques#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/ques").to route_to("ques#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/ques/1").to route_to("ques#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/ques/1").to route_to("ques#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/ques/1").to route_to("ques#destroy", :id => "1")
    end

  end
end
