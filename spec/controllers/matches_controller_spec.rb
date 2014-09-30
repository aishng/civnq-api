require 'spec_helper'

describe MatchesController do

  describe "#index" do
    before(:each) do
      get :index
    end

    it { response.body.should == "5" }
  end


  describe "#create" do
    let(:body) { { match: { type: "FFA", game: "Civilization", teams: [ [ "Ashley" ], [ "Tanoy" ] ] } } }
    before(:each) do
      post :create, body
    end

    it { response.body.should == "5" }
  end

end

