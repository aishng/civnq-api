require 'spec_helper'

describe MatchesController do

  describe "#create" do
    let(:body) { { match: { type: type, game: game, teams: [ teams ] } } }
    let(:game) { "CivV" }

    describe "for a Duel match" do
      let(:type) { "Duel" }
      let(:teams) { [ team1, team2 ] }
      let(:team1) { [ "Ashley" ] }
      let(:team2) { [ "Tanoy" ] }

      it "should add a duel match to the DB" do
        Match.count.should == 0
        post :create, body
        Match.count.should == 1
        Match.first.type.should == Match::MatchType::Duel
      end
    end

    describe "for a FFA match" do
      let(:type) { "FFA" }
      let(:teams) { [ team1, team2, team3 ] }
      let(:team1) { [ "Ashley" ] }
      let(:team2) { [ "Tanoy" ] }
      let(:team3) { [ "Jacob" ] }

      it "should add an FFA match to the DB" do
        Match.count.should == 0
        post :create, body
        Match.count.should == 1
        Match.first.type == Match::MatchType::FFA
      end
    end

    describe "for a Teamer match" do
      let(:type) { "Teamer" }
      let(:teams) { [ team1, team2 ] }
      let(:team1) { [ "Ashley", "Jacob" ] }
      let(:team2) { [ "Tanoy", "Jennifer" ] }

      it "should add an Teamer match to the DB" do
        Match.count.should == 0
        post :create, body
        Match.count.should == 1
        Match.first.type == Match::MatchType::Teamer
      end
    end

  end
end

